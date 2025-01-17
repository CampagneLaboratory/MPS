package jetbrains.mps.lang.findUsages;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.TemplateModuleBase;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModel;
import java.util.Arrays;
import jetbrains.mps.generator.runtime.TemplateMappingPriorityRule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class Generator extends TemplateModuleBase {
  public static String MODULE_REF = "1759b4cc-455d-49b4-a360-8baf1f5f8bab(jetbrains.mps.lang.findUsages#1197044805809)";
  private final Language sourceLanguage;
  private Collection<TemplateModel> models;

  public Generator(Language sourceLanguage) {
    this.sourceLanguage = sourceLanguage;
  }
  @Override
  public String getAlias() {
    return "jetbrains.mps.lang.findUsages/<no name>";
  }

  @Override
  public Collection<TemplateModel> getModels() {
    if (models == null) {
      models = Arrays.asList(loadModel("jetbrains.mps.lang.findUsages.generator.baseLanguage.template.main.TemplateModelImpl"));
    }
    return models;
  }

  @Override
  public Collection<TemplateMappingPriorityRule> getPriorities() {
    return null;
  }

  @Override
  public SModuleReference getReference() {
    return PersistenceFacade.getInstance().createModuleReference(MODULE_REF);
  }

  @Override
  public Collection<SLanguage> getTargetLanguages() {
    SLanguage[] rv = new SLanguage[3];
    rv[0] = MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L), "jetbrains.mps.baseLanguage");
    rv[1] = MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL), "jetbrains.mps.baseLanguage.collections");
    rv[2] = MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L), "jetbrains.mps.lang.smodel");
    return Arrays.asList(rv);
  }

  @Override
  public LanguageRuntime getSourceLanguage() {
    return sourceLanguage;
  }

  @Override
  public Collection<String> getReferencedModules() {
    return null;
  }
}
