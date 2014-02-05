/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.ide.devkit.generator;

import com.intellij.openapi.project.Project;
import jetbrains.mps.generator.IGenerationTracer;
import jetbrains.mps.generator.runtime.TemplateMappingScript;
import jetbrains.mps.ide.devkit.generator.TracerNode.Kind;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.util.Pair;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class GenerationTracer implements IGenerationTracer {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(GenerationTracer.class));

  private boolean myActive = false;

  private List<TracerNode> myCurrentTracingData;
  private TracerNode myCurrentTraceNode;
  private Map<String, List<TracerNode>> myTracingDataByInputModel;
  private Map<String, List<TracerNode>> myTracingDataByOutputModel;
  private ModelsProcessedByScripts myModelsProcessedByScripts;

  private Map<SNode, TracerNode> myOutputNodesToReplaceLater = new HashMap<SNode, TracerNode>();
  private GenerationTracerViewTool myTool;

  public GenerationTracer(Project project) {
  }

  void setTracerViewTool(GenerationTracerViewTool tool) {
    myTool = tool;
  }

  @Override
  public void startTracing() {
    myActive = true;
    myTracingDataByInputModel = new HashMap<String, List<TracerNode>>();
    myTracingDataByOutputModel = new HashMap<String, List<TracerNode>>();
    myModelsProcessedByScripts = new ModelsProcessedByScripts();
    myCurrentTracingData = null;
    myCurrentTraceNode = null;

    if (myTool != null) {
      myTool.setTracingDataIsAvailable(false);
    }
  }

  @Override
  public void finishTracing() {
    myActive = false;
    if (myTool != null) {
      myTool.setTracingDataIsAvailable(hasTracingData());
    }
  }

  @Override
  public void discardTracing() {
    myActive = false;
    myTracingDataByInputModel = null;
    myTracingDataByOutputModel = null;
    myModelsProcessedByScripts = null;
    myCurrentTracingData = null;
    myCurrentTraceNode = null;

    if (myTool != null) {
      myTool.setTracingDataIsAvailable(false);
    }
  }

  @Override
  public boolean isTracing() {
    return myActive;
  }

  @Override
  public void startTracing(SModel inputModel, SModel outputModel) {
    if (!myActive) return;
    myCurrentTracingData = new ArrayList<TracerNode>();
    myTracingDataByInputModel.put(inputModel.getReference().toString(), myCurrentTracingData);
    myTracingDataByOutputModel.put(outputModel.getReference().toString(), myCurrentTracingData);
    myCurrentTraceNode = null;
  }

  @Override
  public void discardTracing(SModel inputModel, SModel outputModel) {
    if (!myActive) return;
    myTracingDataByInputModel.remove(inputModel.getReference().toString());
    myTracingDataByOutputModel.remove(outputModel.getReference().toString());
    myCurrentTracingData = null;
    myCurrentTraceNode = null;
  }

  @Override
  public void pushInputNode(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.INPUT, node));
  }

  @Override
  public void closeInputNode(SNodeReference node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.INPUT, node);
  }

  @Override
  public void popInputNode(SNodeReference node) {
    if (!myActive) return;
    pop(TracerNode.Kind.INPUT, node);
  }

  @Override
  public void pushRule(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.RULE, node));
  }

  @Override
  public void closeRule(SNodeReference node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.RULE, node);
  }

  @Override
  public void pushRuleConsequence(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.RULE_CONSEQUENCE, node));
  }

  @Override
  public void pushSwitch(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.SWITCH, node));
  }

  @Override
  public void pushMacro(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.MACRO, node));
  }

  @Override
  public void closeMacro(SNodeReference node) {
    if (!myActive) return;
    closeBranch(TracerNode.Kind.MACRO, node);
  }

  @Override
  public void pushOutputNode(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(TracerNode.Kind.OUTPUT, node));
  }

  @Override
  public void pushOutputNodeToReplaceLater(SNode node) {
    if (!myActive) return;
    if (myCurrentTraceNode == null) {
      LOG.errorWithTrace("can't define parent tracer node");
      return;
    }
    myOutputNodesToReplaceLater.put(node, myCurrentTraceNode);
  }

  @Override
  public void replaceOutputNode(SNode node, SNode newOutputNode) {
    if (!myActive) return;
    TracerNode parentTracerNode = myOutputNodesToReplaceLater.get(node);
    myOutputNodesToReplaceLater.remove(node);
    if (parentTracerNode == null) {
      LOG.errorWithTrace("can't define parent tracer node");
      return;
    }
    parentTracerNode.addChild(new TracerNode(Kind.OUTPUT, new jetbrains.mps.smodel.SNodePointer(newOutputNode)));
  }

  @Override
  public void pushTemplateNode(SNodeReference node) {
    if (!myActive) return;
    push(new TracerNode(Kind.TEMPLATE, node));
  }

  @Override
  public void closeTemplateNode(SNodeReference node) {
    if (!myActive) return;
    closeBranch(Kind.TEMPLATE, node);
  }

  @Override
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

  private void closeBranch(Kind kind, SNodeReference node) {
    TracerNode checkNode = myCurrentTraceNode;
    while (checkNode != null) {
      if (checkNode.isThis(kind, node)) {
        myCurrentTraceNode = checkNode.getParent(); // can be null
        return;
      }
      checkNode = checkNode.getParent();
    }

    LOG.errorWithTrace("tracer node not found. kind:" + kind + " node: " + SNodeUtil.getDebugText(node.resolve(MPSModuleRepository.getInstance())));
    myCurrentTraceNode = null; // reset branch
  }

  /**
   * removes node from tree
   */
  private void pop(Kind kind, SNodeReference node) {
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

    LOG.errorWithTrace("tracer node not found. kind:" + kind + " node: " + SNodeUtil.getDebugText(node.resolve(MPSModuleRepository.getInstance())));
    myCurrentTraceNode = null; // reset branch
  }

  public boolean hasTracingData() {
    if (myTracingDataByInputModel == null || myTracingDataByInputModel.isEmpty()) return false;
    for (List<TracerNode> list : myTracingDataByInputModel.values()) {
      if (!list.isEmpty()) return true;
    }
    return false;
  }

  public boolean hasTraceInputData(SModelReference modelReference) {
    if (getRootTracerNodes(Kind.INPUT, modelReference) != null) {
      return true;
    }
    return myModelsProcessedByScripts != null && myModelsProcessedByScripts.hasInput(modelReference);
  }

  @Nullable
  public TracerNode buildTraceInputTree(@NotNull SNode node) {
    List<TracerNode> tracerNodes = findAllTopmostTracerNodes(Kind.INPUT, node.getReference());
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
    List<TemplateMappingScript> mappingScripts = myModelsProcessedByScripts.getScriptsForInput(node.getModel());
    if (mappingScripts == null) return null;
    SModelReference reference = myModelsProcessedByScripts.getOutputForInput(node.getModel());
    if (reference == null) return null;
    SModel outputModel = SModelRepository.getInstance().getModelDescriptor(reference);
    if (outputModel == null) return null;
    SNode inputNode = node;
    SNode outputNode = null;
    while (inputNode != null) {
      SNodeId nodeId = SNodeId.fromString(inputNode.getNodeId().toString());
      assert nodeId != null : "wrong node id string";
      outputNode = outputModel.getNode(nodeId);
      if (outputNode != null) break;
      inputNode = inputNode.getParent();
    }

    TracerNode inputTracerNode = new TracerNode(Kind.INPUT, new jetbrains.mps.smodel.SNodePointer(node));
    TracerNode tracerNode = inputTracerNode;
    for (TemplateMappingScript mappingScript : mappingScripts) {
      TracerNode childTracerNode = new TracerNode(Kind.MAPPING_SCRIPT, mappingScript.getScriptNode());
      tracerNode.addChild(childTracerNode);
      tracerNode = childTracerNode;
    }
    if (outputNode != null) {
      if (inputNode == node) {
        tracerNode.addChild(new TracerNode(Kind.OUTPUT, new jetbrains.mps.smodel.SNodePointer(outputNode)));
      } else {
        tracerNode.addChild(new TracerNode(Kind.APPROXIMATE_OUTPUT, new jetbrains.mps.smodel.SNodePointer(outputNode)));
      }
    }

    return inputTracerNode;
  }

  public boolean hasTracebackData(SModelReference modelReference) {
    if (getRootTracerNodes(Kind.OUTPUT, modelReference) != null) {
      return true;
    }
    return myModelsProcessedByScripts != null && myModelsProcessedByScripts.hasOutput(modelReference);
  }

  public TracerNode buildTracebackTree(SNode node) {
    TracerNode tracerNode1 = findTracerNode(Kind.OUTPUT, new jetbrains.mps.smodel.SNodePointer(node));
    if (tracerNode1 != null) {
      return buildTracebackTree(tracerNode1, 0);
    }

    // may be output is produced by scripts?
    List<TemplateMappingScript> mappingScripts = myModelsProcessedByScripts.getScriptsForOutput(node.getModel());
    if (mappingScripts == null) return null;
    SModelReference reference = myModelsProcessedByScripts.getInputForOutput(node.getModel());
    if (reference == null) return null;
    SModel inputModel = SModelRepository.getInstance().getModelDescriptor(reference);
    if (inputModel == null) return null;
    SNode outputNode = node;
    SNode inputNode = null;
    while (outputNode != null) {
      SNodeId nodeId = SNodeId.fromString(outputNode.getNodeId().toString());
      assert nodeId != null : "wrong node id string";
      inputNode = inputModel.getNode(nodeId);
      if (inputNode != null) break;
      outputNode = outputNode.getParent();
    }

    TracerNode outputTracerNode = new TracerNode(Kind.OUTPUT, new jetbrains.mps.smodel.SNodePointer(node));
    TracerNode tracerNode = outputTracerNode;
    List<TemplateMappingScript> mappingScripts_reversed = new ArrayList<TemplateMappingScript>(mappingScripts);
    Collections.reverse(mappingScripts_reversed);
    for (TemplateMappingScript mappingScript : mappingScripts_reversed) {
      TracerNode childTracerNode = new TracerNode(Kind.MAPPING_SCRIPT, mappingScript.getScriptNode());
      tracerNode.addChild(childTracerNode);
      tracerNode = childTracerNode;
    }
    if (inputNode != null) {
      if (outputNode == node) {
        tracerNode.addChild(new TracerNode(Kind.INPUT, new jetbrains.mps.smodel.SNodePointer(inputNode)));
      } else {
        tracerNode.addChild(new TracerNode(Kind.APPROXIMATE_INPUT, new jetbrains.mps.smodel.SNodePointer(inputNode)));
      }
    }

    return outputTracerNode;
  }

  @NotNull
  private List<TracerNode> findAllTopmostTracerNodes(Kind kind, SNodeReference node) {
    List<TracerNode> rootTracerNodes = getRootTracerNodes(kind, node.getModelReference());
    if (rootTracerNodes == null) return new ArrayList<TracerNode>();

    List<TracerNode> result = new ArrayList<TracerNode>();
    for (TracerNode rootTracerNode : rootTracerNodes) {
      rootTracerNode.findAllTopmost(kind, node, result);
    }
    return result;
  }

  @Nullable
  private List<TracerNode> getRootTracerNodes(Kind kind, SModelReference modelReference) {
    if (myTracingDataByInputModel == null) return null;

    if (kind == Kind.INPUT) {
      String inputModelUID = modelReference.toString();
      return myTracingDataByInputModel.get(inputModelUID);
    } else if (kind == Kind.OUTPUT) {
      String outputModelUID = modelReference.toString();
      return myTracingDataByOutputModel.get(outputModelUID);
    }

    LOG.errorWithTrace("unexpected trace node kind: " + kind);
    return null;
  }

  private TracerNode findTracerNode(Kind kind, SNodeReference node) {
    List<TracerNode> rootTracerNodes = getRootTracerNodes(kind, node.getModelReference());
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
  @Override
  public List<Pair<SNodeReference, SNodeReference>> getAllAppliedRulesWithInputNodes(SModelReference outputModelReference) {
    List<TracerNode> list = myTracingDataByOutputModel.get(outputModelReference.toString());
    List<TracerNode> ruleNodes = new ArrayList<TracerNode>();
    for (TracerNode tracerNode : list) {
      tracerNode.findAll(Kind.RULE, ruleNodes);
    }

    List<Pair<SNodeReference, SNodeReference>> result = new ArrayList<Pair<SNodeReference, SNodeReference>>();
    for (TracerNode ruleNode : ruleNodes) {
      // find input for rule
      TracerNode inputNode = ruleNode.getParent();
      while (inputNode != null && inputNode.getKind() != Kind.INPUT) {
        inputNode = inputNode.getParent();
      }
      result.add(new Pair<SNodeReference, SNodeReference>(ruleNode.getNodePointer(), inputNode != null ? inputNode.getNodePointer() : null));
    }

    return result;
  }

  /**
   * util
   */
  @Override
  public List<Pair<SNode, String>> getNodesWithTextFromCurrentBranch() {
    List<Pair<SNode, String>> result = new ArrayList<Pair<SNode, String>>();
    TracerNode currNode = myCurrentTraceNode;
    while (currNode != null) {
      SNodeReference pointer = currNode.getNodePointer();
      if (pointer != null) {
        result.add(new Pair<SNode, String>(pointer.resolve(MPSModuleRepository.getInstance()), currNode.getKind().toString()));
      } else {
        result.add(new Pair<SNode, String>(null, currNode.getKind().toString()));
      }
      currNode = currNode.getParent();
    }
    return result;
  }

  @Override
  public void registerPreMappingScripts(SModel scriptsInputModel, SModel scriptsOutputModel, List<TemplateMappingScript> preMappingScripts) {
    if (!myActive) return;
    myModelsProcessedByScripts.put(scriptsInputModel, scriptsOutputModel, preMappingScripts);
  }

  @Override
  public void registerPostMappingScripts(SModel scriptsInputModel, SModel scriptsOutputModel, List<TemplateMappingScript> postMappingScripts) {
    if (!myActive) return;
    myModelsProcessedByScripts.put(scriptsInputModel, scriptsOutputModel, postMappingScripts);
  }

  private static class ModelsProcessedByScripts {
    List<String> myInputModels = new ArrayList<String>();
    List<String> myOutputModels = new ArrayList<String>();
    List<List<TemplateMappingScript>> myScripts = new ArrayList<List<TemplateMappingScript>>();

    public void put(SModel inputModel, SModel outputModel, List<TemplateMappingScript> scripts) {
      myInputModels.add(inputModel.getReference().toString());
      myOutputModels.add(outputModel.getReference().toString());
      myScripts.add(scripts);
    }

    public boolean hasInput(SModelReference modelReference) {
      return myInputModels.contains(modelReference.toString());
    }

    public boolean hasOutput(SModelReference modelReference) {
      return myOutputModels.contains(modelReference.toString());
    }

    public List<TemplateMappingScript> getScriptsForInput(SModel model) {
      int i = myInputModels.indexOf(model.getReference().toString());
      if (i >= 0) {
        return myScripts.get(i);
      }
      return null;
    }

    public List<TemplateMappingScript> getScriptsForOutput(SModel model) {
      int i = myOutputModels.indexOf(model.getReference().toString());
      if (i >= 0) {
        return myScripts.get(i);
      }
      return null;
    }

    public SModelReference getOutputForInput(SModel model) {
      int i = myInputModels.indexOf(model.getReference().toString());
      if (i >= 0) {
        return PersistenceFacade.getInstance().createModelReference(myOutputModels.get(i));
      }
      return null;
    }

    public SModelReference getInputForOutput(SModel model) {
      int i = myOutputModels.indexOf(model.getReference().toString());
      if (i >= 0) {
        return PersistenceFacade.getInstance().createModelReference(myInputModels.get(i));
      }
      return null;
    }
  }
}
