/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

import org.jetbrains.mps.openapi.model.SNode;

/**
 * User: shatalin
 * Date: 4/24/13
 */
public interface EditorCellFactory {
  EditorCell createEditorCell(SNode node, boolean isInspector);

  /**
   * Retrieve current EditorCellContext
   *
   * @return current EditorCellContext
   */
  EditorCellContext getCellContext();

  /**
   * Set new instance of EditorCellContext as currently active one. New EditorCellContext
   * will inherit all context hints specified in previously active EditorCellContext.
   * All modifications performed by addCellContextHints()/removeCellContextHints() methods
   * will modify only currently active instance of EditorCellContext.
   * <p/>
   * Previously active instance of EditorCellContext will be preserved and can be activated
   * again by calling popCellContext() method.
   */
  void pushCellContext();

  /**
   * Throwing away currently active instance of EditorCellContext and activating previously
   * active instance instead. Previously active instance means instance of EditorCellContext
   * which was active before calling pushCellContext() method.
   *
   * @throws IllegalStateException if there is no EditorCellContext available in the stack -
   *                               "twin" pushCellContext() method was not called.
   */
  void popCellContext();

  /**
   * Add new context hints to the current EditorCellContext
   *
   * @param hints to add
   * @throws IllegalStateException if pushCellContext() was not called before.
   */
  void addCellContextHints(String... hints);

  /**
   * Remove context hints from the current EditorCellContext
   *
   * @param hints to remove
   * @throws IllegalStateException if pushCellContext() was not called before.
   */
  void removeCellContextHints(String... hints);
}
