package jetbrains.mps.datatransfer;

import com.intellij.openapi.util.Computable;
import jetbrains.mps.baseLanguage.structure.IMethodCall;
import jetbrains.mps.ide.dialogs.AddRequiredModelImportsDialog;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.text.Parser;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.ModuleReference;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.annotation.Hack;
import org.jetbrains.annotations.Nullable;

import java.awt.Toolkit;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.util.*;

public class CopyPasteUtil {
  private static final Logger LOG = Logger.getLogger(CopyPasteUtil.class);

  private static final ModelOwner ourModelOwner = new ModelOwner() {
  };

  static ModelOwner getCopyPasteOwner() {
    return ourModelOwner;
  }


  private static void processImportsAndLanguages(HashSet<SModelReference> necessaryImports, HashSet<ModuleReference> necessaryLanguages, Map<SNode, SNode> sourceNodesToNewNodes, Set<SReference> allReferences) {
    necessaryImports.clear();
    necessaryLanguages.clear();
    Set<SNode> sourceNodes = sourceNodesToNewNodes.keySet();
    for (SNode node : sourceNodes) {
      necessaryLanguages.add(node.getConceptLanguage());
    }
    for (SReference ref : allReferences) {
      if (sourceNodesToNewNodes.get(ref.getTargetNode()) == null) {
        SModelReference targetModelReference = ref.getTargetSModelReference();
        necessaryImports.add(targetModelReference);
      }
    }
  }

  public static PasteNodeData createNodeDataIn(List<SNode> sourceNodes, Map<SNode, Set<SNode>> sourceNodesAndAttributes) {
    if (sourceNodes.isEmpty()) return PasteNodeData.emptyPasteNodeData(null);
    SModel model = sourceNodes.get(0).getModel();

    List<SNode> result = new ArrayList<SNode>();
    model.setLoading(true);
    Map<SNode, SNode> sourceNodesToNewNodes = new HashMap<SNode, SNode>();
    Set<SReference> allReferences = new HashSet<SReference>();
    for (SNode sourceNode : sourceNodes) {
      assert sourceNode.getModel() == model;
      SNode targetNode = copyNode_internal(sourceNode, sourceNodesAndAttributes, sourceNodesToNewNodes, allReferences);
      result.add(targetNode);
    }
    HashSet<SModelReference> necessaryImports = new HashSet<SModelReference>();
    HashSet<ModuleReference> necessaryLanguages = new HashSet<ModuleReference>();
    HashSet<ModuleReference> necessaryDevKits = new HashSet<ModuleReference>();  // todo populate
    SModel fakeModel = copyModelProperties(model);
    processImportsAndLanguages(necessaryImports, necessaryLanguages, sourceNodesToNewNodes, allReferences);
    for (SNode copiedNode : result) {
      copiedNode.changeModel(fakeModel);
    }
    processReferencesIn(sourceNodesToNewNodes, allReferences);

    model.setLoading(false);
    return new PasteNodeData(result, null, fakeModel, necessaryLanguages, necessaryImports, necessaryDevKits);
  }

  public static PasteNodeData createNodeDataOut(List<SNode> sourceNodes, SModel model, SModel modelProperties,
                                                Set<ModuleReference> necessaryLanguages,
                                                Set<SModelReference> necessaryImports,
                                                Set<ModuleReference> necessaryDevKits) {
    if (sourceNodes.isEmpty()) return PasteNodeData.emptyPasteNodeData(null);
    List<SNode> result = new ArrayList<SNode>();
    model.setLoading(true);
    Set<SReference> referencesRequireResolve = new HashSet<SReference>();
    Map<SNode, SNode> sourceNodesToNewNodes = new HashMap<SNode, SNode>();
    Set<SReference> allReferences = new HashSet<SReference>();
    SModel originalModel = sourceNodes.get(0).getModel();
    originalModel.setLoading(true);
    for (SNode sourceNode : sourceNodes) {
      assert sourceNode.getModel() == originalModel;
      SNode nodeToPaste = copyNode_internal(sourceNode, null, sourceNodesToNewNodes, allReferences);
      result.add(nodeToPaste);
    }
    SNode firstNodeToPaste = result.get(0);
    SModel fakeModel = firstNodeToPaste.getModel();
    fakeModel.setLoading(true);
    for (SNode nodeToPaste : result) {
      nodeToPaste.changeModel(model);
    }
    processReferencesOut(sourceNodesToNewNodes, allReferences, referencesRequireResolve);
    for (SNode nodeToPaste : result) {
      nodeToPaste.changeModel(model);
    }
    model.setLoading(false);
    originalModel.setLoading(false);
    fakeModel.setLoading(false);
    return new PasteNodeData(result, referencesRequireResolve, modelProperties, necessaryLanguages, necessaryImports, necessaryDevKits);
  }

  private static SNode copyNode_internal(SNode sourceNode, @Nullable Map<SNode, Set<SNode>> nodesAndAttributes, Map<SNode, SNode> sourceNodesToNewNodes, Set<SReference> allReferences) {
    SNode targetNode = new SNode(sourceNode.getModel(), sourceNode.getConceptFqName());
    targetNode.putProperties(sourceNode);

    sourceNodesToNewNodes.put(sourceNode, targetNode);

    List<SReference> references = sourceNode.getReferences();
    for (SReference reference : references) {
      allReferences.add(reference);
    }

    List<SNode> children = sourceNode.getChildren();
    for (SNode sourceChild : children) {
      if (nodesAndAttributes != null) {
        if (AttributesRolesUtil.isAttributeRole(sourceChild.getRole_())) {
          Set<SNode> nodes = nodesAndAttributes.get(sourceNode);
          if (nodes != null && !nodes.contains(sourceChild)) {
            continue;
          }
        }
      }
      SNode targetChild = copyNode_internal(sourceChild, nodesAndAttributes, sourceNodesToNewNodes, allReferences);
      String role = sourceChild.getRole_();
      assert role != null;
      targetNode.addChild(role, targetChild);
    }

    return targetNode;
  }

  private static void processReferencesIn(Map<SNode, SNode> sourceNodesToNewNodes, Set<SReference> allReferences) {
    for (SReference sourceReference : allReferences) {
      SNode oldSourceNode = sourceReference.getSourceNode();
      SNode newSourceNode = sourceNodesToNewNodes.get(oldSourceNode);

      SNode oldTargetNode = sourceReference.getTargetNode();
      SNode newTargetNode = sourceNodesToNewNodes.get(oldTargetNode);

      SReference newReference;
      if (newTargetNode != null) {//if our reference points inside our node's subtree
        newReference = SReference.create(sourceReference.getRole(), newSourceNode, newTargetNode);
      } else {//otherwise it points out of our node's subtree
        if (oldTargetNode != null) {
          newReference = SReference.create(sourceReference.getRole(), newSourceNode, oldTargetNode);
        } else if (sourceReference.getResolveInfo() != null) {
          newReference = new StaticReference(sourceReference.getRole(), newSourceNode, null, null, sourceReference.getResolveInfo());
        } else {
          continue;
        }
      }
      newSourceNode.addReference(newReference);
    }
  }


  private static void processReferencesOut(Map<SNode, SNode> sourceNodesToNewNodes, Set<SReference> allReferences, Set<SReference> referencesRequireResolve) {
    for (SReference sourceReference : allReferences) {
      SNode oldSourceNode = sourceReference.getSourceNode();
      SNode newSourceNode = sourceNodesToNewNodes.get(oldSourceNode);

      SNode oldTargetNode = sourceReference.getTargetNode();
      SNode newTargetNode = sourceNodesToNewNodes.get(oldTargetNode);
      SReference newReference;
      if (newTargetNode != null) {//if our reference points inside our node's subtree
        newReference = SReference.create(sourceReference.getRole(), newSourceNode, newTargetNode);
      } else {//otherwise it points out of our node's subtree
        // prefer resolveInfo over direct reference
        // todo: ?. Method call is exception - it can't be resolved just by name.
        if (BaseAdapter.isInstance(newSourceNode, IMethodCall.class) && oldTargetNode != null) {
          newReference = SReference.create(sourceReference.getRole(), newSourceNode, oldTargetNode);
        } else {
          String resolveInfo = oldTargetNode == null ? sourceReference.getResolveInfo() : oldTargetNode.getName(); // todo: getRefName()
          if (resolveInfo != null) {
            newReference = new StaticReference(sourceReference.getRole(), newSourceNode, null, null, resolveInfo);
            referencesRequireResolve.add(newReference);
          } else if (oldTargetNode != null) {
            newReference = SReference.create(sourceReference.getRole(), newSourceNode, oldTargetNode);
          } else {
            continue;
          }
        }
      }
      newSourceNode.addReference(newReference);
    }
  }


  public static SModel copyModelProperties(SModel model) {
    SModelReference modelReference = model.getSModelReference();
    SModelFqName fqName = new SModelFqName(modelReference.getLongName(), SModelStereotype.INTERNAL_COPY);
    SModel newModel = new SModel(new SModelReference(fqName, SModelId.generate()));
    for (ModuleReference language : model.getExplicitlyImportedLanguages()) {
      newModel.addLanguage(language);
    }
    for (SModelReference importedModel : model.getImportedModelUIDs()) {
      newModel.addImportedModel(importedModel);
    }

    for (ModuleReference devKit : model.getDevKitRefs()) {
      newModel.addDevKit(devKit);
    }
    
    return newModel;
  }


  public static void copyTextToClipboard(String text) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    cb.setContents(new SNodeTransferable(new ArrayList<SNode>(), text), null);
  }

  public static void copyNodesAndTextToClipboard(List<SNode> nodes, String text) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    cb.setContents(new SNodeTransferable(nodes, text), null);
  }

  public static void copyNodesAndTextToClipboard(List<SNode> nodes, Map<SNode, Set<SNode>> nodesAndAttributes, String text) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    cb.setContents(new SNodeTransferable(nodes, text, nodesAndAttributes), null);
  }

  public static void copyNodesToClipboard(List<SNode> nodes) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    cb.setContents(new SNodeTransferable(nodes), null);
  }

  public static void copyNodeToClipboard(SNode node) {
    List<SNode> list = new ArrayList<SNode>();
    list.add(node);
    copyNodesToClipboard(list);
  }

  public static List<SNode> getNodesFromClipboard(SModel model) {
    return getPasteNodeDataFromClipboard(model).getNodes();
  }

  public static PasteNodeData getPasteNodeDataFromClipboard(SModel model) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    Transferable content = cb.getContents(null);
    if (content == null) return PasteNodeData.emptyPasteNodeData(model);

    if (content.isDataFlavorSupported(SModelDataFlavor.sNode)) {
      SNodeTransferable nodeTransferable;
      try {
        nodeTransferable = (SNodeTransferable) content.getTransferData(SModelDataFlavor.sNode);
        return nodeTransferable.createNodeData(model);
      } catch (UnsupportedFlavorException e) {
        LOG.error("Exception", e);
      } catch (IOException e) {
        LOG.error("Exception", e);
      }
    }

    return PasteNodeData.emptyPasteNodeData(model);
  }


  public static SNode getNodeFromClipboard(SModel model) {
    return getNodesFromClipboard(model).get(0);
  }

  public static boolean addImportsAndLanguagesToModel(final SModel targetModel, final Set<ModuleReference> necessaryLanguages, final Set<SModelReference> necessaryImports, final IOperationContext context) {
    final List<ModuleReference> additionalLanguages = new ArrayList<ModuleReference>();
    final List<SModelReference> additionalModels = new ArrayList<SModelReference>();
    final Set<ModuleReference> necessaryDevKits = new HashSet<ModuleReference>();

    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (SModelReference modelReference : necessaryImports) {
          if (modelReference != null && !(targetModel.hasImportedModel(modelReference)) && !(targetModel.getSModelReference().equals(modelReference)))
            additionalModels.add(modelReference);
        }

        for (ModuleReference namespace : necessaryLanguages) {
          if (!targetModel.hasLanguage(namespace)) {
            additionalLanguages.add(namespace);
          }
        }

        necessaryImports.retainAll(additionalModels);
        necessaryLanguages.retainAll(additionalLanguages);
      }
    });

    if ((!necessaryImports.isEmpty()) || (!necessaryLanguages.isEmpty()) || (!necessaryDevKits.isEmpty())) {
      AddRequiredModelImportsDialog dialog = ModelAccess.instance().runReadAction(new Computable<AddRequiredModelImportsDialog>() {
        public AddRequiredModelImportsDialog compute() {
          AddRequiredModelImportsDialog dialog = new AddRequiredModelImportsDialog(context.getMainFrame(), targetModel,
            necessaryImports,
            necessaryLanguages,
            necessaryDevKits);
          dialog.setModal(true);
          return dialog;
        }
      });

      dialog.showDialog();
      return (!dialog.isCanceled());
    }
    return true;
  }


  public static boolean doesClipboardContainNode(SModel modelToPaste) {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    Transferable content = cb.getContents(null);
    boolean hasNodes = false;
    if (content.isDataFlavorSupported(SModelDataFlavor.sNode)) {
      SNodeTransferable nodeTransferable;
      try {
        nodeTransferable = (SNodeTransferable) content.getTransferData(SModelDataFlavor.sNode);
        hasNodes = nodeTransferable.containsNodes();
      } catch (UnsupportedFlavorException e) {
        LOG.error(e);
      } catch (IOException e) {
        LOG.error(e);
      }
    }

    if (hasNodes) {
      return true;
    }
    return false;
  }
}
