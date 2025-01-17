package jetbrains.mps.samples.languagePatterns.Basic.behavior;

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
  private final BHDescriptor myAddress__BehaviorDescriptor = new Address__BehaviorDescriptor();
  private final BHDescriptor myComponent__BehaviorDescriptor = new Component__BehaviorDescriptor();
  private final BHDescriptor myItemReference__BehaviorDescriptor = new ItemReference__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[3];
    myConceptBehaviorIds[0] = 0x48a6ab8c26b3f40bL;
    myConceptBehaviorIds[1] = 0x4ed97160b0a7fa2aL;
    myConceptBehaviorIds[2] = 0x7e8fc6224ac7e053L;
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
        return myAddress__BehaviorDescriptor;
      case 1:
        return myComponent__BehaviorDescriptor;
      case 2:
        return myItemReference__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
