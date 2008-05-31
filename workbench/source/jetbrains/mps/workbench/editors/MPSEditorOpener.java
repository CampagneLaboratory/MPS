package jetbrains.mps.workbench.editors;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.ex.IdeDocumentHistory;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.*;
import jetbrains.mps.workbench.editors.MPSEditorOpenHandlerOwner;
import jetbrains.mps.ide.tabbedEditor.TabbedEditor;
import jetbrains.mps.smodel.*;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import jetbrains.mps.util.Calculable;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.bootstrap.editorLanguage.structure.ConceptEditorDeclaration;
import jetbrains.mps.bootstrap.constraintsLanguage.structure.ConceptBehavior;
import jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.NodeEditorComponent;
import jetbrains.mps.nodeEditor.EditorCell;
import jetbrains.mps.nodeEditor.AbstractEditorComponent;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.MPSProjectHolder;

import javax.swing.SwingUtilities;
import java.util.*;

public class MPSEditorOpener implements ProjectComponent {
  private static Logger LOG = Logger.getLogger(MPSEditorOpener.class);

  private Project myProject;

  private List<MPSEditorOpenHandler> myEditorOpenHandlers = new ArrayList<MPSEditorOpenHandler>();
  private Map<MPSEditorOpenHandlerOwner, Set<MPSEditorOpenHandler>> myEditorOpenHandlersToOwners = new HashMap<MPSEditorOpenHandlerOwner, Set<MPSEditorOpenHandler>>();

  public MPSEditorOpener(Project project) {
    myProject = project;
  }

  public void projectOpened() {

  }

  public void projectClosed() {

  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MPS Editor Opener";
  }

  public void initComponent() {
    myEditorOpenHandlers.add(new MPSEditorOpenHandler() {
      public SNode getBaseNode(IOperationContext context, SNode node) {
        if (node == null) return null;
        AbstractConceptDeclaration baseNode = null;
        if (node.getAdapter() instanceof ConceptEditorDeclaration) {
          baseNode = ((ConceptEditorDeclaration) node.getAdapter()).getConceptDeclaration();
        } else if (node.getAdapter() instanceof ConceptBehavior) {
          baseNode = ((ConceptBehavior) node.getAdapter()).getConcept();
        } else if (node.getAdapter() instanceof DataFlowBuilderDeclaration) {
          baseNode = ((DataFlowBuilderDeclaration) node.getAdapter()).getConceptDeclaration();
        }

        if (baseNode != null &&
          SModelUtil_new.getDeclaringLanguage(baseNode, context.getScope()) != null &&
          (Language.getModelAspect(node.getModel().getModelDescriptor()) != null
            || node.getModel().getStereotype().equals(SModelStereotype.TEMPLATES))) {
          return baseNode.getNode();
        }
        return null;
      }

      public boolean canOpen(IOperationContext context, SNode node) {
        INodeAdapter concept = BaseAdapter.fromNode(node);
        return concept instanceof AbstractConceptDeclaration &&
          SModelUtil_new.getDeclaringLanguage((AbstractConceptDeclaration) concept, context.getScope()) != null &&
          Language.getModelAspect(node.getModel().getModelDescriptor()) != null;
      }

      public IEditor open(IOperationContext context, SNode node) {
        return new ConceptDeclarationEditor(context, node);
      }
    });
  }

  public void disposeComponent() {

  }

  public SNode getBaseNode(IOperationContext context, SNode node) {    
    List<MPSEditorOpenHandler> badHandlers = new ArrayList<MPSEditorOpenHandler>();
    for (MPSEditorOpenHandler h : myEditorOpenHandlers) {
      try {
        SNode result = h.getBaseNode(context, node);
        if (result != null) {
          return result;
        }
      } catch (Exception e) {
        LOG.error(e);
      } catch (Error e) {
        LOG.error(e);
        badHandlers.add(h);
      }
    }
    myEditorOpenHandlers.removeAll(badHandlers);
    return null;
  }

  public IEditor createEditorFor(IOperationContext operationContext, SNode node) {
    IEditor nodeEditor = null;
    for (MPSEditorOpenHandler handler : myEditorOpenHandlers) {
      try {
        if (handler.canOpen(operationContext, node)) {
          nodeEditor = handler.open(operationContext, node);
          break;
        }
      } catch (Throwable t) {
        LOG.error(t);
      }
    }

    if (nodeEditor == null) {
      nodeEditor = new NodeEditor(operationContext, node);
    }
    return nodeEditor;
  }

  public void registerOpenHandler(MPSEditorOpenHandler handler, MPSEditorOpenHandlerOwner owner) {
    myEditorOpenHandlers.add(handler);

    if (!myEditorOpenHandlersToOwners.containsKey(owner)) {
      myEditorOpenHandlersToOwners.put(owner, new HashSet<MPSEditorOpenHandler>());
    }

    myEditorOpenHandlersToOwners.get(owner).add(handler);
  }

  public void unregisterOpenHandlers(MPSEditorOpenHandlerOwner owner) {
    if (!myEditorOpenHandlersToOwners.containsKey(owner)) return;

    for (MPSEditorOpenHandler handler : myEditorOpenHandlersToOwners.get(owner)) {
      myEditorOpenHandlers.remove(handler);
    }

    myEditorOpenHandlersToOwners.remove(owner);
  }

  public IEditor openNode(final SNode node) {
    ModuleContext context = ModelAccess.instance().runReadAction(new Computable<ModuleContext>() {
      public ModuleContext compute() {
        return ModuleContext.create(node, myProject.getComponent(MPSProjectHolder.class).getMPSProject());
      }
    });
    return openNode(node, context);
  }

  public IEditor openNode(final SNode node, final IOperationContext context) {
    return ModelAccess.instance().runReadAction(new Computable<IEditor>() {
      public IEditor compute() {
        final IEditor[] result = new IEditor[1];
        final Project ideaProject = context.getComponent(Project.class);
        com.intellij.openapi.command.CommandProcessor.getInstance().executeCommand(ideaProject, new Runnable() {
          public void run() {
            ideaProject.getComponent(IdeDocumentHistory.class).includeCurrentCommandAsNavigation();
            result[0] = doOpenNode(node, context);
          }
        }, "navigate", "");
        return result[0];
      }
    });
  }

  private IEditor doOpenNode(SNode node, IOperationContext context) {
    SNode containingRoot = node.getContainingRoot();

    SNode baseNode = getBaseNode(context, containingRoot);
    if (baseNode == null) {
      baseNode = containingRoot;
    }

    MPSNodeVirtualFile file = MPSNodesVirtualFileSystem.getInstance().getFileFor(baseNode);
    FileEditorManager editorManager = FileEditorManager.getInstance(myProject);

    FileEditor[] result = editorManager.openFile(file, true);

    MPSFileNodeEditor fileNodeEditor = (MPSFileNodeEditor) result[0];


    IEditor nodeEditor = fileNodeEditor.getNodeEditor();
    if (nodeEditor instanceof TabbedEditor) {
      ((TabbedEditor) nodeEditor).selectLinkedEditor(containingRoot);
      nodeEditor.getCurrentEditorComponent().requestFocus();
    }

    if (!node.isRoot()) {
      SNode currentSelectionTarget = node;
      AbstractEditorComponent component = nodeEditor.getCurrentEditorComponent();
      while (currentSelectionTarget != null) {
        EditorCell cell = component.findNodeCell(currentSelectionTarget);
        if (cell != null) {
          component.changeSelection(cell);
          break;
        }
        currentSelectionTarget = currentSelectionTarget.getParent();
      }

      if (currentSelectionTarget == null) {
        component.changeSelection(component.getRootCell());  
      }

      if (nodeEditor.getCurrentEditorComponent() instanceof NodeEditorComponent) {
        final NodeEditorComponent nec = (NodeEditorComponent) nodeEditor.getCurrentEditorComponent();
        final InspectorEditorComponent inspector = nec.getInspector();

        EditorCell cellInInspector = null;
        SNode currentTargetNode = node;
        while (cellInInspector == null && currentTargetNode != null) {
          cellInInspector = inspector.findNodeCell(currentTargetNode);
          currentTargetNode = currentTargetNode.getParent();
        }
        if (cellInInspector != null) {
          final EditorCell cellToSelect = cellInInspector;
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              nec.showInspector();
              inspector.changeSelection(cellToSelect);
              inspector.requestFocus();
            }
          });
        } else {
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              nec.requestFocus();
            }
          });
        }
      }
    }

    return nodeEditor;
  }


}
