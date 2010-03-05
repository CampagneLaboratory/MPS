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
package jetbrains.mps.debug.runtime;

import com.intellij.openapi.project.Project;
import com.sun.jdi.InternalException;
import com.sun.jdi.ThreadReference;
import com.sun.jdi.VMDisconnectedException;
import com.sun.jdi.VirtualMachine;
import com.sun.jdi.event.*;
import com.sun.jdi.request.EventRequest;
import com.sun.jdi.request.StepRequest;
import jetbrains.mps.debug.runtime.execution.DebuggerCommand;
import jetbrains.mps.debug.runtime.execution.DebuggerManagerThread;
import jetbrains.mps.debug.runtime.execution.IDebuggerManagerThread;
import jetbrains.mps.logging.Logger;
import org.jetbrains.annotations.NotNull;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 14.12.2009
 * Time: 16:23:30
 * To change this template use File | Settings | File Templates.
 */
public class DebugVMEventsProcessor {
  private static final Logger LOG = Logger.getLogger(DebugVMEventsProcessor.class);

  private final BreakpointManagerComponent myBreakpointManager;
  private final RequestManager myRequestManager;
  private final SuspendManager mySuspendManager;
  private final VMCreator myVMCreator;

  private final DebugProcessMulticaster myMulticaster;

  private final Project myProject;
  private VirtualMachine myVirtualMachine;

  private DebuggerEventThread myEventThread;

  protected static final int STATE_INITIAL = 0;
  protected static final int STATE_ATTACHED = 1;
  protected static final int STATE_DETACHING = 2;
  protected static final int STATE_DETACHED = 3;
  protected final AtomicInteger myState = new AtomicInteger(STATE_INITIAL);

  public DebugVMEventsProcessor(Project p, VMCreator vmCreator) {
    myProject = p;
    myMulticaster = new DebugProcessMulticaster();
    myBreakpointManager = p.getComponent(BreakpointManagerComponent.class);
    myRequestManager = new RequestManager(this);
    mySuspendManager = new SuspendManager(this);
    myVMCreator = vmCreator;
  }

  public void commitVM(VirtualMachine vm) {
    if (vm != null) {
      myVirtualMachine = vm;
      vmAttached();
      myEventThread = new DebuggerEventThread();
      new Thread(myEventThread, "Debug Events Processor Thread").start();
    }
  }

  /* package */

  DebugProcessMulticaster getMulticaster() {
    return myMulticaster;
  }

  public VirtualMachine getVirtualMachine() {
    return myVirtualMachine;
  }

  public RequestManager getRequestManager() {
    return myRequestManager;
  }

  public SuspendManager getSuspendManager() {
    return mySuspendManager;
  }

  public BreakpointManagerComponent getBreakpointManager() {
    return myBreakpointManager;
  }

  public String getConncetionString() {
    return myVMCreator.getConnectionSettings().getPresentation();
  }

  private class DebuggerEventThread implements Runnable {
    DebuggerEventThread() {
    }

    private boolean myIsStopped = false;

    public synchronized void stopListening() {
      myIsStopped = true;
    }

    private synchronized boolean isStopped() {
      return myIsStopped;
    }

    public void run() {
      try {
        EventQueue eventQueue = myVirtualMachine.eventQueue();
        while (!isStopped()) {
          try {
            final EventSet eventSet = eventQueue.remove();

            getManagerThread().invokeAndWait(new DebuggerCommand() {
              protected void action() throws Exception {
                final SuspendContext suspendContext = mySuspendManager.pushSuspendContextFromEventSet(eventSet);

                for (Event event : eventSet) {
                  System.err.println("event happened: " + event.toString());
                  try {
                    //todo processing different event kinds here
                    /*   if (event instanceof VMStartEvent) {
                     //Sun WTK fails when J2ME when event set is resumed on VMStartEvent
                     processVMStartEvent(suspendContext, (VMStartEvent)event);
                   }
                   else */
                    if (event instanceof VMDeathEvent) {
                      processVMDeathEvent(suspendContext, event);
                    } else if (event instanceof VMDisconnectEvent) {
                      processVMDeathEvent(suspendContext, event);
                    } else if (event instanceof ClassPrepareEvent) {
                      System.err.println("class prepare event happened");
                      processClassPrepareEvent(suspendContext, (ClassPrepareEvent) event);
                    }
                    //AccessWatchpointEvent, BreakpointEvent, ExceptionEvent, MethodEntryEvent, MethodExitEvent,
                    //ModificationWatchpointEvent, StepEvent, WatchpointEvent
                    else if (event instanceof StepEvent) {
                      processStepEvent(suspendContext, (StepEvent) event);
                    } else if (event instanceof LocatableEvent) {
                      System.err.println("locatable event happened");
                      processLocatableEvent(suspendContext, (LocatableEvent) event);
                    } else {
                      mySuspendManager.voteResume(suspendContext);
                    }
                    /*  else if (event instanceof ClassUnloadEvent){
                      processDefaultEvent(suspendContext);
                    }*/
                  }
                  catch (VMDisconnectedException e) {
                    //LOG.debug(e);
                  }
                  catch (InternalException e) {
                    //LOG.info(e);
                  }
                  catch (Throwable e) {
                    LOG.error(e);
                  }
                }
              }
            });

          }
          catch (InternalException e) {
            // LOG.debug(e);
          }
          catch (InterruptedException e) {
            throw e;
          }
          catch (VMDisconnectedException e) {
            throw e;
          }
          catch (Throwable e) {
            // LOG.debug(e);
          }
        }
      } catch (InterruptedException e) {
        invokeVMDeathEventInManagerThread();
      } catch (VMDisconnectedException e) {
        invokeVMDeathEventInManagerThread();
      } finally {
        Thread.interrupted(); // reset interrupted status
      }
    }

    private void invokeVMDeathEventInManagerThread() {
      getManagerThread().invokeAndWait(new DebuggerCommand() {
        protected void action() throws Exception {
          // SuspendContext suspendContext = getSuspendManager().pushSuspendContext(EventRequest.SUSPEND_NONE, 1);
          // TODO why do we need to create empty context? VM is dead!
          SuspendContext suspendContext = getSuspendManager().pushSuspendContextFromEventSet(null);
          processVMDeathEvent(suspendContext, null);
        }
      });
    }
  }

  public IDebuggerManagerThread getManagerThread() {
    return myVMCreator.getManagerThread();
  }

  public void addDebugProcessListener(DebugProcessListener listener) {
    myMulticaster.addListener(listener);
  }

  public void removeDebugProcessListener(DebugProcessListener listener) {
    myMulticaster.removeListener(listener);
  }


  public boolean isAttached() {
    return myState.get() == STATE_ATTACHED;
  }

  private void vmAttached() {
    // DebuggerManagerThreadImpl.assertIsManagerThread();
    LOG.assertLog(!isAttached());
    if (myState.compareAndSet(STATE_INITIAL, STATE_ATTACHED)) { //here we change an atomic state from initial to attached
      //DebuggerManagerEx.getInstanceEx(getProject()).getBreakpointManager().setInitialBreakpointsState();
      myMulticaster.processAttached(this);
      //show some info etc
    }
  }

  //todo here a thread will be set to suspend context, dont know why

  private static void preprocessEvent(SuspendContext suspendContext, ThreadReference thread) {
    ThreadReference oldThread = suspendContext.getThread();
    suspendContext.setThread(thread);

    if (oldThread == null) {
      //this is the first event in the eventSet that we process
      // fire some events
      //    suspendContext.getDebugProcess().beforeSuspend(suspendContext);
    }
  }

  //============================================ EVENTS PROCESSING =============================================


  private void processLocatableEvent(SuspendContext suspendContext, final LocatableEvent event) {
    ThreadReference thread = event.thread();
    LOG.assertLog(thread.isSuspended());
    preprocessEvent(suspendContext, thread);

    //we use schedule to allow processing other events during processing this one
    //this is especially nesessary if a method is breakpoint condition
    //todo shedule later
    SuspendContextCommand suspendCommand = new SuspendContextCommand(suspendContext) {
      @Override
      protected void action() throws Exception {

      }
    };
    //getManagerThread().schedule(new SuspendContextCommandImpl(suspendContext) {
    //  public void contextAction() throws Exception {
    final SuspendManager suspendManager = mySuspendManager;


    //todo - check if inside evaluation later; no evaluation currently implemented
    // SuspendContext evaluatingContext = SuspendManagerUtil.getEvaluatingContext(suspendManager, getSuspendContext().getThread());
    //if(evaluatingContext != null) {
    // is inside evaluation, so ignore any breakpoints
    //      suspendManager.voteResume(suspendContext);
    //      return;
    //    }


    //breakpoint found
    final LocatableEventRequestor requestor =
      (LocatableEventRequestor) getRequestManager().findRequestor(event.request());

    // boolean resumePreferred = requestor != null && DebuggerSettings.SUSPEND_NONE.equals(requestor.getSuspendPolicy());
    boolean requestHit = false;

    try {
      requestHit = (requestor != null) && requestor.processLocatableEvent(suspendCommand, event);
      // } catch () {
      // todo: catch a special exception here, show modal window like "error evaluation breakpoint condition, do you want to
      // todo "stop at the breakpoint, Y/N etc.
    } catch (Throwable t) {
      LOG.error(t);
    }

    if (requestHit && requestor instanceof MPSBreakpoint) {
      // if requestor is a breakpoint and this breakpoint was hit, no matter its suspend policy
      myBreakpointManager.processBreakpointHit((MPSBreakpoint) requestor);
    }

    if (!requestHit /*|| resumePreferred*/) {
      suspendManager.voteResume(suspendContext);
    } else {
      suspendManager.voteSuspend(suspendContext);
    }

    // sheduled command parenthesis
    //    }
    //  });
  }

  // a class is prepared: let's set breakpoint requests from breakpoints

  private void processClassPrepareEvent(SuspendContext suspendContext, ClassPrepareEvent event) {
    preprocessEvent(suspendContext, event.thread());
    myRequestManager.processClassPrepared(event);
    mySuspendManager.voteResume(suspendContext);
  }

  // a VM is dead

  private void processVMDeathEvent(SuspendContext suspendContext, Event event) {
    try {
      preprocessEvent(suspendContext, null);
      //  cancelRunToCursorBreakpoint();
    }
    finally {
      if (myEventThread != null) {
        myEventThread.stopListening();
        myEventThread = null;
      }
      closeProcess(false);
    }
  }

  private void processStepEvent(SuspendContext suspendContext, StepEvent event) {
    preprocessEvent(suspendContext, event.thread());

    myRequestManager.deleteStepRequests();

    boolean shouldResume = false;

    EventRequest request = event.request();
    if (request instanceof StepRequest) {
      StepRequest stepRequest = (StepRequest) request;
      // calculate if we should really stop here
      // see idea's RequestHint.getNextStepDepth
      StepRequestor requestor = (StepRequestor) myRequestManager.findRequestor(stepRequest);

      assert requestor != null;
      int nextStepType = requestor.nextStep(suspendContext);
      shouldResume = nextStepType != StepRequestor.STOP;
      if (shouldResume) {
        // do next step
        addNewStepRequest(suspendContext, suspendContext.getThread(), requestor, nextStepType);
      }

      // TODO restore breakpoints
    }

    if (shouldResume) {
      getSuspendManager().voteResume(suspendContext);
    } else {
      getSuspendManager().voteSuspend(suspendContext);
    }
  }

  private void closeProcess(boolean closedByUser) {
    DebuggerManagerThread.assertIsManagerThread();
    if (myState.compareAndSet(STATE_INITIAL, STATE_DETACHING) || myState.compareAndSet(STATE_ATTACHED, STATE_DETACHING)) {
      myVirtualMachine = null;
      try {
        getManagerThread().close();
      } finally {
        myState.set(STATE_DETACHED);
        getMulticaster().processDetached(this, closedByUser);
      }
    }
  }

  //============================================ COMMANDS =============================================

  public void resume(@NotNull SuspendContext suspendContext) {
    getManagerThread().schedule(new ResumeCommand(suspendContext));
  }

  public void pause() {
    getManagerThread().schedule(new PauseCommand());
  }

  public void stop(boolean terminate) {
    getManagerThread().invokeTerminalCommand(new StopCommand(terminate));
  }

  public void step(StepType type, @NotNull SuspendContext suspendContext) {
    // in idea we also remember that we are step and add thread reference to a special list
    // it is only used for updating local variables (namely for highlighting new vars)
    // (but I may be wrong)
    // see DebuggerSession.mySteppingThroughThreads in idea
    getManagerThread().schedule(new StepCommand(suspendContext, type));
  }

  private class ResumeCommand extends SuspendContextCommand {
    public ResumeCommand(@NotNull SuspendContext suspendContext) {
      super(suspendContext);
    }

    @Override
    public CommandPriority getPriority() {
      return CommandPriority.HIGH;
    }

    @Override
    protected void action() throws Exception {
      System.err.println("Resuming execution!");
      // see DebugProcessImpl.ResumeCommand in idea
      SuspendManager suspendManager = getSuspendManager();
      suspendManager.resume(getSuspendContext());
      getMulticaster().resumed(getSuspendContext());
    }
  }

  private class PauseCommand extends DebuggerCommand {
    @Override
    protected void action() throws Exception {
      System.err.println("Pausing execution!");
      // see DebugProcessImpl.PauseCommand in idea
      getVirtualMachine().suspend();
      SuspendManager suspendManager = getSuspendManager();
      SuspendContext suspendContext = suspendManager.pushSuspendContextWithVotesNumber(EventRequest.SUSPEND_ALL, 0);
      suspendManager.setPausedByUser(suspendContext);
      getMulticaster().paused(suspendContext);
    }
  }

  private class StopCommand extends DebuggerCommand {
    private final boolean myIsTerminateTargetVM; //what does it mean if "not terminate VM" --It means detach from target vm

    public StopCommand(boolean isTerminateTargetVM) {
      myIsTerminateTargetVM = isTerminateTargetVM;
    }

    public CommandPriority getPriority() {
      return CommandPriority.HIGH;
    }

    protected void action() throws Exception {
      if (isAttached()) {
        VirtualMachine virtualMachine = getVirtualMachine();
        if (myIsTerminateTargetVM) {
          virtualMachine.exit(-1);
        } else {
          // some VM's (like IBM VM 1.4.2 bundled with WebSpere) does not
          // resume threads on dispose() like it should
          virtualMachine.resume();
          virtualMachine.dispose();
        }
      } else {
// TODO       
//        stopConnecting();
      }
    }
  }

  private class StepCommand extends ResumeCommand {
    private final StepType myStepType;

    public StepCommand(@NotNull SuspendContext suspendContext, @NotNull StepType type) {
      super(suspendContext);
      myStepType = type;
    }

    @Override
    protected void action() throws Exception {
      SuspendContext suspendContext = getSuspendContext();
      addNewStepRequest(suspendContext, suspendContext.getThread(), new StepRequestor(suspendContext, getStepType()), getStepType());
      super.action();
    }

    private int getStepType() {
      return myStepType.getJdiType();
    }

  }

  private void addNewStepRequest(SuspendContext suspendContext, ThreadReference stepThread, StepRequestor stepRequestor, int stepType) {
    if (stepThread == null) {
      return;
    }

    StepRequest stepRequest = myRequestManager.createStepRequest(stepRequestor, stepType, stepThread, suspendContext.getSuspendPolicy());

    // TODO add ignore filters to request

    myRequestManager.enableRequest(stepRequest);
  }

  //quite an over-engineering in fact. maybe use int

  public enum StepType {
    Over(StepRequest.STEP_OVER),
    Into(StepRequest.STEP_INTO),
    Out(StepRequest.STEP_OUT);

    private final int myJdiType;

    private StepType(int jdiType) {
      myJdiType = jdiType;
    }

    public int getJdiType() {
      return myJdiType;
    }
  }
}
