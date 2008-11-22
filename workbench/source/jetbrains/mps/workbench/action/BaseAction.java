package jetbrains.mps.workbench.action;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.*;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.misc.hash.HashSet;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.MPSDataKeys;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.KeyStroke;
import java.util.Set;

public abstract class BaseAction extends AnAction {
  private boolean myIsAlwaysVisible = true;
  private boolean myExecuteOutsideCommand = false;
  private boolean myDisableOnNoProject = true;
  private Set<ActionPlace> myPlaces = new HashSet<ActionPlace>();

  public BaseAction() {
    this(null, null, null);
  }

  public BaseAction(String text) {
    this(text, null, null);
  }

  public BaseAction(String text, String description, Icon icon) {
    super(text, description, icon);
    updateShortcuts();
  }

  /**
   * Is caslled only by ancestors if getShortcut depends on constructor parameters
   */
  protected void updateShortcuts() {
    setShortcutSet(new ShortcutSet() {
      public Shortcut[] getShortcuts() {
        KeyStroke keyStroke = KeyStroke.getKeyStroke(getKeyStroke());
        if (keyStroke != null) {
          KeyboardShortcut keyboardShortcut = new KeyboardShortcut(keyStroke, null);
          return new Shortcut[]{keyboardShortcut};
        } else {
          return new Shortcut[0];
        }
      }
    });
  }

  public void setExecuteOutsideCommand(boolean executeOutsideCommand) {
    myExecuteOutsideCommand = executeOutsideCommand;
  }

  public void setIsAlwaysVisible(boolean isAlwaysVisible) {
    myIsAlwaysVisible = isAlwaysVisible;
  }

  public void setDisableOnNoProject(boolean disableOnNoProject) {
    myDisableOnNoProject = disableOnNoProject;
  }

  public void setMnemonic(char mnemonic) {
    String text = getTemplatePresentation().getText();
    int pos = text.indexOf(Character.toUpperCase(mnemonic));
    if (pos == -1) pos = text.indexOf(Character.toLowerCase(mnemonic));
    StringBuilder newText = new StringBuilder(text);
    newText.insert(pos, '_');
    getTemplatePresentation().setText(newText.toString());
  }

  public final void update(final AnActionEvent e) {
    super.update(e);
    ActionPlace place = MPSDataKeys.PLACE.getData(DataManager.getInstance().getDataContext());
    if (!myPlaces.contains(place)) {
      disable(e.getPresentation());
      return;
    }

    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        if (myDisableOnNoProject && e.getData(PlatformDataKeys.PROJECT) == null) {
          disable(e.getPresentation());
          return;
        }
        if (!collectActionData(e)) {
          disable(e.getPresentation());
          return;
        }
        doUpdate(e);
      }
    });
  }

  public final void actionPerformed(final AnActionEvent e) {
    final ModelAccess access = ModelAccess.instance();
    if (myExecuteOutsideCommand) {
      doExecute(e);
    } else {
      access.runWriteActionInCommand(new Runnable() {
        public void run() {
          doExecute(e);
        }
      });
    }
  }

  protected void disable(Presentation p) {
    p.setEnabled(false);
    p.setVisible(myIsAlwaysVisible);
  }

  protected void enable(Presentation p) {
    p.setEnabled(true);
    p.setVisible(true);
  }

  protected void setEnabledState(Presentation p, boolean state) {
    if (state) enable(p);
    else disable(p);
  }

  public void addPlace(ActionPlace place) {
    myPlaces.add(place);
  }

  /**
   * Collect action parameters HERE
   *
   * @param e
   * @return true if all action parameters collected, false otherwise
   */
  protected boolean collectActionData(AnActionEvent e) {
    return true;
  }

  /**
   * If the result depends on something, do not forget to call updateShortcuts
   *
   * @return
   */
  @NotNull
  protected String getKeyStroke() {
    return "";
  }

  protected void doUpdate(AnActionEvent e) {
    e.getPresentation().setVisible(true);
    e.getPresentation().setEnabled(true);
  }

  protected abstract void doExecute(AnActionEvent e);

  public static String getIdMethodName() {
    return "getActionId";
  }
}
