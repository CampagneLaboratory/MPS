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

package jetbrains.mps.idea.core.project.stubs;

import com.intellij.openapi.components.BaseComponent;
import com.intellij.openapi.projectRoots.Sdk;
import com.intellij.openapi.roots.libraries.Library;
import jetbrains.mps.idea.core.project.StubSolutionIdea;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.ModuleId;
import jetbrains.mps.project.Solution;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import org.jetbrains.annotations.NotNull;

/**
 * User: shatalin
 * Date: 4/30/12
 */
public abstract class AbstractJavaStubSolutionManager implements MPSModuleOwner, BaseComponent {

  @Override
  public void initComponent() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      @Override
      public void run() {
        init();
      }
    });
  }

  @Override
  public void disposeComponent() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      @Override
      public void run() {
        dispose();
      }
    });
  }

  @NotNull
  @Override
  public String getComponentName() {
    return getClass().getSimpleName();
  }

  protected abstract void init();

  protected abstract void dispose();

  protected Solution addSolution(Library library) {
    return StubSolutionIdea.newInstance(library, this);
  }

  protected Solution addSolution(Sdk sdk) {
    return StubSolutionIdea.newInstance(sdk, null, this );
  }

  protected Solution replaceJdkSolution(Sdk sdk) {
    return StubSolutionIdea.newInstanceForJdk(sdk, this);
  }

  protected void removeSolution(String name) {
    SModuleReference ref = new jetbrains.mps.project.structure.modules.ModuleReference(null, ModuleId.foreign(name));
    MPSModuleRepository repository = MPSModuleRepository.getInstance();
    SModule m = ModuleRepositoryFacade.getInstance().getModule(ref);
    if (m == null) {
      return;
    }
    repository.unregisterModule(m, this);
  }
}
