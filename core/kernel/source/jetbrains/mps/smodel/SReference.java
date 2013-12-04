/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import org.apache.log4j.LogManager;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.language.SAbstractLink;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModelReference;

import jetbrains.mps.generator.TransientModelsModule;
import jetbrains.mps.logging.Logger;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.util.InternUtil;
import jetbrains.mps.util.WeakSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.Set;

/**
 * User: Sergey Dmitriev
 * Date: Aug 2, 2003
 */
public abstract class SReference implements org.jetbrains.mps.openapi.model.SReference {
  public static final SReference[] EMPTY_ARRAY = new SReference[0];

  private String myRole;
  protected final SNode mySourceNode; // made protected only for assert in DynamicReference

  private volatile String myResolveInfo;

  /**
   * role must be "genuine", interned
   */
  protected SReference(String role, SNode sourceNode) {
    myRole = role;
    mySourceNode = sourceNode;
  }

  @Override
  public String getRole() {
    return myRole;
  }

  @Override
  public SNode getSourceNode() {
    return mySourceNode;
  }

  @Override
  public final SNode getTargetNode() {
    return getTargetNode_internal();
  }

  @Override
  public SReferenceLink getLink() {
    return (SReferenceLink) getSourceNode().getConcept().getLink(getRole());
  }

  @Override
  public SNodeReference getTargetNodeReference() {
    return new SNodePointer(getTargetSModelReference(), getTargetNodeId());
  }

  @Override
  @Nullable
  public abstract SModelReference getTargetSModelReference();

  @Override
  @Nullable
  public SNodeId getTargetNodeId() {
    SNode targetNode = getTargetNode();
    return targetNode == null ? null : targetNode.getNodeId();
  }

  public void makeDirect() {

  }

  public boolean makeIndirect() {
    return false;
  }

  public String getResolveInfo() {
    return myResolveInfo;
  }

  public void setResolveInfo(String info) {
    myResolveInfo = InternUtil.intern(info);
  }

  public void setRole(String newRole) {
    myRole = InternUtil.intern(newRole);
  }

  //-------------------------

  @Deprecated
  /**
   * Use method in SReferenceBase class, as when you change ref, you know what ref it is
   * @Deprecated in 3.0
   */
  public abstract void setTargetSModelReference(@NotNull SModelReference targetModelReference);

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public final SNode getTargetNodeSilently() {
    return jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(this);
  }

  protected abstract SNode getTargetNode_internal();

  @Deprecated
  /**
   * Not supposed to be used from outside. Replace with getTargetModelReference comparison
   * @Deprecated in 3.0
   */
  public abstract boolean isExternal();

  //-------- factory methods -----------

  public static SReference create(String role, SNode sourceNode, SNode targetNode) {
    if (sourceNode.getModel() != null && targetNode.getModel() != null) {
      // 'mature' reference
      return new StaticReference(role, sourceNode, targetNode.getModel().getReference(), targetNode.getNodeId(), targetNode.getName());
    }
    return new StaticReference(role, sourceNode, targetNode);
  }

  public static SReference create(String role, SNode sourceNode, SModelReference targetModelReference, SNodeId targetNodeId) {
    return new StaticReference(role, sourceNode, targetModelReference, targetNodeId, null);
  }

  public static SReference create(String role, SNode sourceNode, SModelReference targetModelReference, SNodeId targetNodeId, String resolveInfo) {
    return new StaticReference(role, sourceNode, targetModelReference, targetNodeId, resolveInfo);
  }

  public static SReference create(String role, SNode sourceNode, SNodeReference pointer, String resolveInfo) {
    return create(role, sourceNode, pointer.getModelReference(), ((SNodePointer) pointer).getNodeId(), resolveInfo);
  }

  public static SReference create(String role, SNode sourceNode, SNode targetNode, String resolveInfo) {
    SReference ref = create(role, sourceNode, targetNode);
    ref.setResolveInfo(resolveInfo);
    return ref;
  }

  //-------- error logging -----------

  private static boolean ourLoggingOff = false;
  private static final Set<SReference> ourErrorReportedRefs = new WeakSet<SReference>();

  public static void disableLogging() {
    ourLoggingOff = true;
  }

  public static void enableLogging() {
    ourLoggingOff = false;
  }

  protected final void error(String message, ProblemDescription... problems) {
    if (ourLoggingOff) return;
    //skip errors in java stubs because they can have reference to classes that doesn't present
    //in class path
    SModel model = getSourceNode().getModel();
    if (model != null && SModelStereotype.isStubModelStereotype(jetbrains.mps.util.SNodeOperations.getModelStereotype(model))) return;

    synchronized (ourErrorReportedRefs) {
      if (ourErrorReportedRefs.contains(this)) return;
      ourErrorReportedRefs.add(this);

      Logger log = Logger.wrap(LogManager.getLogger(this.getClass()));
      log.error("\ncouldn't resolve reference '" + getRole() + "' from " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(getSourceNode()),
          validNode(getSourceNode().getReference()));
      if (message != null) log.error(" -- " + message);
      if (problems != null) {
        for (ProblemDescription pd : problems) {
          log.error(pd.getMessage(), validNode(pd.getNode()));
        }
      }
    }
  }

  protected static SNodeReference validNode(SNodeReference node) {
    if (node == null) {
      return null;
    }

    if (TransientModelsModule.isTransientModel(node.getModelReference())) {
      SModuleReference moduleRef = node.getModelReference().getModuleReference();
      SModule module = moduleRef == null ? null : moduleRef.resolve(MPSModuleRepository.getInstance());
      if (module instanceof TransientModelsModule) {
        if (((TransientModelsModule) module).addModelToKeep(node.getModelReference(), false)) {
          return node;
        }
      }
      return null;
    }
    return node;
  }

  @Immutable
  public static final class ProblemDescription {

    private final SNodeReference myNode;
    private final String myMessage;

    public ProblemDescription(@NotNull SNodeReference node, @NotNull String message) {
      myNode = node;
      myMessage = message;
    }

    @NotNull
    public SNodeReference getNode() {
      return myNode;
    }

    public String getMessage() {
      return myMessage;
    }
  }
}
