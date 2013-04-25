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
package jetbrains.mps.smodel;

import jetbrains.mps.project.AbstractModule;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.StandaloneMPSContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

//module context without project
public class ModuleOperationContext extends StandaloneMPSContext {

  //we need to store module reference this way because generator are recreated on every reload
  //and if we store generator reference here it will be stale
  private SModuleReference myModuleReference;

  public ModuleOperationContext(@NotNull final SModule module) {
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        myModuleReference = module.getModuleReference();
      }
    });
  }

  @Override
  public Project getProject() {
    return null;
  }

  @Override
  public SModule getModule() {
    return ModuleRepositoryFacade.getInstance().getModule(myModuleReference);
  }

  @Override
  public boolean isValid() {
    return getModule() != null;
  }

  @Override
  @NotNull
  public IScope getScope() {
    SModule module = getModule();
    if (module == null)
      throw new IllegalStateException("Mostly happens when some actions are performed 'later'. Look for 'later' invocations in stacktrace");
    return ((AbstractModule)module).getScope();
  }

  public String toString() {
    return "module operation context: " + myModuleReference;
  }
}
