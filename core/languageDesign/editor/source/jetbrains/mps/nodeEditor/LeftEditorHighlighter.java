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
package jetbrains.mps.nodeEditor;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.util.Computable;
import com.intellij.util.containers.SortedList;
import com.intellij.util.ui.UIUtil;
import gnu.trove.TIntObjectHashMap;
import gnu.trove.TIntObjectProcedure;
import jetbrains.mps.ide.tooltips.MPSToolTipManager;
import jetbrains.mps.nodeEditor.EditorComponent.RebuildListener;
import jetbrains.mps.nodeEditor.EditorMessageIconRenderer.IconRendererType;
import jetbrains.mps.nodeEditor.bookmark.BookmarkManager;
import jetbrains.mps.nodeEditor.bookmark.BookmarkManager.BookmarkListener;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import jetbrains.mps.nodeEditor.leftHighlighter.AbstractFoldingAreaPainter;
import jetbrains.mps.nodeEditor.leftHighlighter.BracketsPainter;
import jetbrains.mps.nodeEditor.leftHighlighter.FoldingButtonsPainter;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.Pair;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.SwingUtilities;
import java.awt.*;
import java.awt.event.ComponentEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import java.util.*;
import java.util.List;

/**
 * This class should be called in UI (EventDispatch) thread only
 */
public class LeftEditorHighlighter extends JComponent {
  public static final String ICON_AREA = "LeftEditorHighlighterIconArea";

  private static final int MIN_ICON_RENDERERS_WIDTH = 14;
  private static final int MIN_LEFT_FOLDING_AREA_WIDTH = 7;
  private static final int MIN_RIGHT_FOLDING_AREA_WIDTH = 4;
  private static final int GAP_BETWEEN_ICONS = 3;
  private static final int LEFT_GAP = 1;

  private EditorComponent myEditorComponent;
  private NavigableSet<AbstractFoldingAreaPainter> myFoldingAreaPainters = new TreeSet<AbstractFoldingAreaPainter>(new Comparator<AbstractFoldingAreaPainter>() {
    @Override
    public int compare(AbstractFoldingAreaPainter afap1, AbstractFoldingAreaPainter afap2) {
      return afap1.getWeight() - afap2.getWeight();
    }
  });
  private FoldingButtonsPainter myFoldingButtonsPainter;
  private BracketsPainter myBracketsPainter;

  private BookmarkListener myListener;
  private BookmarkManager myBookmarkManager = null;

  private Set<EditorMessageIconRenderer> myIconRenderers = new HashSet();
  private TIntObjectHashMap<List<IconRendererLayoutConstraint>> myLineToRenderersMap = new TIntObjectHashMap();
  private Comparator myIconRenderersComparator = new IconRendererLayoutConstraintComparator();
  private EditorMessageIconRenderer myRendererUnderMouse;
  private int myMaxIconHeight = 0;

  private boolean myMouseIsInFoldingArea;

  private int myFoldingLineX;
  private int myIconRenderersWidth;
  private int myLeftFoldingAreaWidth;
  private int myRightFoldingAreaWidth;
  private int myWidth;
  private int myHeight;
  
  public LeftEditorHighlighter(EditorComponent editorComponent) {
    setBackground(Color.white);
    myEditorComponent = editorComponent;
    addMouseListener(new MouseAdapter() {
      @Override
      public void mouseExited(MouseEvent e) {
        mouseExitedFoldingArea(e);
        mouseExitedIconsArea();
      }

      @Override
      public void mouseEntered(MouseEvent e) {
        if (isInFoldingArea(e)) {
          mouseMovedInFoldingArea(e);
        } else {
          mouseMovedInIconsArea(e);
        }
      }
    });
    addMouseMotionListener(new MouseMotionAdapter() {
      public void mouseMoved(MouseEvent e) {
        if (isInFoldingArea(e)) {
          mouseExitedIconsArea();
          mouseMovedInFoldingArea(e);
        } else {
          mouseExitedFoldingArea(e);
          mouseMovedInIconsArea(e);
        }
      }
    });
    MPSToolTipManager.getInstance().registerComponent(this);
    editorComponent.addRebuildListener(new RebuildListener() {
      public void editorRebuilt(EditorComponent editor) {
        assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter$RebuildListener should be called in eventDispatchThread";
        removeAllIconRenderers(BookmarkIconRenderer.TYPE);
        BookmarkManager bookmarkManager = getBookmarkManager();
        if (bookmarkManager != null) {
          bookmarkManager.removeBookmarkListener(myListener);
          SNode editedNode = myEditorComponent.getEditedNode();
          if (editedNode != null) {
            for (Pair<SNode, Integer> bookmark : bookmarkManager.getBookmarks(editedNode.getContainingRoot())) {
              addBookmark(bookmark.o1, bookmark.o2);
            }
          }
          myListener = new BookmarkListener() {
            public void bookmarkAdded(int number, SNode node) {
              assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter$BookmarkListener should be called in eventDispatchThread";
              addBookmark(node, number);
            }

            public void bookmarkRemoved(int number, SNode node) {
              assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter$BookmarkListener should be called in eventDispatchThread";
              if (number == -1) {
                removeUnnumberedBookmark(node);
              } else {
                removeBookmark(number);
              }
            }
          };
          bookmarkManager.addBookmarkListener(myListener);
        }
        for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
          painter.editorRebuilt();
        }
      }
    });
    myFoldingAreaPainters.add(myBracketsPainter = new BracketsPainter(this));
    myFoldingAreaPainters.add(myFoldingButtonsPainter = new FoldingButtonsPainter(this));
  }

  public EditorComponent getEditorComponent() {
    return myEditorComponent;
  }

  public int getFoldingLineX() {
    return myFoldingLineX;
  }

  public void dispose() {
    for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
      painter.dispose();
    }
    BookmarkManager bookmarkManager = getBookmarkManager();
    if (bookmarkManager != null) {
      bookmarkManager.removeBookmarkListener(myListener);
    }
    MPSToolTipManager.getInstance().unregisterComponent(this);
  }

  public void addFoldingAreaPainter(AbstractFoldingAreaPainter painter) {
    myFoldingAreaPainters.add(painter);
    relayout(true);
    repaint();
  }

  public void removeFoldingAreaPainter(AbstractFoldingAreaPainter painter) {
    myFoldingAreaPainters.remove(painter);
    relayout(true);
    repaint();
  }

  @Override
  public void paint(Graphics g) {
    Rectangle clipBounds = g.getClipBounds();
    paintBackgroundAndFoldingLine(g, clipBounds);
    paintIconRenderers(g, clipBounds);
    paintFoldingArea(g, clipBounds);
  }

  private void paintFoldingArea(Graphics g, Rectangle clipBounds) {
    if (clipBounds.x + clipBounds.width < myIconRenderersWidth) {
      return;
    }
    for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
      painter.paint(g);
    }
  }

  private void paintBackgroundAndFoldingLine(Graphics g, Rectangle clipBounds) {
    Graphics2D g2d = (Graphics2D) g;
    g.setColor(getBackground());
    g.fillRect(clipBounds.x, clipBounds.y, clipBounds.width, clipBounds.height);

    // same as in EditorComponent.paint() method
    EditorCell deepestCell = myEditorComponent.getDeepestSelectedCell();
    if (deepestCell instanceof EditorCell_Label) {
      int selectedCellY = deepestCell.getY();
      int selectedCellHeight = deepestCell.getHeight() - deepestCell.getTopInset() - deepestCell.getBottomInset();
      if (g.hitClip(clipBounds.x, selectedCellY, clipBounds.width, selectedCellHeight)) {
        g.setColor(EditorComponent.CARET_ROW_COLOR);
        g.fillRect(clipBounds.x, selectedCellY, clipBounds.width, selectedCellHeight);
        // Drawing folding line
        UIUtil.drawVDottedLine(g2d, myFoldingLineX,  clipBounds.y, selectedCellY, getBackground(), Color.gray);
        UIUtil.drawVDottedLine(g2d, myFoldingLineX, selectedCellY, selectedCellY + selectedCellHeight, EditorComponent.CARET_ROW_COLOR, Color.gray);
        UIUtil.drawVDottedLine(g2d, myFoldingLineX, selectedCellY + selectedCellHeight, clipBounds.y + clipBounds.height, getBackground(), Color.gray);
        return;
      }
    }
    // Drawing folding line
    UIUtil.drawVDottedLine(g2d, myFoldingLineX, clipBounds.y, clipBounds.y + clipBounds.height, getBackground(), Color.gray);
  }

  private void paintIconRenderers(final Graphics g, Rectangle clipBounds) {
    if (clipBounds.x > myIconRenderersWidth) {
      return;
    }
    final int startY = clipBounds.y;
    final int endY = clipBounds.y + clipBounds.height;
    myLineToRenderersMap.forEachEntry(new TIntObjectProcedure<List<IconRendererLayoutConstraint>>() {
      @Override
      public boolean execute(int y, List<IconRendererLayoutConstraint> rendererConstraints) {
        if (startY <= y && y <= endY) {
          for (IconRendererLayoutConstraint constraint : rendererConstraints) {
            constraint.getIconRenderer().getIcon().paintIcon(LeftEditorHighlighter.this, g, constraint.getX(), y);
          }
        }
        return true;
      }
    });
  }

  public void unHighlight(EditorCell cell) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.unHighlight() should be called in eventDispatchThread";
    myBracketsPainter.removeBracket(cell);
  }

  public void highlight(EditorCell cell, EditorCell cell2, Color c) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.unHighlight() should be called in eventDispatchThread";
    assert cell.getEditor() == myEditorComponent : "cell must be from my editor";
    myBracketsPainter.addBracket(cell, cell2, c);
  }

  private void addBookmark(SNode node, int number) {
    // TODO: Do we need all these checks?..
    if (node == null) return;
    SNode editedNode = myEditorComponent.getEditedNode();
    if (editedNode == null) return;
    if (node.getContainingRoot() != editedNode.getContainingRoot()) {
      return;
    }
    EditorCell nodeCell = myEditorComponent.findNodeCell(node);
    if (nodeCell == null) {
      //   LOG.error("can't find a cell for node " + node);
      return;
    }
    addIconRenderer(new BookmarkIconRenderer(node, number));
  }

  private void removeBookmark(int number) {
    for (EditorMessageIconRenderer renderer: myIconRenderers) {
      if (renderer instanceof BookmarkIconRenderer && ((BookmarkIconRenderer) renderer).getNumber() == number) {
        removeIconRenderer(renderer);
        return;
      }
    }
  }

  private void removeUnnumberedBookmark(SNode node) {
    EditorCell nodeCell = myEditorComponent.findNodeCell(node);
    if (nodeCell == null) {
      //   LOG.error("can't find a cell for node " + node);
      return;
    }
    for (EditorMessageIconRenderer renderer: myIconRenderers) {
      if (renderer instanceof BookmarkIconRenderer) {
        BookmarkIconRenderer bookmarkIconRenderer = (BookmarkIconRenderer) renderer;
        if (bookmarkIconRenderer.getNumber() == -1 && bookmarkIconRenderer.getNode() == node) {
          removeIconRenderer(bookmarkIconRenderer);
          break;
        }
      }
    }
  }

  public void relayout(boolean updateFolding) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.relayout() should be executed in eventDispatchThread";
    if (updateFolding) {
      for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
        painter.relayout();
      }
      // wee need to recalculateIconRenderersWidth only if one of collections was folded/unfolded
      recalculateIconRenderersWidth();
    }
    recalculateFoldingAreaWidth();
    updateSeparatorLinePosition();
  }

  private void recalculateFoldingAreaWidth() {
    myLeftFoldingAreaWidth = MIN_LEFT_FOLDING_AREA_WIDTH;
    myRightFoldingAreaWidth = MIN_RIGHT_FOLDING_AREA_WIDTH;
    // Layouting painterss
    for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
      myLeftFoldingAreaWidth = Math.max(myLeftFoldingAreaWidth, painter.getLeftAreaWidth());
      myRightFoldingAreaWidth = Math.max(myRightFoldingAreaWidth, painter.getRightAreaWidth());
    }
  }

  private BookmarkManager getBookmarkManager() {
    if (myBookmarkManager != null) {
      return myBookmarkManager;
    }
    IOperationContext context = myEditorComponent.getOperationContext();
    if (context == null) {
      return null;
    }
    BookmarkManager bookmarkManager = context.getComponent(BookmarkManager.class);
    myBookmarkManager = bookmarkManager;
    return bookmarkManager;
  }

  public void addIconRenderer(EditorMessageIconRenderer renderer) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.addIconRenderer() should be called in eventDispatchThread";
    myIconRenderers.add(renderer);
    recalculateIconRenderersWidth();
    updateSeparatorLinePosition();
  }

  public void addAllIconRenderers(Collection<EditorMessageIconRenderer> renderers) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.addAllIconRenderers() should be called in eventDispatchThread";
    myIconRenderers.addAll(renderers);
    recalculateIconRenderersWidth();
    updateSeparatorLinePosition();
  }

  public void removeIconRenderer(EditorMessageIconRenderer renderer) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.removeIconRenderer() should be called in eventDispatchThread";
    if (myIconRenderers.remove(renderer)) {
      recalculateIconRenderersWidth();
      updateSeparatorLinePosition();
    }
  }

  public void removeIconRenderer(SNode snode, IconRendererType type) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.removeIconRenderer() should be called in eventDispatchThread";
    boolean wasModified = false;
    for (Iterator<EditorMessageIconRenderer> it = myIconRenderers.iterator(); it.hasNext();) {
      EditorMessageIconRenderer renderer = it.next();
      if (renderer.getNode() == snode && (type == null || renderer.getType() == type)) {
        it.remove();
        wasModified = true;
      }
    }
    if (wasModified) {
      recalculateIconRenderersWidth();
      updateSeparatorLinePosition();
    }
  }

  public void removeAllIconRenderers(Collection<EditorMessageIconRenderer> renderers) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.removeAllIconRenderers() should be called in eventDispatchThread";
    if (myIconRenderers.removeAll(renderers)) {
      recalculateIconRenderersWidth();
      updateSeparatorLinePosition();
    }
  }

  public void removeAllIconRenderers(IconRendererType type) {
    assert SwingUtilities.isEventDispatchThread() : "LeftEditorHighlighter.removeAllIconRenderers() should be called in eventDispatchThread";
    boolean wasModified = false;
    for (Iterator<EditorMessageIconRenderer> it = myIconRenderers.iterator(); it.hasNext();) {
      EditorMessageIconRenderer renderer = it.next();
      if (renderer.getType() == type) {
        it.remove();
        wasModified = true;
      }
    }
    if (wasModified) {
      recalculateIconRenderersWidth();
      updateSeparatorLinePosition();
    }
  }

  private void recalculateIconRenderersWidth() {
    myLineToRenderersMap.clear();
    for (EditorMessageIconRenderer renderer : myIconRenderers) {
      int yCoordinate = getIconCoordinate(renderer);
      if (yCoordinate < 0) {
        continue;
      }
      List<IconRendererLayoutConstraint> renderersForLine = myLineToRenderersMap.get(yCoordinate);
      if (renderersForLine == null) {
        renderersForLine = new SortedList(myIconRenderersComparator);
        myLineToRenderersMap.put(yCoordinate, renderersForLine);
      }
      renderersForLine.add(new IconRendererLayoutConstraint(renderer));
    }

    myIconRenderersWidth = MIN_ICON_RENDERERS_WIDTH;
    myMaxIconHeight = 0;
    int[] sortedYCoordinates = myLineToRenderersMap.keys();
    Arrays.sort(sortedYCoordinates);
/*
 * LeftHighlighter layout was changed: now each icon row will start from the beggining (LEFT_GAP)
 * if you'd like to return original layout and prevent icon rows overlapping - uncomment this and
 * following code block.
 *
    int lastRowLowerBound = -1;
    int lastRowWidth = -1;
*/
    for (int y : sortedYCoordinates) {
      List<IconRendererLayoutConstraint> row = myLineToRenderersMap.get(y);
      if (row.size() == 0) {
        continue;
      }
      int maxIconHeight = 0;
      for (IconRendererLayoutConstraint rendererConstraint : row) {
        maxIconHeight = Math.max(maxIconHeight, rendererConstraint.getIconRenderer().getIcon().getIconHeight());
      }
      myMaxIconHeight = Math.max(myMaxIconHeight, maxIconHeight);
      int rowUpperBoundY = y - maxIconHeight / 2;
/*
 * LeftHighlighter layout was changed (see above)
 *
      int offset;
      if (lastRowLowerBound > 0 && lastRowLowerBound >= rowUpperBoundY) {
        offset = lastRowWidth + GAP_BETWEEN_ICONS;
      } else {
        offset = LEFT_GAP;
      }
*/
      int offset = LEFT_GAP; 
      for (Iterator<IconRendererLayoutConstraint> it = row.iterator(); it.hasNext();) {
        IconRendererLayoutConstraint rendererConstraint = it.next();
        rendererConstraint.setX(offset);
        offset += rendererConstraint.getIconRenderer().getIcon().getIconWidth();
        if (it.hasNext()) {
          offset += GAP_BETWEEN_ICONS;
        }
      }
/*
 * LeftHighlighter layout was changed (see above)
 *
      lastRowLowerBound = rowUpperBoundY + maxIconHeight;
      lastRowWidth = offset;
 */      
      myIconRenderersWidth = Math.max(myIconRenderersWidth, offset);
    }
  }

  private void updateSeparatorLinePosition() {
    // addint 1 pixel for folding line itself
    myFoldingLineX = myIconRenderersWidth + myLeftFoldingAreaWidth + 1;
    int newWidth = myFoldingLineX + myRightFoldingAreaWidth;
    int newHeight = myEditorComponent.getPreferredSize().height;
    if (myWidth != newWidth || myHeight != newHeight) {
      myWidth = newWidth;
      myHeight = newHeight;
      firePreferredSizeChanged();
    }
  }

  private void firePreferredSizeChanged() {
    processComponentEvent(new ComponentEvent(this, ComponentEvent.COMPONENT_RESIZED));
  }

  @Override
  public Dimension getPreferredSize() {
    return new Dimension(myWidth + 1, myEditorComponent.getPreferredSize().height);
  }

  private int getIconCoordinate(EditorMessageIconRenderer renderer) {
    EditorCell anchorCell = getAnchorCell(renderer);
    if (anchorCell == null || anchorCell.isUnderFolded()) {
      // no anchorCell 
      return -1;
    }
    return anchorCell.getY() + anchorCell.getHeight() / 2 - renderer.getIcon().getIconHeight() / 2;
  }

  private EditorCell getAnchorCell(EditorMessageIconRenderer renderer) {
    SNode rendererNode = renderer.getNode();
    EditorCell nodeCell = myEditorComponent.findNodeCell(rendererNode);
    if (nodeCell == null) {
      // no cell for node?..
      return null;
    }
    return renderer.getAnchorCell(nodeCell);
  }

  @Override
  public String getToolTipText(MouseEvent e) {
    if (!isInFoldingArea(e)) {
      EditorMessageIconRenderer iconRenderer = getIconRendererUnderMouse(e);
      if (iconRenderer != null) {
        return iconRenderer.getTooltipText();
      }
    }
    return null;
  }

  @Override
  protected void processMouseEvent(MouseEvent e) {
    switch (e.getID()) {
      case MouseEvent.MOUSE_PRESSED:
      case MouseEvent.MOUSE_RELEASED:
      case MouseEvent.MOUSE_CLICKED:
        if (isInFoldingArea(e)) {
          mousePressedInFoldingArea(e);
        } else {
          mousePressedInIconsArea(e);
        }
    }
    // suppressing future event processig in case event was consumed by one of LeftHighlighter elements
    if (!e.isConsumed()) {
      super.processMouseEvent(e);
    }
  }

  private void mousePressedInIconsArea(MouseEvent e) {
    EditorMessageIconRenderer iconRenderer = getIconRendererUnderMouse(e);
    if (iconRenderer != null) {
      AnAction action = iconRenderer.getClickAction();
      if (e.getButton() == MouseEvent.BUTTON1 && action != null) {
        if (e.getID() == MouseEvent.MOUSE_CLICKED) {
          AnActionEvent actionEvent = new AnActionEvent(e, new LeftEditorHighlighterDataContext(myEditorComponent, iconRenderer.getNode()), ICON_AREA, action.getTemplatePresentation(), ActionManager.getInstance(), e.getModifiers());
          action.update(actionEvent);
          action.actionPerformed(actionEvent);
        }
        e.consume();
      }
    }
  }

  private void mousePressedInFoldingArea(MouseEvent e) {
    for (Iterator<AbstractFoldingAreaPainter> it = myFoldingAreaPainters.descendingIterator(); it.hasNext();) {
      AbstractFoldingAreaPainter painter = it.next();
      painter.mousePressed(e);
      if (e.isConsumed()) {
        break;
      }
    }
  }

  private void mouseExitedFoldingArea(MouseEvent e) {
    if (myMouseIsInFoldingArea) {
      for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
        painter.mouseExited(e);
      }
    }
  }

  private void mouseMovedInFoldingArea(MouseEvent e) {
    myMouseIsInFoldingArea = true;
    for (AbstractFoldingAreaPainter painter : myFoldingAreaPainters) {
      painter.mouseMoved(e);
    }
  }

  private void mouseExitedIconsArea() {
    if (!myMouseIsInFoldingArea && myRendererUnderMouse != null) {
      setCursor(null);
    }
  }

  private void mouseMovedInIconsArea(MouseEvent e) {
    myMouseIsInFoldingArea = false;
    EditorMessageIconRenderer newRendererUnderMouse = getIconRendererUnderMouse(e);
    if (newRendererUnderMouse != null) {
      setCursor(newRendererUnderMouse.getMouseOwerCursor());
    } else if (myRendererUnderMouse != null) {
      setCursor(null);
    }
    myRendererUnderMouse = newRendererUnderMouse;
  }

  private boolean isInFoldingArea(MouseEvent e) {
    return myFoldingLineX - myLeftFoldingAreaWidth <= e.getX() && e.getX() <= myFoldingLineX + myRightFoldingAreaWidth;
  }

  private EditorMessageIconRenderer getIconRendererUnderMouse(MouseEvent e) {
    final int mouseX = e.getX();
    final int mouseY = e.getY();
    final EditorMessageIconRenderer[] theRenderer = new EditorMessageIconRenderer[] {null};
    myLineToRenderersMap.forEachEntry(new TIntObjectProcedure<List<IconRendererLayoutConstraint>>() {
      @Override
      public boolean execute(int y, List<IconRendererLayoutConstraint> layoutConstraints) {
        if (y <= mouseY && mouseY <= y + myMaxIconHeight) {
          for (IconRendererLayoutConstraint constraint : layoutConstraints) {
            int x = constraint.getX();
            if (y <= mouseY && mouseY <= y + constraint.getIconRenderer().getIcon().getIconHeight() &&
              x <= mouseX && mouseX <= x + constraint.getIconRenderer().getIcon().getIconWidth()) {
              theRenderer[0] = constraint.getIconRenderer();
              return false;
            }
          }
        }
        return true;
      }
    });
    return theRenderer[0];
  }

  private static class BookmarkIconRenderer implements EditorMessageIconRenderer {
    private static final IconRendererType TYPE = new IconRendererType(3);
    private SNode myNode;
    private int myNumber;

    private BookmarkIconRenderer(SNode node, int number) {
      myNode = node;
      myNumber = number;
    }

    @Override
    public Icon getIcon() {
      return BookmarkManager.getIcon(myNumber);
    }

    @Override
    public String getTooltipText() {
      String nodePresentation = ModelAccess.instance().runReadAction(new Computable<String>() {
        @Override
        public String compute() {
          return myNode.getPresentation();
        }
      });
      return (myNumber != -1 ? "Bookmark " + myNumber + " (" : "Bookmark (") + nodePresentation + ")";
    }

    @Override
    public SNode getNode() {
      return myNode;
    }

    public int getNumber() {
      return myNumber;
    }

    @Override
    public IconRendererType getType() {
      return TYPE;
    }

    @Override
    public EditorCell getAnchorCell(EditorCell bigCell) {
      return bigCell;
    }

    @Override
    public Cursor getMouseOwerCursor() {
      return myNumber != -1 ? Cursor.getPredefinedCursor(Cursor.HAND_CURSOR) : null;
    }

    @Override
    public AnAction getClickAction() {
      return myNumber != -1 ? ActionManager.getInstance().getAction("jetbrains.mps.ide#action#jetbrains.mps.ide.actions.GoToBookmark" + myNumber + "_Action") : null;
    }
  }

  private class IconRendererLayoutConstraintComparator implements Comparator<IconRendererLayoutConstraint> {
    @Override
    public int compare(IconRendererLayoutConstraint constraint1, IconRendererLayoutConstraint constraint2) {
      EditorMessageIconRenderer renderer1 = constraint1.getIconRenderer();
      EditorMessageIconRenderer renderer2 = constraint2.getIconRenderer();
      if (renderer1.getType() != renderer2.getType()) {
        return renderer1.getType().getWeight() - renderer2.getType().getWeight();
      }
      EditorCell anchorCell1 = getAnchorCell(renderer1);
      EditorCell anchorCell2 = getAnchorCell(renderer2);
      if (anchorCell1 != null) {
        if (anchorCell2 == null) {
          return 1;
        } else {
          return anchorCell1.getX() - anchorCell2.getX();
        }
      } else if (anchorCell2 != null) {
        return -1;
      }
      return 0;
    }
  }

  private static class IconRendererLayoutConstraint {
    private EditorMessageIconRenderer myIconRenderer;
    private int myX;

    public IconRendererLayoutConstraint(EditorMessageIconRenderer iconRenderer) {
      myIconRenderer = iconRenderer;
    }

    public void setX(int x) {
      myX = x;
    }

    public int getX() {
      return myX;
    }

    public EditorMessageIconRenderer getIconRenderer() {
      return myIconRenderer;
    }
  }

  private static class LeftEditorHighlighterDataContext implements DataContext {
    private DataContext myEditorDataContext;
    private SNode mySelectedNode;
    private EditorCell myNodeCell;

    public LeftEditorHighlighterDataContext(@NotNull EditorComponent editorComponent, SNode selectedNode) {
      myEditorDataContext = DataManager.getInstance().getDataContext(editorComponent);
      mySelectedNode = selectedNode;
      myNodeCell = editorComponent.findNodeCell(mySelectedNode);
    }

    @Override
    public Object getData(@NonNls String dataId) {
      if (MPSDataKeys.NODE.getName().equals(dataId)) {
        return mySelectedNode;
      }
      if (MPSDataKeys.EDITOR_CELL.getName().equals(dataId)) {
        return myNodeCell;
      }
      return myEditorDataContext.getData(dataId);
    }
  }
}
