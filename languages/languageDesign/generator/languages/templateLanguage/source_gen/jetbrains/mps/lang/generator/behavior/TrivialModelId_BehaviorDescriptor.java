package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.TransientModelsModule;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class TrivialModelId_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements ModelIdentity_BehaviorDescriptor {
  public SModel virtual_create_9032177546944490023(SNode __thisNode__, TransientModelsModule module) {
    return null;
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.generator.structure.TrivialModelId";
  }

}
