package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class QueryFunction_Color_BehaviorDescriptor extends QueryFunction_StyleParameter_BehaviorDescriptor implements IQueryFunction_Color_BehaviorDescriptor {
  public SNode virtual_getExpectedReturnType_1213877374441(SNode __thisNode__) {
    return null;
  }
  public String virtual_getRGBValue_1225468086082(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_isFunction_1225463329531(SNode __thisNode__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.editor.structure.QueryFunction_Color";
  }

}
