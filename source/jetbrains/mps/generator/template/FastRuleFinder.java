package jetbrains.mps.generator.template;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.smodel.BaseAdapter;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.transformation.TLBase.structure.Reduction_MappingRule;

import java.util.*;

/**
 * Igor Alshannikov
 * Date: Jan 21, 2007
 */
public class FastRuleFinder {
  private List<Reduction_MappingRule> myRuleList;
  private Map<ConceptDeclaration, List<Reduction_MappingRule>> myRules_all = new HashMap<ConceptDeclaration, List<Reduction_MappingRule>>();
  private Map<ConceptDeclaration, List<Reduction_MappingRule>> myRules_applicableExactly = new HashMap<ConceptDeclaration, List<Reduction_MappingRule>>();
  private Map<ConceptDeclaration, List<Reduction_MappingRule>> myRules_applicableInheritor = new HashMap<ConceptDeclaration, List<Reduction_MappingRule>>();

  public FastRuleFinder(List<Reduction_MappingRule> reductionRules) {
    myRuleList = reductionRules;
    ConceptDeclaration baseConcept = SModelUtil_new.getBaseConcept();
    myRules_applicableExactly.put(baseConcept, new LinkedList<Reduction_MappingRule>());
    myRules_applicableInheritor.put(baseConcept, new LinkedList<Reduction_MappingRule>());

    // group rules by concept
    for (Reduction_MappingRule rule : reductionRules) {
      ConceptDeclaration applicableConcept = rule.getApplicableConcept();
      if (applicableConcept == null) applicableConcept = baseConcept;
      addRule_applicableExactly(applicableConcept, rule);
    }
  }

  private void addRule_applicableExactly(ConceptDeclaration concept, Reduction_MappingRule rule) {
    if (!myRules_applicableExactly.containsKey(concept)) {
      myRules_applicableExactly.put(concept, new LinkedList<Reduction_MappingRule>());
    }
    myRules_applicableExactly.get(concept).add(rule);
  }

  private ConceptDeclaration getExtendedConcept(ConceptDeclaration concept, ConceptDeclaration baseConcept) {
    if (concept == baseConcept) return null;
    ConceptDeclaration extendedConcept = concept.getExtends();
    if (extendedConcept != null) return extendedConcept;
    return baseConcept;
  }

  private void cacheAllApplicableRules(ConceptDeclaration concept, ConceptDeclaration baseConcept) {
    if (myRules_all.containsKey(concept)) return;

    List<ConceptDeclaration> hierarchy = new LinkedList<ConceptDeclaration>();
    while (concept != null) {
      hierarchy.add(concept);
      if (myRules_all.containsKey(concept)) {
        break;
      }
      myRules_applicableInheritor.put(concept, new LinkedList<Reduction_MappingRule>());
      concept = getExtendedConcept(concept, baseConcept);
    }
    Collections.reverse(hierarchy);

    // rules for inheritor
    List<Reduction_MappingRule> rulesForInheritor = null;
    for (ConceptDeclaration hrrConcept : hierarchy) {
      rulesForInheritor = updateRulesForInheritor(hrrConcept, rulesForInheritor);
      List<Reduction_MappingRule> list = myRules_applicableExactly.get(hrrConcept);
      if (list != null) {
        for (Reduction_MappingRule rule : list) {
          if (rule.getApplyToConceptInheritors()) {
            rulesForInheritor.add(rule);
          }
        }
      }
    }

    // all rules
    for (ConceptDeclaration hrrConcept : hierarchy) {
      if (myRules_all.containsKey(hrrConcept)) {
        continue;
      }
      myRules_all.put(hrrConcept, new LinkedList<Reduction_MappingRule>());
      List<Reduction_MappingRule> rulesExectly = myRules_applicableExactly.get(hrrConcept);
      if (rulesExectly != null) {
        myRules_all.get(hrrConcept).addAll(rulesExectly);
      }
      myRules_all.get(hrrConcept).addAll(myRules_applicableInheritor.get(hrrConcept));
    }
  }

  private List<Reduction_MappingRule> updateRulesForInheritor(ConceptDeclaration concept, List<Reduction_MappingRule> addRulesForInheritor) {
    List<Reduction_MappingRule> currentRulesForInheritor = myRules_applicableInheritor.get(concept);
    if (addRulesForInheritor != null) {
      currentRulesForInheritor.addAll(addRulesForInheritor);
    }
    return currentRulesForInheritor;
  }

  public SNode findReductionRule(SNode node, ITemplateGenerator generator) {
    ConceptDeclaration concept = node.getConceptDeclarationAdapter();

    List<Reduction_MappingRule> allRules = myRules_all.get(concept);
    if (allRules == null) {
      // lazy init: get all rules from inherited concepts
      cacheAllApplicableRules(concept, SModelUtil_new.getBaseConcept());
      allRules = myRules_all.get(concept);
    }

    if (allRules == null) {
      return null;
    }


    for (Reduction_MappingRule rule : allRules) {
      if (TemplateGenUtil.checkConditionForBaseMappingRule(node, rule, generator)) {
        return BaseAdapter.fromAdapter(rule);
      }
    }
    return null;
  }

  /**
   * for test
   */
  public SNode findReductionRule_SLOW(SNode node, ITemplateGenerator generator) {
    ConceptDeclaration concept = node.getConceptDeclarationAdapter(generator.getScope());
    for (Reduction_MappingRule rule : myRuleList) {
      if (TemplateGenUtil.checkPremiseForBaseMappingRule(node, concept, rule, generator)) {
        return BaseAdapter.fromAdapter(rule);
      }
    }
    return null;
  }
}
