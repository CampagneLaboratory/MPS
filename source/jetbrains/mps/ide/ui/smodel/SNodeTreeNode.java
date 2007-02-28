package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.ide.AbstractProjectFrame;
import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.ActionManager;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.ide.ui.MPSTreeNodeEx;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.presentation.NodePresentationUtil;

import javax.swing.Icon;
import javax.swing.JPopupMenu;
import javax.swing.tree.DefaultTreeModel;
import java.util.List;
import java.util.Arrays;

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

  public SNodeTreeNode(SNode node, IOperationContext operationContext) {
    this(node, null, operationContext);
  }

  public SNodeTreeNode(SNode node, String role, IOperationContext operationContext) {
    super(operationContext);
    myNode = node;
    myRole = role;
  }

  public SModelTreeNode getSModelModelTreeNode() {
    if (getParent() instanceof SModelTreeNode) {
      return (SModelTreeNode) getParent();
    }

    if (getParent() instanceof SNodeTreeNode) {
      return ((SNodeTreeNode) getParent()).getSModelModelTreeNode();
    }

    if (getParent() instanceof SNodeGroupTreeNode) {
      return (SModelTreeNode) ((SNodeGroupTreeNode) getParent()).getParent();
    }

    return null;
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

  public void update() {
    this.removeAllChildren();
    myInitialized = false;
  }

  public boolean isInitialized() {
    return myInitialized;
  }

  public void init() {
    this.removeAllChildren();
    SNode n = getSNode();
    if (n == null) return;

    if (showPropertiesAndReferences()) {
      add(new PropertiesTreeNode(getOperationContext(), n));
      add(new ReferencesTreeNode(getOperationContext(), n));
    }
    
    for (SNode childNode : n.getChildren()) {
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
        if (!matchingText.equals(nodeString)) {
          output.append(" [").append(matchingText).append("]");
        }
      }
    }

    return output.toString();
  }
}
