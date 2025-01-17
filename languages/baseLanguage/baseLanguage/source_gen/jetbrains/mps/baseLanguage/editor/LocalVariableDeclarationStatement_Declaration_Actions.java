package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;

public class LocalVariableDeclarationStatement_Declaration_Actions {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.COMMENT, new LocalVariableDeclarationStatement_Declaration_Actions.LocalVariableDeclarationStatement_Declaration_Actions_COMMENT(node));
  }
  public static class LocalVariableDeclarationStatement_Declaration_Actions_COMMENT extends AbstractCellAction {
    /*package*/ SNode myNode;
    public LocalVariableDeclarationStatement_Declaration_Actions_COMMENT(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
    }
    @Override
    public boolean canExecute(EditorContext editorContext) {
      return this.canExecute_internal(editorContext, this.myNode);
    }
    public boolean canExecute_internal(EditorContext editorContext, SNode node) {
      return false;
    }
  }
}
