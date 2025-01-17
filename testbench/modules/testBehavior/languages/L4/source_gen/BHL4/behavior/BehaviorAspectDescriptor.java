package BHL4.behavior;

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
  private final BHDescriptor myI__BehaviorDescriptor = new I__BehaviorDescriptor();
  private final BHDescriptor myC1__BehaviorDescriptor = new C1__BehaviorDescriptor();
  private final BHDescriptor myI1__BehaviorDescriptor = new I1__BehaviorDescriptor();
  private final BHDescriptor myI2__BehaviorDescriptor = new I2__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[4];
    myConceptBehaviorIds[0] = 0x6ab2e61d35e495a3L;
    myConceptBehaviorIds[1] = 0x6ab2e61d35e495a9L;
    myConceptBehaviorIds[2] = 0x6ab2e61d35e495aaL;
    myConceptBehaviorIds[3] = 0x6ab2e61d35e495adL;
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
        return myI__BehaviorDescriptor;
      case 1:
        return myC1__BehaviorDescriptor;
      case 2:
        return myI1__BehaviorDescriptor;
      case 3:
        return myI2__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
