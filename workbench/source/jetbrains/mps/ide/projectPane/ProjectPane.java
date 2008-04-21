package jetbrains.mps.ide.projectPane;

import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.MPSToolBar;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.IActionDataProvider;
import jetbrains.mps.ide.actions.model.DeleteModelsAction;
import jetbrains.mps.ide.actions.nodes.DeleteNodeAction;
import jetbrains.mps.ide.actions.*;
import jetbrains.mps.ide.components.ComponentsUtil;
import jetbrains.mps.ide.ui.*;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.smodel.SNodeTreeNode;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.*;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelsAdapter;
import jetbrains.mps.util.Condition;
import org.jdom.Element;

import javax.swing.*;
import javax.swing.tree.DefaultMutableTreeNode;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/**
 * Author: Sergey Dmitriev
 * Created Oct 25, 2003
 */
public class ProjectPane extends AbstractProjectTreeView implements IActionDataProvider {
  private static final Logger LOG = Logger.getLogger(ProjectPane.class);

  public static final String PROJECT_PANE_NODE_ACTIONS = ProjectPaneNodeActions_ActionGroup.ID;
  public static final String PROJECT_PANE_NODE_ACTIONS_INTERNAL = ProjectPaneNodeActionsInternal_ActionGroup.ID;
  public static final String PROJECT_PANE_MODEL_ACTIONS = ProjectPaneModelActions_ActionGroup.ID;
  public static final String PROJECT_PANE_MODEL_ACTIONS_INTERNAL = ProjectPaneModelActionsInternal_ActionGroup.ID;
  public static final String PROJECT_PANE_MODEL_ACTIONS_GENERATE_OBSOLETE_MENU = "project-pane-model-actions-generate-obsolete-menu";
  public static final String PROJECT_PANE_VCS_ACTIONS = "project-pane-vcs-actions";
  public static final String PROJECT_PANE_LANGUAGE_ACTIONS = LanguageActions_ActionGroup.ID;
  public static final String PROJECT_PANE_DEVKIT_ACTIONS = DevkitActions_ActionGroup.ID;
  public static final String PROJECT_PANE_PROJECT_ACTIONS = ProjectActions_ActionGroup.ID;
  public static final String PROJECT_PANE_PROJECT_SOLUTION_ACTIONS = SolutionActions_ActionGroup.ID;
  public static final String PROJECT_PANE_GENERATOR_ACTIONS = GeneratorActions_ActionGroup.ID;
  public static final String PROJECT_PANE_TRANSIENT_MODULES_ACTIONS = TransientModulesActions_ActionGroup.ID;

  public static final String PROJECT_NEW_ACTIONS = ProjectNewActions_ActionGroup.ID;
  public static final String SOLUTION_NEW_ACTIONS = SolutionNewActions_ActionGroup.ID;
  public static final String LANGUAGE_NEW_ACTIONS = LanguageNewActions_ActionGroup.ID;
  public static final String GENERATOR_NEW_ACTIONS = GeneratorNewActions_ActionGroup.ID;

  public static final String SHOW_P_AND_R = "show-p-and-r";
  public static final String AUTOSCROLL_TO_SOURCE = "autoscroll-to-source";
  public static final String AUTOSCROLL_FROM_SOURCE = "autoscroll-from-source";

  private MyTree myTree = new MyTree();
  private ProjectModulesPoolTreeNode myModulesPool;
  private IDEProjectFrame myIDE;

  private boolean myShowProperties;

  private JToolBar myToolbar = new MPSToolBar();
  private JToggleButton myPAndRToggle;
  private JToggleButton myAutoscrollToSource;
  private JToggleButton myAutoscrollFromSource;

  public ProjectPane(IDEProjectFrame ide) {
    myIDE = ide;
    SModelRepository.getInstance().addSModelsListener(new SModelsAdapter() {
      public void modelCreated(SModelDescriptor modelDescriptor) {
      }

      public void modelDeleted(SModelDescriptor modelDescriptor) {
      }

      public void modelWillBeDeleted(SModelDescriptor modelDescriptor) {
        ProjectPane.this.selectNextTreeModel(modelDescriptor);
      }
    });

    setLayout(new BorderLayout());

    myToolbar.setFloatable(false);
    add(myToolbar, BorderLayout.NORTH);

    JScrollPane scroller = new JScrollPane(myTree);
    scroller.setBorder(null);
    add(scroller, BorderLayout.CENTER);
    myTree.addKeyListener(new KeyAdapter() {
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

    myToolbar.add(myPAndRToggle = new JToggleButton() {
      {
        setAction(new AbstractAction("", Icons.PROP_AND_REF) {
          public void actionPerformed(ActionEvent e) {
            setShowPropertiesAndReferences(!isShowPropertiesAndReferences());
          }
        });

        setToolTipText("Show properties and references");
      }

      public void updateUI() {
        setUI(new MPSToolBarButtonUI());
      }
    });

    myToolbar.add(myAutoscrollToSource = new JToggleButton() {
      {
        setAction(new AbstractAction("", Icons.AUTOSCROLL_TO_SOURCE) {
          public void actionPerformed(ActionEvent e) {
            myTree.setAutoOpen(!myTree.isAutoOpen());
          }
        });

        setToolTipText("Autoscroll to source");
      }

      public void updateUI() {
        setUI(new MPSToolBarButtonUI());
      }
    });

    myToolbar.add(myAutoscrollFromSource = new JToggleButton() {
      {
        setAction(new AbstractAction("", Icons.AUTOSCROLL_FROM_SOURCE) {
          public void actionPerformed(ActionEvent e) {
          }
        });

        setToolTipText("Autoscroll from source");
      }

      public void updateUI() {
        setUI(new MPSToolBarButtonUI());
      }
    });

    myToolbar.add(new JButton() {
      {
        setAction(new AbstractAction("", jetbrains.mps.ide.findusages.view.icons.Icons.COLLAPSE_ICON) {
          public void actionPerformed(ActionEvent e) {
            for (MPSTreeNode rootChild : myTree.getRootNode()) {
              myTree.collapseAll(rootChild);
            }
          }
        });

        setToolTipText("Collapse all");
      }


      public void updateUI() {
        setUI(new MPSToolBarButtonUI());
      }
    });

    rebuildTree();
  }


  public String getTitle() {
    return "Logical View";
  }

  public boolean isShowPropertiesAndReferences() {
    return myShowProperties;
  }

  public void setShowPropertiesAndReferences(boolean showProperties) {
    myShowProperties = showProperties;
    myPAndRToggle.getModel().setSelected(showProperties);
    myIDE.getIProjectPane().rebuild();
  }

  public void openEditor() {
    TreePath selectionPath = myTree.getSelectionPath();
    if (selectionPath == null) return;
    if (!(selectionPath.getLastPathComponent() instanceof SNodeTreeNode)) return;
    SNodeTreeNode selectedTreeNode = (SNodeTreeNode) selectionPath.getLastPathComponent();
    myIDE.openNode(selectedTreeNode.getSNode(), selectedTreeNode.getOperationContext());
  }


  public <T> T get(Class<T> cls) {
    if (cls == SNode.class) return (T) getSelectedNode();
    if (cls == SModelDescriptor.class) return (T) getSelectedModel();
    if (cls == List.class) {
      List result = new ArrayList();
      result.addAll(getSelectedModels());
      result.addAll(getSelectedNodes());      
      result.addAll(getSelectedModules());
      return (T) result;
    }
    if (cls == IOperationContext.class) return (T) getContextForSelection();
    return null;
  }

  private IOperationContext getContextForSelection() {
    TreePath[] selection = myTree.getSelectionPaths();
    if (selection == null) return null;
    if (selection.length > 0) {
      MPSTreeNode lastPathComponent = (MPSTreeNode) selection[0].getLastPathComponent();
      return lastPathComponent.getOperationContext();
    }
    return null;
  }

  private SNode getSelectedNode() {
    if (getSelectedNodes() != null && getSelectedNodes().size() == 1) {
      return getSelectedNodes().get(0);
    }
    return null;
  }

  public void rebuildTree() {
    getTree().rebuildNow();
  }

  public void selectNode(final SNode node, final IOperationContext context) {
    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        getTree().runWithoutExpansion(new Runnable() {
          public void run() {
            myIDE.showProjectPane();

            IModule module = context.getModule();
            if (module == null) {
              selectNode(node);
              return;
            }

            MPSTreeNode moduleTreeNode = findModuleTreeNode(module);
            if (moduleTreeNode == null) {
              LOG.error("Couldn't find tree node for module: " + module);
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

            // search in SModel sub-tree
            MPSTreeNodeEx treeNodeToSelect = findTreeNode(modelTreeNode, node);
            if (treeNodeToSelect != null) {
              TreePath treePath = new TreePath(treeNodeToSelect.getPath());
              myTree.setSelectionPath(treePath);
              myTree.scrollPathToVisible(treePath);
            } else {
              LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node not found.");
            }
          }
        });
      }
    });
  }

  public MPSTreeNode findModuleTreeNode(final IModule module) {
    DefaultTreeModel treeModel = (DefaultTreeModel) myTree.getModel();
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
          return !(object instanceof ProjectModuleTreeNode)
            || object instanceof ProjectLanguageTreeNode;
        }
      },
      new Condition<MPSTreeNode>() {
        public boolean met(MPSTreeNode treeNode) {
          IOperationContext nodeContext = treeNode.getOperationContext();
          return (nodeContext != null && nodeContext.getModule() == module);
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

  public void scrollFromSource(SNode node) {
    if (isAutoscrollFromSource()) {
      selectNode(node);
    }
  }

  public void openModule(IModule m) {
    selectModule(m);
  }

  public void selectNode(SNode node) {
    DefaultTreeModel model = (DefaultTreeModel) myTree.getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelDescriptor modelDescriptor = node.getModel().getModelDescriptor();
    assert modelDescriptor != null;
    SModelTreeNode modelTreeNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (modelTreeNode == null) {
      LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node for model \"" + modelDescriptor.getModelUID() + "\" not found.");
      return;
    }
    MPSTreeNodeEx treeNodeToSelect = findTreeNode(modelTreeNode, node);
    if (treeNodeToSelect != null) {
      TreePath treePath = new TreePath(treeNodeToSelect.getPath());
      myTree.setSelectionPath(treePath);
      myTree.scrollPathToVisible(treePath);
    } else {
      LOG.warning("Couldn't select node " + node.getDebugText() + " : tree node not found.");
    }
  }

  public void selectRoot() {
    myTree.setSelectionPath(new TreePath(myTree.getRootNode()));
  }

  public MPSTreeNode findNextTreeNode(SNode node) {
    DefaultTreeModel model = (DefaultTreeModel) myTree.getModel();
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
    DefaultTreeModel model = (DefaultTreeModel) myTree.getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelTreeNode sModelNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (sModelNode == null) return null;
    DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) sModelNode.getParent();
    TreeNode result = parentNode.getChildAfter(sModelNode);
    if (result == null) result = parentNode.getChildBefore(sModelNode);
    if (result == null) result = parentNode;
    return (MPSTreeNode) result;
  }

  public void selectNextTreeNode(SNode node) {
    MPSTreeNode mpsTreeNode = findNextTreeNode(node);
    myTree.selectNode(mpsTreeNode);
  }

  public void selectNextTreeModel(SModelDescriptor modelDescriptor) {
    MPSTreeNode mpsTreeNode = findNextTreeNode(modelDescriptor);
    myTree.selectNode(mpsTreeNode);
  }

  public void selectModel(SModelDescriptor modelDescriptor) {
    DefaultTreeModel model = (DefaultTreeModel) myTree.getModel();
    MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
    SModelTreeNode modelTreeNode = findSModelTreeNode(rootNode, modelDescriptor);
    if (modelTreeNode != null) {
      TreePath treePath = new TreePath(modelTreeNode.getPath());
      myTree.setSelectionPath(treePath);
      myTree.scrollPathToVisible(treePath);
    } else {
      LOG.warning("Couldn't select model \"" + modelDescriptor + "\" : tree node not found.");
    }
  }

  public void selectModule(final IModule module) {
    CommandProcessor.instance().executeLightweightCommandInEDT(new Runnable() {
      public void run() {
        DefaultTreeModel model = (DefaultTreeModel) myTree.getModel();
        MPSTreeNode rootNode = (MPSTreeNode) model.getRoot();
        MPSTreeNode languageTreeNode = findModuleTreeNode(module);
        if (languageTreeNode != null) {
          TreePath treePath = new TreePath(languageTreeNode.getPath());
          myTree.setSelectionPath(treePath);
          myTree.scrollPathToVisible(treePath);
        } else {
          LOG.warning("Couldn't select module \"" + module + "\" : tree node not found.");
        }
      }
    });
  }

  public SModelDescriptor getSelectedModel() {
    TreeNode selectedTreeNode = getSelectedModelTreeNode();
    if (selectedTreeNode == null) return null;
    return ((SModelTreeNode) selectedTreeNode).getSModelDescriptor();
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
    TreePath selectionPath = myTree.getSelectionPath();
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
    TreePath[] paths = myTree.getSelectionPaths();
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
    TreePath[] paths = myTree.getSelectionPaths();
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
    TreePath[] paths = myTree.getSelectionPaths();
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

  public MPSTree getTree() {
    return myTree;
  }

  public JComponent getComponent() {
    return this;
  }

  public boolean isAutoscrollFromSource() {
    return myAutoscrollFromSource.getModel().isSelected();
  }

  //externalization
  public void read(Element element, MPSProject project) {
    getTree().fromXML(element.getChild(MPSTree.MPS_TREE));
    getTree().scrollRectToVisible(ComponentsUtil.elementToRectangle(element.getChild(ComponentsUtil.RECTANGLE)));
    if (element.getAttributeValue(SHOW_P_AND_R) != null) {
      setShowPropertiesAndReferences("true".equals(element.getAttributeValue(SHOW_P_AND_R)));
    }
    if (element.getAttributeValue(AUTOSCROLL_TO_SOURCE) != null) {
      myTree.setAutoOpen("true".equals(element.getAttributeValue(AUTOSCROLL_TO_SOURCE)));
      myAutoscrollToSource.getModel().setSelected(myTree.isAutoOpen());
    }
    if (element.getAttributeValue(AUTOSCROLL_FROM_SOURCE) != null) {
      myAutoscrollFromSource.getModel().setSelected("true".equals(element.getAttributeValue(AUTOSCROLL_FROM_SOURCE)));
    }
  }

  public void write(Element element, MPSProject project) {
    element.addContent(getTree().toXML());
    element.addContent(ComponentsUtil.rectangleToElement(getTree().getVisibleRect()));
    element.setAttribute(SHOW_P_AND_R, "" + myShowProperties);
    element.setAttribute(AUTOSCROLL_TO_SOURCE, "" + myTree.isAutoOpen());
    element.setAttribute(AUTOSCROLL_FROM_SOURCE, "" + myAutoscrollFromSource.getModel().isSelected());
  }

  public class MyTree extends MPSTree {
    public MyTree() {
      super();
      scrollsOnExpand = false;

      registerActions();
    }

    private void registerActions() {
      registerMPSAction(new DeleteModelsAction(), SModelTreeNode.class);
      registerMPSAction(new DeleteNodeAction(), SNodeTreeNode.class);
    }

    protected ActionContext getActionContext(MPSTreeNode node, List<MPSTreeNode> nodes) {
      ActionContext actionContext = super.getActionContext(node, nodes);
      if (node instanceof SNodeTreeNode) {
        actionContext.put(SNode.class, ((SNodeTreeNode) node).getSNode());
        List<SNode> otherNodes = new ArrayList<SNode>();
        for (MPSTreeNode aNode : nodes) {
          if (aNode instanceof SNodeTreeNode)
            otherNodes.add(((SNodeTreeNode) aNode).getSNode());
        }
        actionContext.put(List.class, otherNodes);
      } else if (node instanceof SModelTreeNode) {
        actionContext.put(SModelDescriptor.class, ((SModelTreeNode) node).getSModelDescriptor());
      }

      return actionContext;
    }

    protected MPSTreeNode rebuild() {
      if (getProject() == null) {
        return new TextTreeNode("Empty");
      }
      ProjectTreeNode root = new ProjectTreeNode(getProject());


      List<MPSTreeNode> moduleNodes = new ArrayList<MPSTreeNode>();

      List<Solution> solutions = getProject().getProjectSolutions();
      for (Solution solution : solutions) {
        ProjectSolutionTreeNode solutionTreeNode = new ProjectSolutionTreeNode(solution, getProject());
        moduleNodes.add(solutionTreeNode);
      }

      List<Language> languages = getProject().getProjectLanguages();
      for (Language language : languages) {
        ProjectLanguageTreeNode node = new ProjectLanguageTreeNode(language, getProject());
        moduleNodes.add(node);
      }

      List<DevKit> devkits = getProject().getProjectDevKits();
      for (DevKit devKit : devkits) {
        ProjectDevKitTreeNode node = new ProjectDevKitTreeNode(devKit, getProject());
        moduleNodes.add(node);
      }

      ModulesNamespaceTreeBuilder builder = new ModulesNamespaceTreeBuilder(getProject());
      for (MPSTreeNode mtn : moduleNodes) {
        builder.addNode(mtn);
      }
      builder.fillNode(root);

      myModulesPool = new ProjectModulesPoolTreeNode(getProject());
      root.add(myModulesPool);

      TransientModulesTreeNode transientModules = new TransientModulesTreeNode(getProject());
      root.add(transientModules);

      return root;
    }
  } // private class MyTree

  private class ModulesNamespaceTreeBuilder extends NamespaceTreeBuilder {
    private MPSProject myProject;

    private ModulesNamespaceTreeBuilder(MPSProject project) {
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

}