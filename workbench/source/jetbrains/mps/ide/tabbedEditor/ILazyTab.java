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
package jetbrains.mps.ide.tabbedEditor;

import jetbrains.mps.nodeEditor.EditorComponent;

import javax.swing.JComponent;
import java.util.List;
import java.awt.event.MouseEvent;

import com.intellij.openapi.vfs.VirtualFile;

public interface ILazyTab {
  String getTitle();

  String getNullText();

  TabbedEditor getTabbedEditor();

  List<EditorComponent> getEditorComponents();

  EditorComponent getCurrentEditorComponent();

  JComponent getComponent();

  boolean canCreate();

  boolean askCreate();

  void create();

  void createFirst(MouseEvent e);

  int getCurrentTab();

  void selectTab(int index);

  VirtualFile getBaseNodeVirtualFile();
}
