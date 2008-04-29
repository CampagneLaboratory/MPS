package jetbrains.mps.project;

import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.projectLanguage.structure.ModuleDescriptor;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.*;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.List;
import java.util.Set;

public interface IModule extends ModelOwner, MPSModuleOwner {
  String getModuleUID();


  List<SModelDescriptor> getOwnModelDescriptors();
  List<ModelRoot> getModelRoots();

  List<Dependency> getDependOn();
  List<IModule> getDependOnModules();
  List<IModule> getAllDependOnModules();

  List<String> getUsedLanguagesNamespaces();
  List<Language> getUsedLanguages();
  List<Language> getAllUsedLanguages();

  List<String> getUsedDevKitNamespaces();
  List<DevKit> getUsedDevkits();

  List<IModule> getExplicitlyDependOnModules();
  List<IModule> getExplicitlyDependOnModules(boolean includeBootstrap);

  void addDependency(String modelUID, boolean reexport);
  void addUsedLangauge(String languageNamespace);
  void addUsedDevkit(String devkit);

  SModelDescriptor createModel(SModelUID uid, ModelRoot root);

  Set<SModelDescriptor> getImplicitlyImportedModelsFor(SModelDescriptor sm);
  Set<Language> getImplicitlyImportedLanguages(SModelDescriptor sm);
  <T extends IModule> Set<T> getAllDependOnModules(Class<T> cls);

  IFile getDescriptorFile();

  ModuleDescriptor getModuleDescriptor();
  void setModuleDescriptor(ModuleDescriptor moduleDescriptor);

  String getGeneratorOutputPath();
  IFile getClassesGen();
  File getBundleHome();

  IScope getScope();

  List<String> getSourcePaths();
  Class getClass(String fqName);

  IClassPathItem getClassPathItem();
  
  IClassPathItem getModuleWithDependenciesClassPathItem();

  boolean isCompileInMPS();
  boolean reloadClassesAfterGeneration();

  void invalidateCaches();
  void updateClassPath();
  void save();
  void convert();
  boolean isPackaged();

  void dispose();

  boolean isValid();
  List<String> validate();
}
