package jetbrains.mps.smodel;

import jetbrains.mps.component.Dependency;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.reloading.ReloadUtils;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.CommandKind;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import javax.swing.Timer;
import java.io.File;
import java.util.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

/**
 * Author: Sergey Dmitriev
 * Created Jan 29, 2004
 */
public class SModelRepository extends SModelAdapter {
  private static final Logger LOG = Logger.getLogger(SModelRepository.class);

  private Set<SModelDescriptor> myModelDescriptors = new HashSet<SModelDescriptor>();
  private Map<SModelDescriptor, Long> myChangedModels = new HashMap<SModelDescriptor, Long>();
  private Map<SModelUID, SModelDescriptor> myUIDToModelDescriptorMap = new HashMap<SModelUID, SModelDescriptor>();
  private Map<SModelDescriptor, HashSet<ModelOwner>> myModelToOwnerMap = new HashMap<SModelDescriptor, HashSet<ModelOwner>>();
  private Set<SModelDescriptor> myModelsWithNoOwners = new HashSet<SModelDescriptor>();
  private List<RepositoryListener> myListeners = new ArrayList<RepositoryListener>();
  private List<SModelRepositoryListener> mySModelRepositoryListeners = new ArrayList<SModelRepositoryListener>();
  private WeakSet<SModelRepositoryListener> myWeakSModelRepositoryListeners = new WeakSet<SModelRepositoryListener>();

  private MPSModuleRepository myModuleRepository;

  private Map<String, List<SModelCommandListener>> myCommandListeners = new HashMap<String, List<SModelCommandListener>>();
  private Map<ILanguageModelListenerOwner, List<SModelCommandListener>> myOwnersToListeners = new HashMap<ILanguageModelListenerOwner, List<SModelCommandListener>>();

  private boolean myInChangedModelsReloading = false;

  private SModelCommandListener myListener = new SModelCommandListener() {
    public void modelChangedInCommand(List<SModelEvent> events) {
      someModelChangedInCommand(events);
    }
  };

  public SModelRepository() {
  }

  @Dependency
  public void setModuleRepository(MPSModuleRepository moduleRepository) {
    myModuleRepository = moduleRepository;
  }

  public static SModelRepository getInstance() {
    return ApplicationComponents.getInstance().getComponent(SModelRepository.class);
  }

  public void registerLanguageModelListener(String language, SModelCommandListener listener, ILanguageModelListenerOwner owner) {
    if (myCommandListeners.get(language) == null) {
      myCommandListeners.put(language, new ArrayList<SModelCommandListener>());
    }

    myCommandListeners.get(language).add(listener);


    if (myOwnersToListeners.get(owner) == null) {
      myOwnersToListeners.put(owner, new ArrayList<SModelCommandListener>());
    }

    myOwnersToListeners.get(owner).add(listener);
  }

  public void unregisterLanguageModelListeners(ILanguageModelListenerOwner owner) {
    if (myOwnersToListeners.get(owner) == null) {
      return;
    }

    List<SModelCommandListener> listeners = myOwnersToListeners.get(owner);

    for (List<SModelCommandListener> list : myCommandListeners.values()) {
      list.removeAll(listeners);
    }

    myOwnersToListeners.remove(owner);
  }

  private void someModelChangedInCommand(List<SModelEvent> events) {
    if (events.size() == 0) return;
    SModelDescriptor model = events.get(0).getModel().getModelDescriptor();
    for (String language : model.getSModel().getLanguageNamespaces(GlobalScope.getInstance())) {
      List<SModelCommandListener> listeners = myCommandListeners.get(language);
      if (listeners != null) {
        for (SModelCommandListener l : listeners) {
          try {
            l.modelChangedInCommand(Collections.unmodifiableList(events));
          } catch (Throwable t) {
            LOG.error(t);
          }
        }
      }
    }
  }

  public void refreshModels(Set<SModelDescriptor> skip) {
    LOG.debug("Model refresh");
    for (SModelDescriptor m : new ArrayList<SModelDescriptor>(myUIDToModelDescriptorMap.values())) {
      if (!skip.contains(m)) {
        m.refresh();
      }
    }
    LOG.debug("Model refresh done");
  }

  public void refreshModels() {
    refreshModels(new HashSet<SModelDescriptor>());
  }

  public boolean containsModelWithFile(@NotNull IFile modelFile) {
    return findModel(modelFile) != null;
  }

  @Nullable
  public SModelDescriptor findModel(@NotNull IFile modelFile) {
    String canonicalPath = modelFile.getCanonicalPath();

    for (SModelDescriptor model : getAllModelDescriptors()) {
      if (model.getModelFile() == null) continue;

      String modelCanonicalPath = model.getModelFile().getCanonicalPath();
      if (canonicalPath.equals(modelCanonicalPath)) return model;
    }

    return null;
  }

  public void addRepositoryListener(@NotNull RepositoryListener l) {
    myListeners.add(l);
  }

  public void removeRepositoryListener(@NotNull RepositoryListener l) {
    myListeners.remove(l);
  }

  public void addModelRepositoryListener(@NotNull SModelRepositoryListener l) {
    mySModelRepositoryListeners.add(l);
  }

  public void addWeakModelRepositoryListener(@NotNull SModelRepositoryListener l) {
    myWeakSModelRepositoryListeners.add(l);
  }

  public void removeModelRepositoryListener(@NotNull SModelRepositoryListener l) {
    mySModelRepositoryListeners.remove(l);
    myWeakSModelRepositoryListeners.remove(l);
  }

  @NotNull
  public List<SModelDescriptor> getAllModelDescriptors() {
    return new ArrayList<SModelDescriptor>(myModelDescriptors);
  }

  @NotNull
  public List<SModelDescriptor> getModelDescriptorsByModelName(@NotNull String modelName) {
    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    for (SModelDescriptor d : getAllModelDescriptors()) {
      if (modelName.equals(d.getLongName())) {
        result.add(d);
      }
    }
    return result;
  }

  public void addOwnerForDescriptor(@NotNull SModelDescriptor modelDescriptor, @NotNull ModelOwner owner) {
    HashSet<ModelOwner> owners = myModelToOwnerMap.get(modelDescriptor);
    if (owners == null) {
      owners = new HashSet<ModelOwner>();
      myModelToOwnerMap.put(modelDescriptor, owners);
      myUIDToModelDescriptorMap.put(modelDescriptor.getModelUID(), modelDescriptor);
    }
    myModelsWithNoOwners.remove(modelDescriptor);
    owners.add(owner);
    fireRepositoryChanged();
  }

  public boolean isRegisteredModelDescriptor(@NotNull SModelDescriptor modelDescriptor, @NotNull ModelOwner owner) {
    HashSet<ModelOwner> owners = myModelToOwnerMap.get(modelDescriptor);
    return owners != null && owners.contains(owner);
  }

  public void registerModelDescriptor(@NotNull SModelDescriptor modelDescriptor, @NotNull ModelOwner owner) {
    SModelUID modelUID = modelDescriptor.getModelUID();
    SModelDescriptor registeredModel = myUIDToModelDescriptorMap.get(modelUID);
    LOG.assertLog(registeredModel == null || registeredModel == modelDescriptor,
            "Another model \"" + modelUID + "\" is already registered!");
    HashSet<ModelOwner> owners = myModelToOwnerMap.get(modelDescriptor);
    LOG.assertLog(owners == null ||
            !owners.contains(owner),
            "Another model \"" + modelUID + "\" is already registered!");
    myUIDToModelDescriptorMap.put(modelUID, modelDescriptor);
    myModelDescriptors.add(modelDescriptor);
    if (owners == null) {
      owners = new HashSet<ModelOwner>();
      myModelToOwnerMap.put(modelDescriptor, owners);
    }
    myModelsWithNoOwners.remove(modelDescriptor);
    owners.add(owner);
    modelDescriptor.addWeakModelListener(this);
    modelDescriptor.addModelCommandListener(myListener);
    fireRepositoryChanged();
    fireModelAdded(modelDescriptor);
  }

  public void unRegisterModelDescriptor(@NotNull SModelDescriptor modelDescriptor, @NotNull ModelOwner owner) {
    HashSet<ModelOwner> modelOwners = myModelToOwnerMap.get(modelDescriptor);
    if (modelOwners != null && modelOwners.contains(owner)) {
      modelOwners.remove(owner);
      if (modelOwners.isEmpty()) {
        myModelsWithNoOwners.add(modelDescriptor);
      }

      // DO NOT REMOVE MODEL FROM REPOSITORY EVEN IF NO MORE OWNERS
      // THE REPOSITORY IS CLEANED UP AFTER COMMAND IS COMPLETED
    }

    fireRepositoryChanged();
  }

  public void unRegisterModelDescriptors(@NotNull ModelOwner owner) {
    for (SModelUID uid : new HashMap<SModelUID, SModelDescriptor>(myUIDToModelDescriptorMap).keySet()) {
      SModelDescriptor modelDescriptor = myUIDToModelDescriptorMap.get(uid);
      HashSet<ModelOwner> modelOwners = myModelToOwnerMap.get(modelDescriptor);
      if (modelOwners != null) {
        modelOwners.remove(owner);

        if (modelOwners.isEmpty()) {
          myModelsWithNoOwners.add(modelDescriptor);
        }
        // DO NOT REMOVE MODEL FROM REPOSITORY EVEN IF NO MORE OWNERS
        // THE REPOSITORY IS CLEANED UP AFTER COMMAND IS COMPLETED
      }
    }

    fireRepositoryChanged();
  }

  public void removeModelDescriptor(@NotNull SModelDescriptor modelDescriptor) {
    myModelDescriptors.remove(modelDescriptor);
    myUIDToModelDescriptorMap.remove(modelDescriptor.getModelUID());
    myChangedModels.remove(modelDescriptor);
    myModelToOwnerMap.remove(modelDescriptor);
    myModelsWithNoOwners.remove(modelDescriptor);
    fireModelRemoved(modelDescriptor);
//    modelDescriptor.removeModelListener(this);
    modelDescriptor.dispose();

  }

  public void removeUnusedDescriptors() {
    List<SModelDescriptor> descriptorsToRemove = new ArrayList<SModelDescriptor>();
    for (SModelDescriptor descriptor : new ArrayList<SModelDescriptor>(myModelsWithNoOwners)) {
      HashSet<ModelOwner> modelOwners = myModelToOwnerMap.get(descriptor);
      if (modelOwners == null || modelOwners.isEmpty()) {
        descriptorsToRemove.add(descriptor);
      } else {
        myModelsWithNoOwners.remove(descriptor);
      }
    }

    if (descriptorsToRemove.size() > 0) {
      for (SModelDescriptor descriptor : descriptorsToRemove) {
        removeModelDescriptor(descriptor);
      }
    }
  }

  @Nullable
  public SModelDescriptor getModelDescriptor(@NotNull SModel model) {
    return myUIDToModelDescriptorMap.get(model.getUID());
  }

  @Nullable
  public SModelDescriptor getModelDescriptor(@NotNull SModelUID modelUID) {
    return myUIDToModelDescriptorMap.get(modelUID);
  }

  @Nullable
  public SModelDescriptor getModelDescriptor(@NotNull SModelUID modelUID, @NotNull ModelOwner owner) {
    SModelDescriptor descriptor = myUIDToModelDescriptorMap.get(modelUID);
    if (descriptor == null) {
      return null;
    }
    HashSet<ModelOwner> modelOwners = myModelToOwnerMap.get(descriptor);
    if (modelOwners.contains(owner)) {
      return descriptor;
    }
    return null;
  }

  @NotNull
  public List<SModelDescriptor> getModelDescriptors(@NotNull String modelName, @NotNull ModelOwner owner) {
    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    for (SModelDescriptor descriptor : getModelDescriptors(owner)) {
      if (modelName.equals(descriptor.getLongName())) {
        result.add(descriptor);
      }
    }
    return result;
  }

  @NotNull
  public List<SModelDescriptor> getModelDescriptors(@NotNull ModelOwner modelOwner) {
    List<SModelDescriptor> list = new ArrayList<SModelDescriptor>();
    for (Map.Entry<SModelUID, SModelDescriptor> entry : myUIDToModelDescriptorMap.entrySet()) {
      SModelDescriptor descriptor = entry.getValue();
      HashSet<ModelOwner> modelOwners = myModelToOwnerMap.get(descriptor);
      if (modelOwners.contains(modelOwner)) {
        list.add(descriptor);
      }
    }
    return list;
  }

  public void modelChanged(@NotNull SModel model) {
    markChanged(model, true);
  }

  public void modelChangedDramatically(@NotNull SModel model) {
    markChanged(model, true);
  }

  public void markChanged(@NotNull SModel model, boolean b) {
    SModelDescriptor modelDescriptor = myUIDToModelDescriptorMap.get(model.getUID());
    if (modelDescriptor != null) { //i.e project model
      markChanged(modelDescriptor, b);
    }
  }

  public void renameUID(SModelDescriptor modelDescriptor, SModelUID newModelUID) {
    boolean contains0 = myUIDToModelDescriptorMap.containsKey(modelDescriptor.getModelUID());
    myUIDToModelDescriptorMap.remove(modelDescriptor.getModelUID());
    boolean contains1 = myModelDescriptors.contains(modelDescriptor);
    myModelDescriptors.remove(modelDescriptor);
    Long aLong = myChangedModels.get(modelDescriptor);
    myChangedModels.remove(modelDescriptor);
    HashSet<ModelOwner> owners = myModelToOwnerMap.get(modelDescriptor);
    myModelToOwnerMap.remove(modelDescriptor);
    boolean contains2 = myModelsWithNoOwners.contains(modelDescriptor);
    myModelsWithNoOwners.remove(modelDescriptor);

    if (modelDescriptor instanceof DefaultSModelDescriptor) {
      ((DefaultSModelDescriptor) modelDescriptor).changeSModelUID(newModelUID);
    }

    if (contains0) {
      myUIDToModelDescriptorMap.put(newModelUID, modelDescriptor);
    }
    if (contains1) {
      myModelDescriptors.add(modelDescriptor);
    }
    if (aLong != null) {
      myChangedModels.put(modelDescriptor, aLong);
    }
    myModelToOwnerMap.put(modelDescriptor, owners);
    if (contains2) {
      myModelsWithNoOwners.add(modelDescriptor);
    }

    markChanged(modelDescriptor, true);
    fireRepositoryChanged();
  }

  public void markChanged(@NotNull SModelDescriptor descriptor, boolean b) {
    LOG.assertLog(myModelDescriptors.contains(descriptor));

    if (b) {
      myChangedModels.put(descriptor, System.currentTimeMillis());
    } else {
      myChangedModels.remove(descriptor);
    }
  }

  public boolean isChanged(@NotNull SModel model) {
    for (SModelDescriptor m : myChangedModels.keySet()) {
      if (m.getSModel() == model) return true;
    }
    return false;
  }

  public boolean isChanged(@NotNull SModelDescriptor descriptor) {
    return myChangedModels.keySet().contains(descriptor);
  }

  public long getLastChangeTime(@NotNull SModelDescriptor descriptor) {
    if (myChangedModels.containsKey(descriptor)) {
      return myChangedModels.get(descriptor);
    } else if (descriptor != null) {
      return descriptor.timestamp();
    } else {
      return 0;
    }
  }


  @NotNull
  public <T extends MPSModuleOwner & ModelOwner> List<SModelDescriptor> getChangedModelsReleasedWhenReleasingOwner(@NotNull T owner) {
    Set<SModelDescriptor> changedModels = getChangedModels();

    //copying modelToOwnerMap
    Map<SModelDescriptor, HashSet<ModelOwner>> modelToOwnerMap = new HashMap<SModelDescriptor, HashSet<ModelOwner>>();
    for (SModelDescriptor md : myModelToOwnerMap.keySet()) {
      modelToOwnerMap.put(md, new HashSet<ModelOwner>(myModelToOwnerMap.get(md)));
    }//--copying

    //releasing own models
    Set<SModelDescriptor> releasedModels = collectReleasedModels(changedModels, modelToOwnerMap, owner);

    //releasing models from released modules
    Set<IModule> releasedModules = myModuleRepository.getModelsToBeRemoved(CollectionUtil.asSet((MPSModuleOwner) owner));
    for (IModule module : releasedModules) {
      releasedModels.addAll(collectReleasedModels(changedModels, modelToOwnerMap, module));
    }
    return new ArrayList<SModelDescriptor>(releasedModels);
  }

  @NotNull
  private <ModelOwner> Set<SModelDescriptor> collectReleasedModels(
          @NotNull Set<SModelDescriptor> changedModels,
          @NotNull Map<SModelDescriptor, HashSet<ModelOwner>> modelToOwnerMap,
          @NotNull ModelOwner owner) {
    Set<SModelDescriptor> releasedModels = new HashSet<SModelDescriptor>();
    for (SModelDescriptor modelDescriptor : changedModels) {
      HashSet<ModelOwner> modelOwners = modelToOwnerMap.get(modelDescriptor);
      if (modelOwners != null) {
        modelOwners.remove(owner);
        if (modelOwners.isEmpty()) releasedModels.add(modelDescriptor);
      }
    }

    return releasedModels;
  }

  @NotNull
  public Set<SModelDescriptor> getChangedModels() {
    Set<SModelDescriptor> result = new HashSet<SModelDescriptor>();
    for (SModelDescriptor md : myChangedModels.keySet()) {
      if (md.getModelFile() != null) result.add(md);
    }
    return result;
  }

  @NotNull
  public Set<SModelDescriptor> getMaybeTransientChangedModels() {
    return new HashSet<SModelDescriptor>(myChangedModels.keySet());
  }

  public void saveAll() {
    List<SModelDescriptor> descriptors = new ArrayList(myChangedModels.keySet());
    for (SModelDescriptor modelDescriptor : descriptors) {
      try {
        modelDescriptor.save();
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
    myChangedModels.clear();
  }

  public void reloadAll() {
    for (SModelDescriptor modelDescriptor : new HashSet<SModelDescriptor>(myModelToOwnerMap.keySet())) {
      modelDescriptor.reloadFromDisk();
    }
  }

  public boolean hasOwners(@NotNull SModelDescriptor modelDescriptor) {
    HashSet<ModelOwner> set = myModelToOwnerMap.get(modelDescriptor);
    return !(set == null || set.isEmpty());
  }

  @NotNull
  public Set<ModelOwner> getOwners(@NotNull SModelDescriptor modelDescriptor) {
    HashSet<ModelOwner> set = myModelToOwnerMap.get(modelDescriptor);
    if (set == null) return new HashSet<ModelOwner>();
    return new HashSet<ModelOwner>(set);
  }

  @NotNull
  public <M extends ModelOwner> Set<M> getOwners(
          @NotNull SModelDescriptor modelDescriptor,
          @NotNull Class<M> cls) {
    Set<M> result = new HashSet<M>();
    for (ModelOwner o : getOwners(modelDescriptor)) {
      if (cls.isInstance(o)) {
        result.add((M) o);
      }
    }
    return result;
  }

  public void tryToReloadModelsFromDisk(final JFrame frame) {
    if (myInChangedModelsReloading) {
      return;
    }

    Runnable command = new Runnable() {
      public void run() {
        myInChangedModelsReloading = true;
        try {
          final Set<SModelDescriptor> toReload = new HashSet<SModelDescriptor>();
          for (SModelDescriptor sm : getAllModelDescriptors()) {
            if (sm.needsReloading()) {
              toReload.add(sm);
            }
          }

          boolean needReloadAll = false;
          for (SModelDescriptor sm : toReload) {
            if (isChanged(sm)) {
              int result = JOptionPane.showConfirmDialog(frame,
                      "Model " + sm.getModelUID() + " changed on a disk. Do you want to discard memory changes?",
                      "Model Changed " + sm.getModelUID(), JOptionPane.YES_NO_OPTION);

              if (result == JOptionPane.YES_OPTION) {
                sm.reloadFromDisk();
                needReloadAll = true;
              } else {
                sm.save();
              }
            } else {
              sm.reloadFromDisk();
              needReloadAll = true;
            }
          }

          if (needReloadAll) {
            ReloadUtils.reloadAll(false);
          }
        } finally {
          myInChangedModelsReloading = false;
        }
      }
    };

    if (CommandProcessor.instance().getCurrentCommandKind() == CommandKind.GENERATION) {
      //ignore it during generation
      return;
    } else {
      //todo it's not very good
      CommandProcessor.instance().tryToExecuteLightweightCommand(command);
    }
  }

  private void fireRepositoryChanged() {
    for (RepositoryListener l : myListeners) {
      l.repositoryChanged();
    }
  }

  private void fireModelRemoved(SModelDescriptor modelDescriptor) {
    for (SModelRepositoryListener l : mySModelRepositoryListeners) {
      l.modelRemoved(modelDescriptor);
    }
    for (SModelRepositoryListener l : myWeakSModelRepositoryListeners) {
      l.modelRemoved(modelDescriptor);
    }
  }

   private void fireModelAdded(SModelDescriptor modelDescriptor) {
    for (SModelRepositoryListener l : mySModelRepositoryListeners) {
      l.modelAdded(modelDescriptor);
    }
    for (SModelRepositoryListener l : myWeakSModelRepositoryListeners) {
      l.modelAdded(modelDescriptor);
    }
  }
}