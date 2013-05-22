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
package jetbrains.mps.ide.smodel;

import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.ex.ApplicationEx;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.command.UndoConfirmationPolicy;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.util.ProgressWindow;
import com.intellij.openapi.ui.Messages;
import com.intellij.util.containers.ConcurrentHashSet;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.progress.ProgressMonitorAdapter;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.IllegalModelAccessError;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModelAccessListener;
import jetbrains.mps.smodel.TimeOutRuntimeException;
import jetbrains.mps.smodel.UndoHelper;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.NotNull;

import javax.swing.SwingUtilities;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.DelayQueue;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;

import static java.util.concurrent.TimeUnit.MILLISECONDS;

/**
 * We access IDEA locking mechanism here in order to prevent different way of acquiring locks
 * We always first acquire IDEA's lock and only then acquire MPS's lock
 */
public class WorkbenchModelAccess extends ModelAccess {

  public static final int WAIT_FOR_WRITE_LOCK_MILLIS = 200;
  private EDTExecutor myEDTExecutor = new EDTExecutor(this);
  private Set<Thread> myIndexingThreads = new ConcurrentHashSet<Thread>();

  // changed only in EDT
  private volatile boolean myDistributedLocksMode = false;
  private static final int REQUIRE_MAX_TRIES = 8;

  private DelayQueue<DelayedInterrupt> myInterruptQueue = new DelayQueue<DelayedInterrupt>();

  private Thread myInterruptingThread;

  public WorkbenchModelAccess() {
    this.myInterruptingThread = new Thread(new Runnable() {
      @Override
      public void run() {
        for (; ; ) {
          try {
            DelayedInterrupt di = myInterruptQueue.take();
            di.timeIsUp();
          } catch (InterruptedException e) {
            Application app = ApplicationManager.getApplication();
            if (app == null || app.isDisposeInProgress() || app.isDisposed()) {
              return;
            }
          }
        }
      }
    }, "MPS interrupting thread");
    myInterruptingThread.start();
  }

  @Override
  public void dispose() {
    for (int attempt = 3; attempt > 0 && myInterruptingThread.isAlive(); --attempt) {
      myInterruptingThread.interrupt();
      try {
        myInterruptingThread.join(500);
      } catch (InterruptedException e) {
        break;
      }
    }
    super.dispose();
  }

  @Override
  public void runReadAction(final Runnable r) {
    if (canRead()) {
      r.run();
      return;
    }
    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      throw new IllegalStateException("deadlock prevention: do not start read action in EDT, use tryRead");
    }
    ApplicationManager.getApplication().runReadAction(new Runnable() {
      @Override
      public void run() {
        getReadLock().lock();
        try {
          r.run();
        } finally {
          getReadLock().unlock();
        }
      }
    });
  }

  @Override
  public <T> T runReadAction(final Computable<T> c) {
    if (canRead()) {
      return c.compute();
    }
    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      throw new IllegalStateException("deadlock prevention: do not start read action in EDT, use tryRead");
    }
    return ApplicationManager.getApplication().runReadAction(new com.intellij.openapi.util.Computable<T>() {
      @Override
      public T compute() {
        getReadLock().lock();
        try {
          return c.compute();
        } finally {
          getReadLock().unlock();
        }
      }
    });
  }

  @Override
  public void runWriteAction(final Runnable r) {
    if (canWrite()) {
      r.run();
      return;
    }
    assertNotWriteFromRead();
    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      throw new IllegalStateException("deadlock prevention: do not start write action in EDT, use tryWrite");
    }
    Runnable runnable = new Runnable() {
      @Override
      public void run() {
        getWriteLock().lock();
        try {
          clearRepositoryStateCaches();
          r.run();
        } finally {
          getWriteLock().unlock();
        }
      }
    };
    if (ThreadUtils.isEventDispatchThread()) {
      ApplicationManager.getApplication().runWriteAction(runnable);
    } else {
      ApplicationManager.getApplication().runReadAction(runnable);
    }
  }

  @Override
  public <T> T runWriteAction(final Computable<T> c) {
    if (canWrite()) {
      return c.compute();
    }
    assertNotWriteFromRead();
    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      throw new IllegalStateException("deadlock prevention: do not start write action in EDT, use tryWrite");
    }
    com.intellij.openapi.util.Computable<T> computable = new com.intellij.openapi.util.Computable<T>() {
      @Override
      public T compute() {
        getWriteLock().lock();
        try {
          clearRepositoryStateCaches();
          return c.compute();
        } finally {
          getWriteLock().unlock();
        }
      }
    };
    if (ThreadUtils.isEventDispatchThread()) {
      return ApplicationManager.getApplication().runWriteAction(computable);
    } else {
      return ApplicationManager.getApplication().runReadAction(computable);
    }
  }

  @Override
  public void writeFilesInEDT(@NotNull final Runnable action) {
    // EDT should have IDEA write lock
    runReadInWriteAction(new Computable<Object>() {
      @Override
      public Object compute() {
        Runnable task = new Runnable() {
          @Override
          public void run() {
            runReadInWriteWorker(action);
          }
        };
        if (ApplicationManager.getApplication().isDispatchThread()) {
          task.run();
        } else {
          if (!myDistributedLocksMode) {
            LOG.error("EDT should have IDEA write lock", new Exception());
            throw new IllegalStateException();
          } else {
            ApplicationManager.getApplication().invokeAndWait(task, ModalityState.defaultModalityState());
          }
        }
        return null;
      }
    });
  }

  @Override
  public void runWriteActionWithProgressSynchronously(@NotNull final RunnableWithProgress process, final String progressTitle, final boolean canBeCanceled,
      final jetbrains.mps.project.Project project) {
    if (!ApplicationManager.getApplication().isDispatchThread()) {
      throw new IllegalStateException("should be event dispatch thread");
    }
    assert !canRead() : "should be outside of read actions";
    assert !myDistributedLocksMode : "cannot re-enter distributed locks mode";

    ApplicationManager.getApplication().runWriteAction(new Runnable() {
      @Override
      public void run() {
        try {
          myDistributedLocksMode = true;
          ProgressManager.getInstance().runProcessWithProgressSynchronously(new Runnable() {
            @Override
            public void run() {
              ProgressIndicator progressIndicator = ProgressManager.getInstance().getProgressIndicator();
              progressIndicator.pushState();
              getWriteLock().lock();
              try {
                clearRepositoryStateCaches();
                process.run(new ProgressMonitorAdapter(progressIndicator));
              } finally {
                getWriteLock().unlock();
                progressIndicator.popState();
              }
            }
          }, progressTitle, canBeCanceled, ProjectHelper.toIdeaProject(project));
        } finally {
          myDistributedLocksMode = false;
        }
      }
    });
  }

  private void assertNotWriteFromRead() {
    if (canRead()) {
      throw new IllegalStateException("deadlock prevention: do not start write action from read");
    }
  }

  @Override
  public void flushEventQueue() {
    myEDTExecutor.flushEventQueue();
  }

  @Override
  public void runReadInEDT(Runnable r) {
    myEDTExecutor.scheduleRead(r);
  }

  @Override
  public void runWriteInEDT(Runnable r) {
    myEDTExecutor.scheduleWrite(r);
  }

  @Override
  public void runCommandInEDT(@NotNull Runnable r, @NotNull Project p) {
    myEDTExecutor.scheduleCommand(r, p);
  }

  @Override
  public boolean isInEDT() {
    return ApplicationManager.getApplication().isDispatchThread();
  }

  @Override
  public boolean tryRead(final Runnable r) {
    if (canRead()) {
      r.run();
      return true;
    }

    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      return false;
    }

    return ApplicationManager.getApplication().runReadAction(new com.intellij.openapi.util.Computable<Boolean>() {
      @Override
      public Boolean compute() {
        if (getReadLock().tryLock()) {
          try {
            r.run();
          } finally {
            getReadLock().unlock();
          }
          return true;
        } else {
          return false;
        }
      }
    });
  }

  @Override
  public <T> T tryRead(final Computable<T> c) {
    if (canRead()) {
      return c.compute();
    }

    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      return null;
    }

    return ApplicationManager.getApplication().runReadAction(new com.intellij.openapi.util.Computable<T>() {
      @Override
      public T compute() {
        if (getReadLock().tryLock()) {
          try {
            return c.compute();
          } finally {
            getReadLock().unlock();
          }
        } else {
          return null;
        }
      }
    });
  }

  @Override
  public void requireRead(Runnable r) {
    int i;
    long start;
    long waited;
    do {
      start = System.currentTimeMillis();
      for (i = 0; i < REQUIRE_MAX_TRIES && !tryRead(r); ++i) {
        try {
          Thread.sleep((1 << i) * 100);
        } catch (InterruptedException ignore) {
        }
      }
      waited = System.currentTimeMillis() - start;
    } while (i >= REQUIRE_MAX_TRIES && !confirmActionCancellation());

    if (i >= REQUIRE_MAX_TRIES) {
      throw new TimeOutRuntimeException("Failed to acquire write lock after having waited for " + waited + "ms");
    }
  }

  @Override
  public <T> T requireRead(Computable<T> c) {
    T result = null;
    int i;
    long start;
    long waited;
    do {
      start = System.currentTimeMillis();
      for (i = 0; i < REQUIRE_MAX_TRIES && (result = tryRead(c)) == null; ++i) {
        try {
          Thread.sleep((1 << i) * 100);
        } catch (InterruptedException ignore) {
        }
      }
      waited = System.currentTimeMillis() - start;
    } while (i >= REQUIRE_MAX_TRIES && !confirmActionCancellation());

    if (i >= REQUIRE_MAX_TRIES) {
      throw new TimeOutRuntimeException("Failed to acquire write lock after having waited for " + waited + "ms");
    }
    return result;
  }

  @Override
  public boolean tryWrite(final Runnable r) {
    if (canWrite()) {
      r.run();
      return true;
    }

    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      return false;
    }

    com.intellij.openapi.util.Computable<Boolean> computable = new com.intellij.openapi.util.Computable<Boolean>() {
      @Override
      public Boolean compute() {
        try {
          if (getWriteLock().tryLock(WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS)) {
            try {
              clearRepositoryStateCaches();
              r.run();
            } finally {
              getWriteLock().unlock();
            }
            return true;
          } else {
            return false;
          }
        } catch (InterruptedException e) {
          return false;
        }
      }
    };

    if (ThreadUtils.isEventDispatchThread()) {
      Boolean res = new TryWriteActionComputable<Boolean>(computable).compute();
      return res != null ? res : false;
    } else {
      return ApplicationManager.getApplication().runReadAction(computable);
    }
  }


  @Override
  public <T> T tryWrite(final Computable<T> c) {
    if (canWrite()) {
      return c.compute();
    }

    if (myDistributedLocksMode && ApplicationManager.getApplication().isDispatchThread()) {
      return null;
    }

    com.intellij.openapi.util.Computable<T> computable = new com.intellij.openapi.util.Computable<T>() {
      @Override
      public T compute() {
        try {
          if (getWriteLock().tryLock(WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS)) {
            try {
              clearRepositoryStateCaches();
              return c.compute();
            } finally {
              getWriteLock().unlock();
            }
          } else {
            return null;
          }
        } catch (InterruptedException e) {
          return null;
        }
      }
    };

    if (ThreadUtils.isEventDispatchThread()) {
      return new TryWriteActionComputable<T>(computable).compute();
    } else {
      return ApplicationManager.getApplication().runReadAction(computable);
    }
  }

  @Override
  public void requireWrite(Runnable r) {
    int i;
    long start;
    long waited;
    do {
      start = System.currentTimeMillis();
      for (i = 0; i < REQUIRE_MAX_TRIES && !tryWrite(r); ++i) {
        try {
          Thread.sleep((1 << i) * 100);
        } catch (InterruptedException ignore) {
        }
      }
      waited = System.currentTimeMillis() - start;
    } while (i >= REQUIRE_MAX_TRIES && !confirmActionCancellation());

    if (i >= REQUIRE_MAX_TRIES) {
      throw new TimeOutRuntimeException("Failed to acquire write lock after having waited for " + waited + "ms");
    }
  }

  @Override
  public <T> T requireWrite(Computable<T> c) {
    T result = null;
    int i;
    long start;
    long waited;
    do {
      start = System.currentTimeMillis();
      for (i = 0; i < REQUIRE_MAX_TRIES && (result = tryWrite(c)) == null; ++i) {
        try {
          Thread.sleep((1 << i) * 100);
        } catch (InterruptedException ignore) {
        }
      }
      waited = System.currentTimeMillis() - start;
    } while (i >= REQUIRE_MAX_TRIES && !confirmActionCancellation());

    if (i >= REQUIRE_MAX_TRIES) {
      throw new TimeOutRuntimeException("Failed to acquire write lock after having waited for " + waited + "ms");
    }
    return result;
  }

  @Override
  public boolean tryWriteInCommand(final Runnable r, Project p) {
    if (myDistributedLocksMode) {
      return false;
    }
    ApplicationManager.getApplication().assertIsDispatchThread();

    final boolean[] res = new boolean[]{false};

    final Project project = p != null ? p : CurrentProjectAccessUtil.getMPSProjectFromUI();

    Runnable commandRunnable = new Runnable() {
      @Override
      public void run() {
        try {
          if (getWriteLock().tryLock(WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS)) {
            try {
              clearRepositoryStateCaches();
              new CommandRunnable(r, project).run();
            } finally {
              getWriteLock().unlock();
            }
          }
        } catch (InterruptedException e) {
          return;
        }
        res[0] = true;
      }
    };

    CommandProcessor.getInstance().executeCommand(
        ProjectHelper.toIdeaProject(project),
        new TryWriteActionRunnable(commandRunnable),
        "", null, UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);

    return res[0];
  }

  @Override
  public <T> T tryWriteInCommand(final Computable<T> r, Project p) {
    if (myDistributedLocksMode) {
      return null;
    }
    ApplicationManager.getApplication().assertIsDispatchThread();

    final T[] res = (T[]) new Object[]{null};

    final Project project = p != null ? p : CurrentProjectAccessUtil.getMPSProjectFromUI();
    Runnable commandRunnable = new Runnable() {
      @Override
      public void run() {
        try {
          if (getWriteLock().tryLock(WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS)) {
            try {
              clearRepositoryStateCaches();
              res[0] = new CommandComputable<T>(r, project).compute();
            } finally {
              getWriteLock().unlock();
            }
          }
        } catch (InterruptedException ignore) {
        }
      }
    };

    CommandProcessor.getInstance().executeCommand(
        ProjectHelper.toIdeaProject(project),
        new TryWriteActionRunnable(commandRunnable),
        "", null, UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);

    return res[0];
  }

  @Override
  public void executeCommand(Runnable r, Project project) {
    if (project == null) {
      project = CurrentProjectAccessUtil.getMPSProjectFromUI();
    }
    CommandProcessor.getInstance().executeCommand(ProjectHelper.toIdeaProject(project), new CommandRunnable(r, project), "", null,
        UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
  }

  @Override
  @Deprecated
  public <T> T runWriteActionInCommand(Computable<T> c) {
    return runWriteActionInCommand(c, CurrentProjectAccessUtil.getMPSProjectFromUI());
  }

  @Override
  public <T> T runWriteActionInCommand(Computable<T> c, Project project) {
    if (project == null) {
      project = CurrentProjectAccessUtil.getMPSProjectFromUI();
    }
    return runWriteActionInCommand(c, null, null, false, project);
  }

  @Override
  public <T> T runWriteActionInCommand(final Computable<T> c, String name, Object groupId, final boolean requestUndoConfirmation, final Project project) {
    final Object[] result = new Object[1];
    CommandProcessor.getInstance().executeCommand(ProjectHelper.toIdeaProject(project), new Runnable() {
      @Override
      public void run() {
        result[0] = new CommandComputable(c, project).compute();
      }
    }, name, null, requestUndoConfirmation ? UndoConfirmationPolicy.REQUEST_CONFIRMATION : UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
    return (T) result[0];
  }

  @Override
  @Deprecated
  public void runWriteActionInCommand(Runnable r) {
    runWriteActionInCommand(r, CurrentProjectAccessUtil.getMPSProjectFromUI());
  }

  @Override
  public void runWriteActionInCommand(Runnable r, Project project) {
    runWriteActionInCommand(r, null, null, false, project);
  }

  @Override
  public void runWriteActionInCommand(Runnable r, String name, Object groupId, boolean requestUndoConfirmation, Project project) {
    CommandProcessor.getInstance().executeCommand(ProjectHelper.toIdeaProject(project), new CommandRunnable(r, project), name, groupId,
        requestUndoConfirmation ? UndoConfirmationPolicy.REQUEST_CONFIRMATION : UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
  }

  @Override
  public void runWriteActionInCommandAsync(final Runnable r, final Project project) {
    // FIXME
    SwingUtilities.invokeLater(new Runnable() {
      @Override
      public void run() {
        runWriteActionInCommand(r, project);
      }
    });
  }

  @Override
  public void runUndoTransparentCommand(Runnable r) {
    if (myCommandLevel > 0) {
      throw new IllegalStateException("undo transparent action cannot be invoked in a command");
    }

    int cmd = myCommandLevel;
    try {
      myCommandLevel = 0;
      CommandProcessor.getInstance().runUndoTransparentAction(new CommandRunnable(r, CurrentProjectAccessUtil.getMPSProjectFromUI()));
    } finally {
      myCommandLevel = cmd;
    }
  }

  @Override
  public void runUndoTransparentCommand(Runnable r, Project project) {
    if (myCommandLevel > 0) {
      throw new IllegalStateException("undo transparent action cannot be invoked in a command");
    }

    int cmd = myCommandLevel;
    try {
      myCommandLevel = 0;
      CommandProcessor.getInstance().runUndoTransparentAction(new CommandRunnable(r, project));
    } finally {
      myCommandLevel = cmd;
    }
  }

  @Override
  public boolean isInsideCommand() {
    return canWrite() && myCommandLevel > 0;
  }

  @Override
  public void checkReadAccess() {
    // TODO remove this method
    if (!canRead() /* && !myIndexingThreads.contains(Thread.currentThread())*/) {
      throw new IllegalModelAccessError("You can read model only inside read actions");
    }
  }

  @Override
  public void runIndexing(Runnable r) {
    boolean needToRemove = myIndexingThreads.add(Thread.currentThread());
    try {
      r.run();
    } finally {
      if (needToRemove) {
        myIndexingThreads.remove(Thread.currentThread());
      }
    }
  }

  private boolean confirmActionCancellation() {
    if (((ApplicationEx) ApplicationManager.getApplication()).holdsReadLock()) {
      return true;
    }

    final int[] chosen = new int[1];
    final ProgressIndicator pi = ProgressManager.getInstance().getProgressIndicator();
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      @Override
      public void run() {
        if (pi instanceof ProgressWindow && !((ProgressWindow) pi).isBackgrounded()) {
          ((ProgressWindow) pi).background();
        }

        chosen[0] = Messages.showYesNoDialog("The current action is taking too long, do you want to abort it?", "Unresponsive Process", null);
      }
    });

    return chosen[0] == 0;
  }

  //--------command events listening

  private List<ModelAccessListener> myListeners = new ArrayList<ModelAccessListener>();
  private final Object myListenersLock = new Object();

  private int myCommandLevel = 0;

  private void incCommandLevel() {
    assertLegalWrite();
    if (myCommandLevel != 0) {
      // LOG.error("command level>0", new Exception());
    } else {
      onCommandStarted();
    }
    myCommandLevel++;
  }

  private void decCommandLevel(Project p) {
    assertLegalWrite();
    myCommandLevel--;
    if (myCommandLevel == 0) {
      UndoHelper.getInstance().flushCommand(p);
      onCommandFinished();
    }
  }

  @Override
  public void addCommandListener(ModelAccessListener l) {
    synchronized (myListenersLock) {
      myListeners.add(l);
    }
  }

  @Override
  public void removeCommandListener(ModelAccessListener l) {
    synchronized (myListenersLock) {
      myListeners.remove(l);
    }
  }

  @Override
  protected void onCommandStarted() {
    super.onCommandStarted();
    ArrayList<ModelAccessListener> listeners;
    synchronized (myListenersLock) {
      listeners = new ArrayList<ModelAccessListener>(myListeners);
    }

    for (ModelAccessListener l : listeners) {
      try {
        l.commandStarted();
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
  }

  @Override
  protected void onCommandFinished() {
    ArrayList<ModelAccessListener> listeners;
    synchronized (myListenersLock) {
      listeners = new ArrayList<ModelAccessListener>(myListeners);
    }
    for (ModelAccessListener l : listeners) {
      try {
        l.commandFinished();
      } catch (Throwable t) {
        LOG.error(null, t);
      }
    }
    super.onCommandFinished();
  }

  void waitLock(boolean write) {
    if (write) {
      try {
        while (!getWriteLock().tryLock(100, TimeUnit.MILLISECONDS)) {
        }
        getWriteLock().unlock();
      } catch (InterruptedException e) {
      }
    } else {
      getReadLock().lock();
      getReadLock().unlock();
    }
  }

  private class CommandRunnable implements Runnable {
    private final Runnable myRunnable;
    private final Project myProject;

    public CommandRunnable(Runnable r, Project project) {
      myRunnable = r;
      myProject = project;
    }

    @Override
    public void run() {
      runWriteAction(new Runnable() {
        @Override
        public void run() {
          incCommandLevel();
          try {
            myRunnable.run();
          } finally {
            decCommandLevel(myProject);
          }
        }
      });
    }
  }

  private class CommandComputable<T> implements Computable<T> {
    private final Computable<T> myComputable;
    private final Project myProject;

    public CommandComputable(Computable<T> c, Project project) {
      myComputable = c;
      myProject = project;
    }

    @Override
    public T compute() {
      return runWriteAction(new Computable<T>() {
        @Override
        public T compute() {
          incCommandLevel();
          T result = null;
          try {
            result = myComputable.compute();
          } finally {
            decCommandLevel(myProject);
          }
          return result;
        }
      });
    }
  }

  private class TryWriteActionRunnable implements Runnable {

    private final Runnable myRunnable;

    public TryWriteActionRunnable(Runnable runnable) {
      myRunnable = runnable;
    }

    @Override
    public void run() {
      // workaround for IDEA's locks shortcoming: timeout on write action
      Thread.interrupted();
      final DelayedInterrupt delayedInterrupt = interruptLater(Thread.currentThread(), WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS);
      try {
        ApplicationManager.getApplication().runWriteAction(new Runnable() {
          @Override
          public void run() {
            cancelInterrupt(delayedInterrupt);
            myRunnable.run();
          }
        });
      } catch (RuntimeException re) {
        while (re.getCause() instanceof RuntimeException) {
          re = (RuntimeException) re.getCause();
        }
        if (!(re.getCause() instanceof InterruptedException)) {
          throw re;
        }
        cancelInterrupt(delayedInterrupt);
      }
    }
  }

  private class TryWriteActionComputable<T> implements Computable<T> {

    private final com.intellij.openapi.util.Computable<T> myComputable;

    public TryWriteActionComputable(com.intellij.openapi.util.Computable<T> computable) {
      myComputable = computable;
    }

    @Override
    public T compute() {
      // workaround for IDEA's locks shortcoming: timeout on write action
      Thread.interrupted();
      final DelayedInterrupt delayedInterrupt = interruptLater(Thread.currentThread(), WAIT_FOR_WRITE_LOCK_MILLIS, MILLISECONDS);
      try {
        return ApplicationManager.getApplication().runWriteAction(new com.intellij.openapi.util.Computable<T>() {
          @Override
          public T compute() {
            cancelInterrupt(delayedInterrupt);
            return myComputable.compute();
          }
        });
      } catch (RuntimeException re) {
        while (re.getCause() instanceof RuntimeException) {
          re = (RuntimeException) re.getCause();
        }
        if (!(re.getCause() instanceof InterruptedException)) {
          throw re;
        }
        cancelInterrupt(delayedInterrupt);
        return null;
      }
    }
  }

  private void cancelInterrupt(DelayedInterrupt di) {
    myInterruptQueue.remove(di);
  }

  private DelayedInterrupt interruptLater(Thread toInterrupt, long delay, TimeUnit unit) {
    DelayedInterrupt di = new DelayedInterrupt(toInterrupt, delay, unit);
    myInterruptQueue.put(di);
    return di;
  }

  private static class DelayedInterrupt implements Delayed {

    private long alarmTimeMillis;
    private Thread toInterrupt;

    private DelayedInterrupt(Thread toInterrupt, long delay, TimeUnit unit) {
      this.toInterrupt = toInterrupt;
      this.alarmTimeMillis = System.currentTimeMillis() + unit.toMillis(delay);
    }

    private void timeIsUp() {
      toInterrupt.interrupt();
    }

    @Override
    public long getDelay(TimeUnit unit) {
      return unit.convert(alarmTimeMillis - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    @Override
    public int compareTo(Delayed that) {
      if (!(that instanceof DelayedInterrupt)) throw new ClassCastException();
      return (int) (this.alarmTimeMillis - ((DelayedInterrupt) that).alarmTimeMillis);
    }
  }
}
