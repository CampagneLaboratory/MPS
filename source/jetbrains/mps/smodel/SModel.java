package jetbrains.mps.smodel;

import jetbrains.mps.externalResolve.ExternalResolver;
import jetbrains.mps.ide.command.CommandEvent;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.ICommandListener;
import jetbrains.mps.ide.command.undo.IUndoableAction;
import jetbrains.mps.ide.command.undo.UndoManager;
import jetbrains.mps.ide.command.undo.UnexpectedUndoException;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.smodel.languageLog.ModelLogger;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.util.QueryMethod;
import jetbrains.mps.util.annotation.ForDebug;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.*;

/**
 * Author: Sergey Dmitriev
 * Created Sep 16, 2003
 */
public class SModel implements Iterable<SNode> {
  public static final String TMP_MODEL = "tmpModel";

  private static final Logger LOG = Logger.getLogger(SModel.class);

  private Set<SModelListener> myListeners = new WeakSet<SModelListener>();
  private List<SModelCommandListener> myCommandListeners = new ArrayList<SModelCommandListener>();

  private List<SNode> myRoots = new ArrayList<SNode>();
  private SModelUID myUID = new SModelUID("unnamed", "");

  @ForDebug
  private Throwable myStackTrace;

  private boolean myDisposed;
  private boolean myLoading;

  private int myMaxImportIndex;
  private List<String> myLanguages = new ArrayList<String>();
  private List<String> myDevKits = new ArrayList<String>();
  private List<ImportElement> myImports = new ArrayList<ImportElement>();

  private Map<String, SNode> myIdToNodeMap = new HashMap<String, SNode>();
  private Map<String, SNode> myExternalResolveInfoToNodeMap = new HashMap<String, SNode>();

  private SModelEventTranslator myEventTranslator = new SModelEventTranslator();

  private HashMap<Object, Object> myUserObjects = new HashMap<Object, Object>();
  private SNode myLog;
  private boolean myUsesLog;

  public SModel(@NotNull SModelUID modelUID) {
    addSModelListener(myEventTranslator);
    CommandProcessor.instance().addCommandListener(myEventTranslator);
    myUID = modelUID;
  }

  public SModel() {
    this(SModelUID.fromString("test.model"));
  }

  @NotNull
  public SModelUID getUID() {
    return myUID;
  }

  @NotNull
  public String getShortName() {
    return myUID.getShortName();
  }

  public void runLoadingAction(@NotNull Runnable runnable) {
    boolean wasLoading = isLoading();
    if (!wasLoading) setLoading(true);
    try {
      runnable.run();
    } finally {
      setLoading(wasLoading);
    }
  }

  @NotNull
  public Iterator<SNode> iterator() {
    return roots();
  }

  @NotNull
  public String getStereotype() {
    return myUID.getStereotype();
  }

  @NotNull
  public String getLongName() {
    return myUID.getLongName();
  }

  public boolean usesLog() {
    return myUsesLog;
  }

  public int getVersion() {
    return new ModelLogger().getVersion(this);
  }

  public void setLog(SNode log) {
    myLog = log;
  }

  @Nullable
  public SNode getLog() {
    return myLog;
  }

  public void setUsesLog(boolean usesLog) {
    myUsesLog = usesLog;
  }


  @NotNull
  public Iterator<SNode> roots() {
    return myRoots.iterator();
  }

  @NotNull
  public List<SNode> getRoots() {
    return new ArrayList<SNode>(myRoots);
  }

  @NotNull
  public List<SNode> getRoots(@NotNull Condition<SNode> condition) {
    List<SNode> list = new LinkedList<SNode>();
    for (SNode node : myRoots) {
      if (condition.met(node)) list.add(node);
    }
    return list;
  }

  @NotNull
  public <N extends SNode> List<N> getRoots(@NotNull Class<N> cls) {
    return CollectionUtil.filter(cls, getRoots());
  }

  public List<BaseAdapter> getRootsAdapters() {
    List<BaseAdapter> result = new ArrayList<BaseAdapter>();
    for (SNode root : getRoots()) {
      result.add(root.getAdapter());
    }
    return result;
  }

  public <N extends BaseAdapter> List<N> getRootsAdapters(@NotNull Class<N> cls) {
    List<N> result = new ArrayList<N>();
    for (SNode root : getRoots()) {
      BaseAdapter a = root.getAdapter();
      if (cls.isInstance(a)) {
        result.add((N) a);
      }
    }
    return result;
  }


  public void addRoot(@NotNull BaseAdapter node) {
    addRoot(node.getNode());
  }

  public void removeRoot(@NotNull BaseAdapter node) {
    removeRoot(node.getNode());
  }


  public void addRoot(@NotNull SNode node) {
    if (myRoots.contains(node)) return;
    if (node.getModel() != this && node.getModel().isRoot(node)) {
      node.getModel().removeRoot(node);
    } else {
      SNode parent = node.getParent();
      if (parent != null) {
        parent.removeChild(node);
      }
    }

    myRoots.add(node);
    node.registerInModel(this);
    if (!isLoading()) UndoManager.instance().undoableActionPerformed(new UndoRootAddOrDelete(node, null, false));
    fireRootAddedEvent(node);
  }

  public void removeRoot(@NotNull SNode node) {
    if (myRoots.contains(node)) {
      String id = node.getId();
      myRoots.remove(node);
      node.unRegisterFromModel();
      if (!isLoading()) UndoManager.instance().undoableActionPerformed(new UndoRootAddOrDelete(node, id, true));
      fireRootRemovedEvent(node);
    }
  }

  public void addSModelListener(@NotNull SModelListener listener) {
    LOG.assertLog(!myListeners.contains(listener), "Duplicated listener");
    myListeners.add(listener);
  }

  public boolean hasSModelListener(@NotNull SModelListener listener) {
    return myListeners.contains(listener);
  }

  public boolean hasSModelCommandListener(@NotNull SModelCommandListener listener) {
    return myCommandListeners.contains(listener);
  }

  public void removeSModelListener(@NotNull SModelListener listener) {
    myListeners.remove(listener);
  }

  public boolean setLoading(boolean loading) {
    boolean wasLoading = myLoading;
    myLoading = loading;
    return wasLoading;
  }

  public boolean isLoading() {
    return myLoading;
  }

  @ForDebug
  @NotNull
  public Throwable getCreationStackTrace() {
    return myStackTrace;
  }

  @ForDebug
  public void fillInStackTrace(Throwable t) {
    myStackTrace = t;
  }

  public SModelDescriptor getModelDescriptor() {
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(this);
    return modelDescriptor;
  }

  private boolean canFireEvent() {
    return !myLoading /*&& !UndoManager.instance().isUndoOrRedoInProgress() */;
  }

  void fireDevKitAddedEvent(@NotNull String devkitNamespace) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.devkitAdded(new SModelDevKitEvent(this, devkitNamespace));
    }
  }

  void fireDevKitRemovedEvent(@NotNull String devkitNamespace) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.devkitRemoved(new SModelDevKitEvent(this, devkitNamespace));
    }
  }

  void fireLanguageAddedEvent(@NotNull String languageNamespace) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.languageAdded(new SModelLanguageEvent(this, languageNamespace));
    }
  }

  void fireLanguageRemovedEvent(@NotNull String languageNamespace) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.languageRemoved(new SModelLanguageEvent(this, languageNamespace));
    }
  }

  void fireImportAddedEvent(@NotNull SModelUID modelUID) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.importAdded(new SModelImportEvent(this, modelUID));
    }
  }

  void fireImportRemovedEvent(@NotNull SModelUID modelUID) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.importAdded(new SModelImportEvent(this, modelUID));
    }
  }

  void fireRootAddedEvent(@NotNull SNode root) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.rootAdded(new SModelRootEvent(this, root, true));
    }
  }

  void fireRootRemovedEvent(@NotNull SNode root) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.rootRemoved(new SModelRootEvent(this, root, false));
    }
  }

  void firePropertyChangedEvent(@NotNull SNode node,
                                @NotNull String property,
                                @Nullable String oldValue,
                                @Nullable String newValue,
                                boolean addedOrRemoved,
                                boolean isRemoved) {
    if (!canFireEvent()) return;
    if (addedOrRemoved) {
      for (SModelListener sModelListener : copyListeners()) {
        sModelListener.propertyChanged(new SModelPropertyAddedOrRemovedEvent(this, property, node, oldValue, newValue, isRemoved));
      }
    } else {
      for (SModelListener sModelListener : copyListeners()) {
        sModelListener.propertyChanged(new SModelPropertyEvent(this, property, node, oldValue, newValue));
      }
    }
  }

  void fireChildAddedEvent(@NotNull SNode parent,
                           @NotNull String role,
                           @NotNull SNode child,
                           int childIndex) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.childAdded(new SModelChildEvent(this, true, parent, role, childIndex, child));
    }                                                                 
  }

  void fireChildRemovedEvent(@NotNull SNode parent,
                             @NotNull String role,
                             @NotNull SNode child,
                             int childIndex) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.childRemoved(new SModelChildEvent(this, false, parent, role, childIndex, child));
    }
  }

  void fireReferenceAddedEvent(@NotNull SReference reference) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.referenceAdded(new SModelReferenceEvent(this, reference, true));
    }
  }

  void fireReferenceRemovedEvent(@NotNull SReference reference) {
    if (!canFireEvent()) return;
    for (SModelListener sModelListener : copyListeners()) {
      sModelListener.referenceRemoved(new SModelReferenceEvent(this, reference, false));
    }
  }

  private void fireSModelChangedInCommandEvent(@NotNull List<SModelEvent> events) {
    for (SModelCommandListener l : copyCommandListeners()) {
      l.modelChangedInCommand(events);
    }
  }

  @NotNull
  private List<SModelListener> copyListeners() {
    List<SModelListener> result = new ArrayList<SModelListener>();
    for (SModelListener l : myListeners) {
      result.add(l);
    }
    return result;
  }

  @NotNull
  private List<SModelCommandListener> copyCommandListeners() {
    return new LinkedList<SModelCommandListener>(myCommandListeners);
  }

  public void addSModelCommandListener(@NotNull SModelCommandListener listener) {
    LOG.assertLog(!myCommandListeners.contains(listener), "Duplicated listener");
    myCommandListeners.add(listener);
  }

  public void removeSModelCommandListener(@NotNull SModelCommandListener listener) {
    myCommandListeners.remove(listener);
  }

  @NotNull
  List<SModelListener> getListeners() {
    ArrayList<SModelListener> result = new ArrayList<SModelListener>(CollectionUtil.iteratorAsList(myListeners.iterator()));
    result.remove(myEventTranslator);
    return result;
  }

  @NotNull
  List<SModelCommandListener> getCommandListeners() {
    return new ArrayList<SModelCommandListener>(myCommandListeners);
  }

  public boolean isRoot(@Nullable SNode node) {
    return myRoots.contains(node);
  }

  public boolean hasLanguage(@NotNull String languageNamespace) {
    for (String languageNamespase : getLanguageNamespaces()) {
      if (languageNamespase.equals(languageNamespace)) return true;
    }
    return false;
  }

  public void addLanguage(@NotNull Language language) {
    addLanguage(language.getModuleUID());
  }

  public void addLanguage(@NotNull String languageNamespace) {
    if (!myLanguages.contains(languageNamespace)) {
      myLanguages.add(languageNamespace);
      fireLanguageAddedEvent(languageNamespace);
    }
  }

  public void deleteLanguage(@NotNull String languageNamespace) {
    myLanguages.remove(languageNamespace);
    fireLanguageRemovedEvent(languageNamespace);
  }

  public boolean hasDevKit(String devKit) {
    for (String devkit : myDevKits) {
      if (devkit.equals(devKit)) {
        return true;
      }
    }
    return false;
  }

  public void addDevKit(@NotNull DevKit devKit) {
    addDevKit(devKit.getName());
  }

  public void addDevKit(@NotNull String fqName) {
    if (!myDevKits.contains(fqName)) {
      myDevKits.add(fqName);
      fireDevKitAddedEvent(fqName);
    }
  }

  public void deleteDevKit(@NotNull String fqName) {
    myDevKits.remove(fqName);
    fireDevKitRemovedEvent(fqName);
  }

  @NotNull
  public List<Language> getLanguages(@NotNull IScope scope) {
    ArrayList<Language> languages = new ArrayList<Language>();

    for (String languageNamespace : myLanguages) {
      Language language = scope.getLanguage(languageNamespace);
      if (language != null) {
        languages.add(language);
      } else {
        LOG.error("Language \"" + languageNamespace + "\" isn't visible in scope " + scope + " . Used by model \"" + getUID() +
                "\"\nAdd this language to the LANGUAGES section of the project properties");
      }
    }

    for (String dk : getDevKitNamespaces()) {
      DevKit devKit = scope.getDevKit(dk);
      if (devKit != null) {
        for (Language l : devKit.getExportedLanguages()) {
          if (!languages.contains(l)) {
            languages.add(l);
          }
        }
      }
    }

//    if (languages.isEmpty()) {
//      LOG.error("Model \"" + getUID() + "\" has no languages !!!");
//    }

    return languages;
  }

  public List<DevKit> getDevkits(@NotNull IScope scope) {
    List<DevKit> result = new ArrayList<DevKit>();
    for (String dk : getDevKitNamespaces()) {
      DevKit devKit = scope.getDevKit(dk);
      if (devKit != null) {
        result.add(devKit);
      } else {
        LOG.error("Can't find devkit " + dk + " in scope " + scope);
      }
    }
    return result;
  }


  /**
   * @deprecated
   * If you want to get all explicitly imported languagese getExplicitlyImportedLanguages()
   * If you want to get all imported languages use the method with the same name but with
   * IScope parameter
   */
  @NotNull
  public List<String> getLanguageNamespaces() {
    return getLanguageNamespaces(GlobalScope.getInstance());
  }

  @NotNull
  public List<String> getLanguageNamespaces(IScope scope) {
    ArrayList<String> result = new ArrayList<String>(myLanguages);
    for (String dk : getDevKitNamespaces()) {
      DevKit devKit = scope.getDevKit(dk);
      if (devKit != null) {
        for (Language l : devKit.getExportedLanguages()) {
          if (!result.contains(l.getNamespace())) {
            result.add(l.getNamespace());
          }
        }
      }
    }
    return result;
  }

  @NotNull
  public List<String> getDevKitNamespaces() {
    return new ArrayList<String>(myDevKits);
  }

  public BaseAdapter getRootAdapterByName(@NotNull String name) {
    return BaseAdapter.fromNode(getRootByName(name));
  }


  @Nullable
  public SNode getRootByName(@NotNull String name) {
    for (SNode root : getRoots()) {
      if (name.equals(root.getName())) return root;
    }
    return null;
  }

  @NotNull
  public List<String> getExplicitlyImportedLanguages() {
    return new ArrayList<String>(myLanguages);
  }


  public boolean hasImportedModel(@NotNull SModelUID modelUID) {
    return getImportElement(modelUID) != null;
  }

  public void addImportedModel(@NotNull SModelUID modelUID) {
    addImportElement(modelUID);
  }

  void addImportElement(@NotNull SModelUID modelUID) {
    ImportElement importElement = getImportElement(modelUID);
    if (importElement != null) return;
    importElement = new ImportElement(modelUID, ++myMaxImportIndex);
    myImports.add(importElement);
    fireImportAddedEvent(modelUID);
  }

  void addImportElement(@NotNull SModelUID modelUID, int referenceId) {
    ImportElement importElement = new ImportElement(modelUID, referenceId);
    myImports.add(importElement);
    fireImportAddedEvent(modelUID);
  }

  @Nullable
  ImportElement getImportElement(@NotNull SModelUID modelUID) {
    for (ImportElement importElement : myImports) {
      if (importElement.getModelUID().equals(modelUID)) {
        return importElement;
      }
    }
    return null;
  }


  public void deleteImportedModel(@NotNull SModelUID modelUID) {
    ImportElement importElement = getImportElement(modelUID);
    if (importElement != null) {
      myImports.remove(importElement);
      fireImportRemovedEvent(modelUID);
    }
  }

  public void deleteImportedModel(@NotNull SModel model) {
    ImportElement importElement = getImportElement(model.getUID());
    if (importElement != null) {
      myImports.remove(importElement);
      fireImportRemovedEvent(model.getUID());
    }
  }

  @NotNull
  public List<SModelUID> getImportedModelUIDs() {
    List<SModelUID> uids = new LinkedList<SModelUID>();
    for (ImportElement importElement : myImports) {
      uids.add(importElement.getModelUID());
    }
    return Collections.unmodifiableList(uids);
  }

  @Nullable
  SModelUID getImportedModelUID(int referenceID) {
    for (ImportElement importElement : myImports) {
      if (importElement.getReferenceID() == referenceID) {
        return importElement.getModelUID();
      }
    }
    return null;
  }

  @NotNull
  public Iterator<SModelDescriptor> importedModels(@NotNull IScope scope) {
    List<SModelDescriptor> modelsList = new LinkedList<SModelDescriptor>();
    for (ImportElement importElement : myImports) {
      SModelUID modelUID = importElement.getModelUID();
      SModelDescriptor modelDescriptor = scope.getModelDescriptor(modelUID);
      if (modelDescriptor != null) {
        modelsList.add(modelDescriptor);
      } else {
//        System.out.println("kurlik kurlik. set break point here");
        scope.getModelDescriptor(modelUID);
        LOG.errorWithTrace("Couldn't find model descriptor for imported model: \"" + modelUID + "\" in: \"" + getUID() + "\"");
      }
    }
    return modelsList.iterator();
  }

  public List<SModelDescriptor> allImportedModels(IScope scope) {
    SModelDescriptor sourceModel = getModelDescriptor();
    List<SModelDescriptor> list = new LinkedList<SModelDescriptor>();
    List<Language> languages = sourceModel.getSModel().getLanguages(scope);
    for (Language language : languages) {
      for (SModelDescriptor accessoryModels : language.getAccessoryModels()) {
        if (accessoryModels != sourceModel && !list.contains(accessoryModels))
          list.add(accessoryModels);
      }
    }

    List<DevKit> devkits = sourceModel.getSModel().getDevkits(scope);
    for (DevKit dk : devkits) {
      list.addAll(dk.getExportedModelDescriptors());
    }

    Iterator<SModelDescriptor> imports = sourceModel.getSModel().importedModels(scope);
    while (imports.hasNext()) {
      SModelDescriptor importedModel = imports.next();
      if (importedModel != sourceModel && !list.contains(importedModel)) {
        list.add(importedModel);
      }
    }
    return list;
  }

  @NotNull
  Iterator<ImportElement> importElements() {
    return myImports.iterator();
  }

  public boolean isImported(@NotNull SModel model) {
    return getImportElement(model.getUID()) != null;
  }

  public void setMaxImportIndex(int i) {
    myMaxImportIndex = i;
  }

  public int getMaxImportIndex() {
    return myMaxImportIndex;
  }

  @NotNull
  public String toString() {
    return this.getUID().toString();
  }

  @Nullable
  public SNode getNodeById(String nodeId) {
    return myIdToNodeMap.get(nodeId);
  }

  public Set<String> getNodeIds() {
    return new HashSet<String>(myIdToNodeMap.keySet());
  }

  public boolean containsNode(String id) {
    return myIdToNodeMap.containsKey(id);
  }

  @Nullable
  public SNode getNodeByExtResolveInfo(@NotNull String extResolveInfo) {
    if (!isExternallyResolvable()) return null;
    if (ExternalResolver.isEmptyExtResolveInfo(extResolveInfo)) return null;
    SNode node = myExternalResolveInfoToNodeMap.get(extResolveInfo);
    if (node != null) {
      if (ExternalResolver.doesNodeMatchERI(extResolveInfo, node)) {
        return node;
      } else {
        return findNodeWithExtResolveInfo(extResolveInfo);
      }
    } else {
      return findNodeWithExtResolveInfo(extResolveInfo);
    }
  }

  @Nullable
  private SNode findNodeWithExtResolveInfo(@NotNull String extResolveInfo) {
    SNode targetNode = ExternalResolver.findTargetNode(this, extResolveInfo);
    if (targetNode != null) {
      myExternalResolveInfoToNodeMap.put(extResolveInfo, targetNode);
    }
    return targetNode;
  }

  public void loadCachedNodeExtResolveInfo(@NotNull SNode node, @NotNull String extResolveInfo) {
    if (!ExternalResolver.isEmptyExtResolveInfo(extResolveInfo)) {
      myExternalResolveInfoToNodeMap.put(extResolveInfo, node);
    }
  }

  public void setNodeExtResolveInfo(@NotNull SNode node, @NotNull String extResolveInfo) {
    if (!isExternallyResolvable()) {
      return;
    }
    if (node.getModel() != this) {
      LOG.error("trying to cache in model" + this + "ext resolve info for node from another model, namely " + node.getModel());
      return;
    }
    if (!ExternalResolver.isEmptyExtResolveInfo(extResolveInfo)) {
      myExternalResolveInfoToNodeMap.put(extResolveInfo, node);
      SModelRepository.getInstance().markChanged(this, true);
      return;
    }
  }


  public void setNodeId(@NotNull String id, @NotNull SNode node) {
    SNode existingNode = myIdToNodeMap.get(id);
    if (existingNode != null && existingNode != node) {
      LOG.errorWithTrace("couldn't set id=" + id + " to node: " + node.getDebugText() + "\nnode with this id exists: " + existingNode.getDebugText());
      return;
    }
    myIdToNodeMap.put(id, node);
  }

  public void removeNodeId(@NotNull String id) {
    myIdToNodeMap.remove(id);
  }

  @NotNull
  public Collection<SNode> getAllNodesWithIds() {
    Collection<SNode> nodes = myIdToNodeMap.values();
    return Collections.unmodifiableCollection(nodes);
  }

  public boolean isExternallyResolvable() {
    SModelDescriptor modelDescriptor = getModelDescriptor();
    if (modelDescriptor == null) return false;
    return modelDescriptor.isExternallyResolvable();
  }

  public boolean isNotEditable() {
    SModelDescriptor modelDescriptor = getModelDescriptor();
    assert modelDescriptor != null;
    return modelDescriptor.isNotEditable();
  }

  public void clear() {
    List<SNode> roots = new LinkedList<SNode>(myRoots);
    for (SNode root : roots) {
      root.delete();
    }
  }

  public void dispose() {
    myDisposed = true;
    myCommandListeners.clear();
    myListeners.clear();
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  public void validateLanguagesAndImports() {
    Set<String> usedLanguages = new HashSet<String>(getLanguageNamespaces(GlobalScope.getInstance()));
    Set<SModelUID> importedModels = new HashSet<SModelUID>();
    for (SModelDescriptor sm : allImportedModels(GlobalScope.getInstance())) {
      importedModels.add(sm.getModelUID());
    }
  //  Set<SModelUID> importedModels = new HashSet<SModelUID>(getImportedModelUIDs());
    List<SNode> nodes = allNodes();
    for (SNode node : nodes) {
      String languageNamespace = node.getLanguageNamespace();
      if (!usedLanguages.contains(languageNamespace)) {
        usedLanguages.add(languageNamespace);
        addLanguage(languageNamespace);
      }

      List<SReference> references = node.getReferences();
      for (SReference reference : references) {
        if (reference.isExternal()) {
          SModelUID targetModelUID = reference.getTargetModelUID();
          if (!importedModels.contains(targetModelUID)) {
            addImportedModel(targetModelUID);
            importedModels.add(targetModelUID);
          }
        }
      }
    }
    importedModels.clear();
  }

  public SNode getNodeByCondition(Condition<SNode> c) {
    for (SNode node : myIdToNodeMap.values()) {
      if (c.met(node)) {
        return node;
      }
    }
    return null;
  }


  /*package*/
  static class ImportElement {
    private SModelUID myModelDescriptor;
    private int myReferenceID;

    public ImportElement(SModelUID modelUID, int referenceID) {
      myModelDescriptor = modelUID;
      myReferenceID = referenceID;
    }

    public SModelUID getModelUID() {
      return myModelDescriptor;
    }

    public int getReferenceID() {
      return myReferenceID;
    }
  }

  private static class UndoRootAddOrDelete implements IUndoableAction {
    private SNode myRoot;
    private String myId;
    private boolean myAdd;

    UndoRootAddOrDelete(SNode root, String id, boolean isAdd) {
      myId = id;
      myRoot = root;
      myAdd = isAdd;
    }

    public void undo() throws UnexpectedUndoException {
      SModel semanticModel = myRoot.getModel();
      if (myAdd) {
        semanticModel.addRoot(myRoot);
        myRoot.setId(myId);
      } else {
        semanticModel.removeRoot(myRoot);
      }
      UndoManager.instance().undoableActionPerformed(new UndoRootAddOrDelete(myRoot, null, !myAdd));
    }
  }

  private class SModelEventTranslator implements ICommandListener, SModelListener {
    private List<SModelEvent> myEvents = new ArrayList<SModelEvent>();

    public void commandStarted(@NotNull CommandEvent event) {
      myEvents.clear();
    }

    public void languageAdded(SModelLanguageEvent event) {
      myEvents.add(event);
    }

    public void languageRemoved(SModelLanguageEvent event) {
      myEvents.add(event);
    }

    public void importAdded(SModelImportEvent event) {
      myEvents.add(event);
    }

    public void importRemoved(SModelImportEvent event) {
      myEvents.add(event);
    }

    public void rootAdded(SModelRootEvent event) {
      myEvents.add(event);
    }

    public void rootRemoved(SModelRootEvent event) {
      myEvents.add(event);
    }

    public void beforeRootRemoved(SModelRootEvent event) {
      myEvents.add(event);
    }

    public void propertyChanged(SModelPropertyEvent event) {
      myEvents.add(event);
    }

    public void childAdded(SModelChildEvent event) {
      myEvents.add(event);
    }

    public void childRemoved(SModelChildEvent event) {
      myEvents.add(event);
    }

    public void referenceAdded(SModelReferenceEvent event) {
      myEvents.add(event);
    }

    public void referenceRemoved(SModelReferenceEvent event) {
      myEvents.add(event);
    }

    public void devkitAdded(SModelDevKitEvent event) {
      myEvents.add(event);
    }

    public void devkitRemoved(SModelDevKitEvent event) {
      myEvents.add(event);
    }

    public void beforeCommandFinished(@NotNull CommandEvent event) {
    }

    public void commandFinished(@NotNull CommandEvent event) {
      if (myEvents.size() > 0) {
        fireSModelChangedInCommandEvent(new ArrayList<SModelEvent>(myEvents));
      }
    }
  }

  @Nullable
  public Object getUserObject(@NotNull Object key) {
    return myUserObjects.get(key);
  }

  public void putUserObject(@NotNull Object key,
                            @Nullable Object value) {
    myUserObjects.put(key, value);
  }

  public void removeUserObject(@NotNull Object key) {
    myUserObjects.remove(key);
  }

  public void removeAllUserObjects() {
    myUserObjects.clear();
  }

  @NotNull
  public List<SNode> allNodes() {
    SModel model = this;
    List<SNode> result = new LinkedList<SNode>();
    for (SNode root : model.getRoots()) {
      result.add(root);
      result.addAll(root.allChildren());
    }

    return result;
  }

  public List<SNode> allNodes(Condition<SNode> condition) {
    List<SNode> resultNodes = new LinkedList<SNode>();

    for (SNode node : getRoots()) {
      if (condition.met(node)) {
        resultNodes.add(node);
      }
      resultNodes.addAll(node.getSubnodes(condition));
    }

    return resultNodes;
  }

  public <E extends SNode> List<E> allNodes(Class<E> cls, Condition<E> condition) {
    List<E> result = new ArrayList<E>();
    SModelDescriptor modelDescriptor = getModelDescriptor();
    assert modelDescriptor != null;
    for (E e : (Iterable<E>) BaseAdapter.toNodes(modelDescriptor.getFastNodeFinder().getNodes(QueryMethod.getAdapterClass(cls)))) {
      if (condition.met(e)) {
        result.add(e);
      }
    }
    return result;
  }

  public <E extends SNode> List<E> allNodes(Class<E> cls) {
    return allNodes(cls, (Condition<E>) Condition.TRUE_CONDITION);
  }

  public <E extends BaseAdapter> List<E> allAdapters(final Class<E> cls) {
    return BaseAdapter.toAdapters(allNodes(new Condition<SNode>() {
      public boolean met(SNode object) {
        return cls.isInstance(BaseAdapter.fromNode(object));
      }
    }));
  }

  public <E extends BaseAdapter> List<E> allAdapters(final Class<E> cls, Condition<E> condition) {
    List<E> result = allAdapters(cls);
    Iterator<E> it = result.iterator();
    while (it.hasNext()) {
      E e = it.next();
      if (!condition.met(e)) {
        it.remove();
      }
    }
    return result;
  }



  public <SN extends BaseAdapter> List<SN> allAdaptersIncludingImported(IScope scope, final Class<SN> snodeClass) {
    return BaseAdapter.toAdapters(snodeClass, allNodesIncludingImported(scope, new Condition<SNode>() {
      public boolean met(SNode object) {
        return snodeClass.isInstance(BaseAdapter.fromNode(object));
      }
    }));
  }


  public <SN extends SNode> List<SN> allNodesIncludingImported(IScope scope, final Class<SN> snodeClass) {
    List<SModel> modelsList = new LinkedList<SModel>();
    modelsList.add(this);
    List<SModelDescriptor> modelDescriptors = allImportedModels(scope);
    for (SModelDescriptor descriptor : modelDescriptors) {
      modelsList.add(descriptor.getSModel());
    }

    List<SN> resultNodes = new LinkedList<SN>();
    for (SModel aModel : modelsList) {
      if (aModel.getStereotype().equals(SModelStereotype.JAVA_STUB)) {
        SModelDescriptor modelDescriptor = aModel.getModelDescriptor();
        assert modelDescriptor != null;
        resultNodes.addAll((Collection<? extends SN>) BaseAdapter.toNodes(modelDescriptor.getFastNodeFinder().getNodes(QueryMethod.getAdapterClass(snodeClass))));
      } else {
        resultNodes.addAll((Collection<? extends SN>) aModel.allNodes(new Condition<SNode>() {
          public boolean met(SNode object) {
            return snodeClass.isInstance(object);
          }
        }));
      }
    }
    return resultNodes;
  }

  public List<SNode> allNodesIncludingImported(IScope scope, Condition<SNode> condition) {
    List<SModel> modelsList = new LinkedList<SModel>();
    modelsList.add(this);
    List<SModelDescriptor> modelDescriptors = allImportedModels(scope);
    for (SModelDescriptor descriptor : modelDescriptors) {
      modelsList.add(descriptor.getSModel());
    }

    List<SNode> resultNodes = new LinkedList<SNode>();
    for (SModel aModel : modelsList) {
      resultNodes.addAll(aModel.allNodes(condition));
    }
    return resultNodes;
  }

  public void copyToSModel(final SModel targetModel) {
    final SModel sourceModel = this;
    targetModel.runLoadingAction(new Runnable() {
      public void run() {
        List<SNode> roots = sourceModel.getRoots();
        for (SNode node : roots) {
          SNode nodeClone = SNodeCopyUtil.cloneSNode(node, targetModel, false);
          targetModel.addRoot(nodeClone);
        }

        List<SNode> targetRoots = targetModel.getRoots();
        for (SNode targetNode : targetRoots) {
          updateReferences(targetNode);
        }
      }
    });
  }

  private void updateReferences(SNode node) {
    SModel targetModel = node.getModel();
    Map<SReference, SNode> replacementMap = new HashMap<SReference, SNode>();
    // do process references
    for (SReference reference : node.getReferences()) {
      if (reference.isExternal()) {
        SNode oldReferentNode = reference.getTargetNode();
        SNode newReferentNode = targetModel.getNodeById(oldReferentNode.getId());
        if (newReferentNode != null) {
          // replace reference
          replacementMap.put(reference, newReferentNode);
        }
      }
    }

    // do precess children references
    List<SNode> children = node.getChildren();
    for (SNode childNode : children) {
      updateReferences(childNode);
    }

    for (SReference reference : replacementMap.keySet()) {
      node.removeReferent(reference.getRole(), reference.getTargetNode());
      node.addReferent(reference.getRole(), replacementMap.get(reference));
    }
  }

  public List<ConceptDeclaration> conceptAdaptersFromModelLanguages(final Condition<ConceptDeclaration> condition, IScope scope) {
    List<ConceptDeclaration> list = new LinkedList<ConceptDeclaration>();
    List<Language> languages = getLanguages(scope);
    for (Language language : languages) {
      SModelDescriptor structureModelDescriptor = language.getStructureModelDescriptor();
      SModel structureModel = structureModelDescriptor.getSModel();
      list.addAll(structureModel.allAdapters(ConceptDeclaration.class, new Condition<ConceptDeclaration>() {
        public boolean met(ConceptDeclaration node) {
          return new Condition<ConceptDeclaration>() {
            public boolean met(final ConceptDeclaration object) {
              return condition.met(object);
            }
          }.met(node);
        }
      }));
    }
    return list;
  }

  private static WeakSet<SModel> ourActiveModels = new WeakSet<SModel>();

  {
    ourActiveModels.add(this);
  }

  public static void checkModels() {
    System.out.println("total models : " + ourActiveModels.size());

    for (SModel sm : ourActiveModels) {
      if (sm == null) continue;
      SModelDescriptor md = SModelRepository.getInstance().getModelDescriptor(sm.getUID());

      if (md == null) {
        System.out.println("can't find a descriptor for " + sm.getUID());
      } else if (sm != md.getSModel()) {
        System.out.println("Found a leak! : " + sm.getUID());
      }
    }
  }
}
