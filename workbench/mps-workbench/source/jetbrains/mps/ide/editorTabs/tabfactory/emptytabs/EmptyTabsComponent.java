/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.ide.editorTabs.tabfactory.emptytabs;

import com.intellij.openapi.editor.Document;
import jetbrains.mps.ide.editorTabs.tabfactory.TabsComponent;
import jetbrains.mps.ide.undo.MPSUndoUtil;
import jetbrains.mps.plugins.relations.RelationDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNodeReference;

import javax.swing.JComponent;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class EmptyTabsComponent implements TabsComponent {
  private SNodeReference myNode;

  public EmptyTabsComponent(SNodeReference node) {
    myNode = node;
  }

  @Override
  public RelationDescriptor getCurrentTabAspect() {
    return null;
  }

  @Override
  public void dispose() {

  }

  @NotNull
  @Override
  public Collection<SNodeReference> getSelectionFor(RelationDescriptor tabDescriptor, SNodeReference editedNode) {
    return Collections.emptyList();
  }

  @Override
  public List<Document> getAllEditedDocuments() {
    return Collections.singletonList(MPSUndoUtil.getDoc(myNode));
  }

  @Override
  public void editNode(SNodeReference sNodePointer) {
  }

  @Override
  public void updateTabs() {
  }

  @Override
  public void updateTabColors() {
  }

  @Override
  public JComponent getComponent() {
    return null;
  }

  @Override
  public void nextTab() {
  }

  @Override
  public void prevTab() {
  }
}
