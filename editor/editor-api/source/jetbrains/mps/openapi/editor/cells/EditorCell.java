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
package jetbrains.mps.openapi.editor.cells;

import jetbrains.mps.openapi.editor.EditorComponent;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.message.SimpleEditorMessage;
import jetbrains.mps.openapi.editor.style.Style;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Collection;
import java.util.List;

/**
 * evgeny, 11/17/11
 */
public interface EditorCell {

  int getX();

  void setX(int x);

  int getY();

  void setY(int y);

  int getWidth();

  void setWidth(int width);

  int getHeight();

  void setHeight(int height);

  int getBottom();

  int getRight();

  int getBaseline();

  void setBaseline(int y);

  int getAscent();

  int getDescent();

  int getEffectiveWidth();

  int getLeftInset();

  int getRightInset();

  int getTopInset();

  int getBottomInset();

  // TODO: same as inset?
  void setLeftGap(int gap);

  void setRightGap(int gap);

  void moveTo(int x, int y);

  void setSelected(boolean isSelected);

  boolean isSelected();

  void setSelectable(boolean isSelected);

  boolean isSelectable();

  void setCellId(String cellId);

  String getCellId();

  void setRole(String role);

  String getRole();

  SNode getRefNode();

  void setRefNode(SNode refNode);

  boolean isErrorState();

  void setErrorState(boolean isError);

  void relayout();

  void setCaretX(int x);

  int getCaretX();

  void home();

  void end();

  EditorContext getContext();

  EditorCell_Collection getParent();

  EditorCell getRootParent();

  EditorCell findLeaf(int x, int y);

  boolean isSingleNodeCell();

  SNode getSNode();

  void putUserObject(Object key, Object value);

  Object getUserObject(Object key);

  EditorComponent getEditorComponent();

  Style getStyle();

  KeyMap getKeyMap();

  void addKeyMap(KeyMap keyMap);

  CellAction getAction(CellActionType type);

  void setAction(CellActionType type, CellAction action);

  Collection<CellActionType> getAvailableActions();

  List<SimpleEditorMessage> getMessages();

  void setSubstituteInfo(SubstituteInfo info);

  SubstituteInfo getSubstituteInfo();
}
