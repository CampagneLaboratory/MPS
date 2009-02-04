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
package jetbrains.mps.watching;

import com.intellij.openapi.vfs.newvfs.events.VFileEvent;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.project.Project;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vcs.MPSVCSManager;
import jetbrains.mps.vcs.ApplicationLevelVcsManager;

import java.util.Collections;

class BeforeEventProcessor extends EventProcessor {
  private static final BeforeEventProcessor INSTANCE = new BeforeEventProcessor();

  public static BeforeEventProcessor getInstance() {
    return INSTANCE;
  }

  @Override
  protected void processDelete(VFileEvent event, ReloadSession reloadSession) {
    final SModelDescriptor model = SModelRepository.getInstance().findModel(FileSystem.getFile(event.getPath()));
    if (model == null) {
      // if model is null, then it was removed by user
      VirtualFile vfile = getVFile(event);
      Project project = ApplicationLevelVcsManager.instance().getProjectForFile(vfile);
      if (project != null) {
        MPSVCSManager.getInstance(project).deleteVirtualFilesAndRemoveFromVcs(Collections.singletonList(vfile));
      }
    } else {
      // if model is not null, than file was deleted externally
    }
  }
}
