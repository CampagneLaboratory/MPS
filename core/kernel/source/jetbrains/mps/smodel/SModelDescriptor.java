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
package jetbrains.mps.smodel;

import jetbrains.mps.smodel.event.SModelListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;

/**
 * This is a common descriptor used for all models - stub, transient, caches, regular MPS models
 */
public interface SModelDescriptor extends org.jetbrains.mps.openapi.model.SModel, SModelInternal {
  /**
   * After model loading call SModelRepository.fireModelRepositoryChanged
   */
  @Deprecated
  /**
   * Cast to SModelInternal in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  SModel getSModel();

  @Deprecated
  /**
   * Replace with implemented in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  SModule getModule();

  @Deprecated
  /**
   * Cast to SModelInternal in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  void setModule(SModule container);


  @Deprecated
  /**
   * Replace with SNodeOperations.isGeneratable in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  boolean isGeneratable();

  //------

  @Deprecated
  /**
   * Replace with getReference() in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  SModelReference getSModelReference();

  @Deprecated
  /**
   * Replace with SNodeOperations.getModelLongName(this) in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  String getLongName();

  @Deprecated
  /**
   * Replace with SModelStereotype.getStereotype(this) in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  String getStereotype();

  //------

  @Deprecated
  /**
   * Replace with SNodeOperations.isRegistered in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  boolean isRegistered();

  @Deprecated
  /**
   * Replace with detach() in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  void dispose();

  //------

  @Deprecated
  /**
   * Replace with getModule() instanceof TransientModelsModule in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isTransient();

  //------

  @Deprecated
  /**
   * Cast to SModelInternal in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  SModel resolveModel(SModelReference reference);

  //--------------model listeners--------------------

  @Deprecated
  /**
   * Cast to SModelInternal in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  void addModelListener(@NotNull SModelListener listener);

  @Deprecated
  /**
   * Cast to SModelInternal in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  void removeModelListener(@NotNull SModelListener listener);
}
