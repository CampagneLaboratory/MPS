/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

import com.intellij.openapi.components.ProjectComponent;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.util.Collections;
import java.util.List;

public class MPSProject extends Project implements ProjectComponent {
  protected com.intellij.openapi.project.Project myProject;

  public MPSProject(@NotNull com.intellij.openapi.project.Project project) {
    myProject = project;
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
  }

  //-----------project holder end

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
  public <T> T getComponent(Class<T> clazz) {
    return getProject().getComponent(clazz);
  }

  @Override
  public boolean isHidden() {
    return false;
  }
}
