package jetbrains.mps.lang.smodel.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class LanguageId_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements LanguageIdentity_BehaviorDescriptor {
  public SLanguage virtual_getLanguage_3542851458883438739(SNode __thisNode__) {
    return null;
  }
  public void virtual_setLanguage_3542851458883438752(SNode __thisNode__, SLanguage language) {
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.smodel.structure.LanguageId";
  }

}
