/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.typesystem.inference;

import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.util.Pair;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.lang.typesystem.runtime.*;
import jetbrains.mps.lang.typesystem.runtime.incremental.INodesReadListener;
import jetbrains.mps.lang.typesystem.structure.RuntimeErrorType;
import jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable;
import jetbrains.mps.nodeEditor.EditorMessageOwner;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.nodeEditor.SimpleErrorReporter;
import jetbrains.mps.typesystem.debug.ISlicer;
import jetbrains.mps.typesystem.debug.NullSlicer;

import java.util.*;
import java.util.Map.Entry;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 08.05.2007
 * Time: 13:50:13
 * To change this template use File | Settings | File Templates.
 */
public class NodeTypesComponent implements EditorMessageOwner, Cloneable {

  private static final char A_CHAR = 'a';
  private static final char Z_CHAR = 'z';

  private int myVariableIndex = 0;
  private char myVariableChar = A_CHAR;

  private final Object ACCESS_LOCK = new Object();

  private SNode myRootNode;
  private TypeChecker myTypeChecker;
  private Map<SNode, SNode> myNodesToTypesMap = new HashMap<SNode, SNode>();
  private Map<SNode, IErrorReporter> myNodesToErrorsMap = new HashMap<SNode, IErrorReporter>();
  private Map<SNode, IErrorReporter> myNodesToNonTypesystemErrorsMap = new HashMap<SNode, IErrorReporter>();

  private Set<SNode> myFullyCheckedNodes = new HashSet<SNode>(); //nodes which are checked with their children
  private Set<SNode> myPartlyCheckedNodes = new HashSet<SNode>(); // nodes which are checked themselves but not children

  private Set<SNode> myFullyCheckedNodesNonTypesystem = new HashSet<SNode>(); //nodes which are checked with their children
  private Set<SNode> myPartlyCheckedNodesNonTypesystem = new HashSet<SNode>(); // nodes which are checked themselves but not children

  private WeakHashMap<SNode, WeakSet<SNode>> myNodesToDependentNodes = new WeakHashMap<SNode, WeakSet<SNode>>();
  private WeakHashMap<SNode, WeakSet<SNode>> myNodesToDependentNodesNonTypesystem = new WeakHashMap<SNode, WeakSet<SNode>>();

  private EquationManager myEquationManager;
  private Map<String, Set<SNode>> myRegisteredVariables = new HashMap<String, Set<SNode>>();

  private Set<SModelDescriptor> myModelDescriptorsWithListener = new HashSet<SModelDescriptor>();


  private MyModelListener myModelListener = new MyModelListener();
  private MyEventsReadListener myNodesReadListener = new MyEventsReadListener();

  private Set<SNode> myCurrentNodesToInvalidate = new HashSet<SNode>();
  private Set<SNode> myCurrentNodesToInvalidateNonTypesystem = new HashSet<SNode>();

  // for diagnostics
  private Set<SNodePointer> myNotSkippedNodes = new HashSet<SNodePointer>(1);

  private static final Logger LOG = Logger.getLogger(NodeTypesComponent.class);
  private Set<SNode> myCurrentFrontier;
  private SNode myCurrentCheckedNode;
  private WeakHashMap<SNode, Set<Pair<String, String>>> myNodesToRules = new WeakHashMap<SNode, Set<Pair<String, String>>>();
  private boolean myIsSpecial = false;

  boolean myIsNonTypesystemCheckingInProgress = false;

  private TypeCheckingContext myTypeCheckingContext;
  private ISlicer mySlicer;

  private boolean myIsSmartCompletion = false;
  private SNode myHole = null;
  private HoleWrapper myHoleTypeWrapper = null;

  public NodeTypesComponent(SNode rootNode, TypeChecker typeChecker, TypeCheckingContext typeCheckingContext) {
    myRootNode = rootNode;
    myTypeChecker = typeChecker;
    myTypeCheckingContext = typeCheckingContext;
    myEquationManager = new EquationManager(myTypeChecker, myTypeCheckingContext);
  }

  private TypeCheckingContext getTypeCheckingContext() {
    return myTypeCheckingContext;
  }

  public TypeChecker getTypeChecker() {
    return myTypeChecker;
  }

  @Deprecated
  public NodeTypesComponent clone() throws CloneNotSupportedException {
    NodeTypesComponent result = (NodeTypesComponent) super.clone();
    result.myNodesToTypesMap = new HashMap<SNode, SNode>();
    result.myNodesToErrorsMap = new HashMap<SNode, IErrorReporter>();
    result.myNodesToNonTypesystemErrorsMap = new HashMap<SNode, IErrorReporter>();
    result.myFullyCheckedNodes = new WeakSet<SNode>();
    result.myPartlyCheckedNodes = new WeakSet<SNode>();
    result.myPartlyCheckedNodesNonTypesystem = new WeakSet<SNode>();
    result.myFullyCheckedNodesNonTypesystem = new WeakSet<SNode>();
    result.myTypeCheckingContext = null;
    result.myEquationManager = new EquationManager(result.myTypeChecker, result.myTypeCheckingContext);
    result.myNodesToDependentNodes = new WeakHashMap<SNode, WeakSet<SNode>>();
    result.myModelDescriptorsWithListener = new HashSet<SModelDescriptor>();
    result.myModelListener = new MyModelListener();
    result.myNodesReadListener = new MyEventsReadListener();
    result.myCurrentNodesToInvalidate = new HashSet<SNode>();
    result.myCurrentFrontier = null;
    result.myCurrentCheckedNode = null;
    result.myNodesToRules = new WeakHashMap<SNode, Set<Pair<String, String>>>();
    result.myRegisteredVariables = new HashMap<String, Set<SNode>>();
    return result;
  }

  public NodeTypesComponent clone(TypeCheckingContext typeCheckingContext) {
    try {
      NodeTypesComponent clone = this.clone();
      clone.myTypeCheckingContext = typeCheckingContext;
      return clone;
    } catch (CloneNotSupportedException ex) {
      LOG.error(ex);
      return null;
    }
  }

  public void clear() {
    clearEquationManager();
    clearNodesTypes();
    myRegisteredVariables.clear();
    clearCaches();
  }

  private void clearEquationManager() {
    myEquationManager = new EquationManager(myTypeChecker, myTypeCheckingContext);
  }

  public SNode getNode() {
    return myRootNode;
  }

  private void clearCaches() {
    myFullyCheckedNodes.clear();
    myFullyCheckedNodesNonTypesystem.clear();
    myPartlyCheckedNodes.clear();
    myPartlyCheckedNodesNonTypesystem.clear();
    myNodesToDependentNodes.clear();
    myNodesToDependentNodesNonTypesystem.clear();
    myNodesToRules.clear();
  }

  private void clearNodesTypes() {
    myNodesToTypesMap.clear();
    myNodesToErrorsMap.clear();
    myNodesToNonTypesystemErrorsMap.clear();
    myCurrentNodesToInvalidate.clear();
    myVariableChar = A_CHAR;
    myVariableIndex = 0;
  }

  private void invalidateNode(SNode node, boolean nonTypesystem) {
    if (!nonTypesystem) {
      myFullyCheckedNodes.remove(node);
      myPartlyCheckedNodes.remove(node);
      myNodesToTypesMap.remove(node);
      myNodesToErrorsMap.remove(node);
    } else {
      myFullyCheckedNodesNonTypesystem.remove(node);
      myPartlyCheckedNodesNonTypesystem.remove(node);
      myNodesToNonTypesystemErrorsMap.remove(node);
    }
    myNodesToRules.remove(node);
  }

  public void reportTypeError(SNode nodeWithError, String errorString, String ruleModel, String ruleId) {
    if (nodeWithError != null) {
      SimpleErrorReporter errorReporter = new SimpleErrorReporter(errorString, ruleModel, ruleId);
      putError(nodeWithError, errorReporter);
    }
  }

  public void reportTypeError(SNode nodeWithError, IErrorReporter errorReporter) {
    if (nodeWithError != null) {
      putError(nodeWithError, errorReporter);
    }
  }

  private void putError(SNode node, IErrorReporter errorReporter) {
    Map<SNode, IErrorReporter> map;
    if (myIsNonTypesystemCheckingInProgress) {
      map = myNodesToNonTypesystemErrorsMap;
    } else {
      map = myNodesToErrorsMap;
    }
    IErrorReporter former = map.get(node);
    if (former != null && former.getMessageStatus().compareTo(errorReporter.getMessageStatus()) > 0) {
      return;
    }

    map.put(node, errorReporter);
  }

  private boolean loadTypesystemRules(SNode root) {
    SModel model = root.getModel();
    RulesManager rulesManager = myTypeChecker.getRulesManager();
    if (rulesManager.hasModelLoadedRules(model.getModelDescriptor())) {
      return true;
    }
    List<Language> languages = model.getLanguages(GlobalScope.getInstance());
    boolean isLoadedAnyLanguage = false;
    for (Language language : languages) {
      boolean b = rulesManager.loadLanguage(language);
      isLoadedAnyLanguage = isLoadedAnyLanguage || b;
    }
    rulesManager.markModelHasLoadedRules(model.getModelDescriptor());
    if (!isLoadedAnyLanguage) return false;
    return true;
  }

  public void computeTypes(boolean refreshTypes) {
    computeTypes(myRootNode, refreshTypes, true, new ArrayList<SNode>());
  }

  private void computeTypes(SNode nodeToCheck, boolean refreshTypes, boolean forceChildrenCheck, List<SNode> additionalNodes) {
    assert nodeToCheck.getContainingRoot() == myRootNode;
    try {
      if (!isIncrementalMode() || refreshTypes) {
        clear();
      } else {
        myNotSkippedNodes.clear();

        doInvalidate();
        myPartlyCheckedNodes.addAll(myFullyCheckedNodes);
        myFullyCheckedNodes.clear();
      }

      if (!loadTypesystemRules(nodeToCheck)) {
        return;
      }
      clearEquationManager();

      computeTypesForNode(nodeToCheck, forceChildrenCheck, additionalNodes);
      solveInequationsAndExpandTypes();
      performActionsAfterChecking();


    } finally {
      myNotSkippedNodes.clear();
      clearEquationManager();
    }
  }

  private void performActionsAfterChecking() {
    // setting expanded errors
    for (SNode node : new HashSet<SNode>(myNodesToErrorsMap.keySet())) {
      IErrorReporter iErrorReporter = myNodesToErrorsMap.get(node);
      String errorString = iErrorReporter.reportError();
      SimpleErrorReporter reporter = new SimpleErrorReporter(errorString, iErrorReporter.getRuleModel(), iErrorReporter.getRuleId(),
        iErrorReporter.getMessageStatus(), iErrorReporter.getErrorTarget());
      reporter.setIntentionProvider(iErrorReporter.getIntentionProvider());
      myNodesToErrorsMap.put(node, reporter);
    }

    //write access listeners
    removeOurListener();
    for (SNode nodeToDependOn : myNodesToDependentNodes.keySet()) {
      final SModel sModel = nodeToDependOn.getModel();
      final SModelDescriptor sm = sModel.getModelDescriptor();
      if (sm != null) {
        addOurListener(sm);
      } else {
        if (SModelStereotype.isUserModel(sModel)) {
          LOG.error("model descriptor is null: " + sModel);
        }
      }
    }
  }

  public void solveInequationsAndExpandTypes() {
    // solve residual inequations
    myEquationManager.solveInequations();
    getSlicer().beforeTypesExpanded(myNodesToTypesMap);

    if (myIsSmartCompletion) {
      myHoleTypeWrapper.getInequationSystem().normalize();
    }

    // setting expanded types to nodes
    for (Entry<SNode, SNode> contextEntry : new HashSet<Entry<SNode, SNode>>(myNodesToTypesMap.entrySet())) {
      SNode term = contextEntry.getKey();
      if (term == null) continue;
      SNode type = expandType(term, contextEntry.getValue(), myTypeChecker.getRuntimeTypesModel());
      if (BaseAdapter.isInstance(type, RuntimeErrorType.class)) {
        RuntimeErrorType errorType = (RuntimeErrorType) BaseAdapter.fromNode(type);
        reportTypeError(term, errorType.getErrorText(), errorType.getNodeModel(), errorType.getNodeId());
      }
      myNodesToTypesMap.put(term, type);
    }
  }

  private boolean isIncrementalMode() {
    return myTypeCheckingContext.isIncrementalMode();
  }

  public SNode computeTypesForNodeDuringGeneration(SNode initialNode, Runnable continuation) {
    return computeTypesForNode_special(initialNode, continuation, true);
  }

  public SNode computeTypesForNodeDuringResolving(SNode initialNode, Runnable continuation) {
    return computeTypesForNode_special(initialNode, continuation, false);
  }

  public InequationSystem computeInequationsForHole(SNode hole) {
    List<SNode> additionalNodes = new ArrayList<SNode>();
    additionalNodes.add(hole);

    try {
      myIsSmartCompletion = true;
      myHole = hole;
      computeTypesForNode_special(hole.getParent(), null, false, additionalNodes);
      return myHoleTypeWrapper.getInequationSystem();
    } finally {
      myIsSmartCompletion = false;
      myHoleTypeWrapper = null;
      myHole = null;
    }
  }

  private SNode computeTypesForNode_special(SNode initialNode, Runnable continuation, boolean refreshTypes) {
    return computeTypesForNode_special(initialNode, continuation, refreshTypes, new ArrayList<SNode>());
  }

  private SNode computeTypesForNode_special(SNode initialNode, Runnable continuation, boolean refreshTypes, List<SNode> givenAdditionalNodes) {
    SNode type = null;
    SNode prevNode = null;
    SNode node = initialNode;
    myIsSpecial = true;
    try {
      while (node != null) {
        List<SNode> additionalNodes = new ArrayList<SNode>(givenAdditionalNodes);
        if (prevNode != null) {
          additionalNodes.add(prevNode);
        }
        computeTypes(node, refreshTypes, false, additionalNodes);
        type = getType(initialNode);
        if (type == null ||
          type.getAdapter() instanceof RuntimeTypeVariable ||
          !type.getAdapter().getDescendants(RuntimeTypeVariable.class).isEmpty()) {
          if (node.isRoot()) {
            computeTypes(node, refreshTypes, true, new ArrayList<SNode>()); //the last possibility: check the whole root
            type = getType(initialNode);
            if (continuation != null) {
              continuation.run();
            }
            return type;
          }
          prevNode = node;
          node = node.getParent();
        } else {
          if (node.isRoot()) {
            if (continuation != null) {
              continuation.run();
            }
          }
          return type;
        }
      }
    } finally {
      myIsSpecial = false;
    }
    return type;
  }

  private void computeTypesForNode(SNode node, boolean forceChildrenCheck, List<SNode> additionalNodes) {
    if (node == null) return;
    Set<SNode> frontier = new LinkedHashSet<SNode>();
    Set<SNode> newFrontier = new LinkedHashSet<SNode>();
    frontier.add(node);
    frontier.addAll(additionalNodes);
    if (myIsSmartCompletion) {
      myHoleTypeWrapper = HoleWrapper.createHoleWrapper(myEquationManager, myHoleTypeWrapper);
      myNodesToTypesMap.put(myHole, myHoleTypeWrapper.getNode());
    }
    while (!(frontier.isEmpty())) {
      for (SNode sNode : frontier) {
        if (myFullyCheckedNodes.contains(sNode)) {
          continue;
        }
        if (myIsSpecial) {
          newFrontier.addAll(myTypeChecker.getRulesManager().getDependencies(sNode));
        }
        if (forceChildrenCheck) {
          newFrontier.addAll(sNode.getChildren());
        }
        if (!myPartlyCheckedNodes.contains(sNode)) {
          myNotSkippedNodes.add(new SNodePointer(sNode));
          myCurrentFrontier = newFrontier;

          if (isIncrementalMode()) {
            myNodesReadListener.clear();
            NodeReadEventsCaster.setNodesReadListener(myNodesReadListener);
          }
          try {
            applyRulesToNode(sNode);
          } finally {
            if (isIncrementalMode()) {
              NodeReadEventsCaster.removeNodesReadListener();
            }
            myCurrentFrontier = null;
          }
          if (isIncrementalMode()) {
            synchronized (ACCESS_LOCK) {
              myNodesReadListener.setAccessReport(true);
              addDepedentNodes(sNode, new HashSet<SNode>(myNodesReadListener.myAcessedNodes));
              myNodesReadListener.setAccessReport(false);
            }
            myNodesReadListener.clear();
          }
          myPartlyCheckedNodes.add(sNode);
        }
        myFullyCheckedNodes.add(sNode);
      }
      frontier = newFrontier;
      newFrontier = new LinkedHashSet<SNode>();
    }
  }


  private void addDepedentNodes(SNode sNode, Set<SNode> nodesToDependOn) {
    addDepedentNodes(sNode, nodesToDependOn, false);
  }

  private void addDepedentNodesNonTypesystem(SNode sNode, Set<SNode> nodesToDependOn) {
    addDepedentNodes(sNode, nodesToDependOn, true);
  }

  private void addDepedentNodes(SNode sNode, Set<SNode> nodesToDependOn, boolean nonTypesystem) {
    WeakHashMap<SNode, WeakSet<SNode>> nodesToDependentNodes = nonTypesystem ? myNodesToDependentNodesNonTypesystem :
      myNodesToDependentNodes;
    for (SNode nodeToDependOn : nodesToDependOn) {
      if (nodeToDependOn == null) continue;
      WeakSet<SNode> dependentNodes = nodesToDependentNodes.get(nodeToDependOn);
      if (dependentNodes == null) {
        dependentNodes = new WeakSet<SNode>();
        nodesToDependentNodes.put(nodeToDependOn, dependentNodes);
      }
      dependentNodes.add(sNode);
    }
  }

  public void addDependcyOnCurrent(SNode node) {
    HashSet<SNode> hashSet = new HashSet<SNode>();
    hashSet.add(myCurrentCheckedNode);
    addDepedentNodes(node, hashSet);
  }

  public void addDependencyForCurrent(SNode node) {
    HashSet<SNode> hashSet = new HashSet<SNode>();
    hashSet.add(node);
    addDepedentNodes(myCurrentCheckedNode, hashSet);
  }

  public Map<SNode, SNode> getMainContext() {
    return myNodesToTypesMap;
  }

  private void applyRulesToNode(SNode node) {
    Set<InferenceRule_Runtime> newRules = myTypeChecker.getRulesManager().getInferenceRules(node);
    if (newRules != null) {
      SNode oldCheckedNode = myCurrentCheckedNode;
      myCurrentCheckedNode = node;
      for (InferenceRule_Runtime rule : newRules) {
        applyRuleToNode(node, rule);
      }
      myCurrentCheckedNode = oldCheckedNode;
    }
  }

  public void applyNonTypesystemRulesToRoot(List<SModelEvent> events) {
    SNode root = myRootNode;
    if (root == null) return;
    doInvalidateNonTypesystem(events);
    myPartlyCheckedNodesNonTypesystem.addAll(myFullyCheckedNodesNonTypesystem);
    myFullyCheckedNodesNonTypesystem.clear();
  //  myNodesToNonTypesystemErrorsMap.clear();
    myIsNonTypesystemCheckingInProgress = true;
    try {
      Set<SNode> frontier = new LinkedHashSet<SNode>();
      Set<SNode> newFrontier = new LinkedHashSet<SNode>();
      frontier.add(root);
      while (!(frontier.isEmpty())) {
        for (SNode sNode : frontier) {
          if (myFullyCheckedNodesNonTypesystem.contains(sNode)) {
            continue;
          }
          newFrontier.addAll(sNode.getChildren());

          if (!myPartlyCheckedNodesNonTypesystem.contains(sNode)) {
            if (isIncrementalMode()) {
              myNodesReadListener.clear();
              NodeReadEventsCaster.setNodesReadListener(myNodesReadListener);
            }

            try {
              applyNonTypesystemRulesToNode(sNode);
            } finally {
              if (isIncrementalMode()) {
                NodeReadEventsCaster.removeNodesReadListener();
              }
            }
            if (isIncrementalMode()) {
              synchronized (ACCESS_LOCK) {
                myNodesReadListener.setAccessReport(true);
                addDepedentNodesNonTypesystem(sNode, new HashSet<SNode>(myNodesReadListener.myAcessedNodes));
                myNodesReadListener.setAccessReport(false);
              }
              myNodesReadListener.clear();
            }
            myPartlyCheckedNodesNonTypesystem.add(sNode);
          }
          myFullyCheckedNodesNonTypesystem.add(sNode);
        }
        frontier = newFrontier;
        newFrontier = new LinkedHashSet<SNode>();
      }
      //all error reporters must be simple reporters, no error expansion needed
    } finally {
      myIsNonTypesystemCheckingInProgress = false;
    }
  }

  private void applyNonTypesystemRulesToNode(SNode node) {
    Set<NonTypesystemRule_Runtime> nonTypesystemRules = myTypeChecker.getRulesManager().getNonTypesystemRules(node);
    if (nonTypesystemRules != null) {
      for (NonTypesystemRule_Runtime rule : nonTypesystemRules) {
        applyRuleToNode(node, rule);
      }
    }
  }

  private void applyRuleToNode(SNode node, ICheckingRule_Runtime rule) {
    try {
      //todo get rid of ifs when refactoring is complete
      if (rule instanceof AbstractInferenceRule_Runtime) {
        ((AbstractInferenceRule_Runtime)rule).applyRule(node, getTypeCheckingContext());
      } else if (rule instanceof AbstractNonTypesystemRule_Runtime) {
        ((AbstractNonTypesystemRule_Runtime)rule).applyRule(node, getTypeCheckingContext());
      } else {
        rule.applyRule(node);
      }
    } catch (Throwable t) {
      LOG.error(t);
    }
  }

  public void addNodeToFrontier(SNode node) {
    if (myPartlyCheckedNodes.contains(node)) {
      return;
    }
    if (myCurrentFrontier != null) {
      myCurrentFrontier.add(node);
    }
  }

  private void addOurListener(SModelDescriptor sm) {
    if (sm.hasSModelCommandListener(myModelListener)) return;
    sm.addModelCommandListener(myModelListener);
    myModelDescriptorsWithListener.add(sm);
  }

  private void removeOurListener() {
    for (SModelDescriptor sm : myModelDescriptorsWithListener) {
      sm.removeModelCommandListener(myModelListener);
    }
    myModelDescriptorsWithListener.clear();
  }

  public void clearListeners() {
    removeOurListener();
  }

  public SNode getType(SNode node) {
    if (myFullyCheckedNodes.contains(node)) {
      return getRawTypeFromContext(node);
    }
    return null;
  }

  public void markUnchecked(SNode node) {
    invalidateNode(node, false);
  }

  public SNode getRawTypeFromContext(SNode node) {
    return myNodesToTypesMap.get(node);
  }

  public IErrorReporter getError(SNode node) {
    IErrorReporter iErrorReporter = myNodesToErrorsMap.get(node);
    if (iErrorReporter == null) {
      iErrorReporter = myNodesToNonTypesystemErrorsMap.get(node);
    }
    return iErrorReporter;
  }

  private SNode expandType(SNode term, SNode type, SModel typesModel) {
    return myEquationManager.expandType(term, type, typesModel, true, this);
  }



  public EquationManager getEquationManager() {
    return myEquationManager;
  }

  public Set<Pair<SNode, IErrorReporter>> getNodesWithErrorStrings() {
    Set<Pair<SNode, IErrorReporter>> result = new HashSet<Pair<SNode, IErrorReporter>>();
    Set<SNode> keySet = new HashSet<SNode>(myNodesToErrorsMap.keySet());
    keySet.addAll(myNodesToNonTypesystemErrorsMap.keySet());
    for (SNode key : keySet) {
      result.add(new Pair<SNode, IErrorReporter>(key, getError(key)));
    }
    return result;
  }

  public String getNewVarName() {
    String result = myVariableChar + (myVariableIndex == 0 ? "" : "" + myVariableIndex);
    if (myVariableChar == Z_CHAR) {
      myVariableIndex++;
      myVariableChar = A_CHAR;
    } else {
      myVariableChar++;
    }
    return result;
  }

  private void doInvalidateNonTypesystem(List<SModelEvent> events) {
    doInvalidate(true);
  }

  private void doInvalidate() {
    doInvalidate(false);
  }

  private void doInvalidate(boolean nonTypesystem) {
    Set<SNode> nodesToInvalidate = nonTypesystem ? myCurrentNodesToInvalidateNonTypesystem : myCurrentNodesToInvalidate;
    WeakHashMap<SNode, WeakSet<SNode>> nodesToDependentNodes = nonTypesystem ? myNodesToDependentNodesNonTypesystem : myNodesToDependentNodes;
    Set<SNode> invalidatedNodes = new HashSet<SNode>();
    Set<SNode> newNodesToInvalidate = new HashSet<SNode>();
    Set<SNode> currentNodesToInvalidate = nodesToInvalidate;
    while (!currentNodesToInvalidate.isEmpty()) {
      for (SNode nodeToInvalidate : currentNodesToInvalidate) {
        if (invalidatedNodes.contains(nodeToInvalidate)) continue;
        invalidateNode(nodeToInvalidate, nonTypesystem);
        invalidatedNodes.add(nodeToInvalidate);
        WeakSet<SNode> nodes = nodesToDependentNodes.get(nodeToInvalidate);
        if (nodes != null) {
          newNodesToInvalidate.addAll(nodes);
        }
      }
      currentNodesToInvalidate = newNodesToInvalidate;
      newNodesToInvalidate = new HashSet<SNode>();
    }
    nodesToInvalidate.clear();
  }

  public void markNodeAsAffectedByRule(SNode node, String ruleModel, String ruleId) {
    Set<Pair<String, String>> rulesWhichAffectNodesType = myNodesToRules.get(node);
    if (rulesWhichAffectNodesType == null) {
      rulesWhichAffectNodesType = new HashSet<Pair<String, String>>();
      myNodesToRules.put(node, rulesWhichAffectNodesType);
    }
    rulesWhichAffectNodesType.add(new Pair<String, String>(ruleModel, ruleId));
  }

  public Set<Pair<String, String>> getRulesWhichAffectNodeType(SNode node) {
    Set<Pair<String, String>> set = myNodesToRules.get(node);
    if (set == null) return null;
    return new HashSet<Pair<String, String>>(set);
  }

  public void registerTypeVariable(SNode variable) {
    String name = variable.getName();
    Set<SNode> variables = myRegisteredVariables.get(name);
    if (variables == null) {
      variables = new HashSet<SNode>();
      myRegisteredVariables.put(name, variables);
    }
    variables.add(variable);
  }

  public SNode[] getVariables(String varName) {
    final Set<SNode> variables = myRegisteredVariables.get(varName);
    if (variables == null) {
      return SNode.EMPTY_ARRAY;
    } else {
      return variables.toArray(new SNode[variables.size()]);
    }
  }

  public ISlicer getSlicer() {
    if (mySlicer == null) {
      return new NullSlicer();
    }
    return mySlicer;
  }

  public void setSlicer(ISlicer slicer) {
    mySlicer = slicer;
  }


  private class MyModelListener implements SModelCommandListener {
    public void eventsHappenedInCommand(List<SModelEvent> events) {
      for (SModelEvent event : events) {
        event.accept(new SModelEventVisitorAdapter() {

          public void visitChildEvent(SModelChildEvent event) {
            markDependentNodesForInvalidation(event.getChild(), false);
            markDependentNodesForInvalidation(event.getChild(), true);
            markDependentNodesForInvalidation(event.getParent(), false);
            markDependentNodesForInvalidation(event.getParent(), true);
          }

          public void visitReferenceEvent(SModelReferenceEvent event) {
            markDependentNodesForInvalidation(event.getReference().getSourceNode(), false);
            markDependentNodesForInvalidation(event.getReference().getSourceNode(), true);
          }
        });
      }
    }

    private void markDependentNodesForInvalidation(SNode eventNode, boolean nonTypesystem) {
      Set<SNode> nodesToInvalidate = nonTypesystem ? myCurrentNodesToInvalidateNonTypesystem : myCurrentNodesToInvalidate;
      WeakHashMap<SNode, WeakSet<SNode>> nodesToDependentNodes = nonTypesystem ? myNodesToDependentNodesNonTypesystem : myNodesToDependentNodes;
      Set<SNode> nodes = nodesToDependentNodes.get(eventNode);
      if (nodes != null) {
        nodesToInvalidate.addAll(nodes);
      }
      nodesToInvalidate.add(eventNode);
    }
  }

  private class MyEventsReadListener implements INodesReadListener {
    private Set<SNode> myAcessedNodes = new HashSet<SNode>(1);
    private boolean myIsSetAccessReport = false;

    public void setAccessReport(boolean accessReport) {
      myIsSetAccessReport = accessReport;
    }

    private void reportAccess() {
      if (myIsSetAccessReport) {
        new Throwable().printStackTrace();
      }
    }

    public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
      synchronized (ACCESS_LOCK) {
        reportAccess();
        myAcessedNodes.add(node);
        myAcessedNodes.add(child);
      }
    }

    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      synchronized (ACCESS_LOCK) {
        reportAccess();
        myAcessedNodes.add(node);
      }
    }

    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      synchronized (ACCESS_LOCK) {
        reportAccess();
        myAcessedNodes.add(node);
        myAcessedNodes.add(referent);
      }
    }

    public void nodeUnclassifiedReadAccess(SNode node) {
      synchronized (ACCESS_LOCK) {
        reportAccess();
        myAcessedNodes.add(node);
      }
    }

    public void clear() {
      synchronized (ACCESS_LOCK) {
        reportAccess();
        myAcessedNodes.clear();
      }
    }
  }
}
