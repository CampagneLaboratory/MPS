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
package jetbrains.mps.ide.projectPane.favorites.root;

import jetbrains.mps.ide.ui.tree.module.ProjectModuleTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.Project;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Computable;

import java.util.ArrayList;
import java.util.List;

class ModuleFavoritesRoot extends FavoritesRoot<SModuleReference> {
  public ModuleFavoritesRoot(SModuleReference value) {
    super(value);
  }

  @Override
  public MPSTreeNode getTreeNode(IOperationContext context) {
    SModule module = ModuleRepositoryFacade.getInstance().getModule(getValue());
    if (module == null) return null;
    Project mpsProject = context.getProject();
    if (mpsProject == null) return null;
    ProjectModuleTreeNode moduleTreeNode = ProjectModuleTreeNode.createFor(mpsProject, module);
    return moduleTreeNode;
  }

  @Override
  public List<SNode> getAvaliableNodes() {
    List<SNode> result = new ArrayList<SNode>();
    SModule module = ModuleRepositoryFacade.getInstance().getModule(getValue());
    if (module == null) return result;
    for (final SModel md : module.getModels()) {
      SModel model = ModelAccess.instance().runReadAction(new Computable<SModel>() {
        @Override
        public SModel compute() {
          return md;
        }
      });
      if (model == null) continue;

      for (SNode node : model.getRootNodes()) {
        result.add(node);
      }
    }
    return result;
  }
}
