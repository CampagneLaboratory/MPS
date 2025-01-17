package jetbrains.mps.lang.migration.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class PureMigrationScript_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements INamedConcept_BehaviorDescriptor, IMigrationUnit_BehaviorDescriptor, IDontSubstituteByDefault_BehaviorDescriptor {
  public int virtual_fromVersion_5168866961621042645(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Integer.TYPE);
  }
  public Iterable<SNode> virtual_getExecuteAfter_2521103492728978905(SNode __thisNode__) {
    return null;
  }
  public String virtual_getFqName_1213877404258(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getProducedData_8585153554445933384(SNode __thisNode__) {
    return null;
  }
  public Iterable<SNode> virtual_getRequiredData_8585153554445862713(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_isVersionSet_5168866961621097742(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.migration.structure.PureMigrationScript";
  }

}
