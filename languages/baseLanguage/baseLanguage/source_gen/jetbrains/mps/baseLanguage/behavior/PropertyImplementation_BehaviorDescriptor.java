package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public abstract class PropertyImplementation_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor {

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.PropertyImplementation";
  }

  public abstract boolean virtual_hasSetter_1213877430658(SNode __thisNode__);
}
