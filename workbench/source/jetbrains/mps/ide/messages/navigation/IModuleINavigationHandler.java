package jetbrains.mps.ide.messages.navigation;

import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.project.IModule;

public class IModuleINavigationHandler implements INavigationHandler<IModule> {
  public void navigate(Project project, IModule object, boolean focus, boolean select) {
    ProjectPane projectPane = ProjectPane.getInstance(project);
    if (focus) {
      projectPane.selectModuleAndFocus(object);
    } else {
      projectPane.selectModule(object);
    }
  }
}
