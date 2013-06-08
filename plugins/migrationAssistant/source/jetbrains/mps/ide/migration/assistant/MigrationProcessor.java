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
package jetbrains.mps.ide.migration.assistant;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.components.AbstractProjectComponent;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.plugins.actions.LabelledAnchor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.workbench.action.BaseAction;

import javax.swing.JComponent;
import javax.swing.SwingUtilities;
import java.util.*;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Created by IntelliJ IDEA.
 * User: fyodor
 * Date: 3/19/12
 * Time: 9:46 AM
 * To change this template use File | Settings | File Templates.
 */
public class MigrationProcessor extends AbstractProjectComponent{

  private static Logger LOG = LogManager.getLogger(MigrationProcessor.class);

  private List<Callback> myCallbacks = new CopyOnWriteArrayList<Callback>();
  private AtomicBoolean myStarted = new AtomicBoolean();
  private AtomicBoolean myFinished = new AtomicBoolean();
  private AtomicBoolean myInit = new AtomicBoolean();
  private final List<BaseAction> myActions = new ArrayList<BaseAction>();
  private List<BaseAction> mySelectedActions = myActions;

  protected MigrationProcessor(Project project) {
    super(project);
  }

  public List<?> getActions() {
    init();
    return Collections.unmodifiableList(myActions);
  }

  public List<?> getSelectedActions () {
    init();
    return Collections.unmodifiableList(mySelectedActions);
  }

  @SuppressWarnings("unchecked")
  public void setSelectedActions (List<?> actions) {
    if (!myActions.containsAll(actions)) throw new IllegalArgumentException();
      mySelectedActions = new ArrayList<BaseAction>((List<BaseAction>)actions);
  }

  public boolean isProcessing() {
    return myStarted.get() && !myFinished.get();
  }

  public boolean isFinished () {
    return myStarted.get() && myFinished.get();
  }

  public void startProcessing(final JComponent component) {
    if (!myStarted.compareAndSet(false, true)) throw new IllegalStateException("already processing");

    try {
      final ArrayList<BaseAction> actionsCopy = new ArrayList<BaseAction>(mySelectedActions);
      for (final BaseAction action : actionsCopy) {
        final CountDownLatch latch = new CountDownLatch(1);
        final Runnable cmdRunnable = new MyActionRunnable(action, component, latch);
        final boolean cmd = action.isExecuteOutsideCommand();
        SwingUtilities.invokeLater(new Runnable() {
          @Override
          public void run() {
            if (cmd){
              cmdRunnable.run();
            } else {
              ModelAccess.instance().runWriteActionInCommand(cmdRunnable);
            }
          }
        });
        try {
          latch.await();
        } catch (InterruptedException e) {
          LOG.error(null, e);
        }
      }
    } finally {
      runCommand(new Runnable() {
        @Override
        public void run() {
          myFinished.set(true);
          fireFinishedAll();
        }
      });
    }
  }

  public void addCallback (Callback callback) {
    myCallbacks.add(callback);
  }

  public void removeCallback (Callback callback) {
    myCallbacks.remove(callback);
  }

  private void runCommand(Runnable cmdRunnable) {
    ModelAccess.instance().runCommandInEDT(cmdRunnable, myProject.getComponent(MPSProject.class));
  }

  private void init () {
    if (myInit.compareAndSet(false, true)) {
      AnAction group = ActionManager.getInstance().getAction("jetbrains.mps.ide.mpsmigration.migration30.Migrations30_ActionGroup");
      if (group instanceof DefaultActionGroup) {
        AnAction[] actions = ((DefaultActionGroup) group).getChildren(null);
        for (int i = 0; i < actions.length; i++) {
          AnAction action = actions[i];
          if (action instanceof BaseAction && !(action instanceof LabelledAnchor)) {
            myActions.add((BaseAction)action);
          }
        }
      }
    }
  }

  private void fireStartingAction(Object action) {
    for (Callback callback: myCallbacks) {
      callback.startingAction(action);
    }
  }

  private void fireFinishedAction(Object migration) {
    for (Callback callback: myCallbacks) {
      callback.finishedAction(migration);
    }
  }

  private void fireFailedAction(Object migration) {
    for (Callback callback: myCallbacks) {
      callback.failedAction(migration);
    }
  }

  private void fireFinishedAll() {
    for (Callback callback: myCallbacks) {
      callback.finishedAll();
    }
  }

  public static interface Callback {
    void startingAction(Object action);
    void failedAction(Object action);
    void finishedAction(Object action);
    void finishedAll ();
  }

  private class MyActionRunnable implements Runnable {
    private final BaseAction myAction;
    private final JComponent myComponent;
    private final CountDownLatch myLatch;

    public MyActionRunnable(BaseAction action, JComponent component, CountDownLatch latch) {
      myAction = action;
      myComponent = component;
      myLatch = latch;
    }

    @Override
    public void run() {
      try {
        DumbService.getInstance(myProject).runWhenSmart(new Runnable() {
          @Override
          public void run() {
            fireStartingAction(myAction);
            AnActionEvent event =
                new AnActionEvent(null, DataManager.getInstance().getDataContext(myComponent), ActionPlaces.UNKNOWN, myAction.getTemplatePresentation(),
                    ActionManager.getInstance(), 0);
            boolean success = false;
            try {
              myAction.update(event);
              if (myAction.getTemplatePresentation().isEnabled()) {
                myAction.actionPerformed(event);
                success = true;
              }
            } catch (Exception e) {
              LOG.error(null, e);
            } finally {
              if (success) {
                fireFinishedAction(myAction);
              } else {
                fireFailedAction(myAction);
              }
            }
          }
        });
      } finally {
        myLatch.countDown();
      }
    }
  }
}
