package jetbrains.mps.workbench.actions.goTo.actions;

import com.intellij.ide.util.gotoByName.ChooseByNamePopup;
import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent;
import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import com.intellij.psi.impl.FakePsiElement;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.workbench.actions.goTo.framework.nodes.GoToNodeModel;

import java.util.ArrayList;
import java.util.List;

public class GoToConceptNodeAction extends AnAction {
  public void actionPerformed(AnActionEvent e) {
    final Project project = e.getData(PlatformDataKeys.PROJECT);
    assert project != null;
    final MPSProject mpsProject = project.getComponent(MPSProjectHolder.class).getMPSProject();

    //FeatureUsageTracker.getInstance().triggerFeatureUsed("navigation.popup.class");
    //PsiDocumentManager.getInstance(project).commitAllDocuments();

    FakePsiElement fakePsiContext = new FakePsiElement() {
      public PsiElement getParent() {
        return null;
      }
    };

    GoToNodeModel goToNodeModel = new GoToNodeModel(mpsProject) {
      public SNode[] find(IScope scope) {
        final List<SNode> nodes = new ArrayList<SNode>();
        for (Language l : scope.getVisibleLanguages()) {
          for (SNode node : l.getStructureModelDescriptor().getSModel().getRoots()) {
            nodes.add(node);
          }
        }
        return nodes.toArray(new SNode[0]);

      }
    };
    ChooseByNamePopup popup = ChooseByNamePopup.createPopup(project, goToNodeModel, fakePsiContext);

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
        //if (GoToRootNodeAction.class.equals(myInAction)) myInAction = null;
      }

      public void elementChosen(Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }
}