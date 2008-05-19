package jetbrains.mps.transformation.TLBase.plugin.debug;

import jetbrains.mps.ide.IDEProjectFrame;
import jetbrains.mps.ide.toolsPane.ToolsPane;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.*;
import jetbrains.mps.transformation.TLBase.plugin.debug.TracerNode.Kind;
import jetbrains.mps.transformation.TLBase.structure.MappingScript;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Pair;

import java.util.*;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;


/**
 * Igor Alshannikov
 * Jan 16, 2008
 */
public class GenerationTracer {
  private static Logger LOG = Logger.getLogger(GenerationTracer.class);

  private MPSProject myProject;
  private boolean myActive = false;

  private List<TracerNode> myCurrentTracingData;
  private TracerNode myCurrentTraceNode;
  private Map<String, List<TracerNode>> myTracingDataByInputModel;
  private Map<String, List<TracerNode>> myTracingDataByOutputModel;
  private ModelsProcessedByScripts myModelsProcessedByScripts;

  private Map<SNode, TracerNode> myOutputNodesToReplaceLater = new HashMap<SNode, TracerNode>();

  public GenerationTracer(MPSProject project) {
    myProject = project;
  }

  private GenerationTracerViewTool getTracerViewTool() {
    return myProject.getComponentSafe(GenerationTracerViewTool.class);
  }

  public void startTracing() {
    myActive = true;
    myTracingDataByInputModel = new HashMap<String, List<TracerNode>>();
    myTracingDataByOutputModel = new HashMap<String, List<TracerNode>>();
    myModelsProcessedByScripts = new ModelsProcessedByScripts();
    myCurrentTracingData = null;
    myCurrentTraceNode = null;

    getTracerViewTool().setTracingDataIsAvailable(false);
  }

  public void finishTracing() {
    myActive = false;
    getTracerViewTool().setTracingDataIsAvailable(hasTracingData());
  }

  public boolean isTracing() {
    return myActive;
  }

  public void startTracing(SModel inputModel, SModel outputModel) {
    if (!myActive) return;
    myCurrentTracingData = new ArrayList<TracerNode>();
    myTracingDataByInputModel.put(inputModel.getUID().toString(), myCurrentTracingData);
    myTracingDataByOutputModel.put(outputModel.getUID().toString(), myCurrentTracingData);
    myCurrentTraceNode = null;
  }

  public void discardTracing(SModel inputModel, SModel outputModel) {
    if (!myActive) return;
    myTracingDataByInputModel.remove(inputModel.getUID().toString());
    myTracingDataByOutputModel.remove(outputModel.getUID().toString());
    myCurrentTracingData = null;
    myCurrentTraceNode = null;
  }

  public void pushInputNode(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.INPUT, new SNodePointer(node)));
  }

  public void closeInputNode(SNode node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.INPUT, node);
  }

  public void popInputNode(SNode node) {
    if (!myActive) return;
    pop(TracerNode.Kind.INPUT, node);
  }

  public void pushRule(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.RULE, new SNodePointer(node)));
  }

  public void closeRule(SNode node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.RULE, node);
  }

  public void pushRuleConsequence(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.RULE_CONSEQUENCE, new SNodePointer(node)));
  }

  public void pushSwitch(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.SWITCH, new SNodePointer(node)));
  }

  public void pushMacro(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.MACRO, new SNodePointer(node)));
  }

  public void closeMacro(SNode node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.MACRO, node);
  }

  public void pushOutputNode(SNode node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.OUTPUT, new SNodePointer(node)));
  }

  public void pushOutputNodeToReplaceLater(SNode node) {
    if (!myActive) return;
    if (myCurrentTraceNode == null) {
      LOG.errorWithTrace("can't define parent tracer node");
      return;
    }
    myOutputNodesToReplaceLater.put(node, myCurrentTraceNode);
  }

  public void replaceOutputNode(SNode node, SNode newOutputNode) {
    if (!myActive) return;
    TracerNode parentTracerNode = myOutputNodesToReplaceLater.get(node);
    myOutputNodesToReplaceLater.remove(node);
    if (parentTracerNode == null) {
      LOG.errorWithTrace("can't define parent tracer node");
      return;
    }
    parentTracerNode.addChild(new TracerNode(Kind.OUTPUT, new SNodePointer(newOutputNode)));
  }

  public void pushTemplateNode(SNode node) {
    if (!myActive) return;
    push(new TracerNode(Kind.TEMPLATE, new SNodePointer(node)));
  }

  public void closeTemplateNode(SNode node) {
    if (!myActive) return;
    closeBranch(Kind.TEMPLATE, node);
  }

  public void pushCopyOperation() {
    if (!myActive) return;
    push(new TracerNode(Kind.COPY_OPERATION, null));
  }

  private void push(TracerNode tracerNode) {
    if (myCurrentTraceNode == null) {
      // new root
      myCurrentTracingData.add(tracerNode);
    } else {
      myCurrentTraceNode.addChild(tracerNode);
    }

    if (myCurrentTraceNode == null) {
      if (tracerNode.getKind() != Kind.INPUT && tracerNode.getKind() != Kind.RULE) {
        LOG.errorWithTrace("node of kind '" + tracerNode.getKind() + "' can not be root");
      }
    }

    if (tracerNode.getKind() != Kind.OUTPUT) {
      // OUTPUT node is always leaf (leave 'current' unchanged)
      myCurrentTraceNode = tracerNode;
    }
  }

  private void closeBranch(Kind kind, SNode node) {
    TracerNode checkNode = myCurrentTraceNode;
    while (checkNode != null) {
      if (checkNode.isThis(kind, node)) {
        myCurrentTraceNode = checkNode.getParent(); // can be null
        return;
      }
      checkNode = checkNode.getParent();
    }

    LOG.errorWithTrace("tracer node not found. kind:" + kind + " node: " + node.getDebugText());
    myCurrentTraceNode = null; // reset branch
  }

  /**
   * removes node from tree
   */
  private void pop(Kind kind, SNode node) {
    TracerNode checkNode = myCurrentTraceNode;
    while (checkNode != null) {
      if (checkNode.isThis(kind, node)) {
        myCurrentTraceNode = checkNode.getParent(); // can be null
        if (myCurrentTraceNode != null) {
          myCurrentTraceNode.removeChild(checkNode);
        } else {
          myCurrentTracingData.remove(checkNode);
        }
        return;
      }
      checkNode = checkNode.getParent();
    }

    LOG.errorWithTrace("tracer node not found. kind:" + kind + " node: " + node.getDebugText());
    myCurrentTraceNode = null; // reset branch
  }

  public boolean hasTracingData() {
    if (myTracingDataByInputModel == null || myTracingDataByInputModel.isEmpty()) return false;
    for (List<TracerNode> list : myTracingDataByInputModel.values()) {
      if (!list.isEmpty()) return true;
    }
    return false;
  }

  public boolean hasTraceInputData(SModelUID modelUID) {
    if (getRootTracerNodes(Kind.INPUT, modelUID) != null) {
      return true;
    }
    return myModelsProcessedByScripts != null && myModelsProcessedByScripts.hasInput(modelUID);
  }

  public boolean showTraceInputData(SNode node) {
    int index = getTracerViewTool().getTabIndex(Kind.INPUT, node);
    if (index > -1) {
      getTracerViewTool().selectIndex(index);
      getTracerViewTool().showTool();
      return true;
    }

    TracerNode tracerNode = buildTraceInputTree(node);
    if (tracerNode == null) return false;
    getTracerViewTool().showTraceView(tracerNode);
    return true;
  }

  @Nullable
  private TracerNode buildTraceInputTree(SNode node) {
    List<TracerNode> tracerNodes = findAllTopmostTracerNodes(Kind.INPUT, node);
    if (!tracerNodes.isEmpty()) {
      TracerNode resultTracerNode = new TracerNode(tracerNodes.get(0).getKind(), tracerNodes.get(0).getNodePointer());
      for (TracerNode tracerNode : tracerNodes) {
        List<TracerNode> childrensCopy = tracerNode.getChildrenCopy();
        for (TracerNode childCopy : childrensCopy) {
          resultTracerNode.addChild(childCopy);
        }
      }
      return resultTracerNode;
    }

    // may be input is processed by scripts?
    List<MappingScript> mappingScripts = myModelsProcessedByScripts.getScriptsForInput(node.getModel());
    if (mappingScripts == null) return null;
    SModelUID uid = myModelsProcessedByScripts.getOutputForInput(node.getModel());
    if (uid == null) return null;
    SModelDescriptor descriptor = SModelRepository.getInstance().getModelDescriptor(uid);
    if (descriptor == null) return null;
    SModel outputModel = descriptor.getSModel();
    SNode inputNode = node;
    SNode outputNode = null;
    while (inputNode != null) {
      outputNode = outputModel.getNodeById(inputNode.getId());
      if (outputNode != null) break;
      inputNode = inputNode.getParent();
    }

    TracerNode inputTracerNode = new TracerNode(Kind.INPUT, new SNodePointer(node));
    TracerNode tracerNode = inputTracerNode;
    for (MappingScript mappingScript : mappingScripts) {
      TracerNode childTracerNode = new TracerNode(Kind.MAPPING_SCRIPT, new SNodePointer(mappingScript.getNode()));
      tracerNode.addChild(childTracerNode);
      tracerNode = childTracerNode;
    }
    if (outputNode != null) {
      if (inputNode == node) {
        tracerNode.addChild(new TracerNode(Kind.OUTPUT, new SNodePointer(outputNode)));
      } else {
        tracerNode.addChild(new TracerNode(Kind.APPROXIMATE_OUTPUT, new SNodePointer(outputNode)));
      }
    }

    return inputTracerNode;
  }

  public boolean hasTracebackData(SModelUID modelUID) {
    if (getRootTracerNodes(Kind.OUTPUT, modelUID) != null) {
      return true;
    }
    return myModelsProcessedByScripts != null && myModelsProcessedByScripts.hasOutput(modelUID);
  }

  public boolean showTracebackData(SNode node) {
    int index = getTracerViewTool().getTabIndex(Kind.OUTPUT, node);
    if (index > -1) {
      getTracerViewTool().selectIndex(index);
      getTracerViewTool().showTool();
      return true;
    }

    TracerNode tracerNode = buildTracebackTree(node);
    if (tracerNode == null) return false;
    getTracerViewTool().showTraceView(tracerNode);
    return true;
  }

  private TracerNode buildTracebackTree(SNode node) {
    {
      TracerNode tracerNode = findTracerNode(Kind.OUTPUT, node);
      if (tracerNode != null) {
        return buildTracebackTree(tracerNode, 0);
      }
    }

    // may be output is produced by scripts?
    List<MappingScript> mappingScripts = myModelsProcessedByScripts.getScriptsForOutput(node.getModel());
    if (mappingScripts == null) return null;
    SModelUID uid = myModelsProcessedByScripts.getInputForOutput(node.getModel());
    if (uid == null) return null;
    SModelDescriptor descriptor = SModelRepository.getInstance().getModelDescriptor(uid);
    if (descriptor == null) return null;
    SModel inputModel = descriptor.getSModel();
    SNode outputNode = node;
    SNode inputNode = null;
    while (outputNode != null) {
      inputNode = inputModel.getNodeById(outputNode.getId());
      if (inputNode != null) break;
      outputNode = outputNode.getParent();
    }

    TracerNode outputTracerNode = new TracerNode(Kind.OUTPUT, new SNodePointer(node));
    TracerNode tracerNode = outputTracerNode;
    List<MappingScript> mappingScripts_reversed = new ArrayList<MappingScript>(mappingScripts);
    Collections.reverse(mappingScripts_reversed);
    for (MappingScript mappingScript : mappingScripts_reversed) {
      TracerNode childTracerNode = new TracerNode(Kind.MAPPING_SCRIPT, new SNodePointer(mappingScript.getNode()));
      tracerNode.addChild(childTracerNode);
      tracerNode = childTracerNode;
    }
    if (inputNode != null) {
      if (outputNode == node) {
        tracerNode.addChild(new TracerNode(Kind.INPUT, new SNodePointer(inputNode)));
      } else {
        tracerNode.addChild(new TracerNode(Kind.APPROXIMATE_INPUT, new SNodePointer(inputNode)));
      }
    }

    return outputTracerNode;
  }

  @NotNull
  private List<TracerNode> findAllTopmostTracerNodes(Kind kind, SNode node) {
    List<TracerNode> rootTracerNodes = getRootTracerNodes(kind, node.getModel().getUID());
    if (rootTracerNodes == null) return new ArrayList<TracerNode>();

    List<TracerNode> result = new ArrayList<TracerNode>();
    for (TracerNode rootTracerNode : rootTracerNodes) {
      rootTracerNode.findAllTopmost(kind, node, result);
    }
    return result;
  }

  @Nullable
  private List<TracerNode> getRootTracerNodes(Kind kind, SModelUID modelUID) {
    if (myTracingDataByInputModel == null) return null;

    if (kind == Kind.INPUT) {
      String inputModelUID = modelUID.toString();
      return myTracingDataByInputModel.get(inputModelUID);
    } else if (kind == Kind.OUTPUT) {
      String outputModelUID = modelUID.toString();
      return myTracingDataByOutputModel.get(outputModelUID);
    }

    LOG.errorWithTrace("unexpected trace node kind: " + kind);
    return null;
  }

  private TracerNode findTracerNode(Kind kind, SNode node) {
    List<TracerNode> rootTracerNodes = getRootTracerNodes(kind, node.getModel().getUID());
    if (rootTracerNodes == null) return null;

    for (TracerNode rootTracerNode : rootTracerNodes) {
      TracerNode tracerNode = rootTracerNode.find(kind, node);
      if (tracerNode != null) {
        return tracerNode;
      }
    }
    return null;
  }

  private TracerNode buildTracebackTree(TracerNode tracerNode, int depth) {
    TracerNode tracebackNode = new TracerNode(tracerNode.getKind(), tracerNode.getNodePointer());
    if (depth >= 200) {
      // its enough
      return tracebackNode;
    }
    if (tracerNode.getParent() != null) {
      tracebackNode.addChild(buildTracebackTree(tracerNode.getParent(), depth + 1));
    }
    return tracebackNode;
  }


  /**
   * util
   */
  public List<Pair<SNode, SNode>> getAllAppiedRulesWithInputNodes(SModelUID outputModelUID) {
    List<TracerNode> list = myTracingDataByOutputModel.get(outputModelUID.toString());
    List<TracerNode> ruleNodes = new ArrayList<TracerNode>();
    for (TracerNode tracerNode : list) {
      tracerNode.findAll(Kind.RULE, ruleNodes);
    }

    List<Pair<SNode, SNode>> result = new ArrayList<Pair<SNode, SNode>>();
    for (TracerNode ruleNode : ruleNodes) {
      // find input for rule
      TracerNode inputNode = ruleNode.getParent();
      while (inputNode != null && inputNode.getKind() != Kind.INPUT) {
        inputNode = inputNode.getParent();
      }
      result.add(new Pair<SNode, SNode>(ruleNode.getNodePointer().getNode(), inputNode != null ? inputNode.getNodePointer().getNode() : null));
    }

    return result;
  }

  /**
   * util
   */
  public List<Pair<SNode, String>> getNodesWithTextFromCurrentBranch() {
    List<Pair<SNode, String>> result = new ArrayList<Pair<SNode, String>>();
    TracerNode currNode = myCurrentTraceNode;
    while (currNode != null) {
      SNodePointer pointer = currNode.getNodePointer();
      if (pointer != null) {
        result.add(new Pair<SNode, String>(pointer.getNode(), currNode.getKind().toString()));
      } else {
        result.add(new Pair<SNode, String>(null, currNode.getKind().toString()));
      }
      currNode = currNode.getParent();
    }
    return result;
  }

  public void registerPreMappingScripts(SModel scriptsInputModel, SModel scriptsOutputModel, List<MappingScript> preMappingScripts) {
    if (!myActive) return;
    myModelsProcessedByScripts.put(scriptsInputModel, scriptsOutputModel, preMappingScripts);
  }

  public void registerPostMappingScripts(SModel scriptsInputModel, SModel scriptsOutputModel, List<MappingScript> postMappingScripts) {
    if (!myActive) return;
    myModelsProcessedByScripts.put(scriptsInputModel, scriptsOutputModel, postMappingScripts);
  }

  private static class ModelsProcessedByScripts {
    List<String> myInputModels = new ArrayList<String>();
    List<String> myOutputModels = new ArrayList<String>();
    List<List<MappingScript>> myScripts = new ArrayList<List<MappingScript>>();

    public void put(SModel inputModel, SModel outputModel, List<MappingScript> scripts) {
      myInputModels.add(inputModel.getUID().toString());
      myOutputModels.add(outputModel.getUID().toString());
      myScripts.add(scripts);
    }

    public boolean hasInput(SModelUID modelUID) {
      return myInputModels.contains(modelUID.toString());
    }

    public boolean hasOutput(SModelUID modelUID) {
      return myOutputModels.contains(modelUID.toString());
    }

    public List<MappingScript> getScriptsForInput(SModel model) {
      int i = myInputModels.indexOf(model.getUID().toString());
      if (i >= 0) {
        return myScripts.get(i);
      }
      return null;
    }

    public List<MappingScript> getScriptsForOutput(SModel model) {
      int i = myOutputModels.indexOf(model.getUID().toString());
      if (i >= 0) {
        return myScripts.get(i);
      }
      return null;
    }

    public SModelUID getOutputForInput(SModel model) {
      int i = myInputModels.indexOf(model.getUID().toString());
      if (i >= 0) {
        return SModelUID.fromString(myOutputModels.get(i));
      }
      return null;
    }

    public SModelUID getInputForOutput(SModel model) {
      int i = myOutputModels.indexOf(model.getUID().toString());
      if (i >= 0) {
        return SModelUID.fromString(myInputModels.get(i));
      }
      return null;
    }
  }
}
