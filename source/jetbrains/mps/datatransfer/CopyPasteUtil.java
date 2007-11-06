package jetbrains.mps.datatransfer;

import jetbrains.mps.baseLanguage.structure.BaseMethodCall;
import jetbrains.mps.ide.AddRequiredModelImportsDialog;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.text.Parser;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.GlobalScope;
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

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 22.07.2005
 * Time: 17:53:14
 * To change this template use File | Settings | File Templates.
 */
public class CopyPasteUtil {

  private static final Logger LOG = Logger.getLogger(CopyPasteUtil.class);

  private static final ModelOwner ourModelOwner = new ModelOwner() {
  };


  static ModelOwner getCopyPasteOwner() {
    return ourModelOwner;
  }


  private static void processImportsAndLanguages(HashSet<SModelUID> necessaryImports, HashSet<String> necessaryLanguages, Set<SNode> sourceNodes, Set<SReference> allReferences) {
    necessaryImports.clear();
    necessaryLanguages.clear();
    SModel sourceModel = sourceNodes.iterator().next().getModel();
    for (SNode node : sourceNodes) {
      String languageNamespace = NameUtil.namespaceFromConceptFQName(node.getConceptFqName());
      necessaryLanguages.add(languageNamespace);
    }
    for (SReference ref : allReferences) {
      if (ref.isExternal()) {
        SModelUID targetModelUID = ref.getTargetModelUID();
        necessaryImports.add(targetModelUID);
      }
    }
    necessaryImports.add(sourceModel.getUID());
  }

  public static PasteNodeData createNodeDataIn(List<SNode> sourceNodes, Map<SNode, Set<SNode>> sourceNodesAndAttributes) {
    if (sourceNodes.isEmpty()) return new PasteNodeData(new ArrayList<SNode>(), null, null, null, null, null);
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
    HashSet<SModelUID> necessaryImports = new HashSet<SModelUID>();
    HashSet<String> necessaryLanguages = new HashSet<String>();
    HashSet<String> necessaryDevKits = new HashSet<String>();  // todo populate
    SModel fakeModel = copyModelProperties(model);
    processImportsAndLanguages(necessaryImports, necessaryLanguages, sourceNodesToNewNodes.keySet(), allReferences);
    for (SNode copiedNode : result) {
      copiedNode.changeModel(fakeModel);
    }
    processReferencesIn(sourceNodesToNewNodes, allReferences);

    model.setLoading(false);
    return new PasteNodeData(result, null, fakeModel, necessaryLanguages, necessaryImports, necessaryDevKits);
  }

  public static PasteNodeData createNodeDataOut(List<SNode> sourceNodes, SModel model, SModel modelProperties,
                                                Set<String> necessaryLanguages,
                                                Set<SModelUID> necessaryImports,
                                                Set<String> necessaryDevKits) {
    if (sourceNodes.isEmpty()) return new PasteNodeData(new ArrayList<SNode>(), null, null, null, null, null);
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
    Map<String, String> properties = sourceNode.getProperties();
    for (String property : properties.keySet()) {
      targetNode.setProperty(property, properties.get(property), false);
    }

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
          newReference = SReference.create(sourceReference.getRole(), newSourceNode, null, null, sourceReference.getResolveInfo());
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
        if (BaseAdapter.isInstance(newSourceNode, BaseMethodCall.class) && oldTargetNode != null) {
          newReference = SReference.create(sourceReference.getRole(), newSourceNode, oldTargetNode);
        } else {
          String resolveInfo = oldTargetNode == null ? sourceReference.getResolveInfo() : oldTargetNode.getName(); // todo: getRefName()
          if (resolveInfo != null) {
            newReference = SReference.create(sourceReference.getRole(), newSourceNode, null, null, resolveInfo);
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
    SModelUID modelUID = model.getUID();
    SModel newModel = new SModel(new SModelUID(modelUID.getLongName(), SModelStereotype.INTERNAL_COPY));
    for (String language : model.getExplicitlyImportedLanguages())
      newModel.addLanguage(language);
    for (SModelUID importedModel : model.getImportedModelUIDs())
      newModel.addImportedModel(importedModel);
    for (String devKit : model.getDevKitNamespaces())
      newModel.addDevKit(devKit);
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
    } else if (content.isDataFlavorSupported(SModelDataFlavor.stringFlavor)
            && canReceiveText(model)) {// string -> text lang nodes
      String s = TextPasteUtil.getStringFromTransferable(content);
      if (s == null || s.length() <= 0) return PasteNodeData.emptyPasteNodeData(model);
      @Hack List<SNode> nodes = Parser.parse(s, model, "jetbrains.mpswiki");
      if (nodes == null) return PasteNodeData.emptyPasteNodeData(model);
      return new PasteNodeData(nodes,
              new HashSet<SReference>(), model,
              new HashSet<String>(),
              new HashSet<SModelUID>(),
              new HashSet<String>());
    }

    return PasteNodeData.emptyPasteNodeData(model);
  }


  public static SNode getNodeFromClipboard(SModel model) {
    return getNodesFromClipboard(model).get(0);
  }

  public static boolean addImportsAndLanguagesToModel(SModel targetModel, SModel modelPropertiesPattern, Set<String> necessaryLanguages, Set<SModelUID> necessaryImports, IOperationContext context) {
    List<String> additionalLanguages = new ArrayList<String>();
    List<SModelUID> additionalModels = new ArrayList<SModelUID>();
    List<String> additionalDevKits = new ArrayList<String>();
    List<String> languagesFromPattern = new ArrayList<String>(modelPropertiesPattern.getExplicitlyImportedLanguages());
    List<SModelUID> importsFromPattern = new ArrayList<SModelUID>(modelPropertiesPattern.getImportedModelUIDs());
    List<String> devKitsFromPattern = new ArrayList<String>(modelPropertiesPattern.getDevKitNamespaces());

    importsFromPattern.addAll(necessaryImports);
    languagesFromPattern.addAll(necessaryLanguages);


    for (SModelUID modelUID : importsFromPattern) {
      if (!(targetModel.hasImportedModel(modelUID)) && !(targetModel.getUID().equals(modelUID)))
        additionalModels.add(modelUID);
    }
    for (String devKit : devKitsFromPattern) {
      if (!(targetModel.hasDevKit(devKit))) additionalDevKits.add(devKit);
    }
    for (String namespace : languagesFromPattern) {
      if (!targetModel.hasLanguage(namespace)) additionalLanguages.add(namespace);
    }

    necessaryImports.retainAll(additionalModels);
    necessaryLanguages.retainAll(additionalLanguages);
    for (String devKitName : additionalDevKits) {
      DevKit devKit = context.getScope().getDevKit(devKitName);
      if (devKit != null) necessaryLanguages.removeAll(devKit.getLanguageNamespaces());
    }

    if ((!additionalModels.isEmpty()) || (!additionalLanguages.isEmpty())) {
      AddRequiredModelImportsDialog dialog = new AddRequiredModelImportsDialog(context.getMainFrame(), targetModel,
              additionalModels,
              additionalLanguages,
              additionalDevKits,
              necessaryImports,
              necessaryLanguages);
      dialog.setModal(true);
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
    } else if (content.isDataFlavorSupported(SModelDataFlavor.stringFlavor) && canReceiveText(modelToPaste)) {
      String s = TextPasteUtil.getStringFromTransferable(content);
      return (s != null && s.length() > 0 && s.indexOf(' ') > -1);
    }
    return false;
  }

  @Hack
  public static boolean canReceiveText(SModel model) {
    return (model.getLanguageNamespaces(GlobalScope.getInstance()).contains("jetbrains.textLanguage")
            || model.getLanguageNamespaces(GlobalScope.getInstance()).contains("jetbrains.mpswiki"));
  }
}
