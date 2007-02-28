package jetbrains.mps.smodel;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.findUsages.FindUsagesManager;
import jetbrains.mps.ide.IStatus;
import jetbrains.mps.ide.actions.tools.ReloadUtils;
import jetbrains.mps.ide.command.CommandEventTranslator;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.projectLanguage.DescriptorsPersistence;
import jetbrains.mps.projectLanguage.structure.*;
import jetbrains.mps.refactoring.logging.Marshallable;
import jetbrains.mps.refactoring.languages.RenameModelRefactoring;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.util.*;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.util.annotation.UseCarefully;
import jetbrains.mps.plugin.IProjectHandler;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.*;
import java.rmi.RemoteException;


/**
 * Author: Sergey Dmitriev
 * Created Jan 30, 2004
 */
public class Language extends AbstractModule implements Marshallable<Language> {
  private static final Logger LOG = Logger.getLogger(Language.class);

  private static final String LANGUAGE_ACCESSORIES = "languageAccessories";
  private static final String LANGUAGE_MODELS = "languageModels";

  private LanguageDescriptor myLanguageDescriptor;
  private List<Generator> myGenerators;
  private HashMap<String, ConceptDeclaration> myNameToConceptCache = new HashMap<String, ConceptDeclaration>();
  private List<LanguageCommandListener> myCommandListeners = new ArrayList<LanguageCommandListener>();
  private LanguageEventTranslator myEventTranslator = new LanguageEventTranslator();
  private SModelsListener myModelsListener = new LanguageModelsAdapter();
  private boolean myUpToDate = true;

  private boolean myUpdateLastGenerationTimeCalled = false;

  private Map<String, Set<String>> myParentsNamesMap = new HashMap<String, Set<String>>();
  private SModelCommandListener myAspectModelsListener = new SModelCommandListener() {
    public void modelChangedInCommand(List<SModelEvent> events) {
      if (myUpToDate) {
        myUpToDate = false;
        CommandProcessor.instance().executeCommand(new Runnable() {
          public void run() {
            myEventTranslator.languageChanged();
          }
        });
      }
    }
  };
  private boolean myRegisteredInFindUsagesManager;


  public void rename(String newNamespace, IOperationContext operationContext) {
    String oldNamespace = getNamespace();

    // update repository
    MPSModuleRepository.getInstance().renameUID(this, newNamespace);

    // set new namespace
    myLanguageDescriptor.setNamespace(newNamespace);

    // rename model roots
    String oldLanguageModelsRoot = new File(myDescriptorFile.getParentFile(), LANGUAGE_MODELS).getAbsolutePath();
    String oldLanguageAccesoriesRoot = new File(myDescriptorFile.getParentFile(), LANGUAGE_ACCESSORIES).getAbsolutePath();
    for (ModelRoot modelRoot : myLanguageDescriptor.getModelRoots()) {
      if (modelRoot.getPath().equals(oldLanguageModelsRoot)) {
        modelRoot.delete();
      }
      if (modelRoot.getPath().equals(oldLanguageAccesoriesRoot)) {
        modelRoot.delete();
      }
    }


    IProjectHandler projectHandler = operationContext.getProject().getProjectHandler();
    if (projectHandler != null) {
      try{
        projectHandler.deleteFilesAndRemoveFromVCS(CollectionUtil.asList(myDescriptorFile));
      } catch(RemoteException e) {
        LOG.error(e);
      }
    } else {
      myDescriptorFile.delete();
    }

    File descriptorFile = newDescriptorFileByNewName(newNamespace);

    SModel descriptorModel = myLanguageDescriptor.getModel();
    ModelRoot languageModelRoot = ModelRoot.newInstance(descriptorModel);
    languageModelRoot.setPath(new File(descriptorFile.getParentFile(), LANGUAGE_MODELS).getAbsolutePath());
    languageModelRoot.setPrefix(newNamespace);
    myLanguageDescriptor.addModelRoot(languageModelRoot);
    ModelRoot accessoryModelRoot = ModelRoot.newInstance(descriptorModel);
    accessoryModelRoot.setPath(new File(descriptorFile.getParentFile(), LANGUAGE_ACCESSORIES).getAbsolutePath());
    accessoryModelRoot.setPrefix(newNamespace);
    myLanguageDescriptor.addModelRoot(accessoryModelRoot);

    // rename language models
    renameLanguageModel(oldNamespace, newNamespace, myLanguageDescriptor.getStructureModel(), languageModelRoot, operationContext);
    Model editorModel = null;
    for (Editor editor : myLanguageDescriptor.getEditors()) {
      if (editor.getStereotype() == null || editor.getStereotype().equals(SModelStereotype.NONE)) {
        editorModel = editor.getEditorModel();
        break;
      }
    }
    renameLanguageModel(oldNamespace, newNamespace, editorModel, languageModelRoot, operationContext);
    renameLanguageModel(oldNamespace, newNamespace, myLanguageDescriptor.getActionsModel(), languageModelRoot, operationContext);
    renameLanguageModel(oldNamespace, newNamespace, myLanguageDescriptor.getHelginsTypesystemModel(), languageModelRoot, operationContext);
    renameLanguageModel(oldNamespace, newNamespace, myLanguageDescriptor.getTypeSystem(), languageModelRoot, operationContext);

    // save descriptor
    myDescriptorFile = descriptorFile;
    setLanguageDescriptor(myLanguageDescriptor);
    save();
  }

  /*package*/ File newDescriptorFileByNewName(String newNamespace) {
    File dir = myDescriptorFile.getParentFile();
    String oldShortFileName = NameUtil.shortNameFromLongName(myDescriptorFile.getAbsolutePath());
    String newPathSuffix = NameUtil.shortNameFromLongName(newNamespace);
    if ((dir.getAbsolutePath() + MPSModuleRepository.LANGUAGE_EXT).endsWith(oldShortFileName)) {
      dir = dir.getParentFile();
      newPathSuffix = newPathSuffix + File.separatorChar + newPathSuffix;
    }
    return new File(dir, newPathSuffix + MPSModuleRepository.LANGUAGE_EXT);
  }

  private void renameLanguageModel(String oldNamespace, String newNamespace, Model model, ModelRoot newRoot, IOperationContext operationContext) {
    if (model == null) return;
    String name = model.getName();
    if (name.startsWith(oldNamespace)) {
      String newName = newNamespace + name.substring(oldNamespace.length(), name.length());
      model.setName(newName);
      SModelUID modelUID = SModelUID.fromString(name);
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
      if (modelDescriptor == null) {
        LOG.error("Couldn't get model \"" + modelUID + "\"");
      }
      new RenameModelRefactoring(modelDescriptor, operationContext, newName, newRoot).run();
    }
  }

  public String marshall() {
    return getNamespace();
  }

  public Language unmarshall(String s, IOperationContext operationContext) {
    return MPSModuleRepository.getInstance().getLanguage(s);
  }

  @NotNull
  public static Language newInstance(@NotNull File descriptorFile,
                                     @NotNull MPSModuleOwner moduleOwner) {
    Language language = new Language();
    SModel model = ProjectModels.createDescriptorFor(language).getSModel();
    model.setLoading(true);
    LanguageDescriptor languageDescriptor = DescriptorsPersistence.loadLanguageDescriptor(descriptorFile, model);
    language.myDescriptorFile = descriptorFile;
    language.myLanguageDescriptor = languageDescriptor;
    MPSModuleRepository.getInstance().addModule(language, moduleOwner);
    language.updateDependenciesAndGenerators();
    return language;
  }

  @NotNull
  public static Language newInstance(@NotNull LanguageDescriptor languageDescriptor,
                                     @NotNull MPSModuleOwner owner) {
    Language language = new Language();
    SModel model = ProjectModels.createDescriptorFor(language).getSModel();
    model.setLoading(true);
    language.myDescriptorFile = null;
    language.myLanguageDescriptor = (LanguageDescriptor) SNodeCopyUtil.cloneSNode(languageDescriptor.getNode(), model, false).getAdapter();
    MPSModuleRepository.getInstance().addModule(language, owner);
    language.updateDependenciesAndGenerators();
    return language;
  }


  @NotNull
  public static Language createLanguage(@NotNull String languageNamespace,
                                        @NotNull File descriptorFile,
                                        @NotNull MPSModuleOwner moduleOwner) {
    Language language = new Language();
    SModel descriptorModel = ProjectModels.createDescriptorFor(language).getSModel();
    descriptorModel.setLoading(true);
    LanguageDescriptor languageDescriptor = LanguageDescriptor.newInstance(descriptorModel);
    descriptorModel.addRoot(languageDescriptor);
    languageDescriptor.setNamespace(languageNamespace);

    // default descriptorModel roots
    ModelRoot modelRoot = ModelRoot.newInstance(descriptorModel);
    modelRoot.setPath(new File(descriptorFile.getParentFile(), LANGUAGE_MODELS).getAbsolutePath());
    modelRoot.setPrefix(languageNamespace);
    languageDescriptor.addModelRoot(modelRoot);
    modelRoot = ModelRoot.newInstance(descriptorModel);
    modelRoot.setPath(new File(descriptorFile.getParentFile(), LANGUAGE_ACCESSORIES).getAbsolutePath());
    modelRoot.setPrefix(languageNamespace);
    languageDescriptor.addModelRoot(modelRoot);

    language.myDescriptorFile = descriptorFile;
    language.myLanguageDescriptor = languageDescriptor;
    MPSModuleRepository.getInstance().addModule(language, moduleOwner);
    language.updateDependenciesAndGenerators();
    return language;
  }

  // made public for unmarshalling purposes, invoked via reflection
  // do not use directly.
  @UseCarefully
  public Language() {
  }

  private void updateDependenciesAndGenerators() {
    // read modules and models
    readDependOnModules();
    revalidateGenerators();
  }

  public void readModels() {
    if (!isInitialized()) {
      super.readModels();

      if (isInitialized()) {
        List<SModelDescriptor> accessoryModels = getAccessoryModels();
        for (SModelDescriptor accessoryModel : accessoryModels) {
          SModelRepository.getInstance().addOwnerForDescriptor(accessoryModel, this);
        }

        CommandProcessor.instance().addCommandListener(myEventTranslator);
        SModelsMulticaster.getInstance().addSModelsListener(myModelsListener);
        registerAspectListener();

        fireModuleInitialized();
      }
    }
  }

  private void revalidateGenerators() {
    myGenerators = new LinkedList<Generator>();
    Iterator<GeneratorDescriptor> generators = getLanguageDescriptor().generators();
    while (generators.hasNext()) {
      GeneratorDescriptor generatorDescriptor = generators.next();
      Generator generator = new Generator(this, generatorDescriptor);
      MPSModuleRepository.getInstance().addModule(generator, this);
      myGenerators.add(generator);
    }
  }

  public void dispose() {
    //Call this method before you remove it and its models from repositories
    //To unregister it correctly from different services we need it and its models    
    CommandProcessor.instance().removeCommandListener(myEventTranslator);
    SModelsMulticaster.getInstance().removeSModelsListener(myModelsListener);
    unRegisterAspectListener();
    SModelRepository.getInstance().unRegisterModelDescriptors(this);
    MPSModuleRepository.getInstance().unRegisterModules(this);
    if (myGenerators != null) {
      for (Generator generator : myGenerators) {
        generator.dispose();
      }
      myGenerators.clear();
    }

  }

  public void setLanguageDescriptor(final @NotNull LanguageDescriptor newDescriptor) {
    // release modules and models (except descriptor model)
    unRegisterAspectListener();
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(newDescriptor.getModel().getUID(), Language.this);

    assert modelDescriptor != null;

    MPSModuleRepository.getInstance().unRegisterModules(Language.this);
    SModelRepository.getInstance().unRegisterModelDescriptors(Language.this);
    SModelRepository.getInstance().registerModelDescriptor(modelDescriptor, Language.this);

    for (Generator generator : getGenerators()) {
      generator.dispose();
    }

    myLanguageDescriptor = newDescriptor;
    //read modules and models
    readDependOnModules();
    revalidateGenerators();

    rereadModels();

    ReloadUtils.reloadAll(true, true, false);


    registerAspectListener();
    updateLastGenerationTime();

    ReloadUtils.rebuildAllEditors();
    ReloadUtils.rebuildProjectPanes();

    MPSModuleRepository.getInstance().invalidateCaches();

    myEventTranslator.languageChanged();
  }

  private void registerAspectListener() {
    for (SModelDescriptor aspectModel : getAspectModelDescriptors()) {
      if (aspectModel != null) aspectModel.addSModelCommandListener(myAspectModelsListener);
    }
  }

  private void unRegisterAspectListener() {
    for (SModelDescriptor aspectModel : getAspectModelDescriptors()) {
      if (aspectModel != null) {
        aspectModel.removeSModelCommandListener(myAspectModelsListener);
      }
    }
  }

  public int getVersion() {
    return getStructureModelDescriptor().getVersion();
  }

  @NotNull
  public ModuleDescriptor getModuleDescriptor() {
    return myLanguageDescriptor;
  }


  public void setModuleDescriptor(@NotNull ModuleDescriptor moduleDescriptor) {
    if (moduleDescriptor instanceof LanguageDescriptor) {
      setLanguageDescriptor((LanguageDescriptor) moduleDescriptor);
    } else {
      LOG.error("not a language descriptor", new Throwable());
    }
  }

  @NotNull
  public LanguageDescriptor getLanguageDescriptor() {
    return myLanguageDescriptor;
  }

  @Nullable
  public String getLanguagePluginClass() {
    return getLanguageDescriptor().getLanguagePluginClass();
  }

  @NotNull
  public List<IModule>
         getExplicitlyDependOnModules() {
    // depends of other languages and solutions, but not on generators.
    // >KS// why?
    // >KS// I commented out generators exclusion because otherwise GeneratorPlans
    // >KS// work only if we use GlobalScope
    // because Language doesn't depend on its generators
    // just the opposite: a generator depends on its source language
    // Please, fix GeneratorPlans instead
    // KS : Already fixed :-)
    // CK : kamenty ruliat!
    List<IModule> result = new LinkedList<IModule>();
    for (IModule ownModule : getOwnModules()) {
      if (ownModule instanceof Generator || result.contains(ownModule)) {
        continue;
      }
      result.add(ownModule);
    }
    return result;
  }

  public void updateLastGenerationTime() {
    long lastGenerationTime = FileUtil.getNewestFileTime(
            new File(getSourceDir().getAbsolutePath() + File.separator + getNamespace().replace('.', File.separatorChar)));
    long lastChangeTime = getLastChangeTime();
    myUpToDate = lastGenerationTime >= lastChangeTime;
    myUpdateLastGenerationTimeCalled = true;
  }

  @NotNull
  public List<Generator> getGenerators() {
    return new ArrayList<Generator>(myGenerators);
  }

  public Generator getGeneratorTo(@NotNull String targetLanguageName) {
    for (Generator generator : myGenerators) {
      if (targetLanguageName.equals(generator.getTargetLanguageName())) {
        return generator;
      }
    }
    return null;
  }

  @NotNull
  public String getModuleUID() {
    return getNamespace();
  }

  @NotNull
  public String getNamespace() {
    String result = getLanguageDescriptor().getNamespace();
    assert result != null;
    return result;
  }

  @NotNull
  public File getSourceDir() {
    File sourceDir = new File(myDescriptorFile.getParent(), "source_gen");
    if (getLanguageDescriptor().getLanguageGenPath() != null) {
      sourceDir = new File(getLanguageDescriptor().getLanguageGenPath());
    }
    if (!sourceDir.exists()) {
      sourceDir.mkdirs();
    }
    return sourceDir;
  }

  @Nullable
  public String getGeneratorOutputPath() {
    String generatorOutputPath = myLanguageDescriptor.getLanguageGenPath();
    if (generatorOutputPath == null) {
      generatorOutputPath = FileUtil.getCanonicalPath(myDescriptorFile.getParentFile()) + File.separatorChar + "source_gen";
    }
    return generatorOutputPath;
  }


  public boolean isUpToDate() {
    if (!myUpdateLastGenerationTimeCalled) {
      updateLastGenerationTime();
    }
    return myUpToDate;
  }


  private long getLastChangeTime() {
    long result = 0;
    SModelRepository repository = SModelRepository.getInstance();
    result = Math.max(result, repository.getLastChangeTime(getStructureModelDescriptor()));


    SModelDescriptor editorModel = getEditorModelDescriptor();
    if (editorModel != null) {
      result = Math.max(result, repository.getLastChangeTime(editorModel));
    }

    SModelDescriptor actionsModel = getActionsModelDescriptor();
    if (actionsModel != null) {
      result = Math.max(result, repository.getLastChangeTime(actionsModel));
    }

    SModelDescriptor constraintsModel = getConstraintsModelDescriptor();
    if (constraintsModel != null) {
      result = Math.max(result, repository.getLastChangeTime(constraintsModel));
    }

    SModelDescriptor typesystemModel = getTypesystemModelDescriptor();
    if (typesystemModel != null) {
      result = Math.max(result, repository.getLastChangeTime(typesystemModel));
    }

    return result;
  }

  @NotNull
  public List<ConceptDeclaration> getConceptDeclarations() {
    return getStructureModelDescriptor().getSModel().allAdapters(ConceptDeclaration.class);
  }

  @NotNull
  public SModelDescriptor getStructureModelDescriptor() {
    Model structureModel = getLanguageDescriptor().getStructureModel();

    assert structureModel != null;

    SModelUID modelUID = SModelUID.fromString(structureModel.getName());
    SModelDescriptor structureModelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
    if (structureModelDescriptor == null) {
      LOG.error("Couldn't get structure model \"" + modelUID + "\"");
    } else if (!myRegisteredInFindUsagesManager) {
      myRegisteredInFindUsagesManager = true;
      //register cache invalidation
      FindUsagesManager.registerStructureModel(structureModelDescriptor);
    }
    assert structureModelDescriptor != null;
    return structureModelDescriptor;
  }

  @Nullable
  public SModelDescriptor getTypesystemModelDescriptor() {
    if (getLanguageDescriptor().getTypeSystem() != null) {
      SModelUID modelUID = SModelUID.fromString(getLanguageDescriptor().getTypeSystem().getName());
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
      if (modelDescriptor == null) {
        LOG.error("Couldn't get typesystem model \"" + modelUID + "\"");
      }
      return modelDescriptor;
    }
    return null;
  }

  @Nullable
  public SModelDescriptor getHelginsTypesystemModelDescriptor() {
    if (getLanguageDescriptor().getHelginsTypesystemModel() != null) {
      SModelUID modelUID = SModelUID.fromString(getLanguageDescriptor().getHelginsTypesystemModel().getName());
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
      if (modelDescriptor == null) {
        LOG.error("Couldn't get helgins-typesystem model \"" + modelUID + "\"");
      }
      return modelDescriptor;
    }
    return null;
  }

  @Nullable
  public SModelDescriptor getActionsModelDescriptor() {
    if (getLanguageDescriptor().getActionsModel() != null) {
      SModelUID modelUID = SModelUID.fromString(getLanguageDescriptor().getActionsModel().getName());
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
      if (modelDescriptor == null) {
        LOG.error("Couldn't get actions model \"" + modelUID + "\"");
      }
      return modelDescriptor;
    }
    return null;
  }

  @Nullable
  public SModelDescriptor getConstraintsModelDescriptor() {
    if (getLanguageDescriptor().getConstraintsModel() != null) {
      SModelUID modelUID = SModelUID.fromString(getLanguageDescriptor().getConstraintsModel().getName());
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelUID, this);
      if (modelDescriptor == null) {
        LOG.error("Couldn't get constraints model \"" + modelUID + "\"");
      }
      return modelDescriptor;
    }
    return null;
  }

  @Nullable
  public SModelDescriptor getEditorModelDescriptor() {
    return getEditorModelDescriptor(null);
  }

  @Nullable
  public String getEditorUID() {
    return getEditorUID(null);
  }

  @Nullable
  public SModelDescriptor getEditorModelDescriptor(String stereotype) {
    if (stereotype == null) stereotype = SModelStereotype.NONE;
    String editorUID = getEditorUID(stereotype);
    if (editorUID == null) {
      return null;
    }
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(SModelUID.fromString(editorUID), this);
    if (modelDescriptor == null) {
      LOG.error("Couldn't get editor model \"" + editorUID + "\"");
      SModelRepository.getInstance().getModelDescriptor(SModelUID.fromString(editorUID), this);
    }
    return modelDescriptor;
  }

  @NotNull
  public Set<SModelDescriptor> getEditorDescriptors() {
    Set<SModelDescriptor> result = new HashSet<SModelDescriptor>();
    Iterator<Editor> editors = getLanguageDescriptor().editors();
    while (editors.hasNext()) {
      Editor editor = editors.next();
      result.add(getEditorModelDescriptor(editor.getStereotype()));
    }
    return result;
  }

  @NotNull
  public Set<SModelDescriptor> getAspectModelDescriptors() {
    Set<SModelDescriptor> result = new HashSet<SModelDescriptor>();
    SModelDescriptor structureModelDescriptor = getStructureModelDescriptor();
    result.add(structureModelDescriptor);
    result.addAll(getEditorDescriptors());
    SModelDescriptor typesystemModelDescriptor = getTypesystemModelDescriptor();
    if (typesystemModelDescriptor != null) result.add(typesystemModelDescriptor);
    SModelDescriptor actionsModelDescriptor = getActionsModelDescriptor();
    if (actionsModelDescriptor != null) result.add(actionsModelDescriptor);
    SModelDescriptor constraintsModelDescriptor = getConstraintsModelDescriptor();
    if (constraintsModelDescriptor != null) result.add(constraintsModelDescriptor);
    return result;
  }

  @Nullable
  public String getEditorUID(String stereotype) {
    if (stereotype == null) stereotype = SModelStereotype.NONE;
    Iterator<Editor> editors = getLanguageDescriptor().editors();
    while (editors.hasNext()) {
      Editor currentEditor = editors.next();
      String currentStereotype = currentEditor.getStereotype();
      if (currentStereotype == null) currentStereotype = SModelStereotype.NONE;
      if (currentStereotype.equals(stereotype)) return currentEditor.getEditorModel().getName();
    }
    return null;
  }

  @Nullable
  public String getEditorStereotype(SModelDescriptor modelDescriptor) {
    String anUID = modelDescriptor.getModelUID().toString();
    for (Editor editor : CollectionUtil.iteratorAsIterable(getLanguageDescriptor().editors())) {
      if (anUID.equals(editor.getEditorModel().getName())) return editor.getStereotype();
    }
    return null;
  }

  public void invalidateCaches() {
    super.invalidateCaches();
    myNameToConceptCache.clear();
    myParentsNamesMap.clear();
  }

  @Nullable
  public ConceptDeclaration findConceptDeclaration(@NotNull String conceptName) {
    if (myNameToConceptCache.isEmpty()) {
      SModelDescriptor structureModelDescriptor = getStructureModelDescriptor();
      SModel structureModel = structureModelDescriptor.getSModel();
      structureModel.allAdapters(BaseAdapter.class, new Condition<BaseAdapter>() {
          public boolean met(BaseAdapter node) {
            if (node instanceof ConceptDeclaration) {
              myNameToConceptCache.put(node.getName(), (ConceptDeclaration) node);
            }
            return false;
          }
        });
    }
    return myNameToConceptCache.get(conceptName);
  }

  @NotNull
  public Set<String> getParentNames(String conceptFqName) {
    if (myParentsNamesMap.containsKey(conceptFqName)) {
      return new HashSet<String>(myParentsNamesMap.get(conceptFqName));
    } else {
      Set<String> result = new HashSet<String>();
      ConceptDeclaration declaration = findConceptDeclaration(NameUtil.shortNameFromLongName(conceptFqName));
      if (declaration == null) {
        return result;
      }

      result.add(conceptFqName);
      ConceptDeclaration conceptDeclaration = declaration.getExtends();
      if (conceptDeclaration != null) {
        result.addAll(SModelUtil_new.getDeclaringLanguage(
                declaration.getExtends(), GlobalScope.getInstance()).getParentNames(
                NameUtil.nodeFQName(conceptDeclaration)));
      }
      myParentsNamesMap.put(conceptFqName, result);
      return new HashSet<String>(result);
    }
  }

  public void save() {
    DescriptorsPersistence.saveLanguageDescriptor(myDescriptorFile, getLanguageDescriptor());
  }

  @NotNull
  public List<SModelDescriptor> getAccessoryModels() {
    List<SModelDescriptor> result = new LinkedList<SModelDescriptor>();
    Iterator<Model> accessoryModels = getLanguageDescriptor().accessoryModels();
    while (accessoryModels.hasNext()) {
      Model model = accessoryModels.next();
      SModelDescriptor modelDescriptor = getScope().getModelDescriptor(SModelUID.fromString(model.getName()));
      if (modelDescriptor != null) {
        result.add(modelDescriptor);
      }
    }
    return result;
  }

  public boolean isAccessoryModel(@NotNull SModelUID modelUID) {
    Iterator<Model> accessoryModels = getLanguageDescriptor().accessoryModels();
    while (accessoryModels.hasNext()) {
      Model model = accessoryModels.next();
      SModelUID accessoryUID = SModelUID.fromString(model.getName());
      if (accessoryUID.equals(modelUID)) {
        return true;
      }
    }
    return false;
  }

  public String toString() {
    return getLanguageDescriptor().getNamespace();
  }

  public void addLanguageCommandListener(@NotNull LanguageCommandListener listener) {
    myCommandListeners.add(listener);
  }

  public void removeLanguageCommandListener(@NotNull LanguageCommandListener listener) {
    myCommandListeners.remove(listener);
  }

  @Hack("Created to simplify New Language Dialog")
  public ModelRoot getDefaultModelRoot() {
    return getLanguageDescriptor().modelRoots().next();
  }

  private class LanguageEventTranslator extends CommandEventTranslator {
    public void languageChanged() {
      markCurrentCommandsDirty();
    }

    protected void fireCommandEvent() {
      for (LanguageCommandListener l : myCommandListeners) {
        l.languageChangedInCommand(Language.this);
      }
    }
  }

  @NotNull
  public List<Language> getOwnLanguages() {
    List<Language> languages = super.getOwnLanguages();
    if (!languages.contains(this)) {
      languages.add(this);
    }
    return languages;
  }

  @NotNull
  public List<String> getClassPathItems() {
    List<String> result = new ArrayList<String>();
    for (ClassPathEntry entry : CollectionUtil.iteratorAsIterable(myLanguageDescriptor.classPathEntrys())) {
      result.add(entry.getPath());
    }
    return result;
  }

  // ----------------------------
  // language - related utilities
  // ----------------------------
  public static Language getLanguageForLanguageAspect(SModelDescriptor modelDescriptor) {
    LanguageAspectStatus status = getLanguageAspectStatus(modelDescriptor);
    if (status.isError()) {
      LOG.errorWithTrace("getLanguageForLanguageAspect failed. model was: " + modelDescriptor);
      return null;
    }
    return status.getLanguage();
  }

  public static LanguageAspectStatus getLanguageAspectStatus(SModelDescriptor modelDescriptor) {
    Set<ModelOwner> owners = SModelRepository.getInstance().getOwners(modelDescriptor);
    LanguageAspectStatus accessoryStatus = null;
    try {

      for (ModelOwner modelOwner : owners) {
        if (modelOwner instanceof Language) {
          LanguageAspectStatus languageAspectStatus = getLanguageAspectStatus((Language) modelOwner, modelDescriptor);
          if (languageAspectStatus.isLanguageAspect()) return languageAspectStatus;
          if (languageAspectStatus.isAccessoryModel()) accessoryStatus = languageAspectStatus;
        }
        if (modelOwner instanceof Generator) {
          LanguageAspectStatus languageAspectStatus = getLanguageAspectStatus(((Generator) modelOwner).getSourceLanguage(), modelDescriptor);
          if (languageAspectStatus.isLanguageAspect()) return languageAspectStatus;
          if (languageAspectStatus.isAccessoryModel()) accessoryStatus = languageAspectStatus;
        }
      }
    } catch (ConcurrentModificationException e) {
      LOG.error(e);
    }
    if (accessoryStatus != null) return accessoryStatus;
    return new LanguageAspectStatus(null, LanguageAspectStatus.AspectKind.NONE);
  }

  public static LanguageAspectStatus getLanguageAspectStatus(Language language, SModelDescriptor modelDescriptor) {
    if (modelDescriptor == language.getStructureModelDescriptor()) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.STRUCTURE);
    }
    if (modelDescriptor == language.getTypesystemModelDescriptor()) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.TYPESYSTEM);
    }
    if (modelDescriptor == language.getHelginsTypesystemModelDescriptor()) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.HELGINS_TYPESYSTEM);
    }
    if (modelDescriptor == language.getActionsModelDescriptor()) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.ACTIONS);
    }
    if (modelDescriptor == language.getConstraintsModelDescriptor()) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.CONSTRAINTS);
    }
    List<SModelDescriptor> acccessoryModels = language.getAccessoryModels();
    if (acccessoryModels.contains(modelDescriptor)) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.ACCESSORY);
    }
    Set<SModelDescriptor> editorDescriptors = language.getEditorDescriptors();
    if (editorDescriptors.contains(modelDescriptor)) {
      return new LanguageAspectStatus(language, LanguageAspectStatus.AspectKind.EDITOR);
    }

    return new LanguageAspectStatus(null, LanguageAspectStatus.AspectKind.NONE);
  }

  public static class LanguageAspectStatus implements IStatus {
    public static enum AspectKind {
      STRUCTURE, EDITOR, ACTIONS, CONSTRAINTS, TYPESYSTEM, HELGINS_TYPESYSTEM, ACCESSORY, NONE
    }

    private Language myLanguage;
    private AspectKind myAspectKind;

    public LanguageAspectStatus(Language language, AspectKind aspectKind) {
      myLanguage = language;
      myAspectKind = aspectKind;
    }

    public boolean isOk() {
      return true;
    }

    public boolean isError() {
      return false;
    }

    public Code getCode() {
      return Code.OK;
    }

    public String getMessage() {
      return "";
    }

    public Object getUserObject() {
      return null;
    }

    public Language getLanguage() {
      return myLanguage;
    }

    public AspectKind getAspectKind() {
      return myAspectKind;
    }

    public boolean isLanguageAspect() {
      return myAspectKind != LanguageAspectStatus.AspectKind.NONE && myAspectKind != LanguageAspectStatus.AspectKind.ACCESSORY;
    }

    public boolean isNone() {
      return myAspectKind == AspectKind.NONE;
    }

    public boolean isStructure() {
      return myAspectKind == LanguageAspectStatus.AspectKind.STRUCTURE;
    }

    public boolean isEditor() {
      return myAspectKind == LanguageAspectStatus.AspectKind.EDITOR;
    }

    public boolean isTypesystem() {
      return myAspectKind == LanguageAspectStatus.AspectKind.TYPESYSTEM;
    }

    public boolean isHelginsTypesystem() {
      return myAspectKind == LanguageAspectStatus.AspectKind.HELGINS_TYPESYSTEM;
    }

    public boolean isActions() {
      return myAspectKind == LanguageAspectStatus.AspectKind.ACTIONS;
    }

    public boolean isConstraintsModel() {
      return myAspectKind == LanguageAspectStatus.AspectKind.CONSTRAINTS;
    }

    public boolean isAccessoryModel() {
      return myAspectKind == LanguageAspectStatus.AspectKind.ACCESSORY;
    }

    public String name() {
      return myAspectKind.name();
    }
  }


  private class LanguageModelsAdapter extends SModelsAdapter {
    public void modelWillBeDeleted(SModelDescriptor modelDescriptor) {
      LanguageAspectStatus status = getLanguageAspectStatus(Language.this, modelDescriptor);
      if (status.isLanguageAspect()) {
        LanguageDescriptor languageDescriptor = getLanguageDescriptor();
        if (status.isStructure()) {
          languageDescriptor.removeChild(languageDescriptor.getStructureModel());
        } else if (status.isEditor()) {
          Iterator<Editor> iterator = languageDescriptor.editors();
          while (iterator.hasNext()) {
            Editor editor = iterator.next();
            String name = editor.getEditorModel().getName();
            if (EqualUtil.equals(name, modelDescriptor.getModelUID().toString())) {
              languageDescriptor.removeChild(editor);
              break;
            }
          }
        } else if (status.isTypesystem()) {
          languageDescriptor.removeChild(languageDescriptor.getTypeSystem());
        } else if (status.isHelginsTypesystem()) {
          languageDescriptor.removeChild(languageDescriptor.getHelginsTypesystemModel());
        } else if (status.isActions()) {
          languageDescriptor.removeChild(languageDescriptor.getActionsModel());
        } else if (status.isConstraintsModel()) {
          languageDescriptor.removeChild(languageDescriptor.getConstraintsModel());
        }
      }
    }
  } // private class LanguageModelsAdapter
}
