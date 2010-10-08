/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.choose.base.FakePsiContext;
import jetbrains.mps.workbench.choose.nodes.BaseNodeModel;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

public class GoToConceptNodeAction extends BaseAction {
  public GoToConceptNodeAction() {
    super("Go To Concept");
  }

  @NotNull
  protected String getKeyStroke() {
    return "ctrl alt shift C";
  }

  public void doExecute(AnActionEvent e) {
    final Project project = e.getData(PlatformDataKeys.PROJECT);
    assert project != null;

    //FeatureUsageTracker.getInstance().triggerFeatureUsed("navigation.popup.class");
    //PsiDocumentManager.getInstance(project).commitAllDocuments();

    BaseNodeModel baseNodeModel = new BaseNodeModel(project, "concept") {
      public SNode[] find(IScope scope) {
        final List<SNode> nodes = new ArrayList<SNode>();
        for (Language l : scope.getVisibleLanguages()) {
          for (SNode node : l.getStructureModelDescriptor().getSModel().roots()) {
            nodes.add(node);
          }
        }
        return nodes.toArray(new SNode[0]);
      }
    };
    ChooseByNamePopup popup = ChooseByNamePopup.createPopup(project, baseNodeModel, new FakePsiContext());

    popup.invoke(new ChooseByNamePopupComponent.Callback() {
      public void onClose() {
      }

      public void elementChosen(Object element) {
        ((NavigationItem) element).navigate(true);
      }
    }, ModalityState.current(), true);
  }
}
