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
package jetbrains.mps.smodel.descriptor.source;

import jetbrains.mps.progress.ProgressMonitor;
import jetbrains.mps.progress.SubProgressKind;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.descriptor.source.changes.ModelFileWatcher;
import jetbrains.mps.vfs.IFile;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * This is a base class for all data sources built on the top of file system
 */
public abstract class FileBasedModelDataSource implements ModelDataSource {
  private final Object LOCK = new Object();
  private List<ChangeListener> myListeners = new ArrayList<ChangeListener>();
  private boolean myInvalidated = false;
  private final ModuleReference myOrigin;

  protected FileBasedModelDataSource(ModuleReference origin) {
    myOrigin = origin;
  }

  public ModuleReference getOrigin() {
    return myOrigin;
  }

  public void startListening(ChangeListener l) {
    synchronized (LOCK) {
      if (myListeners.isEmpty()) {
        ModelFileWatcher.getInstance().startListening(this);
        ReloadableSources.getInstance().addSource(this);
      }
      myListeners.add(l);
    }
  }

  public void stopListening(ChangeListener l) {
    synchronized (LOCK) {
      myListeners.remove(l);
      if (myListeners.isEmpty()) {
        ReloadableSources.getInstance().removeSource(this);
        ModelFileWatcher.getInstance().stopListening(this);
      }
    }
  }

  public void reload(ProgressMonitor monitor) {
    myInvalidated = false;

    List<ChangeListener> listeners;
    synchronized (LOCK) {
      listeners = new ArrayList<ChangeListener>(myListeners);
    }
    monitor.start("", listeners.size());
    try {
      for (ChangeListener l : listeners) {
        l.changed(monitor.subTask(1, SubProgressKind.AS_COMMENT));
      }
    } finally {
      monitor.done();
    }
  }

  public abstract Collection<String> getFilesToListen();

  public boolean isInvalidated(){
    return myInvalidated;
  }

  public void invalidate() {
    myInvalidated = true;
  }
  
  protected void sourceFilesChanged(){
    invalidate();
    ModelFileWatcher.getInstance().stopListening(this);
    ModelFileWatcher.getInstance().startListening(this);
  }
}
