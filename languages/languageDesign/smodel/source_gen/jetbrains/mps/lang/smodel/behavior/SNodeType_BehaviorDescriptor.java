package jetbrains.mps.lang.smodel.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.Type_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;
import java.util.List;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class SNodeType_BehaviorDescriptor extends Type_BehaviorDescriptor {
  public boolean virtual_canBeCoerced_6321644624958501287(SNode __thisNode__, String conceptFqName) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public SNode virtual_getAbstractCreator_1213877337340(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getClassExpression_1213877337357(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getErasure_702942408396803226(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getJavaType_1213877337345(SNode __thisNode__) {
    return null;
  }
  public String virtual_getPresentation_1213877396640(SNode __thisNode__) {
    return null;
  }
  public List<String> virtual_getVariableSuffixes_1213877337304(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_hasMissingParameters_3508583411997314206(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.smodel.structure.SNodeType";
  }

}
