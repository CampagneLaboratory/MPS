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
package jetbrains.mps.smodel;import org.jetbrains.mps.openapi.model.SModelReference;import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModelId;import org.jetbrains.mps.openapi.model.SReference;import org.jetbrains.mps.openapi.model.SNodeReference;import org.jetbrains.mps.openapi.model.SNodeId;import org.jetbrains.mps.openapi.model.SNode;

import jetbrains.mps.project.Project;
import jetbrains.mps.util.Computable;

public class UndoHelper {
  private static final UndoHandler DEFAULT = new DefaultUndoHandler();

  private static UndoHelper ourInstance = new UndoHelper();

  public static UndoHelper getInstance() {
    return ourInstance;
  }

  //-----

  private UndoHandler myHandler = DEFAULT;

  private UndoHelper() {
  }


  public void setUndoHandler(UndoHandler handler) {
    myHandler = handler;
  }

  public void addUndoableAction(SNodeUndoableAction action) {
    myHandler.addUndoableAction(action);
  }

  public void flushCommand(Project p) {
    myHandler.flushCommand(p);
  }

  public <T> T runNonUndoableAction(Computable<T> t) {
    if (ModelAccess.instance().canWrite() && myHandler != DEFAULT) {
      // locks optimization, install temporary dummy handler
      UndoHandler old = myHandler;
      try {
        myHandler = DEFAULT;
        return t.compute();
      } finally {
        myHandler = old;
      }
    } else {
      return myHandler.runNonUndoableAction(t);
    }
  }

  public boolean needRegisterUndo(SModel model) {
    return myHandler.needRegisterUndo(model);
  }

  public boolean isInsideUndoableCommand() {
    return myHandler.isInsideUndoableCommand();
  }
}
