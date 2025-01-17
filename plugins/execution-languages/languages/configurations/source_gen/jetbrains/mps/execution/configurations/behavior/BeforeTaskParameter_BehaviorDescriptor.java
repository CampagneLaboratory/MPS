package jetbrains.mps.execution.configurations.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.VariableDeclaration_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class BeforeTaskParameter_BehaviorDescriptor extends VariableDeclaration_BehaviorDescriptor {
  public boolean virtual_isInitializable_1213877517488(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.execution.configurations.structure.BeforeTaskParameter";
  }

}
