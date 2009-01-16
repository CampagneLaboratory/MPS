/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.ide.dialogs.project;

import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.ide.dialogs.base.BaseDialog;
import jetbrains.mps.ide.dialogs.base.DialogDimensionsSettings;

import javax.swing.*;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;
import java.awt.BorderLayout;
import java.awt.Frame;
import java.awt.GridLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class AddRequiredModelImportsDialog extends BaseDialog {
  private SModel myModel;

  private List<ModuleReference> myLanguages;
  private List<SModelReference> myImports;
  private List<ModuleReference> myDevKits;

  private boolean myCanceled = true;

  private List<ModuleReference> myLanguagesToAdd;
  private List<SModelReference> myImportsToAdd;
  private List<ModuleReference> myDevKitsToAdd;

  public boolean isCanceled() {
    return myCanceled;
  }

  public AddRequiredModelImportsDialog(Frame frame, SModel model,
                                       Set<SModelReference> necessaryImports,
                                       Set<ModuleReference> necessaryLanguages,
                                       Set<ModuleReference> necessaryDevKits) {
    super(frame, "Imports And Languages");
    myImports = new ArrayList<SModelReference>(necessaryImports);
    myLanguages = new ArrayList<ModuleReference>(necessaryLanguages);
    myDevKits = new ArrayList<ModuleReference>(necessaryDevKits);
    myLanguagesToAdd = new ArrayList<ModuleReference>(necessaryLanguages);
    myImportsToAdd = new ArrayList<SModelReference>(necessaryImports);
    myDevKitsToAdd = new ArrayList<ModuleReference>(necessaryDevKits);

    myModel = model;

    myMainComponent = new JPanel(new BorderLayout());
    JLabel header = new JLabel("Do you want to add imported models or languages to the model " + myModel.getSModelFqName() + " ?", JLabel.LEFT);
    myMainComponent.add(header, BorderLayout.NORTH);

    JPanel panel = new JPanel(new GridLayout(3, 1, 5, 5));

    if (!myImports.isEmpty()) {
      MyImportsTableModel importsTableModel = new MyImportsTableModel(myImports, myImportsToAdd);
      JPanel innerPanel = new JPanel(new BorderLayout());
      JTable importsTable = new JTable(importsTableModel);
      importsTable.getColumnModel().getColumn(0).setWidth(30);
      importsTable.getColumnModel().getColumn(1).setPreferredWidth(300);
      innerPanel.add(new JScrollPane(importsTable), BorderLayout.CENTER);
      innerPanel.add(new JLabel("Add Imported Models", SwingConstants.CENTER), BorderLayout.NORTH);
      panel.add(innerPanel);
    }
    if (!myLanguages.isEmpty()) {
      MyImportsTableModel languagesTableModel = new MyImportsTableModel(myLanguages, myLanguagesToAdd);
      JPanel innerPanel = new JPanel(new BorderLayout());
      JTable languagesTable = new JTable(languagesTableModel);
      languagesTable.getColumnModel().getColumn(0).setWidth(30);
      languagesTable.getColumnModel().getColumn(1).setPreferredWidth(300);
      innerPanel.add(new JScrollPane(languagesTable), BorderLayout.CENTER);
      innerPanel.add(new JLabel("Add Languages", SwingConstants.CENTER), BorderLayout.NORTH);
      panel.add(innerPanel);
    }
    if (!myDevKits.isEmpty()) {
      JPanel innerPanel = new JPanel(new BorderLayout());
      MyImportsTableModel devKitTableModel = new MyImportsTableModel(myDevKits, myDevKitsToAdd);
      JTable devkitTable = new JTable(devKitTableModel);
      devkitTable.getColumnModel().getColumn(0).setWidth(30);
      devkitTable.getColumnModel().getColumn(1).setPreferredWidth(300);
      innerPanel.add(new JScrollPane(devkitTable), BorderLayout.CENTER);
      innerPanel.add(new JLabel("Add DevKits", SwingConstants.CENTER), BorderLayout.NORTH);
      panel.add(innerPanel);
    }

    myMainComponent.add(panel, BorderLayout.CENTER);
  }

  public DialogDimensionsSettings.DialogDimensions getDefaultDimensionSettings() {
    return new DialogDimensionsSettings.DialogDimensions(200, 200, 600, 300);
  }

  private JPanel myMainComponent;

  protected String getButtonsPosition() {
    return BorderLayout.CENTER;
  }

  @BaseDialog.Button(position = 0, name = "Add All", defaultButton = true)
  public void buttonAddAll() {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        for (SModelReference imported : myImports) {
          myModel.addImportedModel(imported);
        }
        for (ModuleReference language : myLanguages) {
          myModel.addLanguage(language);
        }
        for (ModuleReference devkit : myDevKits) {
          myModel.addNewlyImportedDevKit(devkit);
        }
        myCanceled = false;
      }
    });
    dispose();
  }

  @BaseDialog.Button(position = 1, name = "Add Selected")
  public void buttonAddSelected() {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        for (SModelReference imported : myImportsToAdd) {
          myModel.addImportedModel(imported);
        }
        for (ModuleReference language : myLanguagesToAdd) {
          myModel.addLanguage(language);
        }
        for (ModuleReference devKit : myDevKitsToAdd) {
          myModel.addNewlyImportedDevKit(devKit);
        }
        myCanceled = false;
      }
    });
    dispose();
  }

  @BaseDialog.Button(position = 2, name = "Cancel")
  public void buttonCancel() {
    myCanceled = true;
    dispose();
  }

  protected JComponent getMainComponent() {
    return myMainComponent;
  }

  private class MyImportsTableModel implements TableModel {

    private List myItemsToAdd;
    private List myItems;

    private List<TableModelListener> myListeners = new ArrayList<TableModelListener>();

    public MyImportsTableModel(List items, List itemsToAdd) {
      myItems = items;
      myItemsToAdd = itemsToAdd;
    }

    public int getRowCount() {
      return myItems.size();
    }

    public int getColumnCount() {
      return 2;
    }

    public String getColumnName(int columnIndex) {
      return "";
    }

    public Class<?> getColumnClass(int columnIndex) {
      if (columnIndex == 0) return Boolean.class;
      return String.class;
    }

    public boolean isCellEditable(int rowIndex, int columnIndex) {
      return columnIndex == 0;
    }

    public Object getValueAt(int rowIndex, int columnIndex) {
      Object value = myItems.get(rowIndex);
      if (columnIndex == 0) return myItemsToAdd.contains(value);

      if (value instanceof SModelReference) {
        return ((SModelReference) value).getSModelFqName().toString();
      }
      if (value instanceof ModuleReference) {
        return ((ModuleReference) value).getModuleFqName();
      }
      return value.toString();
    }

    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
      if (columnIndex != 0) return;
      if (aValue instanceof Boolean) {
        boolean b = (Boolean) aValue;
        if (b) {
          myItemsToAdd.add(myItems.get(rowIndex));
        } else {
          myItemsToAdd.remove(myItems.get(rowIndex));
        }
        fireTableChanged();
      }
    }

    public void fireTableChanged() {
      for (TableModelListener l : myListeners) {
        l.tableChanged(new TableModelEvent(this));
      }
    }

    public void addTableModelListener(TableModelListener l) {
      myListeners.add(l);
    }

    public void removeTableModelListener(TableModelListener l) {
      myListeners.remove(l);
    }
  }
}
