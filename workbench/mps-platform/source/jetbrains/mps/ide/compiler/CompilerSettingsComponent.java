/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.ide.compiler;

import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.components.StorageScheme;
import com.intellij.openapi.project.Project;
import jetbrains.mps.compiler.JavaCompilerOptions;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent.JavaVersion;
import jetbrains.mps.ide.compiler.CompilerSettingsComponent.CompilerState;
import jetbrains.mps.ide.project.ProjectHelper;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@State(
    name = "CompilerSettings",
    storages = {
        @Storage(file = StoragePathMacros.PROJECT_FILE),
        @Storage(file = StoragePathMacros.PROJECT_CONFIG_DIR + "/compiler.xml", scheme = StorageScheme.DIRECTORY_BASED)
    }
)

public class CompilerSettingsComponent implements PersistentStateComponent<CompilerState>, ProjectComponent {
  private CompilerState myState = new CompilerState();
  private Project myProject;
  public CompilerSettingsComponent(Project project) {
    myProject = project;
  }

  public static CompilerSettingsComponent getInstance(Project project) {
    return project.getComponent(CompilerSettingsComponent.class);
  }

  @Nullable
  @Override
  public CompilerState getState() {
    CompilerState state = new CompilerState();
    state.setTargetVersion(myState.getTargetVersion());
    return state;
  }

  @Override
  public void loadState(CompilerState state) {
    CompilerState newState = new CompilerState();
    newState.setTargetVersion(state.getTargetVersion());
    myState = newState;
    registerOptions();
  }

  @Override
  public void projectOpened() {

  }

  @Override
  public void projectClosed() {

  }

  @Override
  public void initComponent() {
    registerOptions();
  }

  private void registerOptions() {
    jetbrains.mps.project.Project project = ProjectHelper.toMPSProject(myProject);
    if (project == null) {
      return;
    }
    JavaCompilerOptionsComponent.getInstance().setJavaCompilerOptions(project, createOptions());
  }

  @Override
  public void disposeComponent() {
    jetbrains.mps.project.Project project = ProjectHelper.toMPSProject(myProject);
    if (project == null) {
      return;
    }
    JavaCompilerOptionsComponent.getInstance().removeJavaCompilerOptions(project);
  }

  @NotNull
  @Override
  public String getComponentName() {
    return "Compiler Settings Component";
  }

  public static class CompilerState {
    private String myTargetVersion;

    public String getTargetVersion() {
      return myTargetVersion;
    }

    public void setTargetVersion(String targetVersion) {
      myTargetVersion = targetVersion;
    }
  }

  private JavaCompilerOptions createOptions() {
    String targetVersion = myState.getTargetVersion();
    JavaVersion parsedTargetVersion = JavaVersion.parse(targetVersion);
    return new JavaCompilerOptions(parsedTargetVersion == null ? JavaCompilerOptionsComponent.DEFAULT_JAVA_VERSION : parsedTargetVersion);
  }
}
