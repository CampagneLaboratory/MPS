package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public abstract class ActionReference_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor {

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.test.structure.ActionReference";
  }

  public abstract String virtual_getActionId_1101347953350122762(SNode __thisNode__);
}
