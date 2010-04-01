package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.smodel.SModelAdapter;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.MPSTree;

public abstract class SimpleModelListener extends SModelAdapter {
  private MPSTreeNode myTreeNode;

  public SimpleModelListener(MPSTreeNode treeNode) {
    myTreeNode = treeNode;
  }

  public abstract void updateTreeNodePresentation();

  private MPSTree getTree() {
    return myTreeNode.getTree();
  }

  private IOperationContext getOperationContext() {
    return myTreeNode.getOperationContext();
  }

  private void updateNodePresentation(final boolean reloadSubTree, final boolean updateAncesotrs) {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        if (getTree() == null) return;

        //module has been already removed
        if (!getOperationContext().isValid()) return;

        updateTreeNodePresentation();
        myTreeNode.updateNodePresentationInTree();
        if (reloadSubTree) {
          myTreeNode.updateSubTree();
        }

        if (updateAncesotrs) {
          myTreeNode.updateAncestorsPresentationInTree();
        }
      }
    });
  }

  public void modelSaved(SModelDescriptor sm) {
    updateNodePresentation(false, true);
  }

  public void modelInitialized(SModelDescriptor sm) {
    updateNodePresentation(false, false);
  }

  @Override
  public void modelReplaced(SModelDescriptor sm) {
    updateNodePresentation(true, true);
  }
}
