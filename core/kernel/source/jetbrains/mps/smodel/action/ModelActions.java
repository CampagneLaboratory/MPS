/*
 * Copyright 2003-2008 JetBrains s.r.o.
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

import jetbrains.mps.lang.structure.structure.LinkDeclaration;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.Condition;
import jetbrains.mps.nodeEditor.CellSide;

import java.util.List;

/**
 * Igor Alshannikov
 * Mar 29, 2005
 */
public class ModelActions {
  //-------------------
  // child substitute
  //-------------------

  public static List<INodeSubstituteAction> createChildSubstituteActions(SNode parentNode, SNode currentChild, SNode childConcept, IChildNodeSetter childSetter, IOperationContext context) {
    return ChildSubstituteActionsHelper.createActions(parentNode, currentChild, (AbstractConceptDeclaration) childConcept.getAdapter(), childSetter, context);
  }


  @Deprecated
  public static List<INodeSubstituteAction> createChildSubstituteActions(SNode parentNode, SNode currentChild, AbstractConceptDeclaration childConcept, IChildNodeSetter childSetter, IOperationContext context) {
    return ChildSubstituteActionsHelper.createActions(parentNode, currentChild, childConcept, childSetter, context);
  }

  /**
   * helper method
   */
  public static List<INodeSubstituteAction> createPrimaryChildSubstituteActions(SNode parentNode, SNode currentChild, AbstractConceptDeclaration childConcept, IChildNodeSetter childSetter, Condition<SNode> filter, IOperationContext context) {
    return ChildSubstituteActionsHelper.createPrimaryChildSubstituteActions(
            parentNode,
            currentChild,
            childConcept,
            childSetter,
            filter,
            context);
  }

  //-------------------
  // referent substitute
  //-------------------

  public static List<INodeSubstituteAction> createReferentSubstituteActions(SNode referenceNode, SNode currentReferent, LinkDeclaration linkDeclaration, IOperationContext context) {
    return ReferentSubstituteActionsHelper.createActions(referenceNode, currentReferent, (LinkDeclaration) linkDeclaration, context);
  }

  //-------------------
  // right-transform hint substitute
  //-------------------

  public static boolean canCreateSideTransformHintSubstituteActions(SNode sourceNode, CellSide side, String transformTag, IOperationContext context) {
    return new SideTransformHintSubstituteActionsHelper(sourceNode, side, transformTag, context).canCreateActions();
  }

  public static List<INodeSubstituteAction> createRightTransformHintSubstituteActions(SNode sourceNode, CellSide side, String transformTag, IOperationContext context) {
    return new SideTransformHintSubstituteActionsHelper(sourceNode, side, transformTag, context).createActions();
  }
}
