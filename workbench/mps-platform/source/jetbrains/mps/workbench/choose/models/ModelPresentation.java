/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.workbench.choose.base.BasePresentation;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;

public class ModelPresentation extends BasePresentation {
  private SModelReference myModelReference;

  public ModelPresentation(SModelReference modelReference) {
    myModelReference = modelReference;
  }

  @Override
  @NotNull
  public String doGetPresentableText() {
    return myModelReference.getSModelFqName().toString();
  }

  @Override
  public String doGetLocationString() {
    return "(" + getModuleUID() + ")";
  }

  @Override
  public Icon doGetIcon() {
    return IconManager.getIconFor(getModelDescriptor());
  }

  private String getModuleUID() {
    SModelDescriptor descriptor = getModelDescriptor();
    IModule module;
    if (descriptor == null || (module = descriptor.getModule()) == null) return "no module";
    return module.getModuleFqName();
  }

  private SModelDescriptor getModelDescriptor() {
    if (SModelRepository.getInstance() == null) return null;
    return SModelRepository.getInstance().getModelDescriptor(myModelReference);
  }
}
