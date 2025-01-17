package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.traceable.behavior.ScopeConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import jetbrains.mps.scope.Scope;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class ForStatement_BehaviorDescriptor extends AbstractForStatement_BehaviorDescriptor implements ScopeConcept_BehaviorDescriptor, IConditional_BehaviorDescriptor {
  public NextProgramPoint virtual_getNextProgramPoint_4235809288648213009(SNode __thisNode__, @NotNull SNode child, boolean value) {
    return null;
  }
  public List<SNode> virtual_getScopeVariables_5067982036267369894(SNode __thisNode__) {
    return null;
  }
  public Scope virtual_getScope_3734116213129936182(SNode __thisNode__, SNode kind, SNode child) {
    return null;
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.ForStatement";
  }

}
