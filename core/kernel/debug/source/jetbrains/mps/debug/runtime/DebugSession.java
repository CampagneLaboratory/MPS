package jetbrains.mps.debug.runtime;

import com.intellij.execution.process.ProcessOutputTypes;
import com.intellij.openapi.project.Project;
import jetbrains.mps.debug.api.AbstractDebugSession;
import jetbrains.mps.debug.api.DebugSessionManagerComponent;
import jetbrains.mps.debug.evaluation.ui.EvaluationDialog;
import jetbrains.mps.debug.runtime.JavaUiState;
import jetbrains.mps.debug.runtime.DebugVMEventsProcessor.StepType;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.annotations.NotNull;

public class DebugSession extends AbstractDebugSession<JavaUiState> {
  //todo extract abstract superclass to allow suspend/resume/etc. any process if developer implements it
  private static final Logger LOG = Logger.getLogger(DebugSession.class);
  private final DebugVMEventsProcessor myEventsProcessor;

  public DebugSession(DebugVMEventsProcessor eventsProcessor, Project p) {
    super(p);
    myEventsProcessor = eventsProcessor;
    myEventsProcessor.setDebuggableFramesSelector(getDebuggableFramesSelector());
    eventsProcessor.getMulticaster().addListener(new MyDebugProcessAdapter());
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
    setState(state, state.paused(suspendContext));
  }

  public JavaUiState refresh() {
    JavaUiState state = getUiState();
    JavaUiState newState = state.paused(state.getContext());
    setState(state, newState);
    return newState;
  }

  private void resume(SuspendContext suspendContext) {
    JavaUiState state = getUiState();
    setState(state, state.resumed(suspendContext));
  }

  private void setState(JavaUiState oldState, JavaUiState newState) {
    while (!myUiState.compareAndSet(oldState, newState)) {
      System.err.println("OOPS! somebody changed UiState");
      // TODO we do not care here if user selected something, we just replace old state. But we might do something more clever, like remember what user selected.
      oldState = getUiState();
    }
    fireStateChanged();
  }

  @Override
  public void sessionRegistered(DebugSessionManagerComponent manager) {
    VMEventsProcessorManagerComponent vmManager
      = manager.getProject().getComponent(VMEventsProcessorManagerComponent.class);
    vmManager.addDebugSession(this);
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
      setState(getUiState(), new JavaUiState(null, DebugSession.this));
      fireSessionResumed(DebugSession.this); // TODO hack
      myProcessHandler.notifyTextAvailable("Disconnected from the target VM, " + process.getConnectionString() + "\n", ProcessOutputTypes.SYSTEM);
    }
  }

}
