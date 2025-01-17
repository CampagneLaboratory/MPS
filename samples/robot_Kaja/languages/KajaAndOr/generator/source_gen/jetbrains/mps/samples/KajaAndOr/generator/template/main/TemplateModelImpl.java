package jetbrains.mps.samples.KajaAndOr.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateModelBase;
import jetbrains.mps.generator.runtime.TemplateModel;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.generator.runtime.TemplateDeclaration;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

@Generated
public class TemplateModelImpl extends TemplateModelBase implements TemplateModel {
  private final Collection<TemplateMappingConfiguration> mappings;
  private final Collection<TemplateSwitchMapping> switches;
  private final SModelReference model;
  public TemplateModelImpl(TemplateModule module) {
    super(module);
    mappings = TemplateUtil.<TemplateMappingConfiguration>asCollection(new Mappingmain(this));
    switches = TemplateUtil.<TemplateSwitchMapping>asCollection();
    model = PersistenceFacade.getInstance().createModelReference("r:68ff4d81-c742-4f6c-8cc1-cdf3e94f2c2e(jetbrains.mps.samples.KajaAndOr.generator.template.main@generator)");
  }
  public String getLongName() {
    return "jetbrains.mps.samples.KajaAndOr.generator.template.main";
  }
  public SModelReference getSModelReference() {
    return model;
  }
  public Collection<TemplateMappingConfiguration> getConfigurations() {
    return mappings;
  }
  public Collection<TemplateSwitchMapping> getSwitches() {
    return switches;
  }
  public TemplateDeclaration loadTemplate(SNodeReference template, Object... arguments) {
    if (!(model.equals(template.getModelReference()))) {
      return null;
    }
    if (template.equals(new SNodePointer("r:68ff4d81-c742-4f6c-8cc1-cdf3e94f2c2e(jetbrains.mps.samples.KajaAndOr.generator.template.main@generator)", "1904811872814327603"))) {
      TemplateUtil.assertTemplateParametersCount(template, 0, arguments.length);
      return new Templatereduce__And();
    }
    if (template.equals(new SNodePointer("r:68ff4d81-c742-4f6c-8cc1-cdf3e94f2c2e(jetbrains.mps.samples.KajaAndOr.generator.template.main@generator)", "1904811872814327665"))) {
      TemplateUtil.assertTemplateParametersCount(template, 0, arguments.length);
      return new Templatereduce__Or();
    }
    return null;
  }
}
