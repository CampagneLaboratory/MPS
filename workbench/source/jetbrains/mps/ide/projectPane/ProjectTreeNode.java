/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.ide.projectPane;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.ui.ErrorState;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.workbench.action.ActionUtils;

import java.awt.Font;

class ProjectTreeNode extends MPSTreeNode {
  private MPSProject myProject;

  ProjectTreeNode(MPSProject project) {
    super(ProjectOperationContext.get(project.getProject()));

    myProject = project;

    setIcon(Icons.PROJECT_ICON);
    setNodeIdentifier("Project");
    updatePresentation();
  }

  protected void doUpdatePresentation() {
    super.doUpdatePresentation();
    Project ideaProject = myProject.getProject();
    setText(ideaProject.getName());
    setFontStyle(Font.BOLD);
    setErrorState(myProject.getErrors() != null ? ErrorState.ERROR : ErrorState.NONE);
    if (ideaProject.getBaseDir() != null) {
      //noinspection ConstantConditions
      setAdditionalText(ideaProject .getBaseDir().getPresentableUrl());
    }
    setTooltipText(myProject.getErrors());
  }

  protected ActionGroup getQuickCreateGroup(boolean plain) {
    return ActionUtils.getGroup(ProjectPaneActionGroups.PROJECT_NEW_ACTIONS);
  }

  public ActionGroup getActionGroup() {
    return ActionUtils.getGroup(ProjectPaneActionGroups.PROJECT_PANE_PROJECT_ACTIONS);
  }

  @Override
  public int getToggleClickCount() {
    return -1;
  }
}
