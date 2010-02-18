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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.nodeEditor.SimpleErrorReporter;
import jetbrains.mps.typesystem.inference.NodeErrorTarget;

import java.awt.Color;
import java.util.List;
import java.util.Comparator;

public abstract class EditorCheckerAdapter implements IEditorChecker, EditorMessageOwner {

  public EditorMessageOwner getOwner(SNode rootNode) {
    return this;
  }

  public boolean hasDramaticalEvent(List<SModelEvent> events) {
    for (SModelEvent event : events) {
      if (event instanceof SModelRootEvent || event instanceof SModelChildEvent || event instanceof SModelReferenceEvent) {
        return true;
      }
      if (event instanceof SModelPropertyEvent) {
        if (isPropertyEventDramatical((SModelPropertyEvent) event)) {
          return true;
        }
      }
    }
    return false;
  }

  protected boolean isPropertyEventDramatical(SModelPropertyEvent event) {
    return false;
  }

  public void checkingIterationFinished() {
    
  }

  public boolean isLaterThan(IEditorChecker editorChecker) {
    return false;
  }

  public boolean isEarlierThan(IEditorChecker editorChecker) {
    return false;
  }

  public boolean messagesChanged() {
    return true;
  }
}
