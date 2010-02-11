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
package jetbrains.mps.typesystem.inference;

import jetbrains.mps.smodel.*;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.intentions.IntentionProvider;
import jetbrains.mps.lang.pattern.util.MatchingUtil;
import jetbrains.mps.nodeEditor.MessageStatus;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.nodeEditor.SimpleErrorReporter;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.typesystem.debug.ISlicer;
import jetbrains.mps.typesystem.debug.SliceInfo;

import java.util.Map;
import java.util.List;
import java.util.Stack;

public class TypeCheckingContext {
  private static final Logger LOG = Logger.getLogger(TypeCheckingContext.class);

  private NodeTypesComponent myNodeTypesComponent;
  private SNode myRootNode;
  private TypeChecker myTypeChecker;

  private Stack<Boolean> myIsInEditorQueriesStack = new Stack<Boolean>();
  private Stack<NodeTypesComponent> myTemporaryComponentsStack = new Stack<NodeTypesComponent>();
  private Stack<SNode> myNodesToComputeDuringResolve = new Stack<SNode>();
  private IOperationContext myOperationContext;

  public TypeCheckingContext(SNode rootNode, TypeChecker typeChecker) {
    if (rootNode == null) {
      LOG.error("root node in type checking context is null");
      return;
    }
    myNodeTypesComponent = new NodeTypesComponent(rootNode, typeChecker, this);
    myTypeChecker = typeChecker;
    myRootNode = rootNode;
  }

  public SubtypingManager getSubtypingManager() {
    return myTypeChecker.getSubtypingManager();
  }

  public SModel getRuntimeTypesModel() {
    return myTypeChecker.getRuntimeTypesModel();
  }

  public Map<SNode, SNode> getMainContext() {
    return getNodeTypesComponent().getMainContext();
  }

  public EquationManager getEquationManager() {
    return getNodeTypesComponent().getEquationManager();
  }

  public boolean isIncrementalMode() {
    return !isInEditorQueries() && myTypeChecker.isGlobalIncrementalMode();
  }

  public boolean isInEditorQueries() {
    return !myIsInEditorQueriesStack.isEmpty();
  }

  public void setInEditorQueriesMode() {
    myIsInEditorQueriesStack.push(true);
  }

  public void resetIsInEditorQueriesMode() {
    if (!myIsInEditorQueriesStack.isEmpty()) {
      myIsInEditorQueriesStack.pop();
    }
  }

  public ISlicer getCurrentSlicer() {
    return getNodeTypesComponent().getSlicer();
  }

  //errors reporting

  @Deprecated
  public void reportTypeError(SNode nodeWithError, String errorString, String ruleModel, String ruleId, IntentionProvider intentionProvider) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithError, errorString, ruleModel, ruleId, MessageStatus.ERROR, new NodeErrorTarget());
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithError, reporter);
  }

  @Deprecated
  public void reportWarning(SNode nodeWithError, String errorString, String ruleModel, String ruleId, IntentionProvider intentionProvider) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithError, errorString, ruleModel, ruleId, MessageStatus.WARNING, new NodeErrorTarget());
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithError, reporter);
  }

  @Deprecated
  public void reportInfo(SNode nodeWithInfo, String message, String ruleModel, String ruleId, IntentionProvider intentionProvider) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithInfo, message, ruleModel, ruleId, MessageStatus.OK, new NodeErrorTarget());
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithInfo, reporter);
  }

  public IErrorReporter reportTypeError(SNode nodeWithError, String errorString, String ruleModel, String ruleId, IntentionProvider intentionProvider, IErrorTarget errorTarget) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithError, errorString, ruleModel, ruleId, MessageStatus.ERROR, errorTarget);
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithError, reporter);
    return reporter;
  }

  public IErrorReporter reportWarning(SNode nodeWithError, String errorString, String ruleModel, String ruleId, IntentionProvider intentionProvider, IErrorTarget errorTarget) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithError, errorString, ruleModel, ruleId, MessageStatus.WARNING, errorTarget);
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithError, reporter);
    return reporter;
  }

  public IErrorReporter reportInfo(SNode nodeWithInfo, String message, String ruleModel, String ruleId, IntentionProvider intentionProvider, IErrorTarget errorTarget) {
    SimpleErrorReporter reporter = new SimpleErrorReporter(nodeWithInfo, message, ruleModel, ruleId, MessageStatus.OK, errorTarget);
    reporter.setIntentionProvider(intentionProvider);
    reportMessage(nodeWithInfo, reporter);
    return reporter;
  }

  public void reportMessage(SNode nodeWithError, IErrorReporter errorReporter) {
    getNodeTypesComponent().reportTypeError(nodeWithError, errorReporter);
    getNodeTypesComponent().addDependcyOnCurrent(nodeWithError, false);
  }
  //~

  public SNode createNewRuntimeTypesVariable() {
    SNode typeVar = SModelUtil_new.instantiateConceptDeclaration("jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable", getRuntimeTypesModel(), GlobalScope.getInstance(), false);
    typeVar.setName(getNewVarName());
    registerTypeVariable(typeVar);
    return typeVar;
  }

  private String getNewVarName() {
    return getNodeTypesComponent().getNewVarName();
  }

  public void registerTypeVariable(SNode variable) {
    getNodeTypesComponent().registerTypeVariable(variable);
  }

  //for special cases
  public SNode typeOf(SNode node) {
    return typeOf(node, null, null, true);
  }

  public SNode typeOf(SNode node, String ruleModel, String ruleId, boolean addDependency) {
    if (node == null) return null;
    SNode type = null;
    NodeTypesComponent currentTypesComponent = getNodeTypesComponent();   //first, in current component
    if (currentTypesComponent != null) {
      //--- for incremental algorithm:
      currentTypesComponent.addNodeToFrontier(node);
      currentTypesComponent.typeOfNodeCalled(node);
      if (addDependency) {
        currentTypesComponent.addDependcyOnCurrent(node);
      }
      //--- for diagnostics:
      if (ruleModel != null && ruleId != null) {
        currentTypesComponent.markNodeAsAffectedByRule(node, ruleModel, ruleId);
        //todo wrap into "if (addDependency) {}" when sure that typeof works fine
      }
      //----
      type = currentTypesComponent.getRawTypeFromContext(node);
    }
    SNode representator;
    if (type != null) {
      representator = getRepresentatorIfNecessary(type);
    } else {
      SNode var = createNewRuntimeTypesVariable();
      type = TypeChecker.asType(var);
      getMainContext().put(node, type);
      representator = getRepresentatorIfNecessary(type);
    }
    return representator;
  }

  public SNode[] getRegisteredTypeVariables(String varName) {
    return getNodeTypesComponent().getVariables(varName);
  }

  public void addDependencyForCurrent(SNode node) {
    getNodeTypesComponent().addDependencyForCurrent(node);
  }

  private SNode getRepresentatorIfNecessary(SNode type) {
    if (type == null) return null;
    EquationManager equationManager = getEquationManager();
    IWrapper representatorWrapper = equationManager.getRepresentatorWrapper(NodeWrapper.fromNode(type, equationManager));
    SNode representator = representatorWrapper.fromWrapper();
    if (representator == null) return type;
    return representator;
  }

  //deprecated eqs
  @Deprecated
  public void createEquation(SNode node1,
                             SNode node2,
                             SNode nodeToCheck,
                             String errorString,
                             String ruleModel,
                             String ruleId,
                             IntentionProvider intentionProvider) {
    EquationInfo equationInfo = new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider);
    getCurrentSlicer().beforeUserEquationAdded(node1, node2, equationInfo);
    getNodeTypesComponent().getEquationManager().addEquation(
      node1,
      node2,
      equationInfo);
  }

  @Deprecated
  public void createEquation(SNode node1,
                             IWrapper wrapper2,
                             SNode nodeToCheck,
                             String errorString,
                             String ruleModel,
                             String ruleId,
                             IntentionProvider intentionProvider) {
    EquationInfo equationInfo = new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider);
    getCurrentSlicer().beforeUserEquationAdded(node1, wrapper2.getNode(), equationInfo);
    EquationManager equationManager = getNodeTypesComponent().getEquationManager();
    equationManager.addEquation(
      NodeWrapper.fromNode(node1, equationManager),
      wrapper2,
      equationInfo);
  }

  @Deprecated
  public void createEquation(IWrapper wrapper1,
                             SNode node2,
                             SNode nodeToCheck,
                             String errorString,
                             String ruleModel,
                             String ruleId,
                             IntentionProvider intentionProvider) {
    EquationInfo equationInfo = new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider);
    getCurrentSlicer().beforeUserEquationAdded(wrapper1.getNode(), node2, equationInfo);
    EquationManager equationManager = getNodeTypesComponent().getEquationManager();
    equationManager.addEquation(
      wrapper1,
      NodeWrapper.fromNode(node2, equationManager),
      equationInfo);
  }

  @Deprecated
  public void createEquation(IWrapper wrapper1,
                             IWrapper wrapper2,
                             SNode nodeToCheck,
                             String errorString,
                             String ruleModel,
                             String ruleId,
                             IntentionProvider intentionProvider) {
    EquationInfo equationInfo = new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider);
    getCurrentSlicer().beforeUserEquationAdded(wrapper1.getNode(), wrapper2.getNode(), equationInfo);
    getNodeTypesComponent().getEquationManager().addEquation(
      wrapper1,
      wrapper2,
      equationInfo);
  }

  @Deprecated
  public void createLessThanInequation(SNode node1,
                                       SNode node2,
                                       SNode nodeToCheck,
                                       String errorString,
                                       String ruleModel,
                                       String ruleId,
                                       boolean checkOnly,
                                       int inequationPriority,
                                       IntentionProvider intentionProvider) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node1,
      node2,
      new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, inequationPriority, intentionProvider),
      true,
      checkOnly);
  }

  @Deprecated
  public void createLessThanInequationStrong(SNode node1,
                                             SNode node2,
                                             SNode nodeToCheck,
                                             String errorString,
                                             String ruleModel,
                                             String ruleId,
                                             boolean checkOnly,
                                             int inequationPriority,
                                             IntentionProvider intentionProvider) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node1,
      node2,
      new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, inequationPriority, intentionProvider),
      false,
      checkOnly);
  }

  @Deprecated
  public void createGreaterThanInequation(SNode node1,
                                          SNode node2,
                                          SNode nodeToCheck,
                                          String errorString,
                                          String ruleModel,
                                          String ruleId,
                                          boolean checkOnly,
                                          int inequationPriority,
                                          IntentionProvider intentionProvider) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node2,
      node1,
      new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, inequationPriority, intentionProvider),
      true,
      checkOnly);
  }

  @Deprecated
  public void createComparableEquation(SNode node1,
                                       SNode node2,
                                       SNode nodeToCheck,
                                       String errorString,
                                       String ruleModel,
                                       String ruleId,
                                       IntentionProvider intentionProvider) {
    getNodeTypesComponent().getEquationManager().addInequationComparable(
      node1,
      node2,
      new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider));
  }

  @Deprecated
  public void createComparableEquationStrong(SNode node1,
                                             SNode node2,
                                             SNode nodeToCheck,
                                             String errorString,
                                             String ruleModel,
                                             String ruleId,
                                             IntentionProvider intentionProvider) {
    getNodeTypesComponent().getEquationManager().addInequationComparable(
      node1,
      node2,
      new EquationInfo(nodeToCheck, errorString, ruleModel, ruleId, 0, intentionProvider),
      false);
  }

  //new eqs
   public void createEquation(SNode node1,
                             SNode node2,
                             EquationInfo equationInfo) {
    getCurrentSlicer().beforeUserEquationAdded(node1, node2, equationInfo);
    getNodeTypesComponent().getEquationManager().addEquation(
      node1,
      node2,
      equationInfo);
  }

  public void createEquation(SNode node1,
                             IWrapper wrapper2,
                             EquationInfo equationInfo) {
    getCurrentSlicer().beforeUserEquationAdded(node1, wrapper2.getNode(), equationInfo);
    EquationManager equationManager = getNodeTypesComponent().getEquationManager();
    equationManager.addEquation(
      NodeWrapper.fromNode(node1, equationManager),
      wrapper2,
      equationInfo);
  }

  public void createEquation(IWrapper wrapper1,
                             SNode node2,
                             EquationInfo equationInfo) {
    getCurrentSlicer().beforeUserEquationAdded(wrapper1.getNode(), node2, equationInfo);
    EquationManager equationManager = getNodeTypesComponent().getEquationManager();
    equationManager.addEquation(
      wrapper1,
      NodeWrapper.fromNode(node2, equationManager),
      equationInfo);
  }

  public void createEquation(IWrapper wrapper1,
                             IWrapper wrapper2,
                             EquationInfo equationInfo
                             ) {
    getCurrentSlicer().beforeUserEquationAdded(wrapper1.getNode(), wrapper2.getNode(), equationInfo);
    getNodeTypesComponent().getEquationManager().addEquation(
      wrapper1,
      wrapper2,
      equationInfo);
  }

  public void createLessThanInequation(SNode node1,
                                       SNode node2,
                                       boolean checkOnly,
                                       EquationInfo equationInfo) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node1,
      node2,
      equationInfo,
      true,
      checkOnly);
  }

  public void createLessThanInequationStrong(SNode node1,
                                             SNode node2,
                                             boolean checkOnly,
                                             EquationInfo equationInfo) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node1,
      node2,
      equationInfo,
      false,
      checkOnly);
  }

  public void createGreaterThanInequation(SNode node1,
                                          SNode node2,
                                          boolean checkOnly,
                                          EquationInfo equationInfo) {
    getNodeTypesComponent().getEquationManager().addInequation(
      node2,
      node1,
      equationInfo,
      true,
      checkOnly);
  }

  public void createComparableEquation(SNode node1,
                                       SNode node2,
                                       EquationInfo equationInfo) {
    getNodeTypesComponent().getEquationManager().addInequationComparable(
      node1,
      node2,
      equationInfo);
  }

  public void createComparableEquationStrong(SNode node1,
                                             SNode node2,
                                             EquationInfo equationInfo) {
    getNodeTypesComponent().getEquationManager().addInequationComparable(
      node1,
      node2,
      equationInfo,
      false);
  }


  public SNode getOverloadedOperationType(SNode operation, SNode leftOperandType, SNode rightOperandType) {
    EquationManager equationManager = getEquationManager();
    IWrapper leftWrapper = equationManager.expandWrapper(null, NodeWrapper.fromNode(CopyUtil.copy(leftOperandType),
      equationManager), getRuntimeTypesModel());
    IWrapper rightWrapper = equationManager.expandWrapper(null, NodeWrapper.fromNode(CopyUtil.copy(rightOperandType),
      equationManager), getRuntimeTypesModel());
    return myTypeChecker.getRulesManager().
      getOverloadedOperationsManager().getOperationType(operation, leftWrapper.getNode(), rightWrapper.getNode());
  }

  //---------------------------- when concrete

  public void whenConcrete(SNode argument, final Runnable r, String nodeModel, String nodeId) {
    if (argument == null) return;
    EquationManager equationManager = getEquationManager();
    equationManager.addNewWhenConcreteEntity(NodeWrapper.createWrapperFromNode(argument, equationManager),
      new WhenConcreteEntity(r, nodeModel, nodeId));
  }

  public void whenConcrete(SNode argument, final Runnable r, String nodeModel, String nodeId, boolean isShallow) {
    whenConcrete(argument, r, nodeModel, nodeId, isShallow, false);
  }

  public void whenConcrete(SNode argument, final Runnable r, String nodeModel, String nodeId, boolean isShallow, boolean skipError) {
    if (argument == null) return;
    EquationManager equationManager = getEquationManager();
    equationManager.addNewWhenConcreteEntity(NodeWrapper.createWrapperFromNode(argument, equationManager),
      new WhenConcreteEntity(r, nodeModel, nodeId, skipError), isShallow);
  }

  public void whenConcrete(List<NodeInfo> arguments, final Runnable r) {
    if (arguments.isEmpty()) {
      return;
    }
    final EquationManager equationManager = getEquationManager();
    Runnable current = r;
    int lastindex = arguments.size() - 1;
    int index = 0;
    for (final NodeInfo argument : arguments) {
      if (index == lastindex) break;
      final Runnable oldRunnable = current;
      final Runnable oldRunnableWrapper = wrapRunnableWithIf(argument, oldRunnable);
      Runnable newRunnable = new Runnable() {
        public void run() {
          equationManager.addNewWhenConcreteEntity(equationManager.getRepresentatorWrapper(
            NodeWrapper.createWrapperFromNode(argument.myNode, equationManager)),
            new WhenConcreteEntity(oldRunnableWrapper, argument.myNodeModel, argument.myNodeId));
        }
      };
      current = newRunnable;
      index++;
    }
    NodeInfo lastInfo = arguments.get(lastindex);
    equationManager.addNewWhenConcreteEntity(equationManager.getRepresentatorWrapper(
      NodeWrapper.createWrapperFromNode(lastInfo.myNode, equationManager)),
      new WhenConcreteEntity(wrapRunnableWithIf(lastInfo, current), lastInfo.myNodeModel, lastInfo.myNodeId));
  }

  private Runnable wrapRunnableWithIf(final NodeInfo argument, final Runnable oldRunnable) {
    return new Runnable() {
      public void run() {
        SNode nodeType = getEquationManager().getRepresentator(argument.myNode);
        SNode restriction = argument.myType;
        if (argument.myEquals) {
          if (MatchingUtil.matchNodes(nodeType, restriction)) {
            oldRunnable.run();
          }
        } else {
          if (myTypeChecker.getSubtypingManager().isSubtype(nodeType, restriction)) {
            oldRunnable.run();
          }
        }
      }
    };
  }

  public void dispose() { //todo more attentively
    getNodeTypesComponent().dispose();
    if (!myTemporaryComponentsStack.isEmpty()) {
      for (NodeTypesComponent nodeTypesComponent : myTemporaryComponentsStack) {
        nodeTypesComponent.dispose();
      }
    }
  }

  public SNode getNode() {
    return myRootNode;
  }

  public NodeTypesComponent getNodeTypesComponent() {
    if (!myTemporaryComponentsStack.isEmpty()) {
      return myTemporaryComponentsStack.peek();
    }
    return myNodeTypesComponent;
  }

  public NodeTypesComponent getBaseNodeTypesComponent() {
    return myNodeTypesComponent;
  }

  public NodeTypesComponent createTemporaryTypesComponent() {
    NodeTypesComponent component = myNodeTypesComponent.copy(this);
    myTemporaryComponentsStack.push(component);
    return component;
  }

  public void popTemporaryTypesComponent() {
    myTemporaryComponentsStack.pop();
  }

  public SNode computeTypeForResolve(SNode node) {
    if (myNodesToComputeDuringResolve.contains(node)) {
      // LOG.error("the same node is checked more than once on a stack. StackOverFlow is inevitable");
      return null;
    }
    final NodeTypesComponent temporaryComponent;
    temporaryComponent = this.createTemporaryTypesComponent();
    myNodesToComputeDuringResolve.push(node);
    try {
      return temporaryComponent.computeTypesForNodeDuringResolving(node);
    } finally {
      temporaryComponent.dispose(); //in order to prevent memory leaks.
      this.popTemporaryTypesComponent();
      SNode poppedNode = myNodesToComputeDuringResolve.pop();
      assert poppedNode == node;
    }
  }

  public SNode computeTypeInferenceMode(SNode node) {
    final NodeTypesComponent temporaryComponent;
    temporaryComponent = this.createTemporaryTypesComponent();
    try {
      return temporaryComponent.computeTypesForNodeInferenceMode(node);
    } finally {
      temporaryComponent.dispose(); //in order to prevent memory leaks.
      this.popTemporaryTypesComponent();
    }
  }

  public void setOperationContext(IOperationContext context) {
    myOperationContext = context;
  }

  public IOperationContext getOperationContext() {
    return myOperationContext;
  }

  public static class NodeInfo {
    private SNode myNode;
    private SNode myType;
    private boolean myEquals;
    private String myNodeModel;
    private String myNodeId;

    public NodeInfo(SNode node, String nodeModel, String nodeId, SNode type, boolean equals) {
      myNode = node;
      myNodeModel = nodeModel;
      myNodeId = nodeId;
      myType = type;
      myEquals = equals;
    }
  }
}
