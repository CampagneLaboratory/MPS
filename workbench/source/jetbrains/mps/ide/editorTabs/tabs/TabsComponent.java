/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.ide.editorTabs.tabs;

import com.intellij.ide.DataManager;
import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.util.Pair;
import com.intellij.util.containers.MultiMap;
import jetbrains.mps.ide.editorTabs.EditorTabDescriptor;
import jetbrains.mps.ide.editorTabs.tabs.baseListening.ModelListener;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.util.Condition;
import jetbrains.mps.workbench.action.ActionUtils;

import javax.swing.AbstractAction;
import javax.swing.JComponent;
import javax.swing.JPanel;
import javax.swing.KeyStroke;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.util.*;

public abstract class TabsComponent extends JPanel {
  private SNodePointer myBaseNode;
  private SNodePointer myLastNode = null;
  private Set<EditorTabDescriptor> myPossibleTabs;
  private List<EditorTab> myRealTabs = new ArrayList<EditorTab>();
  private ModelListener myListener = new ModelListener() {
    protected void onImportantRootRemoved(SNodePointer node) {
      if (myBaseNode.equals(node)) return; //will be closed by idea

      if (myLastNode.equals(node)) {
        onNodeChange(myBaseNode.getNode());
      }

      updateTabs();
    }
  };
  private JComponent myToolbar = null;

  public TabsComponent(SNodePointer baseNode, Set<EditorTabDescriptor> possibleTabs) {
    myBaseNode = baseNode;
    myPossibleTabs = possibleTabs;

    registerKeyboardAction(new AbstractAction() {
      public void actionPerformed(ActionEvent e) {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            prevTab();
          }
        });
      }
    }, KeyStroke.getKeyStroke("ctrl alt shift LEFT"), JComponent.WHEN_IN_FOCUSED_WINDOW);

    registerKeyboardAction(new AbstractAction() {
      public void actionPerformed(ActionEvent e) {
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            nextTab();
          }
        });
      }
    }, KeyStroke.getKeyStroke("ctrl alt shift RIGHT"), JComponent.WHEN_IN_FOCUSED_WINDOW);

    GlobalSModelEventsManager.getInstance().addGlobalCommandListener(new SModelCommandListener() {
      public void eventsHappenedInCommand(List<SModelEvent> events) {
        outer:
        for (EditorTabDescriptor d : myPossibleTabs) {
          for (EditorTab tab : myRealTabs) {
            if (tab.getDescriptor() == d) continue outer;
          }

          if (d.getNodes(myBaseNode.getNode()).isEmpty()) continue;
          updateTabs();
        }
      }
    });

    setLayout(new BorderLayout());
    add(new JPanel(), BorderLayout.CENTER);

    AddConceptTab button = new AddConceptTab(myBaseNode, myPossibleTabs) {
      protected SNode getCurrentAspect() {
        return myLastNode.getNode();
      }
    };

    DefaultActionGroup group = new DefaultActionGroup();
    group.add(button.getAction(this));
    JComponent tab = ActionManager.getInstance().createActionToolbar(ActionPlaces.UNKNOWN, group, true).getComponent();
    add(tab, BorderLayout.EAST);

    addListeners();
    updateTabs();
  }

  public void dispose() {
    removeListeners();
  }

  public List<SNodePointer> getAllEditedNodes() {
    List<SNodePointer> result = new ArrayList<SNodePointer>();
    SNode baseNode = myBaseNode.getNode();
    if (baseNode == null) return result;
    for (EditorTab tab : myRealTabs) {
      for (SNode node : tab.getDescriptor().getNodes(baseNode)) {
        assert node != null;
        result.add(new SNodePointer(node));
      }
    }
    return result;
  }

  private void updateTabs() {
    myRealTabs.clear();
    for (EditorTabDescriptor d : myPossibleTabs) {
      List<SNode> nodes = d.getNodes(myBaseNode.getNode());
      if (nodes.isEmpty()) continue;

      for (SNode node : nodes) {
        myListener.aspectAdded(node);
      }

      final EditorTab tab = new EditorTab(this, d, myBaseNode);
      myRealTabs.add(tab);
    }

    //todo comparator in language
    Collections.sort(myRealTabs, new Comparator<EditorTab>() {
      public int compare(EditorTab o1, EditorTab o2) {
        List<String> list = Arrays.asList(new String[]{"Structure", "Editor", "Constraints", "Behavior", "Typesystem", "Actions", "Refactorings", "Intentions", "Find Usages", "Data Flow", "Generator", "Textgen"});
        return list.indexOf(o1.getDescriptor().getTitle()) - list.indexOf(o2.getDescriptor().getTitle());
      }
    });

    DefaultActionGroup group = new DefaultActionGroup();
    for (EditorTab tab : myRealTabs) {
      group.add(tab.getAction(this));
    }
    if (myToolbar != null) {
      remove(myToolbar);
    }
    myToolbar = ActionManager.getInstance().createActionToolbar(ActionPlaces.UNKNOWN, group, true).getComponent();
    add(myToolbar, BorderLayout.WEST);
  }

  //todo
  public void setLastNode(SNodePointer node) {
    myLastNode = node;
  }

  public void onNodeChange(SNode node) {
    myLastNode = new SNodePointer(node);
    changeNode(node);
  }

  protected abstract void changeNode(SNode newNode);

  private void nextTab() {
    for (EditorTab tab : myRealTabs) {
      boolean thatTab = tab.getDescriptor().getNodes(myBaseNode.getNode()).contains(myLastNode.getNode());
      if (thatTab) {
        int index = myRealTabs.indexOf(tab);
        if (index == myRealTabs.size() - 1) return;

        performTabAction(index + 1);

        return;
      }
    }
  }

  private void prevTab() {
    for (EditorTab tab : myRealTabs) {
      boolean thatTab = tab.getDescriptor().getNodes(myBaseNode.getNode()).contains(myLastNode.getNode());
      if (thatTab) {
        int index = myRealTabs.indexOf(tab);
        if (index == 0) return;

        performTabAction(index - 1);

        return;
      }
    }
  }

  private void performTabAction(int index) {
    DataContext context = DataManager.getInstance().getDataContext(this);
    AnActionEvent event = ActionUtils.createEvent(ActionPlaces.UNKNOWN, context);
    event.getInputEvent().setSource(myToolbar.getComponent(index));
    myRealTabs.get(index).getAction(this).actionPerformed(event);
  }

  ///-------------events----------------

  private void addListeners() {
    myListener.startListening();

    SModelRepository.getInstance().addModelRepositoryListener(myModelAddedListener);
  }

  private void removeListeners() {
    SModelRepository.getInstance().removeModelRepositoryListener(myModelAddedListener);

    for (SModelReference modelRef : myModelAdditionListeners.keySet()) {
      for (SModelListener listener : myModelAdditionListeners.get(modelRef)) {
        SModelDescriptor model = SModelRepository.getInstance().getModelDescriptor(modelRef);
        if (model == null) continue;
        model.removeModelListener(listener);
      }
    }

    myModelAdditionListeners.clear();

    myListener.stopListening();
  }

  ///-------------tab insert events----------------

  private SModelRepositoryListener myModelAddedListener = new ModelAddedListener();
  protected MultiMap<SModelReference, SModelListener> myModelAdditionListeners = new MultiMap<SModelReference, SModelListener>();
  private List<AdditionDescriptor> myAdditionDescriptors = new ArrayList<AdditionDescriptor>();

  public void addNodeAdditionListener(Condition<SModelDescriptor> listenToModelCondition, SModelListener listener) {
    myAdditionDescriptors.add(new AdditionDescriptor(listenToModelCondition, listener));
    for (SModelDescriptor d : SModelRepository.getInstance().getModelDescriptors()) {
      if (listenToModelCondition.met(d)) {
        listenModelForAdditions(d, listener);
      }
    }
  }

  private void listenModelForAdditions(SModelDescriptor descriptor, SModelListener listener) {
    descriptor.addModelListener(listener);
    myModelAdditionListeners.putValue(descriptor.getSModelReference(), listener);
  }

  private class ModelAddedListener extends SModelRepositoryAdapter {
    public void modelAdded(SModelDescriptor modelDescriptor) {
      for (AdditionDescriptor d : myAdditionDescriptors) {
        if (d.first.met(modelDescriptor)) {
          listenModelForAdditions(modelDescriptor, d.second);
        }
      }
    }

    public void beforeModelRemoved(SModelDescriptor modelDescriptor) {
      SModelReference modelRef = modelDescriptor.getSModelReference();
      for (SModelListener listener : myModelAdditionListeners.get(modelRef)) {
        modelDescriptor.removeModelListener(listener);
      }
      myModelAdditionListeners.remove(modelRef);
    }
  }

  private class AdditionDescriptor extends Pair<Condition<SModelDescriptor>, SModelListener> {
    public AdditionDescriptor(Condition<SModelDescriptor> first, SModelListener second) {
      super(first, second);
    }
  }
}
