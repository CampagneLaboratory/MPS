/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.vcs;

import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.project.ProjectManagerListener;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.Application;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vcs.AbstractVcsHelper;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.vcs.TaskQueue;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.IModule;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.VFileSystem;

import java.util.*;

public class SuspiciousModelIndex implements ApplicationComponent {
  public static SuspiciousModelIndex instance() {
    return ApplicationManager.getApplication().getComponent(SuspiciousModelIndex.class);
  }

  private final ProjectManager myProjectManager;
  private final ApplicationLevelVcsManager myVcsManager;
  private final SuspiciousModelIndex.ProjectOpenedListener myProjectManagerListener;
  private final TaskQueue<Conflictable> myTaskQueue = new TaskQueue<Conflictable>(false) {
    public void processTask(final List<Conflictable> tasks) {
      ApplicationManager.getApplication().invokeLater(new Runnable() {
        public void run() {
          mergeModels(tasks);
        }
      }, ModalityState.NON_MODAL);
    }
  };

  public SuspiciousModelIndex(ProjectManager manager, ApplicationLevelVcsManager vcsManager) {
    myProjectManager = manager;
    myProjectManagerListener = new ProjectOpenedListener();
    myVcsManager = vcsManager;
  }

  public void addModel(SModelDescriptor model, boolean isInConflict) {
    myTaskQueue.invokeLater(new ConflictableModelAdapter(model, isInConflict));
  }

  public void addModule(AbstractModule abstractModule, boolean inConflict) {
    myTaskQueue.invokeLater(new ConflictableModuleAdapter(abstractModule, inConflict));
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Suspicious Model Index";
  }

  public void initComponent() {
    myProjectManager.addProjectManagerListener(myProjectManagerListener);
  }

  public void disposeComponent() {
    myProjectManager.removeProjectManagerListener(myProjectManagerListener);
  }

  private class ProjectOpenedListener implements ProjectManagerListener {
    public void projectOpened(Project project) {
      StartupManager.getInstance(project).registerPostStartupActivity(new Runnable() {
        public void run() {
          myTaskQueue.allowAccessAndProcessAllTasks();
        }
      });
    }

    public boolean canCloseProject(Project project) {
      return true;
    }

    public void projectClosed(Project project) {
      if (myProjectManager.getOpenProjects().length == 0) {
        myTaskQueue.prohibitAccess();
      }
    }

    public void projectClosing(Project project) {
    }
  }

  public synchronized void mergeModels(List<Conflictable> models) {
    final Collection<Conflictable> merged = showMergeDialog(models);

    if (merged.isEmpty()) return;

    ApplicationManager.getApplication().invokeLater(new Runnable() {
      public void run() {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            for (Conflictable conflictable : merged) {
              conflictable.reloadFromDisk();
            }
          }
        });
      }
    }, ModalityState.NON_MODAL);
  }

  private Collection<Conflictable> showMergeDialog(List<Conflictable> conflictableList) {
    Map<Project, List<VirtualFile>> toMerge = new HashMap<Project, List<VirtualFile>>();
    Map<VirtualFile, Conflictable> fileToConflictable = new LinkedHashMap<VirtualFile, Conflictable>();
    Set<Conflictable> toReload = new HashSet<Conflictable>();

    for (Conflictable conflictable : conflictableList) {
      IFile ifile = conflictable.getFile();
      if (myVcsManager.isInConflict(ifile, true)) {
        VirtualFile vfile = VFileSystem.getFile(ifile);
        Conflictable prev = fileToConflictable.put(vfile, conflictable);
        if (prev == null) { // since we process the file first time, we need to find a project for it
          Project project = myVcsManager.getProjectForFile(vfile);
          List<VirtualFile> files = toMerge.get(project);
          if (files == null) {
            files = new LinkedList<VirtualFile>();
            toMerge.put(project, files);
          }
          files.add(vfile);
        }
      } else if (conflictable.isConflictDetected() || conflictable.needReloading()) {
        toReload.add(conflictable);
        // conflictable.isConflictDetected() is true when during model/module loading a conflict was detected
        // the fact we are here means that model/module is not in conflict now, but still may need reloading
        // if conflictable.isConflictDetected() is false, then there were no conflict all the time
        // if the model really needs reloading, we' ll do it, but if not, it would be terribly wrong
        // I do not know how to make it not that complicated
      }
    }

    for (Project project : toMerge.keySet()) {
      List<VirtualFile> virtualFileList = AbstractVcsHelper.getInstance(project).showMergeDialog(toMerge.get(project));
      for (VirtualFile vfile : virtualFileList) {
        Conflictable conflictable = fileToConflictable.get(vfile);
        if (conflictable != null) {
          toReload.add(conflictable);
        }
      }
    }
    return toReload;
  }

  private static abstract class Conflictable {
    public abstract boolean isConflictDetected();

    public abstract IFile getFile();

    public abstract void reloadFromDisk();

    public abstract boolean needReloading();

    @Override
    public boolean equals(Object object) {
      if (!(object instanceof Conflictable)) return false;

      return getFile().equals(((Conflictable) object).getFile());
    }

    public int hashCode() {
      return getFile().hashCode();
    }
  }

  private static class ConflictableModelAdapter extends Conflictable {
    private final SModelDescriptor myModel;
    private final boolean myIsConflictDetected;

    public ConflictableModelAdapter(SModelDescriptor model, boolean isConflictDetected) {
      myModel = model;
      myIsConflictDetected = isConflictDetected;
    }

    public boolean isConflictDetected() {
      return myIsConflictDetected;
    }

    public IFile getFile() {
      return myModel.getModelFile();
    }

    public void reloadFromDisk() {
      myModel.reloadFromDisk();
    }

    public boolean needReloading() {
      return myModel.needsReloading();
    }
  }

  private static class ConflictableModuleAdapter extends Conflictable {
    private final IModule myModule;
    private final boolean myIsConflictDetected;

    public ConflictableModuleAdapter(IModule module, boolean isConflictDetected) {
      myModule = module;
      myIsConflictDetected = isConflictDetected;
    }

    public boolean isConflictDetected() {
      return myIsConflictDetected;
    }

    public IFile getFile() {
      return myModule.getDescriptorFile();
    }

    public void reloadFromDisk() {
      myModule.reloadFromDisk();
    }

    public boolean needReloading() {
      return myModule.needReloading();
    }
  }
}
