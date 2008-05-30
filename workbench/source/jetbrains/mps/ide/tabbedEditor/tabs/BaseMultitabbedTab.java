package jetbrains.mps.ide.tabbedEditor.tabs;

import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.nodeEditor.AbstractEditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.command.AfterCommandInvocator;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.tabbedEditor.ILazyTab;
import jetbrains.mps.ide.tabbedEditor.TabbedEditor;
import jetbrains.mps.core.structure.INamedConcept;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Mapper;

import javax.swing.*;
import java.util.Set;
import java.util.HashSet;
import java.util.List;
import java.util.ArrayList;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;

public abstract class BaseMultitabbedTab implements ILazyTab {

  private Set<SNodePointer> myLoadableNodes = new HashSet<SNodePointer>();
  private List<SNodePointer> myLoadableNodesList = new ArrayList<SNodePointer>();
  protected SModelListener myListener;
  private SNodePointer myBaseNode;
  private JTabbedPane myInnerTabbedPane;
  private JPanel myComponent;
  private List<AbstractEditorComponent> myEditors = new ArrayList<AbstractEditorComponent>();
  private Class<? extends BaseAdapter> myClass;
  private TabbedEditor myTabbedEditor;

  protected BaseMultitabbedTab(TabbedEditor tabbedEditor, SNode baseNode, Class<? extends BaseAdapter> adapterClass) {
    myTabbedEditor = tabbedEditor;
    myBaseNode = new SNodePointer(baseNode);
    myClass = adapterClass;
    myListener = new SModelAdapter() {
      public void rootRemoved(SModelRootEvent event) {
        if (getLoadableNodes().contains(event.getRoot()) || getLoadableNodes().isEmpty()) {
          myTabbedEditor.getTabbedPane().getInitializedTabs().remove(BaseMultitabbedTab.this);
          myInnerTabbedPane = null;
          myComponent = null;
          myLoadableNodes.clear();
          myLoadableNodesList.clear();
          myEditors.clear();
          AfterCommandInvocator.getInstance().invokeAfterCommand(new Runnable() {
                  public void run() {
                    myTabbedEditor.getTabbedPane().initTab(BaseMultitabbedTab.this);
                  }
                });
        }
      }

      public void referenceAdded(SModelReferenceEvent event) {
        SReference reference = event.getReference();
        INodeAdapter sourceNode = BaseAdapter.fromNode(reference.getSourceNode());
        if (myClass.isInstance(sourceNode.getContainingRoot()) &&
          reference.getTargetNode() == getBaseNode()) {
          myTabbedEditor.getTabbedPane().getInitializedTabs().remove(BaseMultitabbedTab.this);
          myInnerTabbedPane = null;
          myComponent = null;
          myLoadableNodes.clear();
          myLoadableNodesList.clear();
          myEditors.clear();
          AfterCommandInvocator.getInstance().invokeAfterCommand(new Runnable() {
                  public void run() {
                    myTabbedEditor.getTabbedPane().initTab(BaseMultitabbedTab.this);
                  }
                });
        }
      }

      public void propertyChanged(SModelPropertyEvent event) {
        SNodePointer pointer = new SNodePointer(event.getNode());
        if (event.getPropertyName().equals(INamedConcept.NAME)
          && myLoadableNodes.contains(pointer)) {
          myInnerTabbedPane.setTitleAt(myLoadableNodesList.indexOf(pointer), event.getNewPropertyValue());
        }
      }
    };
  }

  protected abstract List<Pair<SNode, IOperationContext>> tryToLoadNodes();

  protected abstract Pair<SNode, IOperationContext> createLoadableNode();

  protected List<SNode> getLoadableNodes() {
    return CollectionUtil.map(myLoadableNodesList, new Mapper<SNodePointer, SNode>() {
      public SNode map(SNodePointer sNodePointer) {
        return sNodePointer.getNode();
      }
    });
  }

  protected SNode getBaseNode() {
    return myBaseNode.getNode();
  }

  public TabbedEditor getTabbedEditor() {
    return myTabbedEditor;
  }

  public AbstractEditorComponent getCurrentEditor() {
    JPanel panel = (JPanel) getComponent();
    if (panel == null) return null;
    return myEditors.get(myInnerTabbedPane.getSelectedIndex());
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

  protected boolean allowsToCreateNewNode() {
    return true;
  }

  private boolean tryToInitComponent() {
    List<Pair<SNode, IOperationContext>> loadableNodes = tryToLoadNodes();

    if (!loadableNodes.isEmpty()) {
      myComponent = new JPanel(new BorderLayout());
      myInnerTabbedPane = new JTabbedPane();
      for (Pair<SNode, IOperationContext> loadableNodeAndContext : loadableNodes) {
        addInnerTab(loadableNodeAndContext.o1, loadableNodeAndContext.o2);
      }

      myComponent.add(myInnerTabbedPane, BorderLayout.CENTER);

      if (allowsToCreateNewNode()) {
        JPanel panel = new JPanel(new BorderLayout());
        panel.add(new JButton(new AbstractAction("Create new") {
          public void actionPerformed(ActionEvent e) {
            createNewInnerTab();
          }
        }), BorderLayout.WEST);
        myComponent.add(panel, BorderLayout.NORTH);
      }


      return true;
    }
    return false;
  }

  private JComponent addInnerTab(SNode loadableNode, IOperationContext operationContext) {
    AbstractEditorComponent component = new NodeEditorComponent(operationContext);
    component.editNode(loadableNode, operationContext);
    SNodePointer pointer = new SNodePointer(loadableNode);
    myLoadableNodes.add(pointer);
    myLoadableNodesList.add(pointer);
    JComponent jComponent = component.getExternalComponent();
    myInnerTabbedPane.add(loadableNode.getName(), jComponent);
    myEditors.add(component);
    SModel sModel = loadableNode.getModel();
    if (!sModel.hasModelListener(myListener)) {
      sModel.addWeakSModelListener(myListener);
    }
    return jComponent;
  }

  public List<AbstractEditorComponent> getEditorComponents() {
    return new ArrayList<AbstractEditorComponent>(myEditors);
  }

  private void createNewInnerTab() {
    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        Pair<SNode, IOperationContext> nodeAndContext = createLoadableNode();
        if (nodeAndContext != null) {
          nodeAndContext.o1.setProperty(SModelTreeNode.PACK, getBaseNode().getProperty(SModelTreeNode.PACK));
          JComponent component = addInnerTab(nodeAndContext.o1, nodeAndContext.o2);
          myInnerTabbedPane.setSelectedComponent(component);
        }
      }
    });
  }

  public void createNewItem() {
    CommandProcessor.instance().executeCommand(new Runnable() {
      public void run() {
        createEditor();
      }
    });
    myTabbedEditor.fireStateChanged();
  }

  private void createEditor() {
    if (tryToInitComponent()) return;

    Pair<SNode, IOperationContext> nodeAndContext = createLoadableNode();

    if (nodeAndContext != null) {
      nodeAndContext.o1.setProperty(SModelTreeNode.PACK, getBaseNode().getProperty(SModelTreeNode.PACK));
    }

    tryToInitComponent();
  }

  public void selectTab(int index) {
    myInnerTabbedPane.setSelectedIndex(index);
  }
}
