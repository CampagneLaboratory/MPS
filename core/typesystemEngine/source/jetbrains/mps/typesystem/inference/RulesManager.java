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

import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.smodel.*;
import jetbrains.mps.lang.typesystem.runtime.*;
import jetbrains.mps.lang.typesystem.runtime.AbstractDependentComputation_Runtime.DependentComputationWrapper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.util.Pair;

import java.util.Set;
import java.util.HashSet;

public class RulesManager {

  public static final Object RULES_LOCK = new Object();

  private TypeChecker myTypeChecker;
  private Set<String> myLoadedLanguages = new HashSet<String>();
  private RuleSet<InferenceRule_Runtime> myInferenceRules = new CheckingRuleSet<InferenceRule_Runtime>();
  private RuleSet<NonTypesystemRule_Runtime> myNonTypesystemRules = new CheckingRuleSet<NonTypesystemRule_Runtime>();
  private RuleSet<SubtypingRule_Runtime> mySubtypingRules = new RuleSet<SubtypingRule_Runtime>();
  private DoubleRuleSet<ComparisonRule_Runtime> myComparisonRules = new DoubleRuleSet<ComparisonRule_Runtime>();
  private DoubleRuleSet<InequationReplacementRule_Runtime> myReplacementRules = new DoubleRuleSet<InequationReplacementRule_Runtime>();
  private RuleSet<AbstractDependentComputation_Runtime> myDependentComputations = new RuleSet<AbstractDependentComputation_Runtime>();
  private RuleSet<DependentComputationWrapper> myDependentComputationsBlockedNodes = new RuleSet<DependentComputationWrapper>();

  private Set<IVariableConverter_Runtime> myVariableConverters = new HashSet<IVariableConverter_Runtime>();

  private DependenciesContainer myDependenciesContainer = new DependenciesContainer();

  private Set<SModelReference> myModelsWithLoadedRules = new HashSet<SModelReference>();

  private OverloadedOperationsManager myOverloadedOperationsManager;


  private static final Logger LOG = Logger.getLogger(RulesManager.class);

  public RulesManager(TypeChecker typeChecker) {
    myTypeChecker = typeChecker;
    myOverloadedOperationsManager = new OverloadedOperationsManager(myTypeChecker);
    SModelRepository.getInstance().addModelRepositoryListener(new SModelRepositoryAdapter() {
      public void modelRemoved(SModelDescriptor modelDescriptor) {
        myModelsWithLoadedRules.remove(modelDescriptor);
      }
    });
  }

  public void clear() {
    myLoadedLanguages.clear();
    myModelsWithLoadedRules.clear();
    myInferenceRules.clear();
    myNonTypesystemRules.clear();
    mySubtypingRules.clear();
    myComparisonRules.clear();
    myReplacementRules.clear();
    myDependenciesContainer.clear();
    myVariableConverters.clear();
    myOverloadedOperationsManager.clear();
    myDependentComputations.clear();
    myDependentComputationsBlockedNodes.clear();
  }

  public boolean hasModelLoadedRules(SModelReference modelReference) {
    return myModelsWithLoadedRules.contains(modelReference);
  }

  public void markModelHasLoadedRules(SModelReference modelReference) {
    myModelsWithLoadedRules.add(modelReference);
  }

  public boolean loadLanguage(String languageNamespace) {
    if (myLoadedLanguages.contains(languageNamespace)) {
      return true;
    }
    Language l = GlobalScope.getInstance().getLanguage(languageNamespace);
    if (l == null) {
      return false;
    }
    return loadLanguage(l);
  }

  public boolean loadLanguage(final Language l) {
    synchronized (RULES_LOCK) {
      if (myLoadedLanguages.contains(l.getModuleFqName())) {
        return true;
      }
      SModelDescriptor helginsModelDescriptor = LanguageAspect.TYPESYSTEM.get(l);
      if (helginsModelDescriptor == null) return false;
      String packageName = helginsModelDescriptor.getLongName();
      String oldClassname = "HelginsDescriptor";
      String classname = "TypesystemDescriptor";
      try {
        IHelginsDescriptor typesystemDescriptor;
        Class<? extends IHelginsDescriptor> c = (Class<? extends IHelginsDescriptor>) l.getClass(packageName + "." + classname);
        if (c == null) {
          c = (Class<? extends IHelginsDescriptor>) l.getClass(packageName + "." + oldClassname);
        }
        if (c != null) {
          typesystemDescriptor = c.newInstance();
          myInferenceRules.addRuleSetItem(typesystemDescriptor.getInferenceRules());
          myNonTypesystemRules.addRuleSetItem(typesystemDescriptor.getNonTypesystemRules());
          mySubtypingRules.addRuleSetItem(typesystemDescriptor.getSubtypingRules());
          myComparisonRules.addRuleSetItem(typesystemDescriptor.getComparisonRules());
          myReplacementRules.addRuleSetItem(typesystemDescriptor.getEliminationRules());
          myDependenciesContainer.addDependencies(typesystemDescriptor.getDependencies());
          myVariableConverters.addAll(typesystemDescriptor.getVariableConverters());
          myOverloadedOperationsManager.addOverloadedOperationsTypeProviders(typesystemDescriptor.getOverloadedOperationsTypesProviders());
          Set<AbstractDependentComputation_Runtime> dependentComputations = typesystemDescriptor.getDependentComputations();
          myDependentComputations.addRuleSetItem(dependentComputations);
          for (AbstractDependentComputation_Runtime dependentComputation : dependentComputations) {
            myDependentComputationsBlockedNodes.addRule(dependentComputation.getWrapper());
          }
          myComparisonRules.makeConsistent();
          myReplacementRules.makeConsistent();
          myDependenciesContainer.makeConsistent();
          myOverloadedOperationsManager.makeConsistent();
          return true;
        } else {
          return false;
        }
      } catch (Throwable t) {
        //     LOG.error("fail to instantiate HelginsDescriptor for language " + l.getNamespace());
        return false;
      } finally {
        myLoadedLanguages.add(l.getModuleFqName());
      }
    }
  }

  public IVariableConverter_Runtime getVariableConverter(SNode context, String role, SNode variable, boolean isAggregation) {
    synchronized (RULES_LOCK) {
      for (IVariableConverter_Runtime converter : myVariableConverters) {
        if (converter.isApplicable(context, role, variable, isAggregation)) return converter;
      }
      return null;
    }
  }

  public Set<Pair<InferenceRule_Runtime, IsApplicableStatus>> getInferenceRules(final SNode node) {
    synchronized (RULES_LOCK) {
      Set<Pair<InferenceRule_Runtime, IsApplicableStatus>> result =
        new HashSet<Pair<InferenceRule_Runtime, IsApplicableStatus>>();
      Set<InferenceRule_Runtime> ruleSet = myInferenceRules.getRules(node);
      for (InferenceRule_Runtime rule : ruleSet) {
        IsApplicableStatus status = rule.isApplicableAndPattern(node);
        if (status.isApplicable()) {
          result.add(new Pair<InferenceRule_Runtime, IsApplicableStatus>(rule, status));
        }
      }
      return result;
    }
  }

  public Set<Pair<NonTypesystemRule_Runtime, IsApplicableStatus>> getNonTypesystemRules(final SNode node) {
    synchronized (RULES_LOCK) {
    Set<Pair<NonTypesystemRule_Runtime, IsApplicableStatus>> result =
        new HashSet<Pair<NonTypesystemRule_Runtime, IsApplicableStatus>>();
      Set<NonTypesystemRule_Runtime> ruleSet = myNonTypesystemRules.getRules(node);
      for (NonTypesystemRule_Runtime rule : ruleSet) {
        IsApplicableStatus status = rule.isApplicableAndPattern(node);
        if (status.isApplicable()) {
          result.add(new Pair<NonTypesystemRule_Runtime, IsApplicableStatus>(rule, status));
        }
      }
      return result;
    }
  }

  public Set<Pair<SubtypingRule_Runtime, IsApplicableStatus>> getSubtypingRules(final SNode node, final boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node.getLanguageNamespace());
      Set<Pair<SubtypingRule_Runtime, IsApplicableStatus>> result =
        new HashSet<Pair<SubtypingRule_Runtime, IsApplicableStatus>>();
      Set<SubtypingRule_Runtime> ruleSet = mySubtypingRules.getRules(node);
      for (SubtypingRule_Runtime rule : ruleSet) {
        if ((isWeak || !rule.isWeak())) {
          IsApplicableStatus status = rule.isApplicableAndPattern(node);
          if (status.isApplicable()) {
            result.add(new Pair<SubtypingRule_Runtime, IsApplicableStatus>(rule, status));
          }
        }
      }
      return result;
    }
  }

  public boolean subtypingRulesByNodeAreAllByConcept(final SNode node, boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node.getLanguageNamespace());
      for (SubtypingRule_Runtime rule : mySubtypingRules.getRules(node)) {
        if (!isWeak && rule.isWeak()) {
          continue;
        }
        if (!rule.isApplicableAndPattern(node).isApplicable()) {
          return false;
        }
      }
      return true;
    }
  }

  public Set<Pair<ComparisonRule_Runtime, IsApplicable2Status>> getComparisonRules(final SNode node1, final SNode node2, final boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node1.getLanguageNamespace());
      loadLanguage(node2.getLanguageNamespace());
      Set<Pair<ComparisonRule_Runtime, IsApplicable2Status>> result = new HashSet<Pair<ComparisonRule_Runtime, IsApplicable2Status>>();
      Set<ComparisonRule_Runtime> ruleSet = myComparisonRules.getRules(node1, node2);
      for (ComparisonRule_Runtime rule : ruleSet) {
        if (isWeak || !rule.isWeak()) {
          IsApplicable2Status status = rule.isApplicableAndPatterns(node1, node2);
          if (status.isApplicable()) {
            result.add(new Pair<ComparisonRule_Runtime, IsApplicable2Status>(rule, status));
          }
        }
      }
      return result;
    }
  }

  public Set<Pair<InequationReplacementRule_Runtime, IsApplicable2Status>> getReplacementRules(final SNode node1, final SNode node2) {
    synchronized (RULES_LOCK) {
      Set<Pair<InequationReplacementRule_Runtime, IsApplicable2Status>> result = new HashSet<Pair<InequationReplacementRule_Runtime, IsApplicable2Status>>();
      Set<InequationReplacementRule_Runtime> ruleSet = myReplacementRules.getRules(node1, node2);
      for (InequationReplacementRule_Runtime rule : ruleSet) {
        IsApplicable2Status status = rule.isApplicableAndPatterns(node1, node2);
        if (status.isApplicable()) {
          result.add(new Pair<InequationReplacementRule_Runtime, IsApplicable2Status>(rule, status));
        }
      }
      return result;
    }
  }

  public Set<SNode> getDependencies(SNode node) {
    return myDependenciesContainer.getDependencies(node);
  }

  public SNode getOperationType(SNode operation, SNode leftOperandType, SNode rightOperandType) {
    return myOverloadedOperationsManager.getOperationType(operation, leftOperandType, rightOperandType);
  }

  public TypeChecker getTypeChecker() {
    return myTypeChecker;
  }

  public Set<AbstractDependentComputation_Runtime> getDependentComputations(final SNode node) {
    synchronized (RULES_LOCK) {
      return CollectionUtil.filter(myDependentComputations.getRules(node), new Condition<AbstractDependentComputation_Runtime>() {
        @Override
        public boolean met(AbstractDependentComputation_Runtime dependentComputation) {
          return dependentComputation.isApplicable(node);
        }
      });
    }
  }

  public boolean isBlockingDependentComputationNode(SNode node) {
    synchronized (RULES_LOCK) {
      Set<DependentComputationWrapper> set = myDependentComputationsBlockedNodes.getRules(node);
      if (set == null) return false;
      for (DependentComputationWrapper wrapper : set) {
        if (wrapper.isBlocking(node)) {
          return true;
        }
      }
      return false;
    }
  }
}
