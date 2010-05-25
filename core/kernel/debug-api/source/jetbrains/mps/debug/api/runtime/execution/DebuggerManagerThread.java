package jetbrains.mps.debug.api.runtime.execution;

import com.intellij.openapi.application.ApplicationManager;
import com.sun.jdi.VMDisconnectedException;
import jetbrains.mps.logging.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class DebuggerManagerThread implements IDebuggerManagerThread {
  private static final Logger LOG = Logger.getLogger(DebuggerManagerThread.class);

  private final DebuggerCommandQueue myCommandQueue;
  @Nullable
  private DebuggerManagerThread.WorkerThread myWorkerThread;

  public DebuggerManagerThread() {
    myCommandQueue = new DebuggerCommandQueue();
    startNewWorkerThread();
  }

  private void startNewWorkerThread() {
    myWorkerThread = new WorkerThread();
    myWorkerThread.start();
  }

  public static boolean isManagerThread() {
    return Thread.currentThread() instanceof WorkerThread;
  }

  public static void assertIsManagerThread() {
    LOG.assertLog(isManagerThread(), "Should be invoked in manager thread, use DebuggerManagerThreadImpl.getInstance(..).invoke...");
  }

  @Override
  public void invokeAndWait(@NotNull IDebuggerCommand command) {
    LOG.assertLog(!ApplicationManager.getApplication().isDispatchThread());
    LOG.assertLog(!isManagerThread(), "Should be invoked outside manager thread, use DebuggerManagerThreadImpl.getInstance(..).invoke...");
    invokeAndWaitInternal(command);
  }

  @Override
  public void invoke(@NotNull IDebuggerCommand command) {
    if (isManagerThread()) {
      processCommand(command);
    } else {
      schedule(command);
    }
  }

  @Override
  public void invokeTerminalCommand(@NotNull IDebuggerCommand command) {
    invoke(command);
    myWorkerThread = null;
    // in idea they also deal with case in which current command takes to long to execute
    // see DebuggerManagerThreadImpl.terminateAndInvoke
  }

  @Override
  public void scheduleFirst(@NotNull IDebuggerCommand command) {  //no usages yet
    if (myCommandQueue.isClosed()) {
      command.notifyCancelled();
    } else {
      scheduleFirstInternal(command);
    }
  }

  @Override
  public void schedule(@NotNull IDebuggerCommand command) {
    if (myCommandQueue.isClosed()) {
      command.notifyCancelled();
    } else {
      scheduleInternal(command);
    }
  }

  private void scheduleFirstInternal(@NotNull IDebuggerCommand command) {
    LOG.debug("scheduleFirst " + command + " in " + this);
    myCommandQueue.pushBack(command, command.getPriority().ordinal());
  }

  private void scheduleInternal(@NotNull IDebuggerCommand command) {
    LOG.debug("schedule " + command + " in " + this);
    myCommandQueue.put(command, command.getPriority().ordinal());
  }

  public void close() {
    myCommandQueue.close();
    LOG.debug("Closing evaluation");
  }

  private void invokeAndWaitInternal(@NotNull IDebuggerCommand command) {
    command.hold();
    schedule(command);
    command.waitFor();
  }

  private void processCommand(@NotNull IDebuggerCommand command) {
    assertIsManagerThread();
    try {
      if (myCommandQueue.isClosed()) {
        command.notifyCancelled();
      } else {
        command.run();
      }
    } catch (VMDisconnectedException e) {
      LOG.debug("", e);
    } catch (RuntimeException e) {
      throw e;
    } catch (InterruptedException e) {
      throw new RuntimeException(e);
    } catch (Exception e) {
      LOG.error(e);
    }
  }

  private class WorkerThread extends Thread {
    private WorkerThread() {
      super("Debug Manager Thread");
    }

    @Override
    public void run() {
      while (true) {
        try {
          processCommand(myCommandQueue.get());
        } catch (VMDisconnectedException e) {
          break;
        } catch (DebuggerCommandQueueClosedException e) {
          break;
        } catch (RuntimeException e) {
          if (e.getCause() instanceof InterruptedException) {
            break;
          }
          LOG.error(e);
        }
      }

      LOG.debug("Worker thread " + this.toString() + " exited");
    }
  }

}
