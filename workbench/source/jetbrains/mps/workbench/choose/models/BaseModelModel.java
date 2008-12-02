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
package jetbrains.mps.workbench.choose.models;

import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.workbench.choose.base.BaseMPSChooseModel;

public abstract class BaseModelModel extends BaseMPSChooseModel<SModelDescriptor> {
  public BaseModelModel(MPSProject project) {
    super(project);
  }

  //---------------------FIND STUFF------------------------

  public String doGetFullName(Object element) {
    BaseModelItem navigationItem = (BaseModelItem) element;
    SModelDescriptor modelDescriptor = navigationItem.getModelDescriptor();
    String modelName = modelDescriptor.getLongName();
    boolean javaStub = modelDescriptor.getStereotype().equals(SModelStereotype.JAVA_STUB);
    return modelName + (javaStub ? "@java_stub" : "");
  }

  public String doGetObjectName(SModelDescriptor modelDescriptor) {
    String modelName = modelDescriptor.getSModelReference().getLongName();
    boolean javaStub = modelDescriptor.getStereotype().equals(SModelStereotype.JAVA_STUB);
    return modelName + (javaStub ? "@java_stub" : "");
  }

  //---------------------INTERFACE STUFF------------------------

  public String getCheckBoxName() {
    //return IdeBundle.message("checkbox.include.non.project.classes");
    return "Include non-project models";
  }

  public String getNotInMessage() {
    //return IdeBundle.message("label.no.matches.found.in.project");
    return "no models found in project";
  }

  public String getNotFoundMessage() {
    //return IdeBundle.message("label.no.matches.found");
    return "no mathches found";
  }
}
