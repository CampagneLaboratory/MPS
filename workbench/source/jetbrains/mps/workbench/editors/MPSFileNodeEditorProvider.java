package jetbrains.mps.workbench.editors;

import com.intellij.openapi.fileEditor.*;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;
import org.jdom.Element;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.ide.MPSEditorState;
import jetbrains.mps.logging.Logger;

public class MPSFileNodeEditorProvider implements FileEditorProvider {
  private static final Logger LOG = Logger.getLogger(MPSFileNodeEditorProvider.class);

  private static final String CLASS = "class";

  public boolean accept(@NotNull Project project, @NotNull VirtualFile file) {
    return file instanceof MPSNodeVirtualFile;
  }

  @NotNull
  public FileEditor createEditor(@NotNull Project project, @NotNull VirtualFile file) {
    return new MPSFileNodeEditor(project, (MPSNodeVirtualFile) file);
  }

  public void disposeEditor(@NotNull FileEditor editor) {
    Disposer.dispose(editor);
  }

  @NotNull
  public FileEditorState readState(@NotNull Element sourceElement, @NotNull Project project, @NotNull VirtualFile file) {
    String className = sourceElement.getAttributeValue(CLASS);
    if (className == null) return FileEditorState.INSTANCE;

    try {
      Class cls = Class.forName(className);
      MPSEditorState instance = (MPSEditorState) cls.newInstance();
      instance.load(sourceElement);
      MPSEditorStateWrapper result = new MPSEditorStateWrapper();
      result.setEditorState(instance);
      return result;
    } catch (ClassNotFoundException e) {
      LOG.error(e);
    } catch (IllegalAccessException e) {
      LOG.error(e);
    } catch (InstantiationException e) {
      LOG.error(e);
    }

    return FileEditorState.INSTANCE;
  }

  public void writeState(@NotNull FileEditorState state, @NotNull Project project, @NotNull Element targetElement) {
    if (!(state instanceof MPSEditorStateWrapper)) return;

    MPSEditorStateWrapper wrapper = (MPSEditorStateWrapper) state;
    MPSEditorState editorState = wrapper.getEditorState();
    targetElement.setAttribute(CLASS, editorState.getClass().getName());    
    editorState.save(targetElement);
  }

  @NotNull @NonNls
  public String getEditorTypeId() {
    return "MPSFileEditor";
  }

  @NotNull
  public FileEditorPolicy getPolicy() {
    return FileEditorPolicy.HIDE_DEFAULT_EDITOR;
  }
}
