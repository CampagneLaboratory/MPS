/*
 * Copyright 2003-2012 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.editor.warningPanel;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.extensions.Extensions;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.FileEditorManagerEvent;
import com.intellij.openapi.fileEditor.FileEditorManagerListener;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vcs.FileStatusListener;
import com.intellij.openapi.vcs.FileStatusManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.containers.MultiMap;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.MPSClassesListener;
import jetbrains.mps.classloading.MPSClassesListenerAdapter;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.editor.MPSFileNodeEditor;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Computable;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModel.Problem;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public class MPSEditorWarningsManager implements ProjectComponent {
  public static final Logger LOG = LogManager.getLogger(MPSEditorWarningsManager.class);

  private FileEditorManager myFileEditorManager;
  private ClassLoaderManager myClassLoaderManager;
  private MPSClassesListener myClassesListener = new EditorWarningsListenerAdapter();
  private MyFileStatusListener myFileStatusListener = new MyFileStatusListener();

  private SRepositoryContentAdapter myListener = new SRepositoryContentAdapter() {
    @Override
    protected void startListening(SModel model) {
      model.addModelListener(this);
    }

    @Override
    protected void stopListening(SModel model) {
      model.removeModelListener(this);
    }

    @Override
    public void modelLoaded(SModel model, boolean partially) {
      problemsUpdated();
    }

    @Override
    public void modelUnloaded(SModel model) {
      problemsUpdated();
    }

    @Override
    public void problemsDetected(SModel model, Iterable<Problem> problems) {
      problemsUpdated();
    }

    @Override
    public void modelSaved(SModel model) {
      problemsUpdated();
    }

    public void problemsUpdated() {
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        @Override
        public void run() {
          if (myProject.isDisposed()) return;
          updateAllWarnings();
        }
      });
    }
  };

  private Project myProject;

  private MyFileEditorManagerListener myFileEditorManagerListener = new MyFileEditorManagerListener();
  private MultiMap<MPSFileNodeEditor, WarningPanel> myWarnings = new MultiMap<MPSFileNodeEditor, WarningPanel>();

  public MPSEditorWarningsManager(Project project, FileEditorManager fileEditorManager, MPSCoreComponents coreComponents) {
    myProject = project;
    myFileEditorManager = fileEditorManager;
    myClassLoaderManager = coreComponents.getClassLoaderManager();
  }

  @Override
  public void projectOpened() {
    myFileEditorManager.addFileEditorManagerListener(myFileEditorManagerListener);
  }

  @Override
  public void projectClosed() {
    myFileEditorManager.removeFileEditorManagerListener(myFileEditorManagerListener);
  }

  @Override
  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Editor Warnings Manager";
  }

  @Override
  public void initComponent() {
    myClassLoaderManager.addClassesHandler(myClassesListener);
    FileStatusManager.getInstance(myProject).addFileStatusListener(myFileStatusListener);
    ProjectHelper.getModelAccess(myProject).runReadAction(new Runnable() {
      @Override
      public void run() {
        SRepositoryRegistry.getInstance().addGlobalListener(myListener);
      }
    });
  }

  @Override
  public void disposeComponent() {
    ProjectHelper.getModelAccess(myProject).runReadAction(new Runnable() {
      @Override
      public void run() {
        SRepositoryRegistry.getInstance().removeGlobalListener(myListener);
      }
    });
    FileStatusManager.getInstance(myProject).removeFileStatusListener(myFileStatusListener);
    myClassLoaderManager.removeClassesHandler(myClassesListener);
  }

  private void updateWarnings(@NotNull final MPSFileNodeEditor editor) {
    DumbService.getInstance(myProject).smartInvokeLater(new Runnable() {
      @Override
      public void run() {
        final Runnable task = new Runnable() {
          @Override
          public void run() {
            doUpdateWarnings(editor);
          }
        };
        Boolean aBoolean = ModelAccess.instance().tryRead(new Computable<Boolean>() {
          @Override
          public Boolean compute() {
            task.run();
            return Boolean.TRUE;
          }
        });
        if (aBoolean == null) {
          ModelAccess.instance().runReadInEDT(task);
        }
      }
    });
  }

  private void doUpdateWarnings(final MPSFileNodeEditor editor) {
    List<WarningPanel> newWarnings = new ArrayList<WarningPanel>();

    Editor nodeEditor = editor.getNodeEditor();
    if (nodeEditor == null) return;

    EditorComponent editorComponent = nodeEditor.getCurrentEditorComponent();
    if (editorComponent != null && editorComponent.isDisposed()) return;

    SNode node;
    if (editorComponent != null) {
      node = editorComponent.getEditedNode();
    } else {
      MPSNodeVirtualFile file = editor.getFile();
      node = file != null && file.isValid() ? file.getNode() : null;
    }
    if (node == null || !SNodeUtil.isAccessible(node, ProjectHelper.getProjectRepository(myProject))) return;

    EditorWarningsProvider[] providers = Extensions.getExtensions(EditorWarningsProvider.EP_NAME);

    for (EditorWarningsProvider provider : providers) {
      WarningPanel panel = provider.getWarningPanel(node, myProject);
      if (panel != null) {
        newWarnings.add(panel);
      }
    }

    replaceWarningPanels(editor, newWarnings);
  }

  private void updateAllWarnings(@Nullable VirtualFile vf) {
    if (RuntimeFlags.isTestMode()) return;

    for (FileEditor editor : myFileEditorManager.getAllEditors()) {
      if (editor instanceof MPSFileNodeEditor) {
        MPSFileNodeEditor mpsEditor = (MPSFileNodeEditor) editor;
        if (!mpsEditor.isDisposed()) {
          if (vf == null || vf.equals(mpsEditor.getFile())) {
            updateWarnings(mpsEditor);
          }
        }
      }
    }
  }

  private void updateAllWarnings() {
    updateAllWarnings(null);
  }

  private void replaceWarningPanels(MPSFileNodeEditor editor, List<WarningPanel> newPanels) {
    Collection<WarningPanel> oldPanels = myWarnings.get(editor);
    List<WarningPanel> toRemove = new ArrayList<WarningPanel>(oldPanels);
    toRemove.removeAll(newPanels);
    List<WarningPanel> toAdd = new ArrayList<WarningPanel>(newPanels);
    toAdd.removeAll(oldPanels);

    for (WarningPanel panel : toRemove) {
      myFileEditorManager.removeTopComponent(editor, panel);
      myWarnings.removeValue(editor, panel);
    }

    for (WarningPanel panel : toAdd) {
      myFileEditorManager.addTopComponent(editor, panel);
      myWarnings.putValue(editor, panel);
    }
  }

  private class MyFileEditorManagerListener implements FileEditorManagerListener {
    @Override
    public void fileOpened(FileEditorManager source, VirtualFile file) {
      if (file instanceof MPSNodeVirtualFile) {
        for (FileEditor fe : myFileEditorManager.getEditors(file)) {
          if (fe instanceof MPSFileNodeEditor) {
            updateWarnings((MPSFileNodeEditor) fe);
          }
        }
      }
    }

    @Override
    public void fileClosed(FileEditorManager source, VirtualFile file) {
      myWarnings.keySet().retainAll(Arrays.asList(source.getAllEditors()));
    }

    @Override
    public void selectionChanged(FileEditorManagerEvent event) {
      updateAllWarnings();
    }
  }

  private class EditorWarningsListenerAdapter extends MPSClassesListenerAdapter {
    @Override
    public void afterClassesLoaded(Set<SModule> modules) {
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        @Override
        public void run() {
          if (myProject.isDisposed()) return;
          updateAllWarnings();
        }
      });
    }
  }

  private class MyFileStatusListener implements FileStatusListener {
    @Override
    public void fileStatusChanged(@NotNull final VirtualFile virtualFile) {
      updateAllWarnings(virtualFile);
    }

    @Override
    public void fileStatusesChanged() {
      updateAllWarnings();
    }
  }
}
