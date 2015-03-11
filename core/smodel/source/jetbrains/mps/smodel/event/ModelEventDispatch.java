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
package jetbrains.mps.smodel.event;

import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeReadEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SPropertyReadEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceReadEvent;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelAccessListener;
import org.jetbrains.mps.openapi.model.SModelChangeListener;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Facility to track model listeners and to dispatch events.
 * Responsible for OpenAPI listeners only (i.e. not about legacy and soon-to-cease {@link jetbrains.mps.smodel.event.SModelListener}).
 * Keeping this separate from SModelBase gives flexibility in implementing SModel.
 * @author Artem Tikhomirov
 */
public final class ModelEventDispatch {
  // model we dispatch events for
  private final SModel myModel;
  private final List<SNodeAccessListener> myAccessListeners = new CopyOnWriteArrayList<SNodeAccessListener>();
  private final List<SNodeChangeListener> myChangeListeners = new CopyOnWriteArrayList<SNodeChangeListener>();
  @ToRemove(version = 3.3)
  private final List<LegacyNodeAccessListener> myLegacyReadListeners = new CopyOnWriteArrayList<LegacyNodeAccessListener>();
  @ToRemove(version = 3.3)
  private final List<LegacyNodeChangeListener> myLegacyChangeListeners = new CopyOnWriteArrayList<LegacyNodeChangeListener>();

  public ModelEventDispatch(@NotNull SModel model) {
    myModel = model;
  }

  @ToRemove(version = 3.3)
  public void addAccessListener(@Nullable SModelAccessListener l) {
    if (l == null) {
      return;
    }
    LegacyNodeAccessListener wrap = new LegacyNodeAccessListener(l);
    addAccessListener(wrap);
    myLegacyReadListeners.add(wrap);
  }

  @ToRemove(version = 3.3)
  public void removeAccessListener(@Nullable SModelAccessListener l) {
    if (l == null) {
      return;
    }
    LegacyNodeAccessListener wrap = null;
    for (LegacyNodeAccessListener w : myLegacyReadListeners) {
      if (w.wraps(l)) {
        wrap = w;
        break;
      }
    }
    if (wrap == null) {
      return;
    }
    myLegacyReadListeners.remove(wrap);
    removeAccessListener(wrap);
  }

  public void addAccessListener(@Nullable SNodeAccessListener l) {
    if (l != null) {
      myAccessListeners.add(l);
    }
  }

  public void removeAccessListener(@Nullable SNodeAccessListener l) {
    if (l != null) {
      myAccessListeners.remove(l);
    }
  }

  @ToRemove(version = 3.3)
  public void addChangeListener(SModelChangeListener l) {
    if (l == null) {
      return;
    }
    LegacyNodeChangeListener wrap = new LegacyNodeChangeListener(l);
    myLegacyChangeListeners.add(wrap);
    addChangeListener(wrap);
  }

  @ToRemove(version = 3.3)
  public void removeChangeListener(SModelChangeListener l) {
    if (l == null) {
      return;
    }
    LegacyNodeChangeListener wrap = null;
    for (LegacyNodeChangeListener w : myLegacyChangeListeners) {
      if (w.wraps(l)) {
        wrap = w;
        break;
      }
    }
    if (wrap == null) {
      return;
    }
    myLegacyChangeListeners.remove(wrap);
    removeChangeListener(wrap);
  }

  public void addChangeListener(SNodeChangeListener l) {
    if (l == null) {
      return;
    }
    myChangeListeners.add(l);
  }

  public void removeChangeListener(SNodeChangeListener l) {
    if (l == null) {
      return;
    }
    myChangeListeners.remove(l);
  }

  public void fireNodeRead(SNode node) {
    if (myAccessListeners.isEmpty()) {
      return;
    }
    final SNodeReadEvent event = new SNodeReadEvent(node);
    for (SNodeAccessListener l : myAccessListeners) {
      l.nodeRead(event);
    }
  }

  public void fireReferenceRead(SNode node, SReferenceLink reference) {
    if (myAccessListeners.isEmpty()) {
      return;
    }
    final SReferenceReadEvent event = new SReferenceReadEvent(node, reference);
    for (SNodeAccessListener l : myAccessListeners) {
      l.referenceRead(event);
    }
  }

  public void firePropertyRead(SNode node, SProperty property) {
    if (myAccessListeners.isEmpty()) {
      return;
    }
    final SPropertyReadEvent event = new SPropertyReadEvent(node, property);
    for (SNodeAccessListener l : myAccessListeners) {
      l.propertyRead(event);
    }
  }

  public void fireReferenceChange(SNode node, SReferenceLink role, SReference oldValue, SReference newValue) {
    if (myChangeListeners.isEmpty()) {
      return;
    }
    final SReferenceChangeEvent event = new SReferenceChangeEvent(node, role, oldValue, newValue);
    for (SNodeChangeListener l : myChangeListeners) {
      l.referenceChanged(event);
    }
  }

  public void firePropertyChange(SNode node, SProperty property, String oldValue, String newValue) {
    if (myChangeListeners.isEmpty()) {
      return;
    }
    final SPropertyChangeEvent event = new SPropertyChangeEvent(node, property, oldValue, newValue);
    for (SNodeChangeListener l : myChangeListeners) {
      l.propertyChanged(event);
    }
  }

  public void fireNodeAdd(SNode node, SContainmentLink role, SNode child) {
    if (myChangeListeners.isEmpty()) {
      return;
    }
    final SNodeAddEvent event = role == null ? new SNodeAddEvent(myModel, child) : new SNodeAddEvent(myModel, node, child, role);
    for (SNodeChangeListener l : myChangeListeners) {
      l.nodeAdded(event);
    }
  }

  public void fireNodeRemove(SNode node, SContainmentLink role, SNode child) {
    if (myChangeListeners.isEmpty()) {
      return;
    }
    final SNodeRemoveEvent event = role == null ? new SNodeRemoveEvent(myModel, child) : new SNodeRemoveEvent(myModel, node, child, role);
    for (SNodeChangeListener l : myChangeListeners) {
      l.nodeRemoved(event);
    }
  }

}
