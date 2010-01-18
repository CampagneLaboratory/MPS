/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.project.structure.project.testconfigurations;

import com.intellij.openapi.project.Project;
import jetbrains.mps.generator.IllegalGeneratorConfigurationException;
import jetbrains.mps.generator.ModelGenerationStatusManager;
import jetbrains.mps.generator.NoCachesStrategy;
import jetbrains.mps.ide.genconf.GenParameters;
import jetbrains.mps.ide.genconf.GeneratorConfigUtil;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelStereotype;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ModuleTestConfiguration extends BaseTestConfiguration {
  private ModuleReference myModuleRef;

  public ModuleTestConfiguration() {
  }

  public ModuleReference getModuleRef() {
    return myModuleRef;
  }

  public void setModuleRef(ModuleReference moduleRef) {
    myModuleRef = moduleRef;
  }

  public GenParameters getGenParams(MPSProject mpsProject, boolean fullRegeneration) throws IllegalGeneratorConfigurationException {
    IModule module = MPSModuleRepository.getInstance().getModule(myModuleRef);

    if (module == null) {
      throw new IllegalGeneratorConfigurationException("Can't find module " + myModuleRef.getModuleFqName());
    }

    Project project = mpsProject.getComponent(Project.class);
    if (module instanceof Solution) {
      Solution solution = (Solution) module;

      List<SModelDescriptor> models = new ArrayList<SModelDescriptor>();
      for (SModelDescriptor sm : solution.getOwnModelDescriptors()) {
        if (!fullRegeneration && !ModelGenerationStatusManager.getInstance().generationRequired(sm, project, NoCachesStrategy.createBuildCachesStrategy())) {
          continue;
        }

        if (ModelGenerationStatusManager.isDoNotGenerate(sm)) {
          continue;
        }


        if (SModelStereotype.isUserModel(sm)) {
          models.add(sm);
        }
      }

      return new GenParameters(models, solution);
    } else if (module instanceof Language) {
      Language lang = (Language) module;

      List<SModelDescriptor> inputModels = GeneratorConfigUtil.getLanguageModels(lang);

      Iterator<SModelDescriptor> it = inputModels.iterator();
      while (it.hasNext()) {
        SModelDescriptor model = it.next();
        if ((!fullRegeneration && !ModelGenerationStatusManager.getInstance().generationRequired(model, project, NoCachesStrategy.createBuildCachesStrategy())) ||
          ModelGenerationStatusManager.isDoNotGenerate(model)) {
          it.remove();
        }
      }

      return new GenParameters(inputModels, lang);
    }

    throw new IllegalGeneratorConfigurationException("Not applicable to non-language/solution module " + myModuleRef.getModuleFqName());
  }
}
