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
package jetbrains.mps.nodeEditor.cells;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.EqualUtil;
import org.jdom.Element;


public class DefaultCellInfo implements CellInfo {
  private static final String CELL_ID = "cellId";
  private static final String CELL_NUMBER = "cellNumber";
  private static final String IS_IN_LIST = "isInList";
  private static final String NODE = "node";
  private static final String MODEL = "model";
  private static final String ID = "id";
  private static final String PARENT = "parent";

  private SNodePointer myNodePointer;
  private String myCellId;
  private int myCellNumber;
  private boolean myIsInList = false;

  protected CellInfo myParentInfo;

  public DefaultCellInfo(final EditorCell cell) {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SNode n = cell.getSNode();
        myNodePointer = (n == null || n.getModel() == null) ? null : new SNodePointer(n);
      }
    });

    myCellId = cell.getCellId();

    EditorCell_Collection parent = cell.getParent();
    if (parent != null && myCellId == null) {
      myParentInfo = parent.getCellInfo();
      myIsInList = parent.hasCellListHandler();
      if (myIsInList || myCellId == null) {
        myCellNumber = parent.getCellNumber(cell);
      }
    }
  }

  private DefaultCellInfo() {

  }

  public void saveTo(Element e) {
    if (myCellId != null) {
      e.setAttribute(CELL_ID, myCellId);
    }
    e.setAttribute(CELL_NUMBER, "" + myCellNumber);
    e.setAttribute(IS_IN_LIST, "" + myIsInList);
    Element nodeElement = new Element(NODE);
    assert myNodePointer != null;
    nodeElement.setAttribute(MODEL, myNodePointer.getModelReference().toString());
    nodeElement.setAttribute(ID, myNodePointer.getNodeId().toString());
    e.addContent(nodeElement);
    if (myParentInfo instanceof DefaultCellInfo) {
      Element parentElement = new Element(PARENT);
      ((DefaultCellInfo) myParentInfo).saveTo(parentElement);
      e.addContent(parentElement);
    }
  }

  public static DefaultCellInfo loadFrom(Element e) {
    String cellId;
    int cellNumber;
    boolean isInList;
    final String model;
    final String id;
    DefaultCellInfo parentInfo = null;
    cellId = e.getAttributeValue(CELL_ID);
    String num = e.getAttributeValue(CELL_NUMBER);
    if (num == null) return null;
    try {
      cellNumber = Integer.parseInt(num);
    } catch (NumberFormatException ex) {
      return null;
    }
    isInList = "true".equals(e.getAttributeValue(IS_IN_LIST));
    Element nodeElem = e.getChild(NODE);
    if (nodeElem == null) return null;
    model = nodeElem.getAttributeValue(MODEL);
    if (model == null) return null;
    id = nodeElem.getAttributeValue(ID);
    if (id == null) return null;
    Element parentElem = e.getChild(PARENT);
    if (parentElem != null) {
      parentInfo = loadFrom(parentElem);
      if (parentInfo == null) return null;
    }
    final DefaultCellInfo result = new DefaultCellInfo();
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        result.myNodePointer = new SNodePointer(model, id);
      }
    });
    result.myCellId = cellId;
    result.myParentInfo = parentInfo;
    result.myIsInList = isInList;
    result.myCellNumber = cellNumber;
    return result;
  }

  public int hashCode() {
    return (myParentInfo == null ? 0 : myParentInfo.hashCode()) +
      (myNodePointer == null ? 0 : myNodePointer.hashCode()) + (myCellId == null ? 0 : myCellId.hashCode()) + myCellNumber;
  }

  public EditorCell findCell(final EditorComponent editorComponent) {
    if (myCellId != null) {
      if (myNodePointer == null) return null;
      return ModelAccess.instance().runReadAction(new Computable<EditorCell>() {
        public EditorCell compute() {
          // This is needed while merging: if node pointer points to node from current model,
          // it should be used instead of model in model repository.
          SNode node;
          assert myNodePointer != null;
          if (editorComponent.getEditedNode() != null &&
            EqualUtil.equals(myNodePointer.getModelReference(),
              editorComponent.getEditedNode().getModel().getSModelReference())) {
            node = editorComponent.getEditedNode().getModel().getNodeById(myNodePointer.getNodeId());
          } else {
            node = myNodePointer.getNode();
          }
          return editorComponent.findCellWithId(node, myCellId);
        }
      });
    } else if (myParentInfo != null) {
      EditorCell_Collection parent = (EditorCell_Collection) myParentInfo.findCell(editorComponent);
      if (parent == null) {
        return null;
      }
      if (myCellNumber < parent.getChildCount()) {
        EditorCell editorCell = parent.getChildAt(myCellNumber);
        // Cell should have same cellId, and myCellId is null.
        if (editorCell.getCellId() != null) {
          return null;
        }
        return editorCell;
      } else {
        return null;
      }

    }
    return null;
  }

  public EditorCell findClosestCell(EditorComponent editorComponent) {
    return findCell(editorComponent);
  }

  public boolean equals(Object o) {
    if (!(o instanceof DefaultCellInfo)) return false;
    DefaultCellInfo cellInfo = (DefaultCellInfo) o;
    if (!EqualUtil.equals(cellInfo.myParentInfo, myParentInfo)) return false;
    if (cellInfo.myNodePointer == null) return false;
    boolean idsBothNull = false;
    if (cellInfo.myCellId == null && myCellId == null) idsBothNull = true;
    return (cellInfo.myCellId == null ? idsBothNull : cellInfo.myCellId.equals(myCellId))
      && (cellInfo.myNodePointer.equals(myNodePointer))
      && cellInfo.myCellNumber == myCellNumber;
  }

  @Override
  public String toString() {
    return "DefaultCellInfo[" +
      "myNodePointer=" + (myNodePointer == null ? null : myNodePointer.getNodeId()) +
      ", myCellId='" + myCellId + '\'' +
      ", myCellNumber=" + myCellNumber +
      ", myIsInList=" + myIsInList +
      ", myParentInfo=" + myParentInfo +
      ']';
  }
}
