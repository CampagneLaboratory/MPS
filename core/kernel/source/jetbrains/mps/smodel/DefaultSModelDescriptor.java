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

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration;
import jetbrains.mps.lang.structure.structure.InterfaceConceptReference;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.refactoring.PlayRefactoringsFlag;
import jetbrains.mps.refactoring.framework.ILoggableRefactoring;
import jetbrains.mps.refactoring.framework.IRefactoring;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.refactoring.framework.RefactoringHistory;
import jetbrains.mps.smodel.event.EventUtil;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.vcs.VcsHelper;
import jetbrains.mps.vfs.IFile;

import java.util.*;

public class DefaultSModelDescriptor extends BaseSModelDescriptor {
  private static final String VERSION = "version";
  private static final String NAME_VERSION = "nameVersion";

  private static final Logger LOG = Logger.getLogger(DefaultSModelDescriptor.class);

  private SModel mySModel = null;

  private Map<String, String> myMetadata;
  private boolean myMetadataLoaded;

  private final Object myLoadingLock = new Object();

  //it should be possible to add listeners from any thread so we use lock here
  //access to other fields is synchronized with ModelAccess
  private final Object myListenersLock = new Object();
  private final Object myUpdatersLock = new Object();

  private Set<SModelListener> myWeakModelListeners = new WeakSet<SModelListener>();
  private Set<SModelListener> myModelListeners = new HashSet<SModelListener>(0);
  private Set<SModelCommandListener> myModelCommandListeners = new LinkedHashSet<SModelCommandListener>(0);
  private Set<ModelUpdater> myUpdaters = new HashSet<ModelUpdater>();

  private long myLastStructuralChange = System.currentTimeMillis();
  private long myLastChange;
  private FastNodeFinder myFastNodeFinder;
  private boolean myTransient;

  private long myDiskTimestamp = -1;
  private boolean myIsTestRefactoringMode = false;

  public DefaultSModelDescriptor(IModelRootManager manager, IFile modelFile, SModelReference modelReference) {
    super(manager, modelFile, modelReference);
    updateLastChange();
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
      public void eventsHappenedInCommand(List<SModelEvent> events) {
        if (EventUtil.isChange(events)) {
          myLastChange = System.currentTimeMillis();
        }
      }
    });
  }

  protected SModel loadModel() {
    return myModelRootManager.loadModel(this);
  }

  public void reloadFromDiskSafe() {
    if (SModelRepository.getInstance().isChanged(this)) {
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        public void run() {
          final boolean needSave = VcsHelper.showDiskMemoryMerge(myModelFile, mySModel);
          if (needSave) {
            ModelAccess.instance().runWriteActionInCommand(new Runnable() {
              public void run() {
                myDiskTimestamp = fileTimestamp();
                save();
              }
            });
          } else {
            ModelAccess.instance().runWriteAction(new Runnable() {
              public void run() {
                reloadFromDisk();
              }
            });
          }
        }
      }, ModalityState.NON_MODAL);
    } else {
      reloadFromDisk();
    }
  }

  public void reloadFromDisk() {
    ModelAccess.assertLegalWrite();
    if (isInitialized()) {
      mySModel.fireBeforeModelReloaded();

      addListenersFromSModel();

      final SModel oldModel = mySModel;
      mySModel = loadModel();

      disposeFastNodeFinder();
      updateLastChange();

      doPostLoadStuff();

      SModelRepository.getInstance().markChanged(this, false);
      MPSModuleRepository.getInstance().invalidateCaches();

      mySModel.fireModelReloaded();

      ModelAccess.instance().runReadInEDT(new Runnable() {
        public void run() {
          oldModel.dispose();
        }
      });
    }
  }

  public int getSModelPersistenceVersion() {
    SModel model = getSModel();
    if (model == null) {
      return -1;
    }
    return model.getPersistenceVersion();
  }

  public boolean isReadOnly() {
    return SModelStereotype.isStubModelStereotype(getSModelReference().getStereotype());
  }

  public long timestamp() {
    return myModelRootManager.timestamp(this);
  }

  public long fileTimestamp() {
    IFile file = getModelFile();
    if (file == null || !file.exists()) return -1;
    return file.lastModified();
  }

  public SModel getSModel() {
    // ModelAccess.assertLegalRead();

    SModel result;
    boolean fireInitialized = false;

    synchronized (myLoadingLock) {
      if (mySModel == null) {
        mySModel = loadModel();
        updateAfterCreation(mySModel);
        doPostLoadStuff();
        fireInitialized = true;
      }
      result = mySModel;
    }
    if (fireInitialized) {
      result.fireModelInitialized();
    }
    return result;
  }

  //must be called only under loading lock
  private void updateAfterCreation(SModel model) {
    synchronized (myUpdatersLock) {
      Set<ModelUpdater> updCopy = new HashSet<ModelUpdater>(myUpdaters);
      for (ModelUpdater updater : updCopy) {
        updater.updateModel(this, model);
      }
    }
  }

  public void addModelUpdater(ModelUpdater updater) {
    synchronized (myUpdatersLock) {
      myUpdaters.add(updater);
    }
  }

  public void removeModelUpdater(ModelUpdater updater) {
    synchronized (myUpdatersLock) {
      myUpdaters.remove(updater);
    }
  }

  private void doPostLoadStuff() {
    LOG.assertLog(mySModel != null, "Couldn't load model \"" + getSModelReference().getLongName() + "\"");

    tryFixingVersion();
    updateModelWithRefactorings();

    myDiskTimestamp = fileTimestamp();
    addListenersToSModel();
  }

  private void updateModelWithRefactorings() {
    assert mySModel != null;
    if (!PlayRefactoringsFlag.refactoringsPlaybackEnabled()) {
      return;
    }
    if (!SModelStereotype.isUserModel(mySModel)) {
      return;
    }
    boolean wasLoading = mySModel.setLoading(true);
    try {
      boolean played;
      do {
        played = false;
        for (SModelDescriptor modelDescriptor : mySModel.getDependenciesModels()) {
          if (playUsedModelDescriptorsRefactoring(modelDescriptor)) {
            played = true;
          }
        }
      } while (played);
    } finally {
      mySModel.setLoading(wasLoading);
    }
  }

  public void setTestRefactoringMode(boolean isTestRefactoringMode) {
    myIsTestRefactoringMode = isTestRefactoringMode;
  }

  private void tryFixingVersion() {
    if (getVersion() != -1) return;

    int maxVersion = -1;
    for (RefactoringContext context : mySModel.getRefactoringHistory().getRefactoringContexts()) {
      maxVersion = Math.max(maxVersion, context.getModelVersion());
    }

    if (maxVersion != -1) {
      setVersion(maxVersion);
      LOG.error("Metadata file for model " + getSModelFqName() + " wasn't present. Recreated a new one.");
    }
  }

  //true if any refactoring was played
  private boolean playUsedModelDescriptorsRefactoring(SModelDescriptor modelDescriptor) {
    int currentVersion = modelDescriptor.getVersion();
    int usedVersion = mySModel.getUsedVersion(modelDescriptor.getSModelReference());
    if (myIsTestRefactoringMode) {
      System.err.println(this + ": current version of used model " + modelDescriptor.getLongName() + " is " + currentVersion + ", used version is " + usedVersion);
    }

    if (currentVersion > usedVersion) {
      boolean result = false;
      if (myIsTestRefactoringMode) {
        System.err.println("updating a model " + this);
      }
      SModel importedModel = modelDescriptor.getSModel();
      RefactoringHistory refactoringHistory = importedModel.getRefactoringHistory();
      for (RefactoringContext refactoringContext : refactoringHistory.getRefactoringContexts()) {
        if (refactoringContext.getModelVersion() <= usedVersion) continue;
        result = true;


        IRefactoring refactoring = refactoringContext.getRefactoring();
        if (!(refactoring instanceof ILoggableRefactoring)) {
          LOG.error("Non-loggable refactoring was logged: " + refactoring.getClass().getName());
        } else {
          try {
            ((ILoggableRefactoring) refactoring).updateModel(mySModel, refactoringContext);
          } catch (Throwable t) {
            LOG.error("An exception was thrown by refactoring " + refactoring.getUserFriendlyName() + " while updating model " + mySModel.getLongName() + ". Models could have been corrupted.");
          }
        }
      }
      mySModel.updateImportedModelUsedVersion(modelDescriptor.getSModelReference(), currentVersion);
      IFile modelFile = modelDescriptor.getModelFile();
      if (modelFile != null && !modelFile.isReadOnly()) {
        SModelRepository.getInstance().markChanged(mySModel);
      }
      return result;
    }

    // broken model fixing code
    if (currentVersion < usedVersion) {

      //user might have forgotten to commit .metadata file
      if (currentVersion == -1) {
        if (modelDescriptor instanceof DefaultSModelDescriptor) {
          modelDescriptor.getSModel();
        }

        if (modelDescriptor.getVersion() == usedVersion) return false;
      }

      LOG.error("Model version mismatch for import " + modelDescriptor.getSModelFqName() + " in model " + getSModelFqName());
      LOG.error("Used version = " + usedVersion + ", current version = " + currentVersion);
      mySModel.updateImportedModelUsedVersion(modelDescriptor.getSModelReference(), currentVersion);
      SModelRepository.getInstance().markChanged(mySModel);
      LOG.error("Mismatch fixed");
    }

    return false;
  }

  private void addListenersToSModel() {
    if (mySModel == null) return;

    synchronized (myListenersLock) {
      for (SModelListener listener : myWeakModelListeners) {
        mySModel.addWeakSModelListener(listener);
      }

      //do not use myWeakModelListener.clear() since it can cause ConcurrentModificationException (see code in
      //WeakList.remove() which can change modCount because it removes collected items
      myWeakModelListeners = new WeakSet<SModelListener>();

      for (SModelListener listener : myModelListeners) {
        mySModel.addModelListener(listener);
      }
      myModelListeners.clear();

      for (SModelCommandListener listener : myModelCommandListeners) {
        mySModel.addModelCommandListener(listener);
      }
      myModelCommandListeners.clear();
    }
  }

  private void addListenersFromSModel() {
    if (mySModel == null) return;

    synchronized (myListenersLock) {
      if (!myWeakModelListeners.isEmpty() || !myModelListeners.isEmpty() || !myModelCommandListeners.isEmpty()) {
        throw new IllegalStateException();
      }

      myWeakModelListeners.addAll(mySModel.getWeakModelListeners());
      myModelListeners.addAll(mySModel.getModelListeners());
      myModelCommandListeners.addAll(mySModel.getCommandListeners());
    }
  }

  private void clearListeners() {
    synchronized (myListenersLock) {
      myWeakModelListeners.clear();
      myModelListeners.clear();
      myModelCommandListeners.clear();
    }
  }

  public long lastStructuralChange() {
    return myLastStructuralChange;
  }

  public long lastChangeTime() {
    return myLastChange;
  }

  @Deprecated
  public void addWeakModelListener(SModelListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        mySModel.addWeakSModelListener(listener);
      } else {
        myWeakModelListeners.add(listener);
      }
    }
  }

  public void addModelListener(SModelListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        mySModel.addModelListener(listener);
      } else {
        myModelListeners.add(listener);
      }
    }
  }

  public void removeModelListener(SModelListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        mySModel.removeModelListener(listener);
      } else {
        myModelListeners.remove(listener);
        myWeakModelListeners.remove(listener);
      }
    }
  }

  public boolean hasSModelCommandListener(SModelCommandListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        return mySModel.hasModelCommandListener(listener);
      } else {
        return myModelCommandListeners.contains(listener);
      }
    }
  }

  public void addModelCommandListener(SModelCommandListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        mySModel.addModelCommandListener(listener);
      } else {
        myModelCommandListeners.add(listener);
      }
    }
  }

  public void removeModelCommandListener(SModelCommandListener listener) {
    synchronized (myListenersLock) {
      if (isInitialized()) {
        mySModel.removeModelCommandListener(listener);
      } else {
        myModelCommandListeners.remove(listener);
      }
    }
  }

  public void save() {
    ModelAccess.assertLegalWrite();

    if (mySModel == null) return;

    if (!ApplicationManager.getApplication().isDispatchThread()) {
      /*
      * This was added because of the line VFileSystem.refreshFileSynchronously(modelFile) few lines later.
      * Calling save not from EDT may cause this sequence of events:
      *
      * VirtualFile.refresh calls Semaphore.down and since we are not in EDT
      * call Semaphore.waitFor inside of invokeLater.
      *
      * At the same time somebody calls runReadAction in EDT and
      * since method save works only in writeAction, this somebody has to wait.
      * So we have EDT blocked and Semaphore.waitFor can not be called. Deadlock.
      * */
      IllegalStateException exception = new IllegalStateException("DefaultSModelDescriptor.Save should only be called from EDT.");
      exception.printStackTrace();
      throw exception;
    }

    //we must be in command since model save might change model by adding model/language imports
    if (!mySModel.isLoading()) LOG.assertInCommand();

    LOG.info("Saving model " + mySModel.getSModelFqName());

    if (needsReloading()) {
      LOG.warning("Model file " + mySModel.getSModelFqName() + " was modified externally!\n" +
        "You might want to turn \"Synchronize files on frame activation/deactivation\" option on to avoid conflicts.");
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        public void run() {
          final boolean needSave = VcsHelper.showDiskMemoryMerge(myModelFile, mySModel);
          if (needSave) {
            ModelAccess.instance().runWriteActionInCommand(new Runnable() {
              public void run() {
                myDiskTimestamp = fileTimestamp();
                save();
              }
            });
          } else {
            ModelAccess.instance().runWriteAction(new Runnable() {
              public void run() {
                reloadFromDisk();
              }
            });
          }
        }
      }, ModalityState.NON_MODAL);
      return;
    }

    SModelRepository.getInstance().markUnchanged(mySModel);
    myModelRootManager.saveModel(this);

    myDiskTimestamp = fileTimestamp();

    IFile modelFile = getModelFile();
    if (modelFile != null && !modelFile.isReadOnly()) {
      MPSFileSynchronizer.getInstance().requestSync(modelFile);
    }

    mySModel.fireModelSaved();
  }

  public boolean needsReloading() {
    if (myDiskTimestamp == -1) return false;
    return fileTimestamp() != myDiskTimestamp;
  }

  public boolean isInitialized() {
    return mySModel != null;
  }

  public void refresh() {
    ModelAccess.assertLegalWrite();

    if (!isInitialized()) return;

    addListenersFromSModel();

    SModel oldModel = mySModel;
    mySModel = myModelRootManager.refresh(this);

    if (mySModel != oldModel) {
      oldModel.dispose();
    }

    if (!isInitialized()) return;

    if (mySModel != oldModel) {
      addListenersToSModel();
    } else {
      clearListeners();
    }
  }

  public void replaceModel(SModel newModel) {
    ModelAccess.assertLegalWrite();

    if (newModel == mySModel) return;
    if (isInitialized()) {
      disposeFastNodeFinder();
      addListenersFromSModel();

      mySModel.dispose();
    }
    mySModel = newModel;
    if (mySModel != null) {
      addListenersToSModel();
    }
    SModelRepository.getInstance().markChanged(this, true);
  }

  public void dispose() {
    ModelAccess.assertLegalWrite();
    clearListeners();

    UnregisteredNodes.instance().clear(getSModelReference());

    if (mySModel != null) {
      mySModel.dispose();
    }
  }

  public Set<SReference> findUsages(Set<SNode> nodes) {
    if (!myModelRootManager.isFindUsagesSupported()) return Collections.emptySet();

    Set<String> strings = new HashSet<String>();
    for (SNode node : nodes) {
      if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
        strings.add(quoteSpecialXMLCharacters(node.getId()));
      }
    }

    if (!myModelRootManager.containsSomeString(this, strings)) return Collections.emptySet();
    getSModel();
    Set<SReference> result = new HashSet<SReference>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addUsages(root, nodes, result);
      }
    }
    return result;
  }

  public Set<SReference> findUsages(SNode node) {
    return findUsages(Collections.singleton(node));
  }

  public boolean hasUsages(Set<SModelReference> models) {
    if (!myModelRootManager.isFindUsagesSupported()) return false;

    Set<String> strings = new HashSet<String>();
    for (SModelReference model : models) {
      if (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel)) {
        strings.add(quoteSpecialXMLCharacters(model.toString()));
      }
    }

    if (!myModelRootManager.containsSomeString(this, strings)) return false;
    getSModel();
    if (mySModel != null) {
      for (SModelDescriptor modelDescriptor : mySModel.allImportedModels(GlobalScope.getInstance())) {
        if (models.contains(modelDescriptor.getSModelReference())) {
          return true;
        }
      }
    }
    return false;
  }

  private static String quoteSpecialXMLCharacters(String s) {
    return s.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
  }

  public boolean hasImportedModel(SModelDescriptor modelDescriptor) {
    if (!myModelRootManager.isFindUsagesSupported()) return false;
    Set<String> strings = (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel))
      ? Collections.singleton(modelDescriptor.toString()) : Collections.<String>emptySet();
    if (!myModelRootManager.containsSomeString(this, strings)) return false;
    getSModel();
    if (mySModel != null) {
      return mySModel.hasImportedModel(modelDescriptor.getSModelReference());
    }
    return false;
  }

  public boolean hasLanguage(Language language) {
    if (!myModelRootManager.isFindUsagesSupported()) return false;
    Set<String> strings = (mySModel == null || !SModelRepository.getInstance().isChanged(mySModel))
      ? Collections.singleton(language.getNamespace()) : Collections.<String>emptySet();
    if (!myModelRootManager.containsSomeString(this, strings)) return false;
    getSModel();
    if (mySModel != null) {
      return mySModel.hasLanguage(language.getModuleReference());
    }
    return false;
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
    SModelRepository.getInstance().deleteModel(this);
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
    if (!myModelRootManager.isFindUsagesSupported()) return Collections.emptySet();
    getSModel();
    Set<SNode> result = new HashSet<SNode>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addInstances(root, concept, result, scope);
      }
    }
    return result;
  }

  public Set<SNode> findExactInstances(AbstractConceptDeclaration concept, IScope scope) {
    if (!myModelRootManager.isFindUsagesSupported()) return Collections.emptySet();
    getSModel();
    Set<SNode> result = new HashSet<SNode>();
    if (mySModel != null) {
      for (SNode root : mySModel.getRoots()) {
        addExactInstances(root, concept, result, scope);
      }
    }
    return result;
  }

  public synchronized FastNodeFinder getFastNodeFinder() {
    if (myFastNodeFinder == null) {
      myFastNodeFinder = createFastNodeFinder();
    }
    return myFastNodeFinder;
  }

  protected FastNodeFinder createFastNodeFinder() {
    return new DefaultFastNodeFinder(this);
  }

  @Override
  public synchronized void disposeFastNodeFinder() {
    if(myFastNodeFinder != null) {
      myFastNodeFinder.dispose();
      myFastNodeFinder = null;
    }
  }

  private void addInstances(SNode current, AbstractConceptDeclaration concept, Set<SNode> result, IScope scope) {
    if (current.isInstanceOfConcept(concept)) result.add(current);
    for (SNode child : current.getChildren()) {
      addInstances(child, concept, result, scope);
    }
  }

  private void addExactInstances(SNode current, AbstractConceptDeclaration concept, Set<SNode> result, IScope scope) {
    if (current.getConceptFqName().equals(NameUtil.nodeFQName(concept))) {
      result.add(current);
    }
    for (SNode child : current.getChildren()) {
      addExactInstances(child, concept, result, scope);
    }
  }

  public String toString() {
    return getSModelReference().toString();
  }

  public boolean isTransient() {
    return myTransient;
  }

  private synchronized Map<String, String> getMetaData_internal() {
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
    ModelAccess.assertLegalWrite();

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
    String attributeValue = getAttribute(VERSION);
    if (attributeValue == null) {
      return -1;
    }
    try {
      return Integer.parseInt(attributeValue);
    } catch (NumberFormatException e) {
      return -1;
    }
  }

  public int getNameVersion() {
    try {
      return Integer.parseInt(getAttribute(NAME_VERSION));
    } catch (NumberFormatException e) {
      return -1;
    }
  }

  public void setVersion(int newVersion) {
    System.err.println("setting version for model " + this + ": " + newVersion);
    setAttribute(VERSION, "" + newVersion);
  }

  public void setNameVersion(int newNameVersion) {
    setAttribute(VERSION, "" + newNameVersion);
  }

  public void setTransient(boolean b) {
    myTransient = b;
  }

  /*package*/ void changeSModelUID(SModelReference newModelReference) {
    myModelReference = newModelReference;
    getSModel().changeModelReference(newModelReference);
  }

  /*package*/
  public void setModelFile(IFile file) {
    myModelFile = file;
  }

  @Override
  protected void updateDiskTimestamp() {
    myDiskTimestamp = myModelFile.lastModified();
  }
}
