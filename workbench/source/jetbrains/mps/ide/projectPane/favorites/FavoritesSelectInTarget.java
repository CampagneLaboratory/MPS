package jetbrains.mps.ide.projectPane.favorites;

import com.intellij.ide.SelectInTarget;
import com.intellij.ide.SelectInContext;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.ide.projectPane.favorites.root.FavoritesRoot;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.smodel.*;
import jetbrains.mps.project.IModule;

import java.util.List;
import java.util.ArrayList;

public class FavoritesSelectInTarget implements SelectInTarget {
  private List<SNode> getAvailableNodes(List<Object> objects) {
    List<SNode> result = new ArrayList<SNode>();
    for (Object o : objects) {
      FavoritesRoot favoritesRoot = FavoritesRoot.createForValue(o);
      if (favoritesRoot == null) continue;
      result.addAll(favoritesRoot.getAvaliableNodes());
    }
    return result;
  }

  private MPSTreeNode findTreeNode(MPSTreeNode treeNode, Object userObject) {
    if (treeNode.getUserObject() == userObject) return treeNode;
    if (!treeNode.isInitialized()) treeNode.init();
    for (MPSTreeNode child : treeNode) {
      MPSTreeNode result = findTreeNode(child, userObject);
      if (result != null) return result;
    }
    return null;
  }

  private void select(MPSTreeNode treeNode, MPSTree tree) {
    if (treeNode == null) return;
    tree.selectNode(treeNode);
  }

  public boolean canSelect(SelectInContext context) {
    VirtualFile file = context.getVirtualFile();
    if (!(file instanceof MPSNodeVirtualFile)) return false;
    MPSNodeVirtualFile nodeVirtualFile = (MPSNodeVirtualFile) file;
    Project project = context.getProject();
    FavoritesProjectPane currentFavoritesPane = FavoritesUtil.getCurrentPane(project);
    if (currentFavoritesPane != null) {
      MPSFavoritesManager favoritesManager = project.getComponent(MPSFavoritesManager.class);
      if (favoritesManager == null) return false;
      String name = currentFavoritesPane.getSubId();
      List<Object> objects = favoritesManager.getRoots(name);
      if (getAvailableNodes(objects).contains(nodeVirtualFile.getNode())) {
        return true;
      }
    }
    return false;
  }

  public void selectIn(SelectInContext context, boolean requestFocus) {
    Project project = context.getProject();
    MPSNodeVirtualFile nodeVirtualFile = (MPSNodeVirtualFile) context.getVirtualFile();
    final SNode nodeToSelect = nodeVirtualFile.getNode();
    SModelDescriptor model = ModelAccess.instance().runReadAction(new Computable<SModelDescriptor>() {
       public SModelDescriptor compute() {
         return nodeToSelect.getModel().getModelDescriptor();
       }
     });
    IModule module = model.getModule();
    FavoritesProjectPane pane = (FavoritesProjectPane) ProjectView.getInstance(project).getCurrentProjectViewPane();
    MPSTree tree = pane.getTree();
    MPSTreeNode mainRoot = tree.getRootNode();
    for (MPSTreeNode root : mainRoot) {
      Object userObject = root.getUserObject();
      if (userObject.equals(nodeToSelect)) {
        select(root, tree);
      } else if (userObject.equals(model) || userObject.equals(module)) {
        select(findTreeNode(root, nodeToSelect), tree);
      }
    }
  }

  public String getToolWindowId() {
    return FavoritesProjectPane.ID;
  }

  public String getMinorViewId() {
    return "Favorites";
  }

  public float getWeight() {
    return 0;
  }

  public String toString() {
    return getMinorViewId();
  }
}
