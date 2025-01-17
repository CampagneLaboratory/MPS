package jetbrains.mps.lang.slanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.runtime.StaticScope;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptAspectModelRefExpression = new ConceptDescriptorBuilder("jetbrains.mps.lang.slanguage.structure.AspectModelRefExpression", MetaIdFactory.conceptId(0x69b8a9939b874d96L, 0xbf0c3559f4bb0c63L, 0x55a418200fd9206aL)).super_("jetbrains.mps.baseLanguage.structure.Expression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).parents("jetbrains.mps.baseLanguage.structure.Expression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(6171083915388597767L, "aspect", MetaIdFactory.conceptId(0xf159adf43c9340f9L, 0x9c5a1f245a8697afL, 0x2fa4a8cdf0c9b076L), false)).references("aspect").childDescriptors(new ConceptDescriptorBuilder.Link(6171083915388330091L, "lang", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, false, false)).children(new String[]{"lang"}, new boolean[]{false}).alias("aspectModel", "").create();
  /*package*/ final ConceptDescriptor myConceptModel_IsAspectOperation = new ConceptDescriptorBuilder("jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation", MetaIdFactory.conceptId(0x69b8a9939b874d96L, 0xbf0c3559f4bb0c63L, 0x1c2d7d27ffb53efbL)).super_("jetbrains.mps.lang.smodel.structure.SNodeOperation").super_(MetaIdFactory.conceptId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1090ea2ebacL)).parents("jetbrains.mps.lang.smodel.structure.SNodeOperation").parentIds(MetaIdFactory.conceptId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1090ea2ebacL)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(2030416617761226680L, "aspect", MetaIdFactory.conceptId(0xf159adf43c9340f9L, 0x9c5a1f245a8697afL, 0x2fa4a8cdf0c9b076L), false)).references("aspect").alias("isAspectModel", "").staticScope(StaticScope.NONE).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAspectModelRefExpression, myConceptModel_IsAspectOperation);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0g, conceptFqName)) {
      case 0:
        return myConceptAspectModelRefExpression;
      case 1:
        return myConceptModel_IsAspectOperation;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0g = new String[]{"jetbrains.mps.lang.slanguage.structure.AspectModelRefExpression", "jetbrains.mps.lang.slanguage.structure.Model_IsAspectOperation"};
}
