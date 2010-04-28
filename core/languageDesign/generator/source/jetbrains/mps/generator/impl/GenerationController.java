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
package jetbrains.mps.generator.impl;

import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.project.Project;
import jetbrains.mps.cleanup.CleanupManager;
import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationFailureException;
import jetbrains.mps.generator.GenerationSettings;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.generator.GeneratorManager.GeneratorNotifierHelper;
import jetbrains.mps.generator.generationTypes.IGenerationHandler;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.IdeMain.TestMode;
import jetbrains.mps.ide.messages.IMessageHandler;
import jetbrains.mps.ide.messages.MessagesViewTool;
import jetbrains.mps.ide.progress.ITaskProgressHelper;
import jetbrains.mps.ide.progress.TaskProgressHelper;
import jetbrains.mps.ide.progress.util.ModelsProgressUtil;
import jetbrains.mps.lang.generator.plugin.debug.IGenerationTracer;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugin.IProjectHandler;
import jetbrains.mps.plugin.MPSPlugin;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.performance.IPerformanceTracer;
import jetbrains.mps.util.performance.IPerformanceTracer.NullPerformanceTracer;
import jetbrains.mps.util.performance.PerformanceTracer;

import java.rmi.RemoteException;
import java.util.*;

public class GenerationController {
  protected static Logger LOG = Logger.getLogger(GenerationController.class);

  private GeneratorNotifierHelper myNotifierHelper;
  private List<Pair<SModelDescriptor, IOperationContext>> myInputModels;
  protected final IGenerationHandler myGenerationHandler;
  protected ProgressIndicator myProgress;
  protected GeneratorLoggerAdapter myLogger;
  private GenerationProcessContext myGenerationContext;

  protected List<Pair<IModule, List<SModelDescriptor>>> myModuleSequence = new ArrayList<Pair<IModule, List<SModelDescriptor>>>();
  protected Map<IModule, IOperationContext> myModulesToContexts = new HashMap<IModule, IOperationContext>();

  public GenerationController(GeneratorNotifierHelper notifierHelper,
                              GenerationSettings settings,
                              List<Pair<SModelDescriptor, IOperationContext>> _inputModels,
                              IGenerationHandler generationHandler,
                              IGenerationTracer generationTracer,
                              ProgressIndicator progress,
                              IMessageHandler messages,
                              boolean saveTransientModels) {

    myNotifierHelper = notifierHelper;
    myInputModels = _inputModels;
    myGenerationHandler = generationHandler;
    myProgress = progress;
    myLogger = new GeneratorLoggerAdapter(messages, !settings.isShowErrorsOnly(), !settings.isShowErrorsOnly());
    myGenerationContext = new GenerationProcessContext(saveTransientModels, settings.isUseNewGenerator(), settings.isStrictMode(), settings.isShowErrorsOnly(), progress, generationTracer);
  }

  private void initMaps() {
    IModule current = null;
    ArrayList<SModelDescriptor> currentList = null;
    for (Pair<SModelDescriptor, IOperationContext> inputModel : myInputModels) {
      IModule newModule = inputModel.o2.getModule();
      if (current == null || newModule != current) {
        current = newModule;
        currentList = new ArrayList<SModelDescriptor>();
        myModuleSequence.add(new Pair<IModule, List<SModelDescriptor>>(current, currentList));
        myModulesToContexts.put(current, inputModel.o2);
      }
      currentList.add(inputModel.o1);
    }
  }

  public boolean generate() {
    clearMessageVew();
    long startJobTime = System.currentTimeMillis();

    myGenerationHandler.startGeneration(myLogger);
    initMaps();
    long totalJob = estimateGenerationTime();
    ITaskProgressHelper progressHelper = new TaskProgressHelper(myProgress, totalJob, startJobTime);
    try {
      boolean generationOK = true;
      try {
        for (Pair<IModule, List<SModelDescriptor>> moduleAndDescriptors : myModuleSequence) {
          boolean result = generateModelsInModule(moduleAndDescriptors.o1, moduleAndDescriptors.o2, progressHelper);
          generationOK = generationOK && result;
        }
      } finally {
        myGenerationContext.cleanup();
      }
      if (generationOK) {
        if(myLogger.needsInfo()) {
          myLogger.info("generation completed successfully in " + (System.currentTimeMillis() - startJobTime) + " ms");
        }
      } else {
        myLogger.error("generation completed with errors in " + (System.currentTimeMillis() - startJobTime) + " ms");
      }
      generationOK = compile(progressHelper, generationOK);

      fireModelsGenerated(generationOK);
      return generationOK;
    } catch (GenerationCanceledException gce) {
      myLogger.warning("generation canceled");
      return false;
    } catch (GenerationFailureException e) {
      myLogger.error(e.getMessage());
      return false;
    } catch (Throwable t) {
      myLogger.handleException(t);
      return false;
    } finally {
      myGenerationHandler.finishGeneration(progressHelper);
    }
  }

  private boolean compile(ITaskProgressHelper progressHelper, boolean generationOK) throws RemoteException, GenerationCanceledException {
    fireBeforeModelsCompiled(generationOK);
    generationOK = generationOK && myGenerationHandler.compile(getProjectHandler(), myModuleSequence, generationOK, progressHelper);
    fireAfterModelsCompiled(generationOK);
    return generationOK;
  }

  protected boolean generateModelsInModule(IModule module, List<SModelDescriptor> inputModels, ITaskProgressHelper progressHelper) throws Exception {
    boolean currentGenerationOK = true;

    IOperationContext invocationContext = myModulesToContexts.get(module);
    myGenerationHandler.startModule(module, inputModels, getProjectHandler(), progressHelper);

    //++ generation
    String wasLoggingThreshold = null;
    try {
      if (myGenerationContext.isShowErrorsOnly()) {
        wasLoggingThreshold = Logger.setThreshold("ERROR");
      }

      for (SModelDescriptor inputModel : inputModels) {
        IPerformanceTracer ttrace = myGenerationContext.getTracingMode() != GenerationProcessContext.TRACE_OFF
          ? new PerformanceTracer("model " + NameUtil.shortNameFromLongName(inputModel.getLongName()))
          : new NullPerformanceTracer();

        boolean traceTypes = myGenerationContext.getTracingMode() == GenerationProcessContext.TRACE_TYPES;
        TypeChecker.getInstance().setIsGeneration(true, traceTypes ? ttrace : null);

        GenerationSession generationSession = new GenerationSession(
          inputModel, invocationContext, myProgress, myLogger, ttrace, myGenerationContext);

        try {
          Logger.addLoggingHandler(generationSession.getLoggingHandler());
          if (!myGenerationHandler.canHandle(inputModel)) {
            LOG.error("Can't generate " + inputModel.getSModelFqName());
            continue;
          }

          myLogger.info("");
          String taskName = ModelsProgressUtil.generationModelTaskName(inputModel);
          progressHelper.setText2("model " + inputModel.getSModelFqName());
          progressHelper.startLeafTask(taskName);

          GenerationStatus status = generationSession.generateModel();
          status.setOriginalInputModel(inputModel);
          currentGenerationOK = currentGenerationOK && status.isOk();

          checkMonitorCanceled();

          currentGenerationOK = currentGenerationOK && myGenerationHandler.handleOutput(module, inputModel, status, invocationContext, progressHelper);

        } finally {
          Logger.removeLoggingHandler(generationSession.getLoggingHandler());
          generationSession.discardTransients();
          CleanupManager.getInstance().cleanup();

          progressHelper.finishTask();

          //We need this in order to clear subtyping cache which might occupy too much memory
          //if we generate a lot of models. For example, Charisma generation wasn't possible
          //with -Xmx1200 before this change
          TypeChecker.getInstance().setIsGeneration(false);
          progressHelper.setText2("");
        }

        String report = ttrace.report();
        if (report != null) {
          myLogger.trace(report);
        }
      }
    } finally {
      if (wasLoggingThreshold != null) {
        Logger.setThreshold(wasLoggingThreshold);
      }
    }

    checkMonitorCanceled();
    myLogger.info("");

    //myProgress.finishTask("generating in module " + module);   //todo finish timer
    progressHelper.setText2("");

    return currentGenerationOK;
  }

  private long estimateGenerationTime() {
    long totalJob = myGenerationHandler.estimateCompilationMillis(myModuleSequence);

    for (Pair<IModule, List<SModelDescriptor>> pair : myModuleSequence) {
      IModule module = pair.o1;
      if (module != null) {
        long jobTime = ModelsProgressUtil.estimateGenerationTimeMillis(pair.o2);
        totalJob += jobTime;
      }
    }
    return Math.max(totalJob, 1000);
  }

  private void fireModelsGenerated(boolean success) {
    myNotifierHelper.fireModelsGenerated(Collections.unmodifiableList(myInputModels), success);
  }

  private void fireBeforeModelsCompiled(boolean success) {
    myNotifierHelper.fireBeforeModelsCompiled(Collections.unmodifiableList(myInputModels), success);
  }

  private void fireAfterModelsCompiled(boolean success) {
    myNotifierHelper.fireAfterModelsCompiled(Collections.unmodifiableList(myInputModels), success);
  }

  private IOperationContext getFirstContext() {
    return myInputModels.get(0).o2;
  }

  protected IProjectHandler getProjectHandler() {
    if (IdeMain.getTestMode() == TestMode.CORE_TEST) return null;
    return MPSPlugin.getInstance().getProjectHandler(getProject());
  }

  private Project getProject() {
    return getFirstContext().getProject();
  }

  private void clearMessageVew() {
    MessagesViewTool messagesView = getProject().getComponent(MessagesViewTool.class);
    if (messagesView != null) {
      messagesView.clear();
    }
  }

  protected void checkMonitorCanceled() throws GenerationCanceledException {
    if (myProgress.isCanceled()) throw new GenerationCanceledException();
  }
}
