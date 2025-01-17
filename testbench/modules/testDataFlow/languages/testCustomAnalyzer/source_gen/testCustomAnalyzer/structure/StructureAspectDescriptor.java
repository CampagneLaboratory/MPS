package testCustomAnalyzer.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptChild = new ConceptDescriptorBuilder("testCustomAnalyzer.structure.Child", MetaIdFactory.conceptId(0xb124c25e1e164432L, 0xad5e0ac0ecae98f5L, 0x73a316f7f5468ed5L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).create();
  /*package*/ final ConceptDescriptor myConceptRoot = new ConceptDescriptorBuilder("testCustomAnalyzer.structure.Root", MetaIdFactory.conceptId(0xb124c25e1e164432L, 0xad5e0ac0ecae98f5L, 0x73a316f7f5468ed4L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(8332528989793470269L, "maxChildCount"), new ConceptDescriptorBuilder.Prop(8332528989793470274L, "initialCounter")).properties("maxChildCount", "initialCounter").childDescriptors(new ConceptDescriptorBuilder.Link(8332528989793324758L, "child", MetaIdFactory.conceptId(0xb124c25e1e164432L, 0xad5e0ac0ecae98f5L, 0x73a316f7f5468ed5L), true, true, false)).children(new String[]{"child"}, new boolean[]{true}).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptChild, myConceptRoot);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0g, conceptFqName)) {
      case 0:
        return myConceptChild;
      case 1:
        return myConceptRoot;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0g = new String[]{"testCustomAnalyzer.structure.Child", "testCustomAnalyzer.structure.Root"};
}
