package jetbrains.mps.baseLanguage.javadoc.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.javadoc.editor.NodeCaretPair;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public abstract class CommentLinePart_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor {
  public NodeCaretPair virtual_smartDelete_9042833497008205283(SNode __thisNode__, boolean isBeginning) {
    return null;
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.javadoc.structure.CommentLinePart";
  }

}
