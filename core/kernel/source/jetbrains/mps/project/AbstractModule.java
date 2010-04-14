/*
 * Copyright 2003-2010 JetBrains s.r.o.
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

import com.intellij.openapi.util.Computable;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.baseLanguage.collections.structure.Collections_Language;
import jetbrains.mps.baseLanguage.structure.BaseLanguage_Language;
import jetbrains.mps.baseLanguage.stubs.JavaStubs;
import jetbrains.mps.lang.generator.structure.Generator_Language;
import jetbrains.mps.library.LibraryManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.listener.ModelCreationListener;
import jetbrains.mps.project.persistence.ModuleReadException;
import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.project.structure.model.ModelRootManager;
import jetbrains.mps.project.structure.modules.*;
import jetbrains.mps.reloading.AbstractClassPathItem;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.CompositeClassPathItem;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.runtime.BytecodeLocator;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.stubs.BaseStubModelRootManager;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vcs.SuspiciousModelIndex;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.JarFileEntryFile;
import jetbrains.mps.vfs.VFileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.*;

public abstract class AbstractModule implements IModule {
  private static final Logger LOG = Logger.getLogger(AbstractModule.class);
  private static Set<ModelCreationListener> myModelCreationListeners = new HashSet<ModelCreationListener>();
  public static final String RUNTIME_JAR_SUFFIX = "runtime.jar";
  public static final String MODULE_DIR = "module";
  public static final String CACHES_DIR = "caches";
  public static final String PACKAGE_SUFFIX = "mpsarch.jar";

  public static void registerModelCreationListener(ModelCreationListener listener) {
    myModelCreationListeners.add(listener);
  }

  private boolean myModelsRead = false;
  private boolean myInitialized = false;
  protected IFile myDescriptorFile;

  private ModuleScope myScope = new ModuleScope();

  private List<SModelRoot> mySModelRoots = new ArrayList<SModelRoot>();

  private Set<String> myIncludedStubPaths;
  private CompositeClassPathItem myCachedClassPathItem;

  private List<IModule> myExplicitlyDependentModules;

  private ModuleReference myModuleReference;

  protected void setModulePointer(@NotNull ModuleReference reference) {
    LOG.assertLog(myModuleReference == null || EqualUtil.equals(myModuleReference.getModuleId(), reference.getModuleId()), reference.getModuleFqName());

    ModuleReference oldValue = myModuleReference;
    myModuleReference = reference;
    if (oldValue != null &&
      oldValue.getModuleFqName() != null &&
      !oldValue.getModuleFqName().equals(myModuleReference.getModuleFqName())) {

      MPSModuleRepository.getInstance().moduleFqNameChanged(this, oldValue.getModuleFqName());
    }
  }

  @NotNull
  public ModuleReference getModuleReference() {
    return myModuleReference;
  }

  public ModuleId getModuleId() {
    return myModuleReference.getModuleId();
  }

  public String getModuleFqName() {
    return myModuleReference.getModuleFqName();
  }

  @Nullable
  public String getModuleNamespace() {
    //transient models module
    if (getModuleDescriptor() == null) return null;

    return getModuleDescriptor().getNamespace();
  }

  @Deprecated
  public String getModuleUID() {
    return getModuleFqName();
  }

  protected void reloadAfterDescriptorChange() {
    rereadModels();

    updatePackagedDescriptorClasspath();
    updateClassPath();
  }

  public void onModuleLoad() {
    boolean needToSave = false;

    if (updateSModelReferences()) {
      needToSave = true;
    }

    if (updateModuleReferences()) {
      needToSave = true;
    }

    if (isPackaged()) {
      updatePackagedDescriptorClasspath();
    } else {
      { //old classpath
        Set<String> visited = new HashSet<String>();
        List<ClassPathEntry> remove = new ArrayList<ClassPathEntry>();
        for (ClassPathEntry e : getModuleDescriptor().getClassPaths()) {
          if (visited.contains(e.getPath())) {
            remove.add(e);
            needToSave = true;
          }

          visited.add(e.getPath());
        }

        getModuleDescriptor().getClassPaths().removeAll(remove);
      }

      { //new classpath
        Set<StubModelsEntry> visited = new HashSet<StubModelsEntry>();
        List<StubModelsEntry> remove = new ArrayList<StubModelsEntry>();
        for (StubModelsEntry e : getModuleDescriptor().getStubModelEntries()) {
          for (StubModelsEntry ve : visited) {
            boolean eqManager = EqualUtil.equals(ve.getManager(), e.getManager());
            boolean eqPath = EqualUtil.equals(e.getPath(), ve.getPath());
            if (eqManager && eqPath) {
              remove.add(e);
              needToSave = true;
            }
          }

          visited.add(e);
        }

        getModuleDescriptor().getStubModelEntries().removeAll(remove);
      }
    }

    if (needToSave && !isPackaged()) {
      save();
    }
  }

  public boolean isPackaged() {
    if (getDescriptorFile() == null) {
      return false;
    }
    return getDescriptorFile().isReadOnly();
  }


  public List<String> validate() {
    List<String> errors = new ArrayList<String>();
    for (Dependency dep : getDependOn()) {
      ModuleReference moduleRef = dep.getModuleRef();
      if (MPSModuleRepository.getInstance().getModule(moduleRef) == null) {
        errors.add("Can't find dependency: " + moduleRef.getModuleFqName());
      }
    }
    for (ModuleReference reference : getUsedLanguagesReferences()) {
      if (MPSModuleRepository.getInstance().getLanguage(reference) == null) {
        errors.add("Can't find used language: " + reference.getModuleFqName());
      }
    }
    return errors;
  }

  public final boolean isValid() {
    return validate().isEmpty();
  }

  public void addDependency(@NotNull ModuleReference moduleRef, boolean reexport) {
    ModuleDescriptor descriptor = getModuleDescriptor();
    Dependency dep = new Dependency();
    dep.setModuleRef(moduleRef);
    dep.setReexport(reexport);
    descriptor.getDependencies().add(dep);
    setModuleDescriptor(descriptor);
    save();
  }

  public void addUsedLanguage(ModuleReference langRef) {
    ModuleDescriptor descriptor = getModuleDescriptor();
    descriptor.getUsedLanguages().add(langRef);
    setModuleDescriptor(descriptor);
    save();
  }

  public void addUsedDevkit(ModuleReference devkitRef) {
    ModuleDescriptor descriptor = getModuleDescriptor();
    descriptor.getUsedDevkits().add(devkitRef);
    setModuleDescriptor(descriptor);
    save();
  }

  /**
   * @return all depend on
   */
  public <T extends IModule> Set<T> getAllDependOnModules(Class<T> cls) {
    Set<T> modules = new DependencyCollector(this, cls).collect();

    // add bootstrap languages
    if (Language.class.isAssignableFrom(cls)) {
      Set<Language> languages = LibraryManager.getInstance().getBootstrapModules(Language.class);
      for (Language language : languages) {
        //noinspection SuspiciousMethodCalls
        if (!modules.contains(language)) {
          modules.add((T) language);
          modules.addAll(new DependencyCollector(this, cls).collect());
        }
      }
    }

    return modules;
  }

  public List<SModelDescriptor> getOwnModelDescriptors() {
    return SModelRepository.getInstance().getModelDescriptors(this);
  }

  public IFile getClassesGen() {
    IFile classesDir = getClassesDirParent();
    if (classesDir == null) return null;
    if (isPackaged()) return classesDir;

    return classesDir.child("classes_gen");
  }

  private IFile getClassesDirParent() {
    if (isPackaged()) {
      String filename = getBundleHome().getAbsolutePath() + "!";
      VirtualFile file = VFileSystem.getFile(filename);
      if (file == null) return null;
      return VFileSystem.toIFile(file);
    } else {
      if (getDescriptorFile() == null) return null;
      return getDescriptorFile().getParent();
    }
  }

  private List<ModelRoot> getModelRoots() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) return descriptor.getModelRoots();
    return new ArrayList<ModelRoot>();
  }

  public List<SModelRoot> getSModelRoots() {
    return Collections.unmodifiableList(mySModelRoots);
  }

  public SModelRoot findModelRoot(String path) {
    for (SModelRoot root : mySModelRoots) {
      if (path.equals(root.getPath())) return root;
    }
    return null;
  }

  public List<Dependency> getDependOn() {
    List<Dependency> result = new ArrayList<Dependency>();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      result.addAll(descriptor.getDependencies());
    }
    return result;
  }

  public final List<IModule> getExplicitlyDependOnModules() {
    return getExplicitlyDependOnModules(false);
  }

  public List<IModule> getExplicitlyDependOnModules(boolean includeBootstrap) {
    if (myExplicitlyDependentModules == null) {
      Set<IModule> res = new LinkedHashSet<IModule>();
      addExplicitlyDependendOnModules(res);
      myExplicitlyDependentModules = new ArrayList<IModule>(res);
    }


    if (includeBootstrap) {
      List<IModule> result = new ArrayList<IModule>(myExplicitlyDependentModules);
      result.addAll(LibraryManager.getInstance().getBootstrapModules(Language.class));
      return result;
    }

    return Collections.unmodifiableList(myExplicitlyDependentModules);
  }

  protected void addExplicitlyDependendOnModules(Set<IModule> result) {
    result.addAll(getDependOnModules());
    result.addAll(getUsedLanguages());
    result.addAll(getUsedDevkits());
  }

  public List<IModule> getDesignTimeDependOnModules() {
    Set<IModule> result = new LinkedHashSet<IModule>();
    result.addAll(getAllDependOnModules());
    return new ArrayList<IModule>(result);
  }

  public List<IModule> getDependOnModules() {
    List<IModule> result = new ArrayList<IModule>();
    for (Dependency dep : getDependOn()) {
      IModule m = MPSModuleRepository.getInstance().getModule(dep.getModuleRef());
      if (m != null) {
        result.add(m);
      }
    }
    return result;
  }

  public List<IModule> getAllDependOnModules() {
    Set<IModule> result = new LinkedHashSet<IModule>();
    result.addAll(getDependOnModules());
    for (DevKit dk : getUsedDevkits()) {
      result.addAll(dk.getAllExportedSolutions());
    }
    return new ArrayList<IModule>(result);
  }

  public List<ModuleReference> getUsedLanguagesReferences() {
    List<ModuleReference> result = new ArrayList<ModuleReference>();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      result.addAll(descriptor.getUsedLanguages());
    }
    return result;
  }

  public List<Language> getUsedLanguages() {
    List<Language> result = new ArrayList<Language>();
    for (ModuleReference ref : getUsedLanguagesReferences()) {
      Language l = MPSModuleRepository.getInstance().getLanguage(ref);
      if (l != null) {
        result.add(l);
      }
    }

    result.add(BaseLanguage_Language.get());
    result.add(Collections_Language.get());
    return result;
  }

  public List<Language> getAllUsedLanguages() {
    Set<Language> result = new LinkedHashSet<Language>();
    result.addAll(getUsedLanguages());
    for (DevKit dk : getUsedDevkits()) {
      result.addAll(dk.getAllExportedLanguages());
    }
    for (Language l : new HashSet<Language>(result)) {
      result.addAll(l.getAllExtendedLanguages());
    }
    return new ArrayList<Language>(result);
  }

  public List<ModuleReference> getUsedDevkitReferences() {
    List<ModuleReference> result = new ArrayList<ModuleReference>();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      result.addAll(descriptor.getUsedDevkits());
    }
    return result;
  }

  public List<DevKit> getUsedDevkits() {
    List<DevKit> result = new ArrayList<DevKit>();

    for (ModuleReference ref : getUsedDevkitReferences()) {
      DevKit dk = MPSModuleRepository.getInstance().getDevKit(ref);
      if (dk != null) {
        result.add(dk);
      } else {
        LOG.error("Can't load devkit " + ref.getModuleFqName() + " from " + this);
      }
    }

    return result;
  }

  public final SModelDescriptor createModel(SModelFqName name, SModelRoot root) {
    IModelRootManager manager = root.getManager();

    if (!manager.isNewModelsSupported()) {
      LOG.error("Trying to create model root manager in root which doesn't support new models");
      return null;
    }

    SModelDescriptor model = manager.createNewModel(root, name, this);
    SModelRepository.getInstance().markChanged(model, true);

    for (ModelCreationListener listener : myModelCreationListeners) {
      if (listener.isApplicable(model)) {
        listener.onCreate(model);
      }
    }

    return model;
  }

  public Set<SModelDescriptor> getImplicitlyImportedModelsFor(SModelDescriptor sm) {
    return new LinkedHashSet<SModelDescriptor>();
  }

  public Set<Language> getImplicitlyImportedLanguages(SModelDescriptor sm) {
    LinkedHashSet<Language> result = new LinkedHashSet<Language>();
    if (SModelStereotype.isGeneratorModel(sm)) {
      result.add(Generator_Language.get());
    }
    return result;
  }

  public IFile getDescriptorFile() {
    return myDescriptorFile;
  }

  @NotNull
  public IScope getScope() {
    return myScope;
  }

  protected void readModels() {
    if (!myModelsRead) {
      myModelsRead = true;

      for (SModelRoot root : mySModelRoots) {
        root.dispose();
      }
      mySModelRoots.clear();

      for (ModelRoot modelRoot : getModelRoots()) {
        try {
          SModelRoot root = new SModelRoot(this, modelRoot);
          mySModelRoots.add(root);
          IModelRootManager manager = root.getManager();
          manager.updateModels(root, this);
        } catch (Exception e) {
          LOG.error("Error loading models from root: prefix: \"" + modelRoot.getPrefix() + "\" path: \"" + modelRoot.getPath() + "\". Requested by: " + this, e);
        }
      }

      myInitialized = true;
    }
  }

  public void dispose() {
    for (SModelRoot root : mySModelRoots) {
      root.dispose();
    }
    mySModelRoots.clear();
  }

  public List<String> getSourcePaths() {
    List<String> result = new ArrayList<String>();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      for (String p : descriptor.getSourcePaths()) {
        result.add(p);
      }
    }
    if (getGeneratorOutputPath() != null) {
      result.add(getGeneratorOutputPath());
    }
    if (getTestsGeneratorOutputPath() != null) {
      result.add(getTestsGeneratorOutputPath());
    }
    return result;
  }

  protected void rereadModels() {
    myModelsRead = false;
    myInitialized = false;
    readModels();
  }

  protected boolean isInitialized() {
    return myInitialized;
  }

  protected void fireModuleInitialized() {
    MPSModuleRepository.getInstance().fireModuleInitialized(this);
  }

  public Class getClass(String fqName) {
    try {
      return ClassLoaderManager.getInstance().getClassFor(this, fqName);
    } catch (Throwable t) {
      LOG.error(t);
      return null;
    }
  }

  public File getBundleHome() {
    IFile descriptorFile = getDescriptorFile();

    if (descriptorFile != null) {
      if (descriptorFile instanceof JarFileEntryFile) {
        return ((JarFileEntryFile) descriptorFile).getJarFile();
      }

      return FileSystem.toFile(descriptorFile.getParent());
    }

    return null;
  }

  public boolean isCompileInMPS() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    return descriptor != null && descriptor.getCompileInMPS();
  }

  public boolean reloadClassesAfterGeneration() {
    return true;
  }

  public void addModuleImport(@NotNull final ModuleReference moduleRef) {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        ModuleDescriptor md = getModuleDescriptor();
        if (md == null) return;

        for (Dependency dependency : md.getDependencies()) {
          if (moduleRef.equals(dependency.getModuleRef())) {
            return;
          }
        }

        Dependency dep = new Dependency();
        dep.setModuleRef(moduleRef);
        md.getDependencies().add(dep);

        setModuleDescriptor(md);
        save();
      }
    });
  }

  public void addUsedLanguage(final String languageNamespace) {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        ModuleDescriptor md = getModuleDescriptor();
        if (md == null) return;

        for (ModuleReference r : md.getUsedLanguages()) {
          if (languageNamespace.equals(r.getModuleFqName())) {
            return;
          }
        }

        ModuleReference ref = ModuleReference.fromString(languageNamespace);
        md.getUsedLanguages().add(ref);

        setModuleDescriptor(md);
        save();
      }
    });
  }

  public void invalidateCaches() {
    myScope.invalidateCaches();
  }

  public boolean needReloading() {
    if ((myDescriptorFile == null) || !myDescriptorFile.exists()) {
      return false;
    }
    String timestampString;
    if (ModelAccess.instance().canRead()) {
      timestampString = getModuleDescriptor().getTimestamp();
    } else {
      timestampString = ModelAccess.instance().runReadAction(new Computable<String>() {
        public String compute() {
          return getModuleDescriptor().getTimestamp();
        }
      });
    }
    if (timestampString == null) return true;
    long timestamp = Long.decode(timestampString);
    return timestamp != myDescriptorFile.lastModified();
  }

  public void setModuleDescriptor(ModuleDescriptor descriptor) {
    setModuleDescriptor(descriptor, true);
    myExplicitlyDependentModules = null;
  }

  public String getOutputFor(SModelDescriptor model) {
    if (SModelStereotype.isTestModel(model)) {
      return getTestsGeneratorOutputPath();
    } else {
      return getGeneratorOutputPath();
    }
  }

  public final void reloadFromDisk(boolean reloadClasses) {
    ModelAccess.instance().checkWriteAccess();
    try {
      ModuleDescriptor descriptor = loadDescriptor();
      setModuleDescriptor(descriptor, reloadClasses);
    } catch (ModuleReadException e) {
      handleReadProblem(e, false);
    }
  }

  private void handleReadProblem(Exception e, boolean isInConflict) {
    SuspiciousModelIndex.instance().addModule(this, isInConflict);
    LOG.error(e.getMessage());
    e.printStackTrace();
  }

  public boolean updateSModelReferences() {
    if (getModuleDescriptor() == null) return false;
    return getModuleDescriptor().updateModelRefs();
  }

  public boolean updateModuleReferences() {
    if (getModuleDescriptor() == null) return false;
    return getModuleDescriptor().updateModuleRefs();
  }

  protected ModuleDescriptor loadDescriptor() {
    return null;
  }

  //-----------stubs--------------

  public boolean areJavaStubsEnabled() {
    return true;
  }

  public List<StubPath> getAllStubPaths() {
    ArrayList<StubPath> result = new ArrayList<StubPath>();
    result.addAll(getStubPaths());
    result.addAll(getOwnStubPaths());
    return result;
  }

  public List<StubPath> getOwnStubPaths() {
    ArrayList<StubPath> result = new ArrayList<StubPath>();
    if (isCompileInMPS() && getClassesGen() != null && getClassesGen().exists()) {
      result.add(new StubPath(getClassesGen().getCanonicalPath(), LanguageID.JAVA_MANAGER));
    }
    return result;
  }

  public List<StubPath> getStubPaths() {
    ArrayList<StubPath> result = new ArrayList<StubPath>();

    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      for (StubModelsEntry entry : getStubModelEntries()) {
        result.add(new StubPath(entry.getPath(), entry.getManager()));
      }
    }

    return result;
  }

  private Set<String> getIncludedStubPaths() {
    LinkedHashSet<String> result = new LinkedHashSet<String>();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor != null) {
      for (StubModelsEntry entry : getStubModelEntries()) {
        if (entry.isIncludedInVCS()) result.add(entry.getPath());
      }
    }
    return result;
  }

  private void setIncludedStubPath() {
    for (StubModelsEntry entry : getStubModelEntries()) {
      if (myIncludedStubPaths.contains(entry.getPath())) {
        entry.setIncludedInVCS(true);
      } else {
        entry.setIncludedInVCS(false);
      }
    }
  }

  public boolean isStubPathExcluded(String path) {
    return !myIncludedStubPaths.contains(path);
  }

  public boolean setStubPathExcluded(String path, boolean exclude) {
    boolean changed = exclude ? myIncludedStubPaths.remove(path) : myIncludedStubPaths.add(path);

    setIncludedStubPath();
    if (changed) {
      save();
    }

    return changed;
  }

  //todo[CP] remove this method when got rid of classpaths
  protected List<StubModelsEntry> getStubModelEntries() {
    List<ClassPathEntry> cp = getModuleDescriptor().getClassPaths();
    List<StubModelsEntry> sm = getModuleDescriptor().getStubModelEntries();

    return toStubModelEntries(cp, sm);
  }

  //todo[CP] remove this method when got rid of classpaths
  protected List<StubModelsEntry> toStubModelEntries(List<ClassPathEntry> cp, List<StubModelsEntry> sm) {
    ArrayList<StubModelsEntry> result = new ArrayList<StubModelsEntry>();

    result.addAll(sm);
    for (ClassPathEntry entry : cp) {
      StubModelsEntry sme = new StubModelsEntry();
      sme.setPath(entry.getPath());
      sme.setManager(LanguageID.JAVA_MANAGER);
      sme.setIncludedInVCS(entry.isIncludedInVCS());
      result.add(sme);
    }

    return result;
  }

  //-----------classpath--------------

  public void updateClassPath() {
    myCachedClassPathItem = null;
    myIncludedStubPaths = getIncludedStubPaths();
  }

  //todo check this code. Wy not to do it where we add jars?
  protected void updatePackagedDescriptorClasspath() {
    if (!isPackaged()) return;

    ModuleDescriptor descriptor = getModuleDescriptor();

    if (descriptor != null) {
      Set<String> visited = new HashSet<String>();
      List<ClassPathEntry> remove = new ArrayList<ClassPathEntry>();
      for (ClassPathEntry entry : descriptor.getClassPaths()) {
        IFile cp = FileSystem.getFile(entry.getPath());
        if ((!cp.exists()) || cp.isDirectory() || visited.contains(cp.getAbsolutePath())) {
          remove.add(entry);
        }
        visited.add(entry.getPath());
      }
      descriptor.getClassPaths().removeAll(remove);
      File bundleHomeFile = getBundleHome();
      if (bundleHomeFile == null) return;
      String bundleHomePath = bundleHomeFile.getPath();
      if (!visited.contains(bundleHomePath)) {
        ClassPathEntry bundleHome = new ClassPathEntry();
        descriptor.getClassPaths().add(bundleHome);
        bundleHome.setPath(bundleHomePath);
      }
    }

    if (descriptor != null) {
      Set<StubModelsEntry> visited = new HashSet<StubModelsEntry>();
      List<StubModelsEntry> remove = new ArrayList<StubModelsEntry>();
      for (StubModelsEntry entry : descriptor.getStubModelEntries()) {
        IFile cp = FileSystem.getFile(entry.getPath());
        if ((!cp.exists()) || cp.isDirectory()) {
          remove.add(entry);
        }

        for (StubModelsEntry ve : visited) {
          boolean eqManager = EqualUtil.equals(ve.getManager(), entry.getManager());
          boolean eqPath = EqualUtil.equals(cp.getAbsolutePath(), ve.getPath());
          if (eqManager && eqPath) {
            remove.add(entry);
          }
        }
        visited.add(entry);
      }
      descriptor.getStubModelEntries().removeAll(remove);
    }
  }

  public IClassPathItem getClassPathItem() {
    if (myCachedClassPathItem == null) {
      myCachedClassPathItem = new CompositeClassPathItem();
      for (StubPath path : getAllStubPaths()) {
        //look for classes only in stub dirs with JavaStub manager
        if (!EqualUtil.equals(path.getManager().getClassName(), JavaStubs.class.getName())) continue;

        try {
          IClassPathItem pathItem = AbstractClassPathItem.createFromPath(path.getPath(), this);
          myCachedClassPathItem.add(pathItem);
        } catch (IOException e) {
          LOG.error(e.getMessage());
        }
      }
    }
    return myCachedClassPathItem;
  }

  public IClassPathItem getModuleWithDependenciesClassPathItem() {
    return getDependenciesClasspath(CollectionUtil.set((IModule) this), false, false);
  }

  public static IClassPathItem getDependenciesClasspath(Set<IModule> modules, boolean includeJDK, boolean includeMPS) {
    return new ClasspathCollector(modules).collect(includeJDK, includeMPS);
  }

  public BytecodeLocator getBytecodeLocator() {
    return new ModuleBytecodeLocator();
  }

  //----------------------------------

  public static class StubPath {
    private String myPath;
    private ModelRootManager myManager;

    private long myPathTimestamp;
    private long myManagerTimestamp;

    private BaseStubModelRootManager myModelRootManager;

    public StubPath(String path, ModelRootManager manager) {
      myPath = path;
      myManager = manager;

      init();
    }

    public String getPath() {
      return myPath;
    }

    public void setPath(String path) {
      myPath = path;
    }

    public ModelRootManager getManager() {
      return myManager;
    }

    public void setManager(ModelRootManager manager) {
      myManager = manager;
    }

    public BaseStubModelRootManager getModelRootManager() {
      return myModelRootManager;
    }

    public void setModelRootManager(BaseStubModelRootManager modelRootManager) {
      myModelRootManager = modelRootManager;
    }

    public boolean isFresh() {
      return myPathTimestamp == getTimestamp() || myManagerTimestamp == getManagerTimestamp();
    }

    private long getTimestamp() {
      VirtualFile file = VFileSystem.getFile(myPath);
      if (file == null) return 0L;
      return file.getTimeStamp();
    }

    private long getManagerTimestamp() {
      ModuleId moduleId = ModuleId.fromString(myManager.getModuleId());
      IModule module = MPSModuleRepository.getInstance().getModuleById(moduleId);
      if (module == null) return 0L;

      String classNamespace = NameUtil.namespaceFromLongName(myManager.getClassName());
      IClassPathItem cpItem = module.getClassPathItem();
      if (cpItem == null) return 0L;

      return cpItem.getClassesTimestamp(classNamespace);
    }

    public void init() {
      myPathTimestamp = getTimestamp();
      myManagerTimestamp = getManagerTimestamp();
    }

    public String toString() {
      return myPath + "{" + myManager + '}';
    }
  }

  public class ModuleScope extends DefaultScope {
    public AbstractModule getModule() {
      return AbstractModule.this;
    }

    protected Set<IModule> getInitialModules() {
      Set<IModule> result = new HashSet<IModule>();
      result.add(AbstractModule.this);
      return result;
    }

    protected Set<Language> getInitialUsedLanguages() {
      HashSet<Language> result = new HashSet<Language>(getUsedLanguages());

      if (AbstractModule.this instanceof Language) {
        result.add((Language) AbstractModule.this);
      }

      if (AbstractModule.this instanceof Generator) {
        result.add(((Generator) AbstractModule.this).getSourceLanguage());
      }

      return result;
    }

    public String toString() {
      return "Scope of module " + AbstractModule.this;
    }
  }

  protected class ModuleBytecodeLocator implements BytecodeLocator {
    public byte[] find(String fqName) {
      return getClassPathItem().getClass(fqName);
    }

    public URL findResource(String name) {
      return getClassPathItem().getResource(name);
    }
  }
}
