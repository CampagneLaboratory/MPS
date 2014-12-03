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
package jetbrains.mps.smodel;

import jetbrains.mps.smodel.references.ImmatureReferences;
import jetbrains.mps.smodel.references.UnregisteredNodes;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.repository.WriteActionListener;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * The actual implementation of {@link org.jetbrains.mps.openapi.module.ModelAccess} interface methods
 * Probably it is better to merge it with
 * {@link jetbrains.mps.project.ProjectModelAccess} and
 * {@link jetbrains.mps.smodel.ModelAccessBase}
 * which currently simply delegate all methods to this class
 *
 * @see org.jetbrains.mps.openapi.module.ModelAccess
 */
public abstract class ModelAccess implements ModelCommandProjectExecutor {
  protected final WriteActionDispatcher myWriteActionDispatcher = new WriteActionDispatcher();

  protected static final Logger LOG = LogManager.getLogger(ModelAccess.class);

  private static ModelAccess ourInstance;

  private final ReentrantReadWriteLockEx myReadWriteLock = new ReentrantReadWriteLockEx();

  /* support of temporary downgrading write lock to shared read lock */
  protected final ReentrantReadWriteLock mySharedReadInWriteLock = new ReentrantReadWriteLock();
  protected volatile boolean mySharedReadInWriteMode = false;

  //ModelAccess is a singleton, so we can omit remove() here though the field is not static
  private ThreadLocal<Boolean> myReadEnabledFlag = new ThreadLocal<Boolean>() {
    @Override
    protected Boolean initialValue() {
      return Boolean.FALSE;
    }
  };

  protected final ConcurrentHashMap<String, ConcurrentMap<Object, Object>> myRepositoryStateCaches = new ConcurrentHashMap<String, ConcurrentMap<Object, Object>>();

  protected ModelAccess() {

  }

  /**
   * It is better to use {@link org.jetbrains.mps.openapi.module.SRepository#getModelAccess()} method to get
   * the repository access.
   * @deprecated
   * @since 3.1
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static ModelAccess instance() {
    return ourInstance;
  }

  public static void setInstance(ModelAccess modelAccess) {
    ourInstance = modelAccess;
  }

  protected Lock getReadLock() {
    return myReadWriteLock.readLock();
  }

  protected Lock getWriteLock() {
    return myReadWriteLock.writeLock();
  }

  public boolean hasScheduledWrites() {
    return myReadWriteLock.hasScheduledWrites();
  }

  @Override
  public boolean canRead() {
    if (isReadEnabledFlag() || myReadWriteLock.getReadHoldCount() != 0) return true;
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

  protected boolean isSharedReadInWriteMode() {
    return mySharedReadInWriteMode;
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
      throw new IllegalModelAccessError("You can read model only inside read actions");
    }
  }

  @Override
  public void checkWriteAccess() {
    if (!canWrite()) {
      throw new IllegalModelAccessError("You can write model only inside write actions");
    }
  }

  public static void assertLegalWrite() {
    instance().checkWriteAccess();
  }

  public static void assertLegalRead() {
    instance().checkReadAccess();
  }

  protected void onCommandStarted() {
    UnregisteredNodes.instance().enable();
    ImmatureReferences.getInstance().enable();
  }

  protected void onCommandFinished() {
    ImmatureReferences.getInstance().disable();
    UnregisteredNodes.instance().disable();
  }

  @Override
  public boolean setReadEnabledFlag(boolean flag) {
    Boolean oldValue = myReadEnabledFlag.get();
    myReadEnabledFlag.set(flag);
    return oldValue;
  }

  private boolean isReadEnabledFlag() {
    return Boolean.TRUE == myReadEnabledFlag.get();
  }

  @SuppressWarnings("unchecked")
  @Override
  @NotNull
  public <K, V> ConcurrentMap<K, V> getRepositoryStateCache(String repositoryKey) {
    assertLegalRead();
//    if (canWrite()) {
//      return null;
//    }
    ConcurrentMap<K, V> cache = (ConcurrentMap<K, V>) myRepositoryStateCaches.get(repositoryKey);
    if (cache != null) {
      return cache;
    }
    cache = new ConcurrentHashMap<K, V>();
    LOG.trace("Creating a new repository state cache");
    ConcurrentHashMap<K, V> existingCache = (ConcurrentHashMap<K, V>) myRepositoryStateCaches.putIfAbsent(repositoryKey, (ConcurrentMap<Object, Object>) cache);
    return existingCache != null ? existingCache : cache;
  }

  public void clearRepositoryStateCaches() {
    LOG.debug("Clearing repository state caches");
    myRepositoryStateCaches.clear();
  }

  public void dispose() {
  }

  /**
   * @deprecated use {@link org.jetbrains.mps.openapi.module.ModelAccess#addWriteActionListener}
   */
  @Deprecated
  public void addWriteActionListener(WriteActionListener listener) {
    myWriteActionDispatcher.addWriteActionListener(listener);
  }

  /**
   * @deprecated use {@link org.jetbrains.mps.openapi.module.ModelAccess#removeWriteActionListener}
   */
  @Deprecated
  public void removeWriteActionListener(WriteActionListener listener) {
    myWriteActionDispatcher.removeWriteActionListener(listener);
  }

  private static class ReentrantReadWriteLockEx extends ReentrantReadWriteLock {

    public ReentrantReadWriteLockEx() {
      super(true);
    }

    public boolean hasScheduledWrites() {
      return !this.getQueuedWriterThreads().isEmpty();
    }
  }

}
