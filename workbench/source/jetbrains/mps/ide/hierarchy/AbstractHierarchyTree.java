package jetbrains.mps.ide.hierarchy;

import jetbrains.mps.findUsages.FindUsagesManager;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.TreeTextUtil;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.smodel.INodeAdapter;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.Calculable;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JPopupMenu;
import java.util.ArrayList;
import java.util.Set;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 05.06.2007
 * Time: 15:45:41
 * To change this template use File | Settings | File Templates.
 */
public abstract class AbstractHierarchyTree<T extends INodeAdapter> extends MPSTree {
  protected IOperationContext myOperationContext;
  protected FindUsagesManager myUsagesManager;
  protected AbstractHierarchyView<T> myHierarchyView;
  protected T myHierarchyNode;
  protected Class<T> myClass;
  protected boolean myIsParentHierarchy;
  protected boolean myOnlyInOneModel;

  public AbstractHierarchyTree(AbstractHierarchyView<T> hierarchyView, Class<T> aClass, boolean isParentHierarchy) {
    myHierarchyView = hierarchyView;
    myClass = aClass;
    myIsParentHierarchy = isParentHierarchy;
  }

  @Nullable
  public AbstractHierarchyView<T> getHierarchyView() {
    return myHierarchyView;
  }

  public boolean overridesNodeIdentifierCalculation() {
    return false;
  }

  public String calculateNodeIdentifier(HierarchyTreeNode<T> node) {
    throw new UnsupportedOperationException();
  }

  public boolean isParentHierarchy() {
    return myIsParentHierarchy;
  }

  public boolean isOnlyInOneModel() {
    return myOnlyInOneModel;
  }

  /*package*/ void setIsOnlyInOneModel(boolean isOnlyInOneModel) {
    boolean oldOnlyInOneModel = myOnlyInOneModel;
    myOnlyInOneModel = isOnlyInOneModel;
    if (oldOnlyInOneModel != myOnlyInOneModel) {
      rebuildNow();
    }
  }

  /*package*/ void setParentHierarchy(boolean isParentHierarchy) {
    myIsParentHierarchy = isParentHierarchy;
  }

  public void setOperationContext(IOperationContext operationContext) {
    if (operationContext != null) {
      myOperationContext = operationContext;
      myUsagesManager = operationContext.getComponent(FindUsagesManager.class);
    }
  }

  protected MPSTreeNode rebuild() {
    if (myHierarchyNode == null) return new RootTextTreeNode(noNodeString());
    return CommandProcessor.instance().executeLightweightCommand(new Calculable<MPSTreeNode>() {
      public MPSTreeNode calculate() {
        return rebuildParentHierarchy();
      }
    });
  }

  protected abstract String noNodeString();

  /* public void rebuildTree() {
     DefaultTreeModel model = new DefaultTreeModel(rebuild());
     setModel(model);
  }*/

  protected abstract T getParent(T node);

  protected abstract Set<T> getParents(T node);

  protected abstract Set<T> getDescendants(T node);

  protected Set<T> getAbstractChildren(final T node) {
    Set<T> result;
    if (myIsParentHierarchy) {
      result = getParents(node);
    } else {
      result = getDescendants(node);
    }
    if (myOnlyInOneModel) {
      result = CollectionUtil.filter(result, new Condition<T>() {
        public boolean met(T object) {
          return object.getModel() == node.getModel();
        }
      });
    }
    return result;
  }

  protected T getAbstractParent(T node) {
    T result = null;
    if (!myIsParentHierarchy) {
      result = getParent(node);
      if (result != null && myOnlyInOneModel && (result.getModel() != node.getModel())) {
        result = null;
      }
    }
    return result;
  }

  protected MPSTreeNode rebuildParentHierarchy() {
    ArrayList<T> parentHierarchy = new ArrayList<T>();
    T parentDeclaration = myHierarchyNode;
    while (parentDeclaration != null && (!myOnlyInOneModel || parentDeclaration.getModel() == myHierarchyNode.getModel())) {
      parentHierarchy.add(parentDeclaration);
      parentDeclaration = getAbstractParent(parentDeclaration);
    }

    HierarchyTreeNode parentTreeNode = null;
    HierarchyTreeNode hierarchyTreeNode = null;
    HierarchyTreeNode rootNode = null;
    for (int i = parentHierarchy.size() - 1; i >= 0; i--) {
      hierarchyTreeNode = i > 0 ? (new HierarchyTreeNode<T>(parentHierarchy.get(i), myOperationContext, this))
        : new ChildHierarchyTreeNode<T>(parentHierarchy.get(i), myOperationContext, this);
      if (i == parentHierarchy.size() - 1) rootNode = hierarchyTreeNode;
      if (parentTreeNode != null) {
        parentTreeNode.add(hierarchyTreeNode);
      }
      parentTreeNode = hierarchyTreeNode;
    }
    String text = "Hierarchy";
    if (myHierarchyView != null) {
      myHierarchyView.myTreeNode = hierarchyTreeNode;
      assert myHierarchyView.myTreeNode != null;
      text = "<html>Hierarchy for <font color=\"#400090\"><b>" + TreeTextUtil.toHtml(myHierarchyView.myTreeNode.calculateNodeIdentifier()) + "</b></font>";
    }
    TextTreeNode textRootNode = new RootTextTreeNode(text);
    textRootNode.add(rootNode);
    return textRootNode;
  }

  public boolean doubleClick(HierarchyTreeNode<T> hierarchyTreeNode) {
    return false;
  }

  protected class RootTextTreeNode extends TextTreeNode {

    public RootTextTreeNode(String s) {
      super(s);
      if (myHierarchyView != null) {
        setIcon(myHierarchyView.getIcon());
      }
    }

    public JPopupMenu getPopupMenu() {
      if (myHierarchyView != null) {
        return myHierarchyView.showHierarchyForFoundConceptPopupMenu(myClass);
      }
      return null;
    }
  }
}
