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
import jetbrains.mps.project.AbstractModule;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.dependency.modules.LanguageDependenciesManager;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.classloading.ClassLoaderManager;
import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModelReference;import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Computable;
import org.jetbrains.mps.util.Condition;
import jetbrains.mps.util.ConditionalIterable;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.goTo.navigation.RootChooseModel;
import jetbrains.mps.workbench.goTo.navigation.RootNodeElement;
import jetbrains.mps.workbench.goTo.index.RootNodeNameIndex;
import jetbrains.mps.workbench.goTo.ui.MpsPopupFactory;
import jetbrains.mps.workbench.choose.base.BaseMPSChooseModel;
import jetbrains.mps.workbench.choose.models.BaseModelItem;
import jetbrains.mps.workbench.choose.models.BaseModelModel;
import jetbrains.mps.workbench.choose.modules.BaseLanguageModel;
import jetbrains.mps.workbench.choose.modules.BaseModuleItem;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.persistence.NavigationParticipant.NavigationTarget;

import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ImportHelper {
  public static void addModelImport(final Project project, final SModule module, final SModel model,
                    @Nullable BaseAction parentAction) {
    BaseModelModel goToModelModel = new BaseModelModel(project) {
      @Override
      public NavigationItem doGetNavigationItem(final SModelReference modelReference) {
        return new AddModelItem(project, model, modelReference, module);
      }

      @Override
      public SModelReference[] find(IScope scope) {
        Condition<SModel> cond = new Condition<SModel>() {
          @Override
          public boolean met(SModel modelDescriptor) {
            boolean rightStereotype = SModelStereotype.isUserModel(modelDescriptor)
              || SModelStereotype.isStubModelStereotype(SModelStereotype.getStereotype(modelDescriptor));
            boolean hasModule = modelDescriptor.getModule() != null;
            return rightStereotype && hasModule;
          }
        };
        ConditionalIterable<SModel> iter = new ConditionalIterable<SModel>(scope.getModelDescriptors(), cond);
        List<SModelReference> filteredModelRefs = new ArrayList<SModelReference>();
        for (SModel md : iter) {
          filteredModelRefs.add(md.getReference());
        }
        return filteredModelRefs.toArray(new SModelReference[filteredModelRefs.size()]);
      }

      @Override
      @Nullable
      public String getPromptText() {
        return "Import model:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createPackagePopup(project, goToModelModel, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      @Override
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      @Override
      public void elementChosen(final Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }

  public static void addLanguageImport(final Project project, final SModule contextModule, final SModel model,
                     @Nullable BaseAction parentAction) {
    BaseLanguageModel goToLanguageModel = new BaseLanguageModel(project) {
      @Override
      public NavigationItem doGetNavigationItem(SModuleReference ref) {
        return new AddLanguageItem(project, ref, contextModule, model);
      }

      @Override
      public SModuleReference[] find(IScope scope) {
        ArrayList<SModuleReference> res = new ArrayList<SModuleReference>();
        for (Language l : scope.getVisibleLanguages()) {
          res.add(l.getModuleReference());
        }
        return res.toArray(new SModuleReference[res.size()]);
      }

      @Nullable
      @Override
      public String getPromptText() {
        return "Import language:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createPackagePopup(project, goToLanguageModel, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      @Override
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      @Override
      public void elementChosen(Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }

  private static class AddLanguageItem extends BaseModuleItem {
    private Project myProject;
    private SModule myContextModule;
    private SModel myModel;

    public AddLanguageItem(Project project, SModuleReference language, SModule contextModule, SModel model) {
      super(language);
      myProject = project;
      myContextModule = contextModule;
      myModel = model;
    }

    @Override
    public void navigate(boolean requestFocus) {
      assert !ModelAccess.instance().canRead();

      final Set<SModuleReference> importCandidates = new HashSet<SModuleReference>();
      ModelAccess.instance().runWriteAction(new Runnable() {
        @Override
        public void run() {
          Language lang = ModuleRepositoryFacade.getInstance().getModule(getModuleReference(), Language.class);

          HashSet<Language> langs = new HashSet<Language>();
          new LanguageDependenciesManager(lang).collectAllExtendedLanguages(langs);

          langs.remove(lang);
          //this is added in language implicitly, so we don't show this import
          langs.remove(ModuleRepositoryFacade.getInstance().getModule(BootstrapLanguages.CORE, Language.class));

          for (Language l : langs) {
            Collection<SModuleReference> impLangs = ((jetbrains.mps.smodel.SModelInternal) myModel).getModelDepsManager().getAllImportedLanguages();
            if (impLangs.contains(l.getModuleReference())) continue;
            importCandidates.add(l.getModuleReference());
          }
        }
      });

      final Set<SModuleReference> toImport = new HashSet<SModuleReference>();

      if (!importCandidates.isEmpty()) {
        Set<SModuleReference> modules = chooseModulesToImport(myProject, importCandidates);
        if (modules != null) {
          toImport.addAll(modules);
        }
      }

      toImport.add(getModuleReference());

      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        @Override
        public void run() {
          boolean reload = false;
          for (SModuleReference ref : toImport) {
            if (((AbstractModule)myContextModule).getScope().getLanguage(ref) == null) {
              ((AbstractModule)myContextModule).addUsedLanguage((SModuleReference) ref);
              reload = true;
            }
            ((jetbrains.mps.smodel.SModelInternal) myModel).addLanguage((SModuleReference) ref);
          }
          if (reload) {
            ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
          }
        }
      });
    }
  }

  private static Set<SModuleReference> chooseModulesToImport(Project project, Set<SModuleReference> candidates) {
    SelectLanguagesDialog dialog = new SelectLanguagesDialog(project, candidates);
    dialog.show();
    if (!dialog.isOK()) return null;
    return dialog.getSelectedModules();
  }

  public static void addModelImportByRoot(final Project project, final SModule contextModule, final SModel model,
                      String initialText, @Nullable BaseAction parentAction, final ModelImportByRootCallback callback) {
    BaseMPSChooseModel goToNodeModel = new RootChooseModel(project, new RootNodeNameIndex()) {
      @Override
      public NavigationItem doGetNavigationItem(final NavigationTarget object) {
        return new RootNodeElement(object) {
          @Override
          public void navigate(boolean requestFocus) {
            ModelAccess.assertLegalRead();
            new AddModelItem(project, model, object.getNodeReference().getModelReference(), contextModule).navigate(requestFocus);
          }
        };
      }

      @Override
      @Nullable
      public String getPromptText() {
        return "Import model that contains root:";
      }
    };
    ChooseByNamePopup popup = MpsPopupFactory.createNodePopup(project, goToNodeModel, initialText, parentAction);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      @Override
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      @Override
      public void elementChosen(final Object element) {
        ModelAccess.instance().runWriteAction(new Runnable() {
          @Override
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
    private SModel myModel;
    private SModule myModule;

    public AddModelItem(Project project, SModel model, SModelReference modelToAdd, SModule currentModule) {
      super(modelToAdd);
      myProject = project;
      myModel = model;
      myModule = currentModule;
    }

    public Frame getFrame() {
      return WindowManager.getInstance().getFrame(myProject);
    }

    @Override
    public void navigate(boolean requestFocus) {
      final SModuleReference moduleToImport = ModelAccess.instance().runReadAction(new Computable<SModuleReference>() {
        @Override
        public SModuleReference compute() {
          SModel md = SModelRepository.getInstance().getModelDescriptor(getModelReference());
          final SModuleReference moduleReference = md.getModule().getModuleReference();
          if (((AbstractModule)myModule).getScope().getModelDescriptor(getModelReference()) == null) {
            return moduleReference;
          }
          return null;
        }
      });

      if (moduleToImport != null) {
        int res = JOptionPane.showConfirmDialog(getFrame(),
          "<html>Model <b>" + getModelReference().getModelName() + "</b> is owned by module <b>" + moduleToImport.getModuleName() + "</b> which is not imported.</html>\n\n" +

            "Importing the module will take some time.\n" +
            "Do you want to automatically import the module?",
          "Module import", JOptionPane.YES_NO_OPTION);
        if (res == JOptionPane.YES_OPTION) {
          ModelAccess.instance().runWriteActionInCommand(new Runnable() {
            @Override
            public void run() {
              ((AbstractModule)myModule).addDependency(moduleToImport, false);
              ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
            }
          });
        }
      }

      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        @Override
        public void run() {
          ((jetbrains.mps.smodel.SModelInternal) myModel).addModelImport(getModelReference(), false);
        }
      });
    }
  }

  public static abstract class ModelImportByRootCallback {
    public abstract void importForRootAdded(String rootName);
  }
}
