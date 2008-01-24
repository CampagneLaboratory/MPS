package jetbrains.mps.smodel;

import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference;
import jetbrains.mps.helgins.uiActions.ConvertQuotationsAction;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.refactoring.framework.RefactoringHistory;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.*;

/**
 * @author Kostik
 */
public class DefaultSModelDescriptor implements SModelDescriptor {
  private static final String VERSION = "version";

  private static final Logger LOG = Logger.getLogger(DefaultSModelDescriptor.class);

  private static volatile long ourStructuralState = 0;
  private static volatile long ourState = 0;

  protected SModel mySModel = null;

  private Map<String, String> myMetadata;
  private boolean myMetadataLoaded;

  private SModelUID myModelUID = new SModelUID("", "");
  private List<SModelListener> myWeakModelListeners = new ArrayList<SModelListener>();
  private List<SModelListener> myModelListeners = new ArrayList<SModelListener>();
  private List<SModelCommandListener> myModelCommandListeners = new ArrayList<SModelCommandListener>();
  private Map<String, Object> myUserObjects = new HashMap<String, Object>();
  private long myLastStructuralChange = System.currentTimeMillis();
  private long myLastChange ;
  private IFile myModelFile;
  private FastNodeFinder myFastNodeFinder;
  private List<IPostLoadRunnable> myPostLoadRunnables = new ArrayList<IPostLoadRunnable>(2);
  private Throwable myInitializationStackTrace;

  private IModelRootManager myModelRootManager;
  private boolean myTransient;

  private long myDiskTimestamp = -1;
  private boolean myIsTestRefactoringMode = false;

  public DefaultSModelDescriptor(IModelRootManager manager, IFile modelFile, SModelUID modelUID) {
    myModelUID = modelUID;
    myModelRootManager = manager;
    myModelFile = modelFile;

    updateLastChange();

    checkModelDuplication();
    addPostLoadRunnable(new IPostLoadRunnable() {
      public void doPostLoadStuff(final SModelDescriptor descriptor) {
        if (descriptor.getSModel().hasLanguage("jetbrains.mps.bootstrap.helgins")) {
          boolean needsRefactoring = false;
          for (SNode node : descriptor.getSModel().allNodes()) {
            String conceptFqName = node.getConceptFqName();
            if (conceptFqName.equals("jetbrains.mps.bootstrap.helgins.structure.Quotation")
                    || conceptFqName.equals("jetbrains.mps.bootstrap.helgins.structure.Antiquotation")
                    || conceptFqName.equals("jetbrains.mps.bootstrap.helgins.structure.ListAntiquotation")
                    || conceptFqName.equals("jetbrains.mps.bootstrap.helgins.structure.ReferenceAntiquotation")) {
              needsRefactoring = true;
              break;
            }
          }
          final IOperationContext operationContext = findOperationContext();
          if (operationContext == null) {
            //  LOG.warning("no op.context found for conversion");
            return;
          }
          if (needsRefactoring && !IdeMain.isTestMode()) {
            Runnable command = new Runnable() {
              public void run() {
                ConvertQuotationsAction.doConvertQuotations(descriptor, operationContext);
              }
            };

            if (CommandProcessor.instance().isInsideUndoableCommand()) {
              command.run();
            } else {
              if (CommandProcessor.instance().isInsideCommand()) {
                //       LOG.error("error: can't execute undoable command inside a lightweight command");
              } else {
                CommandProcessor.instance().executeCommand(command);
              }
            }
          }
        }
      }
    });
  }

  private void updateLastChange() {
    if (myModelFile != null) {
      myLastChange = myModelFile.lastModified();
    } else {
      myLastChange = System.currentTimeMillis();
    }
  }

  {
    this.addModelCommandListener(new SModelCommandListener() {
      public void modelChangedInCommand(List<SModelEvent> events) {
        if (EventUtil.isDramaticalChange(events)) {
          myLastStructuralChange = System.currentTimeMillis();
          myFastNodeFinder = null;
          ourStructuralState++;
        }
        myLastChange = System.currentTimeMillis();
        ourState++;
      }
    });
  }

  private void checkModelDuplication() {
    SModelDescriptor anotherModel = SModelRepository.getInstance().getModelDescriptor(myModelUID);
    if (anotherModel != null) {
      String message = "Model Already Register : " + myModelUID + "\n";
      message += "file = " + myModelFile + "\n";
      message += "another model's file = " + anotherModel.getModelFile();
      LOG.error(message);
    }
  }

  protected SModel loadModel() {
    myInitializationStackTrace = new Throwable();
    return myModelRootManager.loadModel(this);
  }

  @Nullable
  public Throwable getInitializationStackTrace() {
    return myInitializationStackTrace;
  }

  public void reloadFromDisk() {
    if (isInitialized()) {
      myWeakModelListeners.addAll(mySModel.getWeakModelListeners());
      myModelListeners.addAll(mySModel.getModelListeners());
      myModelCommandListeners.addAll(mySModel.getCommandListeners());

      SModel oldModel = mySModel;
      mySModel = loadModel();
      updateLastChange();

      doPostLoadStuff();

      oldModel.dispose();
      SModelRepository.getInstance().markChanged(this, false);
      MPSModuleRepository.getInstance().invalidateCaches();
    }
  }

  public SModelUID getModelUID() {
    return myModelUID;
  }

  public boolean isNotEditable() {
    String stereotype = getModelUID().getStereotype();
    return stereotype.equals(SModelStereotype.JAVA_STUB);
  }

  public IFile getModelFile() {
    return myModelFile;
  }

  public long timestamp() {
    return myModelRootManager.timestamp(this);
  }

  public long fileTimestamp() {
    IFile file = getModelFile();
    if (file == null || !file.exists()) return -1;
    return file.lastModified();
  }

  /**
   * todo: should return "long name"
   */
  public String getName() {
    return NameUtil.shortNameFromLongName(myModelUID.getLongName());
  }

  public String getLongName() {
    return myModelUID.getLongName();
  }

  @NotNull
  public String getStereotype() {
    return myModelUID.getStereotype();
  }

  public SModel getSModel() {
    if (mySModel == null) {
      mySModel = new SModel(getModelUID());
      mySModel = loadModel();
      doPostLoadStuff();
      addListenersToNewModel();
    }
    return mySModel;
  }

  private void doPostLoadStuff() {
    myModelRootManager.updateAfterLoad(this);
    SModelsMulticaster.getInstance().fireModelLoadedEvent(this);
    LOG.assertLog(mySModel != null, "Couldn't load model \"" + getModelUID() + "\"");

    updateModelWithRefactorings();
    doAdditionalPostLoadStuff();

    myDiskTimestamp = fileTimestamp();
    addListenersToNewModel();
  }

  private void doAdditionalPostLoadStuff() {
    for (IPostLoadRunnable runnable : myPostLoadRunnables) {
      runnable.doPostLoadStuff(this);
    }
  }

  public void addPostLoadRunnable(IPostLoadRunnable runnable) {
    myPostLoadRunnables.add(runnable);
  }

  private void updateModelWithRefactorings() {
    assert mySModel != null;
    String stereotype = mySModel.getStereotype();
    if (!SModelStereotype.NONE.equals(stereotype) && !SModelStereotype.TEMPLATES.equals(stereotype)) {
      return;
    }
    try {
      mySModel.setLoading(true);
      Set<SModelDescriptor> modelDescriptors = new HashSet<SModelDescriptor>();
      List<Language> languages = mySModel.getLanguages(GlobalScope.getInstance());
      for (Language language : languages) {
        modelDescriptors.addAll(language.getAspectModelDescriptors());
      }
      for (SModelUID sModelUID : mySModel.getImportedModelUIDs()) {
        SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(sModelUID);
        if (modelDescriptor == null) continue;
        modelDescriptors.add(modelDescriptor);
      }
      for (SModelDescriptor modelDescriptor : modelDescriptors) {
        playUsedModelDescriptorsRefactoring(modelDescriptor);
      }
    } finally {
      mySModel.setLoading(false);
    }
  }

  public void setTestRefactoringMode(boolean isTestRefactoringMode) {
    myIsTestRefactoringMode = isTestRefactoringMode;
  }

  private void playUsedModelDescriptorsRefactoring(SModelDescriptor modelDescriptor) {
    int currentVersion = modelDescriptor.getVersion();
    int usedVersion = mySModel.getUsedVersion(modelDescriptor.getModelUID());
    if (myIsTestRefactoringMode) {
      System.err.println(this + ": current version of used model " + modelDescriptor + " is " + currentVersion + ", used version is " + usedVersion);
    }
    if (currentVersion > usedVersion) {
      if (myIsTestRefactoringMode) {
        System.err.println("updating a model " + this);
      }
      SModel importedModel = modelDescriptor.getSModel();
      RefactoringHistory refactoringHistory = importedModel.getRefactoringHistory();
      for (RefactoringContext refactoringContext : refactoringHistory.getRefactoringContexts()) {
        if (refactoringContext.getModelVersion() <= usedVersion) continue;
        refactoringContext.getRefactoring().updateModel(mySModel, refactoringContext);
      }
      mySModel.updateImportedModelUsedVersion(modelDescriptor.getModelUID(), currentVersion);
      save();
    }
    return;
  }

  @Nullable
  public IOperationContext getOperationContext() {
    return findOperationContext();
  }

  private IOperationContext findOperationContext() {
    IOperationContext operationContext = null;
  outer : 
    for (IModule module : getModules()) {
      if (module instanceof Generator) {
        module = ((Generator)module).getSourceLanguage();
      }
      Set<MPSModuleOwner> mpsModuleOwners = MPSModuleRepository.getInstance().getOwners(module);
      if (mpsModuleOwners == null) continue;
      for (MPSModuleOwner owner : mpsModuleOwners) {
        if (owner instanceof MPSProject) {
          operationContext = new ModuleContext(module, (MPSProject) owner);
          break outer;
        }
      }
    }
    return operationContext;
  }

  public Set<IModule> getModules() {
    return SModelRepository.getInstance().getOwners(this, IModule.class);
  }

  @Nullable
  public IModule getModule() {
    Set<IModule> modules = getModules();
    if (!modules.isEmpty()) {
      return modules.iterator().next();
    }
    return null;
  }

  private void addListenersToNewModel() {
    if (mySModel == null) return;

    for (SModelListener listener : myWeakModelListeners) {
      if (!mySModel.hasModelListener(listener)) {
        mySModel.addWeakSModelListener(listener);
      }
    }
    myWeakModelListeners.clear();

    for (SModelListener listener : myModelListeners) {
      if (!mySModel.hasModelListener(listener)) {
        mySModel.addModelListener(listener);
      }
    }
    myModelListeners.clear();

    for (SModelCommandListener listener : myModelCommandListeners) {
      if (!mySModel.hasModelCommandListener(listener)) {
        mySModel.addModelCommandListener(listener);
      }
    }
    myModelCommandListeners.clear();
  }

  public long lastStructuralChange() {
    return myLastStructuralChange;
  }

  public long lastChangeTime() {
    return myLastChange;
  }

  public long structuralState() {
    return ourStructuralState;
  }

  public long state() {
    return ourState;
  }

  public void addWeakModelListener(SModelListener listener) {
    if (mySModel != null) {
      if (!mySModel.hasModelListener(listener)) {
        mySModel.addWeakSModelListener(listener);
      }
    } else {
      myWeakModelListeners.add(listener);
    }
  }

  public void addModelListener(SModelListener listener) {
    if (mySModel != null) {
      if (!mySModel.hasModelListener(listener)) {
        mySModel.addModelListener(listener);
      }
    } else {
      myModelListeners.add(listener);
    }
  }

  public void removeModelListener(SModelListener listener) {
    if (mySModel != null) {
      mySModel.removeModelListener(listener);
    } else {
      myModelListeners.remove(listener);
      myWeakModelListeners.remove(listener);
    }
  }

  public boolean hasSModelCommandListener(SModelCommandListener listener) {
    if (mySModel != null) {
      return mySModel.hasModelCommandListener(listener);
    } else {
      return myModelCommandListeners.contains(listener);
    }
  }

  public void addModelCommandListener(SModelCommandListener listener) {
    if (mySModel != null) {
      if (!mySModel.hasModelCommandListener(listener)) {
        mySModel.addModelCommandListener(listener);
      }
    } else {
      myModelCommandListeners.add(listener);
    }
  }

  public void removeModelCommandListener(SModelCommandListener listener) {
    if (mySModel != null) {
      mySModel.removeModelCommandListener(listener);
    } else {
      myModelCommandListeners.remove(listener);
    }
  }

  public void save() {
    if (mySModel == null) return;
    SModelRepository.getInstance().markChanged(mySModel, false);
    myModelRootManager.saveModel(this);
    myDiskTimestamp = fileTimestamp();

    mySModel.fireModelSaved();
  }

  public boolean needsReloading() {
    if (myDiskTimestamp == -1) {
      return false;
    }
    return fileTimestamp() != myDiskTimestamp;
  }

  public boolean isInitialized() {
    return mySModel != null;
  }

  public void refresh() {
    if (isInitialized()) {
      long start = System.currentTimeMillis();
      myFastNodeFinder = null;
      myWeakModelListeners.addAll(mySModel.getWeakModelListeners());
      myModelListeners.addAll(mySModel.getModelListeners());
      myModelCommandListeners.addAll(mySModel.getCommandListeners());

      SModel oldModel = mySModel;
      mySModel = myModelRootManager.refresh(this);

      if (mySModel != oldModel) {
        oldModel.dispose();
      }

      if (mySModel != null) {
        addListenersToNewModel();
      }
      LOG.debug("Refresh  " + getModelUID() + ". Took " + (System.currentTimeMillis() - start) + " ms");
    }
  }

  public void replaceModel(SModel newModel) {
    if (newModel == mySModel) return;
    if (isInitialized()) {
      myFastNodeFinder = null;
      myWeakModelListeners.addAll(mySModel.getWeakModelListeners());
      myModelListeners.addAll(mySModel.getModelListeners());
      myModelCommandListeners.addAll(mySModel.getCommandListeners());
      mySModel.dispose();
    }
    mySModel = newModel;
    if (mySModel != null) {
      addListenersToNewModel();
    }
    SModelRepository.getInstance().markChanged(this, true);
  }

  public void dispose() {
    myModelCommandListeners.clear();
    myWeakModelListeners.clear();
    myModelListeners.clear();

    UnregisteredNodes.instance().clear(getModelUID());

    if (mySModel != null) {
      mySModel.dispose();
    }
  }

  public Set<SReference> findUsages(Set<SNode> nodes) {
    if (!myModelRootManager.isFindUsagesSupported()) return new HashSet<SReference>();

    Set<String> strings = new HashSet<String>();

    for (SNode node : nodes) {
      if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
        strings.add(node.getId());
      }
    }

    if (!myModelRootManager.containsSomeString(this, strings)) return new HashSet<SReference>();
    getSModel();
    Set<SReference> result = new HashSet<SReference>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addUsages(root, nodes, result);
      }
    }
    return result;
  }

  public boolean hasImportedModel(SModelDescriptor modelDescriptor) {
    if (!myModelRootManager.isFindUsagesSupported()) return false;
    Set<String> strings = new HashSet<String>();
    if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
      strings.add(modelDescriptor.toString());
    }
    if (!myModelRootManager.containsSomeString(this, strings)) return false;
    getSModel();
    if (mySModel != null) {
      return mySModel.hasImportedModel(modelDescriptor.getModelUID());
    }
    return false;
  }

  public boolean hasLanguage(Language language) {
    if (!myModelRootManager.isFindUsagesSupported()) return false;
    Set<String> strings = new HashSet<String>();
    if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
      strings.add(language.getNamespace());
    }
    if (!myModelRootManager.containsSomeString(this, strings)) return false;
    getSModel();
    if (mySModel != null) {
      return mySModel.hasLanguage(language.getNamespace());
    }
    return false;
  }

  public Set<SReference> findUsages(SNode node) {
    return findUsages(CollectionUtil.asSet(node));
  }

  public Set<AbstractConceptDeclaration> findDescendants(AbstractConceptDeclaration node, Set<AbstractConceptDeclaration> descendantsKnownInModel) {
    if (!myModelRootManager.isFindUsagesSupported()) return new HashSet<AbstractConceptDeclaration>();
    if (mySModel != null && !SModelRepository.getInstance().isChanged(mySModel) && !descendantsKnownInModel.isEmpty()) {
      return descendantsKnownInModel;
    }

    if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
      if (!myModelRootManager.containsString(this, node.getId())) return descendantsKnownInModel;
    }
    getSModel();
    Set<AbstractConceptDeclaration> result = new HashSet<AbstractConceptDeclaration>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addDescendants(root, node, result);
      }
    }
    descendantsKnownInModel.clear();
    descendantsKnownInModel.addAll(result);
    return descendantsKnownInModel;
  }

  public final void delete() {
    SModelsMulticaster.getInstance().fireModelWillBeDeletedEvent(this);
    SModelRepository.getInstance().removeModelDescriptor(this);
    IFile modelFile = getModelFile();
    if (modelFile != null && modelFile.exists()) {
      modelFile.delete();
    }
    SModelsMulticaster.getInstance().fireModelDeletedEvent(this);
  }

  private void addUsages(SNode current, Set<SNode> nodes, Set<SReference> result) {
    for (SReference ref : current.getReferences()) {
      if (nodes.contains(ref.getTargetNode())) {
        result.add(ref);
      }
    }
    for (SNode child : current.getChildren()) {
      addUsages(child, nodes, result);
    }
  }

  private void addDescendants(SNode current, AbstractConceptDeclaration node, Set<AbstractConceptDeclaration> result) {

    if (BaseAdapter.fromNode(current) instanceof ConceptDeclaration) {
      ConceptDeclaration concept = (ConceptDeclaration) BaseAdapter.fromNode(current);
      for (InterfaceConceptReference interfaceConceptReference : concept.getImplementses()) {
        InterfaceConceptDeclaration declaration = interfaceConceptReference.getIntfc();
        if (declaration != null && declaration.getNode() == BaseAdapter.fromAdapter(node)) {
          result.add(concept);
          break;
        }
      }
      if (BaseAdapter.fromAdapter(concept.getExtends()) == BaseAdapter.fromAdapter(node)) {
        result.add(concept);
      }
    }

    if (BaseAdapter.fromNode(current) instanceof InterfaceConceptDeclaration) {
      InterfaceConceptDeclaration interfaceConcept = (InterfaceConceptDeclaration) BaseAdapter.fromNode(current);
      for (InterfaceConceptReference interfaceConceptReference : interfaceConcept.getExtendses()) {
        InterfaceConceptDeclaration declaration = interfaceConceptReference.getIntfc();
        if (declaration != null && declaration.getNode() == BaseAdapter.fromAdapter(node)) {
          result.add(interfaceConcept);
          break;
        }
      }
    }

    for (SNode child : current.getChildren()) {  // are there any "inner" concepts?
      addDescendants(child, node, result);
    }
  }

  public Set<SNode> findInstances(AbstractConceptDeclaration concept, IScope scope) {
    if (!myModelRootManager.isFindUsagesSupported()) return new HashSet<SNode>();
/*
    // this optimization is incorrect and slow (overall)   :)
    if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
      List<ConceptDeclaration> conceptDeclarations = SModelUtil_new.getAccessibleSubtypes(concept, getSModel(), scope);
      conceptDeclarations.add(concept);
      Set<String> conceptFqNames = new HashSet<String>();
      for (ConceptDeclaration conceptDeclaration : conceptDeclarations) {
        conceptFqNames.add(JavaNameUtil.className(conceptDeclaration));
      }
      if (!myModelRootManager.containsSomeString(this, conceptFqNames)) return new HashSet<SNode>();
    }
*/
    getSModel();
    Set<SNode> result = new HashSet<SNode>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addInstances(root, concept, result, scope);
      }
    }
    return result;
  }

  public FastNodeFinder getFastNodeFinder() {
    if (myFastNodeFinder == null) {
      myFastNodeFinder = new FastNodeFinder(this);
    }
    return myFastNodeFinder;
  }

  private void addInstances(SNode current, AbstractConceptDeclaration concept, Set<SNode> result, IScope scope) {
    if (current.isInstanceOfConcept(concept)) result.add(current);
    for (SNode child : current.getChildren()) {
      addInstances(child, concept, result, scope);
    }
  }

  public String toString() {
    return getModelUID().toString();
  }

  public boolean isTransient() {
    return myTransient;
  }

  private Map<String, String> getMetaData_internal() {
    if (myMetadataLoaded) {
      return myMetadata;
    }
    myMetadata = myModelRootManager.loadMetadata(this);
    myMetadataLoaded = true;
    return myMetadata;
  }

  public String getAttribute(String key) {
    if (getMetaData_internal() == null) {
      return null;
    }
    return getMetaData_internal().get(key);
  }

  public void setAttribute(String key, String value) {
    if (getMetaData_internal() == null) {
      throw new UnsupportedOperationException();
    }

    if (value == null) {
      getMetaData_internal().remove(key);
    } else {
      getMetaData_internal().put(key, value);
    }

    myModelRootManager.saveMetadata(this);
  }

  public Map<String, String> getMetaData() {
    if (getMetaData_internal() == null) {
      return null;
    }
    return Collections.unmodifiableMap(getMetaData_internal());
  }

  public int getVersion() {
    try {
      return Integer.parseInt(getAttribute(VERSION));
    } catch (NumberFormatException e) {
      return -1;
    }
  }

  public void setVersion(int newVersion) {
    System.err.println("setting version for model " + this + ": " + newVersion);
    setAttribute(VERSION, "" + newVersion);
  }

  public void setTransient(boolean b) {
    myTransient = b;
  }

  public Set<ModelRoot> collectModelRoots() {
    Set<ModelRoot> result = new HashSet<ModelRoot>();
    IFile sourceFile = this.getModelFile();
    Set<IModule> modelOwners = getModules();
    for (IModule module : modelOwners) {
      for (ModelRoot modelRoot : module.getModelRoots()) {
        if (this.getModelUID().toString().equals(PathManager.getModelUIDString(sourceFile, FileSystem.getFile(modelRoot.getPath()), modelRoot.getPrefix()))) {
          result.add(modelRoot);
        }
      }
    }
    return result;
  }

  public boolean rename(String newLongName, MPSProject project, ModelRoot newRoot) {
    if (newRoot == null) {
      return myModelRootManager.renameModelDescriptor(this, newLongName, project);
    } else {
      return myModelRootManager.renameModelDescriptor(this, newLongName, newRoot, project);
    }
  }

  /*package*/ void changeSModelUID(SModelUID newModelUID) {
    myModelUID = newModelUID;
    getSModel().changeModelUID(newModelUID);
  }

  /*package*/
  public void setModelFile(IFile file) {
    myModelFile = file;
  }

  public Object getUserObject(String key) {
    return myUserObjects.get(key);
  }

  public void putUserObject(String key, Object value) {
    myUserObjects.put(key, value);
  }

  public void removeUserObject(String key) {
    myUserObjects.remove(key);
  }
}
