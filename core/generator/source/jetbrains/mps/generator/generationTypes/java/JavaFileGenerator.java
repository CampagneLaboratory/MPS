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
package jetbrains.mps.generator.generationTypes.java;

import jetbrains.mps.baseLanguage.textGen.BLDependenciesCache;
import jetbrains.mps.baseLanguage.textGen.ModelDependencies;
import jetbrains.mps.baseLanguage.textGen.RootDependencies;
import jetbrains.mps.debug.api.info.DebugInfoCache;
import jetbrains.mps.traceInfo.*;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.generator.TransientSModel;
import jetbrains.mps.generator.cache.CacheGenerator;
import jetbrains.mps.generator.generationTypes.StreamHandler;
import jetbrains.mps.generator.fileGenerator.TextGenerationUtil;
import jetbrains.mps.generator.fileGenerator.TextGenerationUtil.TextGenerationResult;
import jetbrains.mps.generator.impl.dependencies.GenerationDependencies;
import jetbrains.mps.generator.impl.dependencies.GenerationRootDependencies;
import jetbrains.mps.generator.template.TemplateQueryContext;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.textGen.TextGenManager;
import jetbrains.mps.util.NameUtil;

import java.util.LinkedHashMap;
import java.util.Map;

class JavaFileGenerator {
  private static final Logger LOG = Logger.getLogger(JavaFileGenerator.class);

  private final StreamHandler myStreamHandler;
  private CacheGenerator[] myCacheGenerators;

  public JavaFileGenerator(StreamHandler streamHandler, CacheGenerator ...generators) {
    myStreamHandler = streamHandler;
    myCacheGenerators = generators;
  }

  public boolean handleOutput(IOperationContext context, GenerationStatus status) {
    if (!status.isOk()) return false;

    Map<SNode, String> outputNodeContents = new LinkedHashMap<SNode, String>();
    if (!generateText(context, status, outputNodeContents)) return false;

    generateFiles(status, outputNodeContents);
    generateCaches(status);
    return true;
  }

  private boolean generateText(IOperationContext context, GenerationStatus status, Map<SNode, String> outputNodeContents) {
    boolean hasErrors = false;
    ModelDependencies dependRoot = new ModelDependencies();
    DebugInfo info = new DebugInfo();
    status.setDebugInfo(info);
    status.setBLDependencies(dependRoot);

    SModel outputModel = status.getOutputModel();
    if (outputModel != null) {
      for (SNode outputNode : outputModel.getRoots()) {
        try {
          TextGenerationResult result = TextGenerationUtil.generateText(context, outputNode);
          String fileName = outputNode.getName() + "." + TextGenManager.instance().getExtension(outputNode);
          fillDebugInfo(info, outputNode, fileName, result);
          fillDependencies(dependRoot, outputNode, fileName, result);

          hasErrors |= result.hasErrors();
          outputNodeContents.put(outputNode, result.getText());
        } finally {
          TextGenManager.reset();
        }
      }
    }
    return !hasErrors;
  }

  private void fillDebugInfo(DebugInfo info, SNode outputNode, String fileName, TextGenerationResult result) {
    Map<SNode, PositionInfo> positions = result.getPositions();
    Map<SNode, ScopePositionInfo> scopePositions = result.getScopePositions();
    Map<SNode, UnitPositionInfo> unitPositions = result.getUnitPositions();
    if (positions == null && scopePositions == null && unitPositions == null) {
      return;
    }
    if (positions != null) {
      for (SNode out : positions.keySet()) {
        SNode input = out;
        input = getOriginalInputNodeForNearestParent(input);
        if (input != null && !(input.isDisposed())) {
          PositionInfo positionInfo = result.getPositions().get(out);
          positionInfo.setNodeId(input.getId());
          info.setModel(input.getModel());
          positionInfo.setFileName(fileName);
          info.addPosition(positionInfo, input.getTopmostAncestor().getId());
        }
      }
    }
    if (scopePositions != null) {
      for (SNode out : scopePositions.keySet()) {
        SNode input = out;
        input = getOriginalInputNodeForNearestParent(input);
        if (input != null && !(input.isDisposed())) {
          ScopePositionInfo positionInfo = result.getScopePositions().get(out);
          positionInfo.setNodeId(input.getId());
          info.setModel(input.getModel());
          positionInfo.setFileName(fileName);
          Map<SNode, VarInfo> varMap = positionInfo.getTempVarInfoMap();
          for (SNode varNode : varMap.keySet()) {
            SNode originalVar = getOriginalInputNode(varNode);
            VarInfo varInfo = varMap.get(varNode);
            if (originalVar != null && !(originalVar.isDisposed())) {
              String s = originalVar.getId();
              varInfo.setNodeId(s);
            } else {
              positionInfo.removeVarInfo(varInfo);
            }
          }
          positionInfo.clearTempVarInfoMap();
          info.addScopePosition(positionInfo, input.getTopmostAncestor().getId());
        }
      }
    }
    if (unitPositions != null) {
      for (SNode out : unitPositions.keySet()) {
        SNode input = out;
        input = getOriginalInputNodeForNearestParent(input);
        UnitPositionInfo positionInfo = result.getUnitPositions().get(out);
        positionInfo.setFileName(fileName);
        String id = null;
        if (input != null && !(input.isDisposed())) {
          positionInfo.setNodeId(input.getId());
          info.setModel(input.getModel());
          id = input.getTopmostAncestor().getId();
        }
        info.addUnitPosition(positionInfo, id);
      }
    }
  }

  private SNode getOriginalInputNodeForNearestParent(SNode output) {
    while (output != null) {
      SNode node = getOriginalInputNode(output);
      if (node != null) {
        return node;
      }
      output = output.getParent();
    }
    return null;
  }

  private SNode getOriginalInputNode(SNode input) {
    while (input != null && !(input.isDisposed())
      && (input.getModel() instanceof TransientSModel)) {
      input = (SNode) input.getUserObject(TemplateQueryContext.ORIGINAL_DEBUG_NODE);
    }
    return input;
  }

  private void fillDependencies(ModelDependencies root, SNode outputNode, String fileName, TextGenerationResult result) {
    if (result.hasDependencies()) {
      root.addDependencies(new RootDependencies(NameUtil.nodeFQName(outputNode), fileName, result.getDependencies(TextGenManager.DEPENDENCY),
        result.getDependencies(TextGenManager.EXTENDS)));
    }
  }

  private String getFileName(SNode outputRootNode) {
    String extension = TextGenManager.instance().getExtension(outputRootNode);
    return (extension == null) ? outputRootNode.getName() : outputRootNode.getName() + "." + extension;
  }

  private void generateFiles(GenerationStatus status, Map<SNode, String> outputNodeContents) {
    for (SNode outputRootNode : outputNodeContents.keySet()) {
      String name = getFileName(outputRootNode);
      myStreamHandler.saveStream(name, outputNodeContents.get(outputRootNode), false);
    }

    DebugInfo debugInfoCache = null;
    ModelDependencies modelDep = null;

    GenerationDependencies dependencies = status.getDependencies();
    if (dependencies != null) {
      // process unchanged files
      for (GenerationRootDependencies rdep : dependencies.getUnchangedDependencies()) {
        for (String filename : rdep.getFiles()) {
          if (myStreamHandler.touch(filename, false)) {
            // re-register baselanguage dependencies
            if (modelDep == null) {
              modelDep = BLDependenciesCache.getInstance().get(status.getOriginalInputModel());
            }
            if (modelDep != null) {
              RootDependencies root = modelDep.getDependency(filename);
              if (root != null) {
                status.getBLDependencies().replaceRoot(root);
              }
            }
          }
        }

        // re-register debug
        if (debugInfoCache == null) {
          debugInfoCache = DebugInfoCache.getInstance().get(status.getOriginalInputModel());
        }
        if (debugInfoCache != null) {
          DebugInfoRoot infoRoot = debugInfoCache.getRootInfo(rdep.getRootId());
          if (infoRoot != null) {
            status.getDebugInfo().replaceRoot(infoRoot);
          }
        }
      }
    }
  }

  private void generateCaches(GenerationStatus status) {
    for (CacheGenerator g : myCacheGenerators) {
      try {
        g.generateCache(status, myStreamHandler);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }
}
