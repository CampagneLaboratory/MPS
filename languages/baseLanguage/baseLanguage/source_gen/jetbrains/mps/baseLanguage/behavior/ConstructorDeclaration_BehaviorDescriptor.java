package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IResolveInfo_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.InterfacePart_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;
import org.jetbrains.mps.openapi.language.SConcept;
import javax.swing.Icon;
import java.util.List;
import jetbrains.mps.baseLanguage.scopes.MembersPopulatingContext;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class ConstructorDeclaration_BehaviorDescriptor extends BaseMethodDeclaration_BehaviorDescriptor implements ClassifierMember_BehaviorDescriptor, IResolveInfo_BehaviorDescriptor, InterfacePart_BehaviorDescriptor {
  public boolean virtual_canBeAnnotated_1233076312117(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_canBeInterfaceMember_2949815620938109095(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public Icon virtual_getAdditionalIcon_5017341185733863694(SNode __thisNode__) {
    return null;
  }
  public List<SNode> virtual_getChildrenToDisplayIntention_4025276038182319200(SNode __thisNode__) {
    return null;
  }
  public String virtual_getPresentation_1213877396640(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_isDeprecated_1224609060727(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_isReturnsVoid_1234359555698(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_isStatic_7405920559687241224(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_isStatic_8986964027630462944(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_isVisible_6145907390641297352(SNode __thisNode__, SNode contextClassifierType, SNode contextNode) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_isVisible_8083692786967482069(SNode __thisNode__, SNode contextClassifier, SNode contextNode) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public String virtual_jniSignature_8847328628797656446(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_needsEmptyLineAfter_641490355014298838(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public boolean virtual_needsEmptyLineBefore_641490355014296733(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }
  public void virtual_populateMember_7405920559687254644(SNode __thisNode__, MembersPopulatingContext context, SNode classifierType) {
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.ConstructorDeclaration";
  }

}
