/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.refactoring;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.ui.content.ContentManager;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.workbench.tools.BaseProjectTool;
import org.jetbrains.annotations.NotNull;

import javax.swing.JLabel;
import javax.swing.SwingUtilities;
import java.util.List;
import java.util.ArrayList;

public class NewRefactoringView extends BaseProjectTool {
  private List<RefactoringViewItem> myRefactoringViewItems = new ArrayList<RefactoringViewItem>();

  protected NewRefactoringView(Project project) {
    super(project, "RefactoringView", -1, Icons.DEFAULT_ICON, ToolWindowAnchor.BOTTOM, true);
  }

  public void initComponent() {
    super.initComponent();
    StartupManager.getInstance(getProject()).registerPostStartupActivity(new Runnable() {
      public void run() {
        SwingUtilities.invokeLater(new Runnable() {
          public void run() {
            getToolWindow().installWatcher(getContentManager());
          }
        });
      }
    });
  }

  public void showRefactoringView(@NotNull RefactoringViewAction refactoringViewAction,
                                  SearchResults searchResults) {
    RefactoringViewItem refactoringViewItem = new RefactoringViewItem(refactoringViewAction, searchResults, this);
    myRefactoringViewItems.add(refactoringViewItem);
    addContent(refactoringViewItem.getComponent(), "refactoring", null, false);
    refactoringViewItem.initUsagesView();
    openTool(true);
  }

  void closeRefactoringView(final RefactoringViewItem refactoringViewItem) {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        ContentManager manager = getContentManager();
        manager.removeContent(manager.getContent(refactoringViewItem.getComponent()), true);
        myRefactoringViewItems.remove(refactoringViewItem);
        if (myRefactoringViewItems.isEmpty()) {
          close();
        }
      }
    });
  }
}
