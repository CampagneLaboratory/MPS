/*
 * Copyright 2003-2010 JetBrains s.r.o.
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

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vcs.ProjectLevelVcsManager;
import com.intellij.openapi.vcs.changes.ChangeListManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.fileTypes.FileTypeManager;

abstract class VcsOperation {
  protected final ProjectLevelVcsManager myManager;
  protected final Project myProject;

  protected VcsOperation(ProjectLevelVcsManager manager, Project project) {
    myManager = manager;
    myProject = project;
  }

  /**
   * This is what really being executed.
   */
  public abstract void performInternal();

  public void runPerform(Runnable runnable) {
    ApplicationManager.getApplication().executeOnPooledThread(runnable);
  }

  protected boolean isIgnored(VirtualFile virtualFile) {
    if (myProject.isDisposed()) return false;
    return isIgnored(virtualFile.getName()) || ChangeListManager.getInstance(myProject).isIgnoredFile(virtualFile);
  }

  protected boolean isIgnored(String fileName) {
    if (myProject.isDisposed()) return false;
    return FileTypeManager.getInstance().isFileIgnored(fileName);
  }

  public abstract void absorb(VcsOperation operation);
}
