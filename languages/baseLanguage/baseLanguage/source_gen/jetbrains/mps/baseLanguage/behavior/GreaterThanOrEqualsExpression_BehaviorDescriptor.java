package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class GreaterThanOrEqualsExpression_BehaviorDescriptor extends BinaryCompareOperation_BehaviorDescriptor {
  public Object virtual_calculateCompileTimeConstantValue_1587718783752756055(SNode __thisNode__, Object leftValue, Object rightValue) {
    return null;
  }
  public int virtual_getPriority_1262430001741497858(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Integer.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression";
  }

}
