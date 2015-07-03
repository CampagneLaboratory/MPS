/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.newTypesystem.context.component;

import gnu.trove.THashSet;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.newTypesystem.context.typechecking.BaseTypechecking;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.util.Pair;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/**
 * User: fyodor
 * Date: 11/12/12
 */
/*package*/ public class SimpleTypecheckingComponent<STATE extends State> {

  private final STATE myState;
  protected Queue<SNode> myQueue = new LinkedList<SNode>();
  protected boolean myIsChecked = false;
  protected BaseTypechecking myTypechecking;
  protected Set<SNode> myNodes = new THashSet<SNode>();
  protected Set<SNode> myFullyCheckedNodes = new THashSet<SNode>(); //nodes which are checked with their children
  protected Set<SNode> myPartlyCheckedNodes = new THashSet<SNode>(); // nodes which are checked themselves but not children


  public SimpleTypecheckingComponent(STATE state, BaseTypechecking component) {
    myState = state;
    myTypechecking = component;
  }

  protected boolean isIncrementalMode() {
    return false;
  }

  //returns true if something was invalidated
  protected boolean doInvalidate() {
    return false;
  }

  protected void invalidateNodeTypeSystem(SNode node, boolean typeWillBeRecalculated) {
    myPartlyCheckedNodes.remove(node);
    myFullyCheckedNodes.remove(node);
    myState.clearNode(node);
  }

  protected void performActionsAfterChecking() {
    // do nothing
  }

  public SNode computeTypesForNode_special(SNode initialNode, Collection<SNode> givenAdditionalNodes) {
    return computeTypesForNode_special_(initialNode, givenAdditionalNodes);
  }

  protected void setTargetNode(SNode initialNode) {
    assert false;
  }


  public Map<SNode, List<IErrorReporter>> getNodesToErrorsMap() {
    return Collections.emptyMap();
  }

  protected void clearState() {
    myState.clear(true);
  }

  public void addNodeToFrontier(SNode node) {
    if (node == null) return;
    myQueue.add(node);
  }

  public void computeTypes(boolean refreshTypes) {
    computeTypes(getTypechecking().getNode(), refreshTypes, true, Collections.<SNode>emptyList(), true, null);
  }

  protected void computeTypes(SNode nodeToCheck, boolean refreshTypes, boolean forceChildrenCheck, Collection<SNode> additionalNodes, boolean finalExpansion, SNode initialNode) {
    if (refreshTypes) {
      clear();
      if (initialNode != null) {
        setTargetNode(initialNode);
      }
    } else {
      myState.clearStateObjects();
      doInvalidate();
      myPartlyCheckedNodes.addAll(myFullyCheckedNodes);
      myFullyCheckedNodes.clear();
    }
    computeTypesSpecial(nodeToCheck, forceChildrenCheck, additionalNodes, finalExpansion, initialNode);
    performActionsAfterChecking();
    myState.performActionsAfterChecking();  }

  public void setChecked() {
    myIsChecked = true;
  }

  public boolean isChecked() {
    return myIsChecked && !doInvalidate();
  }

  protected BaseTypechecking getTypechecking() {
    return myTypechecking;
  }

  public void solveInequalitiesAndExpandTypes(boolean finalExpansion) {
    myState.solveInequalities();
    myState.expandAll(myNodes, finalExpansion);
    myNodes.clear();
  }

  protected AccessTracking createAccessTracking() {
    return new AccessTracking();
  }

  protected void applyRulesToNode(SNode node, List<Pair<InferenceRule_Runtime, IsApplicableStatus>> newRules) {
    for (Pair<InferenceRule_Runtime, IsApplicableStatus> rule : newRules) {
      myState.applyRuleToNode(node, rule.o1, rule.o2);
    }
  }

  /**
   * Search for and apply the inference rules to the given node.
   *
   * In case the node has node attributes, also search for inference rules for these attributes and apply them *before* rules for the
   * node given.
   *
   * @param node
   * @return
   */
  protected boolean applyRulesToNode(SNode node) {
    final List<Pair<SNode, List<Pair<InferenceRule_Runtime, IsApplicableStatus>>>> nodesAndRules = new ArrayList<Pair<SNode, List<Pair<InferenceRule_Runtime, IsApplicableStatus>>>>();
    for (SNode nodeOrAttr : nodesToApplyRulesTo(node)) {
      List<Pair<InferenceRule_Runtime, IsApplicableStatus>> rules = TypeChecker.getInstance().getRulesManager().getInferenceRules(nodeOrAttr);
      if (rules != null && !rules.isEmpty()) {
        nodesAndRules.add(new Pair<SNode, List<Pair<InferenceRule_Runtime, IsApplicableStatus>>>(nodeOrAttr, rules));

        // check if the last rule applicable to an attribute overrides other rules (last one wins)
        Pair<InferenceRule_Runtime, IsApplicableStatus> lastPair = rules.get(rules.size() - 1);
        if (lastPair.o1.overrides(nodeOrAttr, lastPair.o2)) {
          break;
        }
      }
    }

    if (nodesAndRules.isEmpty()) return false;

    for (Pair<SNode, List<Pair<InferenceRule_Runtime, IsApplicableStatus>>> pair : nodesAndRules) {
      applyRulesToNode(pair.o1, pair.o2);
    }

    return true;
  }

  /**
   * Returns the list of all node attributes and the node itself as the last element.
   * Earlier attributes have precedence over the ones added later.
   * This logic is in sync with the editor's policy for overriding editor cells using attributes.
   *
   * @param origNode
   * @return
   */
  protected List<SNode> nodesToApplyRulesTo(SNode origNode) {
    if (origNode == null) return Collections.emptyList();

    ArrayList<SNode> nodesToTest = new ArrayList<SNode>(AttributeOperations.getAllAttributes(origNode));
    nodesToTest.add(origNode);

    return nodesToTest;
  }

  public SNode getType(SNode node) {
    if (myFullyCheckedNodes.contains(node)) {
      return getRawTypeFromContext(node);
    }
    return null;
  }

  private SNode getRawTypeFromContext(SNode node) {
    return myState.getTypeCheckingContext().getTypeDontCheck(node);
//    synchronized (TYPECHECKING_LOCK) {
//      return myState.getNodeMaps().getType(node);
//    }
  }

  private void drainQueue(boolean forceChildrenCheck, SNode targetNode, AccessTracking accessTracking) {
    for (SNode sNode = myQueue.poll(); sNode != null; sNode = myQueue.poll()) {
      if (myFullyCheckedNodes.contains(sNode)) {
        continue;
      }
      Set<SNode> candidatesForFrontier = new LinkedHashSet<SNode>();
      if (forceChildrenCheck) {
        candidatesForFrontier.addAll(IterableUtil.asCollection(sNode.getChildren()));
      }
      for (SNode candidate : candidatesForFrontier) {
        if (candidate == null || myFullyCheckedNodes.contains(candidate)) continue;
        myQueue.add(candidate);
      }
      if (!myPartlyCheckedNodes.contains(sNode)) {
        accessTracking.installReadListeners();
        boolean typeAffected = false;
        try {
          myNodes.add(sNode);
          typeAffected = applyRulesToNode(sNode);
        } finally {
          accessTracking.removeReadListeners();
        }
        accessTracking.postProcess(sNode, typeAffected);
        myPartlyCheckedNodes.add(sNode);
      }
      myFullyCheckedNodes.add(sNode);
      if (typeCalculated(targetNode) != null) return;
    }
  }

  protected SNode typeCalculated(SNode initialNode) {
    return null;
  }

  protected void computeTypesSpecial(SNode nodeToCheck, boolean forceChildrenCheck, Collection<SNode> additionalNodes, boolean finalExpansion, SNode initialNode) {
    AccessTracking accessTracking = createAccessTracking();
    if (nodeToCheck != null) {
      myQueue.add(nodeToCheck);
      myQueue.addAll(additionalNodes);
    }
    while (!myQueue.isEmpty()) {
      drainQueue(forceChildrenCheck, initialNode, accessTracking);
      if (typeCalculated(initialNode) != null) return;
      solveInequalitiesAndExpandTypes(finalExpansion);
    }
  }

  protected SNode computeTypesForNode_special_(SNode initialNode, Collection<SNode> givenAdditionalNodes) {
    assert myFullyCheckedNodes.isEmpty();
    return computeTypesForNode_special__(initialNode, givenAdditionalNodes);
  }

  protected SNode computeTypesForNode_special__(SNode initialNode, Collection<SNode> givenAdditionalNodes) {
    long start = System.currentTimeMillis();
    setTarget(initialNode);
    if (initialNode == null) return null;

    computeTypesSpecial(initialNode, false, givenAdditionalNodes, false, initialNode);
    SNode type = typeCalculated(initialNode);
    if (type != null) return type;

    if (initialNode.getModel() != null && initialNode.getParent() == null) {
      computeTypes(initialNode, initialNode);
      return getType(initialNode);
    }

    TypeSystemComponent.LOG.debug("No typesystem rule for " + SNodeOperations.getDebugText(initialNode) + " in root " + initialNode.getContainingRoot() + ": type calculation took " + (System.currentTimeMillis() - start) + " ms", new Throwable(), new jetbrains.mps.smodel.SNodePointer(initialNode));
    return null;
  }

  protected void computeTypes(SNode initialNode, SNode node) {
    /*do nothing*/
  }

  protected void setTarget(SNode initialNode) {
    /*do nothing*/
  }

  public void clear() {

  }

  /*package*/ STATE getState() {
    return myState;
  }

  protected static class AccessTracking {
    protected void installReadListeners() {}

    protected void removeReadListeners() {}

    protected void postProcess(SNode sNode, boolean typeAffected){}
  }
}
