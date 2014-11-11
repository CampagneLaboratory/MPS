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
package jetbrains.mps.nodeEditor;

import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.CellInfo;
import jetbrains.mps.nodeEditor.cells.DefaultCellInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.selection.SelectionInfoImpl;
import jetbrains.mps.openapi.editor.selection.SelectionInfo;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.util.EqualUtil;
import org.jdom.Attribute;
import org.jdom.Element;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;

import java.awt.Point;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

class Memento {
  private static final Comparator<EditorCell> FOLDED_CELLS_COMPARATOR = new Comparator<EditorCell>() {
    @Override
    public int compare(EditorCell c1, EditorCell c2) {
      return getDepth(c2) - getDepth(c1);
    }

    private int getDepth(EditorCell cell) {
      int depth = 0;
      while (cell.getParent() != null) {
        cell = (EditorCell) cell.getParent();
        depth++;
      }
      return depth;
    }
  };

  private List<SelectionInfo> mySelectionStack = new ArrayList<SelectionInfo>();
  private List<CellInfo> myCollectionsWithEnabledBraces = new ArrayList<CellInfo>();
  private List<CellInfo> myFolded = new ArrayList<CellInfo>();

  private Map<CellInfo, String> myErrorTexts = new HashMap<CellInfo, String>();
  private Point myViewPosition;
  private String[] myEnabledHints = null;
  private SNodeReference myEditedNodeReference;

  private Memento() {
  }

  Memento(jetbrains.mps.openapi.editor.EditorContext context, boolean saveEditedNode) {
    EditorComponent nodeEditor = (EditorComponent) context.getEditorComponent();
    SNode editedNode = nodeEditor.getEditedNode();
    if (editedNode == null || SNodeUtil.isAccessible(editedNode, MPSModuleRepository.getInstance())) {
      if (saveEditedNode && editedNode != null) {
        myEditedNodeReference = editedNode.getReference();
      }
      mySelectionStack = nodeEditor.getSelectionManager().getSelectionInfoStack();
      ArrayList<EditorCell> foldedCells = new ArrayList<EditorCell>(nodeEditor.getFoldedCells());
      Collections.sort(foldedCells, FOLDED_CELLS_COMPARATOR);
      for (EditorCell foldedCell : foldedCells) {
        myFolded.add(foldedCell.getCellInfo());
      }
      for (EditorCell bracesEnabledCell : nodeEditor.getBracesEnabledCells()) {
        myCollectionsWithEnabledBraces.add(bracesEnabledCell.getCellInfo());
      }

      collectErrors(nodeEditor);
    }

    myViewPosition = nodeEditor.getViewport().getViewPosition();
    myEnabledHints = nodeEditor.getUpdater().getInitialEditorHints();
  }

  private void collectErrors(EditorComponent editor) {
    for (EditorCell cell : editor.getCellTracker().getErrorCells()) {
      if (cell instanceof EditorCell_Label && cell.getStyle().get(StyleAttributes.EDITABLE)) {
        EditorCell_Label label = (EditorCell_Label) cell;
        myErrorTexts.put(label.getCellInfo(), label.getText());
      }
    }
  }

  void restore(EditorComponent editor) {
    boolean editorRebuildRequired = editor.getUpdater().setInitialEditorHints(myEnabledHints);

    if (myEditedNodeReference != null) {
      SNode newEditedNode = myEditedNodeReference.resolve(editor.getEditorContext().getRepository());
      if (newEditedNode != null) {
        editor.editNode(newEditedNode);
        editor.getUpdater().flushModelEvents();
        editorRebuildRequired = false;
      }
    }
    if (editorRebuildRequired) {
      editor.rebuildEditorContent();
      editor.getUpdater().flushModelEvents();
    }

    editor.clearFoldedCells();
    editor.clearBracesEnabledCells();

    editor.getUpdater().flushModelEvents();

    // TODO: remove this variable and simply mark editor as "needsRelayout" from the top editor cell + relayout it on .. next paint?
    boolean needsRelayout = restoreErrors(editor);
    editor.getSelectionManager().setSelectionInfoStack(mySelectionStack);
    for (CellInfo collectionInfo : myCollectionsWithEnabledBraces) {
      EditorCell collection = collectionInfo.findCell(editor);
      if (!(collection instanceof EditorCell_Collection)) continue;
      if (((EditorCell_Collection) collection).usesBraces()) {
        ((EditorCell_Collection) collection).enableBraces();
      }
    }
    for (CellInfo collectionInfo : myFolded) {
      needsRelayout = true;
      EditorCell collection = collectionInfo.findCell(editor);
      if (!(collection instanceof EditorCell_Collection)) continue;
      ((EditorCell_Collection) collection).fold(true);
    }

    if (needsRelayout) {
      editor.relayout();
    }
    if (myViewPosition != null) {
      editor.getViewport().setViewPosition(myViewPosition);
    }
  }

  private boolean restoreErrors(EditorComponent editor) {
    boolean needsRelayout = false;
    for (EditorCell cell : new ArrayList<EditorCell>(editor.getCellTracker().getErrorCells())) {
      if (cell instanceof EditorCell_Label && cell.getStyle().get(StyleAttributes.EDITABLE)) {
        EditorCell_Label label = (EditorCell_Label) cell;
        label.synchronizeViewWithModel();
        needsRelayout = true;
      }
    }

    for (Entry<CellInfo, String> entry : myErrorTexts.entrySet()) {
      EditorCell cell = entry.getKey().findCell(editor);
      if (cell instanceof EditorCell_Label) {
        EditorCell_Label cellLabel = (EditorCell_Label) cell;
        String text = cellLabel.getText();
        String oldText = entry.getValue();
        if (!EqualUtil.equals(text, oldText) && (!cellLabel.isValidText(oldText) || !cellLabel.isEditable())) {
          cellLabel.changeText(oldText);
          needsRelayout = true;
        }
      }
    }
    return needsRelayout;
  }

  public boolean equals(Object object) {
    if (object == this) return true;
    if (object instanceof Memento) {
      Memento m = (Memento) object;
      if (EqualUtil.equals(mySelectionStack, m.mySelectionStack) && EqualUtil.equals(myCollectionsWithEnabledBraces, m.myCollectionsWithEnabledBraces) &&
          EqualUtil.equals(myFolded, m.myFolded) && Arrays.equals(myEnabledHints, m.myEnabledHints) &&
          EqualUtil.equals(myEditedNodeReference, m.myEditedNodeReference)) {
        return true;
      }
    }
    return false;
  }

  public int hashCode() {
    return (mySelectionStack != null ? mySelectionStack.hashCode() : 0);
  }

  public String toString() {
    return "Editor Memento[\n" +
        "  selectedStack = " + mySelectionStack + "\n" +
        "  collectionsWithBraces = " + myCollectionsWithEnabledBraces + "\n" +
        "  foldedCells = " + myFolded + "\n" +
        "  enabledHints = " + Arrays.toString(myEnabledHints) + "\n" +
        "  editedNodeReference = " + myEditedNodeReference + "\n" +
        "]\n";
  }

  private static final String SELECTION_STACK = "selectionStack";
  private static final String STACK_ELEMENT = "stackElement";
  private static final String FOLDED = "folded";
  private static final String FOLDED_ELEMENT = "foldedElement";
  private static final String VIEW_POSITION_X = "viewPositionX";
  private static final String VIEW_POSITION_Y = "viewPositionY";
  private static final String ENABLED_HINTS = "enabledHints";
  private static final String ENABLED_HINTS_ELEMENT = "enabledHintsElement";
  private static final String ENABLED_HINTS_ATTRIBUTE = "enabledHintsAttribute";
  private static final String ERROR_LABELS = "errorLabels";
  private static final String ERROR_LABEL = "errorLabel";
  private static final String ERROR_TEXT = "errorText";
  private static final String EDITED_NODE = "currentlyEditedNode";

  public void save(Element e) {
    if (myEditedNodeReference != null) {
      e.setAttribute(EDITED_NODE, SNodePointer.serialize(myEditedNodeReference));
    }

    Element selectionStack = new Element(SELECTION_STACK);
    e.addContent(selectionStack);
    for (SelectionInfo selectionInfo : mySelectionStack) {
      Element stackElement = new Element(STACK_ELEMENT);
      ((SelectionInfoImpl) selectionInfo).persistToXML(stackElement);
      selectionStack.addContent(stackElement);
    }

    Element errorLabels = new Element(ERROR_LABELS);
    e.addContent(errorLabels);
    for (Entry<CellInfo, String> errorTextEntry : myErrorTexts.entrySet()) {
      Element errorLabelElement = new Element(ERROR_LABEL);
      errorLabelElement.setAttribute(ERROR_TEXT, errorTextEntry.getValue());
      ((DefaultCellInfo) errorTextEntry.getKey()).saveTo(errorLabelElement);
      errorLabels.addContent(errorLabelElement);
    }

    boolean success = true;
    Element folded = new Element(FOLDED);
    for (CellInfo cellInfo : myFolded) {
      if (cellInfo instanceof DefaultCellInfo) {
        Element foldedElement = new Element(FOLDED_ELEMENT);
        ((DefaultCellInfo) cellInfo).saveTo(foldedElement);
        folded.addContent(foldedElement);
      } else {
        success = false;
        break;
      }
    }
    if (success) {
      e.addContent(folded);
    }
    e.setAttribute(VIEW_POSITION_X, String.valueOf(myViewPosition.x));
    e.setAttribute(VIEW_POSITION_Y, String.valueOf(myViewPosition.y));
    if (myEnabledHints != null) {
      Element hintsElement = new Element(ENABLED_HINTS);
      for (String hint : myEnabledHints) {
        Element hintElement = new Element(ENABLED_HINTS_ELEMENT);
        hintElement.setAttribute(ENABLED_HINTS_ATTRIBUTE, hint);
        hintsElement.addContent(hintElement);
      }
      e.addContent(hintsElement);
    }
  }

  public static Memento load(Element e) {
    Memento memento = new Memento();
    Attribute editedNodeAttribute = e.getAttribute(EDITED_NODE);
    if (editedNodeAttribute != null) {
      memento.myEditedNodeReference = SNodePointer.deserialize(editedNodeAttribute.getValue());
    }

    Element selectionStack = e.getChild(SELECTION_STACK);
    if (selectionStack != null) {
      List children = selectionStack.getChildren(STACK_ELEMENT);
      for (Object o : children) {
        memento.mySelectionStack.add(new SelectionInfoImpl((Element) o));
      }
    }

    Element errorLabels = e.getChild(ERROR_LABELS);
    if (errorLabels != null) {
      for (Element errorLabelElement : errorLabels.getChildren(ERROR_LABEL)) {
        String errorText = errorLabelElement.getAttributeValue(ERROR_TEXT);
        CellInfo cellInfo = DefaultCellInfo.loadFrom(errorLabelElement);
        memento.myErrorTexts.put(cellInfo, errorText);
      }
    }

    Element folded = e.getChild(FOLDED);
    if (folded != null) {
      List children = folded.getChildren(FOLDED_ELEMENT);
      for (Object o : children) {
        memento.myFolded.add(DefaultCellInfo.loadFrom((Element) o));
      }
    }
    try {
      int viewPositionX = Integer.valueOf(e.getAttributeValue(VIEW_POSITION_X));
      int viewPositionY = Integer.valueOf(e.getAttributeValue(VIEW_POSITION_Y));
      memento.myViewPosition = new Point(viewPositionX, viewPositionY);
    } catch (NumberFormatException nfe) {
    }

    Element hintsElement = e.getChild(ENABLED_HINTS);
    if (hintsElement != null) {
      List<String> enabledHints = new ArrayList<String>();
      List children = hintsElement.getChildren(ENABLED_HINTS_ELEMENT);
      for (Object o : children) {
        enabledHints.add(((Element) o).getAttributeValue(ENABLED_HINTS_ATTRIBUTE));
      }
      memento.myEnabledHints = enabledHints.toArray(new String[enabledHints.size()]);
    }

    return memento;
  }
}
