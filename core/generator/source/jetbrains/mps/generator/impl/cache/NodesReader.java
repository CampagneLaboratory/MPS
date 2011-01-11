package jetbrains.mps.generator.impl.cache;

import jetbrains.mps.smodel.*;
import jetbrains.mps.util.InternUtil;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: fyodor
 * Date: 1/11/11
 * Time: 10:26 AM
 * To change this template use File | Settings | File Templates.
 */
public class NodesReader {
  protected final SModelReference myModelReference;

  public NodesReader(@NotNull SModelReference modelReference) {
    myModelReference = modelReference;
  }

  public List<SNode> readNodes(SModel model, ModelInputStream is) throws IOException {
    int size = is.readInt();
    List<SNode> nodes = new ArrayList<SNode>(size);
    for (int i = 0; i < size; i++) {
      nodes.add(readNode(model, is));
    }
    return nodes;
  }

  protected SNode readNode(SModel model, ModelInputStream is) throws IOException {
    String conceptFqName = is.readString();
    SNodeId nodeId = is.readNodeId();
    String nodeRole = is.readString();
    if (is.readByte() != '{') {
      throw new IOException("bad stream, no '{'");
    }

    SNode node = new SNode(model, conceptFqName, true);
    node.setRoleInParent(nodeRole);
    node.setId(nodeId);

    readProperties(is, node);

    readReferences(is, node);

    readChildren(model, is, node);

    if (is.readByte() != '}') {
      throw new IOException("bad stream, no '}'");
    }
    return node;
  }

  protected void readChildren(SModel model, ModelInputStream is, SNode node) throws IOException {
    List<SNode> children = readNodes(model, is);
    for (SNode child : children) {
      String role = child.getRole_();
      assert role != null;
      node.addChild(role, child);
    }
  }

  protected void readReferences(ModelInputStream is, SNode node) throws IOException {
    int references = is.readInt();
    for (; references > 0; references--) {
      int kind = is.readInt();
      SNodeId targetNodeId = kind == 1 ? is.readNodeId() : null;

      String role = is.readString();
      SModelReference modelRef = is.readModelReference();
      if(modelRef != null && TransientModelPersistence.LOCAL.equals(modelRef)) {
        modelRef = myModelReference;
      }
      String resolveInfo = is.readString();
      if (kind == 1) {
        node.addReference(
          new StaticReference(
            role,
            node,
            modelRef,
            targetNodeId,
            resolveInfo));
      } else if (kind == 2) {
        assert modelRef != null;
        node.addReference(
          new DynamicReference(
            role,
            node,
            modelRef,
            resolveInfo));
      } else {
        throw new IOException("unknown reference type");
      }
    }
  }

  protected void readProperties(ModelInputStream is, SNode node) throws IOException {
    int properties = is.readInt();
    for (; properties > 0; properties--) {
      String key = is.readString();
      String value = is.readString();
      node.setProperty(InternUtil.intern(key), InternUtil.intern(value), false);
    }
  }
}
