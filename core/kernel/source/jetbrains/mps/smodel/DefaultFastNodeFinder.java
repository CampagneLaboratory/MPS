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

import gnu.trove.THashMap;
import gnu.trove.THashSet;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;


public class DefaultFastNodeFinder implements FastNodeFinder {
  private final Object myLock = new Object();

  private SModel myModel;
  private SModel myModelDescriptor;
  private boolean myInitialized;
  private SModelAdapter myListener = new MySModelAdapter();
  private SModelRepositoryAdapter myRepositoryAdapter = new MySModelRepositoryAdapter();

  private final Map<String, Set<SNode>> myNodes = new THashMap<String, Set<SNode>>();

  public DefaultFastNodeFinder(SModel model) {
    myModel = model;
    myModelDescriptor = model;
    SModelRepository.getInstance().addModelRepositoryListener(myRepositoryAdapter);
    ((SModelInternal) myModelDescriptor).addModelListener(myListener);
  }

  @Override
  public void dispose() {
    synchronized (myLock) {
      myInitialized = false;
      myNodes.clear();
    }
    ((SModelInternal) myModelDescriptor).removeModelListener(myListener);
    SModelRepository.getInstance().removeModelRepositoryListener(myRepositoryAdapter);
  }

  private void initCache() {
    for (SNode root : myModel.getRootNodes()) {
      addToCache(root);
    }
    myInitialized = true;
  }

  @Override
  public List<SNode> getNodes(String conceptFqName, boolean includeInherited) {
    // notify 'model nodes read access'
    myModel.getRootNodes().iterator();

    // pre-loading model to avoid deadlock (model loading process requires a lock)
    // model cannot be unloaded afterwards, because we have model read access
    myModel.load();

    synchronized (myLock) {
      if (!myInitialized) {
        initCache();
      }

      final List<SNode> result = new ArrayList<SNode>();

      if (includeInherited) {
        for (String d : LanguageHierarchyCache.getInstance().getAllDescendantsOfConcept(conceptFqName)) {
          if (myNodes.containsKey(d)) {
            result.addAll(myNodes.get(d));
          }
        }
      } else {
        if (myNodes.containsKey(conceptFqName)) {
          result.addAll(myNodes.get(conceptFqName));
        }
      }

      Collections.sort(result, new Comparator<SNode>() {
        @Override
        public int compare(SNode o1, SNode o2) {
          return ((jetbrains.mps.smodel.SNodeId) o1.getNodeId()).compareTo(((jetbrains.mps.smodel.SNodeId) o2.getNodeId()));
        }
      });

      return result;
    }
  }

  private void addToCache(final SNode root) {
    NodeReadAccessCasterInEditor.runReadTransparentAction(new Runnable() {
      @Override
      public void run() {
        for (SNode child : root.getChildren()) {
          addToCache(child);
        }

        String conceptFqName = root.getConcept().getId();
        add(conceptFqName, root);
      }
    });
  }

  private void removeFromCache(final SNode root) {
    boolean wereBlocked = NodeReadAccessCasterInEditor.areEventsBlocked();
    try {
      NodeReadAccessCasterInEditor.setEventsBlocked(true);

      for (SNode child : root.getChildren()) {
        removeFromCache(child);
      }

      String conceptFqName = root.getConcept().getId();
      remove(conceptFqName, root);
    } finally {
      NodeReadAccessCasterInEditor.setEventsBlocked(wereBlocked);
    }
  }

  private void add(String conceptFqName, SNode node) {

    Set<SNode> set = myNodes.get(conceptFqName);
    if (set == null) {
      set = new THashSet<SNode>(1);
      myNodes.put(conceptFqName, set);
    }
    set.add(node);
  }

  private void remove(String conceptFqName, SNode node) {
    Set<SNode> set = myNodes.get(conceptFqName);
    if (set == null) return;

    set.remove(node);
    if (set.isEmpty()) {
      myNodes.remove(conceptFqName);
    }
  }

  private class MySModelAdapter extends SModelAdapter {
    public MySModelAdapter() {
      super(SModelListenerPriority.PLATFORM);
    }

    @Override
    public void childAdded(SModelChildEvent event) {
      synchronized (myLock) {
        if (!myInitialized) return;

        addToCache(event.getChild());
      }
    }

    @Override
    public void childRemoved(SModelChildEvent event) {
      synchronized (myLock) {
        if (!myInitialized) return;

        removeFromCache(event.getChild());
      }
    }

    @Override
    public void rootAdded(SModelRootEvent event) {
      synchronized (myLock) {
        if (!myInitialized) return;

        addToCache(event.getRoot());
      }
    }

    @Override
    public void rootRemoved(SModelRootEvent event) {
      synchronized (myLock) {
        if (!myInitialized) return;

        removeFromCache(event.getRoot());
      }
    }
  }


  private class MySModelRepositoryAdapter extends SModelRepositoryAdapter {

    @Override
    public void modelsReplaced(Set<SModel> replacedModels) {
      if (replacedModels.contains(myModelDescriptor)) {
        synchronized (myLock) {
          myInitialized = false;
          myNodes.clear();
        }
      }
    }
  }
}
