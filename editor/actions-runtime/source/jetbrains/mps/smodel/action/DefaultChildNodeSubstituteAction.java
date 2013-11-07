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
package jetbrains.mps.smodel.action;

import jetbrains.mps.actions.runtime.impl.ActionsUtil;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.tempmodel.TempModuleOptions;
import jetbrains.mps.smodel.tempmodel.TemporaryModels;
import jetbrains.mps.typesystem.inference.TypeChecker;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Igor Alshannikov
 * Mar 29, 2005
 */
public class DefaultChildNodeSubstituteAction extends AbstractNodeSubstituteAction {
  private SNode myCurrentChild;
  private SNode myOldChild;
  private IScope myScope;
  private IChildNodeSetter mySetter;

  /**
   * To be used from generated code.  There is no output concept specified here. Subclasses should implement createChildNode() method.
   */
  protected DefaultChildNodeSubstituteAction(Object parameterObject, SNode parentNode, SNode currentChild, IChildNodeSetter setter, IScope scope) {
    super(null, parameterObject, parentNode);
    myCurrentChild = currentChild;
    setupOldChild();
    myScope = scope;
    mySetter = setter;
  }

  /**
   * @param concept instanceof AbstractConceptDeclaration
   */
  public DefaultChildNodeSubstituteAction(SNode concept, SNode parentNode, SNode currentChild, IChildNodeSetter setter, IScope scope) {
    super(concept, concept, parentNode);
    myCurrentChild = currentChild;
    setupOldChild();
    myScope = scope;
    mySetter = setter;
  }

  public DefaultChildNodeSubstituteAction(SNode outputConcept, Object parameterObject, SNode parentNode, SNode currentChild, IChildNodeSetter setter,
      IScope scope) {
    super(outputConcept, parameterObject, parentNode);
    myCurrentChild = currentChild;
    myOldChild = myCurrentChild;
    myScope = scope;
    mySetter = setter;
  }

  private void setupOldChild() {
    if (myCurrentChild != null && myCurrentChild.getUserObject(EditorManager.OLD_NODE_FOR_SUBSTITUTION) != null) {
      myOldChild = (SNode) myCurrentChild.getUserObject(EditorManager.OLD_NODE_FOR_SUBSTITUTION);
    } else {
      myOldChild = myCurrentChild;
    }
  }

  public IScope getScope() {
    return myScope;
  }

  @Override
  public final SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
    SNode parentNode = getSourceNode();
    SNode newChild = createChildNode(getParameterObject(), parentNode.getModel(), pattern);
    if (newChild != null) {
      SNode result = mySetter.execute(parentNode, myCurrentChild, newChild, getScope(), editorContext);
      if (result != newChild) {
        // node was wrapped by mySetter
        return result;
      }
      return selectChildNode(result, parentNode.getModel(), pattern, editorContext);
    }
    return null;
  }

  protected SNode selectChildNode(SNode createdNode, SModel model, String pattern, EditorContext editorContext) {
    return createdNode;
  }

  public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
    SNode conceptDeclaration = getOutputConcept();
    if (conceptDeclaration == null) {
      throw new RuntimeException("Couldn't create child node. Concept declaration was not specified. Parameter object: " + getParameterObject());
    }
    return NodeFactoryManager.createNode(conceptDeclaration, myOldChild, getSourceNode(), model, getScope());
  }

  @Override
  public SNode getActionType(String pattern) {
    SNode node = createChildNode(getParameterObject(), null, pattern);
    if (ActionsUtil.isInstanceOfIType(node)) return node;

    //the following is for smart-type completion

    SModel model = TemporaryModels.getInstance().create(false, false, TempModuleOptions.forDefaultModule());
    try {
      model.addRootNode(node);
      TemporaryModels.getInstance().addMissingImports(model);
      return TypeChecker.getInstance().getTypeOf(node);
    } finally {
      TemporaryModels.getInstance().dispose(model);
    }
  }
}
