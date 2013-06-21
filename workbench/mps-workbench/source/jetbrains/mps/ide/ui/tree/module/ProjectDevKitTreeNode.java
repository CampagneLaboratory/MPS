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
package jetbrains.mps.ide.ui.tree.module;

import com.intellij.openapi.actionSystem.ActionGroup;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.projectPane.*;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.project.*;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.action.ActionUtils;


public class ProjectDevKitTreeNode extends ProjectModuleTreeNode {
  private DevKit myDevKit;
  private boolean myShortNameOnly;
  private boolean myInitialized;

  protected ProjectDevKitTreeNode(DevKit devkit, Project project, boolean shortNameOnly) {
    super(new ModuleContext(devkit, project));
    myShortNameOnly = shortNameOnly;
    myDevKit = devkit;

    setNodeIdentifier(calculateNodeIdentifier());
    setIcon(IdeIcons.DEVKIT_ICON);
  }

  @Override
  public DevKit getModule() {
    return myDevKit;
  }

  public DevKit getDevKit() {
    return myDevKit;
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  @Override
  public void init() {
    populate();
    myInitialized = true;
  }

  public String calculateNodeIdentifier() {
    IFile descriptorFile = myDevKit.getDescriptorFile();
    assert descriptorFile != null;
    return descriptorFile.getPath();
  }

  @Override
  public ActionGroup getActionGroup() {
    return ActionUtils.getGroup(ProjectPaneActionGroups.PROJECT_PANE_DEVKIT_ACTIONS);
  }

  @Override
  public String getModuleText() {
    String name = myDevKit.getModuleDescriptor().getNamespace();

    if (myShortNameOnly) {
      name = NameUtil.shortNameFromLongName(name);
    }

    if (name != null) {
      return name;
    }
    return "devKit";
  }

  private void populate() {
    Project project = getOperationContext().getProject();

    TextTreeNode extendedDevkits = new TextTreeNode("extended devkits");
    for (DevKit d : myDevKit.getExtendedDevKits()) {
      extendedDevkits.add(ProjectModuleTreeNode.createFor(project, d));
    }
    add(extendedDevkits);

    TextTreeNode exportedLangs = new TextTreeNode("exported languages");
    for (Language l : myDevKit.getExportedLanguages()) {
      exportedLangs.add(ProjectModuleTreeNode.createFor(project, l));
    }
    add(exportedLangs);

    TextTreeNode exportedSolutions = new TextTreeNode("exported solutions");
    for (Solution s : myDevKit.getExportedSolutions()) {
      exportedSolutions.add(ProjectModuleTreeNode.createFor(project, s));
    }
    add(exportedSolutions);
  }
}
