package jetbrains.mps.samples.Kaja;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.TemplateModuleBase;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateUtil;
import java.util.Arrays;
import jetbrains.mps.generator.runtime.TemplateMappingPriorityRule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.language.LanguageRuntime;

public class Generator extends TemplateModuleBase {
  public static String MODULE_REF = "e104ec4c-a001-4f8f-b6bf-654f6a062891(jetbrains.mps.samples.Kaja#3265739055509559144)";
  private final Language sourceLanguage;
  private final Collection<String> referencedGenerators;
  private Collection<TemplateModel> models;

  public Generator(Language sourceLanguage) {
    this.sourceLanguage = sourceLanguage;
    referencedGenerators = TemplateUtil.<String>asCollection("jetbrains.mps.baseLanguage/jetbrains.mps.baseLanguage#1129914002933");
  }
  @Override
  public String getAlias() {
    return "jetbrains.mps.samples.Kaja/<no name>";
  }

  @Override
  public Collection<TemplateModel> getModels() {
    if (models == null) {
      models = Arrays.asList(loadModel("jetbrains.mps.samples.Kaja.generator.template.main.TemplateModelImpl"));
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
    SLanguage[] rv = new SLanguage[1];
    rv[0] = MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L), "jetbrains.mps.baseLanguage");
    return Arrays.asList(rv);
  }

  @Override
  public LanguageRuntime getSourceLanguage() {
    return sourceLanguage;
  }

  @Override
  public Collection<String> getReferencedModules() {
    return referencedGenerators;
  }
}
