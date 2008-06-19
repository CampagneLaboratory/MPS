package jetbrains.mps.ide.projectPane;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.Presentation;
import jetbrains.mps.ide.action.ActionContext;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.project.*;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.action.ActionUtils;

import javax.swing.JPopupMenu;


class ProjectDevKitTreeNode extends ProjectModuleTreeNode {
  private DevKit myDevKit;
  private boolean myShortNameOnly;

  public ProjectDevKitTreeNode(DevKit devkit, MPSProject project) {
    this(devkit, project, false);
  }

  public ProjectDevKitTreeNode(DevKit devkit, MPSProject project, boolean shortNameOnly) {
    super(new ModuleContext(devkit, project));
    myShortNameOnly = shortNameOnly;
    myDevKit = devkit;

    updatePresentation();
    populate();
  }

  protected void updatePresentation() {
    super.updatePresentation();
    setIcon(Icons.DEVKIT_ICON);
    setNodeIdentifier(calculateNodeIdentifier());
  }

  public IModule getModule() {
    return myDevKit;
  }

  public DevKit getDevKit() {
    return myDevKit;
  }

  public String calculateNodeIdentifier() {
    IFile descriptorFile = myDevKit.getDescriptorFile();
    assert descriptorFile != null;
    return descriptorFile.getAbsolutePath();
  }

  public JPopupMenu getPopupMenu() {
    ActionGroup g = ActionUtils.getGroup(ProjectPane.PROJECT_PANE_DEVKIT_ACTIONS);
    return ActionManager.getInstance().createActionPopupMenu(ActionPlaces.UNKNOWN, g).getComponent();
  }

  protected String getModulePresentation() {
    String name = myDevKit.getModuleDescriptor().getName();

    if (myShortNameOnly) {
      name = NameUtil.shortNameFromLongName(name);
    }

    if (name != null) {
      return name;
    }
    return "devKit";
  }

  private void populate() {
    TextTreeNode extendedDevkits = new TextTreeNode("extended devkits");
    for (DevKit d : myDevKit.getExtendedDevKits()) {
      extendedDevkits.add(ProjectModuleTreeNode.createFor(getOperationContext().getMPSProject(), d));
    }
    add(extendedDevkits);

    TextTreeNode exportedLangs = new TextTreeNode("exported languages");
    for (Language l : myDevKit.getExportedLanguages()) {
      exportedLangs.add(ProjectModuleTreeNode.createFor(getOperationContext().getMPSProject(), l));
    }
    add(exportedLangs);

    TextTreeNode exportedSolutions = new TextTreeNode("exported solutions");
    for (Solution s : myDevKit.getExportedSolutions()) {
      exportedSolutions.add(ProjectModuleTreeNode.createFor(getOperationContext().getMPSProject(), s));
    }
    add(exportedSolutions);
  }
}
