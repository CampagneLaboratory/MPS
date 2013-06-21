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
package jetbrains.mps.ide.ui.tree.smodel;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.editor.colors.ColorKey;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.LogicalViewTree;
import jetbrains.mps.ide.ui.tree.ErrorState;
import jetbrains.mps.ide.ui.tree.MPSTreeNodeEx;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNodeOperations;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.CoreActionGroups;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.util.Condition;

import javax.swing.tree.DefaultTreeModel;
import javax.swing.tree.TreeNode;
import java.awt.Color;
import java.awt.font.TextAttribute;

public class SNodeTreeNode extends MPSTreeNodeEx {
  private static final Logger LOG = LogManager.getLogger(SNodeTreeNode.class);

  protected boolean myInitialized = false;
  private SNode myNode;
  private String myRole;
  private Condition<SNode> myCondition;

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
    setUserObject(node.getNodeId().toString());

    if (myNode == null) {
      setNodeIdentifier("null");
    } else {
      setNodeIdentifier(myNode.getNodeId().toString());
    }
  }

  @Override
  protected final void doUpdatePresentation() {
    if (getSModelModelTreeNode() != null) {
      getSModelModelTreeNode().getDependencyRecorder().rebuild(this, new Runnable() {
        @Override
        public void run() {
          doUpdatePresentation_internal();
        }
      });
    } else {
      doUpdatePresentation_internal();
    }
  }

  @Override
  protected void onRemove() {
    super.onRemove();
    if (getSModelModelTreeNode() != null) {
      getSModelModelTreeNode().getDependencyRecorder().remove(this);
    }
  }

  protected void doUpdatePresentation_internal() {
    if (jetbrains.mps.util.SNodeOperations.isDisposed(myNode)) {
      return;
    }
    if (hasErrors()) {
      setColor(Color.RED);
    } else {
      setColor(EditorColorsManager.getInstance().getGlobalScheme().getColor(ColorKey.createColorKey("FILESTATUS_NOT_CHANGED")));
    }
    if (myNode != null) {
      setIcon(IconManager.getIconFor(myNode));
    }

    if (SNodeOperations.isUnknown(myNode)) {
      setErrorState(ErrorState.ERROR);
    }
    //if ((SLinkOperations.getTarget(myNode, AttributesRolesUtil.childRoleFromAttributeRole("deprecatedNode"), true) != null)) {
    if (AttributeOperations.getNodeAttribute(myNode, "deprecatedNode") != null) {
      addFontAttribute(TextAttribute.STRIKETHROUGH, TextAttribute.STRIKETHROUGH_ON);
    }

    setText(caclulateNodeTextPresentation());
    setAutoExpandable(myNode != null && !(myNode.getModel() != null && myNode.getParent() == null));
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

  @Override
  public ActionGroup getActionGroup() {
    return ActionUtils.getGroup(CoreActionGroups.NODE_ACTIONS);
  }

  @Override
  public int getToggleClickCount() {
    return -1;
  }

  @Override
  public SNode getSNode() {
    return myNode;
  }

  @Override
  protected void doUpdate() {
    this.removeAllChildren();
    myInitialized = false;
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  @Override
  protected void doInit() {
    this.removeAllChildren();
    SNode n = getSNode();
    if (n == null || jetbrains.mps.util.SNodeOperations.isDisposed(n)) return;

    NodeChildrenProvider provider = getAncestor(NodeChildrenProvider.class);
    if (provider != null) {
      provider.populate(this);
    }

    for (SNode childNode : n.getChildren()) {
      if (!myCondition.met(childNode)) continue;
      SNodeTreeNode child = createChildTreeNode(childNode, childNode.getRoleInParent(), getOperationContext());
      child.myCondition = myCondition;
      add(child);
    }

    DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
    treeModel.nodeStructureChanged(this);
    myInitialized = true;
  }

  protected SNodeTreeNode createChildTreeNode(SNode childNode, String role, IOperationContext operationContext) {
    SModelTreeNode sModelTreeNode = getSModelModelTreeNode();
    SNodeTreeNode child = sModelTreeNode == null ? new SNodeTreeNode(childNode, role, operationContext)
        : sModelTreeNode.createSNodeTreeNode(childNode, role, operationContext);
    return child;
  }

  @Override
  public void doubleClick() {
    if (getTree() instanceof LogicalViewTree) {
      editNode((LogicalViewTree) getTree(), true);
    }
  }

  @Override
  public void autoscroll() {
    super.autoscroll();
    if (getTree() instanceof LogicalViewTree) {
      editNode((LogicalViewTree) getTree(), false);
    }
  }

  private void editNode(final LogicalViewTree treeView, final boolean focus) {
    ModelAccess.instance().runWriteInEDT(new Runnable() {
      @Override
      public void run() {
        if (jetbrains.mps.util.SNodeOperations.isDisposed(myNode) || myNode.getModel() == null) {
          return;
        }
        treeView.editNode(myNode, getOperationContext(), focus);
      }
    });
  }

  protected SModel getModelDescriptor() {
    SNode node = getSNode();
    if (node == null) return null;
    SModel md = node.getModel();
    return md;
  }

  private String caclulateNodeTextPresentation() {
    StringBuffer output = new StringBuffer();

    if (myRole != null) {
      output.append(myRole).append(" : ");
    }

    SNode node = getSNode();
    if (node != null) {
      String nodePresentation;
      try {
        nodePresentation = node.getPresentation();
      } catch (Throwable t) {
        nodePresentation = null;
        LOG.error(null, t);
      }
      String nodeString = nodePresentation;
      output.append(nodeString);
      /*if (myRole != null) {
        String presentation = node.getPresentation();
        if (presentation != null && !presentation.equals(nodeString)) {
          output.append(" [").append(presentation).append("]");
        }
      }*/
    }

    return output.toString();
  }

  public boolean hasErrors() {
    return false;
  }

  public interface NodeChildrenProvider {

    void populate(SNodeTreeNode treeNode);
  }
}
