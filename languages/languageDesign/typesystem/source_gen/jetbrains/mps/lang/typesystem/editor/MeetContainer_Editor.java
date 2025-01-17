package jetbrains.mps.lang.typesystem.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.attribute.AttributeKind;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class MeetContainer_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_ujwr7t_a(editorContext, node);
  }
  private EditorCell createCollection_ujwr7t_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_ujwr7t_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_ujwr7t_a0(editorContext, node));
    editorCell.addEditorCell(this.createAttributedNodeCell_ujwr7t_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_ujwr7t_c0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_ujwr7t_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_ujwr7t_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "meet<");
    editorCell.setCellId("Constant_ujwr7t_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createAttributedNodeCell_ujwr7t_b0(EditorContext editorContext, SNode node) {
    EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
    EditorCell editorCell = manager.getCurrentAttributedCellWithRole(AttributeKind.Node.class, node);
    return editorCell;
  }
  private EditorCell createConstant_ujwr7t_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ">");
    editorCell.setCellId("Constant_ujwr7t_c0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_ujwr7t_d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MeetContainer_Editor.meetTypeSingleRoleHandler_ujwr7t_d0(node, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1206cd802f8L, 0x1206cd83bb0L, "meetType"), editorContext);
    return provider.createCell();
  }
  private class meetTypeSingleRoleHandler_ujwr7t_d0 extends SingleRoleCellProvider {
    public meetTypeSingleRoleHandler_ujwr7t_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("meetType");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_meetType");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no meetType>";
    }

  }
}
