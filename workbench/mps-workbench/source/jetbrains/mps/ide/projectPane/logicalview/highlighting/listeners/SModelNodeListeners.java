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
package jetbrains.mps.ide.projectPane.logicalview.highlighting.listeners;

import jetbrains.mps.generator.ModelGenerationStatusListener;
import jetbrains.mps.generator.ModelGenerationStatusManager;
import jetbrains.mps.ide.projectPane.ProjectPane;
import jetbrains.mps.ide.projectPane.logicalview.SNodeTreeUpdater;
import jetbrains.mps.ide.projectPane.logicalview.SimpleModelListener;
import jetbrains.mps.ide.projectPane.logicalview.highlighting.listeners.ListenersFactory.NodeListeners;
import jetbrains.mps.ide.projectPane.logicalview.highlighting.visitor.ProjectPaneModifiedMarker;
import jetbrains.mps.ide.projectPane.logicalview.highlighting.visitor.ProjectPaneTreeErrorChecker;
import jetbrains.mps.ide.projectPane.logicalview.highlighting.visitor.ProjectPaneTreeGenStatusUpdater;
import jetbrains.mps.ide.ui.smodel.SModelEventsDispatcher;
import jetbrains.mps.ide.ui.smodel.SModelEventsDispatcher.SModelEventsListener;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeGroupTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelRepositoryAdapter;
import jetbrains.mps.smodel.SModelRepositoryListener;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.event.SModelEvent;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.tree.DefaultTreeModel;
import java.util.List;
import java.util.Set;

public class SModelNodeListeners implements NodeListeners {
  private SimpleModelListener mySimpleModelListener;
  private SModelRepositoryListener myModelRepositoryListener;
  private MyGenerationStatusListener myStatusListener;
  private SModelEventsListener myEventsListener;
  private MySNodeTreeUpdater myTreeUpdater;

  private SModelTreeNode myTreeNode;
  private SModel myModel;

  private ProjectPaneTreeGenStatusUpdater myGenStatusVisitor = new ProjectPaneTreeGenStatusUpdater();
  private ProjectPaneTreeErrorChecker myErrorVisitor = new ProjectPaneTreeErrorChecker();
  private ProjectPaneModifiedMarker myModifiedMarker = new ProjectPaneModifiedMarker();

  public SModelNodeListeners(final SModelTreeNode modelNode) {
    myTreeNode = modelNode;
    myModel = modelNode.getSModelDescriptor();

    mySimpleModelListener = new MySimpleModelListener(modelNode);
    myModelRepositoryListener = new SModelRepositoryAdapter() {
      @Override
      public void modelsReplaced(Set<SModel> replacedModels) {
        if (replacedModels.contains(myModel)) {
          visitNode(modelNode);
        }
      }
    };
    myStatusListener = new MyGenerationStatusListener();
    if (myModel instanceof EditableSModel) {
      myTreeUpdater = new MySNodeTreeUpdater(modelNode.getOperationContext().getProject(), modelNode);
      myTreeUpdater.setDependencyRecorder(modelNode.getDependencyRecorder());
    }
    myEventsListener = new MySModelEventsListener();
  }

  @Override
  public void startListening() {
    visitNode(myTreeNode);

    SModelRepository.getInstance().addModelRepositoryListener(myModelRepositoryListener);

    SModelEventsDispatcher.getInstance().registerListener(myEventsListener);
    ((SModelInternal) myModel).addModelListener(mySimpleModelListener);

    if (!SModelStereotype.isStubModelStereotype(SModelStereotype.getStereotype(myModel))) {
      ModelGenerationStatusManager.getInstance().addGenerationStatusListener(myStatusListener);
    }
  }

  @Override
  public void stopListening() {
    if (!SModelStereotype.isStubModelStereotype(SModelStereotype.getStereotype(myModel))) {
      ModelGenerationStatusManager.getInstance().removeGenerationStatusListener(myStatusListener);
    }

    ((SModelInternal) myModel).removeModelListener(mySimpleModelListener);
    SModelEventsDispatcher.getInstance().unregisterListener(myEventsListener);

    SModelRepository.getInstance().removeModelRepositoryListener(myModelRepositoryListener);
  }

  private void visitNode(SModelTreeNode modelNode) {
    myGenStatusVisitor.visitNode(modelNode);
    myErrorVisitor.visitNode(modelNode);
    myModifiedMarker.visitNode(modelNode);
  }

  private class MyGenerationStatusListener implements ModelGenerationStatusListener {
    @Override
    public void generatedFilesChanged(org.jetbrains.mps.openapi.model.SModel sm) {
      if (sm != myModel) return;
      myGenStatusVisitor.visitNode(myTreeNode);
    }
  }

  private class MySimpleModelListener extends SimpleModelListener {
    private final SModelTreeNode myModelNode;

    public MySimpleModelListener(SModelTreeNode modelNode) {
      super(modelNode);
      myModelNode = modelNode;
    }

    @Override
    public void modelChangedDramatically(SModel model) {
      updateNodePresentation(false, true);
      visitNode(myModelNode);
    }

    @Override
    public void modelChanged(SModel model) {
      updateNodePresentation(false, true);
      visitNode(myModelNode);
    }

    @Override
    public void modelSaved(SModel sm) {
      visitNode(myModelNode);
    }

    @Override
    public boolean isValid() {
      if (!super.isValid()) return false;
      if (!(myModel.isLoaded())) return true;
      return !jetbrains.mps.util.SNodeOperations.isModelDisposed(myModel);
    }
  }

  private class MySModelEventsListener implements SModelEventsListener {
    @Override
    @NotNull
    public SModel getModelDescriptor() {
      return myModel;
    }

    @Override
    public void eventsHappened(List<SModelEvent> events) {
      if (myTreeUpdater == null) return;
      myTreeUpdater.eventsHappenedInCommand(events);
    }
  }

  private class MySNodeTreeUpdater extends SNodeTreeUpdater<SModelTreeNode> {
    public MySNodeTreeUpdater(Project project, SModelTreeNode treeNode) {
      super(project, treeNode);
    }

    @Override
    public boolean showPropertiesAndReferences() {
      return ProjectPane.getInstance(myProject).isShowPropertiesAndReferences();
    }

    private SNodeTreeNode findRootSNodeTreeNode(SNode node) {
      return findRootSNodeTreeNode(myTreeNode, node);
    }

    private SNodeTreeNode findRootSNodeTreeNode(MPSTreeNode current, SNode node) {
      for (int i = 0; i < current.getChildCount(); i++) {
        MPSTreeNode child = (MPSTreeNode) current.getChildAt(i);

        if (child instanceof SNodeTreeNode && ((SNodeTreeNode) child).getSNode() == node) {
          return (SNodeTreeNode) child;
        }

        if (child instanceof SNodeGroupTreeNode || child instanceof SModelTreeNode) {
          SNodeTreeNode result = findRootSNodeTreeNode(child, node);
          if (result != null) {
            return result;
          }
        }
      }

      return null;
    }

    @Override
    public SModel getSModelDescriptor() {
      return myTreeNode.getSModelDescriptor();
    }

    @Override
    public void addAndRemoveRoots(Set<SNode> removedRoots, Set<SNode> addedRoots) {
      DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
      for (SNode root : removedRoots) {
        SNodeTreeNode node = findRootSNodeTreeNode(root);
        if (node == null) continue;

        MPSTreeNode parent = (MPSTreeNode) node.getParent();
        treeModel.removeNodeFromParent(node);

        if (parent instanceof SNodeGroupTreeNode && parent.getChildCount() == 0) {
          myTreeNode.groupBecameEmpty((SNodeGroupTreeNode) parent);
        }
      }
      myTreeNode.insertRoots(addedRoots);
    }

    @Override
    public void updateNodesWithChangedPackages(Set<SNode> nodesWithChangedPackages) {
      DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();

      for (SNode node : nodesWithChangedPackages) {
        SNodeTreeNode treeNode = findRootSNodeTreeNode(node);
        if (treeNode == null) continue;

        MPSTreeNode parent = (MPSTreeNode) treeNode.getParent();

        treeModel.removeNodeFromParent(treeNode);
        if (parent.getChildCount() == 0 && parent instanceof SNodeGroupTreeNode) {
          myTreeNode.groupBecameEmpty((SNodeGroupTreeNode) parent);
        }
      }
      myTreeNode.insertRoots(nodesWithChangedPackages);
    }
  }
}
