package jetbrains.mps.nodeEditor.cellActions;

import jetbrains.mps.nodeEditor.EditorCellAction;
import jetbrains.mps.nodeEditor.EditorContext;

/**
 * Author: Sergey Dmitriev.
 * Time: Nov 6, 2003 5:00:20 PM
 */
public class CellAction_Empty extends EditorCellAction {
  public boolean canExecute(EditorContext context) {
    return true;
  }

  public void execute(EditorContext context) {
  }
}
