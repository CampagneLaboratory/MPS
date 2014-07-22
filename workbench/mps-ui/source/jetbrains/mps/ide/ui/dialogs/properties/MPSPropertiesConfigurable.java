/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.ide.ui.dialogs.properties;

import com.intellij.icons.AllIcons;
import com.intellij.icons.AllIcons.Actions;
import com.intellij.openapi.Disposable;
import com.intellij.openapi.actionSystem.CommonShortcuts;
import com.intellij.openapi.actionSystem.ShortcutSet;
import com.intellij.openapi.options.Configurable;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.ui.ComboBoxTableRenderer;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.util.Disposer;
import com.intellij.ui.AnActionButton;
import com.intellij.ui.AnActionButtonRunnable;
import com.intellij.ui.BooleanTableCellRenderer;
import com.intellij.ui.EnumComboBoxModel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ui.SpeedSearchBase;
import com.intellij.ui.SpeedSearchComparator;
import com.intellij.ui.TabbedPaneWrapper;
import com.intellij.ui.TableUtil;
import com.intellij.ui.ToolbarDecorator;
import com.intellij.ui.components.JBLabel;
import com.intellij.ui.table.JBTable;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.util.ui.JBInsets;
import jetbrains.mps.icons.MPSIcons.General;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.ui.dialogs.properties.choosers.CommonChoosers;
import jetbrains.mps.ide.ui.dialogs.properties.input.ModuleCollector;
import jetbrains.mps.ide.ui.dialogs.properties.input.ModuleInstanceCondition;
import jetbrains.mps.ide.ui.dialogs.properties.input.VisibleModuleCondition;
import jetbrains.mps.ide.ui.dialogs.properties.renders.ModuleTableCellRender;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItem;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItemRole;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.DependTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.UsedLangsTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tabs.BaseTab;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.util.ComputeRunnable;
import jetbrains.mps.util.ConditionalIterable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.ui.persistence.Tab;

import javax.swing.DefaultCellEditor;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SwingUtilities;
import javax.swing.event.ChangeListener;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import java.awt.Dimension;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public abstract class MPSPropertiesConfigurable implements Configurable, Disposable {
  private TabbedPaneWrapper myTabbedPaneWrapper = new TabbedPaneWrapper(this);
  private List<Tab> myTabs = new ArrayList<Tab>();
  protected final Project myProject;
  private DialogWrapper myParentForCallBack = null;

  public MPSPropertiesConfigurable(Project project) {
    myProject = project;
  }

  public final void setParentForCallBack(DialogWrapper parentForCallBack) {
    myParentForCallBack = parentForCallBack;
  }

  protected final void forceCancelCloseDialog() {
    if(myParentForCallBack == null)
      return;
    SwingUtilities.invokeLater(new Runnable() {
      @Override
      public void run() {
        myParentForCallBack.doCancelAction();
      }
    });
  }

  @Override
  public String getHelpTopic() {
    return null;
  }

  @Override
  public void dispose() {
  }

  @Override
  public final JComponent createComponent() {
    for (Tab tab : myTabs)
      addTab(tab);
    return myTabbedPaneWrapper.getComponent();
  }

  public int getTabsCount() {
    return myTabbedPaneWrapper.getTabCount();
  }

  public final Tab getTab(int index) {
    return myTabs.get(index);
  }

  public void selectTab(Tab tab) {
    selectTab(indexOfTab(tab));
  }

  public void selectTab(int index) {
    myTabbedPaneWrapper.setSelectedIndex(index);
  }

  public void addTab(Tab tab) {
    if(tab == null || tab.getTabComponent() == null) return;
    if(tab.getToolTip() == null && tab instanceof BaseTab) ((BaseTab)tab).setToolTip(tab.getTitle());

    if(!myTabs.contains(tab)) myTabs.add(tab);
    if(myTabbedPaneWrapper.indexOfComponent(tab.getTabComponent()) < 0)
      myTabbedPaneWrapper.addTab(tab.getTitle(), tab.getIcon(), tab.getTabComponent(), tab.getToolTip());
  }

  public void insertTab(Tab tab, int index) {
    if(tab == null || tab.getTabComponent() == null) return;
    if(tab.getToolTip() == null && tab instanceof BaseTab) ((BaseTab)tab).setToolTip(tab.getTitle());

    if(!myTabs.contains(tab)) myTabs.add(tab);
    if(myTabbedPaneWrapper.indexOfComponent(tab.getTabComponent()) < 0)
      myTabbedPaneWrapper.insertTab(tab.getTitle(), tab.getIcon(), tab.getTabComponent(), tab.getToolTip(), index);
  }

  private void removeTab(int index) {
    if(index < 0)
      return;
    myTabbedPaneWrapper.removeTabAt(index);
  }

  protected void removeTab(Tab tab) {
    if(tab == null) return;
    removeTab(myTabbedPaneWrapper.indexOfComponent(tab.getTabComponent()));
    myTabs.remove(tab);
  }

  public int indexOfTab(Tab tab) {
    return myTabbedPaneWrapper.indexOfComponent(tab.getTabComponent());
  }

  public boolean containsTab(Tab tab) {
    return myTabbedPaneWrapper.indexOfComponent(tab.getTabComponent()) >= 0;
  }

  public final void addChangeListener(final ChangeListener listener){
    if(myTabbedPaneWrapper != null)
    myTabbedPaneWrapper.addChangeListener(listener);
  }

  @Override
  public void apply() throws ConfigurationException {
    myProject.getModelAccess().executeCommandInEDT(new Runnable() {
      @Override
      public void run() {
        for (Tab tab : myTabs)
          tab.apply();
        save();
      }
    });
  }

  @Override
  public boolean isModified() {
    for (Tab tab : myTabs)
      if(tab.isModified())
        return true;

    return false;
  }

  @Override
  public void reset() {
  }

  @Override
  public void disposeUIResources() {
    Disposer.dispose(this);
  }

  /**
   * If apply method in each tab separately take a lot of time,
   * override this method to perform real save after all applies
   */
  protected void save() {}

  /**
   * FIXME [SRepository] ProjectRepository.getModules() gives empty list of modules at the moment,
   * and I have no other way to access all visible modules but to use global MPSModuleRepository
   */
  protected final Iterable<SModule> getProjectModules() {
    //return myProject.getRepository().getModules();

    // wrap into Iterable to ensure lazy construction of module sequence.
    // getModules operation requires read access, but I don't see a reason to
    // move creation of conditional sequence into a read runnable.
    return new Iterable<SModule>() {
      @Override
      public Iterator<SModule> iterator() {
        return MPSModuleRepository.getInstance().getModules().iterator();
      }
    };
  }
  public abstract class CommonTab extends BaseTab {

    protected JTextField myTextFieldName;

    public CommonTab() {
      super(PropertiesBundle.message("mps.properties.common.title"), AllIcons.General.ProjectSettings, PropertiesBundle.message("mps.properties.common.tip"));
      init();
    }

    protected abstract String getConfigItemName();
    protected abstract String getConfigItemPath();
    protected abstract JComponent getBottomComponent();
    protected JComponent getTopComponent() {
      return null;
    }

    @Override
    public void init() {
      JComponent topComponent = getTopComponent();
      int rowCount = 0;

      JPanel sourcesTab = new JPanel();
      sourcesTab.setLayout(new GridLayoutManager(topComponent != null ? 4 : 3, 2, INSETS, -1, -1));

      JBLabel label = new JBLabel(PropertiesBundle.message("mps.properties.common.namelabel"));
      sourcesTab.add(label, new GridConstraints(rowCount++, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

      myTextFieldName = new JTextField();
      myTextFieldName.setText(getConfigItemName());
      sourcesTab.add(myTextFieldName, new GridConstraints(0, 1, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(150, -1), null, 0, false));

      label = new JBLabel(PropertiesBundle.message("mps.properties.common.filepathlabel"));
      sourcesTab.add(label, new GridConstraints(rowCount, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED, GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

      JTextField textField = new JTextField();
      textField.setEditable(false);
      textField.setText(getConfigItemPath());
      sourcesTab.add(textField, new GridConstraints(rowCount++, 1, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(150, -1), null, 0, false));

      if(topComponent != null)
        sourcesTab.add(topComponent, new GridConstraints(rowCount++, 0, 1, 2, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_WANT_GROW, GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(150, -1), null, 0, false));

      sourcesTab.add(getBottomComponent(), new GridConstraints(rowCount, 0, 1, 2, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));
      setTabComponent(sourcesTab);
    }

    @Override
    public boolean isModified() {
      return !myTextFieldName.getText().equals(getConfigItemName());
    }
  }

  public abstract class DependenciesTab extends BaseTab {

    protected DependTableModel myDependTableModel;

    public DependenciesTab() {
      super(PropertiesBundle.message("mps.properties.dependencies.title"), General.Dependencies, PropertiesBundle.message("mps.properties.dependencies.tip"));
      init();
    }

    protected abstract DependTableModel getDependTableModel();
    /*CellEditor for scope cell */
    protected abstract TableCellEditor getTableCellEditor();

    @Override
    public void init() {
      JPanel dependenciesTab = new JPanel();
      dependenciesTab.setLayout(new GridLayoutManager(1, 1, INSETS, -1, -1));

      final JBTable tableDepend = new JBTable();
      tableDepend.setShowHorizontalLines(false);
      tableDepend.setShowVerticalLines(false);
      tableDepend.setAutoCreateRowSorter(false);
      tableDepend.setAutoscrolls(true);
      tableDepend.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myDependTableModel = getDependTableModel();
      tableDepend.setModel(myDependTableModel);

      tableDepend.setDefaultRenderer(DependenciesTableItem.class, getTableCellRender());
      tableDepend.setDefaultRenderer(Boolean.class, new BooleanTableCellRenderer());

      tableDepend.setDefaultRenderer(SDependencyScope.class, new ComboBoxTableRenderer<SDependencyScope>(SDependencyScope.values()));
      tableDepend.setDefaultEditor(SDependencyScope.class, getTableCellEditor());


      TableColumn column = null;
      if(myDependTableModel.getExportColumnIndex() >= 0) {
        column = tableDepend.getTableHeader().getColumnModel().getColumn(myDependTableModel.getExportColumnIndex());
        column.setMinWidth(20);
        column.setPreferredWidth(50);
        column.setMaxWidth(50);
      }
      if(myDependTableModel.getRoleColumnIndex() >= 0) {
        column = tableDepend.getTableHeader().getColumnModel().getColumn(myDependTableModel.getRoleColumnIndex());
        column.setMinWidth(80);
        column.setPreferredWidth(100);
        column.setMaxWidth(120);
      }
      if(myDependTableModel.getItemColumnIndex() >= 0) {
        column = tableDepend.getTableHeader().getColumnModel().getColumn(myDependTableModel.getItemColumnIndex());
        column.setPreferredWidth(200);
      }


      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(tableDepend);
      decorator.setAddAction(getAnActionButtonRunnable()).setRemoveAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          int first = tableDepend.getSelectionModel().getMinSelectionIndex();
          int last = tableDepend.getSelectionModel().getMaxSelectionIndex();
          for (int i : tableDepend.getSelectedRows()) {
            if (!confirmRemove(myDependTableModel.getValueAt(i, myDependTableModel.getItemColumnIndex()))) {
              return;
            }
          }
          TableUtil.removeSelectedItems(tableDepend);
          myDependTableModel.fireTableRowsDeleted(first, last);
          first = Math.max(0, first - 1);
          tableDepend.getSelectionModel().setSelectionInterval(first, first);
        }
      });
      FindAnActionButton findAnActionButton = getFindAnAction(tableDepend);
      if(findAnActionButton != null)
        decorator.addExtraAction(findAnActionButton);

      decorator.setPreferredSize(new Dimension(500, 300));

      JPanel table = decorator.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      dependenciesTab.add(table, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      setTabComponent(dependenciesTab);

      new SpeedSearchBase<JBTable>(tableDepend) {
        @Override
        public int getSelectedIndex() {
          return tableDepend.getSelectedRow();
        }

        @Override
        protected int convertIndexToModel(int viewIndex) {
          return tableDepend.convertRowIndexToModel(viewIndex);
        }

        @Override
        public Object[] getAllElements() {
          final int count = myDependTableModel.getRowCount();
          Object[] elements = new Object[count];
          for (int idx = 0; idx < count; idx++) {
            elements[idx] = myDependTableModel.getValueAt(idx);
          }
          return elements;
        }

        @Override
        public String getElementText(Object element) {
          if(!(element instanceof DependenciesTableItem))
            return "";
          return ((DependenciesTableItem)element).getItem().toString();
        }

        @Override
        public void selectElement(Object element, String selectedText) {
          final int count = myDependTableModel.getRowCount();
          for (int row = 0; row < count; row++) {
            if (element.equals(myDependTableModel.getValueAt(row))) {
              final int viewRow = tableDepend.convertRowIndexToView(row);
              tableDepend.getSelectionModel().setSelectionInterval(viewRow, viewRow);
              TableUtil.scrollSelectionToVisible(tableDepend);
              break;
            }
          }
        }
      }.setComparator(new SpeedSearchComparator(false, true));
    }

    /*CellRenderer for DependenciesTableItem, actual value supplied to renderer is */
    protected abstract TableCellRenderer getTableCellRender();

    protected boolean confirmRemove(final Object value) {
      return true;
    }

    @Nullable
    protected FindAnActionButton getFindAnAction(JBTable table) {
      return null;
    }

    @Override
    public boolean isModified() {
      return myDependTableModel.isModified();
    }

    @Override
    public void apply() {
      myDependTableModel.apply();
    }

    protected abstract AnActionButtonRunnable getAnActionButtonRunnable();
  }

  public abstract class UsedLanguagesTab extends BaseTab {

    protected UsedLangsTableModel myUsedLangsTableModel;

    public UsedLanguagesTab() {
      super(PropertiesBundle.message("mps.properties.usedlanguages.title"), IdeIcons.PROJECT_LANGUAGE_ICON, PropertiesBundle.message("mps.properties.usedlanguages.tip"));
      init();
    }

    protected abstract UsedLangsTableModel getUsedLangsTableModel();

    @Override
    public void init() {
      JPanel usedLangsTab = new JPanel();
      usedLangsTab.setLayout(new GridLayoutManager(1, 1, INSETS, -1, -1));

      final JBTable usedLangsTable = new JBTable();
      usedLangsTable.setShowHorizontalLines(false);
      usedLangsTable.setShowVerticalLines(false);
      usedLangsTable.setAutoCreateRowSorter(false);
      usedLangsTable.setAutoscrolls(true);
      usedLangsTable.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myUsedLangsTableModel = getUsedLangsTableModel();
      usedLangsTable.setModel(myUsedLangsTableModel);

      usedLangsTable.setDefaultRenderer(SModuleReference.class, getTableCellRender());

      JComboBox roleEditor = new JComboBox(new EnumComboBoxModel<DependenciesTableItemRole>(DependenciesTableItemRole.class));
      usedLangsTable.setDefaultEditor(DependenciesTableItemRole.class, new DefaultCellEditor(roleEditor));
      usedLangsTable.setDefaultRenderer(DependenciesTableItemRole.class,
          new ComboBoxTableRenderer<DependenciesTableItemRole>(DependenciesTableItemRole.values()) {
            @Override
            protected String getTextFor(@NotNull final DependenciesTableItemRole value) {
              return value.toString();
            }
          });

      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(usedLangsTable);
      decorator.setAddAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          Iterable<SModule> modules = new ConditionalIterable<SModule>(getProjectModules(), new ModuleInstanceCondition(Language.class, DevKit.class));
          modules = new ConditionalIterable<SModule>(modules, new VisibleModuleCondition());
          ComputeRunnable<List<SModuleReference>> c = new ComputeRunnable<List<SModuleReference>>(new ModuleCollector(modules));
          myProject.getModelAccess().runReadAction(c);
          List<SModuleReference> list = CommonChoosers.showModuleSetChooser(myProject, "Choose Language or DevKit", c.getResult());
          for (SModuleReference reference : list) {
            myUsedLangsTableModel.addItem(reference);
          }
        }
      }).setRemoveAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          int first = usedLangsTable.getSelectionModel().getMinSelectionIndex();
          int last = usedLangsTable.getSelectionModel().getMaxSelectionIndex();
          for (int i : usedLangsTable.getSelectedRows()) {
            if (!confirmRemove(myUsedLangsTableModel.getValueAt(i, UsedLangsTableModel.ITEM_COLUMN))) return;
          }
          TableUtil.removeSelectedItems(usedLangsTable);
          myUsedLangsTableModel.fireTableRowsDeleted(first, last);
          first = Math.max(0, first - 1);
          usedLangsTable.getSelectionModel().setSelectionInterval(first, first);
        }
      });

      FindAnActionButton findAnActionButton = getFindAnAction(usedLangsTable);
      if(findAnActionButton != null)
        decorator.addExtraAction(findAnActionButton);

      decorator.setPreferredSize(new Dimension(500, 300));

      JPanel table = decorator.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      usedLangsTab.add(table, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      setTabComponent(usedLangsTab);

      new SpeedSearchBase<JBTable>(usedLangsTable) {
        @Override
        public int getSelectedIndex() {
          return usedLangsTable.getSelectedRow();
        }

        @Override
        protected int convertIndexToModel(int viewIndex) {
          return usedLangsTable.convertRowIndexToModel(viewIndex);
        }

        @Override
        public Object[] getAllElements() {
          final int count = myUsedLangsTableModel.getRowCount();
          Object[] elements = new Object[count];
          for (int idx = 0; idx < count; idx++) {
            elements[idx] = myUsedLangsTableModel.getValueAt(idx, UsedLangsTableModel.ITEM_COLUMN);
          }
          return elements;
        }

        @Override
        public String getElementText(Object element) {
          if(!(element instanceof SModuleReference))
            return "";
          return ((SModuleReference)element).getModuleName();
        }

        @Override
        public void selectElement(Object element, String selectedText) {
          final int count = myUsedLangsTableModel.getRowCount();
          for (int row = 0; row < count; row++) {
            if (element.equals(myUsedLangsTableModel.getValueAt(row, UsedLangsTableModel.ITEM_COLUMN))) {
              final int viewRow = usedLangsTable.convertRowIndexToView(row);
              usedLangsTable.getSelectionModel().setSelectionInterval(viewRow, viewRow);
              TableUtil.scrollSelectionToVisible(usedLangsTable);
              break;
            }
          }
        }
      }.setComparator(new SpeedSearchComparator(false, true));
    }

    protected TableCellRenderer getTableCellRender() {
      return new ModuleTableCellRender();
    }

    protected void findUsages(Object value) {}

    @Nullable
    protected FindAnActionButton getFindAnAction(JBTable table) {
      return null;
    }

    protected boolean confirmRemove(Object value) {
      return true;
    }

    @Override
    public boolean isModified() {
      return myUsedLangsTableModel.isModified();
    }

    @Override
    public void apply() {
      myUsedLangsTableModel.apply();
    }
  }

  public abstract class FindAnActionButton extends AnActionButton {
    protected final JBTable myTable;

    public FindAnActionButton(JBTable table) {
      myTable = table;
      this.getTemplatePresentation().setEnabledAndVisible(true);
      this.getTemplatePresentation().setIcon(Actions.Find);
      this.getTemplatePresentation().setText("Find usages");
    }

    @Override
    public boolean isEnabled() {
      return !(myTable.getSelectionModel().isSelectionEmpty());
    }

    @Override
    public ShortcutSet getShortcut() {
      return CommonShortcuts.getFind();
    }
  }

  public static final JBInsets INSETS = new JBInsets(10,10,10,10);
}
