package jetbrains.mps.build.behavior;

/*Generated by MPS */

import java.awt.Color;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NonNls;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class BuildLayout_EchoProperties_BehaviorDescriptor extends BuildLayout_Node_BehaviorDescriptor implements BuildStringContainer_BehaviorDescriptor {
  public Color virtual_getColorForTextPart_6083230236994422116(SNode __thisNode__, @NonNls String role) {
    return null;
  }
  public boolean virtual_isValidPart_9184644532456897464(SNode __thisNode__, String propertyValue, String role) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.build.structure.BuildLayout_EchoProperties";
  }

}
