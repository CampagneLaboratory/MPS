package jetbrains.mps.nodeEditor;

import jetbrains.mps.ide.components.ComponentsUtil;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.util.EqualUtil;
import org.jdom.Element;


public class CellInfo {

  private SNodePointer myNodePointer;
  private String myCellId;
  private int myCellNumber;
  private boolean myIsInList = false;

  protected CellInfo myParentInfo;

  // use only within EditorCell.getSelectedCellInfo
  public CellInfo(EditorCell cell) {
    myNodePointer = cell.getSNodePointer();
    myCellId = (String) cell.getUserObject(EditorCell.CELL_ID);

    EditorCell_Collection parent = cell.getParent();
    if (parent != null) {
      myParentInfo = parent.getCellInfo();
      myIsInList = parent.hasCellListHandler();
      if (myIsInList || myCellId == null) {
        myCellNumber = parent.getCellNumber(cell);
      }
    }
  }

  public CellInfo(Element cellElement, IScope scope) {
    Element nodeElement = cellElement.getChild(ComponentsUtil.NODE);
    Element parentInfoElement = cellElement.getChild(ComponentsUtil.CELL_INFO);
    String cellId = cellElement.getAttributeValue(ComponentsUtil.ID);
    String cellNumber = cellElement.getAttributeValue(ComponentsUtil.NUMBER);
    String isInList = cellElement.getAttributeValue(ComponentsUtil.IS_IN_LIST);
    myNodePointer =  new SNodePointer(ComponentsUtil.nodeFromElement(nodeElement, scope));
    myCellId = cellId;
    if (parentInfoElement != null) {
      if (cellNumber != null) {
        myCellNumber = Integer.parseInt(cellNumber);
      }
      if (isInList != null) {
        myIsInList = "true".equals(isInList);
      }
      myParentInfo = new CellInfo(parentInfoElement, scope);
    }
  }

  public Element marshallCellInfo() {
    Element cellElement = new Element(ComponentsUtil.CELL_INFO);
    if (myCellId != null) {
      cellElement.setAttribute(ComponentsUtil.ID, myCellId);
    }
    SNode node = myNodePointer.getNode();
    if (node != null) {
      Element nodeElement = ComponentsUtil.nodeToElement(node);
      cellElement.addContent(nodeElement);
    }
    if (myParentInfo != null) {
      Element parentInfoElement = myParentInfo.marshallCellInfo();
      cellElement.addContent(parentInfoElement);
      if (myIsInList) {
        cellElement.setAttribute(ComponentsUtil.IS_IN_LIST, "true");
      }
      if (myIsInList || myCellId == null) {
        cellElement.setAttribute(ComponentsUtil.NUMBER, myCellNumber+"");
      }
    }
    return cellElement;
  }


  public int hashCode() {
    return (myParentInfo == null ? 0 : myParentInfo.hashCode()) +
        (myNodePointer == null?0: myNodePointer.hashCode()) + (myCellId == null?0:myCellId.hashCode()) + myCellNumber;
  }

  public EditorCell findCell(AbstractEditorComponent editorComponent) {    
    if (myNodePointer == null) {
      return null;
    }
    return editorComponent.findCellWithId(myCellId, myNodePointer.getNode());
  }

  public EditorCell findClosestCell(AbstractEditorComponent editorComponent) {
    return findCell(editorComponent);    
  }

  public boolean equals(Object o) {
    if (!(o instanceof CellInfo)) return false;
    CellInfo cellInfo = (CellInfo) o;
    if (!EqualUtil.equals(cellInfo.myParentInfo, myParentInfo)) return false;
    if (cellInfo.myNodePointer == null) return false;
    boolean idsBothNull = false;
    if (cellInfo.myCellId == null && myCellId == null) idsBothNull = true;
    return (cellInfo.myCellId == null ? idsBothNull : cellInfo.myCellId.equals(myCellId))
            && (cellInfo.myNodePointer.equals(myNodePointer))
            && cellInfo.myCellNumber == myCellNumber;
  }
}
