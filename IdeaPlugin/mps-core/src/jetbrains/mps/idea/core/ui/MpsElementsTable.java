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

package jetbrains.mps.idea.core.ui;

import com.intellij.ide.util.ChooseElementsDialog;
import com.intellij.ui.*;
import com.intellij.ui.table.JBTable;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.smodel.ModelAccess;

import javax.swing.*;
import javax.swing.border.Border;
import javax.swing.border.LineBorder;
import javax.swing.table.TableCellRenderer;
import java.awt.*;
import java.util.*;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: shatalin
 * Date: 1/17/12
 * Time: 3:50 PM
 * To change this template use File | Settings | File Templates.
 */
public abstract class MpsElementsTable<T> {
    private final Border NO_FOCUS_BORDER = BorderFactory.createEmptyBorder(1, 1, 1, 1);

    private MpsElementsTableModel myElementsTableModel;
    private JBTable myElementsTable;

    public JComponent createComponent() {
        myElementsTableModel = new MpsElementsTableModel<T>(getComparator(), getRendererClass(), getColumnTitle());

        myElementsTable = new JBTable(myElementsTableModel);
        myElementsTable.setShowGrid(false);
        myElementsTable.setDragEnabled(false);
        myElementsTable.setShowHorizontalLines(false);
        myElementsTable.setShowVerticalLines(false);
        myElementsTable.setIntercellSpacing(new Dimension(0, 0));
        myElementsTable.setBorder(new LineBorder(UIUtil.getBorderColor()));
        myElementsTable.setDefaultRenderer(getRendererClass(), createDefaultRenderer());
        myElementsTable.getSelectionModel().setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

        new SpeedSearchBase<JBTable>(myElementsTable) {
            public int getSelectedIndex() {
                return myElementsTable.getSelectedRow();
            }

            @Override
            protected int convertIndexToModel(int viewIndex) {
                return myElementsTable.convertRowIndexToModel(viewIndex);
            }

            public Object[] getAllElements() {
                final int count = myElementsTableModel.getRowCount();
                Object[] elements = new Object[count];
                for (int idx = 0; idx < count; idx++) {
                    elements[idx] = myElementsTableModel.getValueAt(0, idx);
                }
                return elements;
            }

            public String getElementText(Object element) {
                return getText((T) element);
            }

            public void selectElement(Object element, String selectedText) {
                final int count = myElementsTableModel.getRowCount();
                for (int row = 0; row < count; row++) {
                    if (element.equals(myElementsTableModel.getValueAt(0, row))) {
                        final int viewRow = myElementsTable.convertRowIndexToView(row);
                        myElementsTable.getSelectionModel().setSelectionInterval(viewRow, viewRow);
                        TableUtil.scrollSelectionToVisible(myElementsTable);
                        break;
                    }
                }
            }
        };

        ToolbarDecorator decorator = ToolbarDecorator.createDecorator(myElementsTable);
        decorator.setAddAction(new AnActionButtonRunnable() {
            @Override
            public void run(AnActionButton anActionButton) {
                ModelAccess.instance().runReadInEDT(new Runnable() {
                    @Override
                    public void run() {
                        final java.util.List<T> allElements = getAllVisibleElements();
                        Collections.sort(allElements, getComparator());

                        SwingUtilities.invokeLater(new Runnable() {
                            @Override
                            public void run() {
                                ChooseElementsDialog<T> chooseElementsDialog = new ChooseElementsDialog<T>(myElementsTable, allElements, getChooserMessage()) {
                                    @Override
                                    protected String getItemText(T item) {
                                        return getText(item);
                                    }

                                    @Override
                                    protected Icon getItemIcon(T item) {
                                        return getIcon(item);
                                    }
                                };
                                chooseElementsDialog.show();
                                Set<T> elementsToAdd = new HashSet<T>(chooseElementsDialog.getChosenElements());
                                myElementsTableModel.addElements(elementsToAdd);
                                myElementsTableModel.fireTableDataChanged();
                                ListSelectionModel selectionModel = myElementsTable.getSelectionModel();
                                if (!elementsToAdd.isEmpty()) {
                                    selectionModel.clearSelection();
                                    for (int i = 0; i < myElementsTableModel.getRowCount(); i++) {
                                        if (elementsToAdd.contains(myElementsTableModel.getValueAt(i, 0))) {
                                            selectionModel.addSelectionInterval(i, i);
                                        }
                                    }
                                }
                            }
                        });
                    }
                });
            }
        }).setRemoveAction(new AnActionButtonRunnable() {
            @Override
            public void run(AnActionButton anActionButton) {
                TableUtil.removeSelectedItems(myElementsTable);
                myElementsTableModel.fireTableDataChanged();
            }
        });
        return postDecoratePanel(decorator.createPanel());
    }

    protected TableCellRenderer createDefaultRenderer() {
        return new ColoredTableCellRenderer() {
            @Override
            protected void customizeCellRenderer(JTable table, Object value, boolean selected, boolean hasFocus, int row, int column) {
                setPaintFocusBorder(false);
                setFocusBorderAroundIcon(true);
                setBorder(NO_FOCUS_BORDER);
                if (value != null) {
                    T tableItem = (T) value;
                    setIcon(MpsElementsTable.this.getIcon(tableItem));
                    append(getText(tableItem), getTextAttributes(tableItem));
                    setToolTipText(MpsElementsTable.this.getToolTipText(tableItem));
                }
            }
        };
    }

    protected abstract String getText(T element);

    protected abstract Icon getIcon(T element);

    protected abstract List<T> getAllVisibleElements();

    protected abstract Comparator<T> getComparator();

    protected abstract Class<T> getRendererClass();

    protected abstract String getChooserMessage();

    protected JPanel postDecoratePanel(JPanel panel) {
        panel.setBorder(null);
        return panel;
    }

    protected String getColumnTitle() {
        return null;
    }

    public List<T> getElements() {
        return myElementsTableModel.getElements();
    }

    public void setElements(List<T> elements) {
        myElementsTableModel.setElements(elements);
        myElementsTableModel.fireTableDataChanged();
        if (myElementsTable.getRowCount() > 0) {
            myElementsTable.getSelectionModel().setSelectionInterval(0, 0);
        }
    }

    public boolean isModified(List<T> elements) {
        List<T> sortedLanguagesList = new ArrayList<T>(elements);
        Collections.sort(sortedLanguagesList, getComparator());
        return !getElements().equals(sortedLanguagesList);
    }

    protected SimpleTextAttributes getTextAttributes(T element) {
        return SimpleTextAttributes.REGULAR_ATTRIBUTES;
    }

    protected String getToolTipText(T element) {
        return null;
    }
}
