package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.IValidIdentifier_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.classifiers.behavior.IClassifier_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IExtractMethodRefactoringProcessor;
import java.util.List;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class ParametersInformationQuery_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements IValidIdentifier_BehaviorDescriptor, IClassifier_BehaviorDescriptor {
  public SNode virtual_createSuperType_1217433657148(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_createType_1213877527970(SNode __thisNode__) {
    return null;
  }
  public IExtractMethodRefactoringProcessor virtual_getExtractMethodRefactoringProcessor_1221393367929(SNode __thisNode__, List<SNode> nodesToRefactor) {
    return null;
  }
  public String virtual_getFqName_1213877404258(SNode __thisNode__) {
    return null;
  }
  public List<SNode> virtual_getMembers_1213877528020(SNode __thisNode__, SNode contextNode) {
    return null;
  }
  public List<SNode> virtual_getMembers_1213877528124(SNode __thisNode__) {
    return null;
  }
  public List<SNode> virtual_getParts_1213877527988(SNode __thisNode__) {
    return null;
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.editor.structure.ParametersInformationQuery";
  }

}
