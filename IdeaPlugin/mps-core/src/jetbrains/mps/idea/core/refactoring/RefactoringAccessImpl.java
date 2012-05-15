/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.refactoring;

import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.platform.refactoring.ModelElementTargetChooser;
import jetbrains.mps.ide.platform.refactoring.RefactoringAccess;
import jetbrains.mps.ide.platform.refactoring.RefactoringFacade;
import jetbrains.mps.ide.platform.refactoring.RefactoringViewAction;
import jetbrains.mps.idea.core.ui.ModelOrNodeChooser;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SNode;
import org.jetbrains.annotations.NotNull;

/**
 * User: shatalin
 * Date: 2/20/12
 */
public class RefactoringAccessImpl extends RefactoringAccess implements ApplicationComponent {
  private RefactoringFacade myRefactoringFacade;

  public RefactoringAccessImpl(MPSCoreComponents coreComponents) {
  }

  @Override
  public void initComponent() {
    RefactoringAccess.setInstance(this);
  }

  @Override
  public void disposeComponent() {
    RefactoringAccess.setInstance(null);
  }

  @NotNull
  @Override
  public String getComponentName() {
    return "IDEA Plugin-specific Refactoring Access implementation";
  }

  @Override
  public RefactoringFacade getRefactoringFacade() {
    if (myRefactoringFacade == null) {
      myRefactoringFacade = new RefactoringFacadeImpl();
    }
    return myRefactoringFacade;
  }

  @Override
  public ModelElementTargetChooser createTargetChooser(Project project, SNode node) {
    return new ModelOrNodeChooser(project,node);
  }

  @Override
  public ModelElementTargetChooser createTargetChooser(Project project, SModelDescriptor model) {
    return new ModelOrNodeChooser(project,model);
  }

    @Override
    public void showRefactoringView(Project project, RefactoringViewAction callback, SearchResults searchResults, boolean hasModelsToGenerate, String name) {
        throw new UnsupportedOperationException();
    }
}
