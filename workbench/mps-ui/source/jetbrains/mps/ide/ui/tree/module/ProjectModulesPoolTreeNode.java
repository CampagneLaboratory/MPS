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

import jetbrains.mps.FilteredGlobalScope;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.project.DevKit;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.ProjectStructureModule;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.NameUtil;

import java.util.List;

public class ProjectModulesPoolTreeNode extends TextTreeNode {
  private MPSProject myProject;
  private boolean myInitialized;

  public ProjectModulesPoolTreeNode(MPSProject project) {
    super("Modules Pool");
    myProject = project;

    setIcon(IdeIcons.MODULE_GROUP_CLOSED, false);
    setIcon(IdeIcons.MODULE_GROUP_OPENED, true);
  }

  @Override
  public boolean isLoadingEnabled() {
    return true;
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  @Override
  protected boolean propogateErrorUpwards() {
    return false;
  }

  @Override
  protected void doInit() {
    populate();
    myInitialized = true;
  }

  private void populate() {
    List<SModule> modules = (List<SModule>) new FilteredGlobalScope().getModules();
    {
      ModulePoolNamespaceBuilder builder = new ModulePoolNamespaceBuilder();
      TextTreeNode solutions = new TextTreeNode("Solutions");
      for (SModule s : modules) {
        if (s instanceof Solution || s instanceof ProjectStructureModule) {
          builder.addNode(ProjectModuleTreeNode.createFor(myProject, s, true));
        }
      }
      builder.fillNode(solutions);
      add(solutions);
    }

    {
      ModulePoolNamespaceBuilder builder = new ModulePoolNamespaceBuilder();
      TextTreeNode languages = new TextTreeNode("Languages");
      for (Language l : CollectionUtil.filter(Language.class, modules)) {
        builder.addNode(ProjectModuleTreeNode.createFor(myProject, l, true));
      }
      builder.fillNode(languages);
      add(languages);
    }

    {
      ModulePoolNamespaceBuilder builder = new ModulePoolNamespaceBuilder();
      TextTreeNode devkits = new TextTreeNode("DevKits");
      for (DevKit devKit : CollectionUtil.filter(DevKit.class, modules)) {
        builder.addNode(ProjectModuleTreeNode.createFor(myProject, devKit, true));
      }
      builder.fillNode(devkits);
      add(devkits);
    }
  }

  private class ModulePoolNamespaceBuilder extends DefaultNamespaceTreeBuilder<ProjectModuleTreeNode> {
    @Override
    protected String getNamespace(ProjectModuleTreeNode node) {
      if (node.getModule() instanceof Generator) {
        Generator generator = (Generator) node.getModule();
        return NameUtil.namespaceFromLongName(generator.getSourceLanguage().getModuleName());
      }

      return NameUtil.namespaceFromLongName(node.getModule().getModuleName());
    }
  }
}
