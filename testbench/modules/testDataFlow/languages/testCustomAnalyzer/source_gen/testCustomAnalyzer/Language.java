package testCustomAnalyzer;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.lang.dataFlow.framework.DataFlowAspectDescriptor;
import testCustomAnalyzer.dataFlow.DataFlowAspectDescriptorImpl;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import testCustomAnalyzer.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import testCustomAnalyzer.typesystem.TypesystemDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "b124c25e-1e16-4432-ad5e-0ac0ecae98f5(testCustomAnalyzer)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "testCustomAnalyzer";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("b124c25e-1e16-4432-ad5e-0ac0ecae98f5"));
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
    if (aspectClass == DataFlowAspectDescriptor.class) {
      return (T) new DataFlowAspectDescriptorImpl();
    }
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new testCustomAnalyzer.structure.StructureAspectDescriptor();
    }
    if (aspectClass == IHelginsDescriptor.class) {
      return (T) new TypesystemDescriptor();
    }
    return super.createAspect(aspectClass);
  }
}
