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
package jetbrains.mps.ide.ui.tree.smodel;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.editor.colors.ColorKey;
import com.intellij.openapi.editor.colors.EditorColorsManager;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import org.jetbrains.mps.openapi.model.SModelReference;

import java.awt.Color;

public class SNodeGroupTreeNode extends TextTreeNode {

  private boolean myAutoDelete;

  private SModelReference myModelReference;

  public SNodeGroupTreeNode(SModelTreeNode model, String text, boolean autoDelete) {
    super(text);
    myModelReference = model.getSModelDescriptor().getReference();
    myAutoDelete = autoDelete;
  }

  public SModelReference getModelReference() {
    return myModelReference;
  }

  public void registerInModelNode(SModelTreeNode model, SNodeGroupTreeNode parentGroup) {
    model.register(parentGroup, this);
  }

  @Override
  protected void doUpdatePresentation() {
    if (hasErrors()) {
      setColor(Color.RED);
    }
    setColor(EditorColorsManager.getInstance().getGlobalScheme().getColor(ColorKey.createColorKey("FILESTATUS_NOT_CHANGED")));
  }

  @Override
  public ActionGroup getQuickCreateGroup(boolean plain) {
    return getActionGroup();
  }

  public boolean hasErrors() {
    for (int i = 0; i < getChildCount(); i++) {
      MPSTreeNode node = (MPSTreeNode) getChildAt(i);
      if (node instanceof SNodeTreeNode) {
        if (((SNodeTreeNode) node).hasErrors()) return true;
      }

      if (node instanceof SNodeGroupTreeNode) {
        if (((SNodeGroupTreeNode) node).hasErrors()) return true;
      }
    }

    return false;
  }

  public boolean isAutoDelete() {
    return myAutoDelete;
  }


}
