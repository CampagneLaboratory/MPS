package jetbrains.mps.generator.impl.cache;

import jetbrains.mps.smodel.*;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;

/**
 * Created by IntelliJ IDEA.
 * User: fyodor
 * Date: 1/11/11
 * Time: 10:37 AM
 * To change this template use File | Settings | File Templates.
 */
public class NodesWriter {
  protected static final SModelReference LOCAL = SModelReference.fromString("$LOCAL$");
  protected final SModelReference myModelReference;

  public NodesWriter(@NotNull SModelReference modelReference) {
    this.myModelReference = modelReference;
  }

  protected void writeNodes(Collection<SNode> nodes, ModelOutputStream os) throws IOException {
    os.writeInt(nodes.size());
    for (SNode n : nodes) {
      writeNode(n, os);
    }
  }

  protected void writeNode(SNode node, ModelOutputStream os) throws IOException {
    os.writeString(node.getConceptFqName());
    os.writeNodeId(node.getSNodeId());
    os.writeString(node.getRole_());
    os.writeByte('{');

    writeProperties(node, os);

    writeReferences(node, os);

    writeChildren(node, os);

    os.writeByte('}');
  }

  protected void writeChildren(SNode node, ModelOutputStream os) throws IOException {
    writeNodes(node.getChildren(), os);
  }

  protected void writeReferences(SNode node, ModelOutputStream os) throws IOException {
    Collection<SReference> refs = node.getReferencesIterable();
    os.writeInt(refs.size());
    for (SReference reference : refs) {
      SModelReference targetModelReference = reference.getTargetSModelReference();
      if (reference instanceof StaticReference) {
        os.writeInt(1);
        os.writeNodeId(reference.getTargetNodeId());
      } else if (reference instanceof DynamicReference) {
        os.writeInt(2);
      } else {
        throw new IOException("cannot store reference: " + reference.toString());
      }
      os.writeString(reference.getRole());
      os.writeModelReference(targetModelReference != null && targetModelReference.equals(myModelReference) ? LOCAL : targetModelReference);
      os.writeString(reference.getResolveInfo());
    }
  }

  protected void writeProperties(SNode node, ModelOutputStream os) throws IOException {
    Map<String, String> properties = node.getProperties();
    os.writeInt(properties.size());
    for (Entry<String, String> entry : properties.entrySet()) {
      os.writeString(entry.getKey());
      os.writeString(entry.getValue());
    }
  }
}
