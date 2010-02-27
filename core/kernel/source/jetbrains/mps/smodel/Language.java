/*
 * Copyright 2003-2010 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.smodel;

import com.intellij.openapi.progress.EmptyProgressIndicator;
import jetbrains.mps.lang.core.structure.Core_Language;
import jetbrains.mps.lang.plugin.generator.baseLanguage.template.util.PluginNameUtils;
import jetbrains.mps.lang.refactoring.structure.OldRefactoring;
import jetbrains.mps.lang.refactoring.structure.Refactoring;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.library.LibraryManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.persistence.LanguageDescriptorPersistence;
import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.project.structure.modules.*;
import jetbrains.mps.refactoring.framework.AbstractLoggableRefactoring;
import jetbrains.mps.refactoring.framework.IRefactoring;
import jetbrains.mps.refactoring.framework.OldRefactoringAdapter;
import jetbrains.mps.reloading.AbstractClassPathItem;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.CompositeClassPathItem;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.MPSExtentions;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.*;


public class Language extends AbstractModule {
  private static final Logger LOG = Logger.getLogger(Language.class);

  private static final String LANGUAGE_ACCESSORIES = "languageAccessories";
  private static final String LANGUAGE_MODELS = "languageModels";

  private LanguageDescriptor myLanguageDescriptor;
  private List<Generator> myGenerators = new ArrayList<Generator>();

  private HashMap<String, AbstractConceptDeclaration> myNameToConceptCache = new HashMap<String, AbstractConceptDeclaration>();
  private IClassPathItem myLanguageRuntimeClasspathCache;

  private CachesInvalidator myCachesInvalidator;

  private Set<SNodePointer> myNotFoundRefactorings = new HashSet<SNodePointer>(2);
  private
  @Nullable
  Set<IRefactoring> myCachedRefactorings = null;

  private List<Language> myAllExtendedLanguages = new ArrayList<Language>();

  public static Language createLanguage(String namespace, IFile descriptorFile, MPSModuleOwner moduleOwner) {
    Language language = new Language();
    LanguageDescriptor languageDescriptor;
    if (descriptorFile.exists()) {
      languageDescriptor = LanguageDescriptorPersistence.loadLanguageDescriptor(descriptorFile);
      if (languageDescriptor.getUUID() == null) {
        languageDescriptor.setUUID(UUID.randomUUID().toString());
        LanguageDescriptorPersistence.saveLanguageDescriptor(descriptorFile, languageDescriptor);
      }
    } else {
      languageDescriptor = createNewDescriptor(namespace, descriptorFile);
    }
    language.myDescriptorFile = descriptorFile;

    MPSModuleRepository repository = MPSModuleRepository.getInstance();
    if (repository.existsModule(languageDescriptor.getModuleReference())) {
      LOG.error("Loading module " + languageDescriptor.getNamespace() + " for the second time");
      return repository.getLanguage(languageDescriptor.getModuleReference());
    }

    language.setLanguageDescriptor(languageDescriptor, false);
    repository.addModule(language, moduleOwner);

    return language;
  }

  private Language() {

  }

  protected void reloadAfterDescriptorChange() {
    MPSModuleRepository.getInstance().unRegisterModules(this);

    for (Generator generator : getGenerators()) {
      generator.dispose();
    }

    rereadModels();
    updatePackagedDescriptorClasspath();
    updateLanguageRuntimeClassPathItem();
    updateClassPath();
    updateStubs();
    revalidateGenerators();
  }

  @Override
  protected void addExplicitlyDependendOnModules(Set<IModule> result) {
    super.addExplicitlyDependendOnModules(result);
    result.addAll(getExtendedLanguages());
    result.addAll(getRuntimeDependOnModules());
  }

  public List<ModuleReference> getUsedLanguagesReferences() {
    List<ModuleReference> result = super.getUsedLanguagesReferences();
    for (Language l : LibraryManager.getInstance().getBootstrapModules(Language.class)) {
      if (!result.contains(l.getModuleReference())) {
        result.add(l.getModuleReference());
      }
    }
    return result;
  }

  IFile newDescriptorFileByNewName(String newNamespace) {
    IFile dir = myDescriptorFile.getParent();
    String oldShortFileName = NameUtil.shortNameFromLongName(myDescriptorFile.getAbsolutePath());
    String newPathSuffix = NameUtil.shortNameFromLongName(newNamespace);
    if ((dir.getAbsolutePath() + MPSExtentions.DOT_LANGUAGE).endsWith(oldShortFileName)) {
      dir = dir.getParent();
      newPathSuffix = newPathSuffix + File.separatorChar + newPathSuffix;
    }
    return dir.child(newPathSuffix + MPSExtentions.DOT_LANGUAGE);
  }

  public List<ModuleReference> getExtendedLanguageNamespaces() {
    List<ModuleReference> result = new ArrayList<ModuleReference>();
    for (ModuleReference ref : myLanguageDescriptor.getExtendedLanguages()) {
      result.add(ref);
    }
    return result;
  }

  public List<Language> getExtendedLanguages() {
    List<Language> result = new ArrayList<Language>();
    for (jetbrains.mps.project.structure.modules.ModuleReference ref : getExtendedLanguageNamespaces()) {
      Language language = GlobalScope.getInstance().getLanguage(ref);
      if (language != null) {
        result.add(language);
      } else {
        LOG.error("Can't find language " + ref.getModuleFqName() + " which is referenced in " + this);
      }
    }

    if (!result.contains(Core_Language.get())) {
      result.add(Core_Language.get());
    }

    return result;
  }

  public List<Language> getAllExtendedLanguages() {
    if (myAllExtendedLanguages == null) {
      Set<Language> set = new LinkedHashSet<Language>();
      collectExtendedLanguages(set);
      myAllExtendedLanguages = new ArrayList<Language>(set);
    }
    return Collections.unmodifiableList(myAllExtendedLanguages);
  }

  public List<Dependency> getRuntimeDependOn() {
    List<Dependency> result = new ArrayList<Dependency>();
    LanguageDescriptor descriptor = getLanguageDescriptor();
    if (descriptor != null) {
      for (Dependency dep : descriptor.getRuntimeModules()) {
        result.add(dep);
      }
    }
    return result;
  }

  public List<IModule> getDesignTimeDependOnModules() {
    Set<IModule> result = new LinkedHashSet<IModule>(super.getDesignTimeDependOnModules());
    result.addAll(getExtendedLanguages());
    return new ArrayList<IModule>(result);
  }

  public List<IModule> getRuntimeDependOnModules() {
    List<IModule> result = new ArrayList<IModule>();
    for (Dependency d : getRuntimeDependOn()) {
      IModule module = MPSModuleRepository.getInstance().getModule(d.getModuleRef());
      if (module != null) {
        result.add(module);
      }
    }
    return result;
  }

  public List<String> validate() {
    List<String> errors = new ArrayList<String>(super.validate());
    for (ModuleReference lang : getExtendedLanguageNamespaces()) {
      if (MPSModuleRepository.getInstance().getModule(lang) == null) {
        errors.add("Can't find extended language " + lang.getModuleFqName());
      }
    }
    for (SModelReference accessory : getLanguageDescriptor().getAccessoryModels()) {
      if (getScope().getModelDescriptor(accessory) == null) {
        errors.add("Can't find accessory model" + accessory.getLongName());
      }
    }
    return errors;
  }

  protected ModuleDescriptor loadDescriptor() {
    return LanguageDescriptorPersistence.loadLanguageDescriptor(getDescriptorFile());
  }

  private void collectExtendedLanguages(Set<Language> result) {
    if (result.contains(this)) {
      return;
    }

    result.add(this);
    for (Language l : getExtendedLanguages()) {
      l.collectExtendedLanguages(result);
    }
  }

  public void validateExtends() {
    boolean changed = false;
    List<ModuleReference> remove = new ArrayList<ModuleReference>();
    for (ModuleReference ref : myLanguageDescriptor.getExtendedLanguages()) {
      if (getNamespace().equals(ref.getModuleFqName())) {
        remove.add(ref);
        changed = true;
      }
    }
    myLanguageDescriptor.getExtendedLanguages().removeAll(remove);

    if (changed && !getDescriptorFile().isReadOnly()) {
      save();
    }
  }

  public void onModuleLoad() {
    super.onModuleLoad();

    validateExtends();

    for (Generator g : getGenerators()) {
      g.onModuleLoad();
    }
  }

  protected void readModels() {
    if (!isInitialized()) {
      super.readModels();

      if (isInitialized()) {
        fireModuleInitialized();
      }
    }
  }

  public List<Dependency> getDependOn() {
    List<Dependency> result = super.getDependOn();
    for (ModuleReference ref : getExtendedLanguageNamespaces()) {
      Dependency dep = new Dependency();
      dep.setModuleRef(ref);
      dep.setReexport(true);
      result.add(dep);
    }

    for (Generator g : getGenerators()) {
      result.addAll(g.getDependOn());
    }

    return result;
  }

  private void revalidateGenerators() {
    myGenerators.clear();
    for (GeneratorDescriptor generatorDescriptor1 : getLanguageDescriptor().getGenerators()) {
      GeneratorDescriptor generatorDescriptor = generatorDescriptor1;
      Generator generator = new Generator(this, generatorDescriptor);
      MPSModuleRepository.getInstance().addModule(generator, this);
      myGenerators.add(generator);
    }
  }

  public void dispose() {
    super.dispose();

    //Call this method before you remove it and its models from repositories
    //To unregister it correctly from different services we need it and its models    
    SModelRepository.getInstance().unRegisterModelDescriptors(this);
    MPSModuleRepository.getInstance().unRegisterModules(this);
    if (myGenerators != null) {
      for (Generator generator : myGenerators) {
        generator.dispose();
      }
      myGenerators.clear();
    }
    myNotFoundRefactorings.clear();
    myCachedRefactorings = null;
  }

  public void setLanguageDescriptor(final LanguageDescriptor newDescriptor) {
    setLanguageDescriptor(newDescriptor, true);
  }

  public void setLanguageDescriptor(final LanguageDescriptor newDescriptor, boolean reloadClasses) {
    myLanguageDescriptor = newDescriptor;

    ModuleReference reference = new ModuleReference(myLanguageDescriptor.getNamespace(), myLanguageDescriptor.getUUID());
    setModulePointer(reference);

    reloadAfterDescriptorChange();

    MPSModuleRepository.getInstance().fireModuleChanged(this);

    if (reloadClasses) {
      ClassLoaderManager.getInstance().reloadAll(new EmptyProgressIndicator());
    }

    MPSModuleRepository.getInstance().invalidateCaches();

    if (getStructureModelDescriptor() != null && myCachesInvalidator == null) {
      getStructureModelDescriptor().addModelListener(myCachesInvalidator = new CachesInvalidator());
    }
  }

  public boolean isBootstrap() {
    return LibraryManager.getInstance().getBootstrapModules(Language.class).contains(this);
  }

  public int getVersion() {
    return getStructureModelDescriptor().getVersion();
  }

  public ModuleDescriptor getModuleDescriptor() {
    return myLanguageDescriptor;
  }


  public void setModuleDescriptor(ModuleDescriptor moduleDescriptor, boolean reloadClasses) {
    if (moduleDescriptor instanceof LanguageDescriptor) {
      setLanguageDescriptor((LanguageDescriptor) moduleDescriptor, reloadClasses);
    } else {
      LOG.error("not a language descriptor", new Throwable());
    }
  }

  public LanguageDescriptor getLanguageDescriptor() {
    return myLanguageDescriptor;
  }

  public String getGeneratedPluginClassLongName() {
    return getPluginModelDescriptor().getLongName() + "." + PluginNameUtils.getPluginName(this);
  }

  public String getGeneratedApplicationPluginClassLongName() {
    return getPluginModelDescriptor().getLongName() + "." + PluginNameUtils.getApplicationPluginName(this);
  }

  public List<Generator> getGenerators() {
    return new ArrayList<Generator>(myGenerators);
  }

  public String getNamespace() {
    return getModuleFqName();
  }

  public String getShortName() {
    return NameUtil.shortNameFromLongName(getNamespace());
  }

  public void rename(String newNamespace) {
    LanguageDescriptor languageDescriptor = getLanguageDescriptor();
    languageDescriptor.setNamespace(newNamespace);
    setLanguageDescriptor(languageDescriptor, false);
  }

  public File getSourceDir() {
    File sourceDir = new File(myDescriptorFile.getParent().toFile(), "source_gen");
    if (getLanguageDescriptor().getGenPath() != null) {
      sourceDir = new File(getLanguageDescriptor().getGenPath());
    }
    if (!sourceDir.exists()) {
      sourceDir.mkdirs();
    }
    return sourceDir;
  }

  public String getGeneratorOutputPath() {
    String generatorOutputPath = myLanguageDescriptor.getGenPath();
    if (generatorOutputPath == null) {
      generatorOutputPath = myDescriptorFile.getParent().getCanonicalPath() + File.separatorChar + "source_gen";
    }
    return generatorOutputPath;
  }

  public String getTestsGeneratorOutputPath() {
    return null;
  }

  public List<ConceptDeclaration> getConceptDeclarations() {
    return getStructureModelDescriptor().getSModel().allAdapters(ConceptDeclaration.class);
  }

  public SModelDescriptor getStructureModelDescriptor() {
    return LanguageAspect.STRUCTURE.get(this);
  }

  public List<SModelDescriptor> getUtilModels() {
    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    for (SModelDescriptor md : getOwnModelDescriptors()) {
      if (md.getStereotype().equals(SModelStereotype.NONE)
        && getAspectForModel(md) == null
        && !isAccessoryModel(md.getSModelReference())) {
        result.add(md);
      }
    }
    return result;
  }

  public Set<SModelDescriptor> getImplicitlyImportedModelsFor(SModelDescriptor sm) {
    Set<SModelDescriptor> result = new LinkedHashSet<SModelDescriptor>(super.getImplicitlyImportedModelsFor(sm));

    LanguageAspect aspect = Language.getModelAspect(sm);

    if (aspect != LanguageAspect.STRUCTURE && getStructureModelDescriptor() != null) {
      result.add(getStructureModelDescriptor());
    }

    if (aspect != LanguageAspect.CONSTRAINTS && getConstraintsModelDescriptor() != null) {
      result.add(getConstraintsModelDescriptor());
    }

    if (aspect != LanguageAspect.BEHAVIOR && getBehaviorModelDescriptor() != null) {
      result.add(getBehaviorModelDescriptor());
    }

    for (Language extended : getExtendedLanguages()) {
      SModelDescriptor structure = LanguageAspect.STRUCTURE.get(extended);
      if (structure != null) {
        result.add(structure);
      }
      if (LanguageAspect.CONSTRAINTS.get(extended) != null) {
        result.add(LanguageAspect.CONSTRAINTS.get(extended));
      }

      if (aspect != null && aspect.get(extended) != null) {
        result.add(aspect.get(extended));
      }
    }

    return result;
  }

  public Set<Language> getImplicitlyImportedLanguages(SModelDescriptor sm) {
    Set<Language> result = new LinkedHashSet<Language>(super.getImplicitlyImportedLanguages(sm));

    LanguageAspect aspect = Language.getModelAspect(sm);
    if (aspect != null) {
      for (ModuleReference namespace : aspect.getAllLanguagesToImport(this)) {
        Language language = GlobalScope.getInstance().getLanguage(namespace);
        if (language != null) {
          result.add(language);
        }
      }
    }
    return result;
  }

  public SModelDescriptor getTypesystemModelDescriptor() {
    return LanguageAspect.TYPESYSTEM.get(this);
  }

  public SModelDescriptor getActionsModelDescriptor() {
    return LanguageAspect.ACTIONS.get(this);
  }

  public SModelDescriptor getConstraintsModelDescriptor() {
    return LanguageAspect.CONSTRAINTS.get(this);
  }

  public SModelDescriptor getBehaviorModelDescriptor() {
    return LanguageAspect.BEHAVIOR.get(this);
  }

  public SModelDescriptor getDataFlowModelDescriptor() {
    return LanguageAspect.DATA_FLOW.get(this);
  }

  public SModelDescriptor getIntentionsModelDescriptor() {
    return LanguageAspect.INTENTIONS.get(this);
  }

  public SModelDescriptor getFindUsagesModelDescriptor() {
    return LanguageAspect.FIND_USAGES.get(this);
  }

  public SModelDescriptor getPluginModelDescriptor() {
    return LanguageAspect.PLUGIN.get(this);
  }

  public SModelDescriptor getRefactoringsModelDescriptor() {
    return LanguageAspect.REFACTORINGS.get(this);
  }

  public SModelDescriptor getScriptsModelDescriptor() {
    return LanguageAspect.SCRIPTS.get(this);
  }

  public SModelDescriptor getEditorModelDescriptor() {
    return LanguageAspect.EDITOR.get(this);
  }

  public SModelDescriptor getTextgenModelDescriptor() {
    return LanguageAspect.TEXT_GEN.get(this);
  }

  public Set<SModelDescriptor> getEditorDescriptors() {
    Set<SModelDescriptor> result = new HashSet<SModelDescriptor>();
    result.add(getEditorModelDescriptor());
    return result;
  }

  public Set<SModelDescriptor> getAspectModelDescriptors() {
    Set<SModelDescriptor> result = new HashSet<SModelDescriptor>();
    for (LanguageAspect aspect : LanguageAspect.values()) {
      if (aspect.get(this) != null) {
        result.add(aspect.get(this));
      }
    }
    return result;
  }

  public void invalidateCaches() {
    super.invalidateCaches();
    myNameToConceptCache.clear();
    myNotFoundRefactorings.clear();
    myCachedRefactorings = null;
    myAllExtendedLanguages = null;
  }

  public AbstractConceptDeclaration findConceptDeclaration(@NotNull String conceptName) {
    if (myNameToConceptCache.isEmpty()) {
      SModelDescriptor structureModelDescriptor = getStructureModelDescriptor();

      if (structureModelDescriptor == null) return null;

      SModel structureModel = structureModelDescriptor.getSModel();
      structureModel.allNodes(new Condition<SNode>() {
        public boolean met(SNode node) {
          //do not use IsInstanceOf Condition here and isInstanceOf(String). They will lead to stack overflow
          if (node.getAdapter() instanceof AbstractConceptDeclaration) {
            myNameToConceptCache.put(node.getName(), (AbstractConceptDeclaration) node.getAdapter());
          }
          return false;
        }
      });
    }
    return myNameToConceptCache.get(conceptName);
  }

  public void save() {
    if (isPackaged()) {
      LOG.warning("Trying to save packaged language " + getModuleFqName());
      return;
    }
    LanguageDescriptorPersistence.saveLanguageDescriptor(myDescriptorFile, getLanguageDescriptor());
  }

  public List<SModelDescriptor> getAccessoryModels() {
    List<SModelDescriptor> result = new LinkedList<SModelDescriptor>();
    for (SModelReference model : getLanguageDescriptor().getAccessoryModels()) {
      SModelDescriptor modelDescriptor = getScope().getModelDescriptor(model);
      if (modelDescriptor != null) {
        result.add(modelDescriptor);
      }
    }
    return result;
  }

  public boolean isAccessoryModel(SModelReference modelReference) {
    Iterator<SModelReference> accessoryModels = getLanguageDescriptor().getAccessoryModels().iterator();
    while (accessoryModels.hasNext()) {
      SModelReference model = accessoryModels.next();
      if (EqualUtil.equals(model, modelReference)) {
        return true;
      }
    }
    return false;
  }

  public void removeAccessoryModel(SModelDescriptor sm) {
    Iterator<SModelReference> i = myLanguageDescriptor.getAccessoryModels().iterator();
    while (i.hasNext()) {
      SModelReference model = i.next();
      if (model.equals(sm.getSModelReference())) {
        i.remove();
      }
    }
    setLanguageDescriptor(myLanguageDescriptor);
    save();
  }

  public String toString() {
    return getLanguageDescriptor().getNamespace();
  }

  @Hack("Created to simplify New Language Dialog")
  public ModelRoot getDefaultModelRoot() {
    return getLanguageDescriptor().getModelRoots().iterator().next();
  }

  public Set<IRefactoring> getRefactorings() {
    Set<IRefactoring> result = new HashSet<IRefactoring>();
    if (myCachedRefactorings != null) {
      result.addAll(myCachedRefactorings);
      return result;
    }


    //todo {begin} for compatibility with old refactorings
    {
      SModelDescriptor scriptsModelDescriptor = getScriptsModelDescriptor();
      if (scriptsModelDescriptor != null) {
        SModel scriptsModel = scriptsModelDescriptor.getSModel();
        String packageName = scriptsModel.getLongName();
        for (OldRefactoring refactoring : scriptsModel.getRootsAdapters(OldRefactoring.class)) {
          try {
            String fqName = packageName + "." + refactoring.getName();
            Class<AbstractLoggableRefactoring> cls = getClass(fqName);
            SNodePointer pointer = new SNodePointer(refactoring.getNode());
            if (cls == null) {
              if (!myNotFoundRefactorings.contains(pointer)) {
                LOG.error("Can't find " + fqName);
                myNotFoundRefactorings.add(pointer);
              }
              continue;
            }
            Constructor<AbstractLoggableRefactoring> constructor = cls.getConstructor();
            constructor.setAccessible(false);
            AbstractLoggableRefactoring oldRefactoring = constructor.newInstance();
            result.add(OldRefactoringAdapter.createAdapterFor(oldRefactoring));
          } catch (Throwable t) {
            LOG.error(t);
          }
        }
      }
    }
    //todo {--end} for compatibility with old refactorings

    SModelDescriptor refModelDescriptor = getRefactoringsModelDescriptor();
    if (refModelDescriptor != null) {
      SModel refactoringsModel = refModelDescriptor.getSModel();
      String packageName = refactoringsModel.getLongName();
      for (Refactoring refactoring : refactoringsModel.getRootsAdapters(Refactoring.class)) {
        try {
          String fqName = packageName + "." + refactoring.getName();
          Class<IRefactoring> cls = getClass(fqName);
          SNodePointer pointer = new SNodePointer(refactoring.getNode());
          if (cls == null) {
            if (!myNotFoundRefactorings.contains(pointer)) {
              LOG.error("Can't find " + fqName);
              myNotFoundRefactorings.add(pointer);
            }
            continue;
          }
          Constructor<IRefactoring> constructor = cls.getConstructor();
          constructor.setAccessible(false);
          result.add(constructor.newInstance());
        } catch (Throwable t) {
          LOG.error(t);
        }
      }
    }

    myCachedRefactorings = new HashSet<IRefactoring>(result);
    return result;
  }

  public static Language getLanguageForLanguageAspect(SModelDescriptor modelDescriptor) {
    return getLanguageFor(modelDescriptor);
  }

  public LanguageAspect getAspectForModel(@NotNull SModelDescriptor sm) {
    for (LanguageAspect la : LanguageAspect.values()) {
      if (la.get(this) == sm) {
        return la;
      }
    }
    return null;
  }

  public static LanguageAspect getModelAspect(SModelDescriptor sm) {
    Set<ModelOwner> owners = SModelRepository.getInstance().getOwners(sm);
    for (ModelOwner modelOwner : owners) {
      if (modelOwner instanceof Language) {
        Language l = (Language) modelOwner;
        if (l.getAspectForModel(sm) != null) {
          return l.getAspectForModel(sm);
        }
      }
    }
    return null;
  }

  public static boolean isLanguageOwnedAccessoryModel(SModelDescriptor sm) {
    Set<ModelOwner> owners = SModelRepository.getInstance().getOwners(sm);
    for (ModelOwner modelOwner : owners) {
      if (modelOwner instanceof Language) {
        Language l = (Language) modelOwner;
        if (l.isAccessoryModel(sm.getSModelReference())) {
          return true;
        }
      }
    }
    return false;
  }

  public static boolean isLanguageModel(SModelDescriptor sm) {
    return getLanguageFor(sm) != null;
  }

  public static boolean isLanguageModel(SModel sm) {
    return isLanguageModel(sm.getModelDescriptor());
  }

  public static Language getLanguageFor(SModelDescriptor sm) {
    Set<ModelOwner> owners = SModelRepository.getInstance().getOwners(sm);
    for (ModelOwner modelOwner : owners) {
      if (modelOwner instanceof Language) {
        return (Language) modelOwner;
      }
    }
    return null;
  }

  //todo move to LanguageDescriptor
  public ModelRoot createAccessoriesRoot() {
    ModelRoot modelRoot = new ModelRoot();
    File languageAccessories = new File(getDescriptorFile().getParent().toFile(), LANGUAGE_ACCESSORIES);
    modelRoot.setPath(languageAccessories.getAbsolutePath());
    modelRoot.setPrefix(getNamespace());
    return modelRoot;
  }

  //-----------stubs--------------

  protected boolean areJavaStubsEnabled() {
    return getLanguageDescriptor().getEnableJavaStubs();
  }

  public List<StubPath> getRuntimeStubPaths() {
    List<StubPath> result = new ArrayList<StubPath>();

    for (StubModelsEntry me : getRuntimeModelsEntries()) {
      result.add(new StubPath(me.getPath(), me.getManager()));
    }

    return result;
  }

  public IClassPathItem getLanguageRuntimeClasspath() {
    return myLanguageRuntimeClasspathCache;
  }

  private void updateLanguageRuntimeClassPathItem() {
    CompositeClassPathItem result = new CompositeClassPathItem();
    for (StubModelsEntry entry : getRuntimeModelsEntries()) {
      String s = entry.getPath();
      try {
        IFile file = FileSystem.getFile(s);
        if (!file.exists()) {
          LOG.error("Can't find " + s);
          continue;
        }

        result.add(AbstractClassPathItem.createFromPath(s, this));
      } catch (IOException e) {
        LOG.error(e.getMessage());
      }
    }

    myLanguageRuntimeClasspathCache = result;
  }

  //todo check this code. Wy not to do it where we add jars?
  //todo[CP] rewrite when classpaths are removed
  @Override
  protected void updatePackagedDescriptorClasspath() {
    super.updatePackagedDescriptorClasspath();

    if (!isPackaged()) return;

    LanguageDescriptor descriptor = getLanguageDescriptor();

    File bundleParent = getBundleHome().getParentFile();
    String jarName = getModuleFqName() + "." + RUNTIME_JAR_SUFFIX;
    File jarFile = new File(bundleParent, jarName);
    boolean addJar = false;

    if (descriptor != null) {
      Set<String> visited = new HashSet<String>();
      List<ClassPathEntry> remove = new ArrayList<ClassPathEntry>();
      for (ClassPathEntry e : myLanguageDescriptor.getRuntimeClassPaths()) {
        IFile file = FileSystem.getFile(e.getPath());
        if (!file.exists() || file.isDirectory() || (visited.contains(e.getPath()))) {
          remove.add(e);
        }
        visited.add(e.getPath());
      }
      myLanguageDescriptor.getRuntimeClassPaths().removeAll(remove);


      if (jarFile.exists() && !visited.contains(jarFile.getPath())) {
        addJar = true;
      }
    }

    if (descriptor != null) {
      Set<StubModelsEntry> visited = new HashSet<StubModelsEntry>();
      List<StubModelsEntry> remove = new ArrayList<StubModelsEntry>();
      for (StubModelsEntry entry : descriptor.getRuntimeStubModels()) {
        IFile cp = FileSystem.getFile(entry.getPath());
        if ((!cp.exists()) || cp.isDirectory()) {
          remove.add(entry);
        }

        for (StubModelsEntry ve : visited) {
          boolean eqManager = EqualUtil.equals(ve.getManager(), entry.getManager());
          boolean eqPath = EqualUtil.equals(cp.getAbsolutePath(), ve.getPath());
          if (eqManager && eqPath) {
            remove.add(entry);
            break;
          }
        }
        visited.add(entry);
      }
      descriptor.getRuntimeStubModels().removeAll(remove);

      boolean containsJar = false;
      for (StubModelsEntry ve : visited) {
        boolean eqPath = EqualUtil.equals(jarFile.getPath(), ve.getPath());
        if (eqPath) {
          containsJar = true;
          break;
        }
      }
      if (jarFile.exists() && !containsJar) {
        addJar = true;
      }
    }

    if (addJar) {
      ClassPathEntry runtimeJar = new ClassPathEntry();
      myLanguageDescriptor.getRuntimeClassPaths().add(runtimeJar);
      runtimeJar.setPath(jarFile.getPath());
    }
  }

  //todo[CP] remove this method when got rid of classpaths
  protected List<StubModelsEntry> getRuntimeModelsEntries() {
    List<StubModelsEntry> sm = myLanguageDescriptor.getRuntimeStubModels();
    List<ClassPathEntry> cp = myLanguageDescriptor.getRuntimeClassPaths();

    return toStubModelEntries(cp, sm);
  }

  public boolean isGenerateAdapters() {
    return !myLanguageDescriptor.isDoNotGenerateAdapters();
  }

  //-----------stubs--------------

  private static LanguageDescriptor createNewDescriptor(String languageNamespace, IFile descriptorFile) {
    LanguageDescriptor languageDescriptor = new LanguageDescriptor();
    languageDescriptor.setNamespace(languageNamespace);
    languageDescriptor.setUUID(UUID.randomUUID().toString());

    File languageModels = new File(descriptorFile.getParent().toFile(), LANGUAGE_MODELS);
    if (languageModels.exists()) {
      throw new IllegalStateException("Trying to create a language in an existing language's directory");
    }

    // default descriptorModel roots
    ModelRoot modelRoot = new ModelRoot();
    modelRoot.setPath(languageModels.getAbsolutePath());
    modelRoot.setPrefix(languageNamespace);
    languageDescriptor.getModelRoots().add(modelRoot);
    return languageDescriptor;
  }

  private class CachesInvalidator extends SModelAdapter {
    @Override
    public void modelChanged(SModel model) {
      invalidateCaches();
    }

    @Override
    public void modelChangedDramatically(SModel model) {
      invalidateCaches();
    }
  }
}
