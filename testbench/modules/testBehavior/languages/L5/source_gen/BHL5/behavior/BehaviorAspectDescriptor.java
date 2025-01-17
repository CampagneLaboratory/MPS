package BHL5.behavior;

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
  private final BHDescriptor myC6__BehaviorDescriptor = new C6__BehaviorDescriptor();
  private final BHDescriptor myC7__BehaviorDescriptor = new C7__BehaviorDescriptor();
  private final BHDescriptor myI1__BehaviorDescriptor = new I1__BehaviorDescriptor();
  private final BHDescriptor myI2__BehaviorDescriptor = new I2__BehaviorDescriptor();
  private final BHDescriptor myC1__BehaviorDescriptor = new C1__BehaviorDescriptor();
  private final BHDescriptor myC3__BehaviorDescriptor = new C3__BehaviorDescriptor();
  private final BHDescriptor myC5__BehaviorDescriptor = new C5__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[7];
    myConceptBehaviorIds[0] = 0x23a893587ca1aaedL;
    myConceptBehaviorIds[1] = 0x23a893587ca1af93L;
    myConceptBehaviorIds[2] = 0x355d469f0ba114cbL;
    myConceptBehaviorIds[3] = 0x355d469f0ba23ba9L;
    myConceptBehaviorIds[4] = 0x355d469f0ba23bc7L;
    myConceptBehaviorIds[5] = 0x355d469f0ba2f82fL;
    myConceptBehaviorIds[6] = 0x3f852a67e9131504L;
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
        return myC6__BehaviorDescriptor;
      case 1:
        return myC7__BehaviorDescriptor;
      case 2:
        return myI1__BehaviorDescriptor;
      case 3:
        return myI2__BehaviorDescriptor;
      case 4:
        return myC1__BehaviorDescriptor;
      case 5:
        return myC3__BehaviorDescriptor;
      case 6:
        return myC5__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
