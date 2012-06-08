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
package jetbrains.mps;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.library.contributor.LibraryContributor.LibDescriptor;
import jetbrains.mps.library.contributor.PluginLibrariesContributor;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.NotNull;

import java.util.Set;

public class VisibleModuleRegistry implements ApplicationComponent {


  public boolean isVisible(final IModule module) {
    //project modules
    //contributed by plugin
    if (module == null) return false;
    Set<MPSModuleOwner> moduleOwners = ModelAccess.instance().runReadAction(new Computable<Set<MPSModuleOwner>>() {
      @Override
      public Set<MPSModuleOwner> compute() {
        return ModuleRepositoryFacade.getInstance().getModuleOwners(module);
      }
    });
    for (MPSModuleOwner owner : moduleOwners) {
      if (owner instanceof Language) {
        return isVisible((Language) owner);
      }
      if (!owner.isHidden()) return true;
    }
    //satisfying a mask
    VisibleModuleMask[] extensions = VisibleModuleMask.EP_VISIBLE_MODULES.getExtensions();
    for (VisibleModuleMask e:extensions) {
      if (module.getModuleFqName().startsWith(e.mask)) {
        return true;
      }
    }
    return false;
  }

  public static VisibleModuleRegistry getInstance(){
    return ApplicationManager.getApplication().getComponent(VisibleModuleRegistry.class);
  }

  @Override
  public void initComponent() {
  }

  @Override
  public void disposeComponent() {
  }

  @NotNull
  @Override
  public String getComponentName() {
    return VisibleModuleRegistry.class.getSimpleName();
  }
}
