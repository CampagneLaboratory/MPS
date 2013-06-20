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
package jetbrains.mps.ide.moduleRepositoryViewer;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.command.CommandProcessorEx;
import com.intellij.ui.ScrollPaneFactory;
import jetbrains.mps.MPSCore;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.projectPane.SortUtil;
import jetbrains.mps.ide.ui.tree.MPSTree;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;

import javax.swing.JComponent;
import javax.swing.JScrollPane;
import java.util.Map;

public class ModuleRepositoryComponent {
  private MPSTree myTree = new MyTree();
  private JScrollPane myComponent = ScrollPaneFactory.createScrollPane(myTree);
  private DeferringEventHandler myDeferringEventHandler = new DeferringEventHandler();
  private SRepository myRepository;

  public ModuleRepositoryComponent(Project project) {
    myRepository = project.getRepository();
  }

  public JComponent getComponent() {
    return myComponent;
  }

  public void install() {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      @Override
      public void run() {
        myTree.rebuildNow();
      }
    });
    myDeferringEventHandler.subscribeTo(myRepository);
  }

  public void uninstall() {
    myDeferringEventHandler.unsubscribeFrom(myRepository);
  }

  private class MyTree extends MPSTree {
    @Override
    protected MPSTreeNode rebuild() {
      final TextTreeNode[] root = new TextTreeNode[1];

      myRepository.getModelAccess().runReadAction(new Runnable() {
        @Override
        public void run() {
          root[0] = new TextTreeNode("Loaded Modules") {
            {
              setIcon(Icons.PROJECT_ICON);
            }

            @Override
            protected boolean propogateErrorUpwards() {
              return false;
            }

            @Override
            public ActionGroup getActionGroup() {
              BaseAction refreshAction = new BaseAction("Refresh") {
                @Override
                protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
                  myTree.rebuildNow();
                }
              };

              return ActionUtils.groupFromActions(refreshAction);
            }

          };

          if (MPSCore.getInstance().isTestMode()) return;

          for (SModule module : SortUtil.sortModules(MPSModuleRepository.getInstance().getAllModules())) {
            root[0].add(new LanguageTreeNode(module));
          }
        }
      });

      return root[0];
    }

    private class LanguageTreeNode extends MPSTreeNode {
      private SModule myModule;

      public LanguageTreeNode(SModule module) {
        super(null);
        myModule = module;
        setNodeIdentifier(myModule.toString());
        setIcon(IconManager.getIconFor(myModule));
        for (MPSModuleOwner owner : MPSModuleRepository.getInstance().getOwners(myModule)) {
          add(new OwnerTreeNode(owner));
        }
      }
    }

    private class OwnerTreeNode extends MPSTreeNode {
      private MPSModuleOwner myOwner;

      public OwnerTreeNode(MPSModuleOwner owner) {
        super(null);
        myOwner = owner;
        setNodeIdentifier(myOwner.toString());
        setIcon(IconManager.getIconFor(myOwner));
      }

      @Override
      public boolean isLeaf() {
        return true;
      }
    }
  }

  private class DeferringEventHandler extends SRepositoryContentAdapter {
    private boolean myDeferredUpdate = false;

    private DeferringEventHandler() {
    }

    @Override
    public void repositoryChanged() {
      if (CommandProcessorEx.getInstance().getCurrentCommand() != null) {
        myDeferredUpdate = true;
      } else {
        ModelAccess.instance().runReadInEDT(new Runnable() {
          @Override
          public void run() {
            myTree.rebuildNow();
          }
        });
      }
    }

    @Override
    public void commandFinished(SRepository repository) {
      super.commandFinished(repository);

      if (!myDeferredUpdate) return;

      myDeferredUpdate = false;
      ModelAccess.instance().runReadInEDT(new Runnable() {
        @Override
        public void run() {
          myTree.rebuildNow();
        }
      });
    }
  }
}
