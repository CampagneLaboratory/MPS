package com.intellij.testFramework;

import com.intellij.ide.highlighter.HighlighterFactory;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.wm.ex.WindowManagerEx;
import com.intellij.openapi.wm.impl.IdeFrameImpl;
import com.intellij.openapi.wm.impl.FrameTitleBuilder;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.editor.EditorFactory;
import com.intellij.openapi.editor.LogicalPosition;
import com.intellij.openapi.editor.ex.EditorEx;
import com.intellij.openapi.fileEditor.*;
import com.intellij.openapi.fileEditor.ex.FileEditorManagerEx;
import com.intellij.openapi.fileEditor.impl.EditorComposite;
import com.intellij.openapi.fileEditor.impl.EditorWindow;
import com.intellij.openapi.fileEditor.impl.FileEditorManagerImpl;
import com.intellij.openapi.fileEditor.impl.text.TextEditorProvider;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Pair;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiDocumentManager;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiManager;
import com.intellij.util.containers.HashMap;
import com.intellij.util.ui.update.Update;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.io.File;

// My version

@NonNls public class TestEditorManagerImpl extends FileEditorManagerImpl implements ApplicationComponent, ProjectComponent {
  private static final Logger LOG = Logger.getInstance("#com.intellij.idea.test.TestEditorManagerImpl");

  private final Project myProject;

  private Map<VirtualFile, Editor> myVirtualFile2Editor = new HashMap<VirtualFile,Editor>();
  private VirtualFile myActiveFile = null;
  private static final LightVirtualFile LIGHT_VIRTUAL_FILE = new LightVirtualFile("Dummy.java");

  public boolean isInsideChange() {
    return false;
  }

  public void createSplitter(int orientation) {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  public void changeSplitterOrientation() {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  public void flipTabs() {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  public boolean tabsMode() {
    return false;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public boolean isInSplitter() {
    return false;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public boolean hasOpenedFile() {
    return false;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public VirtualFile getCurrentFile() {
    return null;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public Pair<FileEditor, FileEditorProvider> getSelectedEditorWithProvider(@NotNull VirtualFile file) {
    return null;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public boolean isChanged(@NotNull EditorComposite editor) {
    return false;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public EditorWindow getNextWindow(@NotNull EditorWindow window) {
    return null;
  }

  public EditorWindow getPrevWindow(@NotNull EditorWindow window) {
    return null;
  }

  public void addTopComponent(@NotNull final FileEditor editor, @NotNull final JComponent component) {
  }

  public void removeTopComponent(@NotNull final FileEditor editor, @NotNull final JComponent component) {
  }

  public void addBottomComponent(@NotNull final FileEditor editor, @NotNull final JComponent component) {
  }

  public void removeBottomComponent(@NotNull final FileEditor editor, @NotNull final JComponent component) {
  }

  public void closeAllFiles() {
    final EditorFactory editorFactory = EditorFactory.getInstance();
    for (VirtualFile file : myVirtualFile2Editor.keySet()) {
      Editor editor = myVirtualFile2Editor.get(file);
      if (editor != null && !editor.isDisposed()){
        editorFactory.releaseEditor(editor);
      }
    }
    myVirtualFile2Editor.clear();
  }

  public Editor openTextEditorEnsureNoFocus(@NotNull OpenFileDescriptor descriptor) {
    return openTextEditor(descriptor, false);
  }

  public FileEditorProvider getProvider(FileEditor editor) {
    return new FileEditorProvider() {
      public boolean accept(Project project, VirtualFile file) {
        return false;
      }

      public FileEditor createEditor(Project project, VirtualFile file) {
        return null;
      }

      public void disposeEditor(FileEditor editor) {
        //Disposer.dispose(editor);
      }

      @NotNull
      public FileEditorState readState(Element sourceElement, Project project, VirtualFile file) {
        return null;
      }

      public void writeState(FileEditorState state, Project project, Element targetElement) {

      }

      @NotNull
      public String getEditorTypeId() {
        return "";
      }

      public FileEditorPolicy getPolicy() {
        return null;
      }
    };
  }

  public EditorWindow getCurrentWindow() {
    return null;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public void setCurrentWindow(EditorWindow window) {
  }

  public VirtualFile getFile(@NotNull FileEditor editor) {
    return LIGHT_VIRTUAL_FILE;
  }

  public void unsplitWindow() {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  public void unsplitAllWindow() {
    //To change body of implemented methods use File | Settings | File Templates.
  }

  @NotNull
  public EditorWindow[] getWindows() {
    return new EditorWindow[0];  //To change body of implemented methods use File | Settings | File Templates.
  }

  public FileEditor getSelectedEditor(@NotNull VirtualFile file) {
    final Editor editor = getEditor(file);
    return editor == null ? null : TextEditorProvider.getInstance().getTextEditor(editor);
  }

  public boolean isFileOpen(@NotNull VirtualFile file) {
    return getEditor(file) != null;
  }

  @NotNull
  public FileEditor[] getEditors(@NotNull VirtualFile file) {
    FileEditor e = getSelectedEditor(file);
    if (e == null) return new FileEditor[0];
    return new FileEditor[] {e};
  }

  public TestEditorManagerImpl(Project project) {
    super(project);
    myProject = project;
  }

  @NotNull
  public VirtualFile[] getSiblings(VirtualFile file) {
    throw new UnsupportedOperationException();
  }

  public void disposeComponent() {
    closeAllFiles();
  }

  public void initComponent() { }

  public void projectClosed() {
  }

  public void projectOpened() {
  }

  public void closeFile(@NotNull VirtualFile file) {
    Editor editor = myVirtualFile2Editor.get(file);
    if (editor != null){
      EditorFactory.getInstance().releaseEditor(editor);
      myVirtualFile2Editor.remove(file);
    }
  }

  public void closeFile(@NotNull VirtualFile file, @NotNull EditorWindow window) {
    closeFile(file);
  }

  @NotNull
  public VirtualFile[] getSelectedFiles() {
    return myActiveFile == null ? VirtualFile.EMPTY_ARRAY : new VirtualFile[]{myActiveFile};
  }

  @NotNull
  public FileEditor[] getSelectedEditors() {
    return new FileEditor[0];
  }

  public Editor getSelectedTextEditor() {
    return myActiveFile != null ? getEditor(myActiveFile) : null;
  }

  public JComponent getComponent() {
    throw new UnsupportedOperationException();
  }

  @NotNull
  public VirtualFile[] getOpenFiles() {
    return myVirtualFile2Editor.keySet().toArray(new VirtualFile[myVirtualFile2Editor.size()]);
  }

  public Editor getEditor(VirtualFile file) {
    return myVirtualFile2Editor.get(myActiveFile);
  }

  @NotNull
  public FileEditor[] getAllEditors(){
    throw new UnsupportedOperationException();
  }

  public void showEditorAnnotation(@NotNull FileEditor editor, @NotNull JComponent annotationComoponent) {
  }


  public void removeEditorAnnotation(@NotNull FileEditor editor, @NotNull JComponent annotationComoponent) {
  }

  public void registerFileAsOpened(VirtualFile file, Editor editor) {
    myVirtualFile2Editor.put(file, editor);
    myActiveFile = file;
  }

  public Editor openTextEditor(OpenFileDescriptor descriptor, boolean focusEditor) {
    final VirtualFile file = descriptor.getFile();
    Editor editor = myVirtualFile2Editor.get(file);

    if (editor == null) {
      PsiFile psiFile = PsiManager.getInstance(myProject).findFile(file);
      LOG.assertTrue(psiFile != null);
      Document document = PsiDocumentManager.getInstance(myProject).getDocument(psiFile);
      editor = EditorFactory.getInstance().createEditor(document, myProject);
      ((EditorEx) editor).setHighlighter(HighlighterFactory.createHighlighter(myProject, file));

      myVirtualFile2Editor.put(file, editor);
    }

    if (descriptor.getOffset() >= 0){
      editor.getCaretModel().moveToOffset(descriptor.getOffset());
    }
    else if (descriptor.getLine() >= 0 && descriptor.getColumn() >= 0){
      editor.getCaretModel().moveToLogicalPosition(new LogicalPosition(descriptor.getLine(), descriptor.getColumn()));
    }
    editor.getSelectionModel().removeSelection();
    myActiveFile = file;

    return editor;
  }

  public void addFileEditorManagerListener(@NotNull FileEditorManagerListener listener) {
  }

  public void addFileEditorManagerListener(@NotNull FileEditorManagerListener listener, Disposable parentDisposable) {
  }

  public void removeFileEditorManagerListener(@NotNull FileEditorManagerListener listener) {
  }

  @NotNull
  public List<FileEditor> openEditor(@NotNull OpenFileDescriptor descriptor, boolean focusEditor) {
    return Collections.emptyList();
  }

  @NotNull
  public Project getProject() {
    return myProject;
  }

  public void registerExtraEditorDataProvider(@NotNull EditorDataProvider provider, Disposable parentDisposable) {
  }

  public JComponent getPreferredFocusedComponent() {
    throw new UnsupportedOperationException();
  }

  /**
   * Updates tab title and tab tool tip for the specified <code>file</code>
   */
  void updateFileName(@Nullable final VirtualFile file) {
   
  }


  @NotNull
  public Pair<FileEditor[], FileEditorProvider[]> getEditorsWithProviders(@NotNull VirtualFile file) {
    return null;  //To change body of implemented methods use File | Settings | File Templates.
  }

  public String getComponentName() {
    return "TestEditorManager";
  }
}
