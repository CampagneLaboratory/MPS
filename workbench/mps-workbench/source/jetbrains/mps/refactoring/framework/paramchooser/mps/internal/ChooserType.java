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
package jetbrains.mps.refactoring.framework.paramchooser.mps.internal;

import com.intellij.ide.DataManager;
import com.intellij.ide.util.gotoByName.ChooseByNameModel;
import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.project.Project;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.refactoring.framework.paramchooser.mps.IChooserSettings;
import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModelReference;import jetbrains.mps.smodel.*;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.choose.models.BaseModelItem;
import jetbrains.mps.workbench.choose.models.BaseModelModel;
import jetbrains.mps.workbench.choose.modules.BaseModuleItem;
import jetbrains.mps.workbench.choose.modules.BaseModuleModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class ChooserType<T> {
  public abstract ChooseByNameModel createChooserModel(IChooserSettings<T> settings, RefactoringContext context, String paramName);

  protected List<T> filter(IChooserSettings<T> settings, Collection<T> list) {
    List<T> result = new ArrayList<T>();
    for (T entity : list) {
      if (settings.met(entity)) {
        result.add(entity);
      }
    }
    return result;
  }

  public static class ModelChooserType extends ChooserType<SModelReference> {
    public ModelChooserType() {
    }

    @Override
    public ChooseByNameModel createChooserModel(final IChooserSettings<SModelReference> settings, final RefactoringContext context, final String paramName) {
      DataContext dataContext = DataManager.getInstance().getDataContext();
      final Project project = MPSDataKeys.PROJECT.getData(dataContext);

      return new BaseModelModel(project) {
        @Override
        public NavigationItem doGetNavigationItem(final SModelReference ref) {
          return new BaseModelItem(ref) {
            @Override
            public void navigate(boolean requestFocus) {
              context.setParameter(paramName, getModelReference());
            }
          };
        }

        @Override
        public SModelReference[] find(boolean checkboxState) {
          List<SModel> modelDescriptors = SModelRepository.getInstance().getModelDescriptors();
          List<SModelReference> modelReferencess = new ArrayList<SModelReference>(modelDescriptors.size());
          for (SModel md:modelDescriptors) modelReferencess.add(md.getReference());
          List<SModelReference> filteredModelRefs = filter(settings, modelReferencess);
          return filteredModelRefs.toArray(new SModelReference[filteredModelRefs.size()]);
        }

        @Override
        public SModelReference[] find(IScope scope) {
          throw new UnsupportedOperationException("must not be used");
        }

        @Override
        public boolean loadInitialCheckBoxState() {
          return false;
        }

        @Override
        public String getPromptText() {
          return settings.getTitle();
        }
      };
    }
  }


  public static class ModuleChooserType extends ChooserType<SModule> {
    public ModuleChooserType() {
    }

    @Override
    public ChooseByNameModel createChooserModel(final IChooserSettings<SModule> settings, final RefactoringContext context, final String paramName) {
      DataContext dataContext = DataManager.getInstance().getDataContext();
      final Project project = MPSDataKeys.PROJECT.getData(dataContext);

      return new BaseModuleModel(project, "module") {
        @Override
        public NavigationItem doGetNavigationItem(final SModuleReference module) {
          return new BaseModuleItem(module) {
            @Override
            public void navigate(boolean requestFocus) {
              context.setParameter(paramName, ModuleRepositoryFacade.getInstance().getModule(module));
            }
          };
        }

        @Override
        public SModuleReference[] find(boolean checkboxState) {
          List<SModuleReference> filteredModules = new ArrayList<SModuleReference>();
          for (SModule module : filter(settings, MPSModuleRepository.getInstance().getAllModules())){
            filteredModules.add(module.getModuleReference());
          }
          return filteredModules.toArray(new SModuleReference[filteredModules.size()]);
        }

        @Override
        public SModuleReference[] find(IScope scope) {
          throw new UnsupportedOperationException("must not be used");
        }

        @Override
        public boolean loadInitialCheckBoxState() {
          return false;
        }

        @Override
        public String getPromptText() {
          return settings.getTitle();
        }
      };
    }
  }
}
