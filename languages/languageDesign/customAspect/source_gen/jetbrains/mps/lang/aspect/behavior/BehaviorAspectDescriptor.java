package jetbrains.mps.lang.aspect.behavior;

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
  private final BHDescriptor myLanguageAspectDescriptor__BehaviorDescriptor = new LanguageAspectDescriptor__BehaviorDescriptor();
  private final BHDescriptor mySimpleLanguageAspectDescriptor__BehaviorDescriptor = new SimpleLanguageAspectDescriptor__BehaviorDescriptor();
  private final BHDescriptor myGenerationDescriptor_ByInterface__BehaviorDescriptor = new GenerationDescriptor_ByInterface__BehaviorDescriptor();
  private final BHDescriptor myIAspectConcept__BehaviorDescriptor = new IAspectConcept__BehaviorDescriptor();

  private final long[] myConceptBehaviorIds;

  public BehaviorAspectDescriptor() {
    myConceptBehaviorIds = new long[4];
    myConceptBehaviorIds[0] = 0x2d72cdccef70b086L;
    myConceptBehaviorIds[1] = 0x2fa4a8cdf0c9b076L;
    myConceptBehaviorIds[2] = 0x4ac0e6949ea3f2abL;
    myConceptBehaviorIds[3] = 0x7bcf8452e0dac0c9L;
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
        return myLanguageAspectDescriptor__BehaviorDescriptor;
      case 1:
        return mySimpleLanguageAspectDescriptor__BehaviorDescriptor;
      case 2:
        return myGenerationDescriptor_ByInterface__BehaviorDescriptor;
      case 3:
        return myIAspectConcept__BehaviorDescriptor;
      default:
        return null;
    }
  }
}
