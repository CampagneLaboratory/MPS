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
import jetbrains.mps.lang.typesystem.runtime.*;
import jetbrains.mps.lang.typesystem.runtime.AbstractDependentComputation_Runtime.DependentComputationWrapper;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.project.GlobalScope;

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

  void markModelHasLoadedRules(SModelReference modelReference) {
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
      if (myLoadedLanguages.contains(l.getNamespace())) {
        return true;
      }
      SModelDescriptor helginsModelDescriptor = l.getTypesystemModelDescriptor();
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
        myLoadedLanguages.add(l.getNamespace());
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

  public Set<InferenceRule_Runtime> getInferenceRules(final SNode node) {
    synchronized (RULES_LOCK) {
      return CollectionUtil.filter(myInferenceRules.getRules(node), new Condition<InferenceRule_Runtime>() {
        public boolean met(InferenceRule_Runtime object) {
          return object.isApplicable(node);
        }
      });
    }
  }

  public Set<NonTypesystemRule_Runtime> getNonTypesystemRules(final SNode node) {
    synchronized (RULES_LOCK) {
      return CollectionUtil.filter(myNonTypesystemRules.getRules(node), new Condition<NonTypesystemRule_Runtime>() {
        public boolean met(NonTypesystemRule_Runtime object) {
          return object.isApplicable(node);
        }
      });
    }
  }

  public Set<SubtypingRule_Runtime> getSubtypingRules(final SNode node, final boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node.getLanguageNamespace());
      return CollectionUtil.filter(mySubtypingRules.getRules(node), new Condition<SubtypingRule_Runtime>() {
        public boolean met(SubtypingRule_Runtime object) {
          return (isWeak || !object.isWeak()) && object.isApplicable(node);
        }
      });
    }
  }

  public boolean subtypingRulesByNodeAreAllByConcept(final SNode node, boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node.getLanguageNamespace());
      for (SubtypingRule_Runtime rule : mySubtypingRules.getRules(node)) {
        if (!isWeak && rule.isWeak()) {
          continue;
        }
        if (!rule.isApplicable(node)) {
          return false;
        }
      }
      return true;
    }
  }

  public Set<ComparisonRule_Runtime> getComparisonRules(final SNode node1, final SNode node2, final boolean isWeak) {
    synchronized (RULES_LOCK) {
      loadLanguage(node1.getLanguageNamespace());
      loadLanguage(node2.getLanguageNamespace());
      Set<ComparisonRule_Runtime> result = new HashSet<ComparisonRule_Runtime>();
      result.addAll(
        CollectionUtil.filter(myComparisonRules.getRules(node1, node2), new Condition<ComparisonRule_Runtime>() {
          public boolean met(ComparisonRule_Runtime object) {
            return (isWeak || !object.isWeak()) && object.isApplicable(node1, node2);
          }
        }));
      return result;
    }
  }

  public Set<InequationReplacementRule_Runtime> getReplacementRules(final SNode node1, final SNode node2) {
    synchronized (RULES_LOCK) {
      Set<InequationReplacementRule_Runtime> result = new HashSet<InequationReplacementRule_Runtime>();
      result.addAll(
        CollectionUtil.filter(myReplacementRules.getRules(node1, node2), new Condition<InequationReplacementRule_Runtime>() {
          public boolean met(InequationReplacementRule_Runtime object) {
            return object.isApplicable(node1, node2);
          }
        }));
      return result;
    }
  }

  public Set<SNode> getDependencies(SNode node) {
    synchronized (RULES_LOCK) {
      return myDependenciesContainer.getDependencies(node);
    }
  }

  public SNode getOperationType(SNode operation, SNode leftOperandType, SNode rightOperandType) {
    synchronized (RULES_LOCK) {
      return myOverloadedOperationsManager.getOperationType(operation, leftOperandType, rightOperandType);
    }
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
