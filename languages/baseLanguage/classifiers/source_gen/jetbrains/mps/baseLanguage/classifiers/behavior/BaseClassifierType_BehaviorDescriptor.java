package jetbrains.mps.baseLanguage.classifiers.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.Type_BehaviorDescriptor;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public abstract class BaseClassifierType_BehaviorDescriptor extends Type_BehaviorDescriptor {

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.classifiers.structure.BaseClassifierType";
  }

  public abstract List<SNode> virtual_getMembers_1213877402148(SNode __thisNode__, SNode contextNode);
}
