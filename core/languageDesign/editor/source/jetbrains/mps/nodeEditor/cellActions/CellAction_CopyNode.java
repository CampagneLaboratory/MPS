package jetbrains.mps.nodeEditor.cellActions;

import jetbrains.mps.datatransfer.CopyPasteUtil;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.AttributesRolesUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.text.TextBuilder;
import jetbrains.mps.nodeEditor.text.TextRenderUtil;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;

import java.util.*;


/**
 * Author: Sergey Dmitriev.
 * Time: Nov 26, 2003 2:06:41 PM
 */
public class CellAction_CopyNode extends EditorCellAction {
  private static final Logger LOG = Logger.getLogger(CellAction_CopyNode.class);

  public boolean canExecute(EditorContext context) {
    return context.getNodeEditorComponent().getSelectedCell() != null;
  }

  public void execute(EditorContext context) {
    List<SNode> nodeList = new LinkedList<SNode>();
    EditorComponent editorComponent = context.getNodeEditorComponent();
    TextBuilder textBuilder = TextRenderUtil.getTextBuilderForSelectedCellsOfEditor(editorComponent);

    NodeRangeSelection nodeRangeSelection = editorComponent.getNodeRangeSelection();
    if (nodeRangeSelection.isActive()) {
      nodeList.addAll(nodeRangeSelection.getNodes());
      LOG.debug("Copy " + nodeList.size() + " nodes : ");
      for (SNode aNodeList : nodeList) {
        LOG.debug("    " + aNodeList.getDebugText());
      }
    } else {
      nodeList.add(editorComponent.getSelectedCell().getSNode());
      LOG.debug("Copy node : " + nodeList.get(0).getDebugText());
    }
    List<SNode> copyNodeList = new ArrayList<SNode>();
    Map<SNode, Set<SNode>> nodesAndAttributes = new HashMap<SNode, Set<SNode>>();
    for (SNode node : nodeList) {
      final SNode parent = node.getParent();
      if (parent != null && AttributesRolesUtil.isAttributeRole(node.getRole_())) {

        EditorCell selectedCell = editorComponent.getSelectedCell();
        Condition<EditorCell> condition = new Condition<EditorCell>() {
          public boolean met(EditorCell object) {
            SNode selectedNode = object.getSNode();
            return selectedNode != null &&
                    selectedNode.getParent() == parent && AttributesRolesUtil.isAttributeRole(selectedNode.getRole_());
          }
        };

        Set<SNode> selectedAttributes = new HashSet<SNode>();
        if (selectedCell instanceof EditorCell_Collection) {
          EditorCell_Collection selectedCollection = (EditorCell_Collection) selectedCell;
          for (EditorCell cell : selectedCollection.dfsCells()) {
            if (condition.met(cell)) {
              selectedAttributes.add(cell.getSNode());
            }
          }
        } else {
          if (condition.met(selectedCell)) {
            selectedAttributes.add(selectedCell.getSNode());
          }
        }
        copyNodeList.add(parent);
        nodesAndAttributes.put(parent, selectedAttributes);
      } else {
        copyNodeList.add(node);
      }
    }

    CopyPasteUtil.copyNodesAndTextToClipboard(copyNodeList, nodesAndAttributes, textBuilder.getText());
  }
}
