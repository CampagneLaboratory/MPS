package jetbrains.mps.lang.editor.tableTests.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class Table_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements INamedConcept_BehaviorDescriptor {
  public String virtual_getFqName_1213877404258(SNode __thisNode__) {
    return null;
  }
  public int virtual_getInitialColumnCount_1262430001741498026(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Integer.TYPE);
  }
  public int virtual_getInitialRowCount_1262430001741498094(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Integer.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.editor.tableTests.structure.Table";
  }

}
