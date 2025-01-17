package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This interface is not involved in the actual method invocation
 */
@Deprecated
public interface ClassifierMember_BehaviorDescriptor extends IVisible_BehaviorDescriptor, IClassifierMember_BehaviorDescriptor {
  public boolean virtual_isStatic_8986964027630462944(SNode thisNode);
  public boolean virtual_isVisible_8083692786967482069(SNode thisNode, SNode contextClassifier, SNode contextNode);
  public boolean virtual_needsEmptyLineBefore_641490355014296733(SNode thisNode);
  public boolean virtual_needsEmptyLineAfter_641490355014298838(SNode thisNode);
  public boolean virtual_canBeInterfaceMember_2949815620938109095(SConcept thisConcept);
}
