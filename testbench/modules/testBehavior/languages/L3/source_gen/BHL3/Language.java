package BHL3;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "9dabd0d4-b67a-4eef-b645-d5534ca67594(BHL3)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "BHL3";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("9dabd0d4-b67a-4eef-b645-d5534ca67594"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return null;
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == BehaviorAspectDescriptor.class) {
      return (T) new BHL3.behavior.BehaviorAspectDescriptor();
    }
    if (aspectClass == EditorAspectDescriptor.class) {
      return ((T) new EditorAspectDescriptorBase());
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new BHL3.structure.StructureAspectDescriptor();
    }
    return super.createAspect(aspectClass);
  }
}
