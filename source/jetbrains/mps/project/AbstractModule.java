package jetbrains.mps.project;

import jetbrains.mps.ide.BootstrapLanguages;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.projectLanguage.structure.ModuleReference;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.smodel.persistence.ModelRootsUtil;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.runtime.BytecodeLocator;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.reloading.CompositeClassPathItem;
import jetbrains.mps.reloading.JarFileClassPathItem;
import jetbrains.mps.reloading.FileClassPathItem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Igoor
 * Date: Sep 9, 2005
 * Time: 2:17:14 PM
 * To change this template use File | Settings | File Templates.
 */
public abstract class AbstractModule implements IModule {
  private static final Logger LOG = Logger.getLogger(AbstractModule.class);

  private ModelRoot myClassPathModelRoot;
  private boolean myModelsRead = false;
  private boolean myInitialized = false;
  protected File myDescriptorFile;

  private MyScope myScope = new MyScope();

  private IClassPathItem myClassPathItem;

  //
  // IScope
  //

  public void convert() {
    
  }

  @NotNull
  public String getModuleUID() {
    return toString();
  }

  @Nullable
  protected Language getLanguage(@NotNull String languageNamespace, @NotNull Set<IModule> modulesToSkip, boolean suppressWarnings) {
    Language language = MPSModuleRepository.getInstance().getLanguage(languageNamespace, BootstrapLanguages.getInstance());
    if (language != null) return language;
    language = getLanguage_internal(languageNamespace, modulesToSkip, this);
    if (language == null && !suppressWarnings) {
      LOG.errorWithTrace("couldn't find language: \"" + languageNamespace + "\" in scope: " + this);
    }
    return language;
  }

  @Nullable
  private static Language getLanguage_internal(String languageNamespace, Set<IModule> processedModules, IModule dependentModule) {
    processedModules.add(dependentModule);
    if (dependentModule instanceof Language && dependentModule.getModuleUID().equals(languageNamespace)) {
      return (Language) dependentModule;
    }
    Language language = MPSModuleRepository.getInstance().getLanguage(languageNamespace, dependentModule);
    if (language != null) {
      return language;
    }

    List<IModule> dependOnModules = dependentModule.getDependOnModules();
    for (IModule module : dependOnModules) {
      if (!(processedModules.contains(module))) {
        language = getLanguage_internal(languageNamespace, processedModules, module);
        if (language != null) break;
      }
    }
    return language;
  }

  @NotNull
  public List<Language> getOwnLanguages() {
    return new LinkedList<Language>(MPSModuleRepository.getInstance().getLanguages(this));
  }


  @NotNull
  public final List<IModule> getOwnModules() {
    return new LinkedList<IModule>(MPSModuleRepository.getInstance().getModules(this));
  }


  /**
   * @return all depends-on modules recursively + bootstrap languages
   */
  @NotNull
  public <T extends IModule> Set<T> getAllDependOnModules(@NotNull Class<T> cls) {
    Set<T> modules = new HashSet<T>();
    collectAllExplicitlyDependOnModules(this, modules, cls);

    // add bootstrap languages
    if (Language.class.isAssignableFrom(cls)) {
      Set<Language> languages = BootstrapLanguages.getInstance().getLanguages();
      for (Language language : languages) {
        //noinspection SuspiciousMethodCalls
        if (!modules.contains(language)) {
          modules.add((T) language);
          collectAllExplicitlyDependOnModules(language, modules, cls);
        }
      }
    }

    return modules;
  }

  private static <T extends IModule> void collectAllExplicitlyDependOnModules(
          @NotNull IModule dependentModule,
          @NotNull Set<T> modules,
          @NotNull Class<T> cls) {
    List<IModule> dependOnModules = dependentModule.getExplicitlyDependOnModules();
    for (IModule dependOnModule : dependOnModules) {
      //noinspection SuspiciousMethodCalls
      if (cls.isInstance(dependOnModule) && !modules.contains(dependOnModule)) {
        modules.add((T) dependOnModule);
        collectAllExplicitlyDependOnModules(dependOnModule, modules, cls);
      }
    }
  }

  @NotNull
  public List<SModelDescriptor> getOwnModelDescriptors() {
    List<SModelDescriptor> modelDescriptors = SModelRepository.getInstance().getModelDescriptors(this);
    return modelDescriptors;
  }

  @Nullable
  public File getClassesGen() {
    File descriptorFile = getDescriptorFile();

    if (descriptorFile == null) {
      return null;
    }

    File current = descriptorFile.getParentFile();
    while (current != null) {
      File classesDir = new File(current, "classes");
      if (classesDir.exists()) {
        return classesDir;
      }
      current = current.getParentFile();
    }

    return null;
  }

  //
  // AbstractModule
  //
  @NotNull
  private SModelDescriptor getModuleDescriptorModel() {
    SModel model = getModuleDescriptor().getModel();
    SModelDescriptor result = model.getModelDescriptor();
    assert result != null;
    return result;
  }

  @NotNull
  public List<ModelRoot> getDefaultModelRoots() {
    List<ModelRoot> result = new ArrayList<ModelRoot>();
    if (myClassPathModelRoot == null) {

      myClassPathModelRoot = ModelRoot.newInstance(getModuleDescriptorModel().getSModel());
      myClassPathModelRoot.setPrefix("");
      myClassPathModelRoot.setPath("");

      myClassPathModelRoot.setHandlerClass("jetbrains.mps.conversion.classpath.ClassPathModelRootManager");

    }
    result.add(myClassPathModelRoot);
    return result;
  }

  @NotNull
  public final List<ModelRoot> getModelRoots() {
    List<ModelRoot> result = new ArrayList<ModelRoot>();

    result.addAll(getDefaultModelRoots());
    result.addAll(getNonDefaultModelRoots());

    return result;
  }

  @NotNull
  public List<ModelRoot> getNonDefaultModelRoots() {
    return CollectionUtil.iteratorAsList(getModuleDescriptor().modelRoots());
  }

  /**
   * @return all modules which this explicitly and immediately depends on,
   *         i.e. without bootstrap languages, if such a dependency is not explicitly set in module roots
   */
  @NotNull
  public List<IModule> getExplicitlyDependOnModules() {
    LinkedList<IModule> result = new LinkedList<IModule>(getOwnModules());
    if (getModuleDescriptor() != null) {
      for (ModuleReference mr : getModuleDescriptor().getDependencys()) {
        IModule m = MPSModuleRepository.getInstance().getModuleByUID(mr.getName());
        if (m != null) {
          result.add(m);
        } else {
          LOG.error("Can't load module " + mr.getName());
        }
      }
    }
    return result;
  }

  /**
   * @return all modules which this immediately depends on, bootstrap languages in their number.
   */
  @NotNull
  public final List<IModule> getDependOnModules() {
    return appendBootstrapLanguages(getExplicitlyDependOnModules());
  }

  @NotNull
  protected static List<IModule> appendBootstrapLanguages(@NotNull List<IModule> list) {
    Set<Language> languages = BootstrapLanguages.getInstance().getLanguages();
    for (Language language : languages) {
      if (!list.contains(language)) {
        list.add(language);
      }
    }
    return list;
  }

  public void registerModelDescriptor(@NotNull SModelDescriptor modelDescriptor) {
    SModelRepository.getInstance().registerModelDescriptor(modelDescriptor, this);
  }

  public void unRegisterModelDescriptor(@NotNull SModelDescriptor modelDescriptor) {
    SModelRepository.getInstance().unRegisterModelDescriptor(modelDescriptor, this);
  }

  @NotNull
  public SModelDescriptor createModel(@NotNull SModelUID uid, @NotNull ModelRoot root) {
    IModelRootManager manager = ModelRootsUtil.getManagerFor(root);

    if (!manager.isNewModelsSupported()) {
      LOG.error("Trying to create model root manager in root which doesn't support new models");
    }

    return manager.createNewModel(root, uid, this);
  }

  @Nullable
  public File getDescriptorFile() {
    return myDescriptorFile;
  }

  public IScope getScope() {
    return myScope;
  }


  protected void readDependOnModules() {
    MPSModuleRepository.getInstance().readModuleDescriptors(getModuleDescriptor().moduleRoots(), this);
  }

  public void readModels() {
    if (!myModelsRead) {
      myModelsRead = true;
      for (IModule im : MPSModuleRepository.getInstance().getModules(this)) {
        im.readModels();
      }

      for (ModelRoot modelRoot : getModelRoots()) {
        try {
          IModelRootManager manager = ModelRootsUtil.getManagerFor(modelRoot);
          manager.read(modelRoot, this);
        } catch (Exception e) {
          LOG.error("Error loading models from root: prefix: \"" + modelRoot.getPrefix() + "\" path: \"" + modelRoot.getPath() + "\". Requested by: " + this, e);
        }
      }

      myInitialized = true;
    }
  }

  public Set<IModule> getVisibleModules() {
    Set<IModule> result = getExplicitlyVisibleModules();
    myScope.collectModules(result);
    return result;
  }

  @NotNull
  public List<String> getClassPathItems() {
    ArrayList<String> result = new ArrayList<String>();
    File classesGen = getClassesGen();

    if (classesGen != null && classesGen.exists()) {
      result.add(classesGen.getAbsolutePath());
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

  public Set<IModule> getExplicitlyVisibleModules() {
    return new HashSet<IModule>(getExplicitlyDependOnModules());
  }

  /**
   * Call this method after you have set module descriptor
   */
  public void updateClassPath() {
    CompositeClassPathItem result = new CompositeClassPathItem();
    for (String s : getClassPathItems()) {
      if (!new File(s).exists()) {
        LOG.error("Classpath item doesn't exist " + s);
        continue;
      }
      if (new File(s).isDirectory()) {
        result.add(new FileClassPathItem(s));
      } else {
        result.add(new JarFileClassPathItem(s));
      }
    }

    myClassPathItem = result;
  }

  public IClassPathItem getClasspath() {
    return myClassPathItem;
  }

  public BytecodeLocator getByteCodeLocator() {
    return new BytecodeLocator() {
      public byte[] find(String fqName) {
        assert myClassPathItem != null;
        return myClassPathItem.getClass(fqName);
      }
    };
  }

  public void invalidateCaches() {
    myScope.invalidateCaches();
  }

  private class MyScope extends BaseScope {
    protected ModelOwner getModelOwner() {
      return AbstractModule.this;
    }

    protected Set<IModule> doGetVisibleModules() {
      Set<IModule> result = AbstractModule.this.getVisibleModules();
      result.add(AbstractModule.this);
      return result;
    }

    public String toString() {
      return "Scope of module " + AbstractModule.this;
    }
  }    
}
