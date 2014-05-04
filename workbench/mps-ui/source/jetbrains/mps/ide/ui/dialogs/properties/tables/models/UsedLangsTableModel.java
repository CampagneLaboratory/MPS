/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.dialogs.properties.tables.models;

import com.intellij.util.ui.ItemRemovable;
import org.jetbrains.mps.openapi.ui.Modifiable;
import jetbrains.mps.project.DevKit;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.ide.ui.dialogs.properties.PropertiesBundle;

import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;
import java.util.List;

public abstract class UsedLangsTableModel<T> extends AbstractTableModel implements ItemRemovable, Modifiable {
  protected List<SModuleReference> myTableItems = new ArrayList<SModuleReference>();
  protected T myItem;

  public static final int ITEM_COLUMN = 0;
  private static final String ITEM_COLUMN_NAME = PropertiesBundle.message("mps.properties.configurable.tablemodel.usedlanguages.column.item");


  public UsedLangsTableModel(T value) {
    myItem = value;
    init();
  }

  public void addItem(SModuleReference item) {
    if(myTableItems.contains(item))
      return;
    myTableItems.add(item);
    fireTableDataChanged();
  }

  @Override
  public void removeRow(int idx) {
    myTableItems.remove(idx);
  }

  @Override
  public int getRowCount() {
    return myTableItems.size();
  }

  @Override
  public int getColumnCount() {
    return 1;
  }

  @Override
  public String getColumnName(int column) {
    if(column == ITEM_COLUMN)
      return ITEM_COLUMN_NAME;
    return "";
  }

  @Override
  public Class<?> getColumnClass(int columnIndex) {
    if(columnIndex == ITEM_COLUMN)
      return SModuleReference.class;
    return super.getColumnClass(columnIndex);
  }

  @Override
  public Object getValueAt(int rowIndex, int columnIndex) {
    SModuleReference item = myTableItems.get(rowIndex);
    if(columnIndex == ITEM_COLUMN)
      return item;
    return null;
  }

  public List<SModuleReference> getUsedLanguages() {
    List<SModuleReference> list = new ArrayList<SModuleReference>();
    MPSModuleRepository moduleRepository = MPSModuleRepository.getInstance();
    for(SModuleReference tableItem : myTableItems)
      if(moduleRepository.getModule(tableItem.getModuleId()) instanceof Language)
        list.add(tableItem);

    return list;
  }

  public List<SModuleReference> getUsedDevkits() {
    List<SModuleReference> list = new ArrayList<SModuleReference>();
    MPSModuleRepository moduleRepository = MPSModuleRepository.getInstance();
    for(SModuleReference tableItem : myTableItems)
      if(moduleRepository.getModule(tableItem.getModuleId()) instanceof DevKit)
        list.add(tableItem);

    return list;
  }
}
