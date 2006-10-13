package jetbrains.mps.nodeEditor;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.ColorAndGraphicsUtil;

import java.util.*;
import java.util.List;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 14.02.2006
 * Time: 15:23:47
 * To change this template use File | Settings | File Templates.
 */
public class LeftEditorHighlighter {

  private static final Logger LOG = Logger.getLogger(LeftEditorHighlighter.class);
  private static final int BRACKETS_WIDTH = 2;

  private AbstractEditorComponent myEditorComponent;
  private int myWidth = 10;

  private HashMap<CellInfo, HighlighterBracket> myBrackets = new HashMap<CellInfo, HighlighterBracket>();

  private List<BracketEdge> myBracketEdges = new ArrayList<BracketEdge>();
  private Stack<HighlighterBracket> myBracketsLayoutStack = new Stack<HighlighterBracket>();
  private int myCurrentBracketsWidth = BRACKETS_WIDTH;
  private Set<HighlighterBracket> myUnresolvedBrackets = new HashSet<HighlighterBracket>();

  private Map<CellInfo, FoldingButton> myFoldingButtons = new HashMap<CellInfo, FoldingButton>();
  private Set<FoldingButton> myUnresolvedFoldingButtons = new HashSet<FoldingButton>();


  public LeftEditorHighlighter(AbstractEditorComponent abstractEditorComponent) {
    myEditorComponent = abstractEditorComponent;
    abstractEditorComponent.addMouseListener(new MyMouseListener());
    abstractEditorComponent.addMouseMotionListener(new MyMouseEnterListener());
  }


  public void paint(Graphics g) {
    g.setColor(Color.DARK_GRAY);
    Stroke s = null;
    if (g instanceof Graphics2D) {
      Graphics2D g2d = (Graphics2D) g;
      s = g2d.getStroke();
      g2d.setStroke(ColorAndGraphicsUtil.dottedStroke());
    }
    g.drawLine(myWidth, 0, myWidth, myEditorComponent.getHeight());
    if (g instanceof Graphics2D) {
      ((Graphics2D)g).setStroke(s);
    }
    for (FoldingButton button : myFoldingButtons.values()) {
      if (button.myMouseOver && !button.myIsFolded) {
        g.setColor(button.getBorderColor());
        g.drawLine(button.myX, button.myY1 + FoldingButton.WIDTH, button.myX, button.myY2 - FoldingButton.WIDTH);
      }
    }
    for (HighlighterBracket bracket : myBrackets.values()) {
      bracket.paint(g);
    }
    for (FoldingButton button : myFoldingButtons.values()) {
      button.paint(g);
    }

  }


  public void unHighlight(EditorCell cell) {
    myBrackets.remove(cell.getCellInfo());
  }

  public void highlight(EditorCell cell, Color c) {
    if (cell.getEditor() != myEditorComponent) throw new IllegalArgumentException("cell must be from my editor");
    myBrackets.put(cell.getCellInfo(), new HighlighterBracket(cell, c, myEditorComponent));
  }

  public void unMarkFoldable(EditorCell cell) {
    myFoldingButtons.remove(cell.getCellInfo());
  }

  public void markFoldable(EditorCell cell) {
    if (cell.getEditor() != myEditorComponent) throw new IllegalArgumentException("cell must be from my editor");
    myFoldingButtons.put(cell.getCellInfo(), new FoldingButton(cell));
  }

  public void setWidth(int width) {
    myWidth = width;
  }

  public void relayout() {
    for (HighlighterBracket bracket : myBrackets.values()) {
      bracket.relayout();
      bracket.setX(myWidth);
    }
    deleteUnresolvedBrackets();
    for (FoldingButton button : myFoldingButtons.values()) {
      button.relayout();
      button.setX(myWidth);
    }
    deleteUnresolvedFoldingButtons();
    myBracketEdges.clear();
    myBracketsLayoutStack.clear();
    // from top to bottom
    for (HighlighterBracket bracket : myBrackets.values()) {
      myBracketEdges.add(bracket.getBeginningEdge());
      myBracketEdges.add(bracket.getEndingEdge());
    }
    Collections.sort(myBracketEdges);

    // from top to bottom
    try {
      int maxDepth = 0;

      //main layout loop
      for (int i = 0; i < myBracketEdges.size(); i++) {
        BracketEdge edge = myBracketEdges.get(i);
        HighlighterBracket bracket = edge.myHighlighterBracket;
        if (edge.myBeginning) {
          myBracketsLayoutStack.push(bracket);
        } else {
          HighlighterBracket poppedBracket = myBracketsLayoutStack.pop();
          while (poppedBracket != bracket) { // i.e. error
            myBracketEdges.remove(poppedBracket.getEndingEdge());
            myBrackets.remove(poppedBracket.myEditorCellInfo);
            poppedBracket = myBracketsLayoutStack.pop();
          }
          int wasDepth = myBracketsLayoutStack.size() + 1;
          maxDepth = Math.max(wasDepth, maxDepth);
          bracket.myDepth = wasDepth;
        }
      }

      myCurrentBracketsWidth = (myWidth - maxDepth)/(2 + maxDepth);
      for (HighlighterBracket bracket : myBrackets.values()) {
        int inverseDepth = maxDepth - bracket.myDepth;
        bracket.myCurrentWidth = getCurrentBracketsWidth() * 2 + inverseDepth * (getCurrentBracketsWidth() + 1);
      }
    } catch (EmptyStackException ex) {
      LOG.error("brackets error");
    }

    myBracketsLayoutStack.clear();
    myBracketEdges.clear();
  }

  private int getCurrentBracketsWidth() {
    return Math.min(BRACKETS_WIDTH, myCurrentBracketsWidth);
  }

  private void deleteUnresolvedBrackets() {
    for (HighlighterBracket bracket : myUnresolvedBrackets) {
      myBrackets.remove(bracket.myEditorCellInfo);
    }
    myUnresolvedBrackets.clear();
  }

  private void deleteUnresolvedFoldingButtons() {
    for (FoldingButton button : myUnresolvedFoldingButtons) {
      myFoldingButtons.remove(button.myCellInfo);
    }
    myUnresolvedFoldingButtons.clear();
  }




  private class HighlighterBracket {

    private BracketEdge myEdge1 = new BracketEdge(0, true, this);
    private BracketEdge myEdge2 = new BracketEdge(0, false, this);
    private int myX;//right edge
    private Color myColor;
    private int myCurrentWidth = getCurrentBracketsWidth() * 2;
    private CellInfo myEditorCellInfo;
    private AbstractEditorComponent myEditor;
    private int myDepth;

    public HighlighterBracket(EditorCell cell, Color c, AbstractEditorComponent editorComponent) {
      this(cell.getCellInfo(), c, editorComponent);
    }

    public HighlighterBracket(CellInfo cellInfo, Color c, AbstractEditorComponent editorComponent) {
      myColor = c;
      myEditor = editorComponent;
      myEditorCellInfo = cellInfo;
      relayout();
    }

    public void relayout() {
      if (myEditorCellInfo == null) return;
      EditorCell cell = getCell();
      if (cell != null) {
        setY1(cell.getY());
        setY2(cell.getY() + cell.getHeight());
      } else {
        LeftEditorHighlighter.this.myUnresolvedBrackets.add(this);
      }
    }

    public BracketEdge getBeginningEdge() {
      return myEdge1;
    }

    public BracketEdge getEndingEdge() {
      return myEdge2;
    }

    private EditorCell getCell() {
      return myEditorCellInfo.findCell(myEditor);
    }

    public void setX(int x) {
      myX = x;
    }

    @SuppressWarnings({"UnusedDeclaration"})
    public int getCurrentWidth() {
      return myCurrentWidth;
    }

    public void paint(Graphics g) {
      int currentWidth = myCurrentWidth;
      g.setColor(myColor);
      g.fillRect(myX - currentWidth + getCurrentBracketsWidth(), getY1(), currentWidth - getCurrentBracketsWidth(), getCurrentBracketsWidth());
      g.fillRect(myX - currentWidth, getY1(), getCurrentBracketsWidth(), getY2() - getY1());
      g.fillRect(myX - currentWidth + getCurrentBracketsWidth(), getY2() - getCurrentBracketsWidth(), currentWidth - getCurrentBracketsWidth(), getCurrentBracketsWidth());
    }

    private int getY1() {
      return myEdge1.myY;
    }

    private void setY1(int y1) {
      myEdge1.myY = y1;
    }

    private int getY2() {
      return myEdge2.myY;
    }

    private void setY2(int y2) {
      myEdge2.myY = y2;
    }

  }


  private static class BracketEdge implements Comparable<BracketEdge> {
    public int myY;
    public boolean myBeginning;
    public HighlighterBracket myHighlighterBracket;

    public BracketEdge(int y, boolean beginning, HighlighterBracket bracket) {
      myY = y;
      myBeginning = beginning;
      myHighlighterBracket = bracket;
    }


    public int compareTo(BracketEdge o) {
      if (myY == o.myY) {
        if (myBeginning && !o.myBeginning) {
          return 1;
        } else if (myBeginning && o.myBeginning) {
          return o.myHighlighterBracket.getY2() - myHighlighterBracket.getY2();
        } else if (!myBeginning && o.myBeginning) {
          return -1;
        } else if (!myBeginning && !o.myBeginning) {
          return o.myHighlighterBracket.getY1() - myHighlighterBracket.getY1();
        }
      }
      return myY - o.myY;
    }
  }

  private class FoldingButton {
    private CellInfo myCellInfo;
    private AbstractEditorComponent myEditor;
    private int myY1;
    private int myY2;
    private int myX;
    private boolean myIsHidden = false;
    public static final int WIDTH = 9;
    private boolean myIsFolded = false;
    private boolean myMouseOver = false;

    public FoldingButton(EditorCell cell) {
      myCellInfo = cell.getCellInfo();
      myEditor = cell.getEditor();
    }

    public void relayout() {
      if (myCellInfo == null) return;
      EditorCell cell = getCell();
      if (cell instanceof EditorCell_Collection) {
        myIsHidden = cell.isUnderFolded();
        myIsFolded = ((EditorCell_Collection)cell).isFolded();
        if (myIsHidden) return;
        myY1 = cell.getY();
        myY2 = cell.getY() + cell.getHeight();
      } else {
        LeftEditorHighlighter.this.myUnresolvedFoldingButtons.add(this);
      }
    }

    public Color getBorderColor() {
      return myMouseOver ? Color.BLUE : Color.DARK_GRAY;
    }

    public void paint(Graphics g) {
      if (myIsHidden) return;
      Color borderColor = getBorderColor();
      if (!myIsFolded) {
        int xs[] = { myX,  myX - WIDTH / 2,  myX - WIDTH / 2,   myX - WIDTH *  3 / 8,  myX         , myX + WIDTH *  3 / 8,  myX + WIDTH / 2, myX + WIDTH / 2     };
        int ys[] = { myY1, myY1,            myY1 + WIDTH / 2,   myY1 + WIDTH * 7 / 8,  myY1 + WIDTH, myY1 + WIDTH * 7 / 8,  myY1 + WIDTH / 2, myY1            };

        g.setColor(Color.WHITE);
        g.fillPolygon(xs, ys, xs.length);
        g.setColor(borderColor);
        g.drawPolygon(xs, ys, xs.length);

        for (int i = 0; i < xs.length; i++) {
          ys[i] = myY2 - (ys[i] - myY1);
        }

        g.setColor(Color.WHITE);
        g.fillPolygon(xs, ys, xs.length);
        g.setColor(borderColor);
        g.drawPolygon(xs, ys, xs.length);

        g.setColor(Color.DARK_GRAY);
        g.drawLine(myX - WIDTH / 4, myY1 + WIDTH / 2, myX + WIDTH / 4, myY1 + WIDTH / 2);
        g.drawLine(myX - WIDTH / 4, myY2 - WIDTH / 2, myX + WIDTH / 4, myY2 - WIDTH / 2);

      } else {
        g.setColor(Color.LIGHT_GRAY);
        //noinspection SuspiciousNameCombination
        g.fillOval(myX - WIDTH/2 - 1, (myY1 + myY2 - WIDTH - 1)/2, WIDTH + 1, WIDTH + 1);
        g.setColor(borderColor);
        g.drawOval(myX - WIDTH/2 - 1, (myY1 + myY2 - WIDTH - 1)/2, WIDTH + 1, WIDTH + 1);
        g.setColor(Color.WHITE);
        g.drawLine(myX - (WIDTH+1) / 4, (myY1 + myY2)/2, myX + (WIDTH+1) / 4, (myY1 + myY2)/2);
        g.drawLine(myX, (myY1 + myY2 - WIDTH - 1)/2 + WIDTH / 4, myX, (myY1 + myY2 + WIDTH + 1)/2 - WIDTH /4);
      }
    }

    private EditorCell getCell() {
      return myCellInfo.findCell(myEditor);
    }

    public void setX(int x) {
      myX = x;
    }

    public void activate() {
      EditorCell cell = getCell();
      if (cell instanceof EditorCell_Collection) {
        EditorCell_Collection collection = (EditorCell_Collection) cell;
        if (collection.isUnderFolded()) return;
        if (collection.isFolded()) {
          collection.unfold();
        } else {
          collection.fold();
        }
      } else {
        LeftEditorHighlighter.this.myUnresolvedFoldingButtons.add(this);
      }
    }

    public void mouseEntered() {
      myMouseOver = true;
      myEditor.repaint(myX - 1 - WIDTH/2, myY1, WIDTH + 2, myY2 - myY1);
    }

    public void mouseExited() {
      myMouseOver = false;
      myEditor.repaint(myX - 1 - WIDTH/2, myY1, WIDTH + 2, myY2 - myY1);
    }

    public boolean isInside(MouseEvent e) {
      if (e.getX() > myX + FoldingButton.WIDTH/2 || e.getX() < myX - FoldingButton.WIDTH/2) return false;
      if (!myIsFolded && ((e.getY() >= myY1 && e.getY() <= myY1 + FoldingButton.WIDTH)
              || (e.getY() <= myY2 && e.getY() >= myY2 - FoldingButton.WIDTH))) {
        return true;
      }
      if (myIsFolded && e.getY() >= (myY1 + myY2 - FoldingButton.WIDTH)/2 &&
              e.getY() <= (myY1 + myY2 + FoldingButton.WIDTH)/2) {
        return true;
      }
      return false;
    }
  }

  private class MyMouseListener extends MouseAdapter {

    public void mouseClicked(MouseEvent e) {
      if (e.getX() > myWidth + FoldingButton.WIDTH/2 || e.getX() < myWidth - FoldingButton.WIDTH/2) return;
      for (FoldingButton button : myFoldingButtons.values()) {
        if (button.isInside(e)) {
          button.activate();
          break;
        }
      }
    }
  }

  private class MyMouseEnterListener extends MouseMotionAdapter {

    public void mouseMoved(MouseEvent e) {
      for (FoldingButton button : myFoldingButtons.values()) {
        if (button.isInside(e)) {
          if (!button.myMouseOver) {
            button.mouseEntered();
          }
        } else {
          if (button.myMouseOver) {
            button.mouseExited();
          }
        }
      }
    }
  }

}
