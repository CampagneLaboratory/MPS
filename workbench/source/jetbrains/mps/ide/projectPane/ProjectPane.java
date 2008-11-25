package jetbrains.mps.ide.projectPane;

import com.intellij.ide.*;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.ide.projectView.impl.ProjectViewPane;
import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.command.CommandAdapter;
import com.intellij.openapi.command.CommandEvent;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.FileEditorManagerAdapter;
import com.intellij.openapi.fileEditor.FileEditorManagerEvent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.wm.ToolWindowId;
import com.intellij.openapi.wm.ToolWindowManager;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.generator.GenerationListener;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.ide.IEditor;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.*;
import jetbrains.mps.ide.projectPane.ProjectPane.MyState;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTree.TreeState;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.MPSTreeNodeEx;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.smodel.PackageNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.smodel.SNodeTreeNode;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.ReloadListener;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.Pair;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFileSystem;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.actions.model.DeleteModelsAction;
import jetbrains.mps.workbench.actions.nodes.CopyNodeAction;
import jetbrains.mps.workbench.actions.nodes.CutNodeAction;
import jetbrains.mps.workbench.actions.nodes.DeleteNodeAction;
import jetbrains.mps.workbench.actions.nodes.PasteNodeAction;
import jetbrains.mps.workbench.editors.MPSEditorOpener;
import jetbrains.mps.workbench.editors.MPSFileNodeEditor;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JScrollPane;
import javax.swing.tree.*;
import java.awt.Component;
import java.awt.Point;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

@State(
  name = "MPSProjectPane",
  storages = {
    @Storage(
      id = "other",
      file = "$WORKSPACE_FILE$"
    )
  }
)
public class ProjectPane extends AbstractProjectViewPane implements PersistentStateComponent<MyState> {
  private static final Logger LOG = Logger.getLogger(ProjectPane.class);

  public static final String PROJECT_PANE_NODE_ACTIONS = NodeActions_ActionGroup.ID;
  public static final String PROJECT_PANE_MODEL_ACTIONS = ModelActions_ActionGroup.ID;
  public static final String PROJECT_PANE_LANGUAGE_ACTIONS = LanguageActions_ActionGroup.ID;
  public static final String PROJECT_PANE_DEVKIT_ACTIONS = DevkitActions_ActionGroup.ID;
  public static final String PROJECT_PANE_PROJECT_ACTIONS = ProjectActions_ActionGroup.ID;
  public static final String PROJECT_PANE_SOLUTION_ACTIONS = SolutionActions_ActionGroup.ID;
  public static final String PROJECT_PANE_GENERATOR_ACTIONS = GeneratorActions_ActionGroup.ID;
  public static final String PROJECT_PANE_TRANSIENT_MODULES_ACTIONS = TransientModulesActions_ActionGroup.ID;
  public static final String PROJECT_PANE_PACKAGE_ACTIONS = PackageActions_ActionGroup.ID;
  public static final String PROJECT_PANE_NAMESPACE_ACTIONS = NamespaceActions_ActionGroup.ID;

  public static final String PROJECT_NEW_ACTIONS = ProjectNewActions_ActionGroup.ID;
  public static final String SOLUTION_NEW_ACTIONS = SolutionNewActions_ActionGroup.ID;
  public static final String LANGUAGE_NEW_ACTIONS = LanguageNewActions_ActionGroup.ID;
  public static final String GENERATOR_NEW_ACTIONS = GeneratorNewActions_ActionGroup.ID;

  private SModelRepositoryListener mySModelRepositoryListener = new MyModelRepositoryAdapter();
  private MyCommandListener myCommandListener = new MyCommandListener();
  private MyModuleRepositoryListener myRepositoryListener = new MyModuleRepositoryListener();
  private boolean myNeedRebuild = false;
  private boolean myDisposed;
  private ProjectModulesPoolTreeNode myModulesPool;
  private ProjectView myProjectView;

  private MyScrollPane myScrollPane;
  private boolean myLastPropertiesState;

  public static final String ID = ProjectViewPane.ID;

  private ReloadListener myReloadListener = new ReloadListener() {
    public void onBeforeReload() {

    }

    public void onReload() {

    }

    public void onAfterReload() {
      ModelAccess.instance().runReadInEDT(new Runnable() {
        public void run() {
          rebuild();
        }
      });
    }
  };

  private GenerationListener myGenerationListener = new GenerationListener() {
    public void beforeGeneration(List<Pair<SModelDescriptor, IOperationContext>> inputModels) {

    }

    public void modelsGenerated(List<Pair<SModelDescriptor, IOperationContext>> models, boolean success) {
    }

    public void afterGeneration(List<Pair<SModelDescriptor, IOperationContext>> inputModels) {
      // rebuild tree in case of 'cancel' too (need to get 'transient models' node rebuilt)
      ModelAccess.instance().runReadInEDT(new Runnable() {
        public void run() {
          rebuild();
        }
      });
    }
  };
  private FileEditorManagerAdapter myEditorListener = new FileEditorManagerAdapter() {
    public void selectionChanged(FileEditorManagerEvent event) {
      FileEditor fileEditor = event.getNewEditor();
      if (fileEditor instanceof MPSFileNodeEditor) {
        final MPSFileNodeEditor editor = (MPSFileNodeEditor) fileEditor;
        if (myProjectView.isAutoscrollFromSource(ID)) {
          EditorComponent editorComponent = editor.getNodeEditor().getCurrentEditorComponent();
          if (editorComponent == null) return;
          final SNode sNode = editorComponent.getEditedNode();
          ModelAccess.instance().runReadInEDT(new Runnable() {
            public void run() {
              selectNode(sNode);
            }
          });
        }
      }
    }
  };

  public ProjectPane(Project project, ProjectView projectView) {
    super(project);
    myProjectView = projectView;
    myLastPropertiesState = projectView.isShowMembers(ID);

    myTree = new MyTree();

    myScrollPane = new MyScrollPane(getTree());
    getTree().addKeyListener(new KeyAdapter() {
      public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_F4 && e.getModifiers() == 0) {
          openEditor();
          e.consume();
        }
        if (e.getKeyCode() == KeyEvent.VK_ENTER && e.getModifiers() == 0) {
          openEditor();
          e.consume();
        }
      }
    });
  }

  public void initComponent() {
    addListeners();

    if (!IdeMain.isTestMode()) {
      ThreadUtils.runInUIThreadNoWait(new Runnable() {
        public void run() {
          rebuildTree();
        }
      });
    }
  }

  public void addToolbarActions(final DefaultActionGroup group) {
    ToggleAction myPAndRToggle = new ToggleAction("Show properties and references", "Show properties and references", Icons.PROP_AND_REF) {
      public boolean isSelected(@Nullable AnActionEvent e) {
        return isShowPropertiesAndReferences();
      }

      public void setSelected(@Nullable AnActionEvent e, boolean state) {
        if (state != myLastPropertiesState) {
          myLastPropertiesState = state;
          ModelAccess.instance().runReadInEDT(new Runnable() {
            public void run() {
              getTree().rebuildNow();
            }
          });
        }
      }
    };
    group.add(myPAndRToggle);
  }

  public void disposeComponent() {
    getTree().clear();
    removeListeners();
  }

  public MPSTree getTree() {
    return (MPSTree) myTree;
  }

  public Project getProject() {
    return myProject;
  }

  public MPSProject getMPSProject() {
    return myProject.getComponent(MPSProjectHolder.class).getMPSProject();
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Project Pane";
  }

  public String getTitle() {
    return "Logical View";
  }

  @NotNull
  public String getId() {
    return ID;
  }

  public int getWeight() {
    return 0;
  }

  public SelectInTarget createSelectInTarget() {
    return new SelectInTarget() {
      public SNode myNode;

      public boolean canSelect(SelectInContext context) {
        VirtualFile virtualFile = context.getVirtualFile();
        if (!(virtualFile instanceof MPSNodeVirtualFile)) return false;

        MPSNodeVirtualFile file = (MPSNodeVirtualFile) virtualFile;
        FileEditor[] editors = FileEditorManager.getInstance(myProject).getEditors(file);
        if (editors.length != 0) {
          FileEditor editor = editors[0];
          if (!(editor instanceof MPSFileNodeEditor)) return false;
          myNode = ((MPSFileNodeEditor) editor).getNodeEditor().getCurrentEditorComponent().getEditedNode();
        } else {
          myNode = file.getNode();
        }
        return true;
      }

      public void selectIn(final SelectInContext context, boolean requestFocus) {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            selectNode(myNode);
          }
        });
        activate();
      }

      public String getToolWindowId() {
        return ID;
      }

      public String getMinorViewId() {
        return null;
      }

      public float getWeight() {
        return 0;
      }

      public String toString() {
        return "Logical View";
      }
    };
  }

  public Icon getIcon() {
    return Icons.MPS_SMALL_ICON;
  }

  public void updateFromRoot(boolean restoreExpandedPaths) {
    getTree().rebuildLater();
  }

  public void select(Object element, final VirtualFile file, final boolean requestFocus) {
  }

  public JComponent createComponent() {
    return getComponent();
  }

  public JComponent getComponent() {
    return myScrollPane;
  }

  protected void editNode(final SNode node, final IOperationContext context) {
    ModelAccess.instance().executeCommand(new Runnable() {
      public void run() {
        MPSEditorOpener opener = getProject().getComponent(MPSEditorOpener.class);
        assert opener != null;
        opener.openNode(node, context);
      }
    });
  }

  public void projectOpened() {
    myReloadListener.onAfterReload();
    ClassLoaderManager.getInstance().addReloadHandler(myReloadListener);
    StartupManager.getInstance(myProject).registerStartupActivity(new Runnable() {
      public void run() {
        myProjectView.addProjectPane(ProjectPane.this);
      }
    });
  }

  public void projectClosed() {
    ClassLoaderManager.getInstance().removeReloadHandler(myReloadListener);
  }

  protected void onBeforeModelWillBeDeleted(SModelDescriptor sm) {
    selectNextTreeModel(sm);
  }

  public boolean isShowPropertiesAndReferences() {
    return myLastPropertiesState;
  }

  public void openEditor() {
    TreePath selectionPath = getTree().getSelectionPath();
    if (selectionPath == null) return;
    if (!(selectionPath.getLastPathComponent() instanceof SNodeTreeNode)) return;
    SNodeTreeNode selectedTreeNode = (SNodeTreeNode) selectionPath.getLastPathComponent();

    IEditor editor = getMPSProject().getComponentSafe(MPSEditorOpener.class).openNode(selectedTreeNode.getSNode(), selectedTreeNode.getOperationContext());
    editor.requestFocus();
  }

  @Nullable
  public Object getData(@NonNls String dataId) {
    //MPSDK
    if (dataId.equals(MPSDataKeys.SNODE.getName())) return getSelectedSNode();
    if (dataId.equals(MPSDataKeys.SNODES.getName())) return getSelectedNodes();

    if (dataId.equals(MPSDataKeys.MODEL.getName())) return getSelectedModel();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODEL.getName())) return getCurrentModel() ;
    if (dataId.equals(MPSDataKeys.MODELS.getName())) return getSelectedModels();

    if (dataId.equals(MPSDataKeys.MODULE.getName())) return getSelectedModule();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODULE.getName())) return getCurrentModule();
    if (dataId.equals(MPSDataKeys.MODULES.getName())) return getSelectedModules();

    if (dataId.equals(MPSDataKeys.VIRTUAL_PACKAGE.getName())) {
      List<String> selectedPackages = getSelectedPackages();
      if (selectedPackages.size() != 1) return null;
      return selectedPackages.get(0);
    }
    if (dataId.equals(MPSDataKeys.VIRTUAL_PACKAGES.getName())) return getSelectedPackages();

    if (dataId.equals(MPSDataKeys.OPERATION_CONTEXT.getName())) return getContextForSelection();
    if (dataId.equals(MPSDataKeys.LOGICAL_VIEW_SELECTION_SIZE.getName())) return getSelectionPaths().length;
    if (dataId.equals(MPSDataKeys.PLACE.getName())) return getPlace();

    //PDK
    if (dataId.equals(PlatformDataKeys.COPY_PROVIDER.getName())) return new MyCopyProvider();
    if (dataId.equals(PlatformDataKeys.PASTE_PROVIDER.getName())) return new MyPasteProvider();
    if (dataId.equals(PlatformDataKeys.CUT_PROVIDER.getName())) return new MyCutProvider();
    if (dataId.equals(PlatformDataKeys.VIRTUAL_FILE_ARRAY.getName())) return getSelectedFiles();

    //not found
    return null;
  }

  private SModelDescriptor getCurrentModel() {
    TreePath[] selection = getTree().getSelectionPaths();
    if (selection == null) return null;
    if (selection.length != 1) return null;
    MPSTreeNode treeNode = (MPSTreeNode) selection[0].getLastPathComponent();
    while (treeNode != null && !(treeNode instanceof SModelTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((SModelTreeNode) treeNode).getSModelDescriptor();
  }

  private IModule getCurrentModule() {
    TreePath[] selection = getTree().getSelectionPaths();
    if (selection == null) return null;
    if (selection.length != 1) return null;
    MPSTreeNode treeNode = (MPSTreeNode) selection[0].getLastPathComponent();
    while (treeNode != null && !(treeNode instanceof ProjectModuleTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((ProjectModuleTreeNode) treeNode).getModule();
  }

  private ActionPlace getPlace() {
    if (getSelectedTreeNode() instanceof SNodeTreeNode) {
      return ActionPlace.PROJECT_PANE_SNODE;
    } else if (getSelectedTreeNode() instanceof SModelTreeNode) {
      return ActionPlace.PROJECT_PANE_SMODEL;
    } else if (getSelectedTreeNode() instanceof ProjectTreeNode) {
      return ActionPlace.PROJECT_PANE_PROJECT;
    } else if (getSelectedTreeNode() instanceof GeneratorTreeNode) {
      return ActionPlace.PROJECT_PANE_GENERATOR;
    } else if (getSelectedTreeNode() instanceof TransientModelsTreeNode) {
      return ActionPlace.PROJECT_PANE_TRANSIENT_MODULES;
    } else if (getSelectedTreeNode() instanceof PackageNode) {
      return ActionPlace.PROJECT_PANE_PACKAGE;
    } else if (getSelectedTreeNode() instanceof NamespaceTextNode) {
      return ActionPlace.PROJECT_PANE_NAMESPACE;
    } else if (getSelectedTreeNode() instanceof ProjectModuleTreeNode) {
      IModule module = getSelectedModule();
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

  private VirtualFile[] getSelectedFiles() {
    List<VirtualFile> selectedFilesList = new LinkedList<VirtualFile>();

    // add selected model files
    List<SModelDescriptor> descriptors = getSelectedModels();
    if (descriptors != null) {
      for (SModelDescriptor descriptor : descriptors) {
        IFile ifile = descriptor.getModelFile();
        if (ifile != null) {
          VirtualFile vfile = VFileSystem.getFile(ifile);
          if (vfile != null) {
            selectedFilesList.add(vfile);
          }
        }
      }
    }

    // add selected modules files
    List<IModule> modules = getSelectedModules();
    if (modules != null) {
      for (IModule module : modules) {
        IFile ifile = module.getDescriptorFile();
        if (ifile != null) {
          VirtualFile vfile = VFileSystem.getFile(ifile);
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

  private IOperationContext getContextForSelection() {
    TreePath[] selection = getTree().getSelectionPaths();
    if (selection == null) return null;
    if (selection.length > 0) {
      MPSTreeNode lastPathComponent = (MPSTreeNode) selection[0].getLastPathComponent();
      return lastPathComponent.getOperationContext();
    }
    return null;
  }

  private SNode getSelectedSNode() {
    if (getSelectedNodes() != null && getSelectedNodes().size() == 1) {
      return getSelectedNodes().get(0);
    }
    return null;
  }

  public void rebuildTree() {
    getTree().rebuildNow();
  }

  public void selectNextTreeNode(SNode node) {
    MPSTreeNode mpsTreeNode = findNextTreeNode(node);
    getTree().selectNode(mpsTreeNode);
  }

  public void selectNextTreeModel(SModelDescriptor modelDescriptor) {
    MPSTreeNode mpsTreeNode = findNextTreeNode(modelDescriptor);
    getTree().selectNode(mpsTreeNode);
  }

  public void selectModel(SModelDescriptor modelDescriptor) {
    DefaultTreeModel model = (DefaultTreeModel) getTree().getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelTreeNode modelTreeNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (modelTreeNode != null) {
      TreePath treePath = new TreePath(modelTreeNode.getPath());
      getTree().setSelectionPath(treePath);
      getTree().scrollPathToVisible(treePath);
    } else {
      LOG.warning("Couldn't select model \"" + modelDescriptor.getLongName() + "\" : tree node not found.");
    }
  }

  public void selectModule(final IModule module) {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        MPSTreeNode languageTreeNode = findModuleTreeNode(module);
        if (languageTreeNode != null) {
          TreePath treePath = new TreePath(languageTreeNode.getPath());
          getTree().setSelectionPath(treePath);
          getTree().scrollPathToVisible(treePath);
        } else {
          LOG.warning("Couldn't select module \"" + module.getModuleFqName() + "\" : tree node not found.");
        }
      }
    });
  }

  public void selectNode(final SNode node, final IOperationContext context) {
    LOG.checkEDT();

    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        getTree().runWithoutExpansion(new Runnable() {
          public void run() {
            IModule module = context.getModule();
            if (module == null) {
              selectNode(node);
              return;
            }

            MPSTreeNode moduleTreeNode = findModuleTreeNode(module);
            if (moduleTreeNode == null) {
              LOG.error("Couldn't find tree node for module: " + module.getModuleFqName());
              selectNode(node);
              return;
            }

            // search in module sub-tree
            SModelDescriptor modelDescriptor = node.getModel().getModelDescriptor();
            SModelTreeNode modelTreeNode = findSModelTreeNode(moduleTreeNode, modelDescriptor);
            if (modelTreeNode == null) {
              // no such model in the module sub-tree
              selectNode(node);
              return;
            }

            modelTreeNode.flush();

            // search in SModel sub-tree
            MPSTreeNodeEx treeNodeToSelect = findTreeNode(modelTreeNode, node);
            if (treeNodeToSelect != null) {
              TreePath treePath = new TreePath(treeNodeToSelect.getPath());
              getTree().setSelectionPath(treePath);
              getTree().scrollPathToVisible(treePath);
            } else {
              LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node not found.");
            }
          }
        });
      }
    });
  }

  public void selectNode(final SNode node) {
    DefaultTreeModel model = (DefaultTreeModel) getTree().getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelDescriptor modelDescriptor = node.getModel().getModelDescriptor();
    assert modelDescriptor != null;
    SModelTreeNode modelTreeNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (modelTreeNode == null) {
      LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node for model \"" + modelDescriptor.getSModelReference().getLongName() + "\" not found.");
      return;
    }
    modelTreeNode.flush();
    MPSTreeNodeEx treeNodeToSelect = findTreeNode(modelTreeNode, node);
    if (treeNodeToSelect != null) {
      TreePath treePath = new TreePath(treeNodeToSelect.getPath());
      getTree().setSelectionPath(treePath);
      getTree().scrollPathToVisible(treePath);
    } else {
      LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node not found.");
    }
  }

  public void activate() {
    myProjectView.changeView(getId());
    final ToolWindowManager manager = ToolWindowManager.getInstance(myProject);
    manager.getToolWindow(ToolWindowId.PROJECT_VIEW).activate(new Runnable() {
      public void run() {
        manager.getFocusManager().requestFocus(myTree, false);
      }
    }, false);
  }

  public MPSTreeNode findModuleTreeNode(final IModule module) {
    DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
    MPSTreeNode rootTreeNode = (MPSTreeNode) treeModel.getRoot();

    MPSTreeNode result = findModuleTreeNode(module, rootTreeNode);

    if (result != null) {
      return result;
    }

    if (!myModulesPool.isInitialized()) {
      myModulesPool.init();
      return findModuleTreeNode(module);
    }

    return null;
  }

  private MPSTreeNode findModuleTreeNode(final IModule module, MPSTreeNode rootTreeNode) {
    return findTreeNode(rootTreeNode,
      new Condition<MPSTreeNode>() {
        public boolean met(MPSTreeNode object) {
          return !(object instanceof ProjectModuleTreeNode) || object instanceof ProjectLanguageTreeNode;
        }
      },
      new Condition<MPSTreeNode>() {
        public boolean met(MPSTreeNode treeNode) {
          if (!(treeNode instanceof ProjectModuleTreeNode)) return false;
          IOperationContext nodeContext = treeNode.getOperationContext();
          return nodeContext != null && nodeContext.getModule() == module;
        }
      });
  }

  private MPSTreeNode findTreeNode(MPSTreeNode root,
                                   Condition<MPSTreeNode> descendCondition,
                                   Condition<MPSTreeNode> resultCondition) {
    if (resultCondition.met(root)) {
      return root;
    }

    if (descendCondition.met(root)) {
      for (MPSTreeNode node : root) {
        MPSTreeNode result = findTreeNode(node, descendCondition, resultCondition);
        if (result != null) {
          return result;
        }
      }
    }
    return null;
  }

  public void openModule(IModule m) {
    selectModule(m);
  }

  public MPSTreeNode findNextTreeNode(SNode node) {
    DefaultTreeModel model = (DefaultTreeModel) getTree().getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelDescriptor sModel = node.getModel().getModelDescriptor();
    SModelTreeNode sModelNode = findSModelTreeNode(rootNode, sModel);
    if (sModelNode == null) return null;
    MPSTreeNode foundNode = findTreeNode(sModelNode, node);
    if (foundNode == null) return null;
    DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) foundNode.getParent();
    TreeNode result = parentNode.getChildAfter(foundNode);
    if (result == null) result = parentNode.getChildBefore(foundNode);
    if (result == null) result = parentNode;
    return (MPSTreeNode) result;
  }

  public MPSTreeNode findNextTreeNode(SModelDescriptor modelDescriptor) {
    DefaultTreeModel model = (DefaultTreeModel) getTree().getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelTreeNode sModelNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (sModelNode == null) return null;
    DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) sModelNode.getParent();
    TreeNode result = parentNode.getChildAfter(sModelNode);
    if (result == null) result = parentNode.getChildBefore(sModelNode);
    if (result == null) result = parentNode;
    return (MPSTreeNode) result;
  }

  public SModelDescriptor getSelectedModel() {
    TreeNode selectedTreeNode = getSelectedModelTreeNode();
    if (selectedTreeNode == null) return null;
    return ((SModelTreeNode) selectedTreeNode).getSModelDescriptor();
  }

  public IModule getSelectedModule() {
    TreeNode selectedTreeNode = getSelectedModuleTreeNode();
    if (selectedTreeNode == null) return null;
    return ((ProjectModuleTreeNode) selectedTreeNode).getModule();
  }

  private TreeNode getSelectedModuleTreeNode() {
    TreeNode selectedTreeNode = getSelectedTreeNode();

    if (!(selectedTreeNode instanceof ProjectModuleTreeNode)) {
      return null;
    }
    return selectedTreeNode;
  }

  public TreeNode getSelectedModelTreeNode() {
    TreeNode selectedTreeNode = getSelectedTreeNode();
    if (selectedTreeNode == null) {
      return null;
    }
    while (selectedTreeNode != null && !(selectedTreeNode instanceof SModelTreeNode)) {
      selectedTreeNode = selectedTreeNode.getParent();
    }
    if (selectedTreeNode == null) {
      return null;
    }
    return selectedTreeNode;
  }

  ProjectLanguageTreeNode getSelectedProjectLanguageTreeNode() {
    TreeNode selectedTreeNode = getSelectedTreeNode();
    if (selectedTreeNode == null) {
      return null;
    }
    while (selectedTreeNode != null && !(selectedTreeNode instanceof ProjectLanguageTreeNode)) {
      selectedTreeNode = selectedTreeNode.getParent();
    }
    if (selectedTreeNode == null) {
      return null;
    }
    return (ProjectLanguageTreeNode) selectedTreeNode;
  }

  public TreeNode getSelectedTreeNode() {
    TreeNode selectedTreeNode;
    TreePath selectionPath = getTree().getSelectionPath();
    if (selectionPath == null) {
      return null;
    }
    Object selectedNode = selectionPath.getLastPathComponent();
    if (!(selectedNode instanceof TreeNode)) {
      return null;
    }
    selectedTreeNode = (TreeNode) selectedNode;
    return selectedTreeNode;
  }

  public List<SModelDescriptor> getSelectedModels() {
    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    TreePath[] paths = getTree().getSelectionPaths();
    if (paths == null) return result;
    for (TreePath path : paths) {
      TreeNode node = (TreeNode) path.getLastPathComponent();
      if (node instanceof SModelTreeNode) {
        result.add(((SModelTreeNode) node).getSModelDescriptor());
      }
    }
    return result;
  }

  public List<IModule> getSelectedModules() {
    List<IModule> result = new ArrayList<IModule>();
    TreePath[] paths = getTree().getSelectionPaths();
    if (paths == null) return result;
    for (TreePath path : paths) {
      TreeNode node = (TreeNode) path.getLastPathComponent();
      if (node instanceof ProjectModuleTreeNode) {
        result.add(((ProjectModuleTreeNode) node).getModule());
      }
    }
    return result;
  }

  List<SNode> getSelectedNodes() {
    List<SNode> result = new ArrayList<SNode>();
    TreePath[] paths = getTree().getSelectionPaths();
    if (paths == null) return result;
    for (TreePath path : paths) {
      MPSTreeNode node = (MPSTreeNode) path.getLastPathComponent();
      if (node instanceof MPSTreeNodeEx) {
        SNode snode = ((MPSTreeNodeEx) node).getSNode();
        if (snode != null) {
          result.add(snode);
        }
      }
    }
    return result;
  }

  List<String> getSelectedPackages() {
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

  public List<SNode> getNormalizedSelectedNodes() {
    List<SNode> selectedNodes = new ArrayList<SNode>(getSelectedNodes());
    HashSet<SNode> unselectedNodes = new HashSet<SNode>();

    for (SNode node : selectedNodes) {
      if (node == null) continue;
      if (unselectedNodes.contains(node)) continue;
      unselectedNodes.addAll(node.getDescendants());
    }
    selectedNodes.removeAll(unselectedNodes);
    return selectedNodes;
  }

  public void doRebuildTree() {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        if (isDisposed()) {
          return;
        }
        rebuildTreeNow();
      }
    });
  }

  private void rebuildTreeNow() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        rebuildTree();
      }
    });
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  public void dispose() {
    myDisposed = true;
  }

  public void rebuild() {
    doRebuildTree();
  }

  protected void removeListeners() {
    if (getMPSProject() != null) {
      SModelRepository.getInstance().removeModelRepositoryListener(mySModelRepositoryListener);
      CommandProcessor.getInstance().removeCommandListener(myCommandListener);
      MPSModuleRepository.getInstance().removeModuleRepositoryListener(myRepositoryListener);
      getMPSProject().getComponent(GeneratorManager.class).addGenerationListener(myGenerationListener);
      getProject().getComponent(FileEditorManager.class).removeFileEditorManagerListener(myEditorListener);
    }
  }

  protected void addListeners() {
    SModelRepository.getInstance().addModelRepositoryListener(mySModelRepositoryListener);
    CommandProcessor.getInstance().addCommandListener(myCommandListener);
    MPSModuleRepository.getInstance().addModuleRepositoryListener(myRepositoryListener);
    getMPSProject().getComponent(GeneratorManager.class).addGenerationListener(myGenerationListener);
    getProject().getComponent(FileEditorManager.class).addFileEditorManagerListener(myEditorListener);
  }

  protected SModelTreeNode findSModelTreeNode(MPSTreeNode parent, SModelDescriptor modelDescriptor) {
    if (!(parent instanceof SModelTreeNode) && !parent.isInitialized() && !parent.hasInfiniteSubtree()) {
      parent.init();
    }

    if (parent instanceof SModelTreeNode) {
      SModelTreeNode parentSModelNode = (SModelTreeNode) parent;
      SModelDescriptor parentModelDescriptor = parentSModelNode.getSModelDescriptor();
      if (parentModelDescriptor == modelDescriptor) {
        return parentSModelNode;
      }
    }
    for (MPSTreeNode node : parent) {
      SModelTreeNode foundNode = findSModelTreeNode(node, modelDescriptor);
      if (foundNode != null) {
        return foundNode;
      }
    }
    return null;
  }

  protected MPSTreeNodeEx findTreeNode(MPSTreeNode parent, SNode node) {
    if (!(parent.isInitialized() || parent.hasInfiniteSubtree())) parent.init();
    if (parent instanceof SNodeTreeNode) {
      SNodeTreeNode parentSNodeTreeNode = (SNodeTreeNode) parent;
      if (node == parentSNodeTreeNode.getSNode()) {
        return parentSNodeTreeNode;
      }
    }
    for (MPSTreeNode childNode : parent) {
      MPSTreeNodeEx foundNode = findTreeNode(childNode, node);
      if (foundNode != null) {
        return foundNode;
      }
    }
    return null;
  }


  public class MyTree extends MPSTree {
    public MyTree() {
      super();

      getSelectionModel().setSelectionMode(TreeSelectionModel.DISCONTIGUOUS_TREE_SELECTION);
      scrollsOnExpand = false;
      registerActions();
    }

    public void editNode(SNode node, IOperationContext context) {
      ProjectPane.this.editNode(node, context);
    }

    @Override
    public boolean isAutoOpen() {
      return myProjectView.isAutoscrollToSource(ID);
    }

    private void registerActions() {
      registerMPSAction(new DeleteModelsAction(), SModelTreeNode.class);
      registerMPSAction(new DeleteNodeAction(), SNodeTreeNode.class);
    }

    protected MPSTreeNode rebuild() {
      if (getProject() == null || getProject().isDisposed()) {
        return new TextTreeNode("Empty");
      }
      ProjectTreeNode root = new ProjectTreeNode(getMPSProject());

      List<MPSTreeNode> moduleNodes = new ArrayList<MPSTreeNode>();

      List<Solution> solutions = getMPSProject().getProjectSolutions();
      for (Solution solution : solutions) {
        ProjectSolutionTreeNode solutionTreeNode = new ProjectSolutionTreeNode(solution, getMPSProject());
        moduleNodes.add(solutionTreeNode);
      }

      List<Language> languages = getMPSProject().getProjectLanguages();
      for (Language language : languages) {
        ProjectLanguageTreeNode node = new ProjectLanguageTreeNode(language, getMPSProject());
        moduleNodes.add(node);
      }

      List<DevKit> devkits = getMPSProject().getProjectDevKits();
      for (DevKit devKit : devkits) {
        ProjectDevKitTreeNode node = new ProjectDevKitTreeNode(devKit, getMPSProject());
        moduleNodes.add(node);
      }

      ModulesNamespaceTreeBuilder builder = new ModulesNamespaceTreeBuilder(getMPSProject());
      for (MPSTreeNode mtn : moduleNodes) {
        builder.addNode(mtn);
      }
      builder.fillNode(root);

      myModulesPool = new ProjectModulesPoolTreeNode(getMPSProject());
      root.add(myModulesPool);

      if (getMPSProject().getComponentSafe(TransientModelsModule.class).getOwnModelDescriptors().size() != 0) {
        TransientModelsTreeNode transientModelsNode = new TransientModelsTreeNode(getMPSProject());
        root.add(transientModelsNode);
      }
      return root;
    }
  }

  private class ModulesNamespaceTreeBuilder extends DefaultNamespaceTreeBuilder {
    private MPSProject myProject;

    protected ModulesNamespaceTreeBuilder(MPSProject project) {
      myProject = project;
    }

    protected boolean isSorted() {
      return false;
    }

    protected String getNamespace(MPSTreeNode node) {
      String folder = null;

      if (node instanceof ProjectModuleTreeNode) {
        ProjectModuleTreeNode pmtn = (ProjectModuleTreeNode) node;
        folder = myProject.getFolderFor(pmtn.getModule());
      }

      if (folder != null) {
        return folder;
      }

      return "";
    }
  }

  private class MyModuleRepositoryListener extends ModuleRepositoryAdapter {
    public void moduleAdded(IModule module) {
      myNeedRebuild = true;
    }

    public void moduleRemoved(IModule module) {
      myNeedRebuild = true;
    }
  }

  private class MyCommandListener extends CommandAdapter {
    public void commandStarted(CommandEvent event) {
      myNeedRebuild = false;
    }

    public void commandFinished(CommandEvent event) {
      if (myNeedRebuild) {
        getTree().rebuildLater();
        myNeedRebuild = false;
      }
    }
  }

  private class MyModelRepositoryAdapter extends SModelRepositoryAdapter {
    public void modelRepositoryChanged() {
      myNeedRebuild = true;
    }

    public void beforeModelDeleted(SModelDescriptor modelDescriptor) {
      onBeforeModelWillBeDeleted(modelDescriptor);
    }
  }

  public MyState getState() {
    return new MyState((int) myScrollPane.getViewport().getViewPosition().getY(), getTree().saveState());
  }

  public void loadState(final MyState state) {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        rebuildTreeNow();
        getTree().loadState(state.getState());
        myScrollPane.getViewport().setViewPosition(new Point(0, state.getVerticalScrollPosition()));
      }
    });
  }

  public static class MyState {
    private TreeState myState;
    private int myVerticalScrollPosition = 0;

    public MyState() {
    }

    public MyState(int verticalScrollPosition, TreeState state) {
      myVerticalScrollPosition = verticalScrollPosition;
      myState = state;
    }

    public TreeState getState() {
      return myState;
    }

    public void setState(TreeState state) {
      myState = state;
    }

    public int getVerticalScrollPosition() {
      return myVerticalScrollPosition;
    }

    public void setVerticalScrollPosition(int verticalScrollPosition) {
      myVerticalScrollPosition = verticalScrollPosition;
    }
  }

  private class MyScrollPane extends JScrollPane implements DataProvider {
    private MyScrollPane(Component view) {
      super(view);
    }

    @Nullable
    public Object getData(@NonNls String dataId) {
      return ProjectPane.this.getData(dataId);
    }
  }

  private AnActionEvent createEvent(DataContext context) {
    return ActionUtils.createEvent(ActionPlaces.PROJECT_VIEW_POPUP, context);
  }

  private class MyCopyProvider implements CopyProvider {
    private CopyNodeAction myAction = new CopyNodeAction();

    public void performCopy(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      assert event.getPresentation().isEnabled();
      myAction.actionPerformed(event);
    }

    public boolean isCopyEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
  }

  private class MyPasteProvider implements PasteProvider {
    private PasteNodeAction myAction = new PasteNodeAction();

    public void performPaste(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      assert event.getPresentation().isEnabled();
      myAction.actionPerformed(event);
    }

    public boolean isPastePossible(DataContext dataContext) {
      return true;
    }

    public boolean isPasteEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
  }

  private class MyCutProvider implements CutProvider {
    private CutNodeAction myAction = new CutNodeAction();

    public void performCut(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      assert event.getPresentation().isEnabled();
      myAction.actionPerformed(event);
    }

    public boolean isCutEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
  }
}
