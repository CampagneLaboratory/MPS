/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.vcs;

import jetbrains.mps.logging.Logger;

import java.util.List;
import java.util.LinkedList;
import java.util.Collections;

abstract class TaskQueue<T> {
  private final static Logger LOG = Logger.getLogger(TaskQueue.class);
  private final List<T> myTasks = new LinkedList<T>();
  private boolean myIsProcessingAllowed = true;

  public TaskQueue(boolean isProcessingAllowed) {
    myIsProcessingAllowed = isProcessingAllowed;
  }

  public final synchronized void invokeLater(T task) {
    if (myIsProcessingAllowed) {
      LOG.assertLog(myTasks.size() == 0, "Task queue has not processed tasks:\n" + myTasks + "\nThat's weird cause processing is allowed.");
      processTask(Collections.singletonList(task));
    } else {
      LOG.info("Added task to invoke later " + task + ".");
      myTasks.add(task);
    }
  }

  public final synchronized void allowAccessAndProcessAllTasks() {
    myIsProcessingAllowed = true;
    if (!myTasks.isEmpty()) {
      processTask(new LinkedList<T>(myTasks));
      myTasks.clear();
    }
  }

  public final synchronized void prohibitAccess() {
    myIsProcessingAllowed = false;
  }

  public abstract void processTask(List<T> tasks);
}
