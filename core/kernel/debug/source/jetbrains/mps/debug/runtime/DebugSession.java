package jetbrains.mps.debug.runtime;

import com.intellij.execution.process.ProcessOutputTypes;
import com.intellij.openapi.project.Project;
import jetbrains.mps.debug.api.AbstractDebugSession;
import jetbrains.mps.debug.api.DebugSessionManagerComponent;
import jetbrains.mps.debug.evaluation.ui.EvaluationAuxModule;
import jetbrains.mps.debug.evaluation.ui.EvaluationDialog;
import jetbrains.mps.debug.runtime.JavaUiState;
import jetbrains.mps.debug.runtime.DebugVMEventsProcessor.StepType;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.IModule;
import jetbrains.mps.reloading.EachClassPathItemVisitor;
import jetbrains.mps.reloading.FileClassPathItem;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.reloading.JarFileClassPathItem;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.stubs.StubReloadManager;
import org.jetbrains.annotations.NotNull;

import java.util.Collections;

public class DebugSession extends AbstractDebugSession<JavaUiState> {
  //todo extract abstract superclass to allow suspend/resume/etc. any process if developer implements it
  private static final Logger LOG = Logger.getLogger(DebugSession.class);
  private final DebugVMEventsProcessor myEventsProcessor;
  private EvaluationAuxModule myAuxModule;

  public DebugSession(DebugVMEventsProcessor eventsProcessor, Project p) {
    super(p);
    myEventsProcessor = eventsProcessor;
    myEventsProcessor.setDebuggableFramesSelector(getDebuggableFramesSelector());
    eventsProcessor.getMulticaster().addListener(new MyDebugProcessAdapter());
  }

  public EvaluationAuxModule getAuxModule() {
    return myAuxModule;
  }

  protected JavaUiState createUiState() {
    return new JavaUiState(null, this);
  }

  public void resume() {
    SuspendContext context = getUiState().getContext();
    LOG.assertLog(context != null);
    myEventsProcessor.resume(context);
  }

  public void pause() {
    myEventsProcessor.pause();
  }

  public void stop(boolean terminateTargetVM) {
    myEventsProcessor.stop(terminateTargetVM);
  }

  public void stepOver() {
    step(StepType.Over);
  }

  public void stepInto() {
    step(StepType.Into);
  }

  public void stepOut() {
    step(StepType.Out);
  }

  public boolean canShowEvaluationDialog() {
    return true;
  }

  public void showEvaluationDialog(IOperationContext operationContext) {
    JavaUiState state = getUiState();
    if (state.isPausedOnBreakpoint()) {
      EvaluationDialog evaluationDialog = new EvaluationDialog(operationContext, state, this);
      evaluationDialog.showDialog();
    }
  }

  private void step(StepType type) {
    JavaUiState state = getUiState();
    SuspendContext context = state.getContext();
    LOG.assertLog(context != null);
    LOG.assertLog(state.isPausedOnBreakpoint());
    myEventsProcessor.step(type, context);
  }

  DebugVMEventsProcessor getEventsProcessor() {
    return myEventsProcessor;
  }

  private void pause(SuspendContext suspendContext) {
    JavaUiState state = getUiState();
    setState(state, state.paused(suspendContext), false);
  }

  public JavaUiState refresh() {
    JavaUiState state = getUiState();
    JavaUiState newState = state.paused(state.getContext());
    setState(state, newState);
    return newState;
  }

  private void resume(SuspendContext suspendContext) {
    JavaUiState state = getUiState();
    setState(state, state.resumed(suspendContext), false);
  }

  @Override
  public void sessionRegistered(DebugSessionManagerComponent manager) {
    VMEventsProcessorManagerComponent vmManager
      = manager.getProject().getComponent(VMEventsProcessorManagerComponent.class);
    vmManager.addDebugSession(this);
     ModelAccess.instance().runWriteAction(new Runnable() {
          public void run() {
            myAuxModule = new EvaluationAuxModule(myProject);

            // add classpath to module to be able to see classes in evaluation
            IModule module = null; //todo invocation module
            IClassPathItem cpItem = AbstractModule.getDependenciesClasspath(Collections.singleton(module), true);
            cpItem.accept(new EachClassPathItemVisitor() {
              @Override
              public void visit(JarFileClassPathItem item) {
                String path = item.getFile().getAbsolutePath();
                myAuxModule.addStubPath(path);
              }

              @Override
              public void visit(FileClassPathItem item) {
                String path = item.getClassPath();
                myAuxModule.addStubPath(path);
              }
            });
            StubReloadManager.getInstance().reload();
          }
        });

  }

  @Override
  public void sessionUnregistered(DebugSessionManagerComponent manager) {
    myAuxModule.dispose();
    myAuxModule = null;
  }

  private class MyDebugProcessAdapter extends DebugProcessAdapter {

    @Override
    public void paused(@NotNull SuspendContext suspendContext) {
      myExecutionState = ExecutionState.Paused;
      pause(suspendContext);
      fireSessionPaused(DebugSession.this);
    }

    @Override
    public void resumed(@NotNull SuspendContext suspendContext) {
      myExecutionState = ExecutionState.Running;
      resume(suspendContext);
      fireSessionResumed(DebugSession.this);
    }

    @Override
    public void processAttached(@NotNull DebugVMEventsProcessor process) {
      myExecutionState = ExecutionState.Running;
      myProcessHandler.notifyTextAvailable("Connected to the target VM, " + process.getConnectionString() + "\n", ProcessOutputTypes.SYSTEM);
    }

    @Override
    public void processDetached(@NotNull DebugVMEventsProcessor process, boolean closedByUser) {
      myExecutionState = ExecutionState.Stopped;
      setState(getUiState(), new JavaUiState(null, DebugSession.this), false);
      fireSessionResumed(DebugSession.this); // TODO hack
      myProcessHandler.notifyTextAvailable("Disconnected from the target VM, " + process.getConnectionString() + "\n", ProcessOutputTypes.SYSTEM);
    }
  }

}
