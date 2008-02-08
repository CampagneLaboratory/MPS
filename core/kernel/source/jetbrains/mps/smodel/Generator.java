package jetbrains.mps.smodel;

import jetbrains.mps.ide.BootstrapLanguagesManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.Dependency;
import jetbrains.mps.projectLanguage.structure.GeneratorDescriptor;
import jetbrains.mps.projectLanguage.structure.GeneratorReference;
import jetbrains.mps.projectLanguage.structure.ModuleDescriptor;
import jetbrains.mps.transformation.TLBase.structure.MappingConfiguration;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Kostik
 */
public class Generator extends AbstractModule {
  public static final Logger LOG = Logger.getLogger(Generator.class);

  private Language mySourceLanguage;
  private GeneratorDescriptor myGeneratorDescriptor;

  Generator(Language sourceLanguage, GeneratorDescriptor generatorDescriptor) {
    mySourceLanguage = sourceLanguage;
    myGeneratorDescriptor = generatorDescriptor;
  }

  public void readModels() {
    if (!isInitialized()) {
      super.readModels();
      if (isInitialized()) {
        fireModuleInitialized();
      }
    }
  }

  public void dispose() {
    SModelRepository.getInstance().unRegisterModelDescriptors(Generator.this);
    MPSModuleRepository.getInstance().unRegisterModules(Generator.this);
  }

  @NotNull
  public List<SModelDescriptor> getOwnTemplateModels() {
    List<SModelDescriptor> templateModels = new ArrayList<SModelDescriptor>();
    for (SModelDescriptor modelDescriptor : getOwnModelDescriptors()) {
      if (SModelStereotype.TEMPLATES.equals(modelDescriptor.getStereotype())) {
        templateModels.add(modelDescriptor);
      }
    }
    return templateModels;
  }

  @NotNull
  public List<MappingConfiguration> getOwnMappings() {
    List<SModelDescriptor> list = getOwnTemplateModels();
    List<MappingConfiguration> mappings = new ArrayList<MappingConfiguration>();
    for (SModelDescriptor templateModel : list) {
      mappings.addAll(templateModel.getSModel().allAdapters(MappingConfiguration.class));
    }
    return mappings;
  }

  @NotNull
  public ModuleDescriptor getModuleDescriptor() {
    return myGeneratorDescriptor;
  }


  public void setModuleDescriptor(@NotNull ModuleDescriptor moduleDescriptor) {
    LOG.error(new UnsupportedOperationException());
  }

  public String getName() {
    return myGeneratorDescriptor.getName();
  }

  public String getAlias() {
    String name = myGeneratorDescriptor.getName();
    return getSourceLanguage().getNamespace() + "/" + (name == null ? "<no name>" : name);
  }

  @NotNull
  public String getModuleUID() {
    String uid = myGeneratorDescriptor.getGeneratorUID();
    if (uid == null) {
      myGeneratorDescriptor.setGeneratorUID(generateGeneratorUID(mySourceLanguage));
      mySourceLanguage.save();
    }
    return myGeneratorDescriptor.getGeneratorUID();
  }

  @NotNull
  public static String generateGeneratorUID(Language sourceLanguage) {
    return sourceLanguage.getModuleUID() + "#" + SNode.generateUniqueId();
  }

  @NotNull
  public Language getSourceLanguage() {
    return mySourceLanguage;
  }

  @Nullable
  public Language getTargetLanguage() {
    String targetLanguageName = getTargetLanguageName();
    if (targetLanguageName != null) {
      Language language = MPSModuleRepository.getInstance().getLanguage(targetLanguageName, this);

      if (language == null) {
        language = MPSModuleRepository.getInstance().getLanguage(targetLanguageName, BootstrapLanguagesManager.getInstance());
      }

      if (language != null) {
        return language;
      }
    }

    LOG.error("Can't find target language for generator " + this + " : " + targetLanguageName);

    return null;
  }

  public String getTargetLanguageName() {
    jetbrains.mps.projectLanguage.structure.Language targetLanguage = myGeneratorDescriptor.getTargetLanguage();
    if (targetLanguage != null) {
      return targetLanguage.getName();
    }
    return null;
  }

  @NotNull
  public String toString() {
    return getAlias();
  }

  @NotNull
  public GeneratorDescriptor getGeneratorDescriptor() {
    return myGeneratorDescriptor;
  }


  public void save() {
    mySourceLanguage.save();
  }

  public List<Dependency> getDependencies() {
    List<Dependency> result = super.getDependencies();
    result.add(new Dependency(mySourceLanguage.getNamespace(), false));

    for (String refGenerator : getReferencedGeneratorUIDs()) {
      result.add(new Dependency(refGenerator, false));
    }

    return result;
  }

  public List<String> getReferencedGeneratorUIDs() {
    List<String> result = new ArrayList<String>();
    for (GeneratorReference generatorReference : myGeneratorDescriptor.getGeneratorReferences()) {
      result.add(generatorReference.getGeneratorUID());
    }
    return result;

  }

  @NotNull
  public List<Generator> getReferencedGenerators() {
    List<Generator> result = new ArrayList<Generator>();
    for (String guid : getReferencedGeneratorUIDs()) {
      IModule module = MPSModuleRepository.getInstance().getModuleByUID(guid);
      if (module instanceof Generator) {
        result.add((Generator) module);
      }
    }
    return result;
  }

  public boolean isCompileInMPS() {
    return mySourceLanguage.isCompileInMPS();
  }

  public File getBundleHome() {
    //eclipse's OSGi implementation doesn't allow directories with #. Probably #s are
    //forbidden inside urls
    File home = new File(PathManager.getTmpPath() + "generators", getModuleUID().replace('#', '.'));
    if (!home.exists()) {
      home.mkdirs();
    }

    return home.getAbsoluteFile();
  }

  public void convert() {
  }

  @Nullable
  public String getGeneratorOutputPath() {
    return mySourceLanguage.getGeneratorOutputPath();
  }

  @Nullable
  public IFile getClassesGen() {
    return mySourceLanguage.getClassesGen();
  }
}
