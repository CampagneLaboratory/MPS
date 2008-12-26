/*
 * Copyright 2003-2008 JetBrains s.r.o.
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

import jetbrains.mps.projectLanguage.structure.ModuleDescriptor;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.*;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.runtime.BytecodeLocator;

import java.io.File;
import java.util.List;
import java.util.Set;

import org.jetbrains.annotations.NotNull;

public interface IModule extends ModelOwner, MPSModuleOwner {
  @Deprecated
  String getModuleUID();

  ModuleReference getModuleReference();
  ModuleId getModuleId();
  String getModuleFqName();

  List<SModelDescriptor> getOwnModelDescriptors();

  List<SModelRoot> getSModelRoots();
  SModelRoot findModelRoot(String path);

  List<Dependency> getDependOn();
  List<IModule> getDependOnModules();
  List<IModule> getAllDependOnModules();

  List<ModuleReference> getUsedLanguagesReferences();
  List<Language> getUsedLanguages();
  List<Language> getAllUsedLanguages();

  List<ModuleReference> getUsedDevkitReferences();
  List<DevKit> getUsedDevkits();

  List<IModule> getExplicitlyDependOnModules();
  List<IModule> getExplicitlyDependOnModules(boolean includeBootstrap);

  List<IModule> getDesignTimeDependOnModules();

  void addDependency(ModuleReference moduleRef, boolean reexport);
  void addUsedLangauge(ModuleReference langRef);
  void addUsedDevkit(ModuleReference devkitRef);

  SModelDescriptor createModel(SModelFqName fqName, SModelRoot root);

  Set<SModelDescriptor> getImplicitlyImportedModelsFor(SModelDescriptor sm);
  Set<Language> getImplicitlyImportedLanguages(SModelDescriptor sm);
  <T extends IModule> Set<T> getAllDependOnModules(Class<T> cls);

  IFile getDescriptorFile();

  ModuleDescriptor getModuleDescriptor();
  void setModuleDescriptor(ModuleDescriptor moduleDescriptor);

  String getGeneratorOutputPath();
  IFile getClassesGen();
  File getBundleHome();

  @NotNull
  IScope getScope();

  List<String> getSourcePaths();
  Class getClass(String fqName);

  IClassPathItem getClassPathItem();
  IClassPathItem getModuleWithDependenciesClassPathItem();

  BytecodeLocator getBytecodeLocator();

  boolean isCompileInMPS();
  boolean reloadClassesAfterGeneration();

  void invalidateCaches();
  void updateClassPath();
  void save();
  void onModuleLoad();
  boolean isPackaged();

  void dispose();

  boolean isValid();
  List<String> validate();

  void reloadFromDisk();

  boolean needReloading();

  boolean isClassPathExcluded(String path);
}
