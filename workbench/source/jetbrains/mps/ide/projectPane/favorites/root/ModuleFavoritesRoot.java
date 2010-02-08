package jetbrains.mps.ide.projectPane.favorites.root;

import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.ide.projectPane.ProjectModuleTreeNode;
import jetbrains.mps.ide.projectPane.SModelsSubtree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.*;

import java.util.List;
import java.util.ArrayList;

import com.intellij.openapi.util.Computable;

class ModuleFavoritesRoot extends FavoritesRoot<ModuleReference> {
  public ModuleFavoritesRoot(ModuleReference value) {
    super(value);
  }

  public MPSTreeNode getTreeNode(IOperationContext context) {
    IModule module = MPSModuleRepository.getInstance().getModule(getValue());
    if (module == null) return null;
    MPSProject mpsProject = context.getProject().getComponent(MPSProjectHolder.class).getMPSProject();
    if (mpsProject == null) return null;
    ProjectModuleTreeNode moduleTreeNode = ProjectModuleTreeNode.createFor(mpsProject, module);
    return moduleTreeNode;
  }

  public List<SNode> getAvaliableNodes() {
    List<SNode> result = new ArrayList<SNode>();
    IModule module = MPSModuleRepository.getInstance().getModule(getValue());
    if (module == null) return result;
    for (final SModelDescriptor md : module.getOwnModelDescriptors()) {
      SModel model = ModelAccess.instance().runReadAction(new Computable<SModel>() {
        public SModel compute() {
          return md.getSModel();
        }
      });
      if (model == null) continue;
      result.addAll(model.getRoots());
    }
    return result;
  }
}
