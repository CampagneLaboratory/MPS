package jetbrains.mps.helgins.inference;

import jetbrains.mps.bootstrap.structureLanguage.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration;
import jetbrains.mps.formulaLanguage.evaluator.ExpressionContext;
import jetbrains.mps.formulaLanguage.evaluator.ExpressionEvaluatorManager;
import jetbrains.mps.formulaLanguage.Expression;
import jetbrains.mps.helgins.*;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.patterns.util.MatchingUtil;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelUtil;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Mapper;
import jetbrains.mpswiki.queryLanguage.VariableCondition;
import jetbrains.mpswiki.queryLanguage.QueryPattern;
import jetbrains.mpswiki.queryLanguage.evaluator.ConditionMatcher;
import jetbrains.mpswiki.queryLanguage.evaluator.InvalidConditionException;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 27.04.2006
 * Time: 9:42:22
 * To change this template use File | Settings | File Templates.
 */
public class SubtypingManager {
  private static final Logger LOG = Logger.getLogger(SubtypingManager.class);

  private ConceptToRulesMap<SubtypingRule> myConceptsToSubtypingRulesCache = new ConceptToRulesMap<SubtypingRule>();
  private ConceptToRulesMap<SupertypingRule> myConceptsToSupertypingRulesCache = new ConceptToRulesMap<SupertypingRule>();
  private Map<ConceptDeclaration, SubtypingVarianceRule> myVarianceRules = new HashMap<ConceptDeclaration, SubtypingVarianceRule>();

  private TypeChecker myTypeChecker;

  public SubtypingManager(TypeChecker typeChecker) {
    myTypeChecker = typeChecker;
  }

  public TypeChecker getTypeChecker() {
    return myTypeChecker;
  }

  public void initiate(SModel typesModel) {
    for (SubtypingRule rule : typesModel.getRoots(SubtypingRule.class)) {
      VariableCondition condition = rule.getApplicableNode().getCondition();
      ConceptDeclaration ruleConcept = ConditionMatcher.getConcept(condition);
      Set<SubtypingRule> subtypingRules = myConceptsToSubtypingRulesCache.get(ruleConcept);
      if (subtypingRules == null) {
        subtypingRules = new HashSet<SubtypingRule>();
        myConceptsToSubtypingRulesCache.put(ruleConcept, subtypingRules);
      }
      subtypingRules.add(rule);
    }
    for (SupertypingRule rule : typesModel.getRoots(SupertypingRule.class)) {
      VariableCondition condition = rule.getApplicableNode().getCondition();
      ConceptDeclaration ruleConcept = ConditionMatcher.getConcept(condition);
      Set<SupertypingRule> supertypingRules = myConceptsToSupertypingRulesCache.get(ruleConcept);
      if (supertypingRules == null) {
        supertypingRules = new HashSet<SupertypingRule>();
        myConceptsToSupertypingRulesCache.put(ruleConcept, supertypingRules);
      }
      supertypingRules.add(rule);
    }
    for (SubtypingVarianceRule rule : typesModel.getRoots(SubtypingVarianceRule.class)) {
      myVarianceRules.put(rule.getConceptDeclaration(), rule);
    }
  }

  public void clear() {
    myConceptsToSubtypingRulesCache.clear();
    myConceptsToSupertypingRulesCache.clear();
    myVarianceRules.clear();
  }

  public boolean isSubtype(SNode subtype, SNode supertype) {

    SNode subRepresentator = myTypeChecker.getEquationManager().getRepresentator(subtype);
    SNode superRepresentator = myTypeChecker.getEquationManager().getRepresentator(supertype);

    //reflexivity: structural equivalence
    if (MatchingUtil.matchNodes(subRepresentator, superRepresentator)) return true;

    if (subRepresentator == null || superRepresentator == null) {
      return false;
    }

    // transitivity: nominal equivalence
    return isStrictSubtype(subtype, supertype);
  }

  public boolean isStrictSubtype(SNode subtype, SNode supertype) {
    SNode subRepresentator = myTypeChecker.getEquationManager().getRepresentator(subtype);
    SNode superRepresentator = myTypeChecker.getEquationManager().getRepresentator(supertype);

    //variance:

     Set<ConceptDeclaration> superConcepts = new HashSet<ConceptDeclaration>();
    {
      Set<ConceptDeclaration> subConcepts = new HashSet<ConceptDeclaration>();
      ConceptDeclaration subConcept = subtype.getConceptDeclaration(GlobalScope.getInstance());
      subConcepts.add(subConcept);
      while (subConcept.getExtends() != null) {
        subConcept = subConcept.getExtends();
        subConcepts.add(subConcept);
      }
      ConceptDeclaration superConcept = supertype.getConceptDeclaration(GlobalScope.getInstance());
      superConcepts.add(superConcept);
      while (superConcept.getExtends() != null) {
        superConcept = superConcept.getExtends();
        superConcepts.add(superConcept);
      }
      superConcepts.retainAll(subConcepts);
    }

    if (!superConcepts.isEmpty()) {
      Set<String> roles = new HashSet<String>();
      Set<String> covariantRoles = new HashSet<String>();
      Set<String> contraVariantRoles = new HashSet<String>();
      Set<String> invariantRoles = new HashSet<String>();
      Set<String> allowsNull = new HashSet<String>();
      for (ConceptDeclaration superConcept : superConcepts) {
        if (myVarianceRules.containsKey(superConcept)) {
          SubtypingVarianceRule rule = myVarianceRules.get(superConcept);

          for (LinkVariance linkVariance : CollectionUtil.iteratorAsIterable(rule.linkVariances())) {
            String role = linkVariance.getLinkDeclaration().getRole();
            if (linkVariance.getAllowsNull()) {
              allowsNull.add(role);
            }
            if (linkVariance.getVariance() == _Variance_Enum.covariant) {
              covariantRoles.add(role);
            }
            if (linkVariance.getVariance() == _Variance_Enum.contravariant) {
              contraVariantRoles.add(role);
            }
            if (linkVariance.getVariance() == _Variance_Enum.invariant) {
              invariantRoles.add(role);
            }
          }
          roles.addAll(CollectionUtil.map(CollectionUtil.iteratorAsList(superConcept.linkDeclarations()), new Mapper<LinkDeclaration, String>() {
            public String map(LinkDeclaration p) {
              return p.getRole();
            }
          }));
        }}

      if (!covariantRoles.isEmpty() || !contraVariantRoles.isEmpty() || !invariantRoles.isEmpty()) {
        for (String role : roles) {
          List<SNode> subChildren = subRepresentator.getChildren(role);
          subChildren.add(subRepresentator.getReferent(role));
          List<SNode> superChildren = superRepresentator.getChildren(role);
          superChildren.add(superRepresentator.getReferent(role));

          while(subChildren.size() < superChildren.size()) {
            subChildren.add(null);
          }
          while(superChildren.size() < subChildren.size()) {
            superChildren.add(null);
          }

          Iterator<SNode> subIt = subChildren.iterator();
          Iterator<SNode> superIt = superChildren.iterator();
          for (; subIt.hasNext() ;) {
            SNode subChild = myTypeChecker.getAdaptationManager().adaptType(subIt.next());
            SNode superChild = myTypeChecker.getAdaptationManager().adaptType(superIt.next());
            if (covariantRoles.contains(role)) {
              if (allowsNull.contains(role) && superChild == null) continue;
              if (!isSubtype(subChild, superChild)) return false;
            } else if (contraVariantRoles.contains(role)) {
              if (allowsNull.contains(role) && subChild == null) continue;
              if (!isSubtype(superChild, subChild)) return false;
            } else if (invariantRoles.contains(role)) {
              if (allowsNull.contains(role) && superChild == null) continue;
              if (!MatchingUtil.matchNodes(subChild, superChild)) return false;
            }
          }
        }
        return true;
      }
    }

    // transitivity: nominal equivalence
    //supertypes
    Set<SNode> frontier = new HashSet<SNode>();
    Set<SNode> newFrontier = new HashSet<SNode>();
    frontier.add(subRepresentator);
    while (!frontier.isEmpty()) {
      for (SNode node : frontier) {
        Set<SNode> ancestors = collectSupertypes(node);
        if (ancestors == null) continue;
        ancestors.remove(node);
        if (ancestors.contains(superRepresentator)) return true;
        newFrontier.addAll(ancestors);
      }
      frontier = newFrontier;
      newFrontier = new HashSet<SNode>();
    }

    //subtypes
    frontier = new HashSet<SNode>();
    newFrontier = new HashSet<SNode>();
    frontier.add(superRepresentator);
    while (!frontier.isEmpty()) {
      for (SNode node : frontier) {
        Set<SNode> descendants = collectSubtypes(node);
        if (descendants == null) continue;
        descendants.remove(node);
        if (descendants.contains(subRepresentator)) return true;
        newFrontier.addAll(descendants);
      }
      frontier = newFrontier;
      newFrontier = new HashSet<SNode>();
    }

    return false;
  }

  public Set<SNode> collectSupertypes(SNode term) {
    Set<SNode> result = new HashSet<SNode>();
    Set<SubtypingRule> subtypingRules = myConceptsToSubtypingRulesCache.get(term.getNodeConcept());
    if (subtypingRules == null) return result;
    for (SubtypingRule rule : subtypingRules) {
      AnalyzedTermDeclaration applicableNode = rule.getApplicableNode();
      if (applicableNode == null) continue;
      Expression expression = rule.getSupertype();
      if (expression == null) continue;
      List<SNode> supertypes = getSupertypesOrSubtypes(term, applicableNode, expression);
      if (supertypes != null) {
        result.addAll(supertypes);
      }
    }
    return result;
  }

  public Set<SNode> collectSubtypes(SNode term) {
    Set<SNode> result = new HashSet<SNode>();
    Set<SupertypingRule> supertypingRules = myConceptsToSupertypingRulesCache.get(term.getNodeConcept());
    if (supertypingRules == null) return result;
    for (SupertypingRule rule : supertypingRules) {
      AnalyzedTermDeclaration applicableNode = rule.getApplicableNode();
      if (applicableNode == null) continue;
      Expression expression = rule.getSubtype();
      if (expression == null) continue;
      List<SNode> subtypes = getSupertypesOrSubtypes(term, applicableNode, expression);
      if (subtypes != null) {
        result.addAll(subtypes);
      }
    }
    return result;
  }

  public List<SNode> getSupertypesOrSubtypes(SNode term, AnalyzedTermDeclaration analyzedTermDeclaration, Expression targetExpression) {

    /*
    matching
    */

    ExpressionContext expressionContext = new ExpressionContext();

    VariableCondition termCondition = analyzedTermDeclaration.getCondition();
    if (termCondition instanceof QueryPattern) {
      ConditionMatcher conditionMatcher;
      try {
        conditionMatcher = new ConditionMatcher(termCondition);
      } catch(InvalidConditionException ex) {
        error("invalid condition", ex);
        return null;
      }
      // fills the expression context if matches
      if (!(conditionMatcher.matchesCondition(term, expressionContext))) return null;
    }
    //puts term variable into the expression context
    expressionContext.putNode(analyzedTermDeclaration, term);

    Object supertypeO = ExpressionEvaluatorManager.evaluate(expressionContext, targetExpression);
    if (supertypeO instanceof SNode) {
      List<SNode> result = new ArrayList<SNode>();
      result.add((SNode) supertypeO);
      return result;
    }
    if (supertypeO instanceof List) {
      boolean isCorrect = true;
      for (Object o : (List)supertypeO) {
        if (!(o instanceof SNode)) {
          isCorrect = false;
          break;
        }
      }
      if (isCorrect) return (List<SNode>) supertypeO;
    }
    return null;
  }

  private static void error(String s, Throwable t) {
    if (t != null) {
      LOG.error(s,t);
    } else {
      LOG.error(s);
    }
  }

  public Set<SNode> leastCommonSupertypes(Set<? extends SNode> types) {
    return leastCommonSupertypes(types, new NodeSupertypesCollector(this));
  }

  public SNode leastCommonSupertype(Set<? extends SNode> types) {
    Set<SNode> lcss = leastCommonSupertypes(types);
    if (lcss.size() != 1) {
      RuntimeErrorType type = new RuntimeErrorType(myTypeChecker.getRuntimeTypesModel());
      type.setErrorText("uncomparable types");
      return type;
    }
    return lcss.iterator().next();
  }


  public <T> Set<T> leastCommonSupertypes(Set<? extends T> types, SupertypesCollector<T> supertypesCollector) {

    Set<T> allTypes = new HashSet<T>(types);
    if (types.isEmpty()) return allTypes;
    Map<T, Set<T>> subTypesToSuperTypes = new HashMap<T, Set<T>>();

    Set<T> frontier = new HashSet<T>(types);
    Set<T> newFrontier = new HashSet<T>();
    while (!(frontier.isEmpty())) {
      for (T type : frontier) {
        Set<T> superTypes = supertypesCollector.collectSupertypes(type);
        superTypes.remove(type);
        newFrontier.addAll(superTypes);
        allTypes.addAll(superTypes);
        subTypesToSuperTypes.put(type, superTypes);
      }
      frontier = newFrontier;
      newFrontier = new HashSet<T>();
    }

    for (T node2 : allTypes) { // transitive closure
      for (T node1 : allTypes) {
        for (T node3 : allTypes) {
          if (node1 == node2 || node2 == node3 || node1 == node3) continue;
          Set<T> supertypes1 = subTypesToSuperTypes.get(node1);
          if (supertypes1 == null) continue;
          Set<T> supertypes2 = subTypesToSuperTypes.get(node2);
          if (supertypes2 == null) continue;
          if (supertypes1.contains(node2) && supertypes2.contains(node3)) {
            supertypes1.add(node3);
          }
        }
      }
    }


    Set<T> commonSupertypes = new HashSet<T>();
    T first = types.iterator().next();
    Set<T> candidates = subTypesToSuperTypes.get(first);
    if (candidates == null) {
      candidates = new HashSet<T>();
    } else {
      candidates = new HashSet<T>(candidates);
    }
    candidates.add(first);
    for (T node : candidates) {
      boolean good = true;
      for (T type : types) {
        if (type == node) continue;
        Set<T> supertypes = subTypesToSuperTypes.get(type);
        if (supertypes == null || !supertypes.contains(node)) {
          good = false;
          break;
        }
      }
      if (good) { // if all sets contain it
        commonSupertypes.add(node);
      }
    }

    for (T node : new HashSet<T>(commonSupertypes)) { // retaining only least common supertypes
      Set<T> supertypes = subTypesToSuperTypes.get(node);
      if (supertypes == null) continue;
      for (T supertype : supertypes) {
        if (commonSupertypes.contains(supertype)) {
          commonSupertypes.remove(supertype);
        }
      }
    }

    return commonSupertypes;
  }

  public SNode minType(Set<SNode> nodes) {
    SModel runtimeTypesModel = myTypeChecker.getRuntimeTypesModel();
    if (nodes.size() == 0) {
      RuntimeErrorType errorType = new RuntimeErrorType(runtimeTypesModel);
      errorType.setErrorText("uncomparable types");
      return errorType;
    }
    if (nodes.size() == 1) return nodes.iterator().next();
    SNode myMin = null;
    for (SNode node : nodes) {
      if (myMin == null) {
        myMin = node;
      } else {
        if (isSubtype(node, myMin)) {
          myMin = node;
        } else if (!isSubtype(myMin, node)) {
          RuntimeErrorType errorType = new RuntimeErrorType(runtimeTypesModel);
          errorType.setErrorText("uncomparable types");
          return errorType;
        }
      }
    }
    return myMin;
  }

  public SNode maxType(Set<SNode> nodes) {
    SModel runtimeTypesModel = myTypeChecker.getRuntimeTypesModel();
    if (nodes.size() == 0) {
      RuntimeErrorType errorType = new RuntimeErrorType(runtimeTypesModel);
      errorType.setErrorText("uncomparable types");
      return errorType;
    }
    if (nodes.size() == 1) return nodes.iterator().next();
    SNode myMax = null;
    for (SNode node : nodes) {
      if (myMax == null) {
        myMax = node;
      } else {
        if (isSubtype(myMax, node)) {
          myMax = node;
        } else if (!isSubtype(node, myMax)) {
          RuntimeErrorType errorType = new RuntimeErrorType(runtimeTypesModel);
          errorType.setErrorText("uncomparable types");
          return errorType;
        }
      }
    }
    return myMax;
  }


  public static interface SupertypesCollector<T> {
    Set<T> collectSupertypes(T subtype);
  }


  public static class NodeSupertypesCollector implements SupertypesCollector<SNode> {
    private SubtypingManager mySubtypingManager;
    public NodeSupertypesCollector(SubtypingManager subtypingManager) {
      mySubtypingManager = subtypingManager;
    }
    public Set<SNode> collectSupertypes(SNode subtype) {
      return mySubtypingManager.collectSupertypes(subtype);
    }
  }
}
