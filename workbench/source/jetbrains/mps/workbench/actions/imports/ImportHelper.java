package jetbrains.mps.workbench.actions.imports;

import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import com.intellij.psi.impl.FakePsiElement;
import com.intellij.psi.PsiElement;
import com.intellij.navigation.NavigationItem;
import com.intellij.ide.util.gotoByName.ChooseByNamePopup;
import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent;
import com.intellij.ide.DataManager;
import jetbrains.mps.workbench.choose.models.BaseModelModel;
import jetbrains.mps.workbench.choose.models.BaseModelItem;
import jetbrains.mps.workbench.choose.modules.BaseLanguageModel;
import jetbrains.mps.workbench.choose.modules.BaseModuleItem;
import jetbrains.mps.workbench.choose.nodes.BaseNodeModel;
import jetbrains.mps.workbench.choose.nodes.BaseNodeItem;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.smodel.*;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.ModuleReference;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;

import java.awt.Frame;
import java.util.List;
import java.util.ArrayList;

import org.jetbrains.annotations.Nullable;

import javax.swing.JOptionPane;

public class ImportHelper {
  public static void addModelImport(Project project, final MPSProject mpsProject, final IModule module, final SModelDescriptor model) {
    FakePsiElement fakePsiContext = new FakePsiElement() {
      public PsiElement getParent() {
        return null;
      }
    };

    BaseModelModel goToModelModel = new BaseModelModel(mpsProject) {
      public NavigationItem doGetNavigationItem(final SModelDescriptor modelDescriptor) {
        return new AddModelItem(model, modelDescriptor, module) {
          public MPSProject getMPSProject() {
            return mpsProject;
          }
        };
      }

      public SModelDescriptor[] find(IScope scope) {
        List<SModelDescriptor> modelDescriptors =
          CollectionUtil.filter(scope.getModelDescriptors(), new Condition<SModelDescriptor>() {
            public boolean met(SModelDescriptor modelDescriptor) {
              boolean rightStereotype = SModelStereotype.isUserModel(modelDescriptor)
                || SModelStereotype.JAVA_STUB.equals(modelDescriptor.getStereotype());
              boolean hasModule = modelDescriptor.getModule() != null;
              return rightStereotype && hasModule;
            }
          });

        return modelDescriptors.toArray(new SModelDescriptor[modelDescriptors.size()]);
      }

      @Nullable
      public String getPromptText() {
        return "Import model:";
      }
    };
    ChooseByNamePopup popup = ChooseByNamePopup.createPopup(project, goToModelModel, fakePsiContext);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(final Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }

  public static void addLanguageImport(Project project, final MPSProject mpsProject, final IModule contextModule, final SModelDescriptor model) {
    FakePsiElement fakePsiContext = new FakePsiElement() {
      public PsiElement getParent() {
        return null;
      }
    };

    BaseLanguageModel goToLanguageModel = new BaseLanguageModel(mpsProject) {
      public NavigationItem doGetNavigationItem(IModule module) {
        return new AddLanguageItem((Language)module,contextModule,model);
      }

      public Language[] find(IScope scope) {
        return scope.getVisibleLanguages().toArray(new Language[0]);
      }

      @Nullable
      public String getPromptText() {
        return "Import language:";
      }
    };
    ChooseByNamePopup popup = ChooseByNamePopup.createPopup(project, goToLanguageModel, fakePsiContext);

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
    private IModule myContextModule;
    private SModelDescriptor myModel;

    public AddLanguageItem(Language language, IModule contextModule, SModelDescriptor model) {
      super(language);
      myContextModule = contextModule;
      myModel = model;
    }

    public void navigate(boolean requestFocus) {
      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          if (!myContextModule.getScope().getVisibleLanguages().contains(getModule())) {
            myContextModule.addUsedLangauge(getModule().getModuleReference());
          }

          myModel.getSModel().addLanguage((Language) getModule());
        }
      });
    }
  }

  public static void addModelImportByRoot(Project project, final MPSProject mpsProject, final IModule contextModule, final SModelDescriptor model) {
    FakePsiElement fakePsiContext = new FakePsiElement() {
      public PsiElement getParent() {
        return null;
      }
    };

    BaseNodeModel goToNodeModel = new BaseNodeModel(mpsProject) {
      public NavigationItem doGetNavigationItem(SNode node) {
        return new BaseNodeItem(node) {
          public void navigate(boolean requestFocus) {
            new AddModelItem(model, getNode().getModel().getModelDescriptor(), contextModule) {
              public MPSProject getMPSProject() {
                return mpsProject;
              }
            }.navigate(requestFocus);
          }
        };
      }

      public SNode[] find(IScope scope) {
        List<SModelDescriptor> modelDescriptors =
          CollectionUtil.filter(scope.getModelDescriptors(), new Condition<SModelDescriptor>() {
            public boolean met(SModelDescriptor modelDescriptor) {
              boolean rightStereotype = SModelStereotype.isUserModel(modelDescriptor);
              boolean hasModule = modelDescriptor.getModule() != null;
              return rightStereotype && hasModule;
            }
          });


        final List<SNode> nodes = new ArrayList<SNode>();
        for (SModelDescriptor modelDescriptor : modelDescriptors) {
          SModel model = modelDescriptor.getSModel();
          if (model == null) continue;
          for (SNode node : model.getRoots()) {
            nodes.add(node);
          }
        }
        return nodes.toArray(new SNode[0]);
      }

      @Nullable
      public String getPromptText() {
        return "Import model that inculdes root:";
      }
    };
    ChooseByNamePopup popup = ChooseByNamePopup.createPopup(project, goToNodeModel, fakePsiContext);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(final Object element) {
        ModelAccess.instance().runWriteAction(new Runnable() {
          public void run() {
            ((NavigationItem) element).navigate(true);
          }
        });
      }
    }, ModalityState.current(), true);
  }

  private abstract static class AddModelItem extends BaseModelItem {
    private SModelDescriptor myModel;
    private IModule myModule;

    public AddModelItem(SModelDescriptor model, SModelDescriptor modelToAdd, IModule currentModule) {
      super(modelToAdd);
      myModel = model;
      myModule = currentModule;
    }

    public abstract MPSProject getMPSProject();

    public Frame getFrame(){
      return MPSDataKeys.FRAME.getData(DataManager.getInstance().getDataContext());
    }

    public void navigate(boolean requestFocus) {
      final ModuleReference moduleToImport = ModelAccess.instance().runReadAction(new Computable<ModuleReference>() {
        public ModuleReference compute() {
          final ModuleReference moduleReference = getModelDescriptor().getModule().getModuleReference();
          if (myModule.getScope().getModelDescriptor(getModelDescriptor().getSModelReference()) == null) {
            return moduleReference;
          }
          return null;
        }
      });

      if (moduleToImport != null) {
        int res = JOptionPane.showConfirmDialog(getFrame(),
          "<html>Model <b>" + getModelDescriptor().getSModelFqName() + "</b> is owned by module <b>" + moduleToImport.getModuleFqName() + "</b> which is not imported.</html>\n\n" +

            "Importing the module will take some time.\n" +
            "Do you want to automatically import the module?",
          "Module import", JOptionPane.YES_NO_OPTION);
        if (res == JOptionPane.YES_OPTION) {
          ModelAccess.instance().runWriteActionInCommand(new Runnable() {
            public void run() {
              myModule.addDependency(moduleToImport, false);
            }
          });
        }
      }

      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          myModel.getSModel().addImportedModel(getModelDescriptor().getSModelReference());
        }
      });
    }
  }
}
