package jetbrains.mps.baseLanguage.collections.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class HashSetCreator_BehaviorDescriptor extends AbstractContainerCreator_BehaviorDescriptor {
  public SNode virtual_createType_1237722437229(SNode __thisNode__) {
    return null;
  }
  public List<SNode> virtual_getAvailableFor_3044950653914717035(SConcept __thisConcept__) {
    return null;
  }
  public boolean virtual_hasInitSize_1262430001741498238(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.collections.structure.HashSetCreator";
  }

}
