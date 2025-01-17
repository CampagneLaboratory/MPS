package jetbrains.mps.baseLanguage.closures.behavior;

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
  private final BHDescriptor myFunctionType__BehaviorDescriptor = new FunctionType__BehaviorDescriptor();
  private final BHDescriptor myInvokeFunctionExpression__BehaviorDescriptor = new InvokeFunctionExpression__BehaviorDescriptor();
  private final BHDescriptor myClosureLiteral__BehaviorDescriptor = new ClosureLiteral__BehaviorDescriptor();
  private final BHDescriptor myInvokeExpression__BehaviorDescriptor = new InvokeExpression__BehaviorDescriptor();
  private final BHDescriptor myYieldStatement__BehaviorDescriptor = new YieldStatement__BehaviorDescriptor();
  private final BHDescriptor myUnboundClosureParameterDeclaration__BehaviorDescriptor = new UnboundClosureParameterDeclaration__BehaviorDescriptor();
  private final BHDescriptor myInvokeFunctionOperation__BehaviorDescriptor = new InvokeFunctionOperation__BehaviorDescriptor();
  private final BHDescriptor myYieldAllStatement__BehaviorDescriptor = new YieldAllStatement__BehaviorDescriptor();
  private final BHDescriptor myUnrestrictedClosureLiteral__BehaviorDescriptor = new UnrestrictedClosureLiteral__BehaviorDescriptor();
  private final BHDescriptor myClosureControlStatement__BehaviorDescriptor = new ClosureControlStatement__BehaviorDescriptor();
  private final BHDescriptor myControlAbstractionContainer__BehaviorDescriptor = new ControlAbstractionContainer__BehaviorDescriptor();
  private final BHDescriptor myControlAbstractionDeclaration__BehaviorDescriptor = new ControlAbstractionDeclaration__BehaviorDescriptor();
  private final BHDescriptor myUnrestrictedFunctionType__BehaviorDescriptor = new UnrestrictedFunctionType__BehaviorDescriptor();
  private final BHDescriptor myCompactInvokeFunctionExpression__BehaviorDescriptor = new CompactInvokeFunctionExpression__BehaviorDescriptor();
  private final BHDescriptor myClosureLiteralType__BehaviorDescriptor = new ClosureLiteralType__BehaviorDescriptor();
  private final BHDescriptor myFunctionMethodDeclaration__BehaviorDescriptor = new FunctionMethodDeclaration__BehaviorDescriptor();
  private final BHDescriptor myAbstractFunctionType__BehaviorDescriptor = new AbstractFunctionType__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[17];
    myConceptBehaviorIds[0] = 0x1174a4d19ffL;
    myConceptBehaviorIds[1] = 0x1174a964795L;
    myConceptBehaviorIds[2] = 0x1174bed3125L;
    myConceptBehaviorIds[3] = 0x117545d385aL;
    myConceptBehaviorIds[4] = 0x11797183e82L;
    myConceptBehaviorIds[5] = 0x118276b7086L;
    myConceptBehaviorIds[6] = 0x11d67349093L;
    myConceptBehaviorIds[7] = 0x11e25fc6c63L;
    myConceptBehaviorIds[8] = 0x11e49cdf7cbL;
    myConceptBehaviorIds[9] = 0x11e49cfed99L;
    myConceptBehaviorIds[10] = 0x11e49db3870L;
    myConceptBehaviorIds[11] = 0x11e49dc8097L;
    myConceptBehaviorIds[12] = 0x11e505b9d83L;
    myConceptBehaviorIds[13] = 0x11fb8425aa8L;
    myConceptBehaviorIds[14] = 0xe8770ba07b68051L;
    myConceptBehaviorIds[15] = 0x42d79e63a78a7784L;
    myConceptBehaviorIds[16] = 0x4de23a15f719357dL;
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
        return myFunctionType__BehaviorDescriptor;
      case 1:
        return myInvokeFunctionExpression__BehaviorDescriptor;
      case 2:
        return myClosureLiteral__BehaviorDescriptor;
      case 3:
        return myInvokeExpression__BehaviorDescriptor;
      case 4:
        return myYieldStatement__BehaviorDescriptor;
      case 5:
        return myUnboundClosureParameterDeclaration__BehaviorDescriptor;
      case 6:
        return myInvokeFunctionOperation__BehaviorDescriptor;
      case 7:
        return myYieldAllStatement__BehaviorDescriptor;
      case 8:
        return myUnrestrictedClosureLiteral__BehaviorDescriptor;
      case 9:
        return myClosureControlStatement__BehaviorDescriptor;
      case 10:
        return myControlAbstractionContainer__BehaviorDescriptor;
      case 11:
        return myControlAbstractionDeclaration__BehaviorDescriptor;
      case 12:
        return myUnrestrictedFunctionType__BehaviorDescriptor;
      case 13:
        return myCompactInvokeFunctionExpression__BehaviorDescriptor;
      case 14:
        return myClosureLiteralType__BehaviorDescriptor;
      case 15:
        return myFunctionMethodDeclaration__BehaviorDescriptor;
      case 16:
        return myAbstractFunctionType__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
