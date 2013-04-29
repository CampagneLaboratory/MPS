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

import org.jetbrains.mps.openapi.model.SModel;

import java.util.Set;

public abstract class SModelRepositoryAdapter implements SModelRepositoryListener {
  private SModelRepositoryListenerPriority myPriority;

  public SModelRepositoryAdapter() {
    this(SModelRepositoryListenerPriority.CLIENT);
  }

  public SModelRepositoryAdapter(SModelRepositoryListenerPriority priority) {
    this.myPriority = priority;
  }

  @Override
  public void beforeModelDeleted(SModel modelDescriptor) {

  }

  @Override
  public void modelDeleted(SModel modelDescriptor) {
    modelRepositoryChanged();
    modelRepositoryChanged(modelDescriptor);
  }

  @Override
  public void modelRemoved(SModel modelDescriptor) {
    modelRepositoryChanged();
    modelRepositoryChanged(modelDescriptor);
  }

  @Override
  public void beforeModelRemoved(SModel modelDescriptor) {

  }

  @Override
  public void modelAdded(SModel modelDescriptor) {
    modelRepositoryChanged();
    modelRepositoryChanged(modelDescriptor);
  }

  @Override
  public void modelRenamed(SModel modelDescriptor) {
    modelRepositoryChanged();
    modelRepositoryChanged(modelDescriptor);
  }

  @Override
  public void modelsReplaced(Set<SModel> replacedModels) {
    modelRepositoryChanged();
  }

  public void modelRepositoryChanged() {

  }

  public void modelRepositoryChanged(SModel modelDescriptor) {

  }

  public SModelRepositoryListenerPriority getPriority() {
    return myPriority;
  }

}
