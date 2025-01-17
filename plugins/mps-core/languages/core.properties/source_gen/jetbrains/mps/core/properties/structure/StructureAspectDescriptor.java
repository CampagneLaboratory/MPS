package jetbrains.mps.core.properties.structure;

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

  /*package*/ final ConceptDescriptor myConceptPropertiesComment = new ConceptDescriptorBuilder("jetbrains.mps.core.properties.structure.PropertiesComment", MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ad9L)).super_("jetbrains.mps.core.properties.structure.PropertiesLine").super_(MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L)).parents("jetbrains.mps.core.properties.structure.PropertiesLine").parentIds(MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(3961775458390522586L, "text")).properties("text").alias("#", "").staticScope(StaticScope.NONE).create();
  /*package*/ final ConceptDescriptor myConceptPropertiesDeclaration = new ConceptDescriptorBuilder("jetbrains.mps.core.properties.structure.PropertiesDeclaration", MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac1L)).super_("jetbrains.mps.core.properties.structure.PropertiesLine").super_(MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L)).parents("jetbrains.mps.core.properties.structure.PropertiesLine", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(3961775458390522596L, "value")).properties("value").alias("property", "").create();
  /*package*/ final ConceptDescriptor myConceptPropertiesFile = new ConceptDescriptorBuilder("jetbrains.mps.core.properties.structure.PropertiesFile", MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a2754L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept", "jetbrains.mps.lang.traceable.structure.UnitConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L), MetaIdFactory.conceptId(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a4L)).childDescriptors(new ConceptDescriptorBuilder.Link(3961775458390522563L, "lines", MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L), true, true, false)).children(new String[]{"lines"}, new boolean[]{true}).alias("properties file", "").create();
  /*package*/ final ConceptDescriptor myConceptPropertiesLine = new ConceptDescriptorBuilder("jetbrains.mps.core.properties.structure.PropertiesLine", MetaIdFactory.conceptId(0x58f98fef90ad4b72L, 0xa390fad66ec7005aL, 0x36fb0dc9fd3a3ac2L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).alias("<empty line>", "").create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptPropertiesComment, myConceptPropertiesDeclaration, myConceptPropertiesFile, myConceptPropertiesLine);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0i, conceptFqName)) {
      case 0:
        return myConceptPropertiesComment;
      case 1:
        return myConceptPropertiesDeclaration;
      case 2:
        return myConceptPropertiesFile;
      case 3:
        return myConceptPropertiesLine;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0i = new String[]{"jetbrains.mps.core.properties.structure.PropertiesComment", "jetbrains.mps.core.properties.structure.PropertiesDeclaration", "jetbrains.mps.core.properties.structure.PropertiesFile", "jetbrains.mps.core.properties.structure.PropertiesLine"};
}
