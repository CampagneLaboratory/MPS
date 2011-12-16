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

import jetbrains.mps.progress.ProgressMonitor;
import jetbrains.mps.smodel.descriptor.source.ChangeListener;
import jetbrains.mps.smodel.descriptor.source.ModelDataSource;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.annotations.NotNull;

public abstract class BaseSModelDescriptorWithSource extends BaseSModelDescriptor {
  @NotNull
  private final ModelDataSource mySource;
  private ChangeListener mySourceListener = new ChangeListener() {
    public void changed(ProgressMonitor monitor) {
      processChanged(monitor);
    }
  };

  protected BaseSModelDescriptorWithSource(@NotNull SModelReference modelReference, @NotNull ModelDataSource source, boolean checkDup) {
    super(modelReference, checkDup);
    mySource = source;
    mySource.startListening(mySourceListener);
  }

  @NotNull
  public ModelDataSource getSource() {
    return mySource;
  }

  public void dispose() {
    mySource.stopListening(mySourceListener);
    super.dispose();
  }

  //----------reloading stuff--------

  private long mySourceTimestamp = -1;

  protected abstract void reloadFromDisk();

  protected long getSourceTimestamp(){
    return mySourceTimestamp;
  }

  public void updateDiskTimestamp() {
    mySourceTimestamp = mySource.getTimestamp();
  }

  protected void processChanged(ProgressMonitor monitor) {
    if (!needsReloading()) return;

    monitor.start("Reloading " + getLongName(), 1);
    reloadFromDisk();
    monitor.done();
  }

  public boolean needsReloading() {
    return mySource.getTimestamp() != mySourceTimestamp;
  }

  protected synchronized void replaceModel(Runnable replacer) {
    ModelAccess.assertLegalWrite();
    final SModel oldSModel = getCurrentModelInternal();
    if (oldSModel != null) {
      oldSModel.setModelDescriptor(null);
    }

    replacer.run();

    SModel newModel = getCurrentModelInternal();
    if (newModel != null) {
      newModel.setModelDescriptor(this);
    }
    MPSModuleRepository.getInstance().invalidateCaches();
    Runnable modelReplacedNotifier = new Runnable() {
      public void run() {
        fireModelReplaced();
        if (oldSModel != null) {
          oldSModel.dispose();
        }
      }
    };
    if (ModelAccess.instance().isInEDT()) {
      modelReplacedNotifier.run();
    } else {
      ModelAccess.instance().runWriteInEDT(modelReplacedNotifier);
    }
  }
}
