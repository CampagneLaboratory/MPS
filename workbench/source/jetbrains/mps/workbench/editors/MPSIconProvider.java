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
package jetbrains.mps.workbench.editors;

import com.intellij.ide.IconProvider;
import com.intellij.ide.FileIconProvider;
import com.intellij.psi.PsiElement;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;

import javax.swing.Icon;

import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.workbench.languagesFs.MPSLanguageVirtualFile;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.Icons;

public class MPSIconProvider implements FileIconProvider, ApplicationComponent {

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Icon Provider";
  }

  public void initComponent() {
  }

  public void disposeComponent() {
  }

  @Nullable
  public Icon getIcon(VirtualFile file, int flags, Project project) {
    if (file instanceof MPSNodeVirtualFile) {
      MPSNodeVirtualFile nodeFile = (MPSNodeVirtualFile) file;
      return IconManager.getIconFor(nodeFile.getNode());
    }
    if (file instanceof MPSLanguageVirtualFile) {
      return Icons.PROJECT_LANGUAGE_ICON;
    }
    return null;
  }
}
