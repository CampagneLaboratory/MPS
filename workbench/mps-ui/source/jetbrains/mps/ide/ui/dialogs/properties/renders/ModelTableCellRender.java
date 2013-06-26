/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.dialogs.properties.renders;

import com.intellij.ui.ColoredTableCellRenderer;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.workbench.choose.models.ModelPresentation;
import org.jetbrains.mps.openapi.model.SModelReference;

import javax.swing.BorderFactory;
import javax.swing.JTable;

public class ModelTableCellRender extends ColoredTableCellRenderer {
  protected IScope myScope;
  public ModelTableCellRender(IScope scope) {
    super();
    myScope = scope;
  }
  @Override
  protected void customizeCellRenderer(JTable table, Object value, boolean selected, boolean hasFocus, int row, int column) {
    setPaintFocusBorder(false);
    setFocusBorderAroundIcon(true);
    setBorder(BorderFactory.createEmptyBorder(1, 1, 1, 1));
    if (value != null) {
      final SModelReference modelReference = (SModelReference) value;
      ModelPresentation modelPresentation = new ModelPresentation(modelReference);
      setIcon(modelPresentation.doGetIcon());
      DependencyCellState cellState = getDependencyCellState(modelReference);
      append(modelPresentation.doGetPresentableText(), cellState.getTextAttributes());
      if(cellState.equals(DependencyCellState.NOT_IN_SCOPE)) {
        append(" (out of scope)", cellState.getTextAttributes());
      }
    }
  }

  protected DependencyCellState getDependencyCellState(SModelReference modelReference) {
    return DependencyCellState.NORMAL;
  }
}
