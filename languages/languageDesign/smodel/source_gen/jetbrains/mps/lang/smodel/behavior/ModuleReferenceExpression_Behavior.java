package jetbrains.mps.lang.smodel.behavior;

/*Generated by MPS */

import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

/**
 * Will be removed after 3.3
 * Need to support the legacy static direct method calls
 */
@Deprecated
public class ModuleReferenceExpression_Behavior {
  @Nullable
  public static SModule call_getModule_4040588429969043137(SNode __thisNode__) {
    return ModuleReferenceExpression__BehaviorDescriptor.getModule_id3wj3sjzQUV1(__thisNode__);
  }
  @NotNull
  public static List<SModule> call_getVisibleModules_4040588429969394431(SAbstractConcept __thisConcept__) {
    return ModuleReferenceExpression__BehaviorDescriptor.getVisibleModules_id3wj3sjzSgFZ(__thisConcept__);
  }
}
