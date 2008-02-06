package jetbrains.mps.project;

import jetbrains.mps.component.ContextImpl;
import jetbrains.mps.component.IContext;
import jetbrains.mps.components.IContainer;
import jetbrains.mps.components.IExternalizableComponent;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.generator.generationTypes.GenerateFilesAndClassesGenerationType;
import jetbrains.mps.helgins.inference.TypeChecker;
import jetbrains.mps.ide.AbstractProjectFrame;
import jetbrains.mps.ide.BootstrapLanguages;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.ProjectPathsDialog;
import jetbrains.mps.ide.action.ActionManager;
import jetbrains.mps.ide.command.CommandEventTranslator;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.undo.UndoManager;
import jetbrains.mps.ide.genconf.GenParameters;
import jetbrains.mps.ide.genconf.GeneratorConfigUtil;
import jetbrains.mps.ide.messages.IMessageHandler;
import jetbrains.mps.ide.messages.Message;
import jetbrains.mps.ide.preferences.IComponentWithPreferences;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.library.LibraryManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugin.IProjectHandler;
import jetbrains.mps.plugin.MPSPlugin;
import jetbrains.mps.plugins.PluginManager;
import jetbrains.mps.projectLanguage.DescriptorsPersistence;
import jetbrains.mps.projectLanguage.structure.*;
import jetbrains.mps.reloading.ReloadUtils;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.IDisposable;
import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.make.ModuleMaker;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.osgi.framework.internal.core.BundleLoader;
import org.eclipse.osgi.internal.baseadaptor.DefaultClassLoader;
import org.jdom.Document;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.io.PrintStream;
import java.rmi.RemoteException;
import java.util.*;

/**
 * Author: Sergey Dmitriev
 * Created Apr 29, 2004
 */
public class MPSProject implements ModelOwner, MPSModuleOwner, IContainer, IComponentWithPreferences {
  public static final String COMPONENTS = "components";
  public static final String COMPONENT = "component";
  public static final String CLASS = "class";
  public static final String BUNDLE = "bundle";

  private static final Logger LOG = Logger.getLogger(MPSProject.class);

  private File myWorkspaceFile;
  private File myProjectFile;

  private ProjectDescriptor myProjectDescriptor;
  private List<Solution> mySolutions = new ArrayList<Solution>();
  private List<Language> myLanguages = new ArrayList<Language>();

  private List<DevKit> myDevKits = new ArrayList<DevKit>();

  private ProjectScope myScope = new ProjectScope();

  private IContext myContext = new ContextImpl(ApplicationComponents.getInstance().getContext());

  private List<IMPSProjectCommandListener> myProjectCommandListeners = new ArrayList<IMPSProjectCommandListener>();
  private ProjectEventTranslator myEventTranslator;
  private PluginManager myPluginManager = new PluginManager(this);

  public MPSProject(final @NotNull File projectFile) {
    myContext.register(MPSProject.class, this);
    myContext.register(GeneratorManager.class);

    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        myProjectFile = projectFile;
        SModel model = ProjectModels.createDescriptorFor(MPSProject.this).getSModel();
        model.setLoading(true);
        myProjectDescriptor = DescriptorsPersistence.loadProjectDescriptor(new File(FileUtil.getCanonicalPath(projectFile)), model);

        MPSProjects projects = myContext.get(MPSProjects.class);
        projects.addProject(MPSProject.this);

        LOG.assertLog(myProjectDescriptor.isRoot(), "Project descriptor has to be root");

        readModules();

        ReloadUtils.reloadAll(true, false);
        readModelsFromModules();

        for (IModule m : getModules()) {
          m.convert();
        }

        model.setLoading(false);

        myContext.init();
      }
    });


    myEventTranslator = new ProjectEventTranslator();
    CommandProcessor.instance().addCommandListener(myEventTranslator);
  }

  public IScope getScope() {
    return myScope;
  }

  public IContext getContext() {
    return myContext;
  }

  public void update() {
    setProjectDescriptor(getProjectDescriptor());
  }


  public PluginManager getPluginManager() {
    return myPluginManager;
  }

  private void readModules() {
    // load solutions
    mySolutions = new LinkedList<Solution>();
    for (SolutionPath solutionPath : CollectionUtil.iteratorAsIterable(myProjectDescriptor.projectSolutions())) {
      String path = solutionPath.getPath();
      if (path == null) {
        LOG.error("Solution path is null");
        continue;
      }
      IFile descriptorFile = FileSystem.getFile(path);
      if (!descriptorFile.getName().endsWith(".msd")) {
        LOG.error("Couldn't load solution from: " + descriptorFile.getAbsolutePath() + " : '*.msd' file expected");
      } else if (descriptorFile.exists()) {
        mySolutions.add((Solution) MPSModuleRepository.getInstance().registerSolution(descriptorFile, this));
      } else {
        LOG.error("Couldn't load solution from: " + descriptorFile.getAbsolutePath() + " : file doesn't exist");
      }
    }

    // load languages
    myLanguages = new LinkedList<Language>();
    for (LanguagePath languagePath : CollectionUtil.iteratorAsIterable(myProjectDescriptor.projectLanguages())) {
      IFile descriptorFile = FileSystem.getFile(languagePath.getPath());
      if (!descriptorFile.getName().endsWith(".mpl")) {
        LOG.error("Couldn't load language from: " + descriptorFile.getAbsolutePath() + " : '*.mpl' file expected");
      } else if (descriptorFile.exists()) {
        myLanguages.add(MPSModuleRepository.getInstance().registerLanguage(descriptorFile, this));
      } else {
        LOG.error("Couldn't load language from: " + descriptorFile.getAbsolutePath() + " : file doesn't exist");
      }
    }

    //load devkits
    myDevKits = new LinkedList<DevKit>();
    for (DevKitPath dk : myProjectDescriptor.getProjectDevkits()) {
      IFile devKit = FileSystem.getFile(dk.getPath());
      if (!devKit.getName().endsWith(".devkit")) {
        LOG.error("Couldn't load devkit from: " + devKit.getAbsolutePath() + " : '*.devkit' file expected");
      } else if (devKit.exists()) {
        myDevKits.add(MPSModuleRepository.getInstance().registerDevKit(devKit, this));
      } else {
        LOG.error("Couldn't load devkit from: " + devKit.getAbsolutePath() + " : file doesn't exist");
      }
    }


    for (Library l : myProjectDescriptor.getLibrarys()) {
      String name = l.getName();
      jetbrains.mps.library.Library lib = ApplicationComponents.getInstance().getComponentSafe(LibraryManager.class).get(name);
      if (lib != null) {
        MPSModuleRepository.getInstance().readModuleDescriptors(FileSystem.getFile(lib.getPath()), this);
      } else {
        LOG.error("Can't find a global library " + name);
      }
    }
  }

  @Nullable
  public Solution findSolution(String name) {
    for (Solution s : mySolutions) {
      if (name.equals(s.getSolutionDescriptor().getName())) return s;
    }
    return null;
  }

  @NotNull
  public List<IModule> getModules() {
    List<IModule> result = new ArrayList<IModule>();
    result.addAll(myLanguages);
    result.addAll(mySolutions);
    result.addAll(myDevKits);
    return result;
  }

  private void readModelsFromModules() {
    for (IModule m : getModules()) {
      m.readModels();
    }
  }

  public void setProjectDescriptor(final @NotNull ProjectDescriptor newDescriptor) {
    // release languages/solutions and models (except descriptor model)
    SModelDescriptor modelDescriptor = SModelRepository.getInstance().getModelDescriptor(newDescriptor.getModel().getUID(), (ModelOwner) MPSProject.this);
    assert modelDescriptor != null;
    MPSModuleRepository.getInstance().unRegisterModules(MPSProject.this);
    SModelRepository.getInstance().unRegisterModelDescriptors(MPSProject.this);
    SModelRepository.getInstance().registerModelDescriptor(modelDescriptor, MPSProject.this);

    myProjectDescriptor = newDescriptor;

    LOG.assertLog(myProjectDescriptor.isRoot(), "Project descriptor has to be root");

    readModules();
    ReloadUtils.reloadAll(true);
    readModelsFromModules();

    myEventTranslator.projectChanged();
  }

  public void addProjectLanguage(@NotNull Language language) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);
    LanguagePath languagePath = LanguagePath.newInstance(model);
    IFile descriptorFile = language.getDescriptorFile();
    assert descriptorFile != null;
    languagePath.setPath(descriptorFile.getAbsolutePath());
    projectDescriptor.addProjectLanguage(languagePath);
    setProjectDescriptor(projectDescriptor);
    myEventTranslator.projectChanged();
  }

  public void removeProjectLanguage(@NotNull Language language) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);
    IFile descriptorFile = language.getDescriptorFile();
    assert descriptorFile != null;
    String absolutePath = descriptorFile.getAbsolutePath();
    for (LanguagePath languagePath : projectDescriptor.getProjectLanguages()) {
      if (languagePath.getPath().equals(absolutePath)) {
        languagePath.delete();
      }
    }
    setProjectDescriptor(projectDescriptor);
    myEventTranslator.projectChanged();
  }

  @NotNull
  public Solution addProjectSolution(@NotNull File solutionDescriptionFile) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);

    SolutionPath solutionPath = null;
    for (SolutionPath p : getProjectDescriptor().getProjectSolutions()) {
      if (p.getPath().equals(solutionDescriptionFile.getPath())) {
        solutionPath = p;
        break;
      }
    }

    if (solutionPath == null) {
      solutionPath = SolutionPath.newInstance(model);
      solutionPath.setPath(solutionDescriptionFile.getAbsolutePath());
      projectDescriptor.addProjectSolution(solutionPath);
    }

    setProjectDescriptor(projectDescriptor);

    for (Solution s : getProjectSolutions()) {
      IFile descriptorFile = s.getDescriptorFile();
      assert descriptorFile != null;
      if (descriptorFile.getAbsolutePath().equals(solutionDescriptionFile.getAbsolutePath())) {
        return s;
      }
    }

    throw new RuntimeException("it can't happen");
  }

  public void removeProjectSolution(@NotNull Solution solution) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);
    IFile descriptorFile = solution.getDescriptorFile();
    assert descriptorFile != null;
    String absolutePath = descriptorFile.getAbsolutePath();
    for (SolutionPath solutionPath : projectDescriptor.getProjectSolutions()) {
      if (solutionPath.getPath().equals(absolutePath)) {
        solutionPath.delete();
      }
    }
    setProjectDescriptor(projectDescriptor);
    myEventTranslator.projectChanged();
  }

  public void addProjectDevKit(@NotNull IFile devKitDescriptorFile) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);

    DevKitPath devKitPath = DevKitPath.newInstance(model);
    devKitPath.setPath(devKitDescriptorFile.getAbsolutePath());
    projectDescriptor.addProjectDevkit(devKitPath);

    setProjectDescriptor(projectDescriptor);

    myEventTranslator.projectChanged();
  }

  public void removeProjectDevKit(@NotNull DevKit devkit) {
    ProjectDescriptor projectDescriptor = getProjectDescriptor();
    SModel model = projectDescriptor.getModel();
    model.setLoading(true);
    IFile descriptorFile = devkit.getDescriptorFile();
    assert descriptorFile != null;
    String absolutePath = descriptorFile.getAbsolutePath();
    for (DevKitPath devKitPath : projectDescriptor.getProjectDevkits()) {
      if (devKitPath.getPath().equals(absolutePath)) {
        devKitPath.delete();
      }
    }
    setProjectDescriptor(projectDescriptor);
    myEventTranslator.projectChanged();
  }

  @NotNull
  public String toString() {
    return "MPSProject file: " + (myProjectFile == null ? "<none>" : myProjectFile.toString());
  }

  @NotNull
  public File getProjectFile() {
    return myProjectFile;
  }

  public boolean hasIDEAProject() {
    return getProjectHandler() != null;
  }

  @Nullable
  public IProjectHandler getProjectHandler() {
    File projectFile = getProjectFile().getParentFile();
    String projectPath = projectFile.getAbsolutePath();
    return MPSPlugin.getInstance().getProjectHandler(projectPath);
  }

  @Nullable
  public File getIDEAProjectFile() {
    return findIDEAProject(getProjectFile().getParentFile());
  }

  @Nullable
  private File findIDEAProject(@NotNull File directory) {
    if (directory.listFiles() == null) return null;

    for (File file : directory.listFiles()) {
      if (file.isFile() && file.getName().endsWith(".ipr")) {
        if (MPSPlugin.getInstance().getProjectHandler(file.getAbsolutePath()) != null) {
          return file;
        }
      }
    }

    if (directory.getParentFile() != null) {
      return findIDEAProject(directory.getParentFile());
    }

    return null;
  }

  public void addLanguageRoot(@NotNull String languagePath) {
    LanguagePath path = LanguagePath.newInstance(getProjectDescriptor().getModel());
    path.setPath(languagePath);
    getProjectDescriptor().addProjectLanguage(path);
  }

  public String getFolderFor(IModule module) {
    IFile file = module.getDescriptorFile();
    assert file != null;
    String path = FileUtil.getCanonicalPath(file.getAbsolutePath());
    for (SolutionPath sp : myProjectDescriptor.getProjectSolutions()) {
      if (path.equals(sp.getPath())) {
        return sp.getFolder();
      }
    }

    for (LanguagePath lp : myProjectDescriptor.getProjectLanguages()) {
      if (path.equals(lp.getPath())) {
        return lp.getFolder();
      }
    }

    for (DevKitPath dp : myProjectDescriptor.getProjectDevkits()) {
      if (path.equals(dp.getPath())) {
        return dp.getFolder();
      }
    }

    return null;
  }

  public void setFolderFor(IModule module, String newFolder) {
    IFile file = module.getDescriptorFile();
    assert file != null;
    String path = FileUtil.getCanonicalPath(file.getAbsolutePath());
    for (SolutionPath sp : myProjectDescriptor.getProjectSolutions()) {
      if (path.equals(sp.getPath())) {
        sp.setFolder(newFolder);
        return;
      }
    }

    for (LanguagePath lp : myProjectDescriptor.getProjectLanguages()) {
      if (path.equals(lp.getPath())) {
        lp.setFolder(newFolder);
        return;
      }
    }

    for (DevKitPath dp : myProjectDescriptor.getProjectDevkits()) {
      if (path.equals(dp.getPath())) {
        dp.setFolder(newFolder);
        return;
      }
    }
  }

  @NotNull
  public ProjectDescriptor getProjectDescriptor() {
    return myProjectDescriptor;
  }

  @NotNull
  public List<Language> getProjectLanguages() {
    return Collections.unmodifiableList(myLanguages);
  }

  @NotNull
  public List<Solution> getProjectSolutions() {
    return Collections.unmodifiableList(mySolutions);
  }

  @NotNull
  public List<DevKit> getProjectDevKits() {
    return Collections.unmodifiableList(myDevKits);
  }

  public boolean isProjectModule(@NotNull IModule module) {
    if (module instanceof Language) {
      return myLanguages.contains((Language) module);
    }
    if (module instanceof Solution) {
      return mySolutions.contains((Solution) module);
    }
    if (module instanceof DevKit) {
      return myDevKits.contains((DevKit) module);
    }
    return false;
  }

  @NotNull
  public List<Object> getComponents() {
    return new ArrayList<Object>(myContext.getComponents());
  }

  public boolean containsComponent(Class<?> cls) {
    return myContext.getComponentInterfaces().contains(cls);
  }

  public IOperationContext createOperationContext() {
    return new ProjectOperationContext(this);
  }

  @Nullable
  public <T> T getComponent(Class<T> clazz) {
    return myContext.get(clazz);
  }

  @NotNull
  public <T> T getComponentSafe(Class<T> clz) {
    T result = getComponent(clz);
    if (result == null) throw new RuntimeException("Can't find a component " + clz.getName());
    return result;
  }

  public void addComponent(@NotNull Class interfaceClass, @NotNull Object instance) {
    myContext.register(interfaceClass, instance);
  }

  public void removeComponent(Class interfaceClass) {
    myContext.unregister(interfaceClass);
  }

  @NotNull
  public File getClassGenPath() {
    return new File(myProjectFile.getParentFile(), "classes_gen");
  }

  @NotNull
  public List<String> getClassPath() {
    List<String> classpath = new LinkedList<String>();

    File file = new File(myProjectFile.getParent(), "classes");
    if (file.exists()) {
      classpath.add(FileUtil.getCanonicalPath(file));
    }

    if (getClassGenPath().exists()) {
      classpath.add(FileUtil.getCanonicalPath(getClassGenPath()));
    }

    if (myProjectDescriptor.getAutoImportFromIDEA()) {
      IProjectHandler handler = getProjectHandler();
      if (handler != null) {
        try {
          classpath.addAll(handler.getModuleClassPath(getProjectFile().getAbsolutePath()));
        } catch (RemoteException e) {
          LOG.error(e);
        }
      }
    }

    return classpath;
  }

  public void readWorkspaceSettings() {
    String projectFileName = myProjectFile.getName();
    int dotIndex = projectFileName.lastIndexOf('.');
    String mwsFileName = projectFileName.substring(0, dotIndex) + ".mws";
    myWorkspaceFile = new File(myProjectFile.getParent(), mwsFileName);

    if (IdeMain.isTestMode()) return;
    try {
      if (myWorkspaceFile.exists()) {
        Document document = JDOMUtil.loadDocument(myWorkspaceFile);
        Element rootElement = document.getRootElement();
        List<Element> components = rootElement.getChildren(COMPONENT);
        for (Element component : components) {
          String className = component.getAttributeValue(CLASS);
          String bundle = component.getAttributeValue(BUNDLE);

          IModule module = MPSModuleRepository.getInstance().getModuleByUID(bundle);


          Class cls = null;
          if (module != null) {
            cls = module.getClass(className);
          } else {
            try {
              cls = Class.forName(className);
            } catch (ClassNotFoundException cnfe) {
            }
          }


          if (cls != null) {
            if (containsComponent(cls) && getComponent(cls) instanceof IExternalizableComponent) {
              try {
                ((IExternalizableComponent) getComponentSafe(cls)).read(component, this);
              } catch (Exception e) {
                LOG.error(e);
              }
            }
          } else {
            LOG.error("Can't find a class " + className + " in module " + module);
          }
        }
      }
    } catch (Exception e) {
      LOG.error(e);
    }
  }

  public void saveModels() {
    ApplicationComponents.getInstance().getComponentSafe(SModelRepository.class).saveAll();
  }

  public void save() {
    if (IdeMain.isTestMode()) return;

    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        DescriptorsPersistence.saveProjectDescriptor(myProjectFile, myProjectDescriptor);

        if (myWorkspaceFile != null) {
          try {
            if (!myWorkspaceFile.exists()) {
              myWorkspaceFile.createNewFile();
            }
            Element root = new Element(COMPONENTS);
            for (Class cls : myContext.getComponentInterfaces()) {
              Object component = myContext.get(cls);
              if (component instanceof IExternalizableComponent) {
                Element componentElement = new Element(COMPONENT);
                componentElement.setAttribute(CLASS, cls.getName());

                if (component.getClass().getClassLoader() instanceof DefaultClassLoader) {
                  DefaultClassLoader bcl = (DefaultClassLoader) component.getClass().getClassLoader();

                  //todo this is definitely a hack but I found no other way to
                  //todo find a name of a bundle by its class loader
                  String repr = bcl.getDelegate().toString();
                  int indexOfUnderscore = repr.lastIndexOf('_');
                  assert indexOfUnderscore != -1;
                  String name = repr.substring(0, indexOfUnderscore);
                  componentElement.setAttribute(BUNDLE, name);
                }

                try {
                  ((IExternalizableComponent) component).write(componentElement, MPSProject.this);
                } catch (Exception e) {
                  LOG.error(e);
                }
                root.addContent(componentElement);
              }
            }
            Document document = new Document(root);
            JDOMUtil.writeDocument(document, myWorkspaceFile);
          } catch (Exception e) {
            LOG.error(e);
          }
        }
      }
    });
  }

  public void dispose() {
    dispose(true);
  }

  public void dispose(final boolean reloadAll) {
    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        MPSProjects projects = ApplicationComponents.getInstance().getComponentSafe(MPSProjects.class);
        projects.removeProject(MPSProject.this);

        // We have to remove transient because they might depend on modules from project
        // and these module might get unloaded. In this case we will have can't satisfy
        // dependency error.
        MPSModuleRepository.getInstance().removeTransientModules();

        myPluginManager.disposePlugins();

        for (Object pc : getComponents()) {
          if (pc instanceof IDisposable) {
            try {
              ((IDisposable) pc).dispose();
            } catch (Throwable t) {
              LOG.error(t);
            }
          }
        }

        CommandProcessor.instance().removeCommandListener(myEventTranslator);
        MPSModuleRepository.getInstance().unRegisterModules(MPSProject.this);
        SModelRepository.getInstance().unRegisterModelDescriptors(MPSProject.this);

        TypeChecker.getInstance().clearForReload();
        UndoManager.instance().clear();
        ActionManager.instance().clearAll();

        MPSModuleRepository.getInstance().removeUnusedModules();
        SModelRepository.getInstance().removeUnusedDescriptors();
        if (reloadAll) {
          ReloadUtils.reloadAll(true);
        }
      }
    });
  }


  @Nullable
  public Solution getSolutionForModel(@NotNull SModelDescriptor md) {
    Set<Solution> owners = SModelRepository.getInstance().getOwners(md, Solution.class);
    for (Solution s : mySolutions) {
      if (owners.contains(s)) return s;
    }
    return null;
  }

  @Nullable
  public Language getLanguageForModel(@NotNull SModelDescriptor md) {
    Set<Language> owners = SModelRepository.getInstance().getOwners(md, Language.class);
    for (Language l : myLanguages) {
      if (owners.contains(l)) return l;
    }
    return null;
  }

  public void addMPSProjectCommandListener(@NotNull IMPSProjectCommandListener listener) {
    myProjectCommandListeners.add(listener);
  }

  public void removeMPSProjectCommandListener(@NotNull IMPSProjectCommandListener listener) {
    myProjectCommandListeners.remove(listener);
  }

  void fireMPSProjectChangedInCommand() {
    for (IMPSProjectCommandListener listener : new ArrayList<IMPSProjectCommandListener>(myProjectCommandListeners)) {
      listener.projectChangedInCommand(this);
    }
  }

  public void make(final IAdaptiveProgressMonitor monitor) {
    final Set<IModule> modulesToBuild = new LinkedHashSet<IModule>();

    modulesToBuild.addAll(getProjectSolutions());
    modulesToBuild.addAll(getProjectLanguages());
    modulesToBuild.addAll(getProjectDevKits());

    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        new ModuleMaker().make(modulesToBuild, monitor);
        ReloadUtils.reloadAll(true);
      }
    });
  }

  public static class TestResult {
    public List<String> myGenerationErrors;
    public List<String> myGenerationWarnings;
    public List<String> myCompilationProblems;

    public TestResult(List<String> generationErrors, List<String> generationWarnings, List<String> compilationProblems) {
      this.myGenerationErrors = generationErrors;
      this.myGenerationWarnings = generationWarnings;
      this.myCompilationProblems = compilationProblems;
    }

    public boolean isOk() {
      return !hasGenerationErrors() && !hasCompilationProblems();
    }

    public int warningsStartsWith(String warn) {
      int i = 0;
      for (String w : myGenerationWarnings) {
        if (w.startsWith(warn)) {
          i++;
        }
      }

      return i;
    }

    public boolean hasGenerationErrors() {
      return myGenerationErrors.size() != 0;
    }

    public boolean hasGenerationWarnings() {
      return myGenerationWarnings.size() != 0;
    }

    public boolean hasCompilationProblems() {
      return myCompilationProblems.size() != 0;
    }

    public void dump(PrintStream out) {
      out.println("[Test Resuls]============================================================");

      if (hasGenerationErrors()) {
        out.println("Generation errors:");
        for (String e : myGenerationErrors) {
          out.println("  " + e);
        }
      } else {
        out.println("No generation errors.");
      }
      out.println("");

      if (hasGenerationWarnings()) {
        out.println("Generation warnings:");
        for (String w : myGenerationWarnings) {
          out.println("  " + w);
        }
      } else {
        out.println("No generation warnings.");
      }
      out.println("");

      if (hasCompilationProblems()) {
        out.println("Compilation problems:");
        for (String c : myCompilationProblems) {
          out.println("  " + c);
        }
      } else {
        out.println("No compilation problems.");
      }
      out.println("=========================================================================");
    }

  }

  //todo find a better place for this method
  public TestResult testProject() {
    CommandProcessor.instance().executeLightweightCommand(new Runnable() {
      public void run() {
        getPluginManager().reloadPlugins();
      }
    });

    final List<String> errors = new ArrayList<String>();
    final List<String> warnings = new ArrayList<String>();

    final IMessageHandler handler = new IMessageHandler() {
      public void handle(Message msg) {
        final String message = msg.getText();
        switch (msg.getKind()) {
          case ERROR:
            errors.add(msg.getText());
            LOG.error(message);
            break;

          case WARNING:
            warnings.add(msg.getText());
            LOG.warning(message);
            break;

          case INFORMATION:
            LOG.info(message);
            break;

        }
      }
    };

    final GenerateFilesAndClassesGenerationType generationType = new GenerateFilesAndClassesGenerationType(false) {
      public boolean requiresCompilationInIDEABeforeGeneration() {
        return false;
      }

      public boolean requiresCompilationInIDEAfterGeneration() {
        return false;
      }

      protected boolean isPutClassesOnTheDisk() {
        return false;
      }
    };

    final List<String> compilationResults = new ArrayList<String>();

    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        List<BaseGeneratorConfiguration> configurations = new ArrayList<BaseGeneratorConfiguration>(myProjectDescriptor.getRunConfigurations());

        if (myProjectDescriptor.getTestAllLanguages()) {
          for (Language l : getProjectLanguages()) {
            LanguageGeneratorConfiguration conf = LanguageGeneratorConfiguration.newInstance(myProjectDescriptor.getModel());            
            conf.setLanguageNamespace(l.getNamespace());
            configurations.add(conf);
          }
        }



        for (BaseGeneratorConfiguration t : configurations) {

          System.out.println("completed : " + configurations.indexOf(t) + " / " + configurations.size());

          GenParameters parms;
          try {
            parms = GeneratorConfigUtil.calculate(MPSProject.this, t);
          } catch (GeneratorConfigUtil.GeneratorConfigurationException e) {
            errors.add("Can't create a generator configuration : " + e.getMessage());
            return;
          }

          GeneratorManager gm = getComponentSafe(GeneratorManager.class);
          gm.generateModels(
                  parms.getModels(),
                  parms.getTarget(),
                  new ModuleContext(parms.getModule(), MPSProject.this),
                  generationType,
                  parms.getScript(),
                  IAdaptiveProgressMonitor.NULL_PROGRESS_MONITOR,
                  handler,
                  gm.isSaveTransientModels());

          compilationResults.addAll(createCompilationProblemsList(generationType.compile(IAdaptiveProgressMonitor.NULL_PROGRESS_MONITOR)));

          System.out.println("");
          System.out.println("");
          System.out.println("");
        }
      }
    });

    return new TestResult(errors, warnings, compilationResults);
  }

  private List<String> createCompilationProblemsList(List<CompilationResult> compilationResults) {
    List<String> res = new ArrayList<String>();

    for (CompilationResult r : compilationResults) {
      if (r.getErrors() != null) {
        for (CategorizedProblem p : r.getErrors()) {
          res.add(new String(
                  r.getCompilationUnit().getFileName()) +
                  " (" + p.getSourceLineNumber() + "): " +
                  p.getMessage());
        }
      }
    }

    return res;
  }

  @NotNull
  public List<IPreferencesPage> createPreferencesPages() {
    return CollectionUtil.asList((IPreferencesPage) new ProjectPathsDialog(getComponent(AbstractProjectFrame.class), this, new ProjectOperationContext(this)).createPreferencesPage());
  }

  public void invalidateCaches() {
    myScope.invalidateCaches();
  }

  private class ProjectEventTranslator extends CommandEventTranslator {
    protected void fireCommandEvent() {
      fireMPSProjectChangedInCommand();
    }

    public void projectChanged() {
      markCurrentCommandsDirty();
    }
  }

  //TODO: make private (was made visible for usages view to save view scope by Mihail Muhin)
  public class ProjectScope extends BaseScope {
    public ModelOwner getModelOwner() {
      return MPSProject.this;
    }



    protected Set<IModule> getInitialModules() {
      Set<IModule> result = new HashSet<IModule>();
      result.addAll(getProjectSolutions());
      for (Language l : getProjectLanguages()) {
        result.add(l);
        result.addAll(l.getGenerators());
      }

      result.addAll(getProjectDevKits());
      return result;
    }
  }
}             
