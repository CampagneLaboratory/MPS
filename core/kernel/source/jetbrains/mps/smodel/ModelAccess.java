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

import com.intellij.openapi.util.Computable;
import com.intellij.util.containers.ConcurrentHashSet;
import jetbrains.mps.logging.Logger;

import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public abstract class ModelAccess implements ModelCommandExecutor {

  protected static final Logger LOG = Logger.getLogger(ModelAccess.class);

  private static Set<String> ourErroredModels = new ConcurrentHashSet<String>();
  private static ModelAccess ourInstance = new DefaultModelAccess();

  private final boolean allowSharedRead;
  private final ReentrantReadWriteLock myReadWriteLock = new ReentrantReadWriteLock();

  /* support of temporary downgrading write lock to shared read lock */
  protected final ReentrantReadWriteLock mySharedReadInWriteLock = new ReentrantReadWriteLock();
  protected volatile boolean mySharedReadInWriteMode = false;

  protected ModelAccess() {
    allowSharedRead = isSharedReadMode();
  }

  public static ModelAccess instance() {
    return ourInstance;
  }

  public static void setInstance(ModelAccess modelAccess) {
    ourInstance = modelAccess;
  }

  protected Lock getReadLock() {
    if (allowSharedRead) {
      return myReadWriteLock.readLock();
    } else {
      return myReadWriteLock.writeLock();
    }
  }

  protected Lock getWriteLock() {
    return myReadWriteLock.writeLock();
  }

  @Override
  public boolean canRead() {
    if (allowSharedRead) {
      if (myReadWriteLock.getReadHoldCount() != 0) {
        return true;
      }
    }
    return myReadWriteLock.isWriteLockedByCurrentThread() ||
      (mySharedReadInWriteMode && mySharedReadInWriteLock.getReadHoldCount() != 0);
  }

  @Override
  public boolean canWrite() {
    if (mySharedReadInWriteMode) {
      return false;
    }
    return myReadWriteLock.isWriteLockedByCurrentThread();
  }

  @Override
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

  public void runReadInWriteWorker(final Runnable r) {
    if (mySharedReadInWriteMode) {
      try {
        mySharedReadInWriteLock.readLock().lock();
        r.run();
      } finally {
        mySharedReadInWriteLock.readLock().unlock();
      }
      return;
    }
    throw new IllegalStateException();
  }


  @Override
  public void checkReadAccess() {
    if (!canRead()) {
      throw new IllegalStateException();
    }
  }

  @Override
  public void checkWriteAccess() {
    if (!canWrite()) {
      throw new IllegalStateException();
    }
  }

  public static final void assertLegalWrite() {
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
      SModel model = node.getModel();
      String modelName = model == null ? "<null>" : model.getLongName();
      if (ourErroredModels.add(modelName)) {
        System.err.println("CRITICAL: INVALID OPERATION DETECTED");
        System.err.println("model: " + modelName);
        new IllegalModelAccessError("Accessing disposed node").printStackTrace(System.err);
      }
    }
    ModelAccess.instance().doAssertLegalRead(node);
  }

  protected void doAssertLegalRead(SNode node) {
    if (!canRead()) {
      throw new IllegalModelAccessError("You can read model only inside read actions");
    }
  }

  protected void onCommandStarted() {
    UnregisteredNodes.instance().enable();
    ImmatureReferences.getInstance().enable();
  }

  protected void onCommandFinished() {
    ImmatureReferences.getInstance().disable();
    UnregisteredNodes.instance().disable();
  }

  protected static boolean isSharedReadMode() {
    return "true".equals(System.getProperty("mps.sharedread"));
  }
}
