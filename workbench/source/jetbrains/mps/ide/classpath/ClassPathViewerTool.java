package jetbrains.mps.ide.classpath;

import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.ToolWindowAnchor;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.project.ClasspathCollector;
import jetbrains.mps.project.IModule;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.workbench.tools.BaseProjectTool;

import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.SwingUtilities;
import java.awt.BorderLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ClassPathViewerTool extends BaseProjectTool {
  private MyClassPathTree myTree = new MyClassPathTree();
  private JPanel myComponent = new JPanel(new BorderLayout());
  private IModule myInspectedModule;

  public ClassPathViewerTool(Project project) {
    super(project, "Classpath Explorer", -1, IconManager.EMPTY_ICON, ToolWindowAnchor.BOTTOM, true);

    myComponent.add(new JScrollPane(myTree), BorderLayout.CENTER);

    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        DefaultActionGroup group = new DefaultActionGroup();
        group.add(createCloseAction());

        JComponent toolbar = ActionManager.getInstance().createActionToolbar(ActionPlaces.UNKNOWN, group, false).getComponent();
        myComponent.add(toolbar, BorderLayout.WEST);
      }
    });
  }

  public void initComponent() {
    super.initComponent();
    myTree.rebuildLater();
  }

  public JComponent getComponent() {
    return myComponent;
  }

  public void analyzeModule(IModule m) {
    myInspectedModule = m;
    myTree.rebuildLater();
  }

  private class MyClassPathTree extends MPSTree {
    protected MPSTreeNode rebuild() {
      if (myInspectedModule == null) {
        return new TextTreeNode("No Module");
      }

      TextTreeNode root = new TextTreeNode("ClassPath of module " + myInspectedModule.getModuleUID());
      ClasspathCollector collector = new ClasspathCollector(CollectionUtil.asSet(myInspectedModule));
      collector.collect();

      List<IClassPathItem> items = new ArrayList<IClassPathItem>(collector.getResult());
      Collections.sort(items, new ToStringComparator());

      for (IClassPathItem item : items) {
        TextTreeNode itemNode = new TextTreeNode(item.toString());
        root.add(itemNode);
        for (IModule pathItem : collector.getPathFor(item)) {
          itemNode.add(new ModuleTreeNode(pathItem));
        }
      }

      return root;
    }

    private class ModuleTreeNode extends MPSTreeNode {
      private IModule myModule;

      private ModuleTreeNode(IModule module) {
        super(null);
        myModule = module;
        updatePresentation();
      }

      protected void updatePresentation() {
        setText(myModule.getModuleUID());
        setIcon(IconManager.getIconFor(myModule));
        setNodeIdentifier(myModule.getModuleUID());
      }

      public boolean isLeaf() {
        return true;
      }
    }
  }
}
