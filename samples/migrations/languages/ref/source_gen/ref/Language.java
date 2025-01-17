package ref;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import ref.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "d3d2b6e3-a4b3-43d5-bb29-420d39fa86ab(ref)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "ref";
  }

  @Override
  public int getVersion() {
    return 2;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("d3d2b6e3-a4b3-43d5-bb29-420d39fa86ab"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{"decl"};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return null;
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new ref.structure.StructureAspectDescriptor();
    }
    return super.createAspect(aspectClass);
  }
}
