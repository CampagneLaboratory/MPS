package jetbrains.mps.ide.projectPane;

import com.intellij.openapi.project.Project;
import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Language;

import javax.swing.tree.TreeSelectionModel;
import java.util.ArrayList;
import java.util.List;

public class ProjectTree extends MPSTree {
  private Project myProject;
  private ProjectModulesPoolTreeNode myModulesPoolTreeNode;

  public ProjectTree(Project project) {
    myProject = project;

    getSelectionModel().setSelectionMode(TreeSelectionModel.DISCONTIGUOUS_TREE_SELECTION);
    scrollsOnExpand = false;
  }

  protected MPSTreeNode rebuild() {
    if (myProject == null || myProject.isDisposed()) {
      return new TextTreeNode("Empty");
    }

    MPSProject project = myProject.getComponent(MPSProject.class);
    ProjectTreeNode root = new ProjectTreeNode(project);

    List<MPSTreeNode> moduleNodes = new ArrayList<MPSTreeNode>();

    List<Solution> solutions = project.getProjectSolutions();
    for (Solution solution : solutions) {
      ProjectSolutionTreeNode solutionTreeNode = new ProjectSolutionTreeNode(solution, project);
      moduleNodes.add(solutionTreeNode);
    }

    List<Language> languages = project.getProjectLanguages();
    for (Language language : languages) {
      ProjectLanguageTreeNode node = new ProjectLanguageTreeNode(language, project);
      moduleNodes.add(node);
    }

    List<DevKit> devkits = project.getProjectDevKits();
    for (DevKit devKit : devkits) {
      ProjectDevKitTreeNode node = new ProjectDevKitTreeNode(devKit, project);
      moduleNodes.add(node);
    }

    ModulesNamespaceTreeBuilder builder = new ModulesNamespaceTreeBuilder(project);
    for (MPSTreeNode mtn : moduleNodes) {
      builder.addNode(mtn);
    }
    builder.fillNode(root);

    myModulesPoolTreeNode = new ProjectModulesPoolTreeNode(project);
    root.add(myModulesPoolTreeNode);

    if (myProject.getComponent(TransientModelsModule.class).getOwnModelDescriptors().size() != 0) {
      TransientModelsTreeNode transientModelsNode = new TransientModelsTreeNode(myProject);
      root.add(transientModelsNode);
    }
    return root;
  }

  public ProjectModulesPoolTreeNode getModulesPoolNode(){
    return myModulesPoolTreeNode;
  }

  public Project getProject() {
    return myProject;
  }

  private class ModulesNamespaceTreeBuilder extends DefaultNamespaceTreeBuilder {
    private MPSProject myProject;

    protected ModulesNamespaceTreeBuilder(MPSProject project) {
      myProject = project;
    }

    protected String getNamespace(MPSTreeNode node) {
      String folder = null;

      if (node instanceof ProjectModuleTreeNode) {
        ProjectModuleTreeNode pmtn = (ProjectModuleTreeNode) node;
        folder = myProject.getFolderFor(pmtn.getModule());
      }

      if (folder != null) {
        return folder;
      }

      return "";
    }
  }
}
