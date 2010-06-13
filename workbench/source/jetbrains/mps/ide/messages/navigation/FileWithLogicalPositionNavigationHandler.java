package jetbrains.mps.ide.messages.navigation;

import jetbrains.mps.ide.messages.FileWithLogicalPosition;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.TextEditor;
import com.intellij.openapi.editor.ScrollType;
import com.intellij.openapi.editor.LogicalPosition;
import com.intellij.openapi.editor.Document;

import java.io.File;

/**
 * Created by IntelliJ IDEA.
 * User: Sinchuk Sergey
 * Date: 13.06.2010
 * Time: 0:51:40
 * To change this template use File | Settings | File Templates.
 */
public class FileWithLogicalPositionNavigationHandler implements INavigationHandler<FileWithLogicalPosition> {
  @Override
  public void navigate(Project project, FileWithLogicalPosition pos, boolean focus, boolean select) {
    File ioFile = pos.getFile().toFile();
    VirtualFile vf = LocalFileSystem.getInstance().refreshAndFindFileByIoFile(ioFile);

    if (vf == null) return;

    FileEditor[] result = FileEditorManager.getInstance(project).openFile(vf, true);

    if (result.length == 1 && result[0] instanceof TextEditor) {
      TextEditor te = (TextEditor) result[0];
      int line = pos.getLine();
      int column = pos.getColumn();
      Document document = te.getEditor().getDocument();
      int maxLines = document.getLineCount();
      line = Math.min(Math.max(0, line), maxLines - 1);
      int lineWidth = document.getLineEndOffset(line) - document.getLineStartOffset(line);
      column = Math.min(Math.max(0, column), lineWidth);
      LogicalPosition position = new LogicalPosition(line, column);
      te.getEditor().getCaretModel().moveToLogicalPosition(position);
      te.getEditor().getScrollingModel().scrollToCaret(ScrollType.MAKE_VISIBLE);
    }
  }
}
