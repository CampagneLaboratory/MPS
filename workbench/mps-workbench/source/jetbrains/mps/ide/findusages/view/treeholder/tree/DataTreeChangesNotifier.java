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
package jetbrains.mps.ide.findusages.view.treeholder.tree;

import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.ModelNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.ModuleNodeData;
import jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes.NodeNodeData;
import jetbrains.mps.smodel.GlobalSModelEventsManager;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModelAccessAdapter;
import jetbrains.mps.smodel.ModelAccessListener;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelRepositoryAdapter;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepositoryAdapter;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class DataTreeChangesNotifier {
  private IChangeListener myTree;
  private boolean myChanged = false;
  private ModelAccessListener myCommandListener = new MyCommandListener();

  private MyModelCommandListener myModelListener = new MyModelCommandListener();
  private MyModelRepositoryListener myModelRepositoryListener = new MyModelRepositoryListener();
  private MyModuleRepositoryListener myModuleRepositoryListener = new MyModuleRepositoryListener();

  private Set<SNodeReference> myNodes = new HashSet<SNodeReference>();
  private Set<SModelReference> myModels = new HashSet<SModelReference>();
  private Set<SModuleReference> myModules = new HashSet<SModuleReference>();

  public DataTreeChangesNotifier(IChangeListener tree) {
    myTree = tree;
  }

  public void startListening(DataNode root) {
    ModelAccess.instance().addCommandListener(myCommandListener);

    for (DataNode node : root.getDescendantsByDataClass(NodeNodeData.class)) {
      NodeNodeData nodeData = (NodeNodeData) node.getData();
      myNodes.add(nodeData.getNodePointer());
    }

    for (DataNode node : root.getDescendantsByDataClass(ModelNodeData.class)) {
      ModelNodeData modelData = (ModelNodeData) node.getData();
      myModels.add(modelData.getModelReference());
    }

    for (DataNode node : root.getDescendantsByDataClass(ModuleNodeData.class)) {
      ModuleNodeData moduleData = (ModuleNodeData) node.getData();
      myModules.add(moduleData.getModuleReference());
    }

    GlobalSModelEventsManager.getInstance().addGlobalCommandListener(myModelListener);
    SModelRepository.getInstance().addModelRepositoryListener(myModelRepositoryListener);
    MPSModuleRepository.getInstance().addRepositoryListener(myModuleRepositoryListener);
  }

  public void stopListening() {
    ModelAccess.instance().removeCommandListener(myCommandListener);

    myNodes.clear();
    myModels.clear();
    myModules.clear();

    GlobalSModelEventsManager.getInstance().removeGlobalCommandListener(myModelListener);
    SModelRepository.getInstance().removeModelRepositoryListener(myModelRepositoryListener);
    MPSModuleRepository.getInstance().removeRepositoryListener(myModuleRepositoryListener);
  }

  private class MyModelCommandListener implements SModelCommandListener {
    @Override
    public void eventsHappenedInCommand(List<SModelEvent> events) {
      for (SModelEvent event : events) {
        if (event.getModelDescriptor() == null) continue;
        if (!myModels.contains(event.getModelDescriptor().getReference())) continue;

        if (event instanceof SModelRootEvent) {
          SModelRootEvent modelRootEvent = (SModelRootEvent) event;
          SNodeReference rootPointer = new jetbrains.mps.smodel.SNodePointer(modelRootEvent.getRoot());
          if (modelRootEvent.isRemoved() && myNodes.contains(rootPointer)) {
            myChanged = true;
            return;
          }
        } else if (event instanceof SModelChildEvent) {
          SModelChildEvent modelChildEvent = (SModelChildEvent) event;
          SNodeReference childPointer = new jetbrains.mps.smodel.SNodePointer(modelChildEvent.getModel().getReference(),
              modelChildEvent.getChild().getNodeId());
          if (modelChildEvent.isRemoved() && myNodes.contains(childPointer)) {
            myChanged = true;
            return;
          }
        }
      }
    }
  }

  private class MyModelRepositoryListener extends SModelRepositoryAdapter {
    @Override
    public void modelDeleted(SModel modelDescriptor) {
      if (!myModels.contains(modelDescriptor.getReference())) return;
      myChanged = true;
    }
  }

  private class MyCommandListener extends ModelAccessAdapter {
    @Override
    public void commandFinished() {
      if (!myChanged) return;
      myChanged = false;
      myTree.changed();
    }
  }

  private class MyModuleRepositoryListener extends SRepositoryAdapter {
    @Override
    public void moduleRemoved(SModuleReference module) {
      if (!myModules.contains(module)) return;
      myChanged = true;
    }
  }
}
