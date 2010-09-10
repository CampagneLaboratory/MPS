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
package jetbrains.mps.ide.refactoring;

import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataKey;
import jetbrains.mps.project.IModule;
import jetbrains.mps.refactoring.framework.*;
import jetbrains.mps.refactoring.framework.RefactoringUtil.Applicability;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.BaseAction;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;

public class GenericRefactoringAction extends BaseAction {
  private IRefactoring myRefactoring;

  public GenericRefactoringAction(IRefactoring refactoring) {
    super("".equals(refactoring.getUserFriendlyName()) ? refactoring.getClass().getName() : refactoring.getUserFriendlyName());
    myRefactoring = refactoring;
    setExecuteOutsideCommand(true);
    setIsAlwaysVisible(false);
  }


  protected void doExecute(AnActionEvent e) {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        SModelRepository.getInstance().saveAll();
      }
    });

    boolean isOneTarget = !myRefactoring.getRefactoringTarget().allowMultipleTargets();

    final RefactoringContext context = new RefactoringContext(myRefactoring);
    context.setCurrentOperationContext(e.getData(MPSDataKeys.OPERATION_CONTEXT));

    context.setSelectedNode(e.getData(MPSDataKeys.NODE));
    context.setSelectedNodes(getNodes(e, isOneTarget));

    context.setSelectedModel(e.getData(MPSDataKeys.CONTEXT_MODEL));
    context.setSelectedModels(getModels(e, isOneTarget));

    context.setSelectedModule(e.getData(MPSDataKeys.MODULE));
    context.setSelectedModules(getModules(e, isOneTarget));

    //noinspection ConstantConditions
    context.setSelectedProject(e.getData(MPSDataKeys.PROJECT));
    context.setCurrentScope(e.getData(MPSDataKeys.SCOPE));

    new Thread() {
      public void run() {
        new RefactoringFacade().execute(myRefactoring, context);
      }
    }.start();
  }

  @NotNull()
  public String getActionId() {
    StringBuilder res = new StringBuilder(500);
    res.append(GenericRefactoringAction.class.getName());
    res.append("#");
    res.append(getRefactoringClassName(myRefactoring));
    return res.toString();
  }

  @NotNull
  public String getKeyStroke() {
    return myRefactoring.getKeyStroke();
  }

  private static String getRefactoringClassName(IRefactoring refactoring) {
    if (refactoring instanceof OldRefactoringAdapter) {
      return ((OldRefactoringAdapter) refactoring).getRefactoringClassName();
    } else {
      return refactoring.getClass().getName();
    }
  }

  @NotNull
  private <T> List<T> getEntities(AnActionEvent e, boolean oneEntity, DataKey<T> keySingle, DataKey<List<T>> keyList) {
    T single     = e.getData(keySingle);
    List<T> list = e.getData(keyList);

    List<T> res = new ArrayList<T>(list==null ? 1 : list.size()+1);

    if (list != null) {
      res.addAll(list);
    }
    if (single != null && !res.contains(single)) {
      res.add(single);
    }
    if (oneEntity && res.size() > 1) {
      res.clear();
    }

    return res;
  }

  @NotNull
  private List<SNode> getNodes(AnActionEvent e, boolean oneEntity) {
    return getEntities(e, oneEntity, MPSDataKeys.NODE, MPSDataKeys.NODES);
  }
  @NotNull
  private List<SModelDescriptor> getModels(AnActionEvent e, boolean oneEntity) {
    return getEntities(e, oneEntity, MPSDataKeys.CONTEXT_MODEL, MPSDataKeys.MODELS);
  }
  @NotNull
  private List<IModule> getModules(AnActionEvent e, boolean oneEntity) {
    return getEntities(e, oneEntity, MPSDataKeys.MODULE, MPSDataKeys.MODULES);
  }

  protected void doUpdate(AnActionEvent e) {
    IRefactoringTarget refTarget = myRefactoring.getRefactoringTarget();
    boolean oneEntity = !refTarget.allowMultipleTargets();
    List entities;
    switch (refTarget.getTarget()) {
      case NODE:   entities = getNodes  (e, oneEntity);  break;
      case MODEL:  entities = getModels (e, oneEntity);  break;
      case MODULE: entities = getModules(e, oneEntity);  break;
      default:
        throw new IllegalArgumentException("Wrong refactoring type " + refTarget.getTarget().getClass().getName());
    }
    boolean disabled = entities.isEmpty() || RefactoringUtil.getApplicability(myRefactoring, entities).lessThan(getMinApplicabilityLevel());
    setEnabledState(e.getPresentation(), !disabled);
  }

  protected Applicability getMinApplicabilityLevel() {
    return Applicability.APPLICABLE;
  }
}
