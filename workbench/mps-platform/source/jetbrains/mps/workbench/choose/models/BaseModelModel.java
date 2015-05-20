/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.workbench.choose.models;

import com.intellij.navigation.NavigationItem;
import com.intellij.openapi.project.Project;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.workbench.choose.base.BaseMPSChooseModel;

public abstract class BaseModelModel extends BaseMPSChooseModel<SModelReference> {
  @Deprecated
  @ToRemove(version = 3.3)
  public BaseModelModel(Project project) {
    super(project, "model");
  }

  public BaseModelModel(jetbrains.mps.project.Project mpsProject) {
    super(mpsProject, "model");
  }

  @Override
  public boolean willOpenEditor() {
    return false;
  }

  @Override
  public String doGetFullName(NavigationItem element) {
    BaseModelItem navigationItem = (BaseModelItem) element;
    SModelReference ref = navigationItem.getModelReference();
    return ref.getModelName();
  }

  @Override
  public String doGetObjectName(SModelReference ref) {
    return NameUtil.shortNameFromLongName(SModelStereotype.withoutStereotype(ref.getModelName())) + getStereotypeString(ref);
  }

  private String getStereotypeString(SModelReference ref) {
    return !SModelStereotype.getStereotype(ref.getModelName()).equals("") ? ("@" + SModelStereotype.getStereotype(ref.getModelName())) : "";
  }
}
