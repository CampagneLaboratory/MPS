/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.projectPane;

import com.intellij.ide.CopyProvider;
import com.intellij.ide.CutProvider;
import com.intellij.ide.PasteProvider;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.ide.projectView.impl.ProjectViewImpl;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.ToggleAction;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.vfs.VirtualFileManagerListener;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.ide.actions.CopyNode_Action;
import jetbrains.mps.ide.actions.CutNode_Action;
import jetbrains.mps.ide.actions.PasteNode_Action;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.ProjectTreeNode;
import jetbrains.mps.ide.ui.tree.module.ProjectModuleTreeNode;
import jetbrains.mps.ide.ui.tree.module.TransientModelsTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTree;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTreeNodeEx;
import jetbrains.mps.ide.ui.tree.module.GeneratorTreeNode;
import jetbrains.mps.ide.ui.tree.module.NamespaceTextNode;
import jetbrains.mps.ide.ui.tree.smodel.PackageNode;
import jetbrains.mps.ide.ui.tree.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import jetbrains.mps.make.IMakeNotificationListener;
import jetbrains.mps.make.IMakeNotificationListener.Stub;
import jetbrains.mps.make.IMakeService;
import jetbrains.mps.make.MakeNotification;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Solution;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.reloading.ReloadListener;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModelAccessAdapter;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelRepositoryAdapter;
import jetbrains.mps.smodel.SModelRepositoryListener;
import jetbrains.mps.util.Computable;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.ModelUtil;
import jetbrains.mps.workbench.action.ActionUtils;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepositoryAdapter;
import org.jetbrains.mps.openapi.module.SRepositoryListener;

import javax.swing.JTree;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public abstract class BaseLogicalViewProjectPane extends AbstractProjectViewPane {
  private MyModelAccessListener myModelAccessListener = new MyModelAccessListener();
  private SModelRepositoryListener mySModelRepositoryListener = new MyModelRepositoryAdapter();
  private VirtualFileManagerListener myRefreshListener = new RefreshListener();
  private boolean myNeedRebuild = false;
  private SRepositoryListener myRepositoryListener = new MyModuleRepositoryListener();
  protected boolean myDisposed;

  private ReloadListener myReloadListener = new ReloadAdapter() {
    @Override
    public void onAfterReload() {
      rebuild();
    }
  };

  private IMakeNotificationListener myMakeNotificationListener = new Stub() {
    @Override
    public void sessionClosed(MakeNotification notification) {
      // rebuild tree in case of 'cancel' too (need to get 'transient models' node rebuilt)
      rebuild();
    }
  };

  protected BaseLogicalViewProjectPane(Project project) {
    super(project);
  }

  public abstract Project getProject();

  public abstract ProjectView getProjectView();

  public abstract void rebuild();

  public abstract void selectNextModel(SModel md);

  @Override
  public Object getData(String dataId) {
    //MPSDK
    if (dataId.equals(MPSDataKeys.NODE.getName())) return getSelectedSNode();
    if (dataId.equals(MPSDataKeys.NODES.getName())) return getSelectedSNodes();

    if (dataId.equals(MPSDataKeys.MODEL.getName())) return getSelectedModel();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODEL.getName())) return getContextModel();
    if (dataId.equals(MPSDataKeys.MODELS.getName())) return getSelectedModels();

    if (dataId.equals(MPSDataKeys.MODULE.getName())) return getSelectedModule();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODULE.getName())) return getContextModule();
    if (dataId.equals(MPSDataKeys.MODULES.getName())) return getSelectedModules();

    if (dataId.equals(MPSDataKeys.VIRTUAL_PACKAGE.getName())) {
      List<String> selectedPackages = getSelectedPackages();
      if (selectedPackages.size() != 1) return null;
      return selectedPackages.get(0);
    }
    if (dataId.equals(MPSDataKeys.VIRTUAL_PACKAGES.getName())) return getSelectedPackages();

    if (dataId.equals(MPSDataKeys.NAMESPACE.getName())) {
      NamespaceTextNode selectedNamespaceNode = getSelectedTreeNode(NamespaceTextNode.class);
      if (selectedNamespaceNode != null) {
        return selectedNamespaceNode.getNamespace();
      }
      return null;
    }

    if (dataId.equals(MPSDataKeys.OPERATION_CONTEXT.getName())) return getContextForSelection();
    if (dataId.equals(MPSDataKeys.TREE_NODE.getName())) return getSelectedTreeNode(TreeNode.class);
    if (dataId.equals(MPSDataKeys.TREE_NODES.getName())) return getSelectedTreeNodes(TreeNode.class);
    if (dataId.equals(MPSDataKeys.TREE_SELECTION_SIZE.getName())) return getSelectionSize();
    if (dataId.equals(MPSDataKeys.PLACE.getName())) return getPlace();

    //PDK
    if (dataId.equals(PlatformDataKeys.COPY_PROVIDER.getName())) return new MyCopyProvider();
    if (dataId.equals(PlatformDataKeys.PASTE_PROVIDER.getName())) return new MyPasteProvider();
    if (dataId.equals(PlatformDataKeys.CUT_PROVIDER.getName())) return new MyCutProvider();
    if (dataId.equals(PlatformDataKeys.VIRTUAL_FILE_ARRAY.getName())) return getSelectedFiles();

    //not found
    return null;
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  @Override
  public void dispose() {
    if (isComponentCreated()) {
      removeListeners();
    }
    myDisposed = true;
    super.dispose();
  }

  public boolean isShowPropertiesAndReferences() {
    return getProjectView().isShowMembers(getId());
  }

  public boolean isSortByType() {
    return getProjectView().isSortByType(getId());
  }

  @Override
  public void installComparator() {
    // Overrid to avoid NPE
  }

  @Nullable
  public Comparator<Object> getTreeChildrenComparator() {
    return new Comparator<Object>() {
      @Override
      public int compare(final Object o1, final Object o2) {
        if (isSortByType()) {
          if (o1 instanceof SNode && o2 instanceof SNode) {
            final SNode node1 = (SNode) o1;
            final SNode node2 = (SNode) o2;
            return ModelAccess.instance().runReadAction(new Computable<Integer>() {
              @Override
              public Integer compute() {
                String concept1 = node1.getConcept().getQualifiedName();
                String concept2 = node2.getConcept().getQualifiedName();
                return concept1.compareTo(concept2);
              }
            });
          }
        }
        return 0;
      }
    };
  }

  @Override
  public void addToolbarActions(final DefaultActionGroup group) {
    group.add(new PropertiesAndReferencesToggleAction());
    group.addAction(new SortByTypeToggleAction()).setAsSecondary(true);
  }

  protected void removeListeners() {
    ClassLoaderManager.getInstance().removeReloadHandler(myReloadListener);
    SModelRepository.getInstance().removeModelRepositoryListener(mySModelRepositoryListener);
    ModelAccess.instance().removeCommandListener(myModelAccessListener);
    MPSModuleRepository.getInstance().removeRepositoryListener(myRepositoryListener);
    if (IMakeService.INSTANCE.hasMakeService()) {
      IMakeService.INSTANCE.get().removeListener(myMakeNotificationListener);
    }
    VirtualFileManager.getInstance().removeVirtualFileManagerListener(myRefreshListener);
  }

  protected void addListeners() {
    VirtualFileManager.getInstance().addVirtualFileManagerListener(myRefreshListener);
    SModelRepository.getInstance().addModelRepositoryListener(mySModelRepositoryListener);
    ModelAccess.instance().addCommandListener(myModelAccessListener);
    MPSModuleRepository.getInstance().addRepositoryListener(myRepositoryListener);
    if (IMakeService.INSTANCE.isSessionActive()) {
      IMakeService.INSTANCE.get().addListener(myMakeNotificationListener);
    }
    ClassLoaderManager.getInstance().addReloadHandler(myReloadListener);
  }

  public SNode getSelectedSNode() {
    MPSTreeNodeEx selectedTreeNode = getSelectedTreeNode(MPSTreeNodeEx.class);
    if (selectedTreeNode == null) return null;
    return selectedTreeNode.getSNode();
  }

  public List<SNode> getSelectedSNodes() {
    List<SNode> result = new ArrayList<SNode>();
    for (MPSTreeNodeEx node : getSelectedTreeNodes(MPSTreeNodeEx.class)) {
      SNode snode = node.getSNode();
      if (snode == null) continue;
      result.add(snode);
    }
    return result;
  }

  public List<SModel> getSelectedModels() {
    List<SModel> result = new ArrayList<SModel>();
    for (SModelTreeNode node : getSelectedTreeNodes(SModelTreeNode.class)) {
      result.add(node.getSModelDescriptor());
    }
    return result;
  }

  public SModel getSelectedModel() {
    SModelTreeNode selectedTreeNode = getSelectedTreeNode(SModelTreeNode.class);
    if (selectedTreeNode == null) return null;
    return selectedTreeNode.getSModelDescriptor();
  }

  public SModel getContextModel() {
    MPSTreeNode treeNode = (MPSTreeNode) getSelectedTreeNode(TreeNode.class);
    while (treeNode != null && !(treeNode instanceof SModelTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((SModelTreeNode) treeNode).getSModelDescriptor();
  }

  public SModule getSelectedModule() {
    ProjectModuleTreeNode selectedTreeNode = getSelectedTreeNode(ProjectModuleTreeNode.class);
    if (selectedTreeNode == null) return null;
    return selectedTreeNode.getModule();
  }

  public SModule getContextModule() {
    MPSTreeNode treeNode = (MPSTreeNode) getSelectedTreeNode(TreeNode.class);
    while (treeNode != null && !(treeNode instanceof ProjectModuleTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((ProjectModuleTreeNode) treeNode).getModule();
  }

  public List<SModule> getSelectedModules() {
    List<SModule> result = new ArrayList<SModule>();
    for (ProjectModuleTreeNode node : getSelectedTreeNodes(ProjectModuleTreeNode.class)) {
      result.add(node.getModule());
    }
    return result;
  }

  public List<String> getSelectedPackages() {
    List<String> result = new ArrayList<String>();
    TreePath[] paths = getTree().getSelectionPaths();
    if (paths == null) return result;
    for (TreePath path : paths) {
      MPSTreeNode node = (MPSTreeNode) path.getLastPathComponent();
      while (node != null && !(node instanceof PackageNode)) {
        node = (MPSTreeNode) node.getParent();
      }
      if (node != null) {
        result.add(((PackageNode) node).getFullPackage());
      }
    }
    return result;
  }

  public int getSelectionSize() {
    TreePath[] selection = getSelectionPaths();
    return selection == null ? 0 : selection.length;
  }

  private IOperationContext getContextForSelection() {
    TreePath[] selection = getTree().getSelectionPaths();
    if (selection == null) return null;
    if (selection.length > 0) {
      MPSTreeNode lastPathComponent = (MPSTreeNode) selection[0].getLastPathComponent();
      return lastPathComponent.getOperationContext();
    }
    return null;
  }

  private <T extends TreeNode> T getSelectedTreeNode(Class<T> nodeClass) {
    TreePath selectionPath = getTree().getSelectionPath();
    if (selectionPath == null) return null;
    Object selectedNode = selectionPath.getLastPathComponent();
    if (!(nodeClass.isInstance(selectedNode))) return null;
    return (T) selectedNode;
  }

  private ActionPlace getPlace() {
    TreeNode treeNode = getSelectedTreeNode(TreeNode.class);
    if (treeNode instanceof SNodeTreeNode) {
      return ActionPlace.PROJECT_PANE_SNODE;
    } else if (treeNode instanceof SModelTreeNode) {
      return ActionPlace.PROJECT_PANE_SMODEL;
    } else if ((treeNode instanceof ProjectTreeNode) || (treeNode instanceof jetbrains.mps.ide.ui.tree.module.ProjectTreeNode)) {
      return ActionPlace.PROJECT_PANE_PROJECT;
    } else if (treeNode instanceof GeneratorTreeNode) {
      return ActionPlace.PROJECT_PANE_GENERATOR;
    } else if (treeNode instanceof TransientModelsTreeNode) {
      return ActionPlace.PROJECT_PANE_TRANSIENT_MODULES;
    } else if (treeNode instanceof PackageNode) {
      return ActionPlace.PROJECT_PANE_PACKAGE;
    } else if (treeNode instanceof NamespaceTextNode) {
      return ActionPlace.PROJECT_PANE_NAMESPACE;
    } else if (treeNode instanceof ProjectModuleTreeNode) {
      SModule module = getSelectedModule();
      if (module instanceof Language) {
        return ActionPlace.PROJECT_PANE_LANGUAGE;
      } else if (module instanceof DevKit) {
        return ActionPlace.PROJECT_PANE_DEVKIT;
      } else if (module instanceof Solution) {
        return ActionPlace.PROJECT_PANE_SOLUTION;
      }
    }
    return ActionPlace.PROJECT_PANE;
  }

  public void editNode(final SNode node, final IOperationContext context, final boolean focus) {
    ModelAccess.assertLegalWrite();
    NavigationSupport.getInstance().openNode(context, node, focus, !(node.getModel() != null && node.getParent() == null));
  }

  public <T extends TreeNode> List<T> getSelectedTreeNodes(Class<T> nodeClass) {
    TreePath[] selectionPaths = getTree().getSelectionPaths();
    if (selectionPaths == null) return new ArrayList<T>();

    List<T> selectedTreeNodes = new ArrayList<T>(selectionPaths.length);

    for (TreePath selectionPath : selectionPaths) {
      if (selectionPath == null) continue;
      Object selectedNode = selectionPath.getLastPathComponent();
      if (!(nodeClass.isInstance(selectedNode))) continue;
      selectedTreeNodes.add((T) selectedNode);
    }
    return selectedTreeNodes;
  }

  private VirtualFile[] getSelectedFiles() {
    List<VirtualFile> selectedFilesList = new LinkedList<VirtualFile>();

    // add selected model files
    List<SModel> descriptors = getSelectedModels();
    if (descriptors != null) {
      for (SModel descriptor : descriptors) {
        selectedFilesList.addAll(ModelUtil.getVFilesByModelDescriptor(descriptor));
      }
    }

    // add selected modules files
    List<SModule> modules = getSelectedModules();
    if (modules != null) {
      for (SModule m : modules) {
        if (!(m instanceof AbstractModule)) continue;
        AbstractModule module = (AbstractModule) m;
        IFile home = module.getModuleSourceDir();
        if (home != null) {
          VirtualFile vfile = VirtualFileUtils.getVirtualFile(home);
          if (vfile != null) {
            selectedFilesList.add(vfile);
          }
        }
        IFile ifile = module.getDescriptorFile();
        if (ifile != null) {
          VirtualFile vfile = VirtualFileUtils.getVirtualFile(ifile);
          if (vfile != null) {
            selectedFilesList.add(vfile);
          }
        }
      }
    }

    if (selectedFilesList.size() == 0) {
      return null;
    }

    return selectedFilesList.toArray(new VirtualFile[selectedFilesList.size()]);
  }

  private AnActionEvent createEvent(DataContext context) {
    return ActionUtils.createEvent(ActionPlaces.PROJECT_VIEW_POPUP, context);
  }

  protected abstract boolean isComponentCreated();

  private class MyCopyProvider implements CopyProvider {
    private CopyNode_Action myAction = new CopyNode_Action();

    @Override
    public void performCopy(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCopyEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }

    @Override
    public boolean isCopyVisible(DataContext dataContext) {
      return true;
    }
  }

  private class MyPasteProvider implements PasteProvider {
    private PasteNode_Action myAction = new PasteNode_Action();

    @Override
    public void performPaste(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isPastePossible(DataContext dataContext) {
      return true;
    }

    @Override
    public boolean isPasteEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
  }

  private class MyCutProvider implements CutProvider {
    private CutNode_Action myAction = new CutNode_Action();

    @Override
    public void performCut(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCutEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }

    @Override
    public boolean isCutVisible(DataContext dataContext) {
      return true;
    }
  }

  private class MyModuleRepositoryListener extends SRepositoryAdapter {
    @Override
    public void moduleAdded(SModule module) {
      myNeedRebuild = true;
    }

    @Override
    public void beforeModuleRemoved(SModule module) {
      myNeedRebuild = true;
    }
  }

  private class MyModelAccessListener extends ModelAccessAdapter {
    @Override
    public void commandStarted() {
      myNeedRebuild = false;
    }

    @Override
    public void commandFinished() {
      if (!myNeedRebuild) return;
      JTree tree = getTree();
      if (tree instanceof MPSTree) {
        ((MPSTree) tree).rebuildLater();
      }
      myNeedRebuild = false;
    }
  }

  //----listeners----

  private class MyModelRepositoryAdapter extends SModelRepositoryAdapter {
    @Override
    public void modelRepositoryChanged() {
      myNeedRebuild = true;
    }
  }

  //----copy-paste----

  private class RefreshListener implements VirtualFileManagerListener {
    @Override
    public void beforeRefreshStart(boolean asynchonous) {

    }

    @Override
    public void afterRefreshFinish(boolean asynchonous) {
      if (myNeedRebuild) {
        JTree tree = getTree();
        if (tree instanceof MPSTree) {
          ((MPSTree) tree).rebuildLater();
        }
        myNeedRebuild = false;
      }
    }
  }

  private class PropertiesAndReferencesToggleAction extends ToggleAction {
    public PropertiesAndReferencesToggleAction() {
      super("Show Properties and References", "Show properties and references", Icons.PROP_AND_REF);
    }

    @Override
    public boolean isSelected(@Nullable AnActionEvent e) {
      return isShowPropertiesAndReferences();
    }

    @Override
    public void setSelected(@Nullable AnActionEvent e, boolean state) {
      if (state != isShowPropertiesAndReferences()) {
        if (getProjectView() instanceof ProjectViewImpl) {
          ((ProjectViewImpl) getProjectView()).setShowMembers(state, getId());
        }
        rebuild();
      }
    }
  }

  private class SortByTypeToggleAction extends ToggleAction {
    public SortByTypeToggleAction() {
      super("Sort Roots by Concept", "Sort root nodes by concept", null);
    }

    @Override
    public boolean isSelected(@Nullable AnActionEvent e) {
      return isSortByType();
    }

    @Override
    public void setSelected(@Nullable AnActionEvent e, boolean state) {
      if (state != isSortByType()) {
        getProjectView().setSortByType(getId(), state);
        rebuild();
      }
    }
  }
}
