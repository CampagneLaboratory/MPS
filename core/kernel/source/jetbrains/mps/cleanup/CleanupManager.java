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
package jetbrains.mps.cleanup;

import jetbrains.mps.smodel.ModelAccess;

import java.util.ArrayList;
import java.util.List;

public class CleanupManager {

  private static final CleanupManager INSTANCE = new CleanupManager();

  public static CleanupManager getInstance() {
    return INSTANCE;
  }

  private CleanupManager() {
  }

  private final Object myLock = new Object();
  private List<CleanupListener> myCleanupListeners = new ArrayList<CleanupListener>();

  public void addCleanupListener(CleanupListener l) {
    synchronized (myLock) {
      myCleanupListeners.add(l);
    }
  }

  public void removeCleanupListener(CleanupListener l) {
    synchronized (myLock) {
      myCleanupListeners.remove(l);
    }
  }

  public void cleanup() {
    ModelAccess.assertLegalWrite();

    List<CleanupListener> listenersToInvoke = new ArrayList<CleanupListener>();
    synchronized (myLock) {
      listenersToInvoke.addAll(myCleanupListeners);
    }
    for (CleanupListener l : listenersToInvoke) {
      l.performCleanup();
    }
  }
}
