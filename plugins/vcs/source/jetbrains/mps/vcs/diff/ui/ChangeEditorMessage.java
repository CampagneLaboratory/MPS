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
package jetbrains.mps.vcs.diff.ui;

import jetbrains.mps.nodeEditor.DefaultEditorMessage;
import jetbrains.mps.nodeEditor.EditorMessageOwner;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.nodeEditor.cells.PropertyAccessor;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.vcs.diff.changes.Change;

import java.awt.Color;
import java.awt.Graphics;

import org.jetbrains.annotations.NotNull;

public class ChangeEditorMessage extends DefaultEditorMessage {
  private String myProperty;
  private String myRole;
  @NotNull
  private Change myChange;

  public ChangeEditorMessage(Change change, SNode node, Color color, String message, EditorMessageOwner owner) {
    super(node, color, message, owner);
    myChange = change;
  }

  @Override
  public boolean isBackground() {
    return true;
  }

  @Override
  public boolean acceptCell(EditorCell cell, EditorComponent editor) {
    if (cell == null) return false;
    boolean accept = acceptCellInternal(cell, editor);

    return accept;
  }


  @Override
  public boolean sameAs(EditorMessage o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;

    ChangeEditorMessage message = (ChangeEditorMessage) o;

    return myChange.equals(message.myChange);
  }


  private boolean acceptCellInternal(EditorCell cell, EditorComponent editor) {
    if (!(editor.isValid(cell) && cell.getSNode() == getNode())) {
      return false;
    }
    if (myProperty != null) {
      if (!(cell instanceof EditorCell_Property)) {
        return false;
      }

      ModelAccessor modelAccessor = ((EditorCell_Property) cell).getModelAccessor();
      if (modelAccessor instanceof PropertyAccessor) {
        return myProperty.equals(((PropertyAccessor) modelAccessor).getPropertyName());
      }
      return true;
    }
    if (myRole != null) {
      return myRole.equals(cell.getRole());
    }
    return cell.isBigCell();
  }

  @Override
  public void paint(Graphics g, EditorComponent editorComponent, EditorCell cell) {
    if (getColor() != null) {
      cell.paintSelection(g, getColor(), false);
    }
  }

  public void setProperty(String property) {
    myProperty = property;
  }

  public void setRole(String role) {
    myRole = role;
  }

  @NotNull
  public Change getChange() {
    return myChange;
  }
}
