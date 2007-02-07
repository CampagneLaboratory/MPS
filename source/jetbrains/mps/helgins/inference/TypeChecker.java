package jetbrains.mps.helgins.inference;

import jetbrains.mps.helgins.*;
import jetbrains.mps.helgins.evaluator.QuotationEvaluator;
import jetbrains.mps.helgins.evaluator.CopyEvaluator;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.refactoring.CopyUtil;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Mapper;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.ide.command.CommandProcessor;
import jetbrains.mps.ide.IStatus;
import jetbrains.mps.ide.Status;
import jetbrains.mps.nodeEditor.NodeReadAccessCaster;
import jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration;
import jetbrains.mpswiki.queryLanguage.evaluator.ConditionMatcher;

import java.util.*;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 06.03.2006
 * Time: 16:47:20
 * To change this template use File | Settings | File Templates.
 */
public class TypeChecker {
  private static final Logger LOG = Logger.getLogger(TypeChecker.class);

  public static final Object HELGINS_ERROR_STATUS = new Object();
  private static final Object TYPE_OF_TERM = new Object();

  private Set<SNode> myCheckedRoots = new WeakSet<SNode>();
  private Map<SNode, Set<SNode>> myNodesToDependentRoots = new WeakHashMap<SNode, Set<SNode>>();

  private MySModelCommandListener myListener = new MySModelCommandListener();
  private ConceptToRulesMap<Rule> myConceptsToRulesCache = new ConceptToRulesMap<Rule>();
  private Set<SNode> myCheckedNodes = new HashSet<SNode>();

  private WeakHashMap<SNode, String> myNodesWithErrors = new WeakHashMap<SNode, String>();
  private ContextsManager myContextsManager;
  private EquationManager myEquationManager;
  private TypeVariablesManager myTypeVariablesManager;
  private Interpretator myInterpretator;
  private SubtypingManager mySubtypingManager;
  private AdaptationManager myAdaptationManager;
  private QuotationEvaluator myQuotationEvaluator;
  private CopyEvaluator myCopyEvaluator;
  private boolean myUsedForBLCompletion = false;

  public TypeChecker() {
    myContextsManager = new ContextsManager(this);
    myEquationManager = new EquationManager(this);
    myInterpretator = new Interpretator(this);
    myTypeVariablesManager = new TypeVariablesManager(this);
    mySubtypingManager = new SubtypingManager(this);
    myAdaptationManager = new AdaptationManager(this);
    myQuotationEvaluator = new QuotationEvaluator(this);
    myCopyEvaluator = new CopyEvaluator(this);
  }

  public static TypeChecker getInstance() {
    return ApplicationComponents.getInstance().getComponent(TypeChecker.class);
  }

  public ContextsManager getContextsManager() {
    return myContextsManager;
  }

  public EquationManager getEquationManager() {
    return myEquationManager;
  }

  public TypeVariablesManager getTypeVariablesManager() {
    return myTypeVariablesManager;
  }

  public SubtypingManager getSubtypingManager() {
    return mySubtypingManager;
  }

  public AdaptationManager  getAdaptationManager() {
    return myAdaptationManager;
  }

  public Interpretator getInterpretator() {
    return myInterpretator;
  }

  public QuotationEvaluator getQuotationEvaluator() {
    return myQuotationEvaluator;
  }

  public CopyEvaluator getCopyEvaluator() {
    return myCopyEvaluator;
  }

  public void clear() {
    myContextsManager.clear();
    myAdaptationManager.clear();
    myEquationManager.clear();
    myTypeVariablesManager.clearVariables();
    myInterpretator.clear();
    mySubtypingManager.clear();
    myAdaptationManager.clear();
    myConceptsToRulesCache.clear();
    myCheckedNodes.clear();
    myNodesWithErrors.clear();
    myNodesToDependentRoots.clear();
  }

  public void checkTypes(SNode root) {
    //clear
    clear();
    List<Language> languages = root.getModel().getLanguages(GlobalScope.getInstance());
    Set<SModel> typesModels = new HashSet<SModel>();
    for (Language language : languages) {
      SModelDescriptor helginsModelDescriptor = language.getHelginsTypesystemModelDescriptor();
      if (helginsModelDescriptor != null) {
        typesModels.add(helginsModelDescriptor.getSModel());
      }
    }
    if (typesModels.isEmpty()) return;

    //loading typesystems
    myConceptsToRulesCache = new ConceptToRulesMap<Rule>();
    for (SModel typesModel : typesModels) {

      //register contexts
      for (ContextDeclaration contextDeclaration : typesModel.getRoots(ContextDeclaration.class)) {
        if (contextDeclaration.getMain()) {
          if (myContextsManager.isMainContextRegistered()) continue;
          myContextsManager.registerMainContext(contextDeclaration.getName());
        } else {
          myContextsManager.registerNewContext(contextDeclaration.getName());
        }
      }

      //register global varsets
      for (VariableSetDeclaration varset : typesModel.getRoots(VariableSetDeclaration.class)) {
        myTypeVariablesManager.registerNewVarset(varset);
      }

      // load rules
      for (Rule rule : typesModel.getRoots(Rule.class)) {
        if (!rule.applicableNodes().hasNext()) continue;
        AnalyzedTermDeclaration analyzedTermDeclaration = rule.applicableNodes().next();
        ConceptDeclaration ruleConcept = ConditionMatcher.getConcept(analyzedTermDeclaration.getCondition());
        myConceptsToRulesCache.putRule(ruleConcept, rule);
      }
      myConceptsToRulesCache.makeConsistent();

      // load subtyping rules
      mySubtypingManager.initiate(typesModel);

      // load adaptation rules
      myAdaptationManager.initiate(typesModel);
    }

    // check types
    doCheckTypes(root);

    // solve residual inequations
    myEquationManager.solveInequations();

    // main context
    Set<Pair<SNode, SNode>> mainContext = myContextsManager.getMainContext();

    // setting types to nodes
    for (Pair<SNode, SNode> contextEntry : mainContext) {
      SNode term = contextEntry.o1;
      if (term == null) continue;
      SNode type = expandType(contextEntry.o2, myInterpretator.getRuntimeTypesModel());
      if (type instanceof RuntimeErrorType) {
        reportTypeError(term, ((RuntimeErrorType)type).getErrorText());
      }
      term.putUserObject(TYPE_OF_TERM, type);
    }

    // setting errors
    for (SNode node : myNodesWithErrors.keySet()) {
      String errorString = "HELGINS ERROR: " + myNodesWithErrors.get(node);
      IStatus status = new Status(IStatus.Code.ERROR, errorString);
      node.putUserObject(HELGINS_ERROR_STATUS, status);
    }
  }

  public Set<Pair<SNode, String>> getNodesWithErrors() {
    return CollectionUtil.map(myNodesWithErrors.keySet(), new Mapper<SNode, Pair<SNode, String>>() {
      public Pair<SNode, String> map(SNode p) {
        return new Pair<SNode, String>(p, myNodesWithErrors.get(p));
      }
    });
  }

  public void reportTypeError(SNode nodeWithError, String errorString) {
    if (nodeWithError != null) {
      myNodesWithErrors.put(nodeWithError, errorString);
    }
  }

  private SNode expandType(SNode node, SModel typesModel) {
    SNode representator = myEquationManager.getRepresentator(node);
    return expandNode(representator, representator, 0, new HashSet<RuntimeTypeVariable>(), typesModel);
  }

  private SNode expandNode(SNode node, SNode representator, int depth, Set<RuntimeTypeVariable> variablesMet, SModel typesModel) {
    if (node == null) return null;
    if (node instanceof RuntimeTypeVariable) {
      RuntimeTypeVariable var = (RuntimeTypeVariable) node;
      SNode type = myEquationManager.getRepresentator(node);
      if (type != representator || depth > 0) {

        if (variablesMet.contains(var)) {
          //recursion!!
          RuntimeErrorType error = new RuntimeErrorType(typesModel);
          error.setErrorText("recursion types not allowed");
          return error;
        }
        variablesMet.add(var);
        node = expandNode(type, type, 0, variablesMet, typesModel);
        variablesMet.remove(var);
      }
      return node;
    }
    Map<SNode, SNode> childrenReplacement = new HashMap<SNode, SNode>();
    List<SNode> children = new ArrayList<SNode>(node.getChildren());
    for (SNode child : children) {
      SNode newChild = expandNode(child, representator, depth+1, variablesMet, typesModel);
      if (newChild != child) {
        childrenReplacement.put(child, newChild);
      }
    }
    for (SNode child : new ArrayList<SNode>(children)) {
      if (!childrenReplacement.keySet().contains(child)) continue;
      if (child.getParent() == null) {
        RuntimeErrorType error = new RuntimeErrorType(typesModel);
        error.setErrorText("recursion types not allowed");
        return error;
      }
      SNode parent = child.getParent();
      assert parent != null;
      String roleInParent = child.getRole_();
      assert roleInParent != null;
      parent.removeChild(child);
      SNode childReplacement = childrenReplacement.get(child);
      childReplacement = CopyUtil.copy(childReplacement, parent.getModel());
      parent.addChild(roleInParent, childReplacement);
    }
    return node;
  }


  private void doCheckTypes(SNode root) {
    // bfs from root
    List<SNode> frontier = new ArrayList<SNode>();
    List<SNode> newFrontier = new ArrayList<SNode>();
    frontier.add(root);
    while (!(frontier.isEmpty())) {
      for (SNode node : frontier) {
        if (myCheckedNodes.contains(node)) continue;
        newFrontier.addAll(node.getChildren());
        Set<Rule> rules = myConceptsToRulesCache.get(node.getNodeConcept());
        if (rules != null) {
          for (Rule rule : rules) {
            myInterpretator.interpretate(node, rule);
          }
        }
      }
      frontier = newFrontier;
      newFrontier = new ArrayList<SNode>();
    }
  }

  public void checkTypesForNode(SNode node) {
    doCheckTypes(node);
    myCheckedNodes.add(node); // for not to check it again
  }

  public static SNode asType(Object o) {
    if (o instanceof SNode) {
      return (SNode) o;
    }
    return null;
  }

  @NotNull
  public static List<SModelDescriptor> getTypesModels(SNode node) {
    List<Language> languages = node.getModel().getLanguages(GlobalScope.getInstance());
    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    for (Language l : languages) {
      SModelDescriptor modelDescriptor = l.getHelginsTypesystemModelDescriptor();
      if (modelDescriptor != null) {
        result.add(modelDescriptor);
      }
    }
    return result;
  }

  public boolean isCheckedRoot(SNode node) {
    return myCheckedRoots.contains(node);
  }

   private void clearTypeUserObjects(SNode node) {
    node.removeUserObject(HELGINS_ERROR_STATUS);

    for (SNode child : node.getChildren()) {
      clearTypeUserObjects(child);
    }
  }

  public void doCheckRoot(SNode node) {
    try {
      clearTypeUserObjects(node);
      MyReadAccessListener listener = new MyReadAccessListener();
      NodeReadAccessCaster.setNodeAccessListener(listener);
      checkTypes(node);
      myCheckedRoots.add(node);

      for (SNode nodeToDependOn : listener.getNodesToDependOn()) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(nodeToDependOn);
        if (dependentRoots == null) {
          dependentRoots = new HashSet<SNode>();
          myNodesToDependentRoots.put(nodeToDependOn, dependentRoots);
        }
        dependentRoots.add(node);
      }

      SModel model = node.getModel();
      model.removeSModelCommandListener(myListener);
      model.removeSModelListener(myListener);
      model.addSModelCommandListener(myListener);
      model.addSModelListener(myListener);
    } finally {
      NodeReadAccessCaster.removeNodeAccessListener();
    }
  }

  public void markAsChecked(SNode node) {
    myCheckedRoots.add(node);
  }

  @Nullable
  public SNode getTypeOf(SNode node) {
    if (node == null) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;
    if (!myCheckedRoots.contains(containingRoot)) {
      doCheckRoot(containingRoot);
    }
    return getTypeDontCheck(node);
  }

  @Nullable
  public SNode getTypeDontCheck(SNode node) {
    if (node == null) return null;
    Object typeObject = node.getUserObject(TYPE_OF_TERM);
    if (typeObject instanceof SNode) return (SNode) typeObject;
    return null;
  }

  public SModel getRuntimeTypesModel() {
    return myInterpretator.getRuntimeTypesModel();
  }

  public String getTypeErrorDontCheck(SNode node) {
    if (node == null) return null;
    return myNodesWithErrors.get(node);
  }

  public boolean isUsedForBLCompletion() {
    return myUsedForBLCompletion;
  }

  public void setUsedForBLCompletion(boolean b) {
    myUsedForBLCompletion = b;
  }

  private static class MyReadAccessListener implements INodeReadAccessListener {
    protected HashSet<SNode> myNodesToDependOn = new HashSet<SNode>();

    public void readAccess(SNode node) {
      myNodesToDependOn.add(node);
    }

    public Set<SNode> getNodesToDependOn() {
      return new HashSet<SNode>(myNodesToDependOn);
    }
  }

  private class MySModelCommandListener extends SModelAdapter implements SModelCommandListener {
    private SModelEventVisitor myVisitor = new SModelEventVisitor() {
      public void visitRootEvent(SModelRootEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getRoot());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getRoot());
      }

      public void visitChildEvent(SModelChildEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getParent());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getParent().getContainingRoot());
      }

      public void visitPropertyEvent(SModelPropertyEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getNode());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getNode().getContainingRoot());
      }

      public void visitReferenceEvent(SModelReferenceEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getReference().getSourceNode());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getReference().getSourceNode().getContainingRoot());
      }
    };

    public void modelChangedInCommand(List<SModelEvent> events) {
      for (SModelEvent event : events) {
        event.accept(myVisitor);
      }
    }

    public void eventFired(SModelEvent event) {
      if (CommandProcessor.instance().isInsideCommand()) return;
      event.accept(myVisitor);
    }
  }

}
