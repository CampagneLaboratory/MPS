package jetbrains.mps.ide.moduleRepositoryViewer;

import jetbrains.mps.ide.AbstractActionWithEmptyIcon;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.command.CommandEvent;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.ICommandListener;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.projectPane.SortUtil;
import jetbrains.mps.ide.toolsPane.DefaultTool;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.*;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import java.awt.event.ActionEvent;

/**
 * @author Kostik
 */
public class ModuleRepositoryView extends DefaultTool {
  private MPSTree myTree = new MyTree();
  private JScrollPane myComponent = new JScrollPane(myTree);
  private DeferringEventHandler myDeferringEventHandler = new DeferringEventHandler();

  public ModuleRepositoryView() {
    myTree.rebuildNow();
  }

  public String getName() {
    return "Module Repository Viewer";
  }

  public Icon getIcon() {
    return Icons.PROJECT_ICON;
  }

  public JComponent getComponent() {
    return myComponent;
  }

  public void toolShown() {
    myTree.rebuildNow();
    myDeferringEventHandler.installListeners();
  }

  public void toolHidden() {
    myDeferringEventHandler.unInstallListeners();
  }

  private class MyTree extends MPSTree {
    protected MPSTreeNode rebuild() {

      final TextTreeNode[] root = new TextTreeNode[1];

      CommandProcessor.instance().executeCommand(new Runnable() {
        public void run() {
          root[0] = new TextTreeNode("Loaded Modules") {
            {
              setIcon(Icons.PROJECT_ICON);
            }

            public JPopupMenu getPopupMenu() {
              JPopupMenu result = new JPopupMenu();

              result.add(new AbstractActionWithEmptyIcon("Refresh") {
                public void actionPerformed(ActionEvent e) {
                  myTree.rebuildNow();
                }
              });

              return result;
            }

          };
          for (IModule module : SortUtil.sortModules(MPSModuleRepository.getInstance().getAllModules())) {
            root[0].add(new LanguageTreeNode(module));
          }
        }
      });

      return root[0];
    }

    private class LanguageTreeNode extends MPSTreeNode {
      private IModule myModule;

      public LanguageTreeNode(IModule module) {
        super(null);
        myModule = module;
        for (MPSModuleOwner owner : MPSModuleRepository.getInstance().getOwners(myModule)) {
          add(new OwnerTreeNode(owner));
        }

        updatePresentation();
      }

      protected void updatePresentation() {
        setIcon(IconManager.getIconFor(myModule));
        setNodeIdentifier(myModule.toString());
      }

    }

    private class OwnerTreeNode extends MPSTreeNode {
      private MPSModuleOwner myOwner;

      public OwnerTreeNode(MPSModuleOwner owner) {
        super(null);
        myOwner = owner;
        updatePresentation();
      }

      protected void updatePresentation() {
        IconManager.getIconFor(myOwner);
        setNodeIdentifier(myOwner.toString());
      }

      public boolean isLeaf() {
        return true;
      }
    }
  }

  private class DeferringEventHandler implements ICommandListener, RepositoryListener {
    private boolean myDeferredUpdate = false;

    public void installListeners() {
      CommandProcessor.instance().addCommandListener(this);
      MPSModuleRepository.getInstance().addRepositoryListener(this);
    }

    public void unInstallListeners() {
      CommandProcessor.instance().removeCommandListener(this);
      MPSModuleRepository.getInstance().removeRepositoryListener(this);
    }

    public void repositoryChanged() {
      if (CommandProcessor.instance().isInsideCommand()) {
        myDeferredUpdate = true;
      } else {
        myTree.rebuildLater();
      }
    }

    public void beforeCommandFinished(@NotNull CommandEvent event) {
    }

    public void commandFinished(@NotNull CommandEvent event) {
      if (myDeferredUpdate) {
        myDeferredUpdate = false;
        myTree.rebuildLater();
      }
    }

    public void commandStarted(@NotNull CommandEvent event) {
    }
  }

}
