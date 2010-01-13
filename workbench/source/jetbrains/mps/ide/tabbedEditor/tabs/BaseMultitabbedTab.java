/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.ide.tabbedEditor.tabs;

import com.intellij.openapi.wm.ToolWindowManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.ui.popup.ListPopup;
import com.intellij.openapi.ui.popup.JBPopupFactory;
import com.intellij.openapi.ui.popup.PopupStep;
import com.intellij.openapi.ui.popup.util.BaseListPopupStep;
import com.intellij.execution.junit.RuntimeConfigurationProducer;
import com.intellij.execution.ExecutionBundle;
import com.intellij.ui.awt.RelativePoint;
import jetbrains.mps.ide.tabbedEditor.ILazyTab;
import jetbrains.mps.ide.tabbedEditor.TabbedEditor;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.lang.core.structure.INamedConcept;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.NameUtil;

import javax.swing.*;
import javax.swing.event.ChangeListener;
import javax.swing.event.ChangeEvent;
import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.util.*;

import org.jetbrains.annotations.NotNull;

public abstract class BaseMultitabbedTab implements ILazyTab {
  private Set<SNodePointer> myLoadableNodes = new HashSet<SNodePointer>();
  public SModelListener myListener = new MySModelAdapter();
  private SNodePointer myBaseNode;
  private JTabbedPane myInnerTabbedPane;
  private JPanel myComponent;
  private List<EditorComponent> myEditors = new ArrayList<EditorComponent>();
  private Class<? extends BaseAdapter> myClass;
  private TabbedEditor myTabbedEditor;
  private int myCurrentIndex = 0;

  protected BaseMultitabbedTab(TabbedEditor tabbedEditor, SNode baseNode, Class<? extends BaseAdapter> adapterClass) {
    myTabbedEditor = tabbedEditor;
    myBaseNode = new SNodePointer(baseNode);
    myClass = adapterClass;
  }

  private void closeTab(SNodePointer nodePointer, int index) {
    myInnerTabbedPane.remove(index);
    myEditors.remove(index);
    myLoadableNodes.remove(nodePointer);
    if (myLoadableNodes.size() == 0) {
      myComponent = null;
      myCurrentIndex = 0;
      myTabbedEditor.getTabbedPane().remove(this);
      myTabbedEditor.getTabbedPane().initTab(this);
    }
  }

  private int getIndexOfTabFor(SNodePointer pointer) {
    for (EditorComponent editorComponent : myEditors) {
      if (editorComponent.getEditedNodePointer().equals(pointer)) {
        return myEditors.indexOf(editorComponent);
      }
    }
    return -1;
  }

  protected List<SNode> getAvailableConcepts() {
    return new ArrayList<SNode>();
  }

  protected abstract List<Pair<SNode, IOperationContext>> tryToLoadNodes();

  protected abstract Pair<SNode, IOperationContext> createLoadableNode(boolean ask, SNode concept);

  public boolean isOutsideCommandExecution() {
    return false;
  }

  protected List<SNode> getLoadableNodes() {
    List<SNode> result = new ArrayList<SNode>();
    for (SNodePointer sNodePointer : myLoadableNodes) {
      result.add(sNodePointer.getNode());
    }
    return result;
  }

  public SNode getBaseNode() {
    return myBaseNode.getNode();
  }

  public TabbedEditor getTabbedEditor() {
    return myTabbedEditor;
  }

  public JComponent getComponent() {
    if (myInnerTabbedPane == null) {
      ModelAccess.instance().runReadAction(new Runnable() {
        public void run() {
          tryToInitComponent();
        }
      });
    }
    return myComponent;
  }

  public boolean canCreate() {
    return true;
  }

  public String getTabTextForNode(SNode node) {
    return node.getName();
  }

  private boolean tryToInitComponent() {
    List<Pair<SNode, IOperationContext>> loadableNodes = tryToLoadNodes();

    if (loadableNodes.isEmpty()) return false;

    myComponent = new JPanel(new BorderLayout());
    myInnerTabbedPane = new JTabbedPane();
    myInnerTabbedPane.addChangeListener(new ChangeListener() {
      @Override
      public void stateChanged(ChangeEvent e) {
        myTabbedEditor.onSelectInnerTab();
      }
    });
    try {
      myInnerTabbedPane.setSelectedIndex(Math.max(myCurrentIndex, 0));
    } catch (IndexOutOfBoundsException e) {
    }

    for (Pair<SNode, IOperationContext> loadableNodeAndContext : loadableNodes) {
      addInnerTab(loadableNodeAndContext.o1, loadableNodeAndContext.o2);
    }

    myComponent.add(myInnerTabbedPane, BorderLayout.CENTER);

    if (canCreate()) {
      final JPanel panel = new JPanel(new BorderLayout());
      final JButton button = new JButton();
      AbstractAction action = new AbstractAction("Create new") {
        public void actionPerformed(final ActionEvent e) {
          final List<SNode> nodeList = new ArrayList<SNode>();
          ModelAccess.instance().runReadAction(new Runnable() {
            public void run() {
              nodeList.addAll(getAvailableConcepts());  
            }
          });
          final SNode[] concepts = new SNode[nodeList.size()];
          for (int i = 0; i < nodeList.size(); i++) {
            concepts[i] = nodeList.get(i);
          }
          if (nodeList.size() == 0) {
            createNewInnerTab(null);
          } else {
            ModelAccess.instance().runReadAction(new Runnable() {
              public void run() {
                final ListPopup popup;
                popup = JBPopupFactory.getInstance().createListPopup(new BaseListPopupStep<SNode>("Choose concept", concepts) {
                  public Icon getIconFor(final SNode concept) {
                    final Icon[] result = new Icon[1];
                    ModelAccess.instance().runReadAction(new Runnable() {
                      public void run() {
                        String name = NameUtil.longNameFromNamespaceAndShortName(concept.getModel().getSModelFqName().getLongName(), concept.getName());
                        result[0] = IconManager.getIconForConceptFQName(name);
                      }
                    });
                    return result[0];
                  }

                  @NotNull
                  public String getTextFor(final SNode concept) {
                    final String[] result = new String[]{null};
                    ModelAccess.instance().runReadAction(new Runnable() {
                      public void run() {
                        result[0] = concept.getName();
                      }
                    });
                    return result[0];
                  }

                  public PopupStep onChosen(SNode selectedValue, boolean finalChoice) {
                    createNewInnerTab(selectedValue);
                    return FINAL_CHOICE;
                  }
                });
                popup.show(new RelativePoint(button, new Point(0, button.getHeight())));
              }
            });
          }
        }
      };
      button.setAction(action);
      panel.add(button, BorderLayout.WEST);
      myComponent.add(panel, BorderLayout.NORTH);
    }

    return true;
  }

  private void addInnerTabChecked(SNode loadableNode, IOperationContext operationContext) {
    if (getLoadableNodes().size() == 0) {
      tryToInitComponent();
    } else {
      addInnerTab(loadableNode, operationContext);
    }
  }

  private JComponent addInnerTab(SNode loadableNode, IOperationContext operationContext) {
    EditorComponent component = new NodeEditorComponent(operationContext);
    component.editNode(loadableNode, operationContext);
    SNodePointer pointer = new SNodePointer(loadableNode);
    myLoadableNodes.add(pointer);
    JComponent jComponent = component.getExternalComponent();
    myInnerTabbedPane.add(getTabTextForNode(loadableNode), jComponent);
    myEditors.add(component);
    ToolWindowManager.getInstance(operationContext.getProject()).getFocusManager().requestFocus(component, false);
    SModel sModel = loadableNode.getModel();
    if (!sModel.hasModelListener(myListener)) {
      sModel.addWeakSModelListener(myListener);
    }
    return jComponent;
  }

  public List<EditorComponent> getEditorComponents() {
    return new ArrayList<EditorComponent>(myEditors);
  }

  public EditorComponent getCurrentEditorComponent() {
    JPanel panel = (JPanel) getComponent();
    if (panel == null) return null;
    return myEditors.get(myInnerTabbedPane.getSelectedIndex());
  }

  private void createNewInnerTab(final SNode concept) {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        Pair<SNode, IOperationContext> nodeAndContext = createLoadableNode(false, concept);
        if (nodeAndContext != null) {
          nodeAndContext.o1.setProperty(SModelTreeNode.PACK, getBaseNode().getProperty(SModelTreeNode.PACK));
          myInnerTabbedPane.setSelectedIndex(myInnerTabbedPane.getTabCount() - 1);
        }
      }
    });
  }

  public void create() {
    if (!canCreate()) return;
    if (!askCreate()) return;

    final Pair<SNode, IOperationContext>[] nodeAndContext = new Pair[1];
    if (isOutsideCommandExecution()) {
      nodeAndContext[0] = createLoadableNode(true, null);
    } else {
      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        public void run() {
          nodeAndContext[0] = createLoadableNode(true, null);
        }
      });
    }
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      @Override
      public void run() {
        if (nodeAndContext[0] == null) return;

        nodeAndContext[0].o1.setProperty(SModelTreeNode.PACK, getBaseNode().getProperty(SModelTreeNode.PACK));
      }
    });
  }

  public int getCurrentTab() {
    if (myInnerTabbedPane == null) return 0;
    return myInnerTabbedPane.getSelectedIndex();
  }

  public void selectTab(int index) {
    try {
      myCurrentIndex = index;
      if (myInnerTabbedPane != null) {
        myInnerTabbedPane.setSelectedIndex(myCurrentIndex);
      }
    } catch (IndexOutOfBoundsException e) {
    }
  }

  private class MySModelAdapter extends SModelAdapter {
    @Override
    public void rootRemoved(SModelRootEvent event) {
      if (myBaseNode.getNode() == null) return;
      if (myBaseNode.getNode() == event.getRoot()) return;

      if (getLoadableNodes().contains(event.getRoot())) {
        SNodePointer nodePointer = new SNodePointer(event.getRoot());
        int index = getIndexOfTabFor(nodePointer);
        closeTab(nodePointer, index);
      }
    }

    @Override
    public void rootAdded(SModelRootEvent event) {
      SNode root = event.getRoot();
      if (!getLoadableNodes().contains(root)) {
        IOperationContext context = null;
        for (Pair<SNode, IOperationContext> p : tryToLoadNodes()) {
          if (p.o1 == root) {
            context = p.o2;
            break;
          }
        }
        if (context != null) {
          addInnerTabChecked(event.getRoot(), context);
        }
      }
    }

    @Override
    public void referenceAdded(SModelReferenceEvent event) {
      SReference reference = event.getReference();
      INodeAdapter referentNode = reference.getSourceNode().getContainingRoot().getAdapter();
      if (!myClass.isInstance(referentNode)) return;

      Map<SNode, IOperationContext> nodesMap = new HashMap<SNode, IOperationContext>();
      for (Pair<SNode, IOperationContext> p : tryToLoadNodes()) {
        nodesMap.put(p.o1, p.o2);
      }

      List<SNode> nodes = new ArrayList<SNode>(nodesMap.keySet());
      nodes.removeAll(getLoadableNodes());
      if (nodes.size() > 0) {
        SNode node = nodes.get(0);
        addInnerTabChecked(node, nodesMap.get(node));
      }
    }

    @Override
    public void referenceRemoved(SModelReferenceEvent event) {
      SReference reference = event.getReference();
      INodeAdapter referentNode = reference.getSourceNode().getContainingRoot().getAdapter();
      if (!myClass.isInstance(referentNode)) return;

      Map<SNode, IOperationContext> nodesMap = new HashMap<SNode, IOperationContext>();
      for (Pair<SNode, IOperationContext> p : tryToLoadNodes()) {
        nodesMap.put(p.o1, p.o2);
      }

      List<SNode> nodes = getLoadableNodes();
      nodes.removeAll(nodesMap.keySet());

      if (nodes.size() > 0) {
        SNodePointer nodePointer = new SNodePointer(nodes.get(0));
        closeTab(nodePointer, getIndexOfTabFor(nodePointer));
      }
    }

    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      SNodePointer pointer = new SNodePointer(event.getNode());
      if (event.getPropertyName().equals(INamedConcept.NAME) && myLoadableNodes.contains(pointer)) {
        int index = getIndexOfTabFor(pointer);
        assert index >= 0 : "tab for node not found";
        myInnerTabbedPane.setTitleAt(index, event.getNewPropertyValue());
      }
    }
  }
}
