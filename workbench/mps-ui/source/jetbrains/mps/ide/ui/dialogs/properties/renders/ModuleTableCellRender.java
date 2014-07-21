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
import jetbrains.mps.ide.icons.IconManager;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.smodel.MPSModuleRepository;

import javax.swing.BorderFactory;
import javax.swing.JTable;

/**
 * TableCellRenderer for SModuleReference
 */
public class ModuleTableCellRender extends ColoredTableCellRenderer {
  @Override
  protected void customizeCellRenderer(JTable table, Object value, boolean selected, boolean hasFocus, int row, int column) {
    setPaintFocusBorder(false);
    setFocusBorderAroundIcon(true);
    setBorder(BorderFactory.createEmptyBorder(1, 1, 1, 1));
    if (value != null) {
      SModuleReference moduleReference = (SModuleReference) value;
      setIcon(
        IconManager.getIconFor(
          MPSModuleRepository.getInstance().getModuleById(moduleReference.getModuleId())
        )
      );

      append(moduleReference.getModuleName(), getDependencyCellState(moduleReference).getTextAttributes());
    }
  }

  protected DependencyCellState getDependencyCellState(SModuleReference moduleReference) {
    return DependencyCellState.NORMAL;
  }
}
