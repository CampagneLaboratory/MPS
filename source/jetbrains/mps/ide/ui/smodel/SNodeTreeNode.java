package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.ide.AbstractProjectFrame;
import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.ActionManager;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.modelchecker.ModelCheckResult;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.ide.ui.MPSTreeNodeEx;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.presentation.NodePresentationUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.CollectionUtil;

import javax.swing.Icon;
import javax.swing.JPopupMenu;
import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import java.awt.Color;
import java.util.Arrays;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Igoor
 * Date: Aug 25, 2005
 * Time: 5:20:04 PM
 * To change this template use File | Settings | File Templates.
 */
public class SNodeTreeNode extends MPSTreeNodeEx {
  protected boolean myInitialized = false;
  private SNode myNode;
  private String myRole;
  private Condition<SNode> myCondition = Condition.TRUE_CONDITION;

  public SNodeTreeNode(SNode node, IOperationContext operationContext) {
    this(node, null, operationContext);
  }

  public SNodeTreeNode(SNode node, String role, IOperationContext operationContext) {
    this(node, role, operationContext, Condition.TRUE_CONDITION);
  }

  public SNodeTreeNode(SNode node, String role, IOperationContext operationContext, Condition<SNode> condition) {
    super(operationContext);
    myNode = node;
    myRole = role;
    myCondition = condition;
  }

  public SModelTreeNode getSModelModelTreeNode() {
    if (getParent() instanceof SModelTreeNode) {
      return (SModelTreeNode) getParent();
    }

    if (getParent() instanceof SNodeTreeNode) {
      return ((SNodeTreeNode) getParent()).getSModelModelTreeNode();
    }

    if (getParent() instanceof SNodeGroupTreeNode) {
      TreeNode node = getParent();
      while (!(node instanceof SModelTreeNode)) {
        node = node.getParent();
      }
      return (SModelTreeNode) node;
    }

    return null;
  }

  public boolean isAutoExpandable() {
    return !myNode.isRoot();
  }

  public JPopupMenu getPopupMenu() {
    JPopupMenu result = new JPopupMenu();
    ProjectPane pane = getOperationContext().getComponent(ProjectPane.class);
    if (pane == null) return null;

    //todo hack
    List<SNode> selection; 
    if (getTree() == pane.getTree()) {
      selection = pane.getNormalizedSelectedNodes();
    } else {
      selection = Arrays.asList(getSNode());
    }

    ActionManager.instance().getGroup(ProjectPane.PROJECT_PANE_NODE_ACTIONS).add(result, new ActionContext(getOperationContext(), getSNode(), selection));
    return result;
  }

  public Object getUserObject() {
    return myNode;
  }

  public int getToggleClickCount() {
    return -1;
  }

  public SNode getSNode() {
    return myNode;
  }

  public String getNodeIdentifier() {
    if (getSNode() == null) return "null";
    return getSNode().getId();
  }

  protected void doUpdate() {
    this.removeAllChildren();
    myInitialized = false;
  }

  public boolean isInitialized() {
    return myInitialized;
  }

  protected void doInit() {
    this.removeAllChildren();
    SNode n = getSNode();
    if (n == null) return;

    if (showPropertiesAndReferences()) {
      add(new PropertiesTreeNode(getOperationContext(), n));
      add(new ReferencesTreeNode(getOperationContext(), n));
    }

    List<SNode> children = n.getChildren();
    List<SNode> filteredChildren = CollectionUtil.filter(children, myCondition);
    for (SNode childNode : filteredChildren) {
      add(getSModelModelTreeNode().createSNodeTreeNode(childNode, childNode.getRole_(), getOperationContext()));
    }

    DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
    treeModel.nodeStructureChanged(this);
    myInitialized = true;
  }

  private boolean showPropertiesAndReferences() {
    return getTree() instanceof ProjectPane.MyTree &&
            getOperationContext().getComponent(ProjectPane.class).isShowPropertiesAndReferences();
  }

  public void doubleClick() {
    IDEProjectFrame projectFrame = (IDEProjectFrame) getOperationContext().getComponent(AbstractProjectFrame.class);
    projectFrame.openNode(myNode, getOperationContext());
  }

  public Icon getIcon(boolean expanded) {
    if (myNode != null) {
      return IconManager.getIconFor(myNode);
    } else {
      return super.getIcon(expanded);
    }
  }

  public String toString() {
    StringBuffer output = new StringBuffer();

    if (myRole != null) {
      output.append(myRole).append(" : ");
    }

    SNode node = getSNode();
    if (node != null) {
      String nodeString = node.toString();
      output.append(nodeString);
      if (myRole != null) {
        String matchingText = NodePresentationUtil.matchingText(node);
        if (matchingText != null && !matchingText.equals(nodeString)) {
          output.append(" [").append(matchingText).append("]");
        }
      }
    }

    return output.toString();
  }

  public boolean hasErrors() {
    SModelTreeNode stn = getSModelModelTreeNode();
    if (stn != null) {
        // the following line causes sometimes a nasty NPE
        ModelCheckResult r = stn.getModelCheckResult();
        return r != null && r.hasErrorsInside(getSNode());
    }
    return false;
  }

  public Color getColor() {
    if (hasErrors()) {
      return Color.RED;
    }
    return Color.BLACK;
  }
}
