/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.selectionRestoring;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;

/**
 * @author simon
 */
public class RestorableSelectionByCell implements RestorableSelection {
  private final CellSelector mySelector;
  private final CellLocator myLocator;

  public RestorableSelectionByCell(CellLocator locator, CellSelector selector) {
    myLocator = locator;
    mySelector = selector;
  }

  public boolean restore(EditorContext editorContext) {
    EditorCell editorCell = myLocator.locate(editorContext);
    return editorCell != null && mySelector.select(editorContext, editorCell);
  }

}
