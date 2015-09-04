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
package jetbrains.mps.ide.ui.dialogs.properties;

import com.intellij.icons.AllIcons;
import com.intellij.ide.util.BrowseFilesListener;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory;
import com.intellij.openapi.fileChooser.FileChooserFactory;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.util.EmptyRunnable;
import com.intellij.ui.AnActionButton;
import com.intellij.ui.AnActionButtonRunnable;
import com.intellij.ui.CheckboxTree;
import com.intellij.ui.CheckboxTreeBase.CheckPolicy;
import com.intellij.ui.CheckedTreeNode;
import com.intellij.ui.FieldPanel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ui.InsertPathAction;
import com.intellij.ui.ScrollPaneFactory;
import com.intellij.ui.SpeedSearchComparator;
import com.intellij.ui.TabbedPaneWrapper.TabWrapper;
import com.intellij.ui.ToolbarDecorator;
import com.intellij.ui.components.JBCheckBox;
import com.intellij.ui.components.JBLabel;
import com.intellij.ui.table.JBTable;
import com.intellij.ui.tabs.impl.JBTabsImpl;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.util.ui.AbstractTableCellEditor;
import com.intellij.util.ui.ItemRemovable;
import com.intellij.util.ui.JBUI;
import jetbrains.mps.extapi.module.ModuleFacetBase;
import jetbrains.mps.findUsages.CompositeFinder;
import jetbrains.mps.icons.MPSIcons.General;
import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.holders.GenericHolder;
import jetbrains.mps.ide.findusages.model.holders.ModelsHolder;
import jetbrains.mps.ide.findusages.model.scopes.FindUsagesScope;
import jetbrains.mps.ide.findusages.model.scopes.ModelsScope;
import jetbrains.mps.ide.findusages.model.scopes.ModulesScope;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.ui.dialogs.properties.choosers.CommonChoosers;
import jetbrains.mps.ide.ui.dialogs.properties.creators.ModelChooser;
import jetbrains.mps.ide.ui.dialogs.properties.editors.RuleTypeEditor;
import jetbrains.mps.ide.ui.dialogs.properties.genpriorities.GeneratorPrioritiesTree;
import jetbrains.mps.ide.ui.dialogs.properties.input.ModuleCollector;
import jetbrains.mps.ide.ui.dialogs.properties.input.ModuleInstanceCondition;
import jetbrains.mps.ide.ui.dialogs.properties.input.VisibleModuleCondition;
import jetbrains.mps.ide.ui.dialogs.properties.renderers.RuleTypeRenderer;
import jetbrains.mps.ide.ui.dialogs.properties.renders.DependencyCellState;
import jetbrains.mps.ide.ui.dialogs.properties.renders.ModelTableCellRender;
import jetbrains.mps.ide.ui.dialogs.properties.renders.ModuleTableCellRender;
import jetbrains.mps.ide.ui.dialogs.properties.roots.editors.ContentEntriesEditor;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItem;
import jetbrains.mps.ide.ui.dialogs.properties.tables.items.DependenciesTableItem.ModuleType;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.DependTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.ModuleDependTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tables.models.UsedLangsTableModel;
import jetbrains.mps.ide.ui.dialogs.properties.tabs.BaseTab;
import jetbrains.mps.ide.ui.dialogs.properties.tabs.FacetTabsPersistence;
import jetbrains.mps.ide.ui.finders.LanguageModelImportFinder;
import jetbrains.mps.ide.ui.finders.LanguageUsagesFinder;
import jetbrains.mps.ide.ui.finders.ModelUsagesFinder;
import jetbrains.mps.ide.ui.finders.ModuleUsagesFinder;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.Dependency;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_AbstractRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_ExternalRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_RefSet;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingPriorityRule;
import jetbrains.mps.project.structure.modules.mappingpriorities.RuleType;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.ComputeRunnable;
import jetbrains.mps.util.ConditionalIterable;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.ModelComputeRunnable;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.Memento;
import org.jetbrains.mps.openapi.ui.Modifiable;
import org.jetbrains.mps.openapi.ui.persistence.FacetTab;
import org.jetbrains.mps.openapi.ui.persistence.Tab;
import org.jetbrains.mps.util.Condition;

import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.DefaultCellEditor;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ListSelectionModel;
import javax.swing.SpinnerNumberModel;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.table.AbstractTableModel;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableCellRenderer;
import javax.swing.table.TableColumn;
import javax.swing.text.DefaultFormatter;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EventObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.TreeSet;

public class ModulePropertiesConfigurable extends MPSPropertiesConfigurable {
  private ModuleDescriptor myModuleDescriptor;
  private AbstractModule myModule;
  private Set<JCheckBox> myCheckBoxes = new TreeSet<JCheckBox>(new Comparator<JCheckBox>() {
    @Override
    public int compare(JCheckBox o1, JCheckBox o2) {
      return o1.getText().toLowerCase().compareTo(o2.getText().toLowerCase());
    }
  });

  public ModulePropertiesConfigurable(SModule module, Project project) {
    super(project);
    myModule = (AbstractModule) module;
    myModuleDescriptor = myModule.getModuleDescriptor();

    addTab(new ModuleCommonTab());
    if (!(myModule instanceof DevKit)) {
      final ModuleDependenciesTab moduleDependenciesTab = new ModuleDependenciesTab();
      addTab(moduleDependenciesTab);
      addTab(new ModuleUsedLanguagesTab());
      if (myModule instanceof Language)
        addTab(new RuntimeTab());
      if (myModule instanceof Generator)
        addTab(new GeneratorAdvancesTab((Generator) myModule, new GeneratorDependencyProvider(moduleDependenciesTab)));
    }
    for (SModuleFacet moduleFacet : myModule.getFacets()) {
      if (!(moduleFacet instanceof ModuleFacetBase)) {
        continue;
      }
      ModuleFacetBase moduleFacetBase = (ModuleFacetBase) moduleFacet;
      Tab facetTab = FacetTabsPersistence.getInstance().getFacetTab(moduleFacetBase.getFacetType(), moduleFacetBase);
      if (facetTab != null) {
        addTab(facetTab);
      }
    }

    addTab(new AddFacetsTab());
  }

  @Override
  protected void save() {
    // todo: !!!
    myModule.setModuleDescriptor(myModuleDescriptor);
    //In case of Generator saving lead to reload of containing Language
    //As result Language unload old Generator module and creates new - so we need to update object
    //TODO: remove when generator will be separated from language
    if (myModule instanceof Generator) {
      myModule = (AbstractModule) MPSModuleRepository.getInstance().getModule(myModule.getModuleId());
    }
    myModule.save();
  }

  @Nls
  @Override
  public String getDisplayName() {
    return String.format(PropertiesBundle.message("mps.properties.module.title"), myModule.getClass().getSimpleName(), myModule.getModuleName());
  }

  private FindUsagesScope getModuleAndOwnedModelsScope() {
    return new ModelAccessHelper(myProject.getModelAccess()).runReadAction(new Computable<FindUsagesScope>() {
      @Override
      public FindUsagesScope compute() {
        final ModulesScope rv = new ModulesScope(myModule);
        rv.resolveRespectsAllVisible(true);
        return rv;
      }
    });
  }

  /*package*/ void findModuleUsages(List<SModuleReference> modules) {
    final SearchQuery query = new SearchQuery(new GenericHolder<Object>(modules), getModuleAndOwnedModelsScope());
    final IResultProvider provider = FindUtils.makeProvider(new CompositeFinder(new ModuleUsagesFinder()));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }

  /*package*/ void findModelUsages(List<SModelReference> models) {
    final SearchQuery query = new SearchQuery(new ModelsHolder(models), getModuleAndOwnedModelsScope());
    final IResultProvider provider = FindUtils.makeProvider(new CompositeFinder(new ModelUsagesFinder()));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }

  /*package*/ void findLanguageUsages(List<SLanguage> languages) {
    final SearchQuery query = new SearchQuery(new GenericHolder<Collection<SLanguage>>(languages, "Languages"), new ModelsScope(myModule.getModels()));
    final IResultProvider provider = FindUtils.makeProvider(new CompositeFinder(new LanguageModelImportFinder()), new CompositeFinder(new LanguageUsagesFinder()));
    showUsageImpl(query, provider);
    forceCancelCloseDialog();
  }


  public class ModuleCommonTab extends CommonTab {

    private ModuleDependenciesTab myModuleDependenciesTab;
    private ContentEntriesEditor myEntriesEditor;
    private JTextField myGenOut;
    private JSpinner myVersion;

    @Override
    protected String getConfigItemName() {
      return myModuleDescriptor.getNamespace();
    }

    @Override
    protected String getConfigItemPath() {
      if (myModule.getDescriptorFile() == null) {
        return "";
      } else {
        return FileUtil.getCanonicalPath(myModule.getDescriptorFile().getPath());
      }
    }

    @Override
    protected JComponent getBottomComponent() {
      if (myModule instanceof DevKit) {
        myModuleDependenciesTab = new ModuleDependenciesTab();
        return myModuleDependenciesTab.getTabComponent();
      } else {
        myEntriesEditor = new ContentEntriesEditor(myModuleDescriptor);
        Disposer.register(ModulePropertiesConfigurable.this, myEntriesEditor);
        return myEntriesEditor.getComponent();
      }
    }

    //null=not supported
    @Nullable
    protected Integer getVersion() {
      if (!(myModule instanceof Language)) return null;
      return ((Language) myModule).getLanguageVersion();
    }

    @Override
    protected JComponent getTopComponent() {
      if (myModule instanceof Language || myModule instanceof Solution) {

        boolean hasVersion = getVersion() != null;
        JPanel panel = new JPanel();
        panel.setLayout(new GridLayoutManager(hasVersion ? 2 : 1, 2, JBUI.emptyInsets(), -1, -1));

        int row = 0;

        JBLabel label = new JBLabel(PropertiesBundle.message("mps.properties.configurable.module.javatab.genoutlabel"));
        panel.add(label, new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
            GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

        myGenOut = new JTextField();
        final FileChooserDescriptor outputPathsChooserDescriptor = FileChooserDescriptorFactory.createSingleFolderDescriptor();
        InsertPathAction.addTo(myGenOut, outputPathsChooserDescriptor);
        outputPathsChooserDescriptor.setHideIgnored(false);
        BrowseFilesListener listener = new BrowseFilesListener(myGenOut, "", "", outputPathsChooserDescriptor);
        FieldPanel genOutPath = new FieldPanel(myGenOut, null, null, listener, EmptyRunnable.getInstance());
        FileChooserFactory.getInstance().installFileCompletion(genOutPath.getTextField(), outputPathsChooserDescriptor, true, null);

        genOutPath.setText(getGenOutPath());
        genOutPath.setPreferredSize(new Dimension(300, 20));
        panel.add(genOutPath,
            new GridConstraints(row++, 1, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_GROW,
                GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

        if (hasVersion) {
          JLabel verLabel = new JBLabel(PropertiesBundle.message("mps.properties.configurable.module.version"));
          panel.add(verLabel,
              new GridConstraints(row, 0, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_FIXED,
                  GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));


          myVersion = new JSpinner(new SpinnerNumberModel((int) getVersion(), 0, getVersion() + 10000, 1));
          JSpinner.NumberEditor jsEditor = (JSpinner.NumberEditor)myVersion.getEditor();
          DefaultFormatter formatter = (DefaultFormatter) jsEditor.getTextField().getFormatter();
          formatter.setAllowsInvalid(false);
          panel.add(myVersion,
              new GridConstraints(row++, 1, 1, 1, GridConstraints.ANCHOR_NORTHWEST, GridConstraints.FILL_NONE, GridConstraints.SIZEPOLICY_WANT_GROW,
                  GridConstraints.SIZEPOLICY_FIXED, null, new Dimension(30, -1), null, 0, false));
        }

        return panel;
      }
      return null;
    }

    private String getGenOutPath() {
      IFile outputDir = myModule.getOutputPath();
      return outputDir != null ? FileUtil.getCanonicalPath(outputDir.getPath()) : "";
    }

    @Override
    public boolean isModified() {
      if (super.isModified()) return true;
      if (myModule instanceof DevKit && myModuleDependenciesTab.isModified()) return true;
      if (!(myModule instanceof DevKit) && myEntriesEditor.isModified()) return true;
      if (myGenOut != null && !(myGenOut.getText().equals(getGenOutPath()))) return true;

      if (myVersion != null) {
        try {
          int newVersion = ((Integer) myVersion.getValue());
          if (!EqualUtil.equals(newVersion, getVersion())) return false;
        } catch (NumberFormatException e) {
          //just continue omitting this field
        }
      }

      return false;
    }

    @Override
    public void apply() {
      if (super.isModified()) {
        myModuleDescriptor.setNamespace(myTextFieldName.getText());
      }
      if (myModule instanceof DevKit)
        myModuleDependenciesTab.apply();
      else {
        if (myGenOut != null && !(myGenOut.getText().equals(getGenOutPath()))) {
          if (myModule instanceof Language) {
            ((LanguageDescriptor) myModule.getModuleDescriptor()).setGenPath(
                myModule.getOutputPath().getPath().equals(myGenOut.getText()) ? null : myGenOut.getText());
          } else if (myModule instanceof Solution) {
            ((SolutionDescriptor) myModule.getModuleDescriptor()).setOutputPath(
                myModule.getOutputPath().getPath().equals(myGenOut.getText()) ? null : myGenOut.getText());
          }
        }
        if (myVersion != null) {
          try {
            int newVersion = ((Integer) myVersion.getValue());
            ((Language) myModule).setLanguageVersion(newVersion);
          } catch (NumberFormatException e) {
            //just continue omitting this field
          }
        }
        myEntriesEditor.apply();
      }
    }
  }

  public class ModuleDependenciesTab extends DependenciesTab {

    /*package*/ List<DependenciesTableItem> getActualDependencies() {
      int x = myDependTableModel.getRowCount();
      ArrayList<DependenciesTableItem> rv = new ArrayList<DependenciesTableItem>(x);
      for (int i = 0; i < x; i++) {
        rv.add(myDependTableModel.getValueAt(i));
      }
      return rv;
    }

    @Override
    protected DependTableModel getDependTableModel() {
      return new ModuleDependTableModel(myModuleDescriptor);
    }

    @Override
    protected TableCellEditor getTableCellEditor() {
      return new DependenciesTableCellEditor();
    }

    @Override
    protected AnActionButtonRunnable getAnActionButtonRunnable() {
      return new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          final boolean isDevkit = myModule instanceof DevKit;
          Iterable<SModule> selectionSet = getProjectModules();
          if (isDevkit) {
            selectionSet = new ConditionalIterable<SModule>(selectionSet, new VisibleModuleCondition());
          }
          ComputeRunnable<List<SModuleReference>> c = new ComputeRunnable<List<SModuleReference>>(new ModuleCollector(selectionSet));
          myProject.getModelAccess().runReadAction(c);
          final String dialogTitle = isDevkit ? "Choose DevKit contents" : "Choose modules";
          final List<SModuleReference> list = CommonChoosers.showModuleSetChooser(myProject, dialogTitle, c.getResult());
          if (list.isEmpty()) {
            return;
          }
          myProject.getModelAccess().runReadAction(new Runnable() {
            @Override
            public void run() {
              for (SModuleReference moduleReference : list) {
                final SModule module = moduleReference.resolve(MPSModuleRepository.getInstance());
                final Dependency dep;
                if (isDevkit) {
                  dep = new Dependency(moduleReference, SDependencyScope.EXTENDS);
                } else {
                  dep = new Dependency(moduleReference, SDependencyScope.DEFAULT, false);
                }
                if (module instanceof Language) {
                  myDependTableModel.addLanguageItem(dep);
                } else if (module instanceof Generator) {
                  myDependTableModel.addGeneratorItem(dep);
                } else if (module instanceof Solution) {
                  myDependTableModel.addSolutionItem(dep);
                } else if (module instanceof DevKit) {
                  myDependTableModel.addDevkitItem(dep);
                } else {
                  myDependTableModel.addUnspecifiedItem(dep);
                }
              } // foreach moduleReference
            }
          });
        }
      };
    }

    @Override
    protected TableCellRenderer getTableCellRender() {
      final SRepository repo = new ModelComputeRunnable<SRepository>(new GetModuleRepo(myModule)).runRead(myProject.getModelAccess());
      class MissingModuleCondition implements Condition<SModule> {
        public MissingModuleCondition() {
        }

        @Override
        public boolean met(SModule module) {
          return module == null;
        }
      }
      final ModuleTableCellRender missing = new ModuleTableCellRender(repo);
      missing.addCellState(new MissingModuleCondition(), DependencyCellState.NOT_AVAILABLE);
      return missing;
    }

    @Nullable
    @Override
    protected FindActionButton getFindAnAction(JBTable table) {
      return new FindActionButton(table) {
        @Override
        public void actionPerformed(AnActionEvent e) {
          List<SModuleReference> modules = new ArrayList<SModuleReference>();
          for (int i : myTable.getSelectedRows()) {
            final DependenciesTableItem valueAt = myDependTableModel.getValueAt(i);
            modules.add(valueAt.getItem().getModuleRef());
          }
          findModuleUsages(modules);
        }
      };
    }

    private class DependenciesTableCellEditor extends DefaultCellEditor {
      public DependenciesTableCellEditor() {
        super(new JComboBox());
      }

      @Override
      public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
        JComboBox combo = (JComboBox) super.getTableCellEditorComponent(table, value, isSelected, row, column);
        combo.removeAllItems();
        if (row < 0 || row >= table.getModel().getRowCount()) {
          return combo;
        }
        DependenciesTableItem rowItem = myDependTableModel.getValueAt(row);
        List items = getItemsForCell(rowItem);
        for (Object o : items) {
          combo.addItem(o);
        }
        combo.setSelectedItem(rowItem.getItem().getScope());
        return combo;
      }

      private List<SDependencyScope> getItemsForCell(DependenciesTableItem item) {
        List<SDependencyScope> scopes = new ArrayList<SDependencyScope>(5);
        scopes.add(SDependencyScope.DEFAULT);
        if (isLangToLang(item)) {
          scopes.add(SDependencyScope.EXTENDS);
          scopes.add(SDependencyScope.GENERATES_INTO);
        }
        if (isGenToGen(item)) {
          scopes.add(SDependencyScope.EXTENDS);
          // DESIGN dependencies between generators allows use of referenced generators in priority rules without
          // imposing any run-time dependency between generators.
          scopes.add(SDependencyScope.DESIGN);
        }
        return scopes;
      }

      private boolean isLangToLang(DependenciesTableItem item) {
        return myDependTableModel.getSource() instanceof LanguageDescriptor && item.getModuleType().equals(ModuleType.LANGUAGE);
      }

      private boolean isGenToGen(DependenciesTableItem item) {
        return myDependTableModel.getSource() instanceof GeneratorDescriptor && item.getModuleType().equals(ModuleType.GENERATOR);
      }
    }
  }

  public class RuntimeTab extends BaseTab {
    private RuntimeTableModel myRuntimeTableModel;
    private AccessoriesModelsTableModel myAccessoriesModelsTableModel;

    public RuntimeTab() {
      super(PropertiesBundle.message("mps.properties.runtime.title"), General.Runtime,
          PropertiesBundle.message("mps.properties.runtime.tip"));
      init();
    }

    @Override
    public void apply() {
      myRuntimeTableModel.apply();
      myAccessoriesModelsTableModel.apply();
    }

    @Override
    public void init() {
      JPanel usedLangsTab = new JPanel();
      usedLangsTab.setLayout(new GridLayoutManager(2, 1, INSETS, -1, -1));

      final JBTable runtimeTable = new JBTable();
      runtimeTable.setShowHorizontalLines(false);
      runtimeTable.setShowVerticalLines(false);
      runtimeTable.setAutoCreateRowSorter(false);
      runtimeTable.setAutoscrolls(true);
      runtimeTable.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myRuntimeTableModel = new RuntimeTableModel();
      runtimeTable.setModel(myRuntimeTableModel);

      final SRepository contextRepo = new ModelComputeRunnable<SRepository>(new GetModuleRepo(myModule)).runRead(myProject.getModelAccess());
      runtimeTable.setDefaultRenderer(SModuleReference.class, new ModuleTableCellRender(contextRepo));

      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(runtimeTable);
      decorator.setAddAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          Iterable<SModule> modules = new ConditionalIterable<SModule>(getProjectModules(), new ModuleInstanceCondition(Solution.class));
          modules = new ConditionalIterable<SModule>(modules, new VisibleModuleCondition());
          ComputeRunnable<List<SModuleReference>> c = new ComputeRunnable<List<SModuleReference>>(new ModuleCollector(modules));
          myProject.getModelAccess().runReadAction(c);
          List<SModuleReference> list = CommonChoosers.showModuleSetChooser(myProject, "Choose solutions", c.getResult());
          for (SModuleReference reference : list) {
            myRuntimeTableModel.addItem(reference);
          }
        }
      }).setRemoveAction(new RemoveEntryAction(runtimeTable)).addExtraAction(new FindActionButton(runtimeTable) {
        @Override
        public void actionPerformed(AnActionEvent e) {
          List<SModuleReference> modules = new ArrayList<SModuleReference>();
          for (int row : runtimeTable.getSelectedRows()) {
            modules.add(myRuntimeTableModel.getValueAt(row));
          }
          findModuleUsages(modules);
        }
      });
      decorator.setPreferredSize(new Dimension(500, 150));

      JPanel table = decorator.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      usedLangsTab.add(table, new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      new TableColumnSearch(runtimeTable, 0).setComparator(new SpeedSearchComparator(false, true));

      //---------------------------------------------

      final JBTable accessoriesTable = new JBTable();
      accessoriesTable.setShowHorizontalLines(false);
      accessoriesTable.setShowVerticalLines(false);
      accessoriesTable.setAutoCreateRowSorter(false);
      accessoriesTable.setAutoscrolls(true);
      accessoriesTable.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);

      myAccessoriesModelsTableModel = new AccessoriesModelsTableModel();
      accessoriesTable.setModel(myAccessoriesModelsTableModel);

      accessoriesTable.setDefaultRenderer(SModelReference.class, new ModelTableCellRender(myProject.getRepository()));

      ToolbarDecorator decoratorForAccessories = ToolbarDecorator.createDecorator(accessoriesTable);
      decoratorForAccessories.setAddAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          List<SModelReference> list = new ModelChooser(myProject).compute();
          for (SModelReference reference : list) {
            myAccessoriesModelsTableModel.addItem(reference);
          }
        }
      }).setRemoveAction(new RemoveEntryAction(accessoriesTable)).addExtraAction(new FindActionButton(accessoriesTable) {
        @Override
        public void actionPerformed(AnActionEvent e) {
          List<SModelReference> models = new ArrayList<SModelReference>();
          for (int row : accessoriesTable.getSelectedRows()) {
            models.add(myAccessoriesModelsTableModel.getValueAt(row));
          }
          findModelUsages(models);
        }
      });
      decoratorForAccessories.setPreferredSize(new Dimension(500, 150));

      table = decoratorForAccessories.createPanel();
      table.setBorder(IdeBorderFactory.createBorder());
      usedLangsTab.add(table, new GridConstraints(1, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      new TableColumnSearch(accessoriesTable, 0).setComparator(new SpeedSearchComparator(false, true));

      setTabComponent(usedLangsTab);
    }

    @Override
    public boolean isModified() {
      return myRuntimeTableModel.isModified();
    }

    private class RuntimeTableModel extends AbstractTableModel implements ItemRemovable, Modifiable {

      private List<SModuleReference> myTableItems = new LinkedList<SModuleReference>();

      public RuntimeTableModel() {
        super();
        init();
      }

      @Override
      public void init() {
        myTableItems.addAll(((LanguageDescriptor) myModuleDescriptor).getRuntimeModules());
      }

      @Override
      public int getColumnCount() {
        return 1;
      }

      @Override
      public int getRowCount() {
        return myTableItems.size();
      }

      public void addItem(SModuleReference moduleReference) {
        if (moduleReference == null || myTableItems.contains(moduleReference))
          return;
        myTableItems.add(moduleReference);
        fireTableDataChanged();
      }

      public SModuleReference getValueAt(int rowIndex) {
        return myTableItems.get(rowIndex);
      }

      @Override
      public Object getValueAt(int rowIndex, int columnIndex) {
        return this.getValueAt(rowIndex);
      }

      @Override
      public void removeRow(int idx) {
        myTableItems.remove(idx);
      }

      @Override
      public Class<?> getColumnClass(int columnIndex) {
        return SModuleReference.class;
      }

      @Override
      public boolean isModified() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;
        return !(languageDescriptor.getRuntimeModules().containsAll(myTableItems) && myTableItems.containsAll(languageDescriptor.getRuntimeModules()));
      }

      @Override
      public String getColumnName(int column) {
        return PropertiesBundle.message("mps.properties.runtime.solutionstable.header");
      }

      @Override
      public void apply() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;

        languageDescriptor.getRuntimeModules().clear();
        languageDescriptor.getRuntimeModules().addAll(myTableItems);
      }
    }

    private class AccessoriesModelsTableModel extends AbstractTableModel implements ItemRemovable, Modifiable {

      private List<SModelReference> myTableItems = new LinkedList<SModelReference>();

      public AccessoriesModelsTableModel() {
        super();
        init();
      }

      @Override
      public void init() {
        myTableItems.addAll(((LanguageDescriptor) myModuleDescriptor).getAccessoryModels());
      }

      @Override
      public int getColumnCount() {
        return 1;
      }

      @Override
      public int getRowCount() {
        return myTableItems.size();
      }

      public void addItem(SModelReference modelReference) {
        if (modelReference == null || myTableItems.contains(modelReference))
          return;
        myTableItems.add(modelReference);
        fireTableDataChanged();
      }

      public SModelReference getValueAt(int rowIndex) {
        return myTableItems.get(rowIndex);
      }

      @Override
      public Object getValueAt(int rowIndex, int columnIndex) {
        return this.getValueAt(rowIndex);
      }

      @Override
      public void removeRow(int idx) {
        myTableItems.remove(idx);
      }

      @Override
      public Class<?> getColumnClass(int columnIndex) {
        return SModelReference.class;
      }

      @Override
      public boolean isModified() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;
        return !(languageDescriptor.getAccessoryModels().containsAll(getAccessoryModels()) && myTableItems.containsAll(
            languageDescriptor.getAccessoryModels()));
      }

      @Override
      public String getColumnName(int column) {
        return PropertiesBundle.message("mps.properties.runtime.accessorytable.header");
      }

      private LinkedList<jetbrains.mps.smodel.SModelReference> getAccessoryModels() {
        LinkedList<jetbrains.mps.smodel.SModelReference> linkedList = new LinkedList<jetbrains.mps.smodel.SModelReference>();
        for (SModelReference modelReference : myTableItems)
          linkedList.add((jetbrains.mps.smodel.SModelReference) modelReference);

        return linkedList;
      }

      @Override
      public void apply() {
        LanguageDescriptor languageDescriptor = (LanguageDescriptor) myModuleDescriptor;

        languageDescriptor.getAccessoryModels().clear();
        languageDescriptor.getAccessoryModels().addAll(getAccessoryModels());
      }
    }
  }

  public class ModuleUsedLanguagesTab extends UsedLanguagesTab {

    @Override
    protected UsedLangsTableModel getUsedLangsTableModel() {
      final List<SLanguage> usedLanguages = new ModelAccessHelper(myProject.getModelAccess()).runReadAction(new Computable<List<SLanguage>>() {
        @Override
        public List<SLanguage> compute() {
          return new ArrayList<SLanguage>(myModule.getUsedLanguages());
        }
      });
      final UsedLangsTableModel rv = new UsedLangsTableModel(myProject.getRepository());
      Collections.sort(usedLanguages, new ToStringComparator());
      rv.init(usedLanguages, Collections.<SModuleReference>emptySet());
      return rv;
    }

    @Override
    protected ToolbarDecorator createToolbar(JBTable usedLangsTable) {
      ToolbarDecorator decorator =  super.createToolbar(usedLangsTable);
      decorator.addExtraAction(new FindActionButton(usedLangsTable) {
        @Override
        public void actionPerformed(AnActionEvent e) {
          final List<SLanguage> languages = getSelectedLanguages();
          findLanguageUsages(languages);
        }
      });
      return decorator;
    }

    @Override
    public void apply() {
      // no-op
    }
  }

  /**
   * Supply set of accessible/visible generators, so that Advanced tab could utilize actual dependencies from ModuleDependenciesTab
   */
  static class GeneratorDependencyProvider {
    private final ModuleDependenciesTab myDependenciesTab;

    GeneratorDependencyProvider(ModuleDependenciesTab dependenciesTab) {
      myDependenciesTab = dependenciesTab;
    }

    Set<SModuleReference> getGenerators() {
      final HashSet<SModuleReference> depGenerators = new LinkedHashSet<SModuleReference>();
      for (DependenciesTableItem dependencyItem : myDependenciesTab.getActualDependencies()) {
        if (dependencyItem.getModuleType() == ModuleType.GENERATOR) {
          depGenerators.add(dependencyItem.getItem().getModuleRef());
        }
      }
      return depGenerators;
    }
  }

  public class GeneratorAdvancesTab extends BaseTab {

    private final Generator myGenerator;
    private final GeneratorDependencyProvider myDepGenerators;
    private GenPrioritiesTableModel myPrioritiesTableModel;
    private JBCheckBox myGenerateTemplates;
    private JBCheckBox myReflectiveQueries;
    private final Map<MappingConfig_AbstractRef, GeneratorPrioritiesTree> myMappings =
        new java.util.HashMap<MappingConfig_AbstractRef, GeneratorPrioritiesTree>();
    private JBTable myTable;

    public GeneratorAdvancesTab(Generator generator, GeneratorDependencyProvider depGenerators) {
      super(PropertiesBundle.message("mps.properties.module.generator.title"), IdeIcons.DEFAULT_ICON,
          PropertiesBundle.message("mps.properties.module.generator.tip"));
      myGenerator = generator;
      myDepGenerators = depGenerators;
      init();
    }

    @Override
    public void apply() {
      if (myTable.isEditing()) {
        myTable.getCellEditor().stopCellEditing();
      }
      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      genDescr.setGenerateTemplates(myGenerateTemplates.isSelected());
      genDescr.setReflectiveQueries(myReflectiveQueries.isSelected());
      myPrioritiesTableModel.apply(myDepGenerators);
    }

    @Override
    public void init() {
      JPanel panel = new JPanel();
      panel.setLayout(new GridLayoutManager(2, 1, INSETS, -1, -1));

      myTable = new JBTable();
      myTable.setAutoscrolls(true);
      myTable.getTableHeader().setReorderingAllowed(false);


      myPrioritiesTableModel = new GenPrioritiesTableModel(myGenerator.getModuleDescriptor());
      myTable.setModel(myPrioritiesTableModel);

      myTable.setDefaultRenderer(RuleType.class, new RuleTypeRenderer());
      myTable.setDefaultEditor(RuleType.class, new RuleTypeEditor());

      myTable.setDefaultRenderer(MappingConfig_AbstractRef.class, new TableCellRenderer() {
        private GeneratorPrioritiesTree myCurrentTree = null;

        @Override
        public Component getTableCellRendererComponent(final JTable table, Object value, boolean isSelected, boolean hasFocus, final int row,
            final int column) {
          if (value instanceof MappingConfig_AbstractRef) {
            MappingConfig_AbstractRef mapping = (MappingConfig_AbstractRef) value;

            myCurrentTree = new GeneratorPrioritiesTree(myGenerator, mapping, column == 0, myDepGenerators.getGenerators());
            myMappings.put(mapping, myCurrentTree);

            CheckedTreeNode rootNode = (CheckedTreeNode) myCurrentTree.getTree().getModel().getRoot();
            rootNode = column == 0 ? (CheckedTreeNode) rootNode.getFirstChild() : rootNode;
            allChildrenChecked(rootNode);
            noCheckedChildren(rootNode);

            CheckboxTree checkboxTree =
                new CheckboxTree(GeneratorPrioritiesTree.getCheckboxTreeCellRenderer(false), rootNode, new CheckPolicy(true, true, false, true));
            checkboxTree.setRootVisible(true);

            GeneratorPrioritiesTree.expandAllRows(checkboxTree);

            table.setRowHeight(
                row, Math.max(checkboxTree.getPreferredSize().height + 10, table.getRowHeight(row))
            );

            checkboxTree.setBackground(isSelected && !hasFocus ? table.getSelectionBackground() : table.getBackground());

            return checkboxTree;
          }
          return null;
        }

        private boolean allChildrenChecked(CheckedTreeNode node) {
          List<CheckedTreeNode> children = Collections.list(node.children());
          boolean allChildrenChecked = true;
          for (int i = 0; i < children.size(); i++) {
            CheckedTreeNode child = children.get(i);
            if (!allChildrenChecked(child) || !child.isChecked()) {
              allChildrenChecked = false;
            }
          }
          if (allChildrenChecked && node.isChecked()) {
            for (int i = 0; i < children.size(); i++) {
              CheckedTreeNode child = children.get(i);
              node.remove(child);
              child.removeFromParent();
            }
          }
          return allChildrenChecked;
        }

        private boolean noCheckedChildren(CheckedTreeNode node) {
          List<CheckedTreeNode> children = Collections.list(node.children());
          for (int i = 0; i < children.size(); i++) {
            CheckedTreeNode child = children.get(i);
            if (noCheckedChildren(child) && !child.isChecked()) {
              node.remove(child);
              child.removeFromParent();
            }
          }
          return node.isLeaf();
        }
      });

      myTable.setDefaultEditor(MappingConfig_AbstractRef.class, new AbstractTableCellEditor() {
        private GeneratorPrioritiesTree myCurrentTree = null;

        @Override
        public boolean isCellEditable(EventObject e) {
          return e != null && e instanceof MouseEvent && ((MouseEvent) e).getClickCount() >= 2;
        }

        @Override
        public Component getTableCellEditorComponent(final JTable table, Object value, boolean isSelected, int row, int column) {
          if (value instanceof MappingConfig_AbstractRef) {
            MappingConfig_AbstractRef mapping = (MappingConfig_AbstractRef) value;

            myCurrentTree = new GeneratorPrioritiesTree(myGenerator, mapping, column == 0, myDepGenerators.getGenerators());

            final DialogWrapper dialogWrapper = new DialogWrapper(ProjectHelper.toIdeaProject(myProject)) {
              {
                setModal(true);
                init();
              }

              @Nullable
              @Override
              protected JComponent createCenterPanel() {
                final JScrollPane scrollPane = ScrollPaneFactory.createScrollPane(myCurrentTree.getTreePanel(), true);
                final Dimension preferredSize = myCurrentTree.getTreePanel().getPreferredSize();
                if (preferredSize.getHeight() > 600) {
                  preferredSize.setSize(preferredSize.getWidth(), 600);
                }
                scrollPane.setPreferredSize(preferredSize);
                return scrollPane;
              }

              @Nullable
              @Override
              public JComponent getPreferredFocusedComponent() {
                return myCurrentTree.getTreePanel();
              }

              @Override
              protected void doOKAction() {
                table.editingStopped(new ChangeEvent(this));
                table.revalidate();
                table.repaint();
                super.doOKAction();
              }

              @Override
              public void doCancelAction() {
                //myCurrentTree = null;
                table.editingCanceled(new ChangeEvent(this));
                super.doCancelAction();
              }
            };

            final Component tableCellRendererComponent =
                myTable.getCellRenderer(row, column).getTableCellRendererComponent(table, value, isSelected, true, row, column);
            tableCellRendererComponent.addFocusListener(new FocusListener() {
              @Override
              public void focusGained(FocusEvent e) {
                dialogWrapper.show();
              }

              @Override
              public void focusLost(FocusEvent e) {
                tableCellRendererComponent.removeFocusListener(this);
              }
            });
            return tableCellRendererComponent;
          }
          return null;
        }

        @Override
        public Object getCellEditorValue() {
          GeneratorPrioritiesTree result = myCurrentTree;
          myCurrentTree = null;
          return result != null ? result.getEditResult() : null;
        }
      });

      TableColumn column = myTable.getColumnModel().getColumn(1);
      column.setMaxWidth(50);
      column.setMinWidth(column.getMaxWidth());
      column.setResizable(false);

      ToolbarDecorator decorator = ToolbarDecorator.createDecorator(myTable);
      decorator.setAddAction(new AnActionButtonRunnable() {
        @Override
        public void run(AnActionButton anActionButton) {
          myPrioritiesTableModel.addItem(new MappingPriorityRule());
          myPrioritiesTableModel.fireTableDataChanged();
        }
      }).setRemoveAction(new RemoveEntryAction(myTable));
      decorator.setToolbarBorder(IdeBorderFactory.createBorder());
      decorator.setPreferredSize(new Dimension(500, 300));

      panel.add(decorator.createPanel(), new GridConstraints(0, 0, 1, 1, GridConstraints.ANCHOR_CENTER, GridConstraints.FILL_BOTH,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW,
          GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW, null, null, null, 0, false));

      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      JPanel generationOptions = new JPanel();
      generationOptions.setLayout(new FlowLayout(FlowLayout.LEFT));
      myGenerateTemplates = new JBCheckBox(PropertiesBundle.message("mps.properties.module.generator.gentemplates.name"), genDescr.isGenerateTemplates());
      myGenerateTemplates.setToolTipText(PropertiesBundle.message("mps.properties.module.generator.gentemplates.tip"));
      myReflectiveQueries = new JBCheckBox("Reflective queries", genDescr.isReflectiveQueries());
      myReflectiveQueries.setToolTipText("Invoke generated queries via reflection. Compatibility option, turn off and rebuild generator");
      generationOptions.add(myGenerateTemplates);
      generationOptions.add(myReflectiveQueries);
      panel.add(generationOptions,
          new GridConstraints(1, 0, 1, 1, GridConstraints.ANCHOR_WEST, GridConstraints.FILL_HORIZONTAL, GridConstraints.SIZEPOLICY_CAN_GROW,
              GridConstraints.SIZEPOLICY_FIXED, null, null, null, 0, false));

      setTabComponent(panel);
    }

    @Override
    public boolean isModified() {
      final GeneratorDescriptor genDescr = myGenerator.getModuleDescriptor();
      final boolean b1 = genDescr.isGenerateTemplates();
      final boolean b2 = genDescr.isReflectiveQueries();
      return myPrioritiesTableModel.isModified()
          || myGenerateTemplates.isSelected() != b1 || myReflectiveQueries.isSelected() != b2;
    }
  }

  private static class GenPrioritiesTableModel extends AbstractTableModel implements ItemRemovable {

    private final GeneratorDescriptor myModuleDescriptor;
    private List<MappingPriorityRule> myMappingPriorityRules = new LinkedList<MappingPriorityRule>();

    public GenPrioritiesTableModel(GeneratorDescriptor moduleDescriptor) {
      super();
      myModuleDescriptor = moduleDescriptor;
      for (MappingPriorityRule rule : myModuleDescriptor.getPriorityRules())
        myMappingPriorityRules.add(rule.getCopy());
    }

    @Override
    public int getColumnCount() {
      return 3;
    }

    @Override
    public int getRowCount() {
      return myMappingPriorityRules.size();
    }

    public void addItem(MappingPriorityRule mappingPriorityRule) {
      if (mappingPriorityRule != null)
        myMappingPriorityRules.add(mappingPriorityRule);
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
      MappingPriorityRule rule = myMappingPriorityRules.get(rowIndex);
      if (columnIndex == 0)
        return rule.getLeft();
      if (columnIndex == 1)
        return rule.getType();
      if (columnIndex == 2)
        return rule.getRight();
      return null;
    }

    @Override
    public void setValueAt(Object aValue, int rowIndex, int columnIndex) {
      MappingPriorityRule rule = myMappingPriorityRules.get(rowIndex);
      if (columnIndex == 0 && aValue instanceof MappingConfig_AbstractRef)
        rule.setLeft((MappingConfig_AbstractRef) aValue);
      if (columnIndex == 1 && aValue instanceof RuleType)
        rule.setType((RuleType) aValue);
      if (columnIndex == 2 && aValue instanceof MappingConfig_AbstractRef)
        rule.setRight((MappingConfig_AbstractRef) aValue);
    }

    @Override
    public void removeRow(int idx) {
      myMappingPriorityRules.remove(idx);
    }

    @Override
    public Class<?> getColumnClass(int columnIndex) {
      if (columnIndex == 0 || columnIndex == 2)
        return MappingConfig_AbstractRef.class;
      if (columnIndex == 1)
        return RuleType.class;
      return super.getColumnClass(columnIndex);
    }

    @Override
    public String getColumnName(int column) {
      switch (column) {
        case 0:
          return "Language Generator";
        case 1:
          return "Rule";
        case 2:
          return "Extended Generators";
        default:
          return "";
      }
    }

    @Override
    public boolean isCellEditable(int rowIndex, int columnIndex) {
      return true;
    }

    public boolean isModified() {
      return !(myModuleDescriptor.getPriorityRules().containsAll(myMappingPriorityRules)
          && myMappingPriorityRules.containsAll(myModuleDescriptor.getPriorityRules())
      );
    }

    public void apply(GeneratorDependencyProvider generatorDependencies) {
      // Dubious code. The idea seems to be to remove rules when module import is gone. However:
      // (a) it's not nice to alter user data without notice;
      // (b) external refs inside RefSet only are considered for removal, ExternalRef with missing generator right in a rule (not under RefSet) is ignored
      // Would be better to warn user instead.
      final Set<SModuleReference> accessibleGenerators = generatorDependencies.getGenerators();
      accessibleGenerators.add(myModuleDescriptor.getModuleReference()); // generator module being edited is always accessible
      for (MappingPriorityRule rule : myMappingPriorityRules) {
        Queue<Pair<MappingConfig_AbstractRef, MappingConfig_RefSet>> queue = new LinkedList<Pair<MappingConfig_AbstractRef, MappingConfig_RefSet>>();
        // map entry to set it lives in
        queue.add(new Pair<MappingConfig_AbstractRef, MappingConfig_RefSet>(rule.getRight(), null));
        while (!queue.isEmpty()) {
          Pair<MappingConfig_AbstractRef, MappingConfig_RefSet> ref = queue.poll();
          if (ref.o1 instanceof MappingConfig_RefSet) {
            final MappingConfig_RefSet refSet = (MappingConfig_RefSet) ref.o1;
            for (MappingConfig_AbstractRef ref1 : refSet.getMappingConfigs()) {
              // record children of RefSet along with RefSet itself for further processing
              queue.add(new Pair<MappingConfig_AbstractRef, MappingConfig_RefSet>(ref1, refSet));
            }
          } else if (ref.o1 instanceof MappingConfig_ExternalRef) {
            final MappingConfig_ExternalRef extRef = (MappingConfig_ExternalRef) ref.o1;
            if (!accessibleGenerators.contains(extRef.getGenerator()) && ref.o2 != null) {
              ref.o2.getMappingConfigs().remove(ref.o1);
            }
          }
        }
      }
      myModuleDescriptor.getPriorityRules().clear();
      myModuleDescriptor.getPriorityRules().addAll(myMappingPriorityRules);
    }
  }

  public class AddFacetsTab extends BaseTab {

    private static final String CHECKBOX_PROPERTY_KEY = "facet";

    public AddFacetsTab() {
      super("Facets", AllIcons.General.Settings, "Add facets");
      init();

      addChangeListener(new ChangeListener() {
        @Override
        public void stateChanged(ChangeEvent e) {
          if (!(e.getSource() instanceof JBTabsImpl && ((JBTabsImpl) e.getSource()).getSelectedInfo().getComponent() instanceof TabWrapper))
            return;

          final JComponent component = ((JBTabsImpl) e.getSource()).getSelectedInfo().getComponent();
          if (component.getComponentCount() == 0) return;
          if (component.getComponent(0).equals(getTabComponent())) {
//            ModulePropertiesConfigurable.this.selectTab(ModulePropertiesConfigurable.this.indexOfTab(AddFacetsTab.this) - 1);

          }
        }
      });
    }

    @Override
    public void init() {
      final HashMap<String, ModuleFacetBase> facetsTypes = new HashMap<String, ModuleFacetBase>();
      for (final SModuleFacet moduleFacet : myModule.getFacets()) {
        if (!(moduleFacet instanceof ModuleFacetBase)) continue;
        facetsTypes.put(((ModuleFacetBase) moduleFacet).getFacetType(), (ModuleFacetBase) moduleFacet);
      }

      Set<String> usedLangs = new HashSet<String>();
      for (SModuleReference reference : myModuleDescriptor.getUsedLanguages()) {
        usedLangs.add(reference.getModuleName());
      }
      Set<String> applicableFacetTypes = FacetsFacade.getInstance().getApplicableFacetTypes(usedLangs);

      for (String facet : FacetsFacade.getInstance().getFacetTypes()) {
        final SModuleFacet sModuleFacet = facetsTypes.keySet().contains(facet)
            ? facetsTypes.get(facet) : FacetsFacade.getInstance().getFacetFactory(facet).create();
        if (!(sModuleFacet instanceof ModuleFacetBase)) continue;
        final String facetPresentation = applicableFacetTypes.contains(facet)
            ? ((ModuleFacetBase) sModuleFacet).getFacetPresentation() + " (recommended)"
            : ((ModuleFacetBase) sModuleFacet).getFacetPresentation();
        final JBCheckBox checkBox = new JBCheckBox(facetPresentation, facetsTypes.keySet().contains(facet));
        checkBox.putClientProperty(CHECKBOX_PROPERTY_KEY, sModuleFacet);
        myCheckBoxes.add(checkBox);
        checkBox.addItemListener(new FacetCheckBoxItemListener(checkBox));
      }
      final JPanel panel = new JPanel();
      panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));
      final int i = 5;
      panel.setBorder(BorderFactory.createEmptyBorder(i, i, i, i));
      for (JCheckBox checkBox : myCheckBoxes) {
        panel.add(checkBox);
      }

      setTabComponent(panel);
    }

    @Override
    public boolean isModified() {
      Set<String> facetsTypes = new HashSet<String>();
      for (SModuleFacet moduleFacet : myModule.getFacets()) {
        if (!(moduleFacet instanceof ModuleFacetBase))
          continue;
        facetsTypes.add(((ModuleFacetBase) moduleFacet).getFacetType());
      }

      Set<String> newFacetsTypes = new HashSet<String>();
      for (JCheckBox checkBox : myCheckBoxes) {
        if (checkBox.isSelected()) {
          final SModuleFacet facet = (SModuleFacet) checkBox.getClientProperty(CHECKBOX_PROPERTY_KEY);
          if (!(facet instanceof ModuleFacetBase)) continue;
          newFacetsTypes.add(((ModuleFacetBase) facet).getFacetType());
        }
      }

      return facetsTypes.addAll(newFacetsTypes) && newFacetsTypes.containsAll(facetsTypes);
    }

    @Override
    public void apply() {
      final HashMap<String, ModuleFacetBase> moduleFacets = new HashMap<String, ModuleFacetBase>();
      for (final SModuleFacet moduleFacet : myModule.getFacets()) {
        if (!(moduleFacet instanceof ModuleFacetBase)) continue;
        moduleFacets.put(((ModuleFacetBase) moduleFacet).getFacetType(), (ModuleFacetBase) moduleFacet);
      }

      for (JCheckBox checkBox : myCheckBoxes) {
        if (!(checkBox.getClientProperty(CHECKBOX_PROPERTY_KEY) instanceof ModuleFacetBase)) continue;

        ModuleFacetBase facet = (ModuleFacetBase) checkBox.getClientProperty(CHECKBOX_PROPERTY_KEY);

        if (checkBox.isSelected() && !moduleFacets.keySet().contains(facet.getFacetType())) {
          facet.setModule(myModule);
          Memento memento = new MementoImpl();
          facet.save(memento);
          myModuleDescriptor.getModuleFacetDescriptors().add(new ModuleFacetDescriptor(facet.getFacetType(), memento));
        } else if (!checkBox.isSelected() && moduleFacets.keySet().contains(facet.getFacetType())) {
          Iterator<ModuleFacetDescriptor> it = myModuleDescriptor.getModuleFacetDescriptors().iterator();
          while (it.hasNext()) {
            ModuleFacetDescriptor facetDescriptor = it.next();
            if (facetDescriptor.getType().equals(facet.getFacetType())) {
              myModuleDescriptor.getModuleFacetDescriptors().remove(facetDescriptor);
              break;
            }
          }

        }
      }
    }

    private class FacetCheckBoxItemListener implements ItemListener {
      private final JBCheckBox myCheckBox;

      public FacetCheckBoxItemListener(JBCheckBox checkBox) {
        myCheckBox = checkBox;
      }

      @Override
      public void itemStateChanged(ItemEvent e) {
        if (!e.getSource().equals(myCheckBox)) return;
        if (myCheckBox.isSelected()) {
          final ModuleFacetBase moduleFacetBase = (ModuleFacetBase) myCheckBox.getClientProperty(CHECKBOX_PROPERTY_KEY);
          Tab facetTab = FacetTabsPersistence.getInstance().getFacetTab(
              moduleFacetBase.getFacetType(), moduleFacetBase);
          if (facetTab != null) {
            ModulePropertiesConfigurable.this.insertTab(facetTab, ModulePropertiesConfigurable.this.indexOfTab(AddFacetsTab.this));
//            ModulePropertiesConfigurable.this.selectTab(facetTab);
          }

        } else {
          for (int i = 0; i < ModulePropertiesConfigurable.this.getTabsCount(); i++) {
            Tab tab = ModulePropertiesConfigurable.this.getTab(i);
            if (!(tab instanceof FacetTab)) continue;
            if (((FacetTab) tab).getFacet().equals(myCheckBox.getClientProperty(CHECKBOX_PROPERTY_KEY)))
              ModulePropertiesConfigurable.this.removeTab(tab);
          }
        }
      }
    }
  }

  /*
   * FIXME myModule.getRepository requires read action (implementation, not API), while mpsProject.getRepository does not
   * Not sure whether which one is right (both seem reasonable, repository of a module might change, repository of the project could not)
   * and I need module's repo to check for dependency availability.
   * The problem is that I need a repo to run the command to get the repo, which does look stupid, perhaps,
   * myModule.getRepository shall be relaxed to give SRepo without read action or we shall use SModuleReference and project's repo instead of
   * myModule (SModule instance) throughout whole ModulePropertiesConfigurable. One more alternative is to have myModule.getProject().getRepo()
   * (i.e. something that gives access to module's repo without need for read action. Present use of myProject.getRepo to run the command
   * basically does exactly that, although a bit indirectly)
   */
  private static class GetModuleRepo implements Computable<SRepository> {
    private final SModule myModule;

    public GetModuleRepo(@NotNull SModule module) {
      myModule = module;
    }

    @Override
    public SRepository compute() {
      return myModule.getRepository();
    }
  }
}
