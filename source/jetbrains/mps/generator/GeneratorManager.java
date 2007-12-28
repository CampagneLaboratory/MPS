package jetbrains.mps.generator;

import jetbrains.mps.components.IExternalizableComponent;
import jetbrains.mps.generator.fileGenerator.IFileGenerator;
import jetbrains.mps.generator.generationTypes.GenerateFilesGenerationType;
import jetbrains.mps.generator.generationTypes.FileGenerationUtil;
import jetbrains.mps.generator.template.Statistics;
import jetbrains.mps.helgins.inference.NodeTypesComponentsRepository;
import jetbrains.mps.helgins.inference.TypeChecker;
import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.BootstrapLanguages;
import jetbrains.mps.ide.AbstractProjectFrame;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.messages.*;
import jetbrains.mps.ide.modelchecker.ModelCheckResult;
import jetbrains.mps.ide.modelchecker.ModelChecker;
import jetbrains.mps.ide.preferences.IComponentWithPreferences;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.progress.AdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.NullAdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.util.ModelsProgressUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.make.ModuleMaker;
import jetbrains.mps.plugin.CompilationResult;
import jetbrains.mps.plugin.IProjectHandler;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.project.Solution;
import jetbrains.mps.reloading.ReloadUtils;
import jetbrains.mps.smodel.*;
import jetbrains.mps.transformation.TLBase.structure.MappingConfiguration;
import jetbrains.mps.util.CollectionUtil;
import org.jdom.Element;

import javax.swing.JOptionPane;
import java.io.File;
import java.util.*;
import java.util.concurrent.*;


/**
 * @author Kostik
 */
public class GeneratorManager implements IExternalizableComponent, IComponentWithPreferences {
  // progress monitor
  public static final int AMOUNT_PER_MODEL = 100;
  public static final int AMOUNT_PER_COMPILATION = 100;

  public static final Logger LOG = Logger.getLogger(GeneratorManager.class);

  private static final String SAVE_TRANSIENT_MODELS = "save-transient-models-on-generation";
  private static final String DUMP_STATISTICS = "dump-staticstics-on-generation";
  private static final String COMPILE_BEFORE_GENERATION = "compile-before-generation";
  private static final String COMPILE_ON_GENERATION = "compile-on-generation";
  private static final String COMPILE_SOURCE_LANGUAGES_MODULES = "compile-source-languages-modules";
  private static final String CHECK_BEFORE_COMPILATION = "check-before-compilation";

  private boolean myCompileBeforeGeneration = false;
  private boolean myCompileOnGeneration = true;
  private boolean mySaveTransientModels;
  private boolean myDumpStatistics = false;
  private boolean myCompileSourceLanguageModules = false;
  private boolean myCheckBeforeCompilation = false;
  private List<IFileGenerator> myFileGenerators = new LinkedList<IFileGenerator>();

  private ExecutorService myExecutorService = Executors.newCachedThreadPool();

  public GeneratorManager() {
  }

  public void addFileGenerator(IFileGenerator fileGenerator) {
    myFileGenerators.add(fileGenerator);
  }

  public void removeFileGenerator(IFileGenerator fileGenerator) {
    myFileGenerators.remove(fileGenerator);
  }

  public void read(Element element, MPSProject project) {
    if (element.getAttribute(COMPILE_BEFORE_GENERATION) != null) {
      myCompileBeforeGeneration = Boolean.parseBoolean(element.getAttributeValue(COMPILE_BEFORE_GENERATION));
    }
    if (element.getAttribute(COMPILE_ON_GENERATION) != null) {
      myCompileOnGeneration = Boolean.parseBoolean(element.getAttributeValue(COMPILE_ON_GENERATION));
    }
    if (element.getAttribute(SAVE_TRANSIENT_MODELS) != null) {
      mySaveTransientModels = Boolean.parseBoolean(element.getAttributeValue(SAVE_TRANSIENT_MODELS));
    }
    if (element.getAttribute(DUMP_STATISTICS) != null) {
      myDumpStatistics = Boolean.parseBoolean(element.getAttributeValue(DUMP_STATISTICS));
    }
    if (element.getAttribute(COMPILE_SOURCE_LANGUAGES_MODULES) != null) {
      myCompileSourceLanguageModules = Boolean.parseBoolean(element.getAttributeValue(COMPILE_SOURCE_LANGUAGES_MODULES));
    }
    if (element.getAttribute(CHECK_BEFORE_COMPILATION) != null) {
      myCheckBeforeCompilation = Boolean.parseBoolean(element.getAttributeValue(CHECK_BEFORE_COMPILATION));
    }
  }

  public void write(Element element, MPSProject project) {
    element.setAttribute(COMPILE_BEFORE_GENERATION, "" + myCompileBeforeGeneration);
    element.setAttribute(COMPILE_ON_GENERATION, "" + myCompileOnGeneration);
    element.setAttribute(SAVE_TRANSIENT_MODELS, "" + mySaveTransientModels);
    element.setAttribute(DUMP_STATISTICS, "" + myDumpStatistics);
    element.setAttribute(COMPILE_SOURCE_LANGUAGES_MODULES, "" + myCompileSourceLanguageModules);
    element.setAttribute(CHECK_BEFORE_COMPILATION, "" + myCheckBeforeCompilation);
  }

  public boolean isCompileBeforeGeneration() {
    return myCompileBeforeGeneration;
  }

  public void setCompileBeforeGeneration(boolean compileBeforeGeneration) {
    myCompileBeforeGeneration = compileBeforeGeneration;
  }

  public boolean isCompileOnGeneration() {
    return myCompileOnGeneration;
  }

  public void setCompileOnGeneration(boolean compileOnGeneration) {
    myCompileOnGeneration = compileOnGeneration;
  }

  public boolean isSaveTransientModels() {
    return mySaveTransientModels;
  }

  public void setSaveTransientModels(boolean saveTransientModels) {
    mySaveTransientModels = saveTransientModels;
  }

  public boolean isDumpStatistics() {
    return myDumpStatistics;
  }

  public void setDumpStatistics(boolean dumpStatistics) {
    myDumpStatistics = dumpStatistics;
  }

  public boolean isCompileSourceLanguageModules() {
    return myCompileSourceLanguageModules;
  }

  public void setCompileSourceLanguageModules(boolean compileSourceLanguageModules) {
    myCompileSourceLanguageModules = compileSourceLanguageModules;
  }

  public boolean isCheckBeforeCompilation() {
    return myCheckBeforeCompilation;
  }

  public void setCheckBeforeCompilation(boolean checkBeforeCompilation) {
    myCheckBeforeCompilation = checkBeforeCompilation;
  }

  public IPreferencesPage createPreferencesPage() {
    return new GeneratorManagerPreferencesPage(this);
  }

  public IGenerationType getDefaultModuleGenerationType() {
    return IGenerationType.FILES;
  }

  /**
   * todo: what about massage handler?
   */
  private void clearMessageVew(MPSProject project) {
    MessageView messageView = project.getComponent(MessageView.class);
    if (messageView != null) {
      messageView.clear();
    }
  }

  /**
   * todo: what about massage handler?
   */
  private void showMessageView(MPSProject project) {
    MessageView messageView = project.getComponent(MessageView.class);
    if (messageView != null) {
      messageView.show(true);
    }
  }

  /**
   * todo Move it to a better place
   */
  public IFileGenerator chooseFileGenerator(SNode outputRootNode, SNode originalInputNode) {
    for (IFileGenerator fileGenerator : myFileGenerators) {
      if (fileGenerator.overridesDefault(outputRootNode, originalInputNode)) {
        return fileGenerator;
      }
    }

    for (IFileGenerator fileGenerator : myFileGenerators) {
      if (fileGenerator.isDefault(outputRootNode)) {
        return fileGenerator;
      }
    }
    return null;
  }

  public static List<Language> getPossibleTargetLanguages(List<SModel> sourceModels, IScope scope) {
    List<Language> targetLanguages = new LinkedList<Language>();
    for (SModel sourceModel : sourceModels) {
      List<Generator> generators = getPossibleGenerators(sourceModel, scope);
      for (Generator gen : generators) {
        if (!targetLanguages.contains(gen.getTargetLanguage())) {
          targetLanguages.add(gen.getTargetLanguage());
        }
      }
    }
    return targetLanguages;
  }

  public static List<Language> getPossibleSourceLanguages(List<SModel> sourceModels, IScope scope) {
    List<Language> result = new ArrayList<Language>();
    for (SModel sm : sourceModels) {
      for (Generator g : getPossibleGenerators(sm, scope)) {
        result.add(g.getSourceLanguage());
      }
    }
    return result;
  }

  public static List<Generator> getPossibleGenerators(SModel sourceModel, IScope scope) {
    List<Generator> result = new LinkedList<Generator>();
    List<Language> languages = sourceModel.getLanguages(scope);
    for (Language sourceLanguage : languages) {
      List<Generator> generators = sourceLanguage.getGenerators();
      for (Generator generator : generators) {
        Language targetLanguage = generator.getTargetLanguage();
        if (targetLanguage != null && !result.contains(generator)) {
          if (targetLanguage == sourceLanguage) {
            // only take self-generators with 'mapping configuration'.
            // otherwise it is pure 'rewriting' generator - it's target language is not target of generation
            if (!containsMappingConfiguration(generator)) continue;
          }
          result.add(generator);
        }
      }
    }
    return result;
  }

  private static boolean containsMappingConfiguration(Generator generator) {
    for (SModelDescriptor templateModel : generator.getOwnTemplateModels()) {
      if (templateModel.getSModel().allAdapters(MappingConfiguration.class).size() > 0) {
        return true;
      }
    }
    return false;
  }

  protected Object clone() throws CloneNotSupportedException {
    return super.clone();
  }

  public void generateModelsFromDifferentModules(final IOperationContext operationContext, final List<SModelDescriptor> modelDescriptors, final IGenerationType generationType) {
    new Thread() {
      public void run() {
        try {
          GeneratorManager generatorManager = operationContext.getComponent(GeneratorManager.class);
          List<SModel> models = toModels(modelDescriptors);

          for (int i = 0; i < models.size(); i++) {
            SModel model = models.get(i);
            final boolean last = i == models.size() - 1;

            Future<Boolean> f = generatorManager.generateModelsWithProgressWindow(
                    CollectionUtil.asList(model),
                    BootstrapLanguages.getInstance().getBaseLanguage(),
                    models.size() == 1 ? operationContext : ModuleContext.create(model, operationContext.getComponent(AbstractProjectFrame.class), false),
                    new GenerationTypeWrapper(generationType) {
                      public boolean requiresCompilationInIDEAfterGeneration() {
                        return super.requiresCompilationInIDEAfterGeneration() && last;
                      }
                    },
                    IGenerationScript.DEFAULT,
                    false);

            Boolean result = f.get();
            if (!result) {
              return;
            }
          }
        } catch (InterruptedException e) {
          LOG.error(e);
        } catch (ExecutionException e) {
          LOG.error(e);
        }
      }
    }.start();
  }

  private List<SModel> toModels(List<SModelDescriptor> models) {
    List<SModel> result = new ArrayList<SModel>();
    for (SModelDescriptor sm : models) {
      result.add(sm.getSModel());
    }
    return result;
  }
   
  public Future<Boolean> generateModelsWithProgressWindow(final List<SModel> sourceModels,
                                               final Language targetLanguage,
                                               final IOperationContext invocationContext,
                                               final IGenerationType generationType,
                                               final IGenerationScript script,
                                               boolean closeOnExit) {

    final AdaptiveProgressMonitor progress = new AdaptiveProgressMonitor(invocationContext.getComponent(IDEProjectFrame.class), closeOnExit);

    final DefaultMessageHandler messages = new DefaultMessageHandler(invocationContext.getProject());

    // confirm saving transient models
    final boolean saveTransientModels;
    if (isSaveTransientModels()) {
      Object[] options = {"Yes",
              "Not this time",
              "No, and cancel saving"};
      int option = JOptionPane.showOptionDialog(invocationContext.getMainFrame(),
              "Would you like to save transient models?",
              "",
              JOptionPane.YES_NO_CANCEL_OPTION,
              JOptionPane.QUESTION_MESSAGE,
              null,
              options,
              options[0]);

      if (option == JOptionPane.YES_OPTION) {
        saveTransientModels = true;
      } else {
        saveTransientModels = false;
        if (option == JOptionPane.CANCEL_OPTION) {
          setSaveTransientModels(false);
        }
      }
    } else {
      saveTransientModels = false;
    }

    return myExecutorService.submit(new Callable<Boolean>() {
      public Boolean call() throws Exception {
        boolean result = generateModels(sourceModels, targetLanguage, invocationContext, generationType, script, progress, messages, saveTransientModels);
        progress.finishAnyway();
        return result;
      }
    });
  }

  /**
   * @return false if canceled
   */
  public boolean generateModels(final List<SModel> inputModels,
                             final Language targetLanguage,
                             final IOperationContext invocationContext,
                             final IGenerationType generationType,
                             final IGenerationScript script,
                             final IAdaptiveProgressMonitor progress,
                             final IMessageHandler messages,
                             final boolean saveTransientModels) {
    final boolean[] result = new boolean[1];
    CommandProcessor.instance().executeGenerationCommand(new Runnable() {
      public void run() {
        result[0] = generateModels_internal(inputModels, targetLanguage, invocationContext, generationType, script, progress, messages, saveTransientModels);
      }
    });
    return result[0];
  }

  /**
   * @return false if canceled
   */
  private boolean generateModels_internal(List<SModel> _sourceModels,
                                       Language targetLanguage,
                                       IOperationContext invocationContext,
                                       IGenerationType generationType,
                                       IGenerationScript script,
                                       IAdaptiveProgressMonitor progress,
                                       IMessageHandler messages,
                                       boolean saveTransientModels) {

    List<SModelDescriptor> sourceModels = new ArrayList<SModelDescriptor>();
    for (SModel model : _sourceModels) {
      sourceModels.add(model.getModelDescriptor());
    }

    boolean compile = (
            (myCompileOnGeneration && generationType.requiresCompilationInIDEAfterGeneration())
                    || (myCompileBeforeGeneration && generationType.requiresCompilationInIDEABeforeGeneration()));

    long totalJob = ModelsProgressUtil.estimateTotalGenerationJobMillis(compile, !invocationContext.getModule().isCompileInMPS(), sourceModels);
    progress.startTaskAnyway("generating", null, totalJob);

    MPSModuleRepository.getInstance().removeTransientModules();
    MPSProject project = invocationContext.getProject();
    IProjectHandler projectHandler = project.getProjectHandler();
    showMessageView(project);

    project.saveModels();

    clearMessageVew(project);
    messages.handle(new Message(MessageKind.INFORMATION, generationType.getStartText()));

    String outputFolder = invocationContext.getModule().getGeneratorOutputPath();
    if (!new File(outputFolder).exists()) {
      new File(outputFolder).mkdirs();

      try {
        projectHandler.addSourceRoot(outputFolder);
      } catch (Exception e) {
        messages.handle(new Message(MessageKind.WARNING, "Can't add output folder to IDEA as sources"));
      }
    }

    messages.handle(new Message(MessageKind.INFORMATION, "    target root folder: \"" + outputFolder + "\""));

    boolean ideaPresent = projectHandler != null;

    try {
      boolean reloadClasses = true;
      if (!myCompileBeforeGeneration || !generationType.requiresCompilationInIDEABeforeGeneration()) {
        progress.addText("compilation in IntelliJ IDEA before generation is turned off or not needed");
        reloadClasses = false;
      } else if (!ideaPresent) {
        progress.addText("IntelliJ IDEA with installed MPS is not present");
      } else {
        // -- compile sources before generation
        checkMonitorCanceled(progress);

        progress.startLeafTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
        projectHandler.refreshFS();
        progress.finishTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
        checkMonitorCanceled(progress);

        progress.startLeafTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
        CompilationResult compilationResult;
        IModule module = invocationContext.getModule();
        if (module.isCompileInMPS()) {
          progress.addText("compiling output module in JetBrains MPS...");
          compilationResult = new ModuleMaker().make(CollectionUtil.asSet(module), new NullAdaptiveProgressMonitor());
        } else {
          progress.addText("compiling output module in IntelliJ IDEA...");
          compilationResult = projectHandler.buildModule(outputFolder);
        }
        progress.addText("" + compilationResult);
        if (!compilationResult.isOk()) {
          reloadClasses = false;
        }

        boolean needCompileSourceLanguageModules = false;
        if (invocationContext instanceof ModuleContext) {
          ModuleContext ctx = (ModuleContext) invocationContext;
          if (ctx.getModule() instanceof Solution) {
            needCompileSourceLanguageModules = true;
          }
        }

        if (myCompileSourceLanguageModules && needCompileSourceLanguageModules) {
          //todo get rid of
          for (Language l : getPossibleSourceLanguages(_sourceModels, invocationContext.getScope())) {
            progress.addText("compiling " + l + "'s  module...");
            compilationResult = projectHandler.buildModule(l.getSourceDir().getPath());
            progress.addText("" + compilationResult);

            if (!compilationResult.isOk()) {
              reloadClasses = false;
            }
          }
        }

        progress.finishTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
        checkMonitorCanceled(progress);
      }

      // re-load classes anyway (to be sure that java_stub are up-to-date)
      if (reloadClasses) {
        progress.addText("reloading MPS classes...");
        progress.startLeafTask(ModelsProgressUtil.TASK_NAME_RELOAD_ALL);
        ReloadUtils.reloadAll(false);
        progress.finishTask(ModelsProgressUtil.TASK_NAME_RELOAD_ALL);
        checkMonitorCanceled(progress);
      }

      //++ generation
      GenerationStatus status = null;
      Statistics.setEnabled(Statistics.TPL, isDumpStatistics());
      IGenerationSession generationSession = new GenerationSession(invocationContext, saveTransientModels, progress, messages);
      try {
        Logger.addLoggingHandler(generationSession.getLoggingHandler());
        TypeChecker.getInstance().setIncrementalMode(false);
        TypeChecker.getInstance().setGenerationMode(true);
        for (SModelDescriptor sourceModelDescriptor : sourceModels) {
          progress.addText("");

          if (myCheckBeforeCompilation) {
            progress.addText("Checking model \"" + sourceModelDescriptor.getModelUID() + "\"... ");
            ModelCheckResult result = new ModelChecker(invocationContext).checkModel(sourceModelDescriptor);
            if (result.hasErrors()) {
              if (JOptionPane.showConfirmDialog(invocationContext.getMainFrame(), "Model " + sourceModelDescriptor.getModelUID() + " has errors. Are you sure that you want to generate it?") != JOptionPane.YES_OPTION) {
                continue;
              }
            }
          }

          String taskName = ModelsProgressUtil.generationModelTaskName(sourceModelDescriptor);
          progress.startLeafTask(taskName, ModelsProgressUtil.TASK_KIND_GENERATION);

          status = generationSession.generateModel(sourceModelDescriptor, targetLanguage, script);
          if (isDumpStatistics()) {
            Statistics.dumpAll();
          }

          checkMonitorCanceled(progress);
          if (status.getOutputModel() != null) {
            boolean generateText = true;
            if (!status.isOk() && generationType instanceof GenerateFilesGenerationType) {
              int result = JOptionPane.showConfirmDialog(invocationContext.getMainFrame(), "Generation finished with errors. Do you want to have text files generated?");
              if (result != JOptionPane.YES_OPTION) {
                generateText = false;
              }
            }

            if (generateText) {
              generationType.handleOutput(invocationContext, sourceModelDescriptor, status, progress, outputFolder, messages);
            }
          } else {
            //marks as generated models without applicable generators
            FileGenerationUtil.updateLastGenerationTime(sourceModelDescriptor);
          }
          generationSession.discardTransients();
          progress.finishTask(taskName);
        }
        //-- generation

        if (saveTransientModels) {
          File solutionDescriptorFile = generationSession.saveTransientModels();

          progress.addText("update output models solution");

          messages.handle(new Message(MessageKind.INFORMATION, "update output models solution"));
          Solution outputModels = project.findSolution("outputModels");
          if (outputModels != null) {
            outputModels.reloadFromDisk();
          } else {
            project.addProjectSolution(solutionDescriptorFile);
          }
        }
      } finally {
        generationSession.discardTransients();
        Logger.removeLoggingHandler(generationSession.getLoggingHandler());
        TypeChecker.getInstance().setIncrementalMode(true);
        TypeChecker.getInstance().setGenerationMode(false);
      }

      //update generated sources timestamp
      updateLanguagesGenerationRequiredStatus(invocationContext);

      checkMonitorCanceled(progress);
      progress.addText("");     
      if (status == null || status.isOk()) {
        IModule module = invocationContext.getModule();
        if (!myCompileOnGeneration || !(ideaPresent || module.isCompileInMPS())
                || !generationType.requiresCompilationInIDEAfterGeneration()) {
          progress.addText("compilation in IntelliJ IDEA after generation is turned off or not needed");
        } else {
          // -- compile after generation

          checkMonitorCanceled(progress);
          progress.startTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
          CompilationResult compilationResult;
          if (!module.isCompileInMPS()) {
            progress.startLeafTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
            projectHandler.refreshFS();
            progress.finishTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
            progress.addText("compiling in IntelliJ IDEA...");
            progress.startLeafTask(ModelsProgressUtil.TASK_NAME_COMPILE_IN_IDEA);
            compilationResult = projectHandler.buildModule(outputFolder);
            progress.finishTask(ModelsProgressUtil.TASK_NAME_COMPILE_IN_IDEA);
          } else {
            progress.startLeafTask(ModelsProgressUtil.TASK_NAME_COMPILE_IN_MPS);
            progress.addText("compiling in JetBrains MPS...");
            compilationResult = new ModuleMaker().make(CollectionUtil.asSet(module), new NullAdaptiveProgressMonitor());
            progress.finishTask(ModelsProgressUtil.TASK_NAME_COMPILE_IN_MPS);
          }
          progress.addText("" + compilationResult);
          progress.finishTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
          checkMonitorCanceled(progress);

          if (compilationResult.isOk()) {
            progress.addText("reloading MPS classes...");
            progress.startLeafTask(ModelsProgressUtil.TASK_NAME_RELOAD_ALL);
            ReloadUtils.reloadAll(false);
            progress.finishTask(ModelsProgressUtil.TASK_NAME_RELOAD_ALL);
            checkMonitorCanceled(progress);
          }
        }

        if (generationType.forceReload()) {
          ReloadUtils.reloadAll(true, true, true, new HashSet<SModelDescriptor>(), invocationContext.getModule(), new Runnable() {
            public void run() {
            }
          });
        } else {
          //we need it to update genearation status
          ReloadUtils.rebuildProjectPanes();
        }

        progress.addText("generation completed successfully");

        messages.handle(new Message(MessageKind.INFORMATION, "generation completed successfully"));
        progress.finishSomehow();
      } else if (status.isError()) {
        progress.addText("generation finished with errors");
        messages.handle(new Message(MessageKind.WARNING, "generation finished with errors"));

        progress.finishSomehow();
      }

      if (generationType instanceof GenerateFilesGenerationType && ideaPresent &&
              !generationType.requiresCompilationInIDEAfterGeneration()) {
        projectHandler.refreshFS();
      }

    } catch (GenerationCanceledException gce) {
      progress.addText("generation canceled");
      messages.handle(new Message(MessageKind.WARNING, "generation canceled"));

      progress.finishAnyway();
      showMessageView(project);

      return false;
    } catch (Throwable t) {
      LOG.error(t);
      final String text = t.toString();
      progress.addText(text);
      messages.handle(new Message(MessageKind.ERROR, text));
      progress.finishSomehow();
    } finally {

      TypeChecker.getInstance().clearForReload();
      NodeTypesComponentsRepository.getInstance().clear();

      if (myCompileOnGeneration && ideaPresent && generationType.requiresCompilationInIDEAfterGeneration()) {
        //todo this is tmp anti memory leak hack:
        progress.addText("Invalidate caches");
        ReloadUtils.invalidateCaches();

        progress.addText("Refresh models");
        SModelRepository.getInstance().refreshModels();
        System.gc();
      }
    }

    return true;
  }

  private void checkMonitorCanceled(IAdaptiveProgressMonitor progressMonitor) {
    if (progressMonitor.isCanceled()) throw new GenerationCanceledException();
  }

  public boolean willCompile(boolean ideaPresent, IGenerationType generationType) {
    return myCompileOnGeneration && ideaPresent && generationType.requiresCompilationInIDEABeforeGeneration();
  }

  private void updateLanguagesGenerationRequiredStatus(IOperationContext context) {
    IModule module = context.getModule();
    if (module instanceof Language) {
      Language language = (Language) module;
      language.updateLastGenerationTime();
    }
  }

}
