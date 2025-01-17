package jetbrains.mps.ide.migration.wizard;

/*Generated by MPS */

import com.intellij.ide.wizard.AbstractWizardStepEx;
import javax.swing.Icon;
import jetbrains.mps.icons.MPSIcons;
import com.intellij.openapi.project.Project;
import javax.swing.JComponent;
import org.jetbrains.annotations.NotNull;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ide.wizard.CommitStepException;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

public abstract class MigrationWizardStep extends AbstractWizardStepEx {
  private static final Icon WIZARD_ICON = MPSIcons.General.NewProject;
  protected Project myProject;
  private JComponent myComponent;
  private String myId;
  public MigrationWizardStep(Project project, String title, String id) {
    super(title);
    myProject = project;
    myId = id;
  }
  @NotNull
  @Override
  public Object getStepId() {
    return myId;
  }
  @Override
  public Icon getIcon() {
    return WIZARD_ICON;
  }
  @Override
  public JComponent getComponent() {
    if (myComponent == null) {
      this.myComponent = new JPanel(new BorderLayout());
      myComponent.setBorder(IdeBorderFactory.createEmptyBorder(0, 10, 0, 10));
      doCreateComponent(myComponent);
    }

    return myComponent;
  }
  @Override
  public JComponent getPreferredFocusedComponent() {
    return null;
  }
  @Override
  public void commit(AbstractWizardStepEx.CommitType commitType) throws CommitStepException {
  }
  @Override
  public boolean isComplete() {
    return true;
  }
  public boolean canBeCancelled() {
    return true;
  }
  public void autostart(_FunctionTypes._void_P0_E0 later) {
    later.invoke();
  }
  protected abstract void doCreateComponent(JComponent mainPanel);
}
