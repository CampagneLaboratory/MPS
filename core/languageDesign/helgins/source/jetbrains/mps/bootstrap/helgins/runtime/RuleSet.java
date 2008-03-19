package jetbrains.mps.bootstrap.helgins.runtime;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference;
import jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptDeclaration;
import jetbrains.mps.project.GlobalScope;

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 30.03.2007
 * Time: 18:55:53
 * To change this template use File | Settings | File Templates.
 */
public class RuleSet<T extends Rule_Runtime> {
  Map<AbstractConceptDeclaration, Set<T>> myRules = new HashMap<AbstractConceptDeclaration, Set<T>>();

  public void addRuleSetItem(Set<T> rules) {
    for (T rule : rules) {
      AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(rule.getApplicableConceptFQName(), GlobalScope.getInstance());
      Set<T> existingRules = myRules.get(concept);
      if (existingRules == null) {
        existingRules = new HashSet<T>(2);
        myRules.put(concept,
          existingRules);
      }
      existingRules.add(rule);
    }
  }

  public Set<T> getRules(SNode node) {
    AbstractConceptDeclaration conceptDeclaration = node.getConceptDeclarationAdapter();
    return get(conceptDeclaration);
  }

  protected Set<T> get(AbstractConceptDeclaration key) {
    Set<T> result = new HashSet<T>();
    Set<AbstractConceptDeclaration> frontier = new HashSet<AbstractConceptDeclaration>();
    Set<AbstractConceptDeclaration> newFrontier = new HashSet<AbstractConceptDeclaration>();
    frontier.add(key);
    while (!frontier.isEmpty()) {
      for (AbstractConceptDeclaration abstractConcept : frontier) {
        Set<T> rules = myRules.get(abstractConcept);
        if (rules != null) {
          result.addAll(rules);
        } else {
          if (abstractConcept instanceof ConceptDeclaration) {
            ConceptDeclaration conceptDeclaration = (ConceptDeclaration) abstractConcept;
            newFrontier.add(conceptDeclaration.getExtends());
            for (InterfaceConceptReference interfaceConceptReference : conceptDeclaration.getImplementses()) {
              newFrontier.add(interfaceConceptReference.getIntfc());
            }
          }
          if (abstractConcept instanceof InterfaceConceptDeclaration) {
            InterfaceConceptDeclaration interfaceConcept = (InterfaceConceptDeclaration) abstractConcept;
            for (InterfaceConceptReference interfaceConceptReference : interfaceConcept.getExtendses()) {
              newFrontier.add(interfaceConceptReference.getIntfc());
            }
          }
        }
      }
      frontier = newFrontier;
      newFrontier = new HashSet<AbstractConceptDeclaration>();
    }
    Set<T> rulesForKey = myRules.get(key);
    if (rulesForKey == null) {
      rulesForKey = new HashSet<T>();
      myRules.put(key, rulesForKey);
    }
    rulesForKey.addAll(result);
    return result;
  }

  public void makeConsistent() {
    for (AbstractConceptDeclaration conceptDeclaration : myRules.keySet()) {
      if (conceptDeclaration == null) {
        continue;
      }
      Set<T> rules = myRules.get(conceptDeclaration);
      if (rules == null) continue;
      if(!(conceptDeclaration instanceof ConceptDeclaration)) continue;
      ConceptDeclaration parent = ((ConceptDeclaration)conceptDeclaration).getExtends();
      while (parent != null) {
        Set<T> parentRules = myRules.get(parent);
        if (parentRules != null) {
          rules.addAll(parentRules);
        }
        parent = parent.getExtends();
      }
    }
  }

  public void clear() {
    myRules.clear();
  }
}
