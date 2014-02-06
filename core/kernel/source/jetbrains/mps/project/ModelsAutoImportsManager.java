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
package jetbrains.mps.project;

import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager;
import jetbrains.mps.smodel.Language;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ModelsAutoImportsManager {
  // todo: should be application component ?
  // todo: is auto imports workbench functionality?
  private static Set<AutoImportsContributor> contributors = new HashSet<AutoImportsContributor>();

  public static void registerContributor(AutoImportsContributor contributor) {
    contributors.add(contributor);
  }

  public static Set<SModel> getAutoImportedModels(SModule contextModule, SModel model) {
    Set<SModel> result = new HashSet<SModel>();
    for (AutoImportsContributor contributor : contributors) {
      if (contributor.getApplicableSModuleClass().isInstance(contextModule)) {
        result.addAll(contributor.getAutoImportedModels(contextModule, model));
      }
    }
    return result;
  }

  public static Set<Language> getAutoImportedLanguages(SModule contextModule, SModel model) {
    Set<Language> result = new HashSet<Language>();
    for (AutoImportsContributor contributor : contributors) {
      if (contributor.getApplicableSModuleClass().isInstance(contextModule)) {
        result.addAll(contributor.getAutoImportedLanguages(contextModule, model));
      }
    }
    return result;
  }

  public static Set<DevKit> getAutoImportedDevKits(SModule contextModule, SModel model) {
    Set<DevKit> result = new HashSet<DevKit>();
    for (AutoImportsContributor contributor : contributors) {
      if (contributor.getApplicableSModuleClass().isInstance(contextModule)) {
        result.addAll(contributor.getAutoImportedDevKits(contextModule, model));
      }
    }
    return result;
  }

  public static void doAutoImport(SModule _module, SModel model) {
    if (!(_module instanceof AbstractModule)) {
      return;
    }
    AbstractModule module = (AbstractModule) _module;
    for (SModel modelToImport : getAutoImportedModels(module, model)) {
      // todo: ! what's up with module? add model module to module dependencies?
      ((jetbrains.mps.smodel.SModelInternal) model).addModelImport(modelToImport.getReference(), false);
    }
    for (Language language : getAutoImportedLanguages(module, model)) {
      if (!new GlobalModuleDependenciesManager(model.getModule()).getUsedLanguages().contains(language)) {
        module.addUsedLanguage(language.getModuleReference());
      }
      ((jetbrains.mps.smodel.SModelInternal) model).addLanguage(language.getModuleReference());
    }
    for (DevKit devKit : getAutoImportedDevKits(module, model)) {
      if (!module.getModuleDescriptor().getUsedDevkits().contains(devKit.getModuleReference())) {
        module.addUsedDevkit(devKit.getModuleReference());
      }
      ((jetbrains.mps.smodel.SModelInternal) model).addDevKit(devKit.getModuleReference());
    }
  }

  public static abstract class AutoImportsContributor<ModuleType extends SModule> {
    public abstract Class<ModuleType> getApplicableSModuleClass();

    public Set<SModel> getAutoImportedModels(ModuleType contextModule, SModel model) {
      return Collections.emptySet();
    }

    public Set<Language> getAutoImportedLanguages(ModuleType contextModule, SModel model) {
      return Collections.emptySet();
    }

    public Set<DevKit> getAutoImportedDevKits(ModuleType contextModule, SModel model) {
      return Collections.emptySet();
    }
  }
}
