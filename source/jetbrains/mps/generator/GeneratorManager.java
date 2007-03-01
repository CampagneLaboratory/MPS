package jetbrains.mps.generator;

import jetbrains.mps.component.Dependency;
import jetbrains.mps.components.IExternalizableComponent;
import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.actions.tools.ReloadUtils;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.undo.UndoManager;
import jetbrains.mps.ide.messages.Message;
import jetbrains.mps.ide.messages.MessageKind;
import jetbrains.mps.ide.messages.MessageView;
import jetbrains.mps.ide.messages.IMessageHandler;
import jetbrains.mps.ide.preferences.IComponentWithPreferences;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.progress.AdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.ide.progress.util.ModelsProgressUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugin.CompilationResult;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.*;
import jetbrains.mps.transformation.TLBase.structure.MappingConfiguration;
import jetbrains.mps.generator.newGenerator.GenerationSession_New;
import org.jdom.Element;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


/**
 * @author Kostik
 */
public class GeneratorManager implements IExternalizableComponent, IComponentWithPreferences {
  // progress monitor
  public static final int AMOUNT_PER_MODEL = 100;
  public static final int AMOUNT_PER_COMPILATION = 100;

  public static final Logger LOG = Logger.getLogger(GeneratorManager.class);

  private static final String SAVE_TRANSIENT_MODELS = "save-transient-models-on-generation";
  private static final String COMPILE_ON_GENERATION = "compile-on-generation";
  private static final String COMPILE_SOURCE_LANGUAGES_MODULES = "compile-source-languages-modules";

  private boolean myCompileOnGeneration = true;
  private boolean mySaveTransientModels;
  private boolean myCompileSourceLanguageModules = false;
  private MPSProject myProject;
  private List<IFileGenerator> myFileGenerators = new LinkedList<IFileGenerator>();


  public GeneratorManager() {
  }

  @Dependency
  public void setProject(MPSProject project) {
    myProject = project;
  }

  public void addFileGenerator(IFileGenerator fileGenerator) {
    myFileGenerators.add(fileGenerator);
  }

  public void removeFileGenerator(IFileGenerator fileGenerator) {
    myFileGenerators.remove(fileGenerator);
  }

  public void read(Element element, MPSProject project) {
    if (element.getAttribute(COMPILE_ON_GENERATION) != null) {
      myCompileOnGeneration = Boolean.parseBoolean(element.getAttributeValue(COMPILE_ON_GENERATION));
    }
    if (element.getAttribute(SAVE_TRANSIENT_MODELS) != null) {
      mySaveTransientModels = Boolean.parseBoolean(element.getAttributeValue(SAVE_TRANSIENT_MODELS));
    }
    if (element.getAttribute(COMPILE_SOURCE_LANGUAGES_MODULES) != null) {
      myCompileSourceLanguageModules = Boolean.parseBoolean(element.getAttributeValue(COMPILE_SOURCE_LANGUAGES_MODULES));
    }
  }

  public void write(Element element, MPSProject project) {
    element.setAttribute(COMPILE_ON_GENERATION, "" + myCompileOnGeneration);
    element.setAttribute(SAVE_TRANSIENT_MODELS, "" + mySaveTransientModels);
    element.setAttribute(COMPILE_SOURCE_LANGUAGES_MODULES, "" + myCompileSourceLanguageModules);
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


  public boolean isCompileSourceLanguageModules() {
    return myCompileSourceLanguageModules;
  }

  public void setCompileSourceLanguageModules(boolean compileSourceLanguageModules) {
    myCompileSourceLanguageModules = compileSourceLanguageModules;
  }

  public IPreferencesPage createPreferencesPage() {
    return new GeneratorManagerPreferencesPage(this);
  }

  private void clearMessages() {
    MessageView messageView = myProject.getComponent(MessageView.class);
    if (messageView != null) {
      messageView.clear();
    }
  }

  private void showMessageView() {
    MessageView messageView = myProject.getComponent(MessageView.class);
    if (messageView != null) {
      messageView.show(true);
    }
  }

  /**
   * todo Move it to a better place
   */
  public IFileGenerator chooseFileGenerator(SNode outputNode, SNode sourceNode) {
    for (IFileGenerator fileGenerator : myFileGenerators) {
      if (sourceNode != null &&
              fileGenerator.overridesDefault(outputNode, sourceNode)) {
        return fileGenerator;
      }
    }

    for (IFileGenerator fileGenerator : myFileGenerators) {
      if (fileGenerator.isDefault(outputNode)) {
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

  public Thread generateModelsWithProgressWindowAsync(final List<SModel> sourceModels,
                                                    final Language targetLanguage,
                                                    final IOperationContext invocationContext,
                                                    final IGenerationType generationType,
                                                    final IGenerationScript script,
                                                    boolean closeOnExit) {
    AdaptiveProgressMonitor adaptiveProgressMonitor = new AdaptiveProgressMonitor(invocationContext.getComponent(IDEProjectFrame.class), closeOnExit);
    return generateModelsWithProgressWindow(sourceModels, targetLanguage, invocationContext, generationType, script, new Runnable() {
      public void run() {
      }
    }, true, adaptiveProgressMonitor, GeneratingEngine.old);
  }

  public void generateModelsWithProgressWindowAsync(final List<SModel> sourceModels,
                                                    final Language targetLanguage,
                                                    final IOperationContext invocationContext,
                                                    final IGenerationType generationType,
                                                    final IGenerationScript script,
                                                    final Runnable continuation) {
    generateModelsWithProgressWindow(sourceModels, targetLanguage, invocationContext, generationType, script, continuation, true, null, GeneratingEngine.old);
  }

  public Thread generateModelsWithProgressWindowAsync(final List<SModel> sourceModels,
                                                    final Language targetLanguage,
                                                    final IOperationContext invocationContext,
                                                    final IGenerationType generationType,
                                                    final IGenerationScript script) {
    return generateModelsWithProgressWindow(sourceModels, targetLanguage, invocationContext, generationType, script, new Runnable() {
      public void run() {
      }
    }, true, null, GeneratingEngine.old);
  }

  public void generateModelsWithProgressWindowAsync(final List<SModel> sourceModels,
                                                    final Language targetLanguage,
                                                    final IOperationContext invocationContext,
                                                    final IGenerationType generationType,
                                                    final IGenerationScript script,
                                                    final GeneratingEngine generatingEngine) {
    generateModelsWithProgressWindow(sourceModels, targetLanguage, invocationContext, generationType, script, new Runnable() {
      public void run() {
      }
    }, true, null, generatingEngine);
  }

  public void generateModelsWithProgressWindow(final List<SModel> sourceModels,
                                               final Language targetLanguage,
                                               final IOperationContext invocationContext,
                                               final IGenerationType generationType,
                                               final IGenerationScript script,
                                               boolean finishAnyway,
                                               IAdaptiveProgressMonitor monitor) {
    final Object lock = new Object();
    generateModelsWithProgressWindow(sourceModels, targetLanguage, invocationContext, generationType, script, new Runnable() {
      public void run() {
        synchronized (lock) {
          lock.notifyAll();
        }
      }
    }, finishAnyway, monitor, GeneratingEngine.old);

    synchronized (lock) {
      try {
        lock.wait();
      } catch (InterruptedException e) {
        LOG.error(e);
      }
    }
  }

  public Thread generateModelsWithProgressWindow(final List<SModel> sourceModels,
                                               final Language targetLanguage,
                                               final IOperationContext invocationContext,
                                               final IGenerationType generationType,
                                               final IGenerationScript script,
                                               final Runnable continuation,
                                               final boolean finishAnyway,
                                               IAdaptiveProgressMonitor monitor,
                                               final GeneratingEngine generatingEngine) {
    final IAdaptiveProgressMonitor progress = monitor != null ? monitor : new AdaptiveProgressMonitor(invocationContext.getComponent(IDEProjectFrame.class), false);
    Thread generationThread = new Thread("Generation") {
      public void run() {
        CommandProcessor.instance().executeCommand(new Runnable() {
          public void run() {
            generateModels(sourceModels, targetLanguage, invocationContext, generationType, script, progress, generatingEngine);
            if (finishAnyway) {
              progress.finishAnyway();
            }
            ThreadUtils.runInUIThreadNoWait(continuation);
          }
        });
      }
    };

    // we are in event dispatch thread
    //do not change priority! With other priority it's impossible to listen to music
    generationThread.setPriority(Thread.MIN_PRIORITY);
    generationThread.start();
    return generationThread;
  }

  private void checkMonitorCanceled(IAdaptiveProgressMonitor progressMonitor) {
    if (progressMonitor.isCanceled()) throw new GenerationCanceledException();
  }

  public void generateModels(
            List<SModel> _sourceModels,
            Language targetLanguage,
            IOperationContext invocationContext,
            IGenerationType generationType,
            IGenerationScript script,
            IAdaptiveProgressMonitor progress) {
    generateModels(_sourceModels, targetLanguage, invocationContext, generationType, script, progress, GeneratingEngine.old);
  }

  public void generateModels(
            List<SModel> _sourceModels,
            Language targetLanguage,
            IOperationContext invocationContext,
            IGenerationType generationType,
            IGenerationScript script,
            IAdaptiveProgressMonitor progress,
            GeneratingEngine generatingEngine) {

    generateModels(_sourceModels,
            targetLanguage,
            invocationContext,
            generationType,
            script,
            progress,
            new IMessageHandler() {
              public void handle(Message msg) {
                MessageView messageView = myProject.getComponent(MessageView.class);
                assert messageView != null;
                messageView.add(msg);
              }
            },
            generatingEngine);
  }

  public void generateModels(
          List<SModel> _sourceModels,
          Language targetLanguage,
          IOperationContext invocationContext,
          IGenerationType generationType,
          IGenerationScript script,
          IAdaptiveProgressMonitor progress,
          IMessageHandler handler) {
     generateModels(_sourceModels, targetLanguage, invocationContext, generationType, script, progress, handler, GeneratingEngine.old);
  }

  public void generateModels(
          List<SModel> _sourceModels,
          Language targetLanguage,
          IOperationContext invocationContext,
          IGenerationType generationType,
          IGenerationScript script,
          IAdaptiveProgressMonitor progress,
          IMessageHandler handler,
          GeneratingEngine generatingEngine) {

    MPSModuleRepository.getInstance().removeTransientModules();
    showMessageView();

    invocationContext.getProject().saveModels();
    List<SModelDescriptor> sourceModels = new ArrayList<SModelDescriptor>();
    for (SModel model : _sourceModels) {
      sourceModels.add(model.getModelDescriptor());
    }
    clearMessages();



    handler.handle(new Message(MessageKind.INFORMATION, generationType.getStartText()));
    handler.handle(new Message(MessageKind.INFORMATION, "    target language: \"" + targetLanguage.getNamespace() + "\""));

    String outputFolder = invocationContext.getModule().getGeneratorOutputPath();

    if (!new File(outputFolder).exists()) {
      new File(outputFolder).mkdirs();

      try {
        myProject.getProjectHandler().addSourceRoot(outputFolder);
      } catch (Exception e) {
        handler.handle(new Message(MessageKind.WARNING, "Can't add output folder to IDEA as sources"));
      }
    }

    handler.handle(new Message(MessageKind.INFORMATION, "    target root folder: \"" + outputFolder + "\""));

    boolean ideaPresent = myProject.getProjectHandler() != null;
    boolean compile = myCompileOnGeneration && ideaPresent && generationType.requiresCompilationInIDEAfterGeneration();

    long totalJob = ModelsProgressUtil.estimateTotalGenerationJobMillis(compile, sourceModels);

    progress.startTaskAnyway("generating", null, totalJob);

    try {
      boolean reloadClasses = true;

      if (!myCompileOnGeneration || !generationType.requiresCompilationInIDEABeforeGeneration()) {
        progress.addText("compilation in IntelliJ IDEA on generation is turned off or not needed");
        reloadClasses = false;
      } else if (!ideaPresent) {
        progress.addText("IntelliJ IDEA with installed MPS is not present");
      } else {
        // -- compile sources before generation
        checkMonitorCanceled(progress);

        progress.startLeafTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
        myProject.getProjectHandler().refreshFS();
        progress.finishTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
        checkMonitorCanceled(progress);

        progress.startLeafTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
        progress.addText("compiling output module...");
        CompilationResult compilationResult = myProject.getProjectHandler().buildModule(outputFolder);
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
          for (Language l : getPossibleSourceLanguages(_sourceModels, invocationContext.getScope())) {
            progress.addText("compiling " + l + "'s  module...");
            compilationResult = myProject.getProjectHandler().buildModule(l.getSourceDir().getPath());
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


      GenerationStatus status = null;
      //++ generation
      IGenerationSession generationSession;
      if(generatingEngine == GeneratingEngine.old) {
        generationSession = new GenerationSession(invocationContext, isSaveTransientModels(), progress, handler);
      }
      else {
        generationSession = new GenerationSession_New(invocationContext, isSaveTransientModels(), progress, handler);
      }
      for (SModelDescriptor sourceModelDescriptor : sourceModels) {
        progress.addText("");
        String taskName = ModelsProgressUtil.generationModelTaskName(sourceModelDescriptor);
        progress.startLeafTask(taskName, ModelsProgressUtil.TASK_KIND_GENERATION);

        status = generationSession.generateModel(sourceModelDescriptor, targetLanguage, script);
        checkMonitorCanceled(progress);
        if (status.getOutputModel() != null) {
          generationType.handleOutput(invocationContext, status, progress, outputFolder);
        }
        generationSession.discardTransients();
        progress.finishTask(taskName);

        if (!status.isOk()) {
          break;
        }
      }
      //-- generation

      if (isSaveTransientModels()) {
        File solutionDescriptorFile = generationSession.saveTransientModels();

        progress.addText("update output models solution");

        handler.handle(new Message(MessageKind.INFORMATION, "update output models solution"));
        Solution outputModels = myProject.findSolution("outputModels");
        if (outputModels != null) {
          outputModels.reloadFromDisk();
        } else {
          myProject.addProjectSolution(solutionDescriptorFile);
        }
      }

      //update generated sources timestamp
      updateLanguagesGenerationRequiredStatus(invocationContext);

      checkMonitorCanceled(progress);
      progress.addText("");
      if (status.isOk()) {
        if (compile) {
          // -- compile after generation
          progress.addText("compiling in IntelliJ IDEA...");

          progress.startLeafTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
          myProject.getProjectHandler().refreshFS();
          progress.finishTask(ModelsProgressUtil.TASK_NAME_REFRESH_FS);
          checkMonitorCanceled(progress);
          progress.startLeafTask(ModelsProgressUtil.TASK_NAME_COMPILE_ON_GENERATION);
          CompilationResult compilationResult = myProject.getProjectHandler().buildModule(outputFolder);
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
        progress.addText("generation completed successfully");

        handler.handle(new Message(MessageKind.INFORMATION, "generation completed successfully"));
        progress.finishSomehow();
      } else if (status.isError()) {
        progress.addText("generation finished with errors");
        handler.handle(new Message(MessageKind.WARNING, "generation finished with errors"));

        progress.finishSomehow();
      }
    } catch (GenerationCanceledException gce) {
      progress.addText("generation canceled");
      handler.handle(new Message(MessageKind.WARNING, "generation canceled"));

      progress.finishAnyway();
      showMessageView();
    } catch (Throwable t) {
      LOG.error(t);
      final String text = t.toString();
      progress.addText(text);
      handler.handle(new Message(MessageKind.ERROR, text));
      progress.finishSomehow();
    } finally {
      //todo this is tmp anti memory leak hack:
      UndoManager.instance().clear();
      SModelRepository.getInstance().refreshModels();

      System.gc();
    }    
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
