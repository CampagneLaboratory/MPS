package jetbrains.mps.baseLanguage.tuples.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IValidIdentifier_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.HasAnnotation_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.TypeDerivable_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.TypeAnnotable_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.IResolveInfo_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;
import java.util.List;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class NamedTupleComponentDeclaration_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements IValidIdentifier_BehaviorDescriptor, HasAnnotation_BehaviorDescriptor, TypeDerivable_BehaviorDescriptor, TypeAnnotable_BehaviorDescriptor, IResolveInfo_BehaviorDescriptor {
  public boolean virtual_canBeAnnotated_1233076312117(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public SNode virtual_deriveType_1213877435747(SNode __thisNode__, SNode expression) {
    return null;
  }
  public SNode virtual_deriveType_4555537781928374706(SNode __thisNode__, SNode expression, SNode link) {
    return null;
  }
  public List<SNode> virtual_getChildrenToDisplayIntention_4025276038182319200(SNode __thisNode__) {
    return null;
  }
  public String virtual_getFqName_1213877404258(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getTypeAnnotation_1233920952262(SNode __thisNode__) {
    return null;
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.tuples.structure.NamedTupleComponentDeclaration";
  }

}
