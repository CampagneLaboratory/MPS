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
package jetbrains.mps.ide.components;

import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.util.annotation.ToRemove;
import org.jdom.Element;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SearchScope;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

/**
 * @deprecated SNodeReference provides mechanism to persist reference to nodes. ComponentsUtil is stupid name, anyway.
 * The only usage, NodeNodeData, shall be refactored to use SNodeReference.toString and PersistenceFacade
 * @author Kostik
 */
@Deprecated
@ToRemove(version = 3.2)
public class ComponentsUtil {
  public static final String NODE = "node";
  public static final String MODEL = "model";
  public static final String MODULE = "module"; // old
  public static final String ID = "id";
  public static final String NUMBER = "number";

  public static Element nodeToElement(SNode node) {
    Element nodeElement = new Element(NODE);
    SModel model = node.getModel();
    nodeElement.setAttribute(MODEL, model.getReference().toString());
    nodeElement.setAttribute(ID, node.getNodeId().toString());
    return nodeElement;
  }

  public static SNode nodeFromElement(Element nodeElement) {
    return nodeFromElement(nodeElement, GlobalScope.getInstance());
  }

  //do not remove it. we need it for cell info

  public static SNode nodeFromElement(Element nodeElement, SearchScope scope) {
    String modelUID = nodeElement.getAttributeValue(MODEL);
    String id = nodeElement.getAttributeValue(ID);
    SModel modelDescriptor = scope.resolve(PersistenceFacade.getInstance().createModelReference(modelUID));
    if (modelDescriptor == null) return null;
    SNodeId nodeId = PersistenceFacade.getInstance().createNodeId(id);
    assert nodeId != null : "wrong node id string";
    return modelDescriptor.getNode(nodeId);
  }

  public static SNodeReference nodePointerFromElement(Element nodeElement) {
    String modelUID = nodeElement.getAttributeValue(MODEL);
    String id = nodeElement.getAttributeValue(ID);
    return new jetbrains.mps.smodel.SNodePointer(modelUID, id);
  }
}
