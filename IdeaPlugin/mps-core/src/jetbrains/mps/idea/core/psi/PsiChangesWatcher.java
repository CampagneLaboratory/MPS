/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.psi;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.project.Project;
import com.intellij.psi.*;
import com.intellij.util.messages.MessageBusConnection;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.idea.core.psi.PsiListener.FSMove;
import jetbrains.mps.idea.core.psi.PsiListener.PsiEvent;
import jetbrains.mps.idea.core.psi.impl.MPSPsiNodeBase;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.annotations.NotNull;

import java.util.*;

/**
 * danilla 11/12/12
 */

public class PsiChangesWatcher implements ProjectComponent {

  private final static long DELAY = 300; // milliseconds
  private final static boolean SYNCHRONOUS = true;
  private final Object LOCK = new Object();

  private Project myProject;
  private PsiManager myPsiManager;
  private Set<PsiListener> myListeners = new HashSet<PsiListener>();

  private MessageBusConnection connection;
  private PsiTreeChangeListener myOwnPsiListener = new OwnPsiListener();

  private PsiChangeData myCollectedData = new PsiChangeData();
  private Timer myTimer = new Timer(true);
  private TimerTask myTimerTask;

  private MPSProject myMPSProject;

  PsiChangesWatcher(Project p) {
    myProject = p;
    myMPSProject = new MPSProject(myProject);
  }

  public void addListener(PsiListener listener) {
    synchronized (LOCK) {
      myListeners.add(listener);
    }
  }

  public void removeListener(PsiListener listener) {
    synchronized (LOCK) {
      myListeners.remove(listener);
    }
  }

  @Override
  public void initComponent() {
    myPsiManager = PsiManager.getInstance(myProject);
  }

  @Override
  public void disposeComponent() {

  }

  @NotNull
  @Override
  public String getComponentName() {
    return "NewPsiChangedWatcher";
  }

  @Override
  public void projectOpened() {
    // TODO check for listeners.notEmpty and MPS facet?
    myPsiManager.addPsiTreeChangeListener(myOwnPsiListener);
  }

  @Override
  public void projectClosed() {
    myPsiManager.removePsiTreeChangeListener(myOwnPsiListener);
  }

  private void reschedule() {
    if (myTimerTask != null) {
      myTimerTask.cancel();
    }
    myTimerTask = new PsiChangeNotifier(myCollectedData);

    if (SYNCHRONOUS) {
      myTimerTask.run();
    } else {
      myTimer.schedule(myTimerTask, DELAY);
    }
  }

  private class OwnPsiListener extends PsiTreeChangeAdapter {
    @Override
    public void childAdded(PsiTreeChangeEvent event) {

      if (isFromMPSPsiProvider(event)) return;
      PsiElement elem = event.getChild();
      if (elem instanceof PsiFile) {
        myCollectedData.created.add((PsiFile) elem);
      } else {
        queueElement(event.getParent(), event);
      }
      reschedule();
    }

    @Override
    public void childRemoved(PsiTreeChangeEvent event) {
      if (isFromMPSPsiProvider(event)) return;

      PsiElement elem = event.getChild();
      if (elem instanceof PsiFile) {
        myCollectedData.removed.add((PsiFile) elem);
      } else {
        queueElement(event.getParent(), event);
      }
      reschedule();
    }

    @Override
    public void childReplaced(PsiTreeChangeEvent event) {
      if (isFromMPSPsiProvider(event)) return;

      // Q: should we check if it's PsiFile?
      queueElement(event.getNewChild(), event);
      reschedule();
    }

    @Override
    public void childrenChanged(PsiTreeChangeEvent event) {
      if (isFromMPSPsiProvider(event)) return;

      if (event.getParent() instanceof PsiFile) {
        // it's some generic notification, we don't need it
        return;
      }
      queueElement(event.getParent(), event);
      reschedule();
    }

    @Override
    public void childMoved(@NotNull PsiTreeChangeEvent event) {
      if (isFromMPSPsiProvider(event)) return;

      PsiElement elem = event.getChild();
      if (elem instanceof PsiFile) {
        // file moved;
        myCollectedData.moved.add(new FSMove((PsiFile) elem, (PsiFileSystemItem) event.getOldParent(), (PsiFileSystemItem) event.getNewParent()));
      } else {
        queueElement(event.getOldParent(), event);
        queueElement(event.getNewParent(), event);
      }
      reschedule();
    }

    private boolean isFromMPSPsiProvider(PsiTreeChangeEvent event) {
      PsiElement parent = event.getParent();
      return (parent instanceof MPSPsiNodeBase);
    }

    private void queueElement(PsiElement child, PsiTreeChangeEvent event) {
      PsiFile file = event.getFile();
      if (file == null) file = child.getContainingFile();
      if (file == null) return;

      if (!child.isValid()) return;

      Set<PsiElement> toUpdate = myCollectedData.changed.get(file);
      if (toUpdate == null) {
        toUpdate = new HashSet<PsiElement>();
        myCollectedData.changed.put(file, toUpdate);
      }
      toUpdate.add(child);
    }
  }

  private static class PsiChangeData implements PsiEvent {
    Set<PsiFileSystemItem> created = new HashSet<PsiFileSystemItem>();
    Set<PsiFileSystemItem> removed = new HashSet<PsiFileSystemItem>();
    Set<FSMove> moved = new HashSet<FSMove>();
    Map<PsiFile, Set<PsiElement>> changed = new HashMap<PsiFile, Set<PsiElement>>();

    @Override
    public Iterable<PsiFileSystemItem> getCreated() {
      return created;
    }

    @Override
    public Iterable<PsiFileSystemItem> getRemoved() {
      return removed;
    }

    @Override
    public Iterable<FSMove> getMoved() {
      return moved;
    }

    @Override
    public Map<PsiFile, Set<PsiElement>> getChanged() {
      return changed;
    }
  }

  private class PsiChangeNotifier extends TimerTask {

    private PsiChangeData data;

    PsiChangeNotifier(PsiChangeData d) {
      data = d;
    }

    @Override
    public void run() {
      // notify our listeners

      ModelAccess.instance().runUndoTransparentCommand(new Runnable() {
        public void run() {
          try {
            for (PsiListener l : myListeners) {
              l.psiChanged(myCollectedData);
            }
          } finally {
            myCollectedData = new PsiChangeData();
            myTimerTask = null;
          }
        }
      }, myMPSProject);

    }
  }

}
