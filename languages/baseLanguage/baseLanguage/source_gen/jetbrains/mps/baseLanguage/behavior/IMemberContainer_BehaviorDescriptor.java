package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This interface is not involved in the actual method invocation
 */
@Deprecated
public interface IMemberContainer_BehaviorDescriptor {
  public List<SNode> virtual_getMembers_1213877531970(SNode thisNode);
  public List<SNode> virtual_getMethodsToOverride_5418393554803767537(SNode thisNode);
  public List<SNode> virtual_getMethodsToImplement_5418393554803775106(SNode thisNode);
}
