package jetbrains.mps.nodeEditor.leftHighlighter;

import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.cells.CellInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import org.jetbrains.annotations.NotNull;

import java.awt.Color;
import java.awt.Graphics;

/**
 * User: Alexander Shatalin
 * Date: 02.03.2010
 */
class FoldingButton {
  public static final int HALF_WIDTH = 4;

  private static final int HEIGHT = HALF_WIDTH * 5 / 2;
  private static final int CANT_HEIGHT = HALF_WIDTH * 3 / 2;

  private CellInfo myCellInfo;
  private EditorComponent myEditor;
  private int myY1;
  private int myY2;
  private boolean myIsHidden = false;
  private boolean myIsFolded = false;
  private boolean myMouseOver = false;
  private Color myBackgroundColor;

  FoldingButton(@NotNull EditorCell_Collection cell, @NotNull Color background) {
    //TODO: Can we hold cell directly instad of CellInfo here?
    myCellInfo = cell.getCellInfo();
    assert myCellInfo != null : "CellInfo unavailable for: " + cell;
    myEditor = cell.getEditor();
    myBackgroundColor = background;
  }

  boolean relayout() {
    EditorCell cell = getCell();
    if (cell instanceof EditorCell_Collection) {
      myIsHidden = cell.isUnderFolded();
      if (!myIsHidden) {
        myIsFolded = ((EditorCell_Collection) cell).isFolded();
        myY1 = cell.getY();
        myY2 = cell.getY() + cell.getHeight() - cell.getTopInset() - cell.getBottomInset() - 1;
      }
      return true;
    }
    return false;
  }

  private Color getBorderColor() {
    return myMouseOver ? Color.blue : Color.gray;
  }

  void paintFeedback(Graphics g) {
    if (myMouseOver && !myIsFolded) {
      g.setColor(getBorderColor());
      g.drawLine(0, myY1 + HEIGHT, 0, myY2 - HEIGHT);
    }
  }

  void paint(Graphics g) {
    if (myIsHidden) return;
    Color borderColor = getBorderColor();
    if (!myIsFolded) {
      int xs[] = {-HALF_WIDTH, -HALF_WIDTH, 0, HALF_WIDTH, HALF_WIDTH};
      int ys[] = {myY1, myY1 + CANT_HEIGHT, myY1 + HEIGHT, myY1 + CANT_HEIGHT, myY1};

      g.setColor(myBackgroundColor);
      g.fillPolygon(xs, ys, xs.length);
      g.setColor(borderColor);
      g.drawPolygon(xs, ys, xs.length);

      for (int i = 0; i < xs.length; i++) {
        ys[i] = myY2 - (ys[i] - myY1);
      }

      g.setColor(myBackgroundColor);
      g.fillPolygon(xs, ys, xs.length);
      g.setColor(borderColor);
      g.drawPolygon(xs, ys, xs.length);

      g.setColor(borderColor);
      g.drawLine(-HALF_WIDTH / 2, myY1 + HALF_WIDTH, HALF_WIDTH / 2, myY1 + HALF_WIDTH);
      g.drawLine(-HALF_WIDTH / 2, myY2 - HALF_WIDTH, HALF_WIDTH / 2, myY2 - HALF_WIDTH);

    } else {
      g.setColor(myBackgroundColor);
      g.fillRect(-HALF_WIDTH, (myY1 + myY2) / 2 - HALF_WIDTH, HALF_WIDTH * 2, HALF_WIDTH * 2);
      g.setColor(borderColor);
      g.drawRect(-HALF_WIDTH, (myY1 + myY2) / 2 - HALF_WIDTH, HALF_WIDTH * 2, HALF_WIDTH * 2);

      g.setColor(Color.black);
      g.drawLine(-HALF_WIDTH / 2, (myY1 + myY2) / 2, HALF_WIDTH / 2, (myY1 + myY2) / 2);
      g.drawLine(0, (myY1 + myY2) / 2 + HALF_WIDTH / 2, 0, (myY1 + myY2) / 2 - HALF_WIDTH / 2);
    }
  }

  private EditorCell getCell() {
    return myCellInfo.findCell(myEditor);
  }

  void activate() {
    EditorCell cell = getCell();
    if (cell instanceof EditorCell_Collection) {
      EditorCell_Collection collection = (EditorCell_Collection) cell;
      if (collection.isUnderFolded()) return;
      if (collection.isFolded()) {
        collection.unfold();
      } else {
        collection.fold();
      }
    }
  }

  void mouseEntered() {
    myMouseOver = true;
  }

  void mouseExited() {
    myMouseOver = false;
  }

  boolean isInside(int x, int y) {
    if (myIsFolded) {
      return Math.abs(x) <= HALF_WIDTH && Math.abs(y - (myY1 + myY2) / 2) <= HALF_WIDTH;
    } else {
      return Math.abs(x) <= HALF_WIDTH && ((myY1 <= y && y <= myY1 + HEIGHT) || (myY2 - HEIGHT <= y && y <= myY2));
    }
  }

  int getY() {
    return myY1;
  }

  int getHeight() {
    return myY2 - myY1;
  }
}
