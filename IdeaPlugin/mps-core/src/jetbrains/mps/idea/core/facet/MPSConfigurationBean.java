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

package jetbrains.mps.idea.core.facet;

import com.intellij.util.xmlb.annotations.Transient;
import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import org.jetbrains.annotations.NonNls;

import java.util.*;

/**
 * evgeny, 10/26/11
 */
public class MPSConfigurationBean {
  @NonNls
  static final String SOLUTION_FILE_NAME = "solution";

  @Transient
  private final SolutionDescriptor myDescriptor;
  private boolean myUseModuleSourceFolder = true;

  public MPSConfigurationBean() {
    myDescriptor = new SolutionDescriptor();
    myDescriptor.setUUID(UUID.randomUUID().toString());
  }

  @Transient
  SolutionDescriptor getSolutionDescriptor() {
    return myDescriptor;
  }

  public String getUUID() {
    return myDescriptor.getUUID();
  }

  public void setUUID(String uuid) {
    myDescriptor.setUUID(uuid);
  }

  public void setUseModuleSourceFolder(boolean use) {
    myUseModuleSourceFolder = use;
  }

  public boolean isUseModuleSourceFolder() {
    return myUseModuleSourceFolder;
  }

  public String getGeneratorOutputPath() {
    return myDescriptor.getOutputPath();
  }

  public void setGeneratorOutputPath(String outputPath) {
    myDescriptor.setOutputPath(outputPath);
  }

  public String[] getModelRootPaths() {
    List<String> result = new ArrayList<String>();
    for (ModelRoot modelRoot : myDescriptor.getModelRoots()) {
      result.add(modelRoot.getPath());
    }
    return result.toArray(new String[result.size()]);
  }

  public void setModelRootPaths(String... paths) {
    myDescriptor.getModelRoots().clear();
    for (String path : paths) {
      ModelRoot modelRoot = new ModelRoot();
      modelRoot.setPath(path);
      myDescriptor.getModelRoots().add(modelRoot);
    }
  }

  public String[] getUsedLanguages() {
    String[] usedLanguages = new String[myDescriptor.getUsedLanguages().size()];
    int i = 0;
    for (ModuleReference ref : myDescriptor.getUsedLanguages()) {
      usedLanguages[i] = ref.toString();
      i++;
    }
    return usedLanguages;
  }

  public void setUsedLanguages(String[] usedLanguages) {
    Collection<ModuleReference> usedLanguageReferences = myDescriptor.getUsedLanguages();
    usedLanguageReferences.clear();
    for (String usedLanguage : usedLanguages) {
      usedLanguageReferences.add(ModuleReference.fromString(usedLanguage));
    }
  }
}
