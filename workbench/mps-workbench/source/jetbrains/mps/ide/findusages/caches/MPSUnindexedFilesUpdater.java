/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.findusages.caches;

import com.intellij.ide.caches.CacheUpdater;
import com.intellij.ide.caches.FileContent;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.CollectingContentIterator;
import com.intellij.openapi.roots.ContentIterator;
import com.intellij.openapi.roots.ex.ProjectRootManagerEx;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.SingleRootFileViewProvider;
import com.intellij.util.containers.HashSet;
import com.intellij.util.indexing.FileBasedIndexImpl;
import com.intellij.util.indexing.IndexingStamp;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.annotations.NotNull;

import java.util.List;
import java.util.Set;

public class MPSUnindexedFilesUpdater implements CacheUpdater {
  private final FileBasedIndexImpl myIndex;
  private ProjectRootManagerEx myManager;
  private final Project myProject;

  public MPSUnindexedFilesUpdater(FileBasedIndexImpl index, ProjectRootManagerEx manager, @NotNull Project project) {
    myIndex = index;
    myManager = manager;
    myProject = project;
  }

  @Override
  public int getNumberOfPendingUpdateJobs() {
    return myIndex.getNumberOfPendingInvalidations();
  }

  @Override
  public VirtualFile[] queryNeededFiles(ProgressIndicator indicator) {
    final CollectingContentIterator finder = myIndex.createContentIterator(indicator, myProject);

    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        iterateIndexableFiles(finder);
      }
    });
    final List<VirtualFile> files = finder.getFiles();
    return files.toArray(new VirtualFile[files.size()]);
  }

  @Override
  public void processFile(final FileContent fileContent) {
    myIndex.indexFileContent(null, fileContent);
    IndexingStamp.flushCache(fileContent.getVirtualFile());
  }

  private void iterateIndexableFiles(final ContentIterator processor) {
    ProgressIndicator indicator = ProgressManager.getInstance().getProgressIndicator();
    if (indicator != null) {
      indicator.setText("Scanning files to index");
    }

    Set<VirtualFile> visitedFolders = new HashSet<VirtualFile>();
    for (VirtualFile root : CacheUtil.getIndexableRoots()) {
      iterateRecursively(root, processor, indicator,visitedFolders);
    }
  }

  private void iterateRecursively(final VirtualFile root, final ContentIterator processor, ProgressIndicator indicator, Set<VirtualFile> visitedFolders) {
    if (root == null) return;

    if (root.isDirectory()){
      if (visitedFolders.contains(root)) return;
      visitedFolders.add(root);
    }

    if (CacheUtil.isIgnored(root, myManager)) return;

    if (indicator != null) {
      indicator.setText2(root.getPresentableUrl());
    }

    for (VirtualFile file : root.getChildren()) {
      if (file.isDirectory()) {
        iterateRecursively(file, processor, indicator, visitedFolders);
      } else {
        SingleRootFileViewProvider.doNotCheckFileSizeLimit(file);
        processor.processFile(file);
      }
    }
  }

  @Override
  public void updatingDone() {

  }

  @Override
  public void canceled() {

  }
}
