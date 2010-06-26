/*
 * Copyright 2000-2009 JetBrains s.r.o.
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

package com.intellij.openapi.vcs.changes.patch;

import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiDirectory;
import com.intellij.psi.PsiFile;
import com.intellij.psi.search.FilenameIndex;
import com.intellij.psi.search.FilenameIndex.FileNavigationItem;
import com.intellij.psi.search.GlobalSearchScope;
import jetbrains.mps.util.annotation.Patch;
import org.jetbrains.annotations.Nullable;

import java.util.Collection;

/**
 * Patched by MPS in order to find patched file outside of project dir.
 *
 * @author yole
 */
public class PsiPatchBaseDirectoryDetector extends PatchBaseDirectoryDetector {
  private final Project myProject;

  public PsiPatchBaseDirectoryDetector(final Project project) {
    myProject = project;
  }

  @Nullable
  @Patch
  public Result detectBaseDirectory(final String patchFileName) {
    String[] nameComponents = patchFileName.split("/");
    String patchName = nameComponents[nameComponents.length - 1];
    if (patchName.length() == 0) {
      return null;
    }
    // MPS Patch Start
    final NavigationItem[] psiFiles = FilenameIndex.getFilesByName(myProject, patchName, GlobalSearchScope.allScope(myProject));
    // MPS Patch End
    if (psiFiles.length == 1) {
      VirtualFile parent = ((FileNavigationItem)psiFiles[0]).getVirtualFile().getParent();
      for (int i = nameComponents.length - 2; i >= 0; i--) {
        if (!parent.getName().equals(nameComponents[i]) || parent == myProject.getBaseDir()) {
          return new Result(parent.getPresentableUrl(), i + 1);
        }
        parent = parent.getParent();
      }
      if (parent == null) return null;
      return new Result(parent.getPresentableUrl(), 0);
    }
    return null;
  }

  @Patch
  public Collection<VirtualFile> findFiles(final String fileName) {
//    MPS Patch Start
//    use allScope instead of project scope 
    return FilenameIndex.getVirtualFilesByName(myProject, fileName, GlobalSearchScope.allScope(myProject));
//    return FilenameIndex.getVirtualFilesByName(myProject, fileName, GlobalSearchScope.projectScope(myProject));
//    MPS Patch End
  }
}
