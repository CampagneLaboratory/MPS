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
package jetbrains.mps.ide.projectPane;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.*;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.generator.IGenerationType;
import jetbrains.mps.ide.actions.NewModel_Action;
import jetbrains.mps.ide.actions.NewSolution_Action;
import jetbrains.mps.ide.actions.NewLanguage_Action;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.NamespaceTreeBuilder.NamespaceNodeBuilder;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.DefaultSModelDescriptor;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.workbench.action.ActionEventData;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.action.ActionFactory;
import jetbrains.mps.workbench.MPSDataKeys;

import javax.swing.JOptionPane;
import javax.swing.tree.TreeNode;
import java.awt.Frame;
import java.util.ArrayList;
import java.util.List;

public final class NamespaceTextNode extends TextTreeNode {
  private static final NamespaceNodeBuilder<NamespaceTextNode> BUILDER = new NamespaceNodeBuilder<NamespaceTextNode>() {
    public NamespaceTextNode createNamespaceNode(String text, IOperationContext context) {
      return new NamespaceTextNode(text, context);
    }

    public String getName(NamespaceTextNode node) {
      return node.getName();
    }

    public void setName(NamespaceTextNode node, String name) {
      node.setName(name);
    }

    public boolean isNamespaceNode(MPSTreeNode n) {
      return n instanceof NamespaceTextNode;      
    }
  };

  public static NamespaceNodeBuilder<NamespaceTextNode> getBuilder() {
    return BUILDER;
  }

  private String myName;

  public NamespaceTextNode(String name, IOperationContext context) {
    super(name, context);
    setName(name);
  }

  public void setName(String newName) {
    myName = newName;
    setText(newName);
  }

  protected boolean canBeOpened() {
    return false;
  }

  public ActionGroup getActionGroup() {
    return ActionUtils.getGroup(ProjectPane.PROJECT_PANE_NAMESPACE_ACTIONS);
  }

  public DefaultActionGroup createNewGroup() {
    boolean hasModulesUnder = hasModulesUnder();
    boolean hasModelsUnder = hasModelsUnder();

    if (!hasModelsUnder && !hasModulesUnder) return null;

    DefaultActionGroup newGroup = new DefaultActionGroup("New", true);

    if (hasModulesUnder) {
      newGroup.add(ActionFactory.getInstance().acquireRegisteredAction(NewSolution_Action.class.getName(),"jetbrains.mps.ide",myName));
      newGroup.add(ActionFactory.getInstance().acquireRegisteredAction(NewLanguage_Action.class.getName(),"jetbrains.mps.ide",myName));
    }
    if (hasModelsUnder && hasModulesUnder) {
      newGroup.addSeparator();
    }
    if (hasModelsUnder) {
      newGroup.add(new NewModel_Action() {
        protected String getNamespace() {
          return myName;
        }
      });
    }
    return newGroup;
  }

  public List<SModelDescriptor> getModelsUnder() {
    List<SModelDescriptor> models = new ArrayList<SModelDescriptor>();
    for (MPSTreeNode child : this) {
      if (child instanceof SModelTreeNode) {
        models.add(((SModelTreeNode) child).getSModelDescriptor());
      } else if (child instanceof NamespaceTextNode){
        models.addAll(((NamespaceTextNode) child).getModelsUnder());
      }
    }

    return models;
  }

  public boolean hasModelsUnder() {
    return getModelsUnder().size() > 0;
  }

  public List<IModule> getModulesUnder() {
    List<IModule> modules = new ArrayList<IModule>();
    for (MPSTreeNode child : this) {
      if (child instanceof ProjectModuleTreeNode) {
        modules.add(((ProjectModuleTreeNode) child).getModule());
      } else if (child instanceof NamespaceTextNode){
        modules.addAll(((NamespaceTextNode)child).getModulesUnder());
      }
    }
    return modules;
  }

  public boolean hasModulesUnder() {
    return getModulesUnder().size() > 0;
  }

  public String getName() {
    return myName;
  }
}
