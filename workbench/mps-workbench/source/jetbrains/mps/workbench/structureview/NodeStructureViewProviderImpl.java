/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.workbench.structureview;

import com.intellij.ide.structureView.StructureViewBuilder;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.extensions.Extensions;
import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.editor.NodeStructureViewProvider;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.plugins.projectplugins.ProjectPluginManager;
import jetbrains.mps.plugins.relations.RelationDescriptor;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.List;

public class NodeStructureViewProviderImpl implements ApplicationComponent, NodeStructureViewProvider {

  public NodeStructureViewProviderImpl() {
  }

  public StructureViewBuilder create(Project project, SNodeReference np) {
    final jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(project);
    mpsProject.getModelAccess().checkReadAccess();

    List<RelationDescriptor> tabs = project.getComponent(ProjectPluginManager.class).getTabDescriptors();
    SNode node = np.resolve(mpsProject.getRepository());

    for (RelationDescriptor tab : tabs) {
      SNode baseNode = tab.getBaseNode(node);
      if (baseNode != null && baseNode.getName() != null) {
        return new NodeStructureViewBuilder(project, baseNode.getReference());
      }
    }

    for (RelationDescriptor tab : tabs) {
      List<SNode> nodes = tab.getNodes(node);
      if (!nodes.isEmpty()) {
        return new NodeStructureViewBuilder(project, new jetbrains.mps.smodel.SNodePointer(node));
      }
    }

    return null;
  }

  @Override
  public StructureViewBuilder getStructureViewBuilder(@NotNull MPSNodeVirtualFile file, @NotNull Project project) {
    SNodeReference nodePointer = file.getSNodePointer();
    return create(project, nodePointer);
  }

  @Override
  public void initComponent() {
    // TODO move to plugin.xml
    Extensions.getArea(null).getExtensionPoint(NodeStructureViewProvider.EP_NODE_STRUCTURE_VIEW_PROVIDER).registerExtension(this);
  }

  @Override
  public void disposeComponent() {
    Extensions.getArea(null).getExtensionPoint(NodeStructureViewProvider.EP_NODE_STRUCTURE_VIEW_PROVIDER).unregisterExtension(this);
  }

  @Override
  @NotNull
  public String getComponentName() {
    return NodeStructureViewProviderImpl.class.getName();
  }
}
