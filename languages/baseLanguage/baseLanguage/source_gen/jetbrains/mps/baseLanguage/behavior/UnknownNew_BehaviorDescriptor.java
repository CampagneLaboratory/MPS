package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import java.util.Map;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class UnknownNew_BehaviorDescriptor extends Expression_BehaviorDescriptor implements IMethodCall_BehaviorDescriptor, IYetUnresolved_BehaviorDescriptor, IDontSubstituteByDefault_BehaviorDescriptor {
  public SNode virtual_deriveType_1213877435747(SNode __thisNode__, SNode expression) {
    return null;
  }
  public SNode virtual_deriveType_4555537781928374706(SNode __thisNode__, SNode expression, SNode link) {
    return null;
  }
  public _FunctionTypes._return_P0_E0<? extends SNode> virtual_evaluateSubst_8136348407761606764(SNode __thisNode__) {
    return null;
  }
  public Iterable<SNode> virtual_getAvailableMethodDeclarations_5776618742611315379(SNode __thisNode__, String methodName) {
    return null;
  }
  public SNode virtual_getInstanceType_8008512149545154471(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getTypeAnnotation_1233920952262(SNode __thisNode__) {
    return null;
  }
  public Map<SNode, SNode> virtual_getTypesByTypeVars_851115533308208851(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_isInTypeInferenceContext_4837286298388660615(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_useScopesForMethodDeclarationFixer_66132694723287898(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.UnknownNew";
  }

}
