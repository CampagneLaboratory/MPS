package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public abstract class NodeRuleCheckOperation_BehaviorDescriptor extends AbstractNodeRuleCheckOperation_BehaviorDescriptor implements IReferenceAttachable_BehaviorDescriptor {
  public boolean virtual_hasExpectedRuleMessage_5348336190814877000(SNode __thisNode__, Iterable<IErrorReporter> errorReporters) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.test.structure.NodeRuleCheckOperation";
  }

}
