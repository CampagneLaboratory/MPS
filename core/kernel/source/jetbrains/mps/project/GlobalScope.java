/*
 * Copyright 2003-2009 JetBrains s.r.o.
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

import jetbrains.mps.smodel.*;
import jetbrains.mps.project.structure.modules.ModuleReference;

import java.util.List;
import java.util.Set;
import java.util.HashSet;

public class GlobalScope extends BaseScope {
  private static GlobalScope myInstance;

  public static GlobalScope getInstance() {
    if (myInstance == null) {
      myInstance = new GlobalScope();
    }
    return myInstance;
  }

  protected GlobalScope() {
  }

  public String toString() {
    return "global scope";
  }

  public Language getLanguage(ModuleReference moduleReference) {
    return MPSModuleRepository.getInstance().getLanguage(moduleReference);
  }

  public DevKit getDevKit(ModuleReference ref) {
    return MPSModuleRepository.getInstance().getDevKit(ref);
  }

  public List<Language> getVisibleLanguages() {
    return MPSModuleRepository.getInstance().getAllLanguages();
  }

  public List<DevKit> getVisibleDevkits() {
    return MPSModuleRepository.getInstance().getAllModules(DevKit.class); 
  }

  public List<Solution> getVisibleSolutions() {
    return MPSModuleRepository.getInstance().getAllSolutions();
  }

  public Set<IModule> getVisibleModules() {
    return new HashSet<IModule>(MPSModuleRepository.getInstance().getAllModules());
  }

  public SModelDescriptor getModelDescriptor(SModelReference modelReference) {
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelReference);
    return modelDescriptor;
  }

  public List<SModelDescriptor> getModelDescriptors(String modelName) {
    return SModelRepository.getInstance().getModelDescriptorsByModelName(modelName);
  }

  public List<SModelDescriptor> getModelDescriptors() {
    return SModelRepository.getInstance().getModelDescriptors();
  }
}
