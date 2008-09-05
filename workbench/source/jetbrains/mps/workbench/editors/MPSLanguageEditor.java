package jetbrains.mps.workbench.editors;

import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorState;
import com.intellij.openapi.fileEditor.FileEditorStateLevel;
import com.intellij.openapi.fileEditor.FileEditorLocation;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.util.UserDataHolderBase;
import com.intellij.codeHighlighting.BackgroundEditorHighlighter;
import com.intellij.ide.structureView.StructureViewBuilder;
import jetbrains.mps.workbench.languagesFs.MPSLanguageVirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.ide.IEditor;
import jetbrains.mps.ide.hierarchy.LanguageHierarchiesComponent;
import jetbrains.mps.ide.hierarchy.LanguageDiagramComponent2;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.MPSProjectHolder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NonNls;

import javax.swing.JComponent;
import java.beans.PropertyChangeListener;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 16.06.2008
 * Time: 16:53:58
 * To change this template use File | Settings | File Templates.
 */
public class MPSLanguageEditor extends UserDataHolderBase implements FileEditor {
  public MPSLanguageEditor(final Project project, final MPSLanguageVirtualFile file) {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        myFile = file;
        MPSProject mpsProject = project.getComponent(MPSProjectHolder.class).getMPSProject();
        myHierarchiesComponent = new LanguageDiagramComponent2(myFile.getLanguage());
      //  myHierarchiesComponent = new LanguageHierarchiesComponent(myFile.getLanguage(), mpsProject.createOperationContext());
       // myHierarchiesComponent.rebuild();
      }
    });
  }

  private MPSLanguageVirtualFile myFile;
  private LanguageDiagramComponent2 myHierarchiesComponent;
 // private LanguageHierarchiesComponent myHierarchiesComponent;

  @NotNull
  public JComponent getComponent() {
    return myHierarchiesComponent.getExternalComponent();
  }

  @Nullable
  public JComponent getPreferredFocusedComponent() {
    return myHierarchiesComponent.getExternalComponent();
  }

  @NonNls
  @NotNull
  public String getName() {
    return myFile.getName();
  }

  @NotNull
  public FileEditorState getState(@NotNull FileEditorStateLevel level) {
   return new FileEditorState() {
     public boolean canBeMergedWith(FileEditorState otherState, FileEditorStateLevel level) {
       return false;
     }
   };
  }

  public void setState(final @NotNull FileEditorState state) {
  //  myNodeEditor.loadState(state);
  }

  public boolean isModified() {
    return false;
  }

  public boolean isValid() {
    return true;
  }

  public void selectNotify() {
  }

  public void deselectNotify() {
  }

  public void addPropertyChangeListener(@NotNull PropertyChangeListener listener) {
  }

  public void removePropertyChangeListener(@NotNull PropertyChangeListener listener) {
  }

  @Nullable
  public BackgroundEditorHighlighter getBackgroundHighlighter() {
    return null;
  }

  @Nullable
  public FileEditorLocation getCurrentLocation() {
    return null;
  }

  @Nullable
  public StructureViewBuilder getStructureViewBuilder() {
    return null;
  }

  public void dispose() {
  }
}
