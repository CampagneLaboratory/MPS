package jetbrains.mps.samples.lambdaCalculus.behavior;

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
  private final BHDescriptor myLambdaExpression__BehaviorDescriptor = new LambdaExpression__BehaviorDescriptor();
  private final BHDescriptor myLambdaAbstraction__BehaviorDescriptor = new LambdaAbstraction__BehaviorDescriptor();
  private final BHDescriptor myLambdaApplication__BehaviorDescriptor = new LambdaApplication__BehaviorDescriptor();
  private final BHDescriptor myAbstractionVarRef__BehaviorDescriptor = new AbstractionVarRef__BehaviorDescriptor();
  private final BHDescriptor myFunctionType__BehaviorDescriptor = new FunctionType__BehaviorDescriptor();
  private final BHDescriptor myLetExpression__BehaviorDescriptor = new LetExpression__BehaviorDescriptor();
  private final BHDescriptor myLetRef__BehaviorDescriptor = new LetRef__BehaviorDescriptor();
  private final BHDescriptor myVariableOwner__BehaviorDescriptor = new VariableOwner__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[8];
    myConceptBehaviorIds[0] = 0x37d11ba7d7ec98e9L;
    myConceptBehaviorIds[1] = 0x37d11ba7d7eccf80L;
    myConceptBehaviorIds[2] = 0x37d11ba7d7ee2dddL;
    myConceptBehaviorIds[3] = 0x37d11ba7d7fe548fL;
    myConceptBehaviorIds[4] = 0x3ee0e3dd7c1afae8L;
    myConceptBehaviorIds[5] = 0x448ba254edbfc79fL;
    myConceptBehaviorIds[6] = 0x448ba254edc7216cL;
    myConceptBehaviorIds[7] = 0x48db75d5dc496a4fL;
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
        return myLambdaExpression__BehaviorDescriptor;
      case 1:
        return myLambdaAbstraction__BehaviorDescriptor;
      case 2:
        return myLambdaApplication__BehaviorDescriptor;
      case 3:
        return myAbstractionVarRef__BehaviorDescriptor;
      case 4:
        return myFunctionType__BehaviorDescriptor;
      case 5:
        return myLetExpression__BehaviorDescriptor;
      case 6:
        return myLetRef__BehaviorDescriptor;
      case 7:
        return myVariableOwner__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
