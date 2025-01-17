package jetbrains.mps.debugger.api.lang.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBehaviorAspectDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.BHDescriptor;
import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import jetbrains.mps.smodel.runtime.interpreted.BehaviorAspectInterpreted;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import java.util.Arrays;

public final class BehaviorAspectDescriptor extends BaseBehaviorAspectDescriptor {
  private final BHDescriptor myDebuggerReference__BehaviorDescriptor = new DebuggerReference__BehaviorDescriptor();
  private final BHDescriptor myConceptFunctionParameter_Debug_Project__BehaviorDescriptor = new ConceptFunctionParameter_Debug_Project__BehaviorDescriptor();
  private final BHDescriptor myConceptFunctionParameter_DebuggableNode__BehaviorDescriptor = new ConceptFunctionParameter_DebuggableNode__BehaviorDescriptor();
  private final BHDescriptor myConceptFunction_IsApplicableBreakpoint__BehaviorDescriptor = new ConceptFunction_IsApplicableBreakpoint__BehaviorDescriptor();
  private final BHDescriptor myConceptFunction_CreateBreakpoint__BehaviorDescriptor = new ConceptFunction_CreateBreakpoint__BehaviorDescriptor();
  private final BHDescriptor myGetDebuggerSettings_Function__BehaviorDescriptor = new GetDebuggerSettings_Function__BehaviorDescriptor();
  private final BHDescriptor myConceptFunction_IsApplicableToConcept__BehaviorDescriptor = new ConceptFunction_IsApplicableToConcept__BehaviorDescriptor();
  private final BHDescriptor myConceptFunctionParameter_Concept__BehaviorDescriptor = new ConceptFunctionParameter_Concept__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[8];
    myConceptBehaviorIds[0] = 0xf528808f912d151L;
    myConceptBehaviorIds[1] = 0x11a2c8c0148e628cL;
    myConceptBehaviorIds[2] = 0x11a2c8c0148e6290L;
    myConceptBehaviorIds[3] = 0x2b1681328a5d4b64L;
    myConceptBehaviorIds[4] = 0x2bd07aa080dfb93aL;
    myConceptBehaviorIds[5] = 0x5d457621242d18e2L;
    myConceptBehaviorIds[6] = 0x79747203892d4cc9L;
    myConceptBehaviorIds[7] = 0x79747203892d4ccdL;
  }

  @Deprecated
  @Override
  public BehaviorDescriptor getDescriptor(String fqName) {
    return BehaviorAspectInterpreted.getInstance().getDescriptor(fqName);
  }

  @Nullable
  @Override
  public BHDescriptor getDescriptor(@NotNull SConceptId conceptId) {
    int behaviorIndex = Arrays.binarySearch(myConceptBehaviorIds, conceptId.getIdValue());
    switch (behaviorIndex) {
      case 0:
        return myDebuggerReference__BehaviorDescriptor;
      case 1:
        return myConceptFunctionParameter_Debug_Project__BehaviorDescriptor;
      case 2:
        return myConceptFunctionParameter_DebuggableNode__BehaviorDescriptor;
      case 3:
        return myConceptFunction_IsApplicableBreakpoint__BehaviorDescriptor;
      case 4:
        return myConceptFunction_CreateBreakpoint__BehaviorDescriptor;
      case 5:
        return myGetDebuggerSettings_Function__BehaviorDescriptor;
      case 6:
        return myConceptFunction_IsApplicableToConcept__BehaviorDescriptor;
      case 7:
        return myConceptFunctionParameter_Concept__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
