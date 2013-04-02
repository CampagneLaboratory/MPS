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
package jetbrains.mps.smodel;import org.jetbrains.mps.openapi.model.SModelReference;import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModel;import org.jetbrains.mps.openapi.model.SModelId;import org.jetbrains.mps.openapi.model.SReference;import org.jetbrains.mps.openapi.model.SNodeReference;import org.jetbrains.mps.openapi.model.SNodeId;import org.jetbrains.mps.openapi.model.SNode;

import jetbrains.mps.smodel.event.*;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.annotations.NotNull;

/**
 * @author Kostik
 */
public class SModelAdapter implements SModelListener {
  private SModelListenerPriority myPriority;

  public SModelAdapter() {
    this(SModelListenerPriority.CLIENT);
  }

  public SModelAdapter(@NotNull SModelListenerPriority priority) {
    myPriority = priority;
  }

  @Override
  public void languageAdded(SModelLanguageEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void languageRemoved(SModelLanguageEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void importAdded(SModelImportEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void importRemoved(SModelImportEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void devkitAdded(SModelDevKitEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }


  @Override
  public void devkitRemoved(SModelDevKitEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void rootAdded(SModelRootEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void rootRemoved(SModelRootEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void beforeRootRemoved(SModelRootEvent event) {
  }

  @Override
  public void propertyChanged(SModelPropertyEvent event) {
    eventFired(event);
    modelChanged(event.getModel());
  }

  @Override
  public void childAdded(SModelChildEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void childRemoved(SModelChildEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void beforeChildRemoved(SModelChildEvent event) {
  }

  @Override
  public void referenceAdded(SModelReferenceEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void referenceRemoved(SModelReferenceEvent event) {
    eventFired(event);
    modelChangedDramatically(event.getModel());
  }

  @Override
  public void beforeModelRenamed(SModelRenamedEvent event) {
  }

  @Override
  public void modelRenamed(SModelRenamedEvent event) {
    eventFired(event);
  }

  @Override
  public void beforeModelFileChanged(SModelFileChangedEvent event) {
  }

  @Override
  public void modelFileChanged(SModelFileChangedEvent event) {
    eventFired(event);
  }

  @Override
  public void modelLoadingStateChanged(SModel sm, ModelLoadingState oldState, ModelLoadingState newState) {
  }

  @Override
  public void beforeModelDisposed(SModel sm) {
  }

  @Override
  public void problemsUpdated(SModel event) {
  }

  @Override
  public void modelSaved(SModel sm) {
  }

  public void eventFired(SModelEvent event) {
  }

  public void modelChanged(SModel model) {
  }

  public void modelChangedDramatically(SModel model) {
  }

  @NotNull
  @Override
  public SModelListenerPriority getPriority() {
    return myPriority;
  }
}
