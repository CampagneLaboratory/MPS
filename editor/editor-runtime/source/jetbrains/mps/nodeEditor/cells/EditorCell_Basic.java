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

import com.intellij.util.ui.UIUtil;
import jetbrains.mps.editor.runtime.impl.CellUtil;
import jetbrains.mps.editor.runtime.impl.LayoutConstraints;
import jetbrains.mps.editor.runtime.style.FocusPolicy;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorCellAction;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.EditorManager.EditorCell_STHint;
import jetbrains.mps.nodeEditor.EditorMessage;
import jetbrains.mps.nodeEditor.EditorMessageOwner;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstitutePatternEditor;
import jetbrains.mps.nodeEditor.style.Style;
import jetbrains.mps.nodeEditor.text.TextBuilder;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellAction;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.KeyMap;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.action.INodeSubstituteAction;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.InternUtil;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.ListMap;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.KeyEvent;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/**
 * Author: Sergey Dmitriev
 * Created Sep 14, 2003
 */
public abstract class EditorCell_Basic implements EditorCell {
  public static final Logger LOG = Logger.getLogger(EditorCell_Basic.class);

  public static final int BRACKET_WIDTH = 7;

  private Map myUserObjects;

  protected int myX = 0;
  protected int myY = 0;
  protected int myWidth = 0;
  protected int myHeight = 0;
  private int myCaretX = 0;

  private boolean myErrorState;
  private boolean mySelected;

  private EditorContext myEditorContext;

  private EditorCell_Collection myParent = null;
  private SNode myNode;
  private NodeSubstituteInfo mySubstituteInfo;
  private Map<CellActionType, CellAction> myActionMap = new ListMap<CellActionType, CellAction>();

  private Style myStyle = new Style(this);

  private KeyMap myKeyMap;
  private String myCellId;
  private String myRole;
  private SNodeReference myLinkDeclarationPointer;
  private SNodeReference myRefNodePointer;
  private boolean myInTree;
  private boolean myIsReferenceCell = false;
  protected int myGapLeft;
  protected int myGapRight;

  private boolean myIsNeedRelayout = true;

  protected EditorCell_Basic(EditorContext editorContext, SNode node) {
    myEditorContext = editorContext;
    myNode = node;
  }

  @Override
  public EditorComponent getEditor() {
    return (EditorComponent) getContext().getEditorComponent();
  }

  @Override
  public jetbrains.mps.openapi.editor.EditorComponent getEditorComponent() {
    return getContext().getEditorComponent();
  }

  public boolean isErrorState() {
    return myErrorState;
  }

  public boolean isPunctuationLayout() {
    return LayoutConstraints.PUNCTUATION_LAYOUT_CONSTRAINT.equals(getStyle().get(StyleAttributes.LAYOUT_CONSTRAINT));
  }

  public void setErrorState(boolean errorState) {
    boolean wasState = myErrorState;
    myErrorState = errorState;

    if (myInTree && wasState != myErrorState) {
      if (myErrorState) {
        getEditor().getCellTracker().addErrorCell(this);
      } else {
        getEditor().getCellTracker().removeErrorCell(this);
      }
    }
  }

  public boolean validate(boolean strict, boolean canActivatePopup) {
    NodeSubstituteInfo substituteInfo = getSubstituteInfo();
    if (substituteInfo == null) {
      return false;
    }

    String pattern = "";
    if (this instanceof EditorCell_Label) {
      pattern = ((EditorCell_Label) this).getText();
    }

    if (pattern.equals("")) return false;

    List<INodeSubstituteAction> matchingActions = substituteInfo.getMatchingActions(pattern, strict);
    if (matchingActions.size() == 0 && canActivatePopup) {
      return false;
    }
    if (matchingActions.size() != 1) {
      if (canActivatePopup) {
        getEditor().activateNodeSubstituteChooser(this, false);
      } else {
        return false;
      }
      return true;
    }

    matchingActions.get(0).substitute(getContext(), pattern);
    return true;
  }

  public boolean isDrawBrackets() {
    return getStyle().get(StyleAttributes.DRAW_BRACKETS);
  }


  public void setCellBackgroundColor(Color color) {
    getStyle().set(StyleAttributes.BACKGROUND_COLOR, color);
  }

  public Color getCellBackgroundColor() {
    return getStyle().get(StyleAttributes.BACKGROUND_COLOR);
  }

  public Color getBracketsColor() {
    return getStyle().get(StyleAttributes.BRACKETS_COLOR);
  }

  public CellAction getAction(CellActionType type) {
    return myActionMap.get(type);
  }

  public Collection<CellActionType> getAvailableActions() {
    return new HashSet<CellActionType>(myActionMap.keySet());
  }

  /**
   * should be removed after MPS 3.0
   */
  @Deprecated
  public void setAction(jetbrains.mps.nodeEditor.CellActionType type, EditorCellAction action) {
    setAction(CellActionType.valueOf(type.name()), action);
  }

  public void setAction(CellActionType type, CellAction action) {
    myActionMap.put(type, action);
  }

  public void addKeyMap(KeyMap keyMap) {
    if (myKeyMap != null) {
      myKeyMap.addKeyMap(keyMap);
    } else {
      myKeyMap = keyMap;
    }
  }

  public KeyMap getKeyMap() {
    return myKeyMap;
  }

  public SNode getSNode() {
    return myNode;
  }

  public SNode getSNodeWRTReference() {
    SNode target = getStyle().get(StyleAttributes.NAVIGATABLE_NODE);
    if (target != null) {
      return target;
    }
    SNode node = getSNode();
    SNode operationNode = null;
    SNode linkDeclaration = SModelUtil.getGenuineLinkDeclaration(getLinkDeclaration());
    if (linkDeclaration != null && SNodeUtil.getLinkDeclaration_IsReference(linkDeclaration)) {
      SNode referentNode = (SNode) node.getReferenceTarget(SModelUtil.getLinkDeclarationRole(linkDeclaration));
      if (referentNode != null) {
        operationNode = referentNode;
      }
    }

    if (operationNode == null) operationNode = node;
    return operationNode;
  }

  public String getCellRole() {
    SNode linkDeclaration = getLinkDeclaration();
    if (linkDeclaration != null) {
      return SModelUtil.getGenuineLinkRole(linkDeclaration);
    } else {//try legacy technique
      return getRole();
    }
  }

  public final void setSNode(SNode node) {
    myNode = node;
  }

  public int getHeight() {
    return myHeight;
  }

  public void setHeight(int height) {
    myHeight = height;
  }

  @Override
  public int getBottom() {
    return getY() + getHeight();
  }

  @Override
  public int getRight() {
    return getX() + getWidth();
  }

  public int getEffectiveWidth() {
    return myWidth;
  }

  public int getLeftInset() {
    return 0;
  }

  public int getRightInset() {
    return 0;
  }

  public int getTopInset() {
    return 0;
  }

  public int getBottomInset() {
    return 0;
  }

  public int getWidth() {
    return myWidth;
  }

  public void setWidth(int width) {
    myWidth = width;
  }

  public int getY() {
    return myY;
  }

  public void setY(int y) {
    if (myY == y) {
      return;
    }
    myY = y;
    requestRelayout();
  }

  public int getX() {
    return myX;
  }

  public void setX(int x) {
    if (myX == x) {
      return;
    }
    myX = x;
    requestRelayout();
  }

  public boolean isSelected() {
    return mySelected;
  }

  public boolean isWithinSelection() {
    return mySelected && getEditor().getDeepestSelectedCell() == this;
  }


  public boolean isSelectable() {
    return getStyle().get(StyleAttributes.SELECTABLE);
  }

  public void setSelectable(boolean selectable) {
    getStyle().set(StyleAttributes.SELECTABLE, selectable);
  }

  public void setCellId(String cellId) {
    assert myCellId == null;
    myCellId = cellId;
  }

  public String getCellId() {
    return myCellId;
  }

  public String getRole() {
    return myRole;
  }

  public void setRole(String role) {
    myRole = role;
  }

  public void setLinkDeclaration(final SNode link) {
    NodeReadAccessCasterInEditor.runReadTransparentAction(new Runnable() {
      public void run() {
        if (link != null) {
          myLinkDeclarationPointer = new jetbrains.mps.smodel.SNodePointer(link);
          myIsReferenceCell = SNodeUtil.getLinkDeclaration_IsReference(link);
        } else {
          myLinkDeclarationPointer = null;
          myIsReferenceCell = false;
        }
      }
    });
  }

  public SNode getLinkDeclaration() {
    String role = getStyle().get(StyleAttributes.NAVIGATABLE_REFERENCE);
    if (role != null) {
      return ((jetbrains.mps.smodel.SNode) getSNode()).getLinkDeclaration(role);
    }
    return myLinkDeclarationPointer != null ? myLinkDeclarationPointer.resolve(MPSModuleRepository.getInstance()) : null;
  }

  public boolean isReferenceCell() {
    return myIsReferenceCell;
  }

  public SNode getRefNode() {
    return myRefNodePointer != null ? myRefNodePointer.resolve(MPSModuleRepository.getInstance()) : null;
  }

  public void setRefNode(SNode refNode) {
    myRefNodePointer = (refNode != null) ? new jetbrains.mps.smodel.SNodePointer(refNode) : null;
  }

  public void setSelected(boolean selected) {
    mySelected = selected;
  }

  public boolean isDrawBorder() {
    return getStyle().get(StyleAttributes.DRAW_BORDER);
  }

  public Object getUserObject(Object key) {
    if (myUserObjects == null) {
      return null;
    }
    return myUserObjects.get(key);
  }

  public void moveTo(int x, int y) {
    myX = x;
    myY = y;
  }

  public void putUserObject(Object key, Object value) {
    if (myUserObjects == null) {
      myUserObjects = new ListMap();
    }
    myUserObjects.put(key, value);
  }

  /**
   * @deprecated since MPS 3.0 use getContext() instead
   */
  @Deprecated
  public jetbrains.mps.nodeEditor.EditorContext getEditorContext() {
    return (jetbrains.mps.nodeEditor.EditorContext) getContext();
  }

  @Override
  public EditorContext getContext() {
    return myEditorContext;
  }

  public IOperationContext getOperationContext() {
    return getContext().getOperationContext();
  }

  public final boolean processKeyPressed(KeyEvent e, boolean allowErrors) {
    if (e.isConsumed()) return false;
    return doProcessKeyPressed(e, allowErrors);
  }

  protected boolean doProcessKeyPressed(KeyEvent e, boolean allowErrors) {
    return false;
  }

  public final boolean processKeyTyped(KeyEvent e, boolean allowErrors) {
    if (e.isConsumed()) return false;
    return doProcessKeyTyped(e, allowErrors);
  }

  protected boolean doProcessKeyTyped(final KeyEvent e, final boolean allowErrors) {
    if (getSNode() == null || !isBigCell()) return false;

    if (ModelAccess.instance().runReadAction(new Computable<Boolean>() {
      public Boolean compute() {
        return getSNode().getModel() != null && getSNode().getModel().isRoot(getSNode());
      }
    })) return false;

    if (!UIUtil.isReallyTypedEvent(e)) return false;

    getContext().executeCommand(new Runnable() {
      public void run() {
        EditorComponent editor = getEditor();
        SNode oldNode = getSNode();
        SNode newNode = replaceWithDefault();
        if (newNode == null) {
          EditorCell_Label editable = findChild(CellFinders.FIRST_EDITABLE);
          if (editable != null) {
            editor.changeSelection(editable);
            editor.processKeyTyped(e);
          }
          return;
        }

        newNode.putUserObject(EditorManager.OLD_NODE_FOR_SUBSTITUTION, oldNode);
        EditorCell nodeCell = editor.findNodeCell(newNode);
        if (nodeCell == null) return;
        EditorCell_Label editable = nodeCell.findChild(CellFinders.FIRST_EDITABLE);
        if (editable != null) {
          editor.changeSelection(editable);
          editor.processKeyTyped(e);
        } else {
          editor.changeSelection(nodeCell);
          editor.processKeyTyped(e);
        }
      }
    });

    return true;
  }

  private SNode replaceWithDefault() {
    SNode node = getSNode();
    while (AttributeOperations.isAttribute(node)) {
      node = node.getParent();
    }
    SNode link = ((jetbrains.mps.smodel.SNode) node.getParent()).getLinkDeclaration(node.getRoleInParent());
    SNode concept = CellUtil.getLinkDeclarationTarget(link);
    String concreteConceptFqName = ModelConstraints.getDefaultConcreteConceptFqName(NameUtil.nodeFQName(concept));
    if (node.getConcept().getId().equals(concreteConceptFqName)) {
      return null;
    }
    jetbrains.mps.smodel.SNode newNode = new jetbrains.mps.smodel.SNode(InternUtil.intern(concreteConceptFqName));
    org.jetbrains.mps.openapi.model.SNodeUtil.replaceWithAnother(node, newNode);
    getContext().flushEvents();
    return newNode;
  }

  public void setCaretX(int x) {
    myCaretX = x;
  }

  public int getCaretX() {
    return myCaretX;
  }

  public void home() {

  }

  public void end() {

  }

  public final EditorCell findLeaf(int x, int y) {
    return findLeaf(x, y, Condition.TRUE_CONDITION);
  }

  public EditorCell findLeaf(int x, int y, Condition<EditorCell> condition) {
    if (myX <= x && x < myX + myWidth && myY <= y && y < myY + myHeight && condition.met(this)) {
      return this;
    }
    return null;
  }

  public final EditorCell findCellWeak(int x, int y) {
    return findCellWeak(x, y, Condition.TRUE_CONDITION);
  }

  public EditorCell findCellWeak(int x, int y, Condition<EditorCell> condition) {
    Set<EditorCell> candidates = new LinkedHashSet<EditorCell>();
    collectCellsWithY(this, y, candidates);

    EditorCell best = findClosestHorizontal(x, condition, candidates);

    if (best == null) {
      best = findClosestHorizontal(x, Condition.TRUE_CONDITION, candidates);
      if (best != null) {
        best = best.getPrevLeaf(condition);
      }
    }

    return best;
  }

  private EditorCell findClosestHorizontal(int x, Condition<EditorCell> condition, Set<EditorCell> candidates) {
    EditorCell best = null;
    int bestDistance = -1;
    for (EditorCell cell : candidates) {
      if (!condition.met(cell)) continue;

      int distance = horizontalDistance(x, cell);
      if (bestDistance == -1 || distance < bestDistance) {
        best = cell;
        bestDistance = distance;
      }
    }
    return best;
  }

  private int horizontalDistance(int x, EditorCell cell) {
    if (x >= cell.getX() && x <= cell.getX() + cell.getWidth()) return 0;
    return Math.min(Math.abs(x - cell.getX()), Math.abs(x - cell.getX() - cell.getWidth()));
  }

  private void collectCellsWithY(EditorCell current, int y, Set<EditorCell> cells) {
    collectCellsWithY(current, y, cells, true);
  }

  private void collectCellsWithY(EditorCell current, int y, Set<EditorCell> cells, boolean leafsOnly) {
    if (y >= current.getY() && y <= current.getY() + current.getHeight() && (!leafsOnly || current.isLeaf())) {
      cells.add(current);
    }

    if (current instanceof EditorCell_Collection) {
      for (EditorCell cell : ((EditorCell_Collection) current).getCells()) {
        collectCellsWithY(cell, y, cells);
      }
    }
  }

  public EditorCell_Collection getParent() {
    return myParent;
  }

  public boolean isSingleNodeCell() {
    if (myParent == null) {
      return true;
    }
    if (myParent.getSNode() != myNode) {
      return true;
    }
    if (myParent.getChildCount() == 1) {
      return myParent.isSingleNodeCell();
    }
    return false;
  }

  void setParent(EditorCell_Collection parent) {
    myParent = parent;
  }

  public boolean processMousePressed(MouseEvent e) {
    return false;
  }

  public NodeSubstitutePatternEditor createSubstitutePatternEditor() {
    return new NodeSubstitutePatternEditor();
  }

  public void setSubstituteInfo(NodeSubstituteInfo substituteInfo) {
    mySubstituteInfo = substituteInfo;
    if (mySubstituteInfo != null) {
      mySubstituteInfo.setOriginalNode(getSNode());
    }
  }

  public NodeSubstituteInfo getSubstituteInfo() {
    return mySubstituteInfo;
  }

  public void paint(Graphics g) {
    paint(g, null);
  }

  public void paint(Graphics g, ParentSettings parentSettings) {
    if (!isSelectionPaintedOnAncestor(parentSettings).isSelectionPainted()) {
      paintBackground(g, parentSettings);
    }
    paintSelectionIfRequired(g, parentSettings);
    paintContent(g, parentSettings);
    paintDecorations(g);
  }

  protected ParentSettings isSelectionPaintedOnAncestor(ParentSettings parentSettings) {
    return ParentSettings.createSelectedSetting(isSelectionPainted()).combineWith(parentSettings);
  }

  public ParentSettings paintBackground(Graphics g, ParentSettings parentSettings) {
    if (!parentSettings.isSkipBackground()) {
      if (getCellBackgroundColor() != null) {
        g.setColor(getCellBackgroundColor());
        g.fillRect(getX(), getY(), getWidth(), getHeight());
      }
    }
    boolean hasMessages = false;
    List<EditorMessage> messages = getMessages();
    for (EditorMessage message : messages) {
      if (message != null && message.isBackground()) {
        message.paint(g, getEditor(), this);
        hasMessages = true;
      }
    }
    return ParentSettings.createBackgroundlessSetting(hasMessages).combineWith(parentSettings);
  }

  protected boolean isSelectionPainted() {
    return isSelected();
  }

  protected void paintSelectionIfRequired(Graphics g, ParentSettings parentSettings) {
    if (isSelectionPainted()) {
      paintSelection(g, getSelectionColor(), true, parentSettings);
    }
  }

  public abstract void paintContent(Graphics g, ParentSettings parentSettings);

  protected void paintDecorations(Graphics g) {
    int effectiveWidth = getEffectiveWidth();

    if (isDrawBorder()) {
      // COLORS: Remove hardcoded color
      g.setColor(Color.lightGray);
      g.drawRect(myX, myY, getWidth(), getHeight());
    }

    int leftInternalInset = getLeftInset();

    if (isDrawBrackets()) {
      g.setColor(getBracketsColor());

      // opening bracket
      g.fillRect(myX + leftInternalInset + 2, myY + 3, 2, myHeight - 5);
      g.fillRect(myX + leftInternalInset + 3, myY + 2, BRACKET_WIDTH - 3, 2);
      g.fillRect(myX + leftInternalInset + 3, myY + myHeight - 3, BRACKET_WIDTH - 3, 2);

      // closing bracket
      g.fillRect(myX + effectiveWidth - 3, myY + 3, 2, myHeight - 5);
      g.fillRect(myX + effectiveWidth - BRACKET_WIDTH + 1, myY + 2, BRACKET_WIDTH - 3, 2);
      g.fillRect(myX + effectiveWidth - BRACKET_WIDTH + 1, myY + myHeight - 3, BRACKET_WIDTH - 3, 2);
    }

    List<EditorMessage> messages = getMessages();
    for (EditorMessage message : messages) {
      if (message != null && !message.isBackground()) {
        message.paint(g, getEditor(), this);
      }
    }
  }

  public List<EditorMessage> getMessages() {
    return getEditor().getHighlightManager().getMessages(this);
  }

  public <T extends EditorMessage> List<T> getMessages(Class<T> clazz) {
    List<T> result = new ArrayList<T>();
    for (EditorMessage message : getMessages()) {
      if (clazz.isInstance(message)) {
        result.add((T) message);
      }
    }
    return result;
  }

  public List<EditorMessage> getMessagesForOwner(EditorMessageOwner owner) {
    ArrayList<EditorMessage> result = new ArrayList<EditorMessage>(1);
    for (EditorMessage message : getMessages()) {
      if (message.getOwner() == owner) {
        result.add(message);
      }
    }
    return result;
  }

  public boolean hasErrorMessages() {
    for (EditorMessage message : getMessages()) {
      if (message.getStatus() == MessageStatus.ERROR) {
        return true;
      }
    }
    return false;
  }

  public EditorCell_Label getSTHintCell() {
    SNode node = getSNode();
    if (node == null) {
      return null;
    }

    EditorCell bigCell = getEditor().findNodeCell(node);
    Object anchorId = node.getUserObject(EditorManager.SIDE_TRANSFORM_HINT_ANCHOR_CELL_ID);
    if (anchorId == null) {
      if (bigCell != null && bigCell.getParent() != null) {
        for (jetbrains.mps.openapi.editor.cells.EditorCell child : bigCell.getParent()) {
          if (child instanceof EditorCell_STHint) {
            return (EditorCell_Label) child;
          }
        }
      }
    } else {
      EditorCell anchorCell = getEditor().findCellWithId(node, anchorId.toString());

      if (anchorCell == null) {
        return null;
      }

      assert anchorCell.getParent() != null : "No cell parent for node " + node.getNodeId().toString() + " " + node.getModel();

      jetbrains.mps.openapi.editor.cells.EditorCell nextSibling = APICellAdapter.getNextSibling(anchorCell);
      if (nextSibling instanceof EditorCell_STHint) {
        return (EditorCell_Label) nextSibling;
      }

      jetbrains.mps.openapi.editor.cells.EditorCell prevSibling = APICellAdapter.getPrevSibling(anchorCell);
      if (prevSibling instanceof EditorCell_STHint) {
        return (EditorCell_Label) prevSibling;
      }

      return null;
    }

    return null;
  }

  public void synchronizeViewWithModel() {
  }

  public void setBaseline(int y) {
    int relBaseline = getAscent();
    moveTo(myX, y - relBaseline);
  }

  public int getBaseline() {
    return myY + getAscent();
  }

  public int getAscent() {
    return myHeight;
  }

  public int getDescent() {
    return myHeight - getAscent();
  }

  public void paintSelection(Graphics g, Color c, boolean drawBorder) {
    paintSelection(g, c, drawBorder, ParentSettings.createDefaultSetting());
  }

  public void paintSelection(Graphics g, Color c, boolean drawBorder, ParentSettings parentSettings) {
    g.setColor(c);
    g.fillRect(getX(), getY() /*+ getTopInset()*/, getWidth(), getHeight() - getTopInset() - getBottomInset());
    if (getEditor().hasFocus() && drawBorder) {
      g.setColor(c.darker());
      g.drawRect(getX(), getY(), getWidth(), getHeight());
    }
  }

  public TextBuilder renderText() {
    return TextBuilder.getEmptyTextBuilder();
  }

  public final void relayout() {
    if (!myIsNeedRelayout) {
      return;
    }
    boolean drawBrackets = isDrawBrackets();
    if (drawBrackets) {
      myX += BRACKET_WIDTH;
    }
    myX += myGapLeft;

    relayoutImpl();

    if (drawBrackets) {
      myX -= BRACKET_WIDTH;
      myWidth += 2 * BRACKET_WIDTH;
    }
    myX -= myGapLeft;
    myWidth += myGapLeft + myGapRight;
    myIsNeedRelayout = false;
  }

  protected void relayoutImpl() {

  }

  public void switchCaretVisible() {

  }

  public CellInfo getCellInfo() {
    return new DefaultCellInfo(this);
  }

  public void setRightTransformAnchorTag(String tag) {
    getStyle().set(StyleAttributes.RT_ANCHOR_TAG, tag);
  }

  public String getRightTransformAnchorTag() {
    return getStyle().get(StyleAttributes.RT_ANCHOR_TAG);
  }

  public boolean hasRightTransformAnchorTag(String tag) {
    return getRightTransformAnchorTag() != null && getRightTransformAnchorTag().equals(tag);
  }

  public boolean isAncestorOf(EditorCell cell) {
    jetbrains.mps.openapi.editor.cells.EditorCell_Collection parent = cell.getParent();
    while (parent != null) {
      if (parent == this) return true;
      parent = parent.getParent();
    }
    return false;
  }

  public Color getSelectionColor() {
    return EditorSettings.getInstance().getSelectionBackgroundColor();
  }

  public static Color getRangeSelectionColor() {
    return EditorSettings.getInstance().getRangeSelectionForegroundColor();
  }

  public Iterator<EditorCell_Collection> parents() {
    return new Iterator<EditorCell_Collection>() {
      private EditorCell myCurrentCell = EditorCell_Basic.this;

      public boolean hasNext() {
        return myCurrentCell.getParent() != null;
      }

      public EditorCell_Collection next() {
        EditorCell_Collection parent = (EditorCell_Collection) myCurrentCell.getParent();
        if (parent == null) throw new NoSuchElementException();
        myCurrentCell = parent;
        return parent;
      }

      public void remove() {
        throw new UnsupportedOperationException();
      }
    };
  }

  public boolean isUnderFolded() {
    return getFoldedAbove() != null;
  }

  public EditorCell_Collection getFoldedAbove() {
    for (EditorCell_Collection parent : IterableUtil.asIterable(parents())) {
      if (parent.isFolded()) return parent;
    }
    return null;
  }

  public EditorCell_Collection findParent(Condition<EditorCell_Collection> condition) {
    if (this instanceof EditorCell_Collection && condition.met((EditorCell_Collection) this)) {
      return (EditorCell_Collection) this;
    }
    for (EditorCell_Collection collection : IterableUtil.asIterable(parents())) {
      if (condition.met(collection)) {
        return collection;
      }
    }
    return null;
  }

  public <C extends EditorCell> C findChild(CellFinder<C> finder, boolean includeThis) {
    return finder.find(this, includeThis);
  }

  public <C extends EditorCell> C findChild(CellFinder<C> finder) {
    return findChild(finder, false);
  }

  public boolean isFolded() {
    return false;
  }

  public boolean isUnfoldedCollection() {
    return false;
  }

  public boolean canBePossiblyFolded() {
    return false;
  }

  public EditorCell getRootParent() {
    EditorCell cell = this;
    EditorCell prevCell = null;
    while (cell != null) {
      prevCell = cell;
      cell = (EditorCell) cell.getParent();
    }
    return prevCell;
  }

  public boolean isBigCell() {
    return getParent() == null || getParent().getSNode() != getSNode();
  }

  protected boolean isTopCell() {
    return getParent() == null || getParent().getSNode() != getSNode()
      || (getParent().getChildCount() == 1 && getParent().isSelectable() && getParent().isTopCell());
  }

  public boolean isFirstCaretPosition() {
    return false;
  }

  public boolean isLastCaretPosition() {
    return false;
  }

  public boolean isFirstPositionInBigCell() {
    return false;
  }

  public boolean isLastPositionInBigCell() {
    return false;
  }

  public boolean isLastChild() {
    return getNextSibling() == null && getParent() != null;
  }

  public boolean isFirstChild() {
    return getPrevSibling() == null && getParent() != null;
  }

  public boolean isOnLeftBoundary() {
    return getPrevLeaf() == null || getPrevLeaf().getSNode() != getSNode();
  }

  public boolean isOnRightBoundary() {
    return getNextLeaf() == null || getNextLeaf().getSNode() != getSNode();
  }

  public EditorCell getContainingBigCell() {
    if (isBigCell()) {
      return this;
    }
    if (getParent() == null) {
      return null;
    }
    return getParent().getContainingBigCell();
  }

  public void setFocusPolicy(jetbrains.mps.nodeEditor.FocusPolicy fp) {
    getStyle().set(StyleAttributes.FOCUS_POLICY, FocusPolicy.valueOf(fp.name()));
  }

  public boolean isAbove(EditorCell cell) {
    return getY() + getHeight() <= cell.getY();
  }

  public boolean isBelow(EditorCell cell) {
    return cell.isAbove(this);
  }

  public boolean isToLeft(EditorCell cell) {
    return getX() + getWidth() <= cell.getX();
  }

  public boolean isToRight(EditorCell cell) {
    return cell.isToLeft(this);
  }

  private static int horizontalDistance(EditorCell cell, int x) {
    if (cell.getX() <= x && x <= cell.getX() + cell.getWidth()) return 0;
    return Math.min(Math.abs(cell.getX() - x), Math.abs(cell.getX() + cell.getWidth() - x));
  }

  public EditorCell getUpper(Condition<EditorCell> condition, int baseX) {
    EditorCell bestMatch = null;
    EditorCell current = getPrevLeaf(condition);

    while (current != null) {
      if (current.isAbove(this)) {
        if (bestMatch != null && current.isAbove(bestMatch)) {
          break;
        }

        if (bestMatch != null) {
          if (horizontalDistance(bestMatch, baseX) > horizontalDistance(current, baseX)) {
            bestMatch = current;
          }
        } else {
          bestMatch = current;
        }
      }

      current = current.getPrevLeaf(condition);
    }

    return bestMatch;
  }

  public EditorCell getLower(Condition<EditorCell> condition, int baseX) {
    EditorCell bestMatch = null;
    EditorCell current = getNextLeaf(condition);

    while (current != null) {
      if (current.isBelow(this)) {
        if (bestMatch != null && current.isBelow(bestMatch)) {
          break;
        }

        if (bestMatch != null) {
          if (horizontalDistance(bestMatch, baseX) > horizontalDistance(current, baseX)) {
            bestMatch = current;
          }
        } else {
          bestMatch = current;
        }
      }

      current = current.getNextLeaf(condition);
    }

    return bestMatch;
  }

  public EditorCell getEndCell(Condition<EditorCell> condition) {
    EditorCell current = this;
    while (current.getLeafToRight(condition) != null) {
      current = current.getLeafToRight(condition);
    }
    return current.getLastLeaf(condition);
  }

  public EditorCell getHomeCell(Condition<EditorCell> condition) {
    EditorCell current = this;
    while (current.getLeafToLeft(condition) != null) {
      current = current.getLeafToLeft(condition);
    }
    return current.getFirstLeaf();
  }

  public EditorCell getLeafToLeft(Condition<EditorCell> condition) {
    return getPrevLeaf(new Condition<EditorCell>() {
      public boolean met(EditorCell current) {
        return current.isSelectable() && !isAbove(current) && !isBelow(current) && isToRight(current);
      }
    });
  }

  public EditorCell getLeafToRight(Condition<EditorCell> condition) {
    return getNextLeaf(new Condition<EditorCell>() {
      public boolean met(EditorCell current) {
        return current.isSelectable() && !isAbove(current) && !isBelow(current) && isToLeft(current);
      }
    });
  }

  public EditorCell getNextSibling() {
    if (myParent == null) {
      return null;
    }
    int index = myParent.indexOf(this);
    if (index + 1 < myParent.getChildCount()) {
      return myParent.getChildAt(index + 1);
    }
    return null;
  }

  public EditorCell getNextSibling(Condition<EditorCell> condition) {
    EditorCell current = getNextSibling();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getNextSibling();
    }
    return null;
  }

  public EditorCell getPrevSibling() {
    if (myParent == null) {
      return null;
    }
    int index = myParent.indexOf(this);
    if (index > 0) {
      return myParent.getChildAt(index - 1);
    }
    return null;
  }

  public EditorCell getPrevSibling(Condition<EditorCell> condition) {
    EditorCell current = getPrevSibling();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getPrevSibling();
    }
    return null;
  }

  public EditorCell getNextLeaf() {
    if (getNextSibling() != null) {
      return getNextSibling().getFirstLeaf();
    }
    if (myParent != null) {
      return myParent.getNextLeaf();
    }
    return null;
  }

  public EditorCell getNextLeaf(Condition<EditorCell> condition) {
    EditorCell current = getNextLeaf();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getNextLeaf();
    }
    return null;
  }

  public EditorCell getPrevLeaf() {
    if (getPrevSibling() != null) {
      return getPrevSibling().getLastLeaf();
    }
    if (myParent != null) {
      return myParent.getPrevLeaf();
    }
    return null;
  }

  public EditorCell getPrevLeaf(Condition<EditorCell> condition) {
    EditorCell current = getPrevLeaf();
    while (current != null) {
      if (condition.met(current)) {
        return current;
      }
      current = current.getPrevLeaf();
    }
    return null;
  }

  public EditorCell getFirstLeaf() {
    return this;
  }

  public EditorCell getLastLeaf() {
    return this;
  }

  public EditorCell getFirstLeaf(final Condition<EditorCell> condition) {
    EditorCell firstLeaf = getFirstLeaf();
    if (condition.met(firstLeaf)) {
      return firstLeaf;
    }
    return firstLeaf.getNextLeaf(new Condition<EditorCell>() {
      public boolean met(EditorCell object) {
        return isAncestorOf(object) && condition.met(object);
      }
    });
  }

  public EditorCell getLastLeaf(final Condition<EditorCell> condition) {
    EditorCell lastLeaf = getLastLeaf();
    if (condition.met(lastLeaf)) {
      return lastLeaf;
    }
    return lastLeaf.getPrevLeaf(new Condition<EditorCell>() {
      public boolean met(EditorCell object) {
        return isAncestorOf(object) && condition.met(object);
      }
    });
  }

  public EditorCell getLastChild() {
    return this;
  }

  public EditorCell getFirstChild() {
    return this;
  }

  public EditorCell getFirstDescendant(Condition<EditorCell> condition) {
    EditorCell current = getFirstChild();

    if (current == this) return null;

    while (current != null) {
      if (condition.met(current)) return current;

      EditorCell result = current.getFirstDescendant(condition);
      if (result != null) {
        return result;
      }

      current = current.getNextSibling();
    }
    return null;
  }

  public EditorCell getLastDescendant(Condition<EditorCell> condition) {
    EditorCell current = getLastChild();

    if (current == this) return null;

    while (current != null) {
      if (condition.met(current)) return current;

      EditorCell result = current.getLastDescendant(condition);
      if (result != null) {
        return result;
      }

      current = current.getPrevSibling();
    }
    return null;
  }

  public Style getStyle() {
    return myStyle;
  }

  public boolean isLeaf() {
    return true;
  }

  public boolean isInTree() {
    return myInTree;
  }

  public void onAdd() {
    myInTree = true;

    if (isErrorState()) {
      getEditor().getCellTracker().addErrorCell(this);
    }
  }

  public void onRemove() {
    myInTree = false;

    if (isErrorState()) {
      getEditor().getCellTracker().removeErrorCell(this);
    }
  }

  public void setLeftGap(int gap) {
    // TODO: remove this line and modify getEffectiveWidth() method in order to return
    // getWidth() + myGapRight + myGapLeft
    // most of getWidth() usages must be replaced with getEffectiveWidth() then.
    myWidth = myWidth - myGapLeft + gap;
    myGapLeft = gap;
  }

  public void setRightGap(int gap) {
    // TODO: remove this line and modify getEffectiveWidth() method in order to return
    // getWidth() + myGapRight + myGapLeft
    // most of getWidth() usages must be replaced with getEffectiveWidth() then.
    myWidth = myWidth - myGapRight + gap;
    myGapRight = gap;
  }

  protected void requestRelayout() {
    myIsNeedRelayout = true;
    if (getParent() != null) {
      getParent().requestRelayout();
    }
  }

  // Following methods are used from layout algorythms
  protected void markNeedsRelayout() {
    myIsNeedRelayout = true;
  }

  boolean isNeedsRelayout() {
    return myIsNeedRelayout;
  }

  public void unrequestLayout() {
    myIsNeedRelayout = false;
  }
}
