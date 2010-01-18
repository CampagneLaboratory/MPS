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
package jetbrains.mps.lang.typesystem.runtime;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.LanguageHierarchyCache;
import jetbrains.mps.lang.structure.structure.InterfaceConceptReference;
import jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;

public class RuleSet<T extends IApplicableToConcept> {
  Map<AbstractConceptDeclaration, Set<T>> myRules = new HashMap<AbstractConceptDeclaration, Set<T>>();
  Map<AbstractConceptDeclaration, Set<T>> myRulesCache = new HashMap<AbstractConceptDeclaration, Set<T>>();


  public void addRuleSetItem(Set<T> rules) {
    for (T rule : rules) {
      AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(rule.getApplicableConceptFQName(), GlobalScope.getInstance());
      Set<T> existingRules = myRules.get(concept);
      if (existingRules == null) {
        existingRules = new HashSet<T>(2);
        myRules.put(concept, existingRules);
      }
      existingRules.add(rule);
    }

    myRulesCache.clear();
  }

  public Set<T> getRules(SNode node) {
    AbstractConceptDeclaration conceptDeclaration = node.getConceptDeclarationAdapter();
    return get(conceptDeclaration);
  }

  protected Set<T> get(AbstractConceptDeclaration key) {
    Set<T> cachedResult = myRulesCache.get(key);
    if (cachedResult != null) {
      return new HashSet<T>(cachedResult);
    }

    Set<T> result = computeRuleSet(key);
    myRulesCache.put(key, new HashSet<T>(result));
    return result;
  }

  private Set<T> computeRuleSet(AbstractConceptDeclaration key) {
    Set<T> result = new HashSet<T>();
    Set<AbstractConceptDeclaration> frontier = new HashSet<AbstractConceptDeclaration>();
    Set<AbstractConceptDeclaration> newFrontier = new HashSet<AbstractConceptDeclaration>();
    frontier.add(key);
    while (!frontier.isEmpty()) {
      for (AbstractConceptDeclaration abstractConcept : frontier) {
        Set<T> rules = myRules.get(abstractConcept);
        boolean overrides = false;
        if (rules != null) {
          result.addAll(rules);
          for (T rule : rules) {
            if (rule instanceof ICheckingRule_Runtime && ((ICheckingRule_Runtime) rule).overrides()) {
              overrides = true;
            }
          }
        }
        //else {
        if (overrides) {
          continue;
        }
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
        //}

      }
      frontier = newFrontier;
      newFrontier = new HashSet<AbstractConceptDeclaration>();
    }
    return result;
  }

  public void clear() {
    myRules.clear();
    myRulesCache.clear();
  }
}
