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
package jetbrains.mps.smodel;

import jetbrains.mps.nodeEditor.NodeReadAccessCasterInEditor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * Igor Alshannikov
 * Sep 26, 2007
 */
public class StaticReference extends SReferenceBase {
  private SNodeId myTargetNodeId;    // mature

  /**
   * create 'young' reference
   */
  public StaticReference(@NotNull String role, @NotNull SNode sourceNode, @NotNull SNode immatureTargetNode) {
    super(role, sourceNode, null, immatureTargetNode);
  }

  /**
   * create 'mature' reference
   */
  public StaticReference(@NotNull String role, @NotNull SNode sourceNode, @Nullable SModelReference targetModelReference, @Nullable SNodeId nodeId, @Nullable String resolveInfo) {
    // 'targetModelReference' can be null only if it is broken external reference
    super(role, sourceNode, targetModelReference, null);
    setResolveInfo(resolveInfo);
    myTargetNodeId = nodeId;
  }

  @Nullable
  public synchronized SNodeId getTargetNodeId() {
    if (mature()) return myTargetNodeId;
    return myImmatureTargetNode.getSNodeId();
  }

  public synchronized void setTargetNodeId(SNodeId nodeId) {
    if (!mature()) makeMature();
    myTargetNodeId = nodeId;
  }

  protected SNode getTargetNode_internal(boolean silently) {
    NodeReadAccessCasterInEditor.fireReferenceTargetReadAccessed(getSourceNode(), getTargetSModelReference(), getTargetNodeId());

    synchronized (this) {
      if (!mature()) {
        return myImmatureTargetNode;
      }
    }

    SNodeId targetNodeId = getTargetNodeId();
    if (targetNodeId == null) {
      // 'unresolved' actually.
      // It can be tmp reference created while copy/pasting a node
      return null;
    }

    SModel targetModel = getTargetModel();
    if (targetModel == null) return null;

    SNode targetNode = targetModel.getNodeById(targetNodeId);
    if (targetNode != null) return targetNode;
    targetNode = UnregisteredNodes.instance().get(targetModel.getSModelReference(), targetNodeId);
    if (targetNode == null) {
      if (!silently) {
        error("target model '" + targetModel.getSModelReference() + "' doesn't contain node with id=" + getTargetNodeId());
      }
    }

    return targetNode;
  }

  private SModel getTargetModel() {
    if (!isExternal()) {
      return getSourceNode().getModel();
    }

    // external
    SModelReference targetModelReference = getTargetSModelReference();
    if (targetModelReference == null) {
      // 'unresolved' actually.
      // It can be tmp reference created while copy/pasting a node
      return null;
    }

    SModelDescriptor current = getSourceNode().getModel().getModelDescriptor();
    // TODO
//    if(current == null) {
//      return null;
//    }

    SModelDescriptor modelDescriptor = current == null
      ? SModelRepository.getInstance().getModelDescriptor(targetModelReference)
      : current.resolveModel(targetModelReference);
    if (modelDescriptor == null) {
      return null;
    }

    SModel model = modelDescriptor.getSModel();
    if (model == null) {
      error("failed to get model '" + getTargetSModelReference() + "' from model desctiptor");
    }
    return model;
  }

  @Override
  protected void adjustMature(SNode immatureTarget) {
    myTargetNodeId = immatureTarget.getSNodeId();
  }
}
