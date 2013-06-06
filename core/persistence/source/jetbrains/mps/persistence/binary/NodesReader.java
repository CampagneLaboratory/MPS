/*
 * Copyright 2003-2011 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.persistence.binary;

import jetbrains.mps.persistence.LightModelEnvironmentInfo;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.DynamicReference.DynamicReferenceOrigin;
import jetbrains.mps.smodel.InterfaceSNode;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.smodel.runtime.ConceptKind;
import jetbrains.mps.smodel.runtime.StaticScope;
import jetbrains.mps.util.InternUtil;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.io.ModelInputStream;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SReference;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.List;

public class NodesReader {
  protected final SModelReference myModelReference;
  private final LightModelEnvironmentInfo myEnv;
  private final boolean myInterfaceOnly;
  private boolean hasSkippedNodes = false;

  public NodesReader(@NotNull SModelReference modelReference, LightModelEnvironmentInfo info, boolean interfaceOnly) {
    myModelReference = modelReference;
    myEnv = info;
    myInterfaceOnly = interfaceOnly;
  }

  public boolean hasSkippedNodes() {
    return hasSkippedNodes;
  }

  public List<Pair<String, SNode>> readNodes(SModel model, ModelInputStream is) throws IOException {
    int size = is.readInt();
    List<Pair<String, SNode>> nodes = new ArrayList<Pair<String, SNode>>(size);
    for (int i = 0; i < size; i++) {
      nodes.add(readNode(model, is));
    }
    return nodes;
  }

  public Pair<String, SNode> readNode(SModel model, ModelInputStream is) throws IOException {
    String conceptFqName = readConceptQualifiedName(is);
    SNodeId nodeId = is.readNodeId();
    String nodeRole = is.readString();
    byte nodeInfo = is.readByte();
    if (is.readByte() != '{') {
      throw new IOException("bad stream, no '{'");
    }

    boolean interfaceNode = false;
    if (myInterfaceOnly) {
      ConceptKind kind = getConceptKind(nodeInfo);
      interfaceNode = (kind == ConceptKind.INTERFACE || nodeRole == null);
    }
    // TODO report if (nodeInfo != 0 && myEnv != null) .. myEnv.nodeRoleRead/conceptRead();

    jetbrains.mps.smodel.SNode node = interfaceNode
        ? new InterfaceSNode(InternUtil.intern(conceptFqName))
        : new jetbrains.mps.smodel.SNode(InternUtil.intern(conceptFqName));
    node.setId(nodeId);

    readProperties(is, node);

    readReferences(is, node);

    readChildren(model, is, node);

    readUserObjects(model, is, node);

    if (is.readByte() != '}') {
      throw new IOException("bad stream, no '}'");
    }
    return new Pair<String, SNode>(nodeRole, node);
  }

  private ConceptKind getConceptKind(byte nodeInfo) {
    int i = (nodeInfo >> 1) & 3;
    return i == 1 ? ConceptKind.INTERFACE : i == 2 ? ConceptKind.IMPLEMENTATION : ConceptKind.NORMAL;
  }

  private StaticScope getStaticScope(byte nodeInfo) {
    int i = (nodeInfo >> 3) & 3;
    return i == 1 ? StaticScope.ROOT : i == 2 ? StaticScope.NONE : StaticScope.GLOBAL;
  }

  private boolean isUnordered(byte nodeInfo) {
    return (nodeInfo & 1) != 0;
  }

  protected String readConceptQualifiedName(ModelInputStream is) throws IOException {
    return is.readString();
  }

  protected void readChildren(SModel model, ModelInputStream is, SNode node) throws IOException {
    List<Pair<String, SNode>> children = readNodes(model, is);
    for (Pair<String, SNode> child : children) {
      if (!(node instanceof InterfaceSNode) || child.o2 instanceof InterfaceSNode) {
        node.addChild(child.o1, child.o2);
      } else {
        ((InterfaceSNode) node).skipRole(child.o1);
        hasSkippedNodes = true;
      }
    }
  }

  protected void readReferences(ModelInputStream is, SNode node) throws IOException {
    int references = is.readInt();
    for (; references > 0; references--) {
      int kind = is.readInt();
      SNodeId targetNodeId = kind == 1 ? readTargetNodeId(is) : null;
      DynamicReferenceOrigin origin = kind == 3 ? new DynamicReferenceOrigin(is.readNodePointer(), is.readNodePointer()) : null;
      String role = is.readString();
      SModelReference modelRef = is.readByte() == 18 ? is.readModelReference() : myModelReference;
      String resolveInfo = is.readString();
      if (kind == 1) {
        SReference reference = new StaticReference(
            role,
            node,
            modelRef,
            targetNodeId,
            resolveInfo);
        node.setReference(reference.getRole(), reference);
      } else if (kind == 2 || kind == 3) {
        DynamicReference reference = new DynamicReference(
            role,
            node,
            modelRef,
            resolveInfo);
        if (origin != null) {
          reference.setOrigin(origin);
        }
        node.setReference(reference.getRole(), reference);
      } else {
        throw new IOException("unknown reference type");
      }
    }
  }

  protected SNodeId readTargetNodeId(ModelInputStream is) throws IOException {
    return is.readNodeId();
  }

  protected void readProperties(ModelInputStream is, SNode node) throws IOException {
    int properties = is.readInt();
    for (; properties > 0; properties--) {
      String key = is.readString();
      String value = is.readString();
      node.setProperty(InternUtil.intern(key), InternUtil.intern(value));
    }
  }

  private void readUserObjects(SModel model, ModelInputStream is, SNode node) throws IOException {
    // first read user objects
    int userObjectCount = is.readInt();
    for (int i = 0; i < userObjectCount; i += 2) {
      Object key = readUserObject(is, model);
      Object value = readUserObject(is, model);
      if (key != null && value != null) {
        node.putUserObject(key, value);
      }
    }
  }

  private Object readUserObject(ModelInputStream is, SModel model) throws IOException {
    int id = is.readInt();
    switch (id) {
      case NodesWriter.USER_NODE_POINTER:
        return is.readNodePointer();
      case NodesWriter.USER_STRING:
        return is.readString();
      case NodesWriter.USER_NULL:
        return null;
      case NodesWriter.USER_NODE_ID:
        return is.readNodeId();
      case NodesWriter.USER_MODEL_ID:
        return is.readModelID();
      case NodesWriter.USER_MODEL_REFERENCE:
        return is.readModelReference();
      case NodesWriter.USER_SERIALIZABLE:
        ObjectInputStream stream = new ObjectInputStream(is);
        try {
          return stream.readObject();
        } catch (ClassNotFoundException ignore) {
          // class could be loaded by the other classloader
          return null;
        }
    }
    throw new IOException("Could not read user object");
  }
}
