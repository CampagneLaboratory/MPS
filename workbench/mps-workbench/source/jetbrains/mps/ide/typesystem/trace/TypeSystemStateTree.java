package jetbrains.mps.ide.typesystem.trace;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.ui.tree.MPSTree;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.util.ColorAndGraphicsUtil;
import jetbrains.mps.newTypesystem.state.NodeMaps;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.newTypesystem.state.blocks.Block;
import jetbrains.mps.newTypesystem.state.blocks.BlockKind;
import jetbrains.mps.newTypesystem.state.blocks.InequalityBlock;
import jetbrains.mps.nodeEditor.DefaultEditorMessage;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.nodeEditor.NodeHighlightManager;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.openapi.editor.message.EditorMessageOwner;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Pair;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.event.TreeSelectionEvent;
import javax.swing.event.TreeSelectionListener;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import javax.swing.tree.TreeSelectionModel;
import java.awt.Color;
import java.awt.Graphics;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class TypeSystemStateTree extends MPSTree implements DataProvider {
  private IOperationContext myOperationContext;
  private State myState;
  private EditorComponent myEditorComponent;
  private NodeHighlightManager myHighlightManager;
  private EditorMessageOwner myMessageOwner;

  public TypeSystemStateTree(IOperationContext operationContext, State state, EditorComponent editorComponent) {
    myOperationContext = operationContext;
    myState = state;
    myEditorComponent = editorComponent;
    this.myHighlightManager = editorComponent.getHighlightManager();
    this.myMessageOwner = new EditorMessageOwner() {
    };
    this.getSelectionModel().addTreeSelectionListener(new TypeSystemStateTree.EditorMessageUpdater());
    this.rebuildNow();
    expandAll();
  }

  public void resetState(State state) {
    myState = state;
    rebuildNow();
    expandAll();
    clearSelection();
  }

  public void updateState(State state) {
    HashSet<String> existing = null;
    if (myState == state) {
      existing = new HashSet<String>();
      collectExisting(getRootNode(), existing);
    }
    myState = state;
    rebuildNow();
    expandAll();
    if (existing != null) {
      List<TreePath> newNodes = new ArrayList<TreePath>();
      collectNew(new TreePath(getRootNode()), existing, newNodes);
      setSelectionPaths(newNodes.toArray(new TreePath[newNodes.size()]));
    }
  }

  @Override
  public void dispose() {
    clearHighlighting();
    super.dispose();
  }

  @Override
  protected MPSTreeNode rebuild() {
    clearHighlighting();
    return createNode();
  }

  private void collectExisting(MPSTreeNode node, Collection<String> existing) {
    for (int idx = 0; idx < node.getChildCount(); idx++) {
      TreeNode child = node.getChildAt(idx);
      if (child instanceof MPSTreeNode) {
        existing.add(child.toString());
        collectExisting(((MPSTreeNode) child), existing);
      }
    }
  }

  private void collectNew(TreePath path, Collection<String> existing, Collection<TreePath> newNodes) {
    Object lastPathComponent = path.getLastPathComponent();
    if (lastPathComponent instanceof MPSTreeNode) {
      MPSTreeNode node = ((MPSTreeNode) lastPathComponent);
      for (int idx = 0; idx < node.getChildCount(); idx++) {
        TreeNode child = node.getChildAt(idx);
        if (child instanceof MPSTreeNode) {
          TreePath childPath = path.pathByAddingChild(child);
          if (!(existing.contains(child.toString()))) {
            newNodes.add(childPath);
          }
          collectNew(childPath, existing, newNodes);
        }
      }
    }
  }

  private TypeSystemStateTreeNode createNode() {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode("Type system state", myOperationContext);
    result.add(new TypeSystemStateTreeNode("Solving inequalities in process: " + myState.getInequalities().isSolvingInProcess(), myOperationContext));
    TypeSystemStateTreeNode[] nodes = {createInequalitiesNode(), createNode("Comparable", myState.getBlocks(BlockKind.COMPARABLE), null), createNode(
        "When concrete", myState.getBlocks(BlockKind.WHEN_CONCRETE), null), createNode("Errors", myState.getNodeMaps().getErrorListPresentation(),
        StyleRegistry.getInstance().getSimpleColor(Color.RED)), createNode("Check-only equations", myState.getBlocks(BlockKind.CHECK_EQUATION), null), createEquationsNode()};
    for (TypeSystemStateTreeNode node : nodes) {
      if (node.children().hasMoreElements()) {
        result.add(node);
      }
    }
    return result;
  }

  private TypeSystemStateTreeNode createNode(String category, List<String> entries, Color color) {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode(category, myOperationContext);
    if (color != null) {
      result.setColor(color);
    }
    for (String string : entries) {
      result.add(new TypeSystemStateTreeNode(string, myOperationContext));
    }
    return result;
  }

  private TypeSystemStateTreeNode createNode(String category, Set<Block> entries, Color color) {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode(category + " (" + entries.size() + ")", myOperationContext);
    if (color == null)
      color = Color.LIGHT_GRAY;
    result.setColor(color);
    for (Block block : entries) {
      result.add(new BlockTreeNode(block, myOperationContext, myState, myEditorComponent));
    }
    return result;
  }

  private TypeSystemStateTreeNode createInequalitiesNode() {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode("Inequalities by groups", myOperationContext);
    Set<String> nodePresentations = new HashSet<String>();
    for (Map.Entry<Set<SNode>, Set<InequalityBlock>> entry : myState.getInequalities().getInequalityGroups(
        myState.getBlocks(BlockKind.INEQUALITY)).entrySet()) {
      Set<SNode> key = entry.getKey();
      TypeSystemStateTreeNode current;
      if (key.isEmpty() || entry.getValue().size() <= 1) {
        current = result;
      } else {
        current = new TypeSystemStateTreeNode(key.toString(), myOperationContext);
      }
      nodePresentations.clear();
      for (InequalityBlock block : entry.getValue()) {
        BlockTreeNode node = new BlockTreeNode(block, myOperationContext, myState, myEditorComponent);
        String presentation = node.toString();
        if (!(nodePresentations.contains(presentation))) {
          current.add(node);
          nodePresentations.add(presentation);
        }
      }
      if (result != current) {
        result.add(current);
      }
    }
    return result;
  }

  private TypeSystemStateTreeNode createTypesNode() {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode("Types", myOperationContext);
    List<TypeTreeNode> list = new ArrayList<TypeTreeNode>();
    NodeMaps nodeMaps = myState.getNodeMaps();
    for (SNode node : nodeMaps.getTypeKeySet()) {
      SNode type = nodeMaps.getInitialType(node);
      list.add(new TypeTreeNode(myOperationContext, node, type, myState.expand(type), myEditorComponent));
    }
    Collections.sort(list, new Comparator<TypeTreeNode>() {
      @Override
      public int compare(TypeTreeNode o1, TypeTreeNode o2) {
        return o1.toString().compareTo(o2.toString());
      }
    });
    for (TypeTreeNode node : list) {
      result.add(node);
    }
    return result;
  }

  private TypeSystemStateTreeNode createEquationsNode() {
    TypeSystemStateTreeNode result = new TypeSystemStateTreeNode("Equations", myOperationContext);
    for (Map.Entry<SNode, Set<SNode>> equationGroup : myState.getEquations().getEquationGroups()) {
      result.add(new EquationTreeNode(myOperationContext, equationGroup.getKey(), equationGroup.getValue(), myState, myEditorComponent));
    }
    return result;
  }

  private void clearHighlighting() {
    myHighlightManager.clearForOwner(myMessageOwner);
  }

  private void highlightNodesWithTypes(final Collection<? extends MPSTreeNode> treeNodes) {
    clearHighlighting();
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        NodeMaps maps = myState.getNodeMaps();
        List<EditorMessage> messages = new ArrayList<EditorMessage>();
        for (MPSTreeNode treeNode : treeNodes) {
          TypeSystemStateTreeNode stateNode = (TypeSystemStateTreeNode) treeNode;
          List<SNode> vars = stateNode.getVariables();
          if (null == vars) {
            continue;
          }
          for (SNode var : vars) {
            SNode node = check_x8yvv7_a0a0d0c0a0a0a0b0t(maps, var);
            if (node != null && node.getModel() != null) {
              EditorCell nodeCell = myEditorComponent.findNodeCell(node);
              if (nodeCell != null) {
                messages.add(new TypeSystemStateTree.TypeEditorMessage(nodeCell, String.valueOf(var)));
              }
            }
          }
          if (messages.size() > 0) {
            myHighlightManager.mark(messages);
          }
        }
      }
    });
  }

  @Override
  protected ActionGroup createPopupActionGroup(final MPSTreeNode treeNode) {
    BaseAction goToNode = null;
    final TypeSystemStateTreeNode stateNode = (TypeSystemStateTreeNode) treeNode;
    final DefaultActionGroup group = ActionUtils.groupFromActions(ActionManager.getInstance().getAction("jetbrains.mps.ide.actions.GoToRule_Action"),
        goToNode);
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        NodeMaps maps = myState.getNodeMaps();
        List<SNode> vars = stateNode.getVariables();
        if (null == vars) {
          return;
        }
        for (SNode var : vars) {
          SNode node = check_x8yvv7_a0a0d0a0a0a0d0u(maps, var);
          if (node != null && node.getModel() != null) {
            final SNodeReference pointer = new jetbrains.mps.smodel.SNodePointer(node);
            group.add(new BaseAction("Go to node with type " + var) {
              @Override
              public void doExecute(AnActionEvent e, Map<String, Object> _params) {
                ModelAccess.instance().runWriteInEDT(new Runnable() {
                  @Override
                  public void run() {
                    SNode node = pointer.resolve(MPSModuleRepository.getInstance());
                    if (node == null) {
                      return;
                    }
                    NavigationSupport.getInstance().openNode(myOperationContext, node, true, true);
                  }
                });
              }
            });
          }
        }
      }
    });
    return group;
  }

  @Override
  @Nullable
  public Object getData(@NonNls String id) {
    TypeSystemStateTreeNode currentNode = (TypeSystemStateTreeNode) this.getCurrentNode();
    if (id.equals(MPSCommonDataKeys.OPERATION_CONTEXT.getName())) {
      return myOperationContext;
    }
    if (id.equals(MPSDataKeys.RULE_MODEL_AND_ID.getName())) {
      String ruleModel = currentNode.getRuleModel();
      String ruleId = currentNode.getRuleId();
      if (ruleModel == null || ruleId == null) {
        return null;
      }
      return new Pair<String, String>(ruleModel, ruleId);
    }
    return null;
  }

  private class TypeEditorMessage extends DefaultEditorMessage {
    private jetbrains.mps.openapi.editor.cells.EditorCell myCell;

    public TypeEditorMessage(jetbrains.mps.openapi.editor.cells.EditorCell cell, String message) {
      super(cell.getSNode(), StyleRegistry.getInstance().getSimpleColor(Color.blue), message, myMessageOwner);
      this.myCell = cell;
    }

    @Override
    public jetbrains.mps.openapi.editor.cells.EditorCell getCell(EditorComponent component) {
      return myCell;
    }

    @Override
    public boolean acceptCell(jetbrains.mps.openapi.editor.cells.EditorCell cell, EditorComponent component) {
      return myCell == cell;
    }

    @Override
    protected void paintWithColor(Graphics graphics, EditorCell cell, Color color) {
      int x = cell.getX() + cell.getLeftInset();
      int y = cell.getY() + cell.getTopInset();
      int width = cell.getWidth() - cell.getLeftInset() - cell.getRightInset() - 1;
      int height = cell.getHeight() - cell.getTopInset() - cell.getBottomInset() - 1;

      graphics.setColor(color);
      ColorAndGraphicsUtil.drawDashedRect(graphics, x, y, width, height);
    }

    @Override
    public boolean isBackground() {
      return true;
    }

    @Override
    public boolean sameAs(SimpleEditorMessage that) {
      return super.sameAs(that) && this.equals(that);
    }

    @Override
    public boolean equals(Object that) {
      if (that == null) {
        return false;
      }
      if (this == that) {
        return true;
      }
      if (that.getClass() != TypeSystemStateTree.TypeEditorMessage.class) {
        return false;
      }
      return this.myCell.equals(((TypeSystemStateTree.TypeEditorMessage) that).myCell);
    }

    @Override
    public int hashCode() {
      return myCell.hashCode() * 37;
    }
  }

  private class EditorMessageUpdater implements TreeSelectionListener {
    public EditorMessageUpdater() {
    }

    @Override
    public void valueChanged(TreeSelectionEvent event) {
      List<MPSTreeNode> selection = new ArrayList<MPSTreeNode>();
      TreePath[] selectionPaths = getSelectionPaths();
      if (selectionPaths == null) {
        clearHighlighting();
        return;
      }
      for (TreePath path : selectionPaths) {
        if (((TreeSelectionModel) event.getSource()).isPathSelected(path)) {
          MPSTreeNode selected = (MPSTreeNode) path.getLastPathComponent();
          selection.add(selected);
        }
      }
      highlightNodesWithTypes(selection);
    }
  }

  private static SNode check_x8yvv7_a0a0d0c0a0a0a0b0t(NodeMaps checkedDotOperand, SNode var) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getNode(var);
    }
    return null;
  }

  private static SNode check_x8yvv7_a0a0d0a0a0a0d0u(NodeMaps checkedDotOperand, SNode var) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getNode(var);
    }
    return null;
  }
}
