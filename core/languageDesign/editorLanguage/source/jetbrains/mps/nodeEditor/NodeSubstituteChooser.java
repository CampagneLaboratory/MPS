package jetbrains.mps.nodeEditor;

import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.action.AbstractNodeSubstituteAction;
import jetbrains.mps.smodel.action.INodeSubstituteAction;
import jetbrains.mps.util.WindowsUtil;
import jetbrains.mps.nodeEditor.cellMenu.INodeSubstituteInfo;

import javax.swing.*;
import javax.swing.event.ListDataListener;
import java.awt.*;
import java.awt.event.*;
import java.util.*;
import java.util.List;

/**
 * Author: Sergey Dmitriev.
 * Created Sep 16, 2003
 */
public class NodeSubstituteChooser implements IKeyboardHandler {
  private static final Logger LOG = Logger.getLogger(NodeSubstituteChooser.class);

  public static final int PREFERRED_WIDTH = 300;
  public static final int PREFERRED_HEIGHT = 200;

  private PopupWindow myPopupWindow = null;
  private boolean myChooserActivated = false;
  private boolean myPopupActivated;

  private Point myPatternEditorLocation = new Point(10, 10);
  private Dimension myPatternEditorSize = new Dimension(50, 50);

  private AbstractEditorComponent myEditorComponent;
  private NodeSubstitutePatternEditor myPatternEditor;
  private INodeSubstituteInfo myNodeSubstituteInfo;
  private List<INodeSubstituteAction> mySubstituteActions = new ArrayList<INodeSubstituteAction>();
  private boolean myMenuEmpty;

  public NodeSubstituteChooser(AbstractEditorComponent editorComponent) {
    myEditorComponent = editorComponent;
  }

  Window getWindow() {
    return myPopupWindow;
  }

  private PopupWindow getPopupWindow() {
    if (myPopupWindow == null) {
      myPopupWindow = new PopupWindow(getEditorWindow());
    }
    return myPopupWindow;
  }

  private Window getEditorWindow() {
    Component component = myEditorComponent;
    while (!(component instanceof Window)) {
      component = component.getParent();
    }
    return (Window) component;
  }

  public void setLocationRelative(EditorCell cell) {
    Component component = cell.getEditorContext().getNodeEditorComponent();
    if (component.isShowing()) {
      Point anchor = component.getLocationOnScreen();
      getPopupWindow().setRelativeCell(cell);
      getPopupWindow().relayout();
      myPatternEditorLocation = new Point(anchor.x + cell.getX(), anchor.y + +cell.getY());
      myPatternEditorSize = new Dimension(cell.getWidth() + 1, cell.getHeight());
    }
  }

  public void setNodeSubstituteInfo(INodeSubstituteInfo nodeSubstituteInfo) {
    myNodeSubstituteInfo = nodeSubstituteInfo;
  }

  public void setPatternEditor(NodeSubstitutePatternEditor patternEditor) {
    myPatternEditor = patternEditor;
  }

  protected NodeSubstitutePatternEditor getPatternEditor() {
    if (myPatternEditor == null) {
      myPatternEditor = new NodeSubstitutePatternEditor();
    }
    return myPatternEditor;
  }

  public boolean isVisible() {
    return myChooserActivated;
  }

  public void setVisible(boolean b) {
    if (myChooserActivated != b) {
      if (b) {
        myEditorComponent.pushKeyboardHandler(this);
        getPatternEditor().activate(getEditorWindow(), myPatternEditorLocation, myPatternEditorSize);
        myNodeSubstituteInfo.invalidateActions();
        rebuildMenuEntries();
        getPopupWindow().relayout();
        getPopupWindow().setSelectionIndex(0);
        getPopupWindow().setVisible(true);
        myPopupActivated = true;
      } else {
        getPopupWindow().setVisible(false);
        getPatternEditor().done();
        myPopupActivated = false;
        myEditorComponent.popKeyboardHandler();
      }
    }
    myChooserActivated = b;
  }

  private void rebuildMenuEntries() {
    myMenuEmpty = false;
    final String pattern = getPatternEditor().getPattern();

    List<INodeSubstituteAction> matchingActions = myNodeSubstituteInfo.getMatchingActions(pattern, false);

    try {
      Collections.sort(matchingActions, new Comparator<INodeSubstituteAction>() {
        public int compare(INodeSubstituteAction iNodeSubstituteItem, INodeSubstituteAction iNodeSubstituteItem1) {
          String s1 = iNodeSubstituteItem.getMatchingText(pattern);
          String s2 = iNodeSubstituteItem1.getMatchingText(pattern);
          boolean null_s1 = (s1 == null || s1.length() == 0);
          boolean null_s2 = (s2 == null || s2.length() == 0);
          if (null_s1 && null_s2) return 0;
          if (null_s1) return 1;
          if (null_s2) return -1;
          return s1.compareTo(s2);
        }
      });
    } catch (Exception e) {
      LOG.error(e, e);
    }
    mySubstituteActions = matchingActions;
    if (mySubstituteActions.size() == 0) {
      myMenuEmpty = true;
      mySubstituteActions.add(new AbstractNodeSubstituteAction() {
        public String getMatchingText(String pattern) {
          return "No variants for \"" + getPatternEditor().getPattern() + "\"";
        }

        public SNode doSubstitute(String pattern) {
          return null;
        }
      });
    }

    int textLength = 0;
    int descriptionLength = 0;
    for (INodeSubstituteAction item : mySubstituteActions) {
      try {
        textLength = Math.max(textLength, getTextLength(item, pattern));
        descriptionLength = Math.max(descriptionLength, getDescriptionLength(item, pattern));
      } catch(Throwable t) {
        LOG.error(t, t);
      }
    }
  }

  private int getDescriptionLength(INodeSubstituteAction action, String pattern) {
    String descriptionText = action.getDescriptionText(pattern);
    if (descriptionText == null) {
      descriptionText = "";
    }
    return descriptionText.length();
  }

  private int getTextLength(INodeSubstituteAction action, String pattern) {
    String text = action.getMatchingText(pattern);
    if (text == null) {
      text = "";
    }
    return text.length();
  }

  public boolean processKeyReleased(EditorContext editorContext, KeyEvent keyEvent) {
    return false;
  }

  public boolean processKeyPressed(EditorContext editorContext, KeyEvent keyEvent) {
    if (getPatternEditor().processKeyPressed(keyEvent)) {
      if (myPopupActivated) {
        rebuildMenuEntries();
        relayoutPopupMenu();
        tryToApplyIntelligentInput();
      }
      return true;
    }

    if (keyEvent.getKeyCode() == KeyEvent.VK_ESCAPE) {
      setVisible(false);
      return true;
    }

    if (myPopupActivated) {
      return menu_processKeyPressed(keyEvent);
    }

    if (keyEvent.getKeyCode() == KeyEvent.VK_ENTER || (keyEvent.getKeyCode() == KeyEvent.VK_SPACE && keyEvent.isControlDown())) {
      return doSubstitute();
    }
    return false;
  }

  private boolean doSubstitute() {
    String pattern = getPatternEditor().getPattern();

    List<INodeSubstituteAction> matchingActions = new ArrayList<INodeSubstituteAction>();
    for (INodeSubstituteAction item : mySubstituteActions) {
      if (item.canSubstitute(pattern)) {
        matchingActions.add(item);
      }
    }

    if (matchingActions.size() == 1) {
      setVisible(false);
      EditorUtil.substituteNode(matchingActions.get(0), pattern, myEditorComponent.getEditorContext());
    }
    return true;
  }

  private boolean menu_processKeyPressed(KeyEvent keyEvent) {
    if (keyEvent.getKeyCode() == KeyEvent.VK_UP) {
      getPopupWindow().setSelectionIndex(getPopupWindow().getSelectionIndex() - 1);
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_DOWN) {
      getPopupWindow().setSelectionIndex(getPopupWindow().getSelectionIndex() + 1);
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_PAGE_UP) {
      getPopupWindow().setSelectionIndex(getPopupWindow().getSelectionIndex() - getPageSize());
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_PAGE_DOWN) {
      getPopupWindow().setSelectionIndex(getPopupWindow().getSelectionIndex() + getPageSize());
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_HOME) {
      getPopupWindow().setSelectionIndex(0);
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }
    if (keyEvent.getKeyCode() == KeyEvent.VK_END) {
      getPopupWindow().setSelectionIndex(mySubstituteActions.size() - 1);
      repaintPopupMenu();
      updatePatternEditor();
      return true;
    }

    if (keyEvent.getKeyCode() == KeyEvent.VK_ENTER || (keyEvent.getKeyCode() == KeyEvent.VK_SPACE && keyEvent.isControlDown())) {
      if (!myMenuEmpty) {
        doSubstituteSelection();
      }
      return true;
    }
    return true;
  }

  private int getPageSize() {
    return myPopupWindow.myList.getLastVisibleIndex() - myPopupWindow.myList.getFirstVisibleIndex(); 
  }

  private void doSubstituteSelection() {
    String pattern = getPatternEditor().getPattern();
    INodeSubstituteAction action = mySubstituteActions.get(myPopupWindow.getSelectionIndex());
    setVisible(false);
    EditorUtil.substituteNode(action, pattern, myEditorComponent.getEditorContext());    
  }

  private void updatePatternEditor() {
    if (!myMenuEmpty) {
      int oldPosition = myPatternEditor.getCaretPosition();
      String oldPattern = myPatternEditor.getPattern();
      String newText = getPopupWindow().getSelectedText(oldPattern);
      myPatternEditor.setText(newText);
      myPatternEditor.setCaretPosition(Math.min(newText.length(), oldPosition));
    }
  }

  private void repaintPopupMenu() {
    if (myPopupActivated) {
      getPopupWindow().scrollToSelection();
      getPopupWindow().repaint();
    }
  }

  private void relayoutPopupMenu() {
    if (myPopupActivated) {
      getPopupWindow().relayout();
      getPopupWindow().repaint();
    }
  }

  public void dispose() {
    if (myPopupWindow != null) {
      myPopupWindow.getParent().remove(myPopupWindow);
      myPopupWindow.dispose();
      myPopupWindow = null;
    }
  }

  private void tryToApplyIntelligentInput() {
    final String pattern = getPatternEditor().getPattern();
    if (pattern.length() == 0) {
      return;
    }

    String prefix = pattern.substring(0, pattern.length() - 1);
    if (myNodeSubstituteInfo.hasExactlyNActions(pattern, false, 0) &&
      myNodeSubstituteInfo.hasExactlyNActions(prefix, true, 1)) {
      INodeSubstituteAction action = myNodeSubstituteInfo.getMatchingActions(prefix, true).get(0);
      final SNode node = action.doSubstitute(prefix);
      SwingUtilities.invokeLater(new Runnable() {
        public void run() {
          CommandProcessor.instance().executeCommand(new Runnable() {
            public void run() {
              EditorCell cell = myEditorComponent.findNodeCell(node);
              myEditorComponent.changeSelection(cell);
              IntelligentInputUtil.processCell(cell, myEditorComponent.getEditorContext(), pattern);
            }
          });
        }
      });
    }
  }

  private enum PopupWindowPosition {
    TOP, BOTTOM
  }

  private class PopupWindow extends JWindow {
    private JList myList = new JList(new DefaultListModel());
    private PopupWindowPosition myPosition = PopupWindowPosition.BOTTOM;
    private JScrollPane myScroller = new JScrollPane(myList, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED, JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
    private EditorCell myRelativeCell;
    ComponentAdapter myComponentListener = new ComponentAdapter() {
      public void componentMoved(ComponentEvent e) {
        NodeSubstituteChooser.this.setLocationRelative(myRelativeCell);
        getPatternEditor().setLocation(myPatternEditorLocation);
      }
    };

    public PopupWindow(final Window owner) {
      super(owner);

      owner.addComponentListener(myComponentListener);

      myList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
      myList.setFont(new TextLine("", null).getFont());
      myList.setBackground(UIManager.getColor("TextArea.selectionBackground").brighter());

      myList.addMouseListener(new MouseAdapter() {
        public void mousePressed(MouseEvent e) {
          repaintPopupMenu();
          CommandProcessor.instance().executeLightweightCommand(new Runnable() {
            public void run() {
              updatePatternEditor(); 
            }
          });
        }

        public void mouseClicked(MouseEvent e) {
          if (e.getClickCount() == 2) {
            CommandProcessor.instance().executeCommand(new Runnable() {
              public void run() {
                doSubstituteSelection();
              }
            });
          }
        }
      });

      myList.setCellRenderer(new NodeItemCellRenderer());

      add(myScroller);

      myScroller.getHorizontalScrollBar().setFocusable(false);
      myScroller.getVerticalScrollBar().setFocusable(false);

      myList.setFocusable(false);
      setSize(PREFERRED_WIDTH, PREFERRED_HEIGHT);
    }


    public void dispose() {
      getOwner().removeComponentListener(myComponentListener);

      super.dispose();
    }

    public int getFontWidth() {
      return getFontMetrics(myList.getFont()).stringWidth("x");
    }

    public void setRelativeCell(EditorCell cell) {
      myRelativeCell = cell;
    }

    public int getSelectionIndex() {
      return myList.getSelectedIndex();
    }

    public void setSelectionIndex(int index) {
      if (index < 0) {
        index = 0;
      }
      if (index >= myList.getModel().getSize()) {
        myList.setSelectedIndex(myList.getModel().getSize() - 1);
      }
      myList.setSelectedIndex(index);
    }

    public String getSelectedText(String pattern) {
      if (getSelectionIndex() != -1) {
        return mySubstituteActions.get(getSelectionIndex()).getMatchingText(pattern);
      }
      return "";
    }


    public void relayout() {
      Component component = myRelativeCell.getEditorContext().getNodeEditorComponent();
      Point anchor = component.getLocationOnScreen();
      Point location = new Point(anchor.x + myRelativeCell.getX(), anchor.y + myRelativeCell.getY() + myRelativeCell.getHeight());

      Rectangle deviceBounds = WindowsUtil.findDeviceBoundsAt(location);

      if (location.getY() + PREFERRED_HEIGHT > deviceBounds.height + deviceBounds.y - 150) {
        getPopupWindow().setPosition(PopupWindowPosition.TOP);
      } else {
        getPopupWindow().setPosition(PopupWindowPosition.BOTTOM);
      }

      Point newLocation = location;

      int oldIndex = getSelectionIndex();

      myList.setModel(new ListModel() {
        public int getSize() {
          return mySubstituteActions.size();
        }

        public Object getElementAt(int index) {
          return mySubstituteActions.get(index);
        }

        public void addListDataListener(ListDataListener l) {
        }

        public void removeListDataListener(ListDataListener l) {
        }
      });

      setSelectionIndex(oldIndex);
      scrollToSelection();

      setSize(
              Math.max(PREFERRED_WIDTH, myList.getPreferredSize().width + 21),
              Math.min(PREFERRED_HEIGHT, myList.getPreferredSize().height + getVerticalScrollerHeight()));

      if (getPosition() == PopupWindowPosition.TOP) {
        newLocation = new Point(newLocation.x, newLocation.y - getHeight() - myRelativeCell.getHeight());
      }

      if (getWidth() >= deviceBounds.width) {
        setSize(deviceBounds.width, getSize().height + myList.getFontMetrics(myList.getFont()).getHeight());
      }

      if (newLocation.x < deviceBounds.x) {
        newLocation.x = deviceBounds.x;
      }

      if (getWidth() + newLocation.x > deviceBounds.width + deviceBounds.x) {
        newLocation = new Point(deviceBounds.width + deviceBounds.x - getWidth(), newLocation.y);
      }

      setLocation(newLocation);

      validateTree();
      repaint();
    }

    public void scrollToSelection() {
      myList.ensureIndexIsVisible(getSelectionIndex());
    }

    private int getVerticalScrollerHeight() {
      JScrollBar scrollbar = myScroller.getHorizontalScrollBar();
      if (scrollbar != null && scrollbar.isVisible()) {
        return scrollbar.getHeight();
      }
      Insets insets = myScroller.getBorder().getBorderInsets(myScroller);
      return insets.top + insets.bottom + 1;
    }


    public PopupWindowPosition getPosition() {
      return myPosition;
    }

    public void setPosition(PopupWindowPosition position) {
      myPosition = position;
    }
  }

  private class NodeItemCellRenderer extends JPanel implements ListCellRenderer {

    private JLabel myLeft = new JLabel("", JLabel.LEFT);
    private JLabel myRight = new JLabel("", JLabel.RIGHT);

    private NodeItemCellRenderer() {
      setLayout(new BorderLayout());
      myLeft.setFont(new TextLine("", null).getFont());
      myRight.setFont(new TextLine("", null).getFont());
      add(myLeft, BorderLayout.WEST);
      add(myRight, BorderLayout.EAST);
    }

    public Component getListCellRendererComponent(final JList list, final Object value, int index, final boolean isSelected, boolean cellHasFocus) {
      CommandProcessor.instance().executeLightweightCommand(new Runnable() {
        public void run() {
          setupThis(list, value, isSelected);
        }
      });

      return this;
    }

    private void setupThis(JList list, Object value, boolean isSelected) {
      INodeSubstituteAction action = (INodeSubstituteAction) value;
      myLeft.setIcon(action.getIconFor(getPatternEditor().getPattern()));
      try {
        myLeft.setText(action.getMatchingText(getPatternEditor().getPattern()));
      } catch (Throwable t) {
        myLeft.setText("!Exception was thrown!");
        LOG.error(t);
      }

      try {
        myRight.setText(action.getDescriptionText(getPatternEditor().getPattern()));
      } catch (Throwable t) {
        myRight.setText("!Exception was thrown!");
        LOG.error(t);
      }

      myLeft.setForeground(UIManager.getColor("TextArea.selectionForeground"));
      myRight.setForeground(UIManager.getColor("TextArea.selectionForeground"));
      if (isSelected) {
        setBackground(list.getSelectionBackground());
        setForeground(list.getSelectionForeground());
      } else {
        setBackground(list.getBackground());
        setForeground(list.getForeground());
      }
    }
  }
}