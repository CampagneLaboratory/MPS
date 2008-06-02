package jetbrains.mps.smodel;

import com.intellij.openapi.command.undo.UndoableAction;
import com.intellij.openapi.command.undo.UndoManager;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.ide.DataManager;

class UndoUtil {
  static void addUndoableAction(UndoableAction action) {


    DataContext dataContext = DataManager.getInstance().getDataContext();
    Project project = PlatformDataKeys.PROJECT.getData(dataContext);

    if (project != null) {
      UndoManager undoManager = UndoManager.getInstance(project);
      if (!undoManager.isUndoInProgress() && !undoManager.isRedoInProgress()) {
        undoManager.undoableActionPerformed(action);
      }
    }
  }
}
