package jetbrains.mps.execution.settings.behavior;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.smodel.behaviour.DefaultValuesHolder;

/**
 * Will be removed after 3.3
 * Need to support compilation of the legacy behavior descriptors before the language is rebuilt
 * This class is not involved in the actual method invocation
 */
@Deprecated
public class ResetFrom_Function_BehaviorDescriptor extends EditorOperationDeclaration_BehaviorDescriptor {
  public List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SConcept __thisConcept__) {
    return null;
  }
  public SNode virtual_getJavaMethod_946964771156066991(SNode __thisNode__) {
    return null;
  }
  public SNode virtual_getPublicJavaMethod_203908296139519011(SNode __thisNode__) {
    return null;
  }
  public boolean virtual_showName_1262430001741498082(SConcept __thisConcept__) {
    return DefaultValuesHolder.defaultValue(Boolean.TYPE);
  }

  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.execution.settings.structure.ResetFrom_Function";
  }

}
