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
package jetbrains.mps.ide.ui.smodel;

import com.intellij.icons.AllIcons.Nodes;
import com.intellij.ui.LayeredIcon;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.mps.openapi.model.SModel;

import javax.swing.Icon;

public class SModelReferenceTreeNode extends MPSTreeNode {
  private SModel myModelDescriptor;
  private Project myProject;

  public SModelReferenceTreeNode(SModel modelDescriptor, IOperationContext operationContext) {
    super(operationContext);
    myProject = operationContext.getProject();
    myModelDescriptor = modelDescriptor;
    String name = SNodeOperations.getModelLongName(modelDescriptor);
    if (SModelStereotype.getStereotype(modelDescriptor).length() > 0) {
      name += "@" + SModelStereotype.getStereotype(modelDescriptor);
    }
    setUserObject(name);
    setNodeIdentifier(name);
    setAutoExpandable(true);
    Icon icon = Icons.MODEL_ICON;
    icon = new LayeredIcon(icon, Nodes.Symlink);
    setIcon(icon);
  }

  @Override
  public void doubleClick() {
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        NavigationSupport.getInstance().selectInTree(new ProjectOperationContext(myProject), myModelDescriptor, false);
      }
    });
  }

  @Override
  public boolean isLeaf() {
    return true;
  }
}
