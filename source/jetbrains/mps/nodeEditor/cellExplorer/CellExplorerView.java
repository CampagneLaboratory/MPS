package jetbrains.mps.nodeEditor.cellExplorer;

import jetbrains.mps.ide.*;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.toolsPane.DefaultTool;
import jetbrains.mps.ide.toolsPane.ToolsPane;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.TreeTextUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import javax.swing.tree.DefaultTreeModel;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.util.*;

/**
 * @author Kostik
 */
public class CellExplorerView extends DefaultTool {
  public static final Logger LOG = Logger.getLogger(CellExplorerView.class);

  private AbstractProjectFrame myAbstractProjectFrame;

  private JPanel myComponent = new JPanel(new BorderLayout());
  private MyTree myTree = new MyTree();
  private AbstractEditorComponent myCurrentEditor;

  private CellTreeNode myCashedPropertyCellTreeNode = null;

  private AbstractEditorComponent.RebuildListener myRebuildListener = new AbstractEditorComponent.RebuildListener() {
    public void editorRebuilt(AbstractEditorComponent editor) {
      update();
    }
  };
  private AbstractEditorComponent.CellSynchronizationWithModelListener mySynchronizationListener = new AbstractEditorComponent.CellSynchronizationWithModelListener() {
    public void cellSynchronizedWithModel(EditorCell cell) {
      if (cell == null) return;
      CellTreeNode cellTreeNode;
      if (myCashedPropertyCellTreeNode != null && cell == myCashedPropertyCellTreeNode.getUserObject()) {
        cellTreeNode = myCashedPropertyCellTreeNode;
      } else {
        cellTreeNode = (CellTreeNode) findCellTreeNode(cell);
        myCashedPropertyCellTreeNode = cellTreeNode;
      }
      if (cellTreeNode == null) return;
      cellTreeNode.init();
      ((DefaultTreeModel) myTree.getModel()).nodeChanged(cellTreeNode);
      myTree.repaint();
    }
  };

  public CellExplorerView(AbstractProjectFrame projectFrame) {
    myAbstractProjectFrame = projectFrame;
    myTree.setRootVisible(true);
    myComponent.add(new JScrollPane(myTree), BorderLayout.CENTER);
    update();
    getEditorsPane().addListener(new EditorsPane.IEditorsPaneListener() {
      public void editorOpened(@NotNull IEditor e) {
        update();
      }
      public void editorClosed(@NotNull IEditor e) {
        update();
      }
      public void editorSelected(@NotNull IEditor e) {
        update();
      }

      public void editorStateChanged(@NotNull IEditor e) {
        update();
      }
    });
  }

  private ToolsPane getToolsPane() {
    return myAbstractProjectFrame.getToolsPane();
  }

  private EditorsPane getEditorsPane() {
    return myAbstractProjectFrame.getEditorsPane();
  }


  public void update() {
    if (!getToolsPane().isVisible(this)) {
      return;
    }
    removeListeners();

    IEditor currentEditor = getEditorsPane().getCurrentEditor();

    if (!(currentEditor instanceof NodeEditor || currentEditor instanceof ConceptDeclarationEditor)) {
      myTree.rebuildNow();
      return;
    }

    myCurrentEditor = currentEditor.getCurrentEditorComponent();
    if (myCurrentEditor != null) {
      myCurrentEditor.addRebuildListener(myRebuildListener);
      myCurrentEditor.addSynchronizationListener(mySynchronizationListener);
    }
    myTree.rebuildNow();
  }

  private void removeListeners() {
    if (myCurrentEditor != null) {
      myCurrentEditor.removeRebuildListener(myRebuildListener);
      myCurrentEditor.removeSynchronizationListener(mySynchronizationListener);
    }
  }

  public void toolShown() {
    update();
  }

  public void toolHidden() {
    removeListeners();
  }

  public void showCell(EditorCell cell) {
    if (!getToolsPane().isVisible(this)) {
      getToolsPane().selectTool(this);
    }
    MPSTreeNode current = findCellTreeNode(cell);
    if (current == null) {
      LOG.warning("Can't find cell in tree");
      return;
    }
    myTree.selectNode(current);
    getToolsPane().selectTool(this);
  }

  private MPSTreeNode findCellTreeNode(EditorCell cell) {
    List<EditorCell> path = new ArrayList<EditorCell>();
    while (cell != null) {
      path.add(cell);
      cell = cell.getParent();
    }
    Collections.reverse(path);

    MPSTreeNode current = myTree.getRootNode();
    for (EditorCell editorCell : path) {
      if (!current.isInitialized()) current.init();
      current = current.findExactChildWith(editorCell);
      if (current == null) {
        break;
      }
    }
    return current;
  }

  public String getName() {
    return "Cell Explorer";
  }

  public Icon getIcon() {
    return Icons.CELL_EXPLORER_ICON;
  }

  public JComponent getComponent() {
    return myComponent;
  }

  private class MyTree extends MPSTree {
    protected MPSTreeNode rebuild() {
      IEditor editor = getEditorsPane().getCurrentEditor();
      if (editor == null || editor.getCurrentEditorComponent() == null) {
        return new TextTreeNode("No editor selected") {
          {
            setIcon(Icons.CELL_EXPLORER_ICON);
          }
        };
      } else {
        TextTreeNode root = new TextTreeNode("CELLS") {
          {
            setIcon(Icons.CELL_EXPLORER_ICON);
          }
        };
        root.add(new CellTreeNode(editor.getRootCell()));
        return root;
      }
    }
  }

  private class CellTreeNode extends MPSTreeNode {
    private EditorCell myCell;
    private boolean myInitialized = false;

    public CellTreeNode(EditorCell cell) {
      super(cell, null);
      myCell = cell;

      updatePresentation();
    }

    protected void updatePresentation() {
      if (myCell.isErrorState()) {
        setIcon(Icons.CELL_ERROR_ICON);
      } else if (myCell instanceof EditorCell_Collection) {
        setIcon(Icons.CELLS_ICON);
      } else if (myCell instanceof EditorCell_Constant) {
        setIcon(Icons.CELL_CONSTANT_ICON);
      } else if (myCell instanceof EditorCell_Error) {
        setIcon(Icons.CELL_ERROR_ICON);
      } else if (myCell instanceof EditorCell_Component) {
        setIcon(Icons.CELL_COMPONENT_ICON);
      } else if (myCell instanceof EditorCell_Property) {
        setIcon(Icons.CELL_PROPERTY_ICON);
      } else {
        setIcon(Icons.CELL_DEFAULT_ICON);
      }

      setNodeIdentifier(calculateNodeIdentifier());
    }

    public boolean isInitialized() {
      return myInitialized;
    }

    public int getToggleClickCount() {
      return -1;
    }

    public JPopupMenu getPopupMenu() {
      JPopupMenu result = new JPopupMenu();
      result.add(new AbstractActionWithEmptyIcon("Select In Editor") {
        public void actionPerformed(ActionEvent e) {
          showCell();
        }
      }).setBorder(null);
      result.add(new AbstractActionWithEmptyIcon("Properties") {
        public void actionPerformed(ActionEvent e) {
          new CellPropertiesWindow(myCell, myAbstractProjectFrame.getMainFrame());
        }
      }).setBorder(null);
      return result;
    }

    private void showCell() {
      IEditor currentEditor = getEditorsPane().getCurrentEditor();
      if (currentEditor != null) {
        AbstractEditorComponent currentComponent = currentEditor.getCurrentEditorComponent();
        if (currentComponent != null) {
          currentComponent.changeSelection(myCell);
        }
      }
    }

    public void doubleClick() {
      showCell();
    }

    protected void doInit() {
      removeAllChildren();
      if (myCell.getSNode() != null) {
        final SNode node = myCell.getSNode();
        String name = node.getName();
        name = name != null ? name : "<no name>";
        add(new TextTreeNode("<html><b>Node</b> " + TreeTextUtil.toHtml(name) + " (" + TreeTextUtil.toHtml(node.getConceptShortName()) + ") [" + node.getId() + "]") {
          {
            setIcon(IconManager.getIconFor(node));
          }

          public void doubleClick() {
            CellTreeNode.this.doubleClick();
          }

          public boolean isLeaf() {
            return true;
          }
        });

        if (myCell.getKeyMap() != null) {
          add(new KeyMapTreeNode(myCell.getKeyMap()));
        }

        if (myCell.getAvailableActions().size() > 0) {
          add(new CellActionsTreeNode(myCell, getOperationContext()));
        }
      } else {
        add(new TextTreeNode("No Node"));
      }

      if (myCell instanceof EditorCell_Collection) {
        EditorCell_Collection cell = (EditorCell_Collection) myCell;
        for (EditorCell child : cell) {
          add(new CellTreeNode(child));
        }
        myInitialized = true;
      }
    }


    public String calculateText() {
      String result = NameUtil.shortNameFromLongName(myCell.getClass().getName());
      if (myCell instanceof EditorCell_Label) {
        String text = ((EditorCell_Label) myCell).getText();
        if (text == null || text.length() == 0) {
          text = ((EditorCell_Label) myCell).getNullText();
        }
        result += " text = \"" + text + "\"";
      }
      if (myCell.isErrorState() ) {
        result += " (error state)";
      }
      return result;
    }

    public String calculateNodeIdentifier() {
      String result = myCell.getClass().getName();
      if (myCell.getSNode() != null) result += "[" + myCell.getSNode().getId() + "]";
      if (myCell.getUserObject(EditorCell.CELL_ID) != null) result += "[" + myCell.getUserObject(EditorCell.CELL_ID).toString() + "]";
      if (myCell.getUserObject(EditorCell.NUMBER) != null) result += "[" + myCell.getUserObject(EditorCell.NUMBER) + "]";
      return result;
    }
  }

  private class CellActionsTreeNode extends MPSTreeNode {

    public CellActionsTreeNode(EditorCell cell, IOperationContext operationContext) {
      super(cell, operationContext);
      Set<String> actions = new TreeSet<String>(cell.getAvailableActions());
      for (String action : actions) {
        add(new TextTreeNode(action));
      }
      setNodeIdentifier("Actions");
    }

  }

  private class KeyMapTreeNode extends MPSTreeNode {
    public KeyMapTreeNode(EditorCellKeyMap keyMap) {
      super(null);


      List<Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey>> list =
              new ArrayList<Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey>>(keyMap.getAllActionsAndKeys());


      Collections.sort(list, new Comparator<Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey>>() {
        public int compare(Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey> o1, Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey> o2) {
          return o1.o2.toString().compareTo(o2.o2.toString());
        }
      });

      for (Pair<EditorCellKeyMapAction, EditorCellKeyMap.ActionKey> key : list) {
        String text = key.o2.toString();

        if (key.o1.getDescriptionText() != null && key.o1.getDescriptionText().length() != 0) {
          text += " (" + key.o1.getDescriptionText() + ")";
        }
        
        add(new TextTreeNode(text) {
          {
            setIcon(Icons.CELL_ACTION_KEY_ICON);
          }

          public boolean isLeaf() {
            return true;
          }
        });

        setIcon(Icons.CELL_KEY_MAP_ICON);
        setNodeIdentifier("Keymap");
      }
    }
  }
}
