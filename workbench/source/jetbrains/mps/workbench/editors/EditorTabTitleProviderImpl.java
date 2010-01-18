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
package jetbrains.mps.workbench.editors;

import com.intellij.openapi.fileEditor.impl.EditorTabTitleProvider;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.workbench.editors.MPSFileNodeEditor;
import jetbrains.mps.ide.IEditor;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.tabbedEditor.TabbedEditor;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;

public class EditorTabTitleProviderImpl extends MultiTabPropertyProvider implements EditorTabTitleProvider {
  public String getEditorTabTitle(Project project, VirtualFile file) {
    final SNode node = getCurrentEditedNode(project, file);
    if (node != null) {
      final StringBuilder sb = new StringBuilder();
      ModelAccess.instance().runReadAction(new Runnable() {
        public void run() {
          sb.append(node.getPresentation());
        }
      });
      return sb.toString();
    }
    return null;
  }
}
