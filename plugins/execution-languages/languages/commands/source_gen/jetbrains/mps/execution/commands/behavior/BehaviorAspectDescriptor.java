package jetbrains.mps.execution.commands.behavior;

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
  private final BHDescriptor myCommandType__BehaviorDescriptor = new CommandType__BehaviorDescriptor();
  private final BHDescriptor myExplicitCommandParameterDeclaration__BehaviorDescriptor = new ExplicitCommandParameterDeclaration__BehaviorDescriptor();
  private final BHDescriptor myCommandMethod__BehaviorDescriptor = new CommandMethod__BehaviorDescriptor();
  private final BHDescriptor myCommandDeclaration__BehaviorDescriptor = new CommandDeclaration__BehaviorDescriptor();
  private final BHDescriptor myCommandBuilderExpression__BehaviorDescriptor = new CommandBuilderExpression__BehaviorDescriptor();
  private final BHDescriptor myBuilderBlockStatement__BehaviorDescriptor = new BuilderBlockStatement__BehaviorDescriptor();
  private final BHDescriptor myBuilderParameter__BehaviorDescriptor = new BuilderParameter__BehaviorDescriptor();
  private final BHDescriptor myReportExecutionError__BehaviorDescriptor = new ReportExecutionError__BehaviorDescriptor();
  private final BHDescriptor myReportErrorStatement__BehaviorDescriptor = new ReportErrorStatement__BehaviorDescriptor();
  private final BHDescriptor myRedirectOutputExpression__BehaviorDescriptor = new RedirectOutputExpression__BehaviorDescriptor();
  private final BHDescriptor myCommandPartLengthOperation__BehaviorDescriptor = new CommandPartLengthOperation__BehaviorDescriptor();
  private final BHDescriptor myNewProcessBuilderExpression__BehaviorDescriptor = new NewProcessBuilderExpression__BehaviorDescriptor();
  private final BHDescriptor myExecuteCommandPart__BehaviorDescriptor = new ExecuteCommandPart__BehaviorDescriptor();
  private final BHDescriptor myCommandParameterDeclaration__BehaviorDescriptor = new CommandParameterDeclaration__BehaviorDescriptor();
  private final BHDescriptor myCommandPartToListOperation__BehaviorDescriptor = new CommandPartToListOperation__BehaviorDescriptor();
  private final BHDescriptor myDebuggerSettingsCommandParameterDeclaration__BehaviorDescriptor = new DebuggerSettingsCommandParameterDeclaration__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[16];
    myConceptBehaviorIds[0] = 0xbe3a0d5ba1a2bd6L;
    myConceptBehaviorIds[1] = 0xbe3a0d5ba1a2be2L;
    myConceptBehaviorIds[2] = 0xbe3a0d5ba1a2be7L;
    myConceptBehaviorIds[3] = 0xbe3a0d5ba1a2be8L;
    myConceptBehaviorIds[4] = 0xbe3a0d5ba1a2bf4L;
    myConceptBehaviorIds[5] = 0xbe3a0d5ba1a2bf8L;
    myConceptBehaviorIds[6] = 0xbe3a0d5ba1a2bfbL;
    myConceptBehaviorIds[7] = 0xbe3a0d5ba1a2bfeL;
    myConceptBehaviorIds[8] = 0xbe3a0d5ba1a2c00L;
    myConceptBehaviorIds[9] = 0xbe3a0d5ba1a2c14L;
    myConceptBehaviorIds[10] = 0x166dfef127134569L;
    myConceptBehaviorIds[11] = 0x2085f2c5c8400c12L;
    myConceptBehaviorIds[12] = 0x550ea9458ea107acL;
    myConceptBehaviorIds[13] = 0x65afee7b2c712158L;
    myConceptBehaviorIds[14] = 0x72450cdacb885c78L;
    myConceptBehaviorIds[15] = 0x75aadb0d4e61a576L;
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
        return myCommandType__BehaviorDescriptor;
      case 1:
        return myExplicitCommandParameterDeclaration__BehaviorDescriptor;
      case 2:
        return myCommandMethod__BehaviorDescriptor;
      case 3:
        return myCommandDeclaration__BehaviorDescriptor;
      case 4:
        return myCommandBuilderExpression__BehaviorDescriptor;
      case 5:
        return myBuilderBlockStatement__BehaviorDescriptor;
      case 6:
        return myBuilderParameter__BehaviorDescriptor;
      case 7:
        return myReportExecutionError__BehaviorDescriptor;
      case 8:
        return myReportErrorStatement__BehaviorDescriptor;
      case 9:
        return myRedirectOutputExpression__BehaviorDescriptor;
      case 10:
        return myCommandPartLengthOperation__BehaviorDescriptor;
      case 11:
        return myNewProcessBuilderExpression__BehaviorDescriptor;
      case 12:
        return myExecuteCommandPart__BehaviorDescriptor;
      case 13:
        return myCommandParameterDeclaration__BehaviorDescriptor;
      case 14:
        return myCommandPartToListOperation__BehaviorDescriptor;
      case 15:
        return myDebuggerSettingsCommandParameterDeclaration__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
