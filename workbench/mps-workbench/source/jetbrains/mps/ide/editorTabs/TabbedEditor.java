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
package jetbrains.mps.ide.editorTabs;

import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.IdeActions;
import com.intellij.openapi.actionSystem.LangDataKeys;
import com.intellij.openapi.actionSystem.Separator;
import com.intellij.openapi.editor.Document;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.impl.FileEditorManagerImpl;
import com.intellij.openapi.ui.ShadowAction;
import com.intellij.openapi.vcs.FileStatusManager;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.ide.ModelReadAction;
import jetbrains.mps.ide.editor.BaseNodeEditor;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.ide.editorTabs.tabfactory.NodeChangeCallback;
import jetbrains.mps.ide.editorTabs.tabfactory.TabComponentFactory;
import jetbrains.mps.ide.editorTabs.tabfactory.TabsComponent;
import jetbrains.mps.ide.editorTabs.tabfactory.tabs.CreateGroupsBuilder;
import jetbrains.mps.ide.editorTabs.tabfactory.tabs.CreateModeCallback;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.nodeEditor.EditorSettings;
import jetbrains.mps.nodeEditor.EditorSettingsListener;
import jetbrains.mps.openapi.editor.EditorState;
import jetbrains.mps.plugins.relations.RelationDescriptor;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.SModelAdapter;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;

import javax.swing.JComponent;
import java.awt.BorderLayout;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public class TabbedEditor extends BaseNodeEditor {
  private TabsComponent myTabsComponent;
  private final SModelListener myModelListener = new MyNameListener();
  private final SNodeReference myBaseNode;
  private final Set<RelationDescriptor> myPossibleTabs;
  private final Project myProject;
  private final ShadowAction myNextTabAction, myPrevTabAction;

  private EditorSettingsListener mySettingsListener = new EditorSettingsListener() {
    @Override
    public void settingsChanged() {
      SNodeReference node = getCurrentlyEditedNode();
      JComponent comp = myTabsComponent.getComponent();
      if (comp != null) {
        getComponent().remove(comp);
      }
      myProject.getModelAccess().runReadAction(new Runnable() {
        @Override
        public void run() {
          installTabsComponent();
        }
      });
      if (node != null) {
        myTabsComponent.setLastNode(node);
      }
    }
  };
  private MPSNodeVirtualFile myVirtualFile;

  public TabbedEditor(SNodeReference baseNode, Set<RelationDescriptor> possibleTabs, @NotNull Project mpsProject) {
    super(mpsProject);
    myBaseNode = baseNode;
    myPossibleTabs = possibleTabs;
    myProject = mpsProject;

    myVirtualFile = MPSNodesVirtualFileSystem.getInstance().getFileFor(myBaseNode);

    installTabsComponent();

    showNode(myBaseNode.resolve(myProject.getRepository()), false);

    myNextTabAction = new ShadowAction(new BaseNavigationAction(new Runnable() {
      @Override
      public void run() {
        myTabsComponent.nextTab();
      }
    }), ActionManager.getInstance().getAction(IdeActions.ACTION_NEXT_EDITOR_TAB), getComponent());
    myPrevTabAction = new ShadowAction(new BaseNavigationAction(new Runnable() {
      @Override
      public void run() {
        myTabsComponent.prevTab();
      }
    }), ActionManager.getInstance().getAction(IdeActions.ACTION_PREVIOUS_EDITOR_TAB), getComponent());

    EditorSettings.getInstance().addEditorSettingsListener(mySettingsListener);
  }

  private void installTabsComponent() {
    if (myTabsComponent != null) {
      myTabsComponent.dispose();
    }
    myTabsComponent = TabComponentFactory.createTabsComponent(myBaseNode, myPossibleTabs, getEditorPanel(), new NodeChangeCallback() {
          @Override
          public void changeNode(SNode newNode) {
            showNodeInternal(newNode, true, true);
          }
        }, new CreateModeCallback() {
          @Override
          public void exitCreateMode() {
            showEditor();
          }

          @Override
          public void enterCreateMode(JComponent replace) {
            showComponent(replace);
          }
        }, ProjectHelper.toIdeaProject(myProject)
    );

    JComponent c = myTabsComponent.getComponent();
    if (c != null) {
      getComponent().add(c, BorderLayout.SOUTH);
    }
  }

  @Override
  public void dispose() {
    EditorSettings.getInstance().removeEditorSettingsListener(mySettingsListener);

    myNextTabAction.dispose();
    myPrevTabAction.dispose();
    myProject.getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        SModel model = getCurrentNodeModel();
        if (model == null) return;
        ((SModelInternal) model).removeModelListener(myModelListener);
      }
    });
    myTabsComponent.dispose();
    super.dispose();
  }

  @Override
  public boolean isTabbed() {
    return true;
  }

  @Override
  public List<Document> getAllEditedDocuments() {
    return myTabsComponent.getAllEditedDocuments();
  }

  @Override
  public void showNode(SNode node, boolean select) {
    SNode containingRoot = node.getModel() != null && node.getParent() == null ? node : node.getContainingRoot();

    SNodeReference currentNodeReference = getCurrentlyEditedNode();
    SNodeReference newNodeReference = node.getReference();
    if (currentNodeReference != null && currentNodeReference.equals(newNodeReference)) {
      return;
    }

    showNodeInternal(containingRoot, select, false);
  }

  private void showNodeInternal(SNode node, boolean select, boolean fromTabs) {
    if (getCurrentEditorComponent() == null) {
      showEditor();
    }

    final SNodeReference nodeRef = node.getReference();
    if (!fromTabs) {
      myTabsComponent.setLastNode(nodeRef);
    }
    SModel model = getCurrentNodeModel();
    if (model != null) {
      ((SModelInternal) model).removeModelListener(myModelListener);
    }

    SModel md = node.getModel();
    SModule module = md.getModule();
    assert module != null : md.getReference().toString() + "; node is disposed = " + !org.jetbrains.mps.openapi.model.SNodeUtil.isAccessible(node,
        myProject.getRepository());
    SNodeReference selection = select ? nodeRef : null;
    if (myTabsComponent.getCurrentTabAspect() != null) {
      Collection<SNodeReference> a = myTabsComponent.getSelectionFor(myTabsComponent.getCurrentTabAspect(), nodeRef);
      selection = a.isEmpty() ? selection : a.iterator().next();
    }
    if (!select && nodeRef.equals(selection)) {
      // drop selection if it's the same as edited node and we are not forced to show it
      selection = null;
    }
    editNode(nodeRef, selection);

    model = getCurrentNodeModel();
    assert model != null;

    ((SModelInternal) model).addModelListener(myModelListener);

    executeInEDT(new PrioritizedTask(TaskType.UPDATE_PROPERTIES, myType2TaskMap) {
      @Override
      public void performTask() {
        updateProperties();
      }
    });
  }

  private SModel getCurrentNodeModel() {
    SNodeReference n = getCurrentlyEditedNode();
    if (n == null) {
      return null;
    }
    return n.getModelReference().resolve(myProject.getRepository());
  }

  private boolean updateProperties() {
    final com.intellij.openapi.project.Project project = ProjectHelper.toIdeaProject(myProject);
    FileEditorManagerImpl manager = (FileEditorManagerImpl) FileEditorManager.getInstance(project);
    VirtualFile virtualFile = manager.getCurrentFile();
    if (virtualFile == null) return true;

    FileStatusManager.getInstance(project).fileStatusChanged(virtualFile);
    manager.updateFilePresentation(virtualFile);
    return false;
  }


  @Override
  public Object getData(@NonNls String dataId) {
    if (MPSEditorDataKeys.EDITOR_CREATE_GROUP.getName().equals(dataId)) return getCreateGroup();
    if (dataId.equals(LangDataKeys.VIRTUAL_FILE.getName())) {
      return myVirtualFile;
    }

    return null;
  }

  private AnAction getCreateGroup() {
    DefaultActionGroup result = new DefaultActionGroup();

    List<DefaultActionGroup> groups =
        CreateGroupsBuilder.getCreateGroups(myBaseNode, myPossibleTabs, myTabsComponent.getCurrentTabAspect(), new NodeChangeCallback() {
          @Override
          public void changeNode(SNode node) {
            myTabsComponent.setLastNode(new jetbrains.mps.smodel.SNodePointer(node));
            showNode(node, true);
          }
        });
    for (DefaultActionGroup group : groups) {
      group.setPopup(false);
      result.add(group);
      result.add(new Separator());
    }

    return result;
  }

  private class MyNameListener extends SModelAdapter {
    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      SNodeReference pointer = new jetbrains.mps.smodel.SNodePointer(event.getNode());
      if (SNodeUtil.property_INamedConcept_name.getName().equals(event.getPropertyName()) && pointer.equals(getCurrentlyEditedNode())) {
        updateProperties();
      }
    }
  }

  @Override
  public EditorState saveState() {
    TabbedEditorState state = new TabbedEditorState();
    state.myCurrentNode = getCurrentlyEditedNode();

    BaseEditorState superState = (BaseEditorState) super.saveState();
    state.refCopyFrom(superState);
    return state;
  }

  @Override
  public void loadState(@NotNull final EditorState state) {
    super.loadState(state);
    myProject.getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        if (state instanceof TabbedEditorState) {
          SNodeReference nodePointer = ((TabbedEditorState) state).myCurrentNode;
          SNode node = nodePointer == null ? null : nodePointer.resolve(myProject.getRepository());
          if (node != null) {
            showNode(node, false);
          }
        } else {
          //regular editor was shown for that node last time
          showNode(myBaseNode.resolve(myProject.getRepository()), false);
        }
      }
    });
  }

  public static class TabbedEditorState extends BaseEditorState implements EditorState {
    private static final String NODE = "node";
    private static final String NODE_REF = "node_ref";


    private SNodeReference myCurrentNode;

    @Override
    public void save(Element e) {
      super.save(e);
      Element node = new Element(NODE);
      node.setAttribute(NODE_REF, jetbrains.mps.smodel.SNodePointer.serialize(myCurrentNode));
      e.addContent(node);
    }

    @Override
    public void load(Element e) {
      super.load(e);
      Element nodeElem = e.getChild(NODE);

      String val = nodeElem.getAttributeValue(NODE_REF);
      if (val != null) {
        myCurrentNode = jetbrains.mps.smodel.SNodePointer.deserialize(val);
      } else {
        //todo remove after 3.0
        String nodeId = nodeElem.getAttributeValue("nodeId");
        String modelId = nodeElem.getAttributeValue("modelId");
        myCurrentNode = new jetbrains.mps.smodel.SNodePointer(modelId, nodeId);
      }
    }

    public int hashCode() {
      return super.hashCode() * 13 + myCurrentNode.hashCode();
    }

    public boolean equals(Object obj) {
      if (!(obj instanceof TabbedEditorState)) return false;
      if (!super.equals(obj)) return false;
      return EqualUtil.equals(myCurrentNode, ((TabbedEditorState) obj).myCurrentNode);
    }
  }

  private static class BaseNavigationAction extends ModelReadAction {
    public BaseNavigationAction(Runnable delegate) {
      super(null, delegate);
      setEnabledInModalContext(true);
    }
  }
}
