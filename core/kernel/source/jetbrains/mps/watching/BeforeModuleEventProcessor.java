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
package jetbrains.mps.watching;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.newvfs.events.VFileEvent;
import jetbrains.mps.vcs.ApplicationLevelVcsManager;
import jetbrains.mps.vcs.MPSVCSManager;
import jetbrains.mps.fileTypes.MPSFileTypesManager;
import jetbrains.mps.project.IModule;
import jetbrains.mps.vfs.VFileSystem;

import java.util.Collections;

class BeforeModuleEventProcessor extends EventProcessor {
  private static final BeforeModuleEventProcessor INSTANCE = new BeforeModuleEventProcessor();

  public static BeforeModuleEventProcessor getInstance() {
    return INSTANCE;
  }

  @Override
  protected void processDelete(VFileEvent event, ReloadSession reloadSession) {
    IModule module = ModuleFileProcessor.getModuleByEvent(event);
    if (module != null) {
      // we should unload module
      reloadSession.addDeletedModule(module);
    } else {
      // if module is null, then it was removed by user
      VirtualFile vfile = getVFile(event);
      if (vfile == null) return;
      if (MPSFileTypesManager.instance().isModuleFile(vfile)) {
        Project project = ApplicationLevelVcsManager.instance().getProjectForFile(vfile);
        if (project != null) {
          MPSVCSManager.getInstance(project).removeFromVcs(Collections.singletonList(VFileSystem.toFile(vfile)), true);
        }
      }
    }
  }
}
