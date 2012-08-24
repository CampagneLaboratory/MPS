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
package jetbrains.mps.ide.editor.actions;

import com.intellij.ide.util.gotoByName.ChooseByNamePopup;
import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent;
import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.WindowManager;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.ConditionalIterable;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.actions.goTo.index.MPSChooseSNodeDescriptor;
import jetbrains.mps.workbench.actions.goTo.index.RootNodeElement;
import jetbrains.mps.workbench.actions.goTo.index.RootNodeNameIndex;
import jetbrains.mps.workbench.actions.goTo.index.descriptor.BaseSNodeDescriptor;
import jetbrains.mps.workbench.actions.goTo.matcher.MpsPopupFactory;
import jetbrains.mps.workbench.choose.base.BaseMPSChooseModel;
import jetbrains.mps.workbench.choose.models.BaseModelItem;
import jetbrains.mps.workbench.choose.models.BaseModelModel;
import jetbrains.mps.workbench.choose.modules.BaseLanguageModel;
import jetbrains.mps.workbench.choose.modules.BaseModuleItem;
import org.jetbrains.annotations.Nullable;

import javax.swing.JOptionPane;
import java.awt.Frame;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ImportHelper {
  public static void addModelImport(final Project project, final IModule module, final SModelDescriptor model,
                                    @Nullable BaseAction parentAction) {
    BaseModelModel goToModelModel = new BaseModelModel(project) {
      public NavigationItem doGetNavigationItem(final SModelReference modelReference) {
        return new AddModelItem(project, model, modelReference, module);
      }

      public SModelReference[] find(IScope scope) {
        Condition<SModelDescriptor> cond = new Condition<SModelDescriptor>() {
          public boolean met(SModelDescriptor modelDescriptor) {
            boolean rightStereotype = SModelStereotype.isUserModel(modelDescriptor)
              || SModelStereotype.isStubModelStereotype(modelDescriptor.getStereotype());
            boolean hasModule = modelDescriptor.getModule() != null;
            return rightStereotype && hasModule;
          }
        };
        ConditionalIterable<SModelDescriptor> iter = new ConditionalIterable<SModelDescriptor>(scope.getModelDescriptors(), cond);
        List<SModelReference> filteredModelRefs = new ArrayList<SModelReference>();
        for (SModelDescriptor md : iter) {
          filteredModelRefs.add(md.getSModelReference());
        }
        return filteredModelRefs.toArray(new SModelReference[filteredModelRefs.size()]);
      }

      @Nullable
      public String getPromptText() {
        return "Import model:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createPackagePopup(project, goToModelModel, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(final Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }

  public static void addLanguageImport(final Project project, final IModule contextModule, final SModelDescriptor model,
                                       @Nullable BaseAction parentAction) {
    BaseLanguageModel goToLanguageModel = new BaseLanguageModel(project) {
      public NavigationItem doGetNavigationItem(ModuleReference ref) {
        return new AddLanguageItem(project, ref, contextModule, model);
      }

      public ModuleReference[] find(IScope scope) {
        ArrayList<ModuleReference> res = new ArrayList<ModuleReference>();
        for (Language l : scope.getVisibleLanguages()) {
          res.add(l.getModuleReference());
        }
        return res.toArray(new ModuleReference[res.size()]);
      }

      @Nullable
      public String getPromptText() {
        return "Import language:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createPackagePopup(project, goToLanguageModel, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }

  private static class AddLanguageItem extends BaseModuleItem {
    private Project myProject;
    private IModule myContextModule;
    private SModelDescriptor myModel;

    public AddLanguageItem(Project project, ModuleReference language, IModule contextModule, SModelDescriptor model) {
      super(language);
      myProject = project;
      myContextModule = contextModule;
      myModel = model;
    }

    public void navigate(boolean requestFocus) {
      assert !ModelAccess.instance().canRead();

      final Set<ModuleReference> importCandidates = new HashSet<ModuleReference>();
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          Language lang = ModuleRepositoryFacade.getInstance().getModule(getModuleReference(), Language.class);

          HashSet<Language> langs = new HashSet<Language>();
          lang.getDependenciesManager().collectAllExtendedLanguages(langs);

          langs.remove(lang);
          //this is added in language implicitly, so we don't show this import
          langs.remove(ModuleRepositoryFacade.getInstance().getModule(BootstrapLanguages.CORE,Language.class));

          for (Language l : langs) {
            if (myModel.getSModel().importedLanguages().contains(l.getModuleReference())) continue;
            importCandidates.add(l.getModuleReference());
          }
        }
      });

      final Set<ModuleReference> toImport = new HashSet<ModuleReference>();

      if (!importCandidates.isEmpty()) {
        Set<ModuleReference> modules = chooseModulesToImport(myProject, importCandidates);
        if (modules != null) {
          toImport.addAll(modules);
        }
      }

      toImport.add(getModuleReference());

      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          boolean reload = false;
          for (ModuleReference ref : toImport) {
            if (myContextModule.getScope().getLanguage(ref) == null) {
              myContextModule.addUsedLanguage(ref);
              reload = true;
            }
            myModel.getSModel().addLanguage(ref);
          }
          if (reload) {
            ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
          }
        }
      });
    }
  }

  private static Set<ModuleReference> chooseModulesToImport(Project project, Set<ModuleReference> candidates) {
    SelectLanguagesDialog dialog = new SelectLanguagesDialog(project, candidates);
    dialog.show();
    if (!dialog.isOK()) return null;
    return dialog.getSelectedModules();
  }

  public static void addModelImportByRoot(final Project project, final IModule contextModule, final SModelDescriptor model,
                                          String initialText, @Nullable BaseAction parentAction, final ModelImportByRootCallback callback) {
    BaseMPSChooseModel goToNodeModel = new MPSChooseSNodeDescriptor(project, new RootNodeNameIndex()) {
      public NavigationItem doGetNavigationItem(final BaseSNodeDescriptor object) {
        return new RootNodeElement(object) {
          public void navigate(boolean requestFocus) {
            ModelAccess.assertLegalRead();
            SModelDescriptor descriptor = GlobalScope.getInstance().getModelDescriptor(object.getModelReference());
            LOG.assertLog(descriptor != null, "Caches seems to be corrupted or the model was removed: model " + object.getModelReference().getLongName() + " does not exist. Please check model existence manually and specify it in bug report");
            SModel modelToImport = descriptor.getSModel();
            SNodeId id = object.getId();
            String idString = id == null ? "" : " (id:" + id.toString() + ")";
            String nameString = object.getNodeName() == null ? "<no name>" : object.getNodeName();
            LOG.assertLog(object.getNode(modelToImport) != null, "Caches seems to be corrupted or the node was removed: model " + modelToImport.getLongName() + " does not seem to contain node " + nameString + idString + ". Please check node existence manually and specify it in bug report");
            new AddModelItem(project, model, modelToImport.getSModelReference(), contextModule).navigate(requestFocus);
          }
        };
      }

      @Nullable
      public String getPromptText() {
        return "Import model that contains root:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createNodePopup(project, goToNodeModel, initialText, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(final Object element) {
        ModelAccess.instance().runWriteAction(new Runnable() {
          public void run() {
            NavigationItem navigationItem = (NavigationItem) element;
            navigationItem.navigate(true);
            callback.importForRootAdded(navigationItem.getPresentation().getPresentableText());
          }
        });
      }
    }, ModalityState.current(), true);
  }

  private static class AddModelItem extends BaseModelItem {
    private Project myProject;
    private SModelDescriptor myModel;
    private IModule myModule;

    public AddModelItem(Project project, SModelDescriptor model, SModelReference modelToAdd, IModule currentModule) {
      super(modelToAdd);
      myProject = project;
      myModel = model;
      myModule = currentModule;
    }

    public Frame getFrame() {
      return WindowManager.getInstance().getFrame(myProject);
    }

    public void navigate(boolean requestFocus) {
      final ModuleReference moduleToImport = ModelAccess.instance().runReadAction(new Computable<ModuleReference>() {
        public ModuleReference compute() {
          SModelDescriptor md = SModelRepository.getInstance().getModelDescriptor(getModelReference());
          final ModuleReference moduleReference = md.getModule().getModuleReference();
          if (myModule.getScope().getModelDescriptor(getModelReference()) == null) {
            return moduleReference;
          }
          return null;
        }
      });

      if (moduleToImport != null) {
        int res = JOptionPane.showConfirmDialog(getFrame(),
          "<html>Model <b>" + getModelReference().getSModelFqName() + "</b> is owned by module <b>" + moduleToImport.getModuleFqName() + "</b> which is not imported.</html>\n\n" +

            "Importing the module will take some time.\n" +
            "Do you want to automatically import the module?",
          "Module import", JOptionPane.YES_NO_OPTION);
        if (res == JOptionPane.YES_OPTION) {
          ModelAccess.instance().runWriteActionInCommand(new Runnable() {
            public void run() {
              myModule.addDependency(moduleToImport, false);
              ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
            }
          });
        }
      }

      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          myModel.getSModel().addModelImport(getModelReference(), false);
        }
      });
    }
  }

  public static abstract class ModelImportByRootCallback {
    public abstract void importForRootAdded(String rootName);
  }
}
