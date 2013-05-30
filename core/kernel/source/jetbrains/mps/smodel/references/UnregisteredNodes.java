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
package jetbrains.mps.smodel.references;

import gnu.trove.THashSet;
import jetbrains.mps.extapi.model.SNodeBase;
import jetbrains.mps.util.PairMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;

import java.util.Set;

public class UnregisteredNodes {
  private static final Logger LOG = LogManager.getLogger(UnregisteredNodes.class);
  private static UnregisteredNodes ourInstance;

  private final PairMap<SModelReference, SNodeId, SNode> myMap = new PairMap<SModelReference, SNodeId, SNode>();
  private final Set<SNode> myNodesWithoutRefs = new THashSet<SNode>();
  private final Object myLock = new Object();

  private boolean myDisabled = true;

  public static UnregisteredNodes instance() {
    if (ourInstance == null) {
      ourInstance = new UnregisteredNodes();
    }
    return ourInstance;
  }

  public void enable() {
    myDisabled = false;
  }

  public void disable() {
    myDisabled = true;
    clear();
  }

  private UnregisteredNodes() {

  }

  public void clear() {
    synchronized (myLock) {
      for (SNode node : myMap.values()) {
        ((SNodeBase) node).detach();
      }
      for (SNode node : myNodesWithoutRefs) {
        ((SNodeBase) node).detach();
      }
      myMap.clear();
      myNodesWithoutRefs.clear();
    }
  }

  public boolean contains(SNode node) {
    synchronized (myLock) {
      return myMap.values().contains(node) || myNodesWithoutRefs.contains(node);
    }
  }

  public void put(SNode node) {
    if (myDisabled) return;
    if (node.getNodeId() == null || node.getModel() == null) {
      myNodesWithoutRefs.add(node);
      return;
    }
    add(node.getModel().getReference(), node.getNodeId(), node);
  }

  public void remove(SNode node) {
    if (myDisabled) return;
    synchronized (myLock) {
      myMap.remove(node);
      myNodesWithoutRefs.remove(node);
    }
  }

  public SNode get(SModelReference modelReference, SNodeId nodeId) {
    if (myDisabled) return null;
    synchronized (myLock) {
      return myMap.get(modelReference, nodeId);
    }
  }

  private void add(SModelReference reference, SNodeId id, SNode node) {
    boolean showError = false;
    synchronized (myLock) {
      if (myMap.contains(reference, id) && myMap.get(reference, id) != node) {
        showError = true;
      }
      myMap.put(reference, id, node);
    }
    if (showError) {
      IllegalStateException ex = new IllegalStateException("attempt to put another node with same key: " + reference + "#" + id);
      LOG.error(ex, ex);
    }
  }
}
