/*
 * Copyright 2003-2008 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.workbench.actions.goTo;

import com.intellij.ide.util.gotoByName.ChooseByNamePopup;
import com.intellij.ide.util.gotoByName.ChooseByNamePopupComponent;
import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.project.Project;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.choose.base.FakePsiContext;
import jetbrains.mps.workbench.choose.nodes.BaseNodeModel;
import jetbrains.mps.workbench.actions.goTo.index.MPSChooseSNodeDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;
import java.util.ArrayList;

public class GoToRootNodeAction extends BaseAction {

  private static boolean myUseCache = true;

  public GoToRootNodeAction() {
    super("Go To Root Node");
  }

  @NotNull
  protected String getKeyStroke() {
    return "ctrl N";
  }

  public void setUseCache(boolean useCache) {
    myUseCache = useCache;
  }

  public void doExecute(AnActionEvent e) {
    final Project project = e.getData(PlatformDataKeys.PROJECT);
    assert project != null;
    final MPSProject mpsProject = project.getComponent(MPSProjectHolder.class).getMPSProject();

    //FeatureUsageTracker.getInstance().triggerFeatureUsed("navigation.popup.class");
    //PsiDocumentManager.getInstance(project).commitAllDocuments();

    ChooseByNamePopup popup;

    if (!myUseCache) {
      BaseNodeModel baseNodeModel = new BaseNodeModel(mpsProject) {
        public SNode[] find(IScope scope) {
          final List<SNode> nodes = new ArrayList<SNode>();
          List<SModelDescriptor> modelDescriptors = scope.getModelDescriptors();
          for (SModelDescriptor modelDescriptor : modelDescriptors) {
            if (!SModelStereotype.isUserModel(modelDescriptor)) continue;

            for (SNode node : modelDescriptor.getSModel().getRoots()) {
              nodes.add(node);
            }
          }
          return nodes.toArray(new SNode[0]);
        }

        @Nullable
        public String getPromptText() {
          //return IdeBundle.message("prompt.gotoclass.enter.class.name");
          return "Node name:";
        }
      };
      popup = ChooseByNamePopup.createPopup(project, baseNodeModel, new FakePsiContext());
    } else {
      MPSChooseSNodeDescriptor chooseSNodeResult = new MPSChooseSNodeDescriptor(mpsProject);
      popup = ChooseByNamePopup.createPopup(project, chooseSNodeResult, new FakePsiContext());
    }

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
