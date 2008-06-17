package jetbrains.mps.plugins.actions;

import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.action.IActionGroupElementOwner;
import jetbrains.mps.ide.action.MPSActionGroup;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.workbench.action.BaseGroup;

public abstract class BaseActionGroup extends MPSActionGroup implements IActionGroupElementOwner {
  private MPSProject myProject = null;

  public BaseActionGroup(String name, String id, MPSProject project) {
    super(name, id);
    myProject = project;
  }

  public MPSProject getProject() {
    return myProject;
  }


  protected BaseGroup getGroup(String id) {
    MPSActionGroup group = (MPSActionGroup) ActionManager.getInstance().getAction(id);
    if (group != null) return group;
    return getProject().getPluginManager().getGroup(id);
  }


  protected void doUpdate(ActionContext context) {
  }

  public void update(AnActionEvent e) {
    if (!checkProject(e)) return;
    super.update(e);
  }

  protected boolean checkProject(AnActionEvent e) {
    if (myProject != null) {
      if (myProject != createContext(e).get(MPSProject.class)) {
        e.getPresentation().setVisible(false);
        return false;
      }
      return true;
    }
    return true;
  }

  public void adjust(IActionGroupElementOwner owner){}
}
