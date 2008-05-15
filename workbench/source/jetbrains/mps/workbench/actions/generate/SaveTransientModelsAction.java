package jetbrains.mps.workbench.actions.generate;

import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.ToggleAction;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.project.Project;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.ide.IdeSettings;

public class SaveTransientModelsAction extends ToggleAction {
  public SaveTransientModelsAction() {
  }

  public boolean isSelected(AnActionEvent e) {
    Project project = e.getData(PlatformDataKeys.PROJECT);
    if (project == null) {
      return false;
    }
    MPSProject mpsProject = project.getComponent(MPSProjectHolder.class).getMPSProject();
    return mpsProject.getComponentSafe(GeneratorManager.class).isSaveTransientModels();
  }

  public void update(AnActionEvent e) {
    e.getPresentation().setVisible(e.getData(PlatformDataKeys.PROJECT) != null);
  }

  public void setSelected(AnActionEvent e, boolean state) {
    Project project = e.getData(PlatformDataKeys.PROJECT);
    assert project != null;
    MPSProject mpsProject = project.getComponent(MPSProjectHolder.class).getMPSProject();
    mpsProject.getComponentSafe(GeneratorManager.class).setSaveTransientModels(state);
  }
}
