package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;
import org.jetbrains.mps.openapi.language.SConcept;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class StaticFieldReference_BehaviorDescriptor extends VariableReference_BehaviorDescriptor {
  public Object virtual_eval_1213877519769(SNode __thisNode__, SModule module) {
    return null;
  }
  public Object virtual_getCompileTimeConstantValue_1238860310638(SNode __thisNode__, SModule module) {
    return null;
  }
  public boolean virtual_isCompileTimeConstant_1238860258777(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_lvalue_1262430001741497939(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.StaticFieldReference";
  }

}
