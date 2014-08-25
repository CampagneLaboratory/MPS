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
package jetbrains.mps.project;

import jetbrains.mps.library.LibraryInitializer;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.module.SModule;

import com.intellij.openapi.components.ProjectComponent;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MPSProject extends Project implements ProjectComponent {
  protected com.intellij.openapi.project.Project myProject;

  public MPSProject(com.intellij.openapi.project.Project project) {
    myProject = project;
  }

  /**
   * This method is a copy of Project.getModules() returning List<SModule>
   * @deprecated
   */
  @ToRemove(version = 3.0)
  @Override
  @NotNull
  public List<SModule> getModules() {
    List<SModule> result = new ArrayList<SModule>();
    for (SModuleReference ref : myModules) {
      SModule module = ModuleRepositoryFacade.getInstance().getModule(ref);
      if (module != null) {
        result.add(module);
      }
    }
    return result;
  }

  @Override
  public List<SModule> getModulesWithGenerators() {
    // TODO remove after 3.0, this method is a copy of Project.getModulesWithGenerators() returning List<SModule>
    List<SModule> modules = getModules();
    List<SModule> generators = new ArrayList<SModule>();
    for (SModule m : modules) {
      if (m instanceof Language) {
        generators.addAll(((Language) m).getGenerators());
      }
    }
    modules.addAll(generators);
    return modules;
  }

  @Override
  public void projectOpened() {
    super.projectOpened();
  }

  @Override
  public void projectClosed() {
    super.projectClosed();
  }

  @Override
  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Project";
  }

  @Override
  public void initComponent() {
    String url = myProject.getPresentableUrl();
    myProjectFile = url == null ? null : new File(url);
  }

  @Override
  public void disposeComponent() {
    dispose();
    myProjectFile = null;
// Temporary HACK for MPS 3.1: this code was moved here from ProjectLibraryManager.disposeComponent()
    ModelAccess.instance().runWriteAction(new Runnable() {
      @Override
      public void run() {
        LibraryInitializer.getInstance().update();
      }
    });
  }

  //-----------project holder end

  public static final String COMPONENT = "component";
  public static final String CLASS = "class";

  @Override
  public boolean isDisposed() {
    return super.isDisposed() || myProject.isDisposed();
  }

  public com.intellij.openapi.project.Project getProject() {
    return myProject;
  }

  @Override
  public String getName() {
    return getProject().getName();
  }

  @Override
  public void save() {
    getProject().save();
  }

  @Override
  public List<String> getWatchedModulesPaths() {
    return Collections.emptyList();
  }

  @Override
  @Deprecated
  // should be left for compatibility with generated plugins (editor openers)
  public <T> T getComponent(Class<T> clazz) {
    return getProject().getComponent(clazz);
  }

  @Deprecated //now this is done in ProjectCloseClassReloader
  public void dispose(boolean reloadAll) {
    dispose();
  }

  @Override
  public boolean isHidden() {
    return false;
  }
}
