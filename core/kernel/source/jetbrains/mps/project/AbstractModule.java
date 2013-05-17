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

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.extapi.module.EditableSModule;
import jetbrains.mps.extapi.module.ModuleFacetBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.persistence.ModelRootBase;
import jetbrains.mps.library.ModulesMiner;
import jetbrains.mps.persistence.MementoImpl;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.progress.ProgressMonitor;
import jetbrains.mps.project.IModule.ModelAdjuster;
import jetbrains.mps.project.dependency.modules.DependenciesManager;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.facets.JavaModuleOperations;
import jetbrains.mps.project.facets.TestsFacet;
import jetbrains.mps.project.listener.ModelCreationListener;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.project.structure.modules.Dependency;
import jetbrains.mps.project.structure.modules.DeploymentDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleFacetDescriptor;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.BootstrapLanguages;
import jetbrains.mps.smodel.DefaultScope;
import jetbrains.mps.smodel.DisposedRepository;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.IllegalModelAccessError;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SuspiciousModelHandler;
import jetbrains.mps.smodel.adapter.SLanguageLanguageAdapter;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.MacrosFactory;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import jetbrains.mps.util.iterable.TranslatingIterator;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.FileSystemListener;
import jetbrains.mps.vfs.IFile;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.Memento;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.jetbrains.mps.openapi.persistence.ModelRootFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static jetbrains.mps.project.SModuleOperations.getJavaFacet;
import static org.jetbrains.mps.openapi.module.FacetsFacade.FacetFactory;

public abstract class AbstractModule extends SModuleBase implements EditableSModule, FileSystemListener {
  private static final Logger LOG = LogManager.getLogger(AbstractModule.class);

  public static final String MODULE_DIR = "module";
  public static final String CLASSES_GEN = "classes_gen";
  public static final String CLASSES = "classes";

  protected final IFile myDescriptorFile;
  private SModuleReference myModuleReference;
  private Set<ModelRoot> mySModelRoots = new LinkedHashSet<ModelRoot>();
  private Set<ModuleFacetBase> myFacets = new LinkedHashSet<ModuleFacetBase>();
  private ModuleScope myScope = createScope();

  protected boolean myChanged = false;

  private final Object REPO_LOCK = new Object();
  private SRepository myRepository = null;

  private static Set<String> ourErroredModules = new ConcurrentHashSet<String>();

  //----model creation

  protected AbstractModule() {
    this(null);
  }

  protected AbstractModule(@Nullable IFile myDescriptorFile) {
    this.myDescriptorFile = myDescriptorFile;
  }

  //----reference
  @Override
  public SModuleId getModuleId() {
    assertCanRead();
    return getModuleReference().getModuleId();
  }

  @Override
  public String getModuleName() {
    assertCanRead();
    return myModuleReference.getModuleName();
  }

  @Override
  public void attach(SRepository repo) {
    synchronized (REPO_LOCK) {
      assert myRepository == null;
      myRepository = repo;
      for (SModel m : getOwnModelDescriptors()) {
        m.attach(repo);
      }
    }
  }

  @Override
  public void detach() {
    synchronized (REPO_LOCK) {
      assert myRepository != null;
      for (SModel m : getOwnModelDescriptors()) {
        m.detach();
      }
      myRepository = DisposedRepository.INSTANCE;
    }
  }

  @Override
  public SRepository getRepository() {
    assertCanRead();
    return myRepository;
  }

  @Override
  public Iterable<SDependency> getDeclaredDependencies() {
    assertCanRead();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return new ArrayList<SDependency>();

    // add declared dependencies
    List<SDependency> dependencies = new ArrayList<SDependency>();
    for (Dependency dependency : descriptor.getDependencies()) {
      dependencies.add(new SDependencyAdapter(dependency));
    }

    // add dependencies provided by devkits as nonreexport dependencies
    for (SModuleReference usedDevkit : getModuleDescriptor().getUsedDevkits()) {
      DevKit devKit = ModuleRepositoryFacade.getInstance().getModule(usedDevkit, DevKit.class);
      if (devKit != null) {
        for (Solution solution : devKit.getAllExportedSolutions()) {
          if (solution != null) {
            dependencies.add(new SDependencyAdapter(new Dependency(solution.getModuleReference(), false)));
          }
        }
      }
    }

    return dependencies;
  }

  @Override
  public Set<SLanguage> getUsedLanguages() {
    assertCanRead();
    // todo: collect languages for now? and convert to SLanguages in the end?
    if (getModuleDescriptor() == null) {
      return Collections.emptySet();
    }

    Set<SLanguage> languages = new HashSet<SLanguage>();
    for (SModuleReference usedLanguage : getModuleDescriptor().getUsedLanguages()) {
      Language language = ModuleRepositoryFacade.getInstance().getModule(usedLanguage, Language.class);
      if (language != null) {
        languages.add(new SLanguageLanguageAdapter(language));
      }
    }

    for (SModuleReference usedDevkit : getModuleDescriptor().getUsedDevkits()) {
      DevKit devKit = ModuleRepositoryFacade.getInstance().getModule(usedDevkit, DevKit.class);
      if (devKit != null) {
        for (Language language : devKit.getAllExportedLanguages()) {
          if (language != null) {
            languages.add(new SLanguageLanguageAdapter(language));
          }
        }
      }
    }

    if (BootstrapLanguages.coreLanguage() != null) {
      // todo: ???
      languages.add(new SLanguageLanguageAdapter(BootstrapLanguages.coreLanguage()));
    }

    return languages; // todo: maybe collect extended languages here
  }

  @Override
  public SModel resolveInDependencies(org.jetbrains.mps.openapi.model.SModelId ref) {
    assertCanRead();
    // TODO: implement something more meaningful
    return SModelRepository.getInstance().getModelDescriptor(ref);
  }

  @Override
  public SModel getModel(org.jetbrains.mps.openapi.model.SModelId id) {
    assertCanRead();
    // TODO API (implement)
    return null;
  }

  protected void setModuleReference(@NotNull SModuleReference reference) {
    assertCanChange();

    assert reference.getModuleId() != null : "module must have an id";
    assert myModuleReference == null || reference.getModuleId().equals(myModuleReference.getModuleId()) : "module id can't be changed";

    SModuleReference oldValue = myModuleReference;
    myModuleReference = reference;
    if (oldValue != null &&
        oldValue.getModuleName() != null &&
        !oldValue.getModuleName().equals(myModuleReference.getModuleName())) {

      MPSModuleRepository.getInstance().moduleFqNameChanged(this, oldValue.getModuleName());
    }
  }

  @Override
  @NotNull
  //module reference is immutable, so we cn return original
  public SModuleReference getModuleReference() {
    assertCanRead();

    return myModuleReference;
  }

  //----save

  //todo move to EditableModule class
  public ModuleDescriptor getModuleDescriptor() {
    assertCanRead();

    return null;
  }

  //todo should be replaced with events
  public void setModuleDescriptor(ModuleDescriptor moduleDescriptor, boolean reloadClasses) {
    assertCanChange();
    setChanged();
    dependenciesChanged();
  }

  @Override
  public void setChanged() {
    assertCanChange();
    myChanged = true;
  }

  @Override
  public void save() {
    assertCanChange();
    myChanged = false;
  }

  //----adding different deps

  public void addDependency(@NotNull SModuleReference moduleRef, boolean reexport) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    for (Dependency dep : descriptor.getDependencies()) {
      if (!EqualUtil.equals(dep.getModuleRef(), moduleRef)) continue;

      if (reexport && !dep.isReexport()) {
        dep.setReexport(true);
        dependenciesChanged();
        setChanged();
      }
      return;
    }

    Dependency dep = new Dependency();
    dep.setModuleRef((SModuleReference) moduleRef);
    dep.setReexport(reexport);
    descriptor.getDependencies().add(dep);

    dependenciesChanged();
    setChanged();
  }

  public void removeDependency(@NotNull Dependency dependency) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    if (!descriptor.getDependencies().contains(dependency)) return;

    descriptor.getDependencies().remove(dependency);

    dependenciesChanged();
    setChanged();
  }

  public void addUsedLanguage(SModuleReference langRef) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    if (descriptor.getUsedLanguages().contains(langRef)) return;

    descriptor.getUsedLanguages().add(langRef);

    dependenciesChanged();
    setChanged();
  }

  public void removeUsedLanguage(SModuleReference langRef) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    if (!descriptor.getUsedLanguages().contains(langRef)) return;

    descriptor.getUsedLanguages().remove(langRef);

    dependenciesChanged();
    setChanged();
  }

  public void addUsedDevkit(SModuleReference devkitRef) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    if (descriptor.getUsedDevkits().contains(devkitRef)) return;

    descriptor.getUsedDevkits().add(devkitRef);

    dependenciesChanged();
    setChanged();
  }

  public void removeUsedDevkit(SModuleReference devkitRef) {
    assertCanChange();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;
    if (!descriptor.getUsedDevkits().contains(devkitRef)) return;

    descriptor.getUsedDevkits().remove(devkitRef);

    dependenciesChanged();
    setChanged();
  }

  //----get deps

  @Deprecated
  public final DependenciesManager getDependenciesManager() {
    assertCanRead();
    throw new UnsupportedOperationException();
  }

  public final List<Dependency> getDependencies() {
    assertCanRead();
    List<Dependency> dependencies = new ArrayList<Dependency>();
    for (SDependency dependency : getDeclaredDependencies()) {
      if (dependency instanceof SDependencyAdapter) {
        dependencies.add(((SDependencyAdapter) dependency).getOriginalDependency());
      }
    }
    return dependencies;
  }

  //----languages & devkits

  @Deprecated
  public final Collection<SModuleReference> getUsedLanguagesReferences() {
    assertCanRead();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return Collections.emptySet();
    return Collections.unmodifiableCollection(descriptor.getUsedLanguages());
  }

  public Collection<SModuleReference> getUsedDevkitReferences() {
    assertCanRead();
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return Collections.emptySet();
    return Collections.unmodifiableCollection(descriptor.getUsedDevkits());
  }

  //----stubs


  public static Collection<String> getStubPaths(ModuleDescriptor descriptor) {
    if (descriptor != null) {
      return descriptor.getAdditionalJavaStubPaths();
    }

    return Collections.emptySet();
  }

  //----classpath
  //todo check this code. Wy not to do it where we add jars?
  protected void updatePackagedDescriptorClasspath() {
    if (!isPackaged()) return;

    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) return;

    final IFile bundleHomeFile = FileSystem.getInstance().getBundleHome(getDescriptorFile());
    if (bundleHomeFile == null) return;

    IFile bundleParent = bundleHomeFile.getParent();
    if (bundleParent == null || !bundleParent.exists()) return;

    String packagedSourcesPath = getModuleSourceDir() != null ? getModuleSourceDir().getPath() : null;

    boolean addBundleAsModelRoot = false;
    final DeploymentDescriptor dd = descriptor.getDeploymentDescriptor();
    String libPath = dd == null ? FileUtil.getCanonicalPath(PathManager.getHomePath() + File.separator + "lib").toLowerCase() : null;

    // stub libraries
    List<String> toRemovePaths = new ArrayList<String>();
    for (String path : descriptor.getAdditionalJavaStubPaths()) {
      String canonicalPath = FileUtil.getCanonicalPath(path).toLowerCase();
      if (packagedSourcesPath == null || !canonicalPath.startsWith(packagedSourcesPath)) {
        String shrinked = MacrosFactory.forModule(this).shrinkPath(path);
        if (MacrosFactory.containsNonMPSMacros(shrinked)) continue;
      }
      if (dd == null && canonicalPath.startsWith(libPath)) {
        continue;
      }
      toRemovePaths.add(path);
    }
    descriptor.getAdditionalJavaStubPaths().removeAll(toRemovePaths);

    // stub model roots
    List<ModelRootDescriptor> toRemove = new ArrayList<ModelRootDescriptor>();
    for (ModelRootDescriptor mrd : descriptor.getModelRootDescriptors()) {
      if (!mrd.getType().equals(PersistenceRegistry.JAVA_CLASSES_ROOT)) continue;
      String path = mrd.getMemento().get("path");
      String canonicalPath = FileUtil.getCanonicalPath(path).toLowerCase();

      String suffix = descriptor.getCompileInMPS() ? CLASSES_GEN : CLASSES;
      if (canonicalPath.endsWith(suffix)) {
        IFile parent = dd == null ? getDescriptorFile().getParent() : ModulesMiner.getRealDescriptorFile(this);
        if (dd != null && parent != null) {
          parent = parent.getParent();
        }
        IFile classes = parent != null ? parent.getDescendant(suffix) : null;
        addBundleAsModelRoot = classes != null && FileUtil.getCanonicalPath(classes.getPath()).equalsIgnoreCase(canonicalPath);
      } else if (FileUtil.getCanonicalPath(bundleHomeFile.getPath()).equalsIgnoreCase(canonicalPath)) {
        addBundleAsModelRoot = true;
      }

      if (packagedSourcesPath == null || !canonicalPath.startsWith(packagedSourcesPath)) {
        String shrinked = MacrosFactory.forModule(this).shrinkPath(path);
        if (MacrosFactory.containsNonMPSMacros(shrinked)) continue;
      }
      if (dd == null && canonicalPath.startsWith(libPath)) {
        continue;
      }
      toRemove.add(mrd);
    }
    descriptor.getModelRootDescriptors().removeAll(toRemove);

    if (addBundleAsModelRoot) {
      descriptor.getModelRootDescriptors().add(ModelRootDescriptor.getJavaStubsModelRoot(bundleHomeFile.getPath()));
    }
    if (dd == null) {
      return;
    }

    for (String jarFile : dd.getLibraries()) {
      IFile jar = jarFile.startsWith("/")
          ? FileSystem.getInstance().getFileByPath(PathManager.getHomePath() + jarFile)
          : bundleParent.getDescendant(jarFile);
      if (jar.exists()) {
        String path = jar.getPath();
        descriptor.getAdditionalJavaStubPaths().add(path);
        descriptor.getModelRootDescriptors().add(ModelRootDescriptor.getJavaStubsModelRoot(path));
      }
    }
  }


//----

  @Override
  public Iterable<ModelRoot> getModelRoots() {
    assertCanRead();
    return Collections.unmodifiableCollection(mySModelRoots);
  }

  protected void reloadAfterDescriptorChange() {
    updatePackagedDescriptorClasspath();
    updateFacets();
    updateModelsSet();
  }

  protected void collectFacetTypes(Set<String> types) {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return;
    }

    types.addAll(FacetsFacade.getInstance().getApplicableFacetTypes(
        new TranslatingIterator<SModuleReference, String>(descriptor.getUsedLanguages().iterator()) {
          @Override
          protected String translate(SModuleReference node) {
            return node.getModuleName();
          }
        }));

    // TODO: why java module facet by default?
    types.add(JavaModuleFacet.FACET_TYPE);
  }

  protected ModuleFacetBase setupFacet(ModuleFacetBase facet, Memento memento) {
    if (!facet.setModule(this)) {
      return null;
    }
    facet.load(memento != null ? memento : new MementoImpl());
    facet.attach();
    return facet;
  }

  private void updateFacets() {
    ModelAccess.assertLegalWrite();

    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return;
    }

    for (ModuleFacetBase facet : myFacets) {
      facet.dispose();
    }
    myFacets.clear();

    Map<String, Memento> config = new HashMap<String, Memento>();
    for (ModuleFacetDescriptor facetDescriptors : descriptor.getModuleFacetDescriptors()) {
      config.put(facetDescriptors.getType(), facetDescriptors.getMemento());
    }

    Set<String> types = new HashSet<String>();
    collectFacetTypes(types);

    for (String facetType : types) {
      FacetFactory factory = FacetsFacade.getInstance().getFacetFactory(facetType);
      if (factory == null) {
        LOG.error("no registered factory for a facet with type=`" + facetType + "'");
        continue;
      }
      SModuleFacet newFacet = factory.create();
      if (!(newFacet instanceof ModuleFacetBase)) {
        LOG.error("broken facet factory: " + factory.getClass().getName());
        continue;
      }

      ModuleFacetBase facet = (ModuleFacetBase) newFacet;
      Memento m = config.get(facetType);
      facet = setupFacet(facet, m);
      if (facet != null) {
        myFacets.add(facet);
      }
    }
  }

  public void onModuleLoad() {
    updateSModelReferences();
    updateModuleReferences();
  }

  @Override
  public boolean isReadOnly() {
    assertCanRead();
    return isPackaged();
  }

  @Override
  public boolean isPackaged() {
    assertCanRead();
    return getModuleSourceDir() == null || FileSystem.getInstance().isPackaged(getModuleSourceDir());
  }

  public final List<SModel> getOwnModelDescriptors() {
    assertCanRead();
    return getModels();
  }

  @Override
  public List<SModel> getModels() {
    assertCanRead();
    return SModelRepository.getInstance().getModelDescriptors(this);
  }

  /**
   * Module sources folder
   * In case of working on sources == dir with module descriptor
   * In case of working on distribution = {module-name}-src.jar/module/
   * In case of Generator = sourceLanguage.getModuleSourceDir()
   * ${module} expands to this method
   */
  public IFile getModuleSourceDir() {
    return myDescriptorFile != null ? myDescriptorFile.getParent() : null;
  }

  public IFile getDescriptorFile() {
    assertCanRead();
    return myDescriptorFile;
  }

  @NotNull
  public IScope getScope() {
    assertCanRead();
    return myScope;
  }

  public void attach() {
    if (myDescriptorFile != null) {
      FileSystem.getInstance().addListener(this);
    }
  }

  @Override
  public IFile getFileToListen() {
    return myDescriptorFile;
  }

  @Override
  public Iterable<FileSystemListener> getListenerDependencies() {
    List<FileSystemListener> listeners = new ArrayList<FileSystemListener>();
    for (MPSModuleOwner owner : MPSModuleRepository.getInstance().getOwners(this)) {
      if (owner instanceof FileSystemListener) {
        listeners.add((FileSystemListener) owner);
      }
    }
    return listeners.isEmpty() ? null : listeners;
  }

  @Override
  public void update(ProgressMonitor monitor, FileSystemEvent event) {
    for (IFile file : event.getRemoved()) {
      if (file.equals(myDescriptorFile)) {
        ModuleRepositoryFacade.getInstance().removeModuleForced(this);
        return;
      }
    }
    for (IFile file : event.getChanged()) {
      if (file.equals(myDescriptorFile)) {
        SModuleOperations.reloadFromDisk(this);
        return;
      }
    }
  }

  public void dispose() {
    assertCanChange();
    FileSystem.getInstance().removeListener(this);
    for (ModuleFacetBase f : myFacets) {
      f.dispose();
    }
    myFacets.clear();
    for (ModelRoot m : mySModelRoots) {
      ((ModelRootBase) m).dispose();
    }
    mySModelRoots.clear();
    SModelRepository.getInstance().unRegisterModelDescriptors(this);
  }

  public List<String> getSourcePaths() {
    assertCanRead();
    return new ArrayList<String>(SModuleOperations.getAllSourcePaths(this));
  }

  public void updateModelsSet() {
    doUpdateModelsSet();
  }

  protected Iterable<ModelRoot> loadRoots() {
    ModuleDescriptor descriptor = getModuleDescriptor();
    if (descriptor == null) {
      return Collections.emptyList();
    }

    List<ModelRoot> result = new ArrayList<ModelRoot>();
    for (ModelRootDescriptor modelRoot : descriptor.getModelRootDescriptors()) {
      try {
        ModelRootFactory modelRootFactory = PersistenceFacade.getInstance().getModelRootFactory(modelRoot.getType());
        if (modelRootFactory == null) {
          LOG.error("Unknown model root type: `" + modelRoot.getType() + "'. Requested by: " + this);
          continue;
        }

        ModelRoot root = modelRootFactory.create();
        root.load(modelRoot.getMemento());
        result.add(root);
      } catch (Exception e) {
        LOG.error("Error loading models from root with type: `" + modelRoot.getType() + "'. Requested by: " + this, e);
      }
    }
    return result;
  }

  private void doUpdateModelsSet() {
    ModelAccess.assertLegalWrite();

    Set<ModelRoot> toRemove = new HashSet<ModelRoot>(mySModelRoots);
    Set<ModelRoot> toUpdate = new HashSet<ModelRoot>(mySModelRoots);

    for (ModelRoot root : loadRoots()) {
      try {
        if (mySModelRoots.contains(root)) {
          toRemove.remove(root);
        } else {
          ModelRootBase rootBase = (ModelRootBase) root;
          rootBase.setModule(this);
          mySModelRoots.add(root);
          rootBase.attach();
        }
      } catch (Exception e) {
        LOG.error("Error loading models from root `" + root.getPresentation() + "'. Requested by: " + this, e);
      }
    }
    toUpdate.removeAll(toRemove);

    for (ModelRoot modelRoot : toRemove) {
      ((ModelRootBase) modelRoot).dispose();
    }
    mySModelRoots.removeAll(toRemove);
    for (ModelRoot modelRoot : toUpdate) {
      ((ModelRootBase) modelRoot).update();
    }
  }

  @Deprecated
  public IFile getBundleHome() {
    return FileSystem.getInstance().getBundleHome(getDescriptorFile());
  }

  public final boolean needReloading() {
    return ModelAccess.instance().runReadAction(new Computable<Boolean>() {
      @Override
      public Boolean compute() {
        return SModuleOperations.needReloading(AbstractModule.this);
      }
    });
  }

  @Deprecated
  public final void reloadFromDisk(boolean reloadClasses) {
    SModuleOperations.reloadFromDisk(this, reloadClasses);
  }

  public static void handleReadProblem(AbstractModule module, Exception e, boolean isInConflict) {
    SuspiciousModelHandler.getHandler().handleSuspiciousModule(module, isInConflict);
    LOG.error(e.getMessage());
    e.printStackTrace();
  }

  public void updateSModelReferences() {
    if (getModuleDescriptor() == null) return;
    if (getModuleDescriptor().updateModelRefs()) {
      setChanged();
    }
  }

  public void updateModuleReferences() {
    if (getModuleDescriptor() == null) return;
    if (getModuleDescriptor().updateModuleRefs()) {
      setChanged();
    }
  }

  protected void dependenciesChanged() {
    // todo: review all usages after migration!

    // callback on dependencies (any of them) changed event
    // you can override this method with some invalidation action
    // call super.dependenciesChanged() at the end

    // todo: as we haven't dependencies listeners...
    // todo: maybe add ClassLoaderManager.getInstance().unloadClasses(this module) here

    myScope.invalidateCaches();
  }

  protected ModuleDescriptor loadDescriptor() {
    return null;
  }

  protected ModuleScope createScope() {
    return new ModuleScope();
  }

  @Override
  public boolean isChanged() {
    return myChanged;
  }

  @Nullable
  @Override
  public <T extends SModuleFacet> T getFacet(Class<T> clazz) {
    for (SModuleFacet facet : myFacets) {
      if (clazz.isInstance(facet)) {
        return (T) facet;
      }
    }
    return null;
  }

  @Override
  public Iterable<SModuleFacet> getFacets() {
    return Collections.<SModuleFacet>unmodifiableSet(myFacets);
  }

  public class ModuleScope extends DefaultScope {
    protected ModuleScope() {
    }

    public AbstractModule getModule() {
      return AbstractModule.this;
    }

    @Override
    protected Set<SModule> getInitialModules() {
      Set<SModule> result = new HashSet<SModule>();
      result.add(AbstractModule.this);
      return result;
    }

    @Override
    protected Set<Language> getInitialUsedLanguages() {
      HashSet<Language> result = new HashSet<Language>(ModuleUtil.refsToLanguages(getUsedLanguagesReferences()));

      if (AbstractModule.this instanceof Language) {
        result.add((Language) AbstractModule.this);
        result.addAll(ModuleUtil.refsToLanguages(Collections.singletonList(BootstrapLanguages.DESCRIPTOR)));
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

  public IFile getOutputPath() {
    return ProjectPathUtil.getGeneratorOutputPath(getModuleSourceDir(), getModuleDescriptor());
  }

  // deprecated part
  @Deprecated
  public final void invalidateCaches() {
    dependenciesChanged();
  }

  @Deprecated
  public final void invalidateDependencies() {
    dependenciesChanged();
  }

  @Deprecated
  public final String getModuleFqName() {
    return getModuleName();
  }

  @Deprecated
  public final Collection<String> getIndexablePaths() {
    return SModuleOperations.getIndexablePaths(this);
  }

  /**
   * Do nothing. If you need it please vote and add comment to MPS-17524
   */
  @Deprecated
  public static void registerModelCreationListener(ModelCreationListener listener) {
  }

  /**
   * Do nothing. If you need it please vote and add comment to MPS-17524
   */
  @Deprecated
  public static void unregisterModelCreationListener(ModelCreationListener creationListener) {
  }

  /**
   * @see SModuleOperations#createModelWithAdjustments
   */
  @Deprecated
  public final EditableSModelDescriptor createModel(String name, @NotNull ModelRoot root, ModelAdjuster adj) {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final String getOutputFor(SModel model) {
    return SModuleOperations.getOutputPathFor(model);
  }

  @Deprecated
  public final String getGeneratorOutputPath() {
    IFile outputPath = getOutputPath();
    return outputPath != null ? outputPath.getPath() : null;
  }

  @Deprecated
  public final String getTestsGeneratorOutputPath() {
    TestsFacet testsFacet = this.getFacet(TestsFacet.class);
    if (testsFacet == null) {
      return null;
    }
    IFile testsOutputPath = testsFacet.getTestsOutputPath();
    if (testsOutputPath == null) {
      return null;
    }
    return testsOutputPath.getPath();
  }

  @Deprecated
  public final Collection<SModel> getImplicitlyImportedModelsFor(SModel sm) {
    return Collections.emptyList();
  }

  @Deprecated
  public final Collection<Language> getImplicitlyImportedLanguages(SModel sm) {
    return Collections.emptyList();
  }

  // JavaModuleFacet
  @Deprecated
  public final boolean isCompileInMPS() {
    return SModuleOperations.isCompileInMps(this);
  }

  @Deprecated
  public final IClassPathItem getClassPathItem() {
    return JavaModuleOperations.createClassPathItem(getJavaFacet(this).getClassPath(), getModuleName());
  }

  @Deprecated
  public final Collection<String> getClassPath() {
    return getJavaFacet(this).getClassPath();
  }

  @Deprecated
  public final Collection<String> getAdditionalClassPath() {
    return getJavaFacet(this).getLibraryClassPath();
  }

  @Deprecated
  public final Collection<String> getOwnClassPath() {
    IFile classesGen = getJavaFacet(this).getClassesGen();
    return classesGen != null ? Collections.singleton(classesGen.getPath()) : Collections.<String>emptySet();
  }

  @Deprecated
  public static IClassPathItem getDependenciesClasspath(Set<SModule> modules, boolean includeStubSolutions) {
    return SModuleOperations.getDependenciesClasspath(modules, includeStubSolutions);
  }

  @Deprecated
  public final IClassPathItem getModuleWithDependenciesClassPathItem() {
    return SModuleOperations.getModuleWithDependenciesClassPathItem(this);
  }

  @Deprecated
  public final boolean reloadClassesAfterGeneration() {
    return ClassLoaderManager.getInstance().canLoad(this);
  }

  @Deprecated
  public final Class getClass(String className) {
    return ClassLoaderManager.getInstance().getClass(this, className);
  }

  /**
   * This method do nothing actually
   */
  @Deprecated
  protected final void invalidateClassPath() {
  }

  @Deprecated
  public final IFile getClassesGen() {
    return getJavaFacet(this).getClassesGen();
  }

  protected void assertCanRead() {
//    if (myRepository == null) return;
//    if (myRepository instanceof DisposedRepository) {
//      showDisposedMessage();
//      return;
//    }
//
//    synchronized (REPO_LOCK) {
//      if (myRepository == null) return;
//      if (myRepository instanceof DisposedRepository) {
//        showDisposedMessage();
//        return;
//      }
//      myRepository.getModelAccess().checkReadAccess();
//    }
  }

  protected void assertCanChange() {
//    if (myRepository == null) return;
//    if (myRepository instanceof DisposedRepository) {
//      showDisposedMessage();
//      return;
//    }
//
//    synchronized (REPO_LOCK) {
//      if (myRepository == null) return;
//      if (myRepository instanceof DisposedRepository) {
//        showDisposedMessage();
//        return;
//      }
//      myRepository.getModelAccess().checkWriteAccess();
//      if (!UndoHelper.getInstance().isInsideUndoableCommand()) {
//        throw new IllegalModelChangeError("registered model can only be modified inside undoable command");
//      }
//    }
  }

  private void showDisposedMessage() {
    if (ourErroredModules.add(getModuleName())) {
      LOG.error(new IllegalModelAccessError("Accessing disposed model " + getModuleName()));
    }
  }
}
