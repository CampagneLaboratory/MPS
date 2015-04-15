/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.ide.messages.navigation;

import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.messages.NodeWithContext;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.mps.openapi.model.SNode;

class NodeWithContextNavigationHandler implements INavigationHandler<NodeWithContext> {
  @Override
  public boolean canNavigate(NodeWithContext object) {
    IOperationContext context = object.getContext();
    if (context == null) return false;

    return NodePointerNavigationHandler.isCorrectNode(object.getNode());
  }

  @Override
  public void navigate(NodeWithContext object, Project project, boolean focus, boolean select) {
    final jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(project);
    final SNode resolved = object.getNode().resolve(mpsProject.getRepository());
    if (resolved != null) {
      NavigationSupport.getInstance().openNode(mpsProject, resolved, focus, select);
    }
  }
}
