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
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationFailureException;
import jetbrains.mps.generator.template.ITemplateGenerator;
import jetbrains.mps.generator.template.QueryExecutor;
import jetbrains.mps.lang.generator.structure.Reduction_MappingRule;
import jetbrains.mps.smodel.LanguageHierarchyCache;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.util.NameUtil;

import java.util.*;
import java.util.Map.Entry;

/**
 * Igor Alshannikov
 * Date: Jan 21, 2007
 */
public class FastRuleFinder {
  private Map<String, Reduction_MappingRule[]> myApplicableRules = new HashMap<String, Reduction_MappingRule[]>();

  public FastRuleFinder(Iterable<Reduction_MappingRule> reductionRules) {
    Map<String, List<Reduction_MappingRule>> applicableRules = new HashMap<String, List<Reduction_MappingRule>>();
    for (Reduction_MappingRule rule : reductionRules) {
      Set<String> applicableTo = new LinkedHashSet<String>();
      String applicableConceptFqName = NameUtil.nodeFQName(rule.getApplicableConcept());

      applicableTo.add(applicableConceptFqName);
      if (rule.getApplyToConceptInheritors()) {
        applicableTo.addAll(LanguageHierarchyCache.getInstance().getAllDescendantsOfConcept(applicableConceptFqName));
      }

      for (String conceptFqName : applicableTo) {
        if (!applicableRules.containsKey(conceptFqName)) {
          applicableRules.put(conceptFqName, new ArrayList<Reduction_MappingRule>());
        }
        applicableRules.get(conceptFqName).add(rule);
      }
    }

    for (Entry<String, List<Reduction_MappingRule>> entry : applicableRules.entrySet()) {
      List<Reduction_MappingRule> rules = entry.getValue();
      myApplicableRules.put(entry.getKey(), rules.toArray(new Reduction_MappingRule[rules.size()]));
    }
  }

  /*package*/ Reduction_MappingRule findReductionRule(SNode node, ITemplateGenerator generator) throws GenerationFailureException {
    Reduction_MappingRule[] allRules = myApplicableRules.get(node.getConceptFqName());
    if (allRules == null) {
      return null;
    }

    for (Reduction_MappingRule rule : allRules) {
      if (!isDisabledReductionForNode(node, rule, generator)) {
        if (QueryExecutor.checkCondition(rule.getConditionFunction(), false, node, rule.getNode(), generator)) {
          registerReduction(node, rule, generator);
          return rule;
        }
      }
    }
    return null;
  }

  private void registerReduction(SNode inputNode, Reduction_MappingRule rule, ITemplateGenerator generator) {
    getBlockedReductionsData(generator).registerInputReduction(inputNode, rule);
  }

  private boolean isDisabledReductionForNode(SNode node, Reduction_MappingRule rule, ITemplateGenerator generator) {
//    return false;
    return getBlockedReductionsData(generator).isReductionBlocked(node, rule);
  }

  public void disableReductionsForOutput(SNode inputNode, SNode outputNode, ITemplateGenerator generator) {
    getBlockedReductionsData(generator).blockReductionsForOutput(inputNode, outputNode);
  }

  public boolean startReductionBlockingForInput(SNode inputNode, ITemplateGenerator generator) {
    return getBlockedReductionsData(generator).startReductionBlockingForInput(inputNode);
  }

  public void stopReductionBlockingForInput(SNode inputNode, ITemplateGenerator generator) {
    getBlockedReductionsData(generator).stopReductionBlockingForInput(inputNode);
  }

  private BlockedReductionsData getBlockedReductionsData(ITemplateGenerator generator) {
    Object blockedReductions = generator.getGeneratorSessionContext().getStepObject(BlockedReductionsData.KEY);
    if (blockedReductions == null) {
      blockedReductions = new BlockedReductionsData();
      generator.getGeneratorSessionContext().putStepObject(BlockedReductionsData.KEY, blockedReductions);
    }
    return (BlockedReductionsData) blockedReductions;
  }

  private static class BlockedReductionsData {
    public static final Object KEY = new Object();
    private Map<SNodeId, Object> myInputReductionsData = new HashMap<SNodeId, Object>();
    private Map<SNodeId, Object> myBlockedReductionData = new HashMap<SNodeId, Object>();
    private Set<SNodeId> myBlockedInput = new HashSet<SNodeId>();

    public void registerInputReduction(SNode inputNode, Reduction_MappingRule rule) {
      SNodeId nodeId = inputNode.getSNodeId();
      Object o = myInputReductionsData.get(nodeId);
      if (o == rule) return;

      if (o == null) {
        myInputReductionsData.put(nodeId, rule);
      } else if (o instanceof Reduction_MappingRule) {
        List<Reduction_MappingRule> list = new ArrayList<Reduction_MappingRule>(2);
        list.add((Reduction_MappingRule) o);
        list.add(rule);
        myInputReductionsData.put(nodeId, list);
      } else {
        ((List) o).add(rule);
      }
    }

    public boolean isReductionBlocked(SNode node, Reduction_MappingRule rule) {
      SNodeId nodeId = node.getSNodeId();
      boolean b = isReductionBlocked(nodeId, rule, myBlockedReductionData);
      if (!b) {
        if (myBlockedInput.contains(nodeId)) {
          return isReductionBlocked(nodeId, rule, myInputReductionsData);
        }
      }
      return b;
    }

    private boolean isReductionBlocked(SNodeId nodeId, Reduction_MappingRule rule, Map<SNodeId, Object> reductionBlockingData) {
      Object o = reductionBlockingData.get(nodeId);
      if (o == null) return false;
      if (o == rule) return true;
      if (o instanceof List) {
        return ((List) o).contains(rule);
      }
      return false;
    }

    public void blockReductionsForOutput(SNode inputNode, SNode outputNode) {
      SNodeId inputNodeId = inputNode.getSNodeId();
      SNodeId outputNodeId = outputNode.getSNodeId();
      Object o = myInputReductionsData.get(inputNodeId);
      if (o == null) return;
      myBlockedReductionData.put(outputNodeId, o);
    }

    /**
     * @return true if the input wasn't already blocked
     */
    public boolean startReductionBlockingForInput(SNode inputNode) {
      return myBlockedInput.add(inputNode.getSNodeId());
    }

    public void stopReductionBlockingForInput(SNode inputNode) {
      SNodeId id = inputNode.getSNodeId();
      assert myBlockedInput.contains(id) : "input wasn't blocked";
      myBlockedInput.remove(id);
    }
  }
}
