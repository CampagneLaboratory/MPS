/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.folding;

import jetbrains.mps.nodeEditor.EditorCellAction;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 10.11.2006
 * Time: 14:05:23
 * To change this template use File | Settings | File Templates.
 */
public class CellAction_UnfoldCell extends EditorCellAction {

  public boolean canExecute(EditorContext context) {
    EditorCell selectedCell = context.getNodeEditorComponent().getSelectedCell();
    if (selectedCell == null) return false;
    return selectedCell.isFolded();
  }


  public void execute(EditorContext context) {
    EditorCell selectedCell = context.getNodeEditorComponent().getSelectedCell();
    ((EditorCell_Collection)selectedCell).unfold();
  }
}
