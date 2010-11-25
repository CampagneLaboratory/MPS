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
package jetbrains.mps.ide.undo;

import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.command.undo.*;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.project.AuxilaryRuntimeModel;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNodeUndoableAction;
import jetbrains.mps.smodel.UndoHandler;

import java.util.LinkedList;
import java.util.List;

/**
 * Evgeny Gryaznov, Sep 3, 2010
 */
public class WorkbenchUndoHandler implements UndoHandler {
  private boolean ourUndoBlocked = false;
  private List<SNodeUndoableAction> myActions = new LinkedList<SNodeUndoableAction>();

  public void addUndoableAction(SNodeUndoableAction action) {
    Project project = CommandProcessor.getInstance().getCurrentCommandProject();
    if (project == null) return;

    UndoManager undoManager = UndoManager.getInstance(project);
    if (undoManager.isUndoInProgress() || undoManager.isRedoInProgress()) return;

    myActions.add(action);
  }

  public <T> T runNonUndoableAction(Computable<T> t) {
    if (!ThreadUtils.isEventDispatchThread() || ourUndoBlocked) return t.compute();

    try {
      ourUndoBlocked = true;
      return t.compute();
    } finally {
      ourUndoBlocked = false;
    }
  }

  public boolean needRegisterUndo(SModel model) {
    return (!(model.isLoading()) /*|| AuxilaryRuntimeModel.isAuxModel(model)*/) && isInsideUndoableCommand();
  }

  public boolean isInsideUndoableCommand() {
    return ThreadUtils.isEventDispatchThread() && !ourUndoBlocked &&
      CommandProcessor.getInstance().getCurrentCommand() != null;
  }

  public void flushCommand() {
    if (myActions.isEmpty()) return;

    Project project = CommandProcessor.getInstance().getCurrentCommandProject();
    if (project == null) return;
    UndoManager undoManager = UndoManager.getInstance(project);

    undoManager.undoableActionPerformed(new SNodeIdeaUndoableAction(myActions));
    myActions = new LinkedList<SNodeUndoableAction>();
  }
}
