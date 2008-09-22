package jetbrains.mps.ide.tabbedEditor.tabs;

import jetbrains.mps.core.structure.BaseConcept;
import jetbrains.mps.ide.tabbedEditor.ILazyTab;
import jetbrains.mps.ide.tabbedEditor.TabbedEditor;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.util.Condition;

import javax.swing.JComponent;
import javax.swing.SwingUtilities;
import java.util.Collections;
import java.util.List;

public abstract class BaseSingletabbedTab implements ILazyTab {
  private static Logger LOG = Logger.getLogger(BaseSingletabbedTab.class);

  private SModelRepositoryAdapter myWeakSModelRepositoryListener;
  private SModelListener myListener;
  private EditorComponent myComponent;
  private SNodePointer myBaseNode;
  private SNodePointer myLoadableNode;
  private Class<? extends BaseAdapter> myClass = BaseConcept.class;
  private TabbedEditor myTabbedEditor;

  protected BaseSingletabbedTab(TabbedEditor tabbedEditor, SNode baseNode, Class<? extends BaseAdapter> adapterClass, final Condition<SModelDescriptor> listenCondition) {
    myTabbedEditor = tabbedEditor;
    myBaseNode = new SNodePointer(baseNode);
    myClass = adapterClass;
    myListener = new SModelAdapter() {
      public void rootRemoved(SModelRootEvent event) {
        if (myBaseNode.getNode() == null) return;
        if (myBaseNode.getNode() == event.getRoot()) return;

        if ((getLoadableNode() == null) || (getLoadableNode() == event.getRoot())) {
          myTabbedEditor.getTabbedPane().removeTab(BaseSingletabbedTab.this);
          myComponent = null;
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              myTabbedEditor.getTabbedPane().initTab(BaseSingletabbedTab.this);
            }
          });
        }
      }

      public void referenceAdded(SModelReferenceEvent event) {
        SReference reference = event.getReference();
        INodeAdapter sourceNode = BaseAdapter.fromNode(reference.getSourceNode());
        if (myClass.isInstance(sourceNode.getContainingRoot()) &&
          reference.getTargetNode() == getBaseNode()) {
          myTabbedEditor.getTabbedPane().removeTab(BaseSingletabbedTab.this);
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              myTabbedEditor.getTabbedPane().initTab(BaseSingletabbedTab.this);
            }
          });
        }
      }
    };

    final SModelDescriptor nodeModelDescriptor = baseNode.getModel().getModelDescriptor();
    if (nodeModelDescriptor != null) {
      nodeModelDescriptor.addWeakModelListener(myListener);
    } else {
      myWeakSModelRepositoryListener = new SModelRepositoryAdapter() {
        public void modelAdded(SModelDescriptor modelDescriptor) {
          if (ProjectModels.isProjectModel(modelDescriptor.getSModelReference())) {
            return;
          }
          if (listenCondition.met(modelDescriptor)) {
            modelDescriptor.addWeakModelListener(myListener);
            SModelRepository.getInstance().removeModelRepositoryListener(this);
          }
        }
      };
      SModelRepository.getInstance().addWeakModelRepositoryListener(myWeakSModelRepositoryListener);
    }
  }

  protected abstract SNode tryToLoadNode();

  protected abstract SNode createLoadableNode();

  protected SNode getBaseNode() {
    return myBaseNode.getNode();
  }

  protected SNode getLoadableNode() {
    SNode node = null;
    if (myLoadableNode != null) {
      node = myLoadableNode.getNode();
    }
    return node;
  }

  public JComponent getComponent() {
    if (myComponent == null) {
      ModelAccess.instance().runReadAction(new Runnable() {
        public void run() {
          tryToInitComponent();
        }
      });
    }

    if (myComponent == null) return null;
    return myComponent.getExternalComponent();
  }

  public List<EditorComponent> getEditorComponents() {
    if (myComponent != null) {
      return Collections.singletonList(myComponent);
    } else {
      return Collections.emptyList();
    }
  }

  public EditorComponent getCurrentEditorComponent() {
    return myComponent;
  }

  protected IOperationContext getOperationContext() {
    return myTabbedEditor.getOperationContext();
  }

  private boolean tryToInitComponent() {
    SNode loadableNode = null;
    try {
      loadableNode = tryToLoadNode();
    } catch (Throwable t) {
      LOG.error(t);
    }

    if (loadableNode != null) {
      IOperationContext operationContext = getOperationContext();
      myComponent = new NodeEditorComponent(operationContext);
      myComponent.editNode(loadableNode, operationContext);
      myLoadableNode = new SNodePointer(loadableNode);
      if (!loadableNode.getModel().hasModelListener(myListener)) {
        loadableNode.getModel().addWeakSModelListener(myListener);
      }
      return true;
    }


    return false;
  }

  public void create() {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        createEditor();
      }
    });
    myTabbedEditor.fireStateChanged();
  }

  private void createEditor() {
    if (tryToInitComponent()) return;

    SNode node = createLoadableNode();

    if (node != null) {
      node.setProperty(SModelTreeNode.PACK, getBaseNode().getProperty(SModelTreeNode.PACK));
    }

    tryToInitComponent();
  }
}
