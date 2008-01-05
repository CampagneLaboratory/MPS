package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.ide.ui.MPSTreeNodeEx;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;

import javax.swing.tree.DefaultTreeModel;
import javax.swing.Icon;
import java.util.List;
import java.util.ArrayList;

public class PropertiesTreeNode extends MPSTreeNodeEx {
  private SNode myNode;
  private boolean myInitialized = false;

  public PropertiesTreeNode(IOperationContext operationContext, SNode node) {
    super(operationContext);
    myNode = node;

    setIcon(Icons.PROPERTY_ICON);
    setNodeIdentifier("properties");
  }

  public boolean isInitialized() {
    return myInitialized;
  }

  protected void doInit() {
    super.doInit();

    List<String> props = new ArrayList<String>(myNode.getPropertyNames());

    for (final String p : props) {
      add(new TextTreeNode(p + " = " + myNode.getProperty(p)) {
        {
          setIcon(Icons.DEFAULT_ICON);
        }

        public String getNodeIdentifier() {
          return p;
        }

        public boolean isLeaf() {
          return true;
        }
      });
    }

    myInitialized = true;

    ((DefaultTreeModel) getTree().getModel()).nodeStructureChanged(this);
  }

  protected void doUpdate() {
    this.removeAllChildren();
    myInitialized = false;
  }
}
