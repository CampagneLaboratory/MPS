package jetbrains.mps.ide.ui.smodel;

import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.project.Project;
import com.intellij.ui.LayeredIcon;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.ide.projectPane.ProjectTreeFindHelper;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextMPSTreeNode;
import jetbrains.mps.smodel.*;
import jetbrains.mps.workbench.actions.goTo.GoToModelAction;
import jetbrains.mps.workbench.editors.MPSEditorOpener;

import javax.swing.Icon;

/**
 * Created by IntelliJ IDEA.
 * User: Ilya.Lintsbakh
 * Date: Jun 3, 2010
 * Time: 2:40:34 PM
 * To change this template use File | Settings | File Templates.
 */
public class SModelReferenceTreeNode extends MPSTreeNode {
  private SModelDescriptor myModelDescriptor;
  private Project myProject;

  public SModelReferenceTreeNode(SModelDescriptor modelDescriptor, IOperationContext operationContext) {
    super(operationContext);
    myProject = operationContext.getProject();
    myModelDescriptor = modelDescriptor;
    String name = modelDescriptor.getLongName();
    if (modelDescriptor.getStereotype().length() > 0) {
      name += "@" + modelDescriptor.getStereotype();
    }
    setNodeIdentifier(name);
    setAutoExpandable(true);
    Icon icon = Icons.MODEL_ICON;
    icon = new LayeredIcon(icon, Icons.REFERENCE_ICON);
    setIcon(icon);
  }

  public void doubleClick() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
         ProjectPane projectPane = ProjectPane.getInstance(myProject);
         projectPane.selectModel(myModelDescriptor);
      }
    });
  }
}
