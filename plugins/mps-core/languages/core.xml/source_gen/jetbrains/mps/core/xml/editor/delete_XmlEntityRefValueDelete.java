package jetbrains.mps.core.xml.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.xml.actions.AttributeUtil;

public class delete_XmlEntityRefValueDelete {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new delete_XmlEntityRefValueDelete.delete_XmlEntityRefValueDelete_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new delete_XmlEntityRefValueDelete.delete_XmlEntityRefValueDelete_BACKSPACE(node));
  }
  public static class delete_XmlEntityRefValueDelete_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public delete_XmlEntityRefValueDelete_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode pnode = SNodeOperations.as(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, "jetbrains.mps.core.xml.structure.XmlAttribute"));
      SNodeOperations.deleteNode(node);
      AttributeUtil.updateValue(pnode, editorContext);
    }
  }
  public static class delete_XmlEntityRefValueDelete_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public delete_XmlEntityRefValueDelete_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNode pnode = SNodeOperations.as(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, "jetbrains.mps.core.xml.structure.XmlAttribute"));
      SNodeOperations.deleteNode(node);
      AttributeUtil.updateValue(pnode, editorContext);
    }
  }
}
