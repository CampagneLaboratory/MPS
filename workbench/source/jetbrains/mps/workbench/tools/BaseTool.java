package jetbrains.mps.workbench.tools;

import com.intellij.ide.actions.ActivateToolWindowAction;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import com.intellij.openapi.keymap.KeymapManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.ui.content.Content;
import com.intellij.ui.content.ContentFactoryImpl;
import com.intellij.ui.content.ContentManager;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.KeyStroke;
import javax.swing.SwingUtilities;

public abstract class BaseTool {
  private static Logger LOG = Logger.getLogger(BaseTool.class);

  private Project myProject;
  private String myId;
  private int myNumber;
  private Icon myIcon;
  private ToolWindowAnchor myAnchor;
  private boolean myCanCloseContent;
  private boolean myIsRegistered;

  public BaseTool(Project project, String id, int number, Icon icon, ToolWindowAnchor anchor, boolean canCloseContent) {
    myAnchor = anchor;
    myNumber = number;
    myId = id;
    myIcon = icon;
    myCanCloseContent = canCloseContent;
    myProject = project;
    myIsRegistered = false;
  }

  public String getId() {
    return myId;
  }

  public int getNumber() {
    return myNumber;
  }

  public Icon getIcon() {
    return myIcon;
  }

  synchronized private boolean isRegistered() {
    return myIsRegistered;
  }

  synchronized private void setIsRegistered(boolean isRegistered) {
    myIsRegistered = isRegistered;
  }

  public boolean toolIsOpened() {
    LOG.checkEDT();
    return getToolWindow().isVisible();
  }

  /**
   * Opens the tool's window, shows tool if invisible at the moment
   */
  public void openToolLater(final boolean setActive) {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        openTool(setActive);
      }
    });
  }

  public void openTool(boolean setActive) {
    ToolWindow window = getToolWindow();
    if (!isShown()) makeAvailableLater();
    if (!toolIsOpened()) window.show(null);
    if (setActive) window.activate(null);
  }

  /**
   * Minimizes the window, doesn't remove tool from panel
   */
  public void closeLater() {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        close();
      }
    });
  }

  public void close() {
    if (isShown() && toolIsOpened()) getToolWindow().hide(null);
  }

  /**
   * @return whether the tool is visible by user (in the panel)
   */
  public boolean isShown() {
    LOG.checkEDT();
    return getToolWindow().isAvailable();
  }

  /**
   * If the tool is visible, does nothing, else show the tool in panel in minimized state
   */
  public void makeAvailableLater() {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        makeAvailable();
      }
    });
  }

  public void makeAvailable() {
    if (!isShown()) getToolWindow().setAvailable(true, null);
  }

  /**
   * Removes the tool from the panel
   */
  public void makeUnavailableLater() {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        makeUnavailable();
      }
    });
  }

  public void makeUnavailable() {
    if (isShown()) getToolWindow().setAvailable(false, null);
  }

  @NotNull
  public ToolWindow getToolWindow() {
    LOG.checkEDT();

    if (!isRegistered()) register();
    return ToolWindowManager.getInstance(myProject).getToolWindow(myId);
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return getClass().getName();
  }

  public void registerLater() {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        register();
      }
    });
  }

  public void register() {
    if (isRegistered()) return;
    setIsRegistered(true);

    if (myNumber != -1) {
      KeymapManager.getInstance().getActiveKeymap().addShortcut(
        ActivateToolWindowAction.getActionIdForToolWindow(myId),
        new KeyboardShortcut(KeyStroke.getKeyStroke("alt " + myNumber), null)
      );
    }

    ToolWindow toolWindow = ToolWindowManager.getInstance(myProject).registerToolWindow(myId, myCanCloseContent, myAnchor);
    toolWindow.setIcon(myIcon);
    toolWindow.setToHideOnEmptyContent(true);
    toolWindow.installWatcher(toolWindow.getContentManager());

    if (getComponent() != null) {
      addContent(getComponent(), null, false);
    }
  }

  public void unregisterLater() {
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        unregister();
      }
    });
  }

  public void unregister() {
    if (!isRegistered()) return;

    if (myNumber != -1) {
      KeymapManager.getInstance().getActiveKeymap().removeAllActionShortcuts(ActivateToolWindowAction.getActionIdForToolWindow(myId));
    }

    ToolWindow toolWindow = getToolWindow();
    ContentManager contentManager = toolWindow.getContentManager();
    if (contentManager != null && !contentManager.isDisposed()) {
      contentManager.removeAllContents(true);
    }

    ToolWindowManager.getInstance(myProject).unregisterToolWindow(myId);
  }

  public JComponent getComponent() {
    return null;
  }

  protected Content addContent(JComponent component, String name, boolean isLockable) {
    Content content = new ContentFactoryImpl().createContent(component, name, isLockable);
    ContentManager contentManager = getContentManager();
    contentManager.addContent(content);
    return content;
  }

  protected ContentManager getContentManager() {
    if (!isRegistered()) register();
    return getToolWindow().getContentManager();
  }

  protected Project getProject() {
    return myProject;
  }

  @Deprecated
  protected MPSProject getMPSProject() {
    return myProject.getComponent(MPSProjectHolder.class).getMPSProject();
  }
}
