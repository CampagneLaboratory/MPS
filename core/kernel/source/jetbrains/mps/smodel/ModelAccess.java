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
package jetbrains.mps.smodel;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.command.UndoConfirmationPolicy;
import com.intellij.openapi.util.Computable;
import com.intellij.util.containers.ConcurrentHashSet;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.logging.Logger;

import javax.swing.SwingUtilities;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * We access IDEA locking mechanism here in order to prevent different way of acquiring locks
 * We always first acquire IDEA's lock and only then acquire MPS's lock
 */
public class ModelAccess {

  private static final Logger LOG = Logger.getLogger(ModelAccess.class);

  private static final ModelAccess ourInstance = new ModelAccess();
  private static Set<String> ourErroredModels = new HashSet<String>();

  private ReentrantReadWriteLock myReadWriteLock = new ReentrantReadWriteLock();
  private EDTExecutor myEDTExecutor = new EDTExecutor();
  private Set<Thread> myIndexingThreads = new ConcurrentHashSet<Thread>();

  /* support of temporary downgrading write lock to shared read lock */
  private ReentrantReadWriteLock mySharedReadInWriteLock = new ReentrantReadWriteLock();
  private volatile boolean mySharedReadInWriteMode = false;

  private boolean allowSharedRead;

  private ModelAccess() {
    allowSharedRead = isSharedReadMode();
  }

  public static ModelAccess instance() {
    return ourInstance;
  }

  private Lock getReadLock() {
    if (allowSharedRead) {
      return myReadWriteLock.readLock();
    } else {
      return myReadWriteLock.writeLock();
    }
  }

  private Lock getWriteLock() {
    return myReadWriteLock.writeLock();
  }

  public <T> T runReadInWriteAction(final Computable<T> c) {
    assertLegalWrite();

    mySharedReadInWriteLock.writeLock().lock();
    mySharedReadInWriteMode = true;
    mySharedReadInWriteLock.writeLock().unlock();
    try {
      return c.compute();
    } finally {
      mySharedReadInWriteLock.writeLock().lock();
      mySharedReadInWriteMode = false;
      mySharedReadInWriteLock.writeLock().unlock();
    }
  }

  public void runReadAction(final Runnable r) {
    if (canRead()) {
      r.run();
      return;
    }
    if (mySharedReadInWriteMode) {
      try {
        mySharedReadInWriteLock.readLock().lock();
        r.run();
      } finally {
        mySharedReadInWriteLock.readLock().unlock();
      }
      return;
    }
    ApplicationManager.getApplication().runReadAction(new Runnable() {
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

  public void runWriteAction(final Runnable r) {
    if (canWrite()) {
      r.run();
      return;
    }
    Runnable runnable = new Runnable() {
      public void run() {
        getWriteLock().lock();
        try {
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

  public <T> T runReadAction(final Computable<T> c) {
    if (canRead()) {
      return c.compute();
    }
    if (mySharedReadInWriteMode) {
      try {
        mySharedReadInWriteLock.readLock().lock();
        return c.compute();
      } finally {
        mySharedReadInWriteLock.readLock().unlock();
      }
    }
    return ApplicationManager.getApplication().runReadAction(new Computable<T>() {
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

  public <T> T runWriteAction(final Computable<T> c) {
    if (canWrite()) {
      return c.compute();
    }
    Computable<T> computable = new Computable<T>() {
      public T compute() {
        getWriteLock().lock();
        try {
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

  public void flushEventQueue() {
    myEDTExecutor.flushEventQueue();
  }

  public void runReadInEDT(Runnable r) {
    myEDTExecutor.invokeReadInEDT(r);
  }

  public void runCommandInEDT(Runnable r) {
    myEDTExecutor.invokeCommandInEDT(r);
  }

  public boolean isInEDT() {
    return myEDTExecutor.isInEDT();
  }

  public boolean tryRead(final Runnable r) {
    return ApplicationManager.getApplication().runReadAction(new Computable<Boolean>() {
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

  public <T> T tryRead(final Computable<T> c) {
    return ApplicationManager.getApplication().runReadAction(new Computable<T>() {
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

  public boolean tryWriteInCommand(final Runnable r) {
    final boolean[] res = new boolean[]{false};

    //todo this is a hack but it works
    if (!getWriteLock().tryLock()) {
      return false;
    }
    getWriteLock().unlock();

    executeCommand(new Runnable() {
      public void run() {
        ApplicationManager.getApplication().runWriteAction(new Runnable() {
          public void run() {
            if (getWriteLock().tryLock()) {
              try {
                new CommandRunnable(r).run();
              } finally {
                getWriteLock().unlock();
              }
              res[0] = true;
            }
          }
        });
      }
    });

    return res[0];
  }

  public boolean canRead() {
    if (allowSharedRead) {
      if (myReadWriteLock.getReadHoldCount() != 0) {
        return true;
      }
    }
    return myReadWriteLock.isWriteLockedByCurrentThread() ||
      (mySharedReadInWriteMode && mySharedReadInWriteLock.getReadHoldCount() != 0);
  }

  public boolean canWrite() {
    if (mySharedReadInWriteMode) {
      return false;
    }
    return myReadWriteLock.isWriteLockedByCurrentThread();
  }

  public void checkReadAccess() {
    if (!canRead()) {
      throw new IllegalStateException();
    }
  }

  public void checkWriteAccess() {
    if (!canWrite()) {
      throw new IllegalStateException();
    }
  }

  public void executeCommand(Runnable r) {
    CommandProcessor.getInstance().executeCommand(null, new CommandRunnable(r), "", null, UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
  }

  public <T> T runWriteActionInCommand(final Computable<T> c) {
    return runWriteActionInCommand(c, null, UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
  }

  public <T> T runWriteActionInCommand(final Computable<T> c, final String name, final UndoConfirmationPolicy policy) {
    final Object[] result = new Object[1];
    CommandProcessor.getInstance().executeCommand(null, new Runnable() {
      public void run() {
        result[0] = new CommandComputable(c).compute();
      }
    }, name, null, policy);
    return (T) result[0];
  }

  public void runWriteActionInCommand(final Runnable r) {
    runWriteActionInCommand(r, null, UndoConfirmationPolicy.DO_NOT_REQUEST_CONFIRMATION);
  }

  public void runWriteActionInCommand(final Runnable r, String name, UndoConfirmationPolicy policy) {
    CommandProcessor.getInstance().executeCommand(null, new CommandRunnable(r), name, null, policy);
  }

  public void runWriteActionInCommandAsync(final Runnable r) {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        runWriteActionInCommand(r);
      }
    });
  }

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

  static final void assertLegalWrite() {
    if (!instance().canWrite()) {
      throw new IllegalModelAccessError("You can write model only inside write actions");
    }
  }

  public static void assertLegalRead() {
    if (!instance().canRead()) {
      LOG.error(new IllegalModelAccessError("You can read model only inside read actions"));
      // TODO throw
    }
  }

  static final void assertLegalRead(SNode node) {
    if (node.isDisposed()) {
      if (!ourErroredModels.contains(node.getModelName_internal())) {
        ourErroredModels.add(node.getModelName_internal());
        System.err.println("CRITICAL: INVALID OPERATION DETECTED");
        System.err.println("model: " + node.getModelName_internal());
        new IllegalModelAccessError("Accessing disposed node").printStackTrace(System.err);
      }
    }
    ModelAccess modelAccess = ModelAccess.instance();
    if (!modelAccess.canRead() && !modelAccess.myIndexingThreads.contains(Thread.currentThread())) {
      throw new IllegalModelAccessError("You can read model only inside read actions");
    }
  }

  private static boolean isSharedReadMode() {
    return "true".equals(System.getProperty("mps.sharedread"));
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

  private void decCommandLevel() {
    assertLegalWrite();
    myCommandLevel--;
    if (myCommandLevel == 0) {
      onCommandFinished();
    }
  }

  public void addCommandListener(ModelAccessListener l) {
    synchronized (myListenersLock) {
      myListeners.add(l);
    }
  }

  public void removeCommandListener(ModelAccessListener l) {
    synchronized (myListenersLock) {
      myListeners.remove(l);
    }
  }

  private void onCommandStarted() {
    ArrayList<ModelAccessListener> listeners;
    synchronized (myListenersLock) {
      listeners = new ArrayList<ModelAccessListener>(myListeners);
    }

    for (ModelAccessListener l : listeners) {
      try {
        l.commandStarted();
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private void onCommandFinished() {
    ArrayList<ModelAccessListener> listeners;
    synchronized (myListenersLock) {
      listeners = new ArrayList<ModelAccessListener>(myListeners);
    }

    for (ModelAccessListener l : listeners) {
      try {
        l.beforeCommandFinished();
      } catch (Throwable t) {
        LOG.error(t);
      }
    }

    for (ModelAccessListener l : listeners) {
      try {
        l.commandFinished();
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private class CommandRunnable implements Runnable {
    private final Runnable myRunnable;

    public CommandRunnable(Runnable r) {
      myRunnable = r;
    }

    public void run() {
      runWriteAction(new Runnable() {
        public void run() {
          incCommandLevel();
          try {
            myRunnable.run();
          } finally {
            decCommandLevel();
          }
        }
      });
    }
  }

  private class CommandComputable<T> implements Computable<T> {
    private final Computable<T> myComputable;

    public CommandComputable(Computable<T> c) {
      myComputable = c;
    }

    public T compute() {
      return runWriteAction(new Computable<T>() {
        public T compute() {
          incCommandLevel();
          T result = null;
          try {
            result = myComputable.compute();
          } finally {
            decCommandLevel();
          }
          return result;
        }
      });
    }
  }
}
