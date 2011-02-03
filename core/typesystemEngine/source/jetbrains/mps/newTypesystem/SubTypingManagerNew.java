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
package jetbrains.mps.newTypesystem;

import com.intellij.openapi.util.Computable;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import jetbrains.mps.lang.typesystem.runtime.*;
import jetbrains.mps.newTypesystem.state.Equations;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.*;
import jetbrains.mps.typesystem.inference.*;
import jetbrains.mps.typesystem.inference.util.StructuralNodeSet;
import jetbrains.mps.typesystem.inference.util.SubtypingCache;
import jetbrains.mps.typesystemEngine.util.LatticeUtil;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.Nullable;

import java.util.*;

public class SubTypingManagerNew extends SubtypingManager {
  private TypeChecker myTypeChecker;
  private State myState;
  private CoercionManager myCoercionManager;

  public SubTypingManagerNew(TypeChecker typeChecker) {
    super(typeChecker);
    myTypeChecker = typeChecker;
    myState = null;
    myCoercionManager = new CoercionManager(typeChecker, this);
  }

  public boolean isSubTypeByReplacementRules(SNode subType, SNode superType) {
    for (Pair<InequationReplacementRule_Runtime, IsApplicable2Status> rule : myTypeChecker.getRulesManager().getReplacementRules(subType, superType)) {
      if (rule.o1.checkInequation(subType, superType, new EquationInfo(null, null), rule.o2)) {
        return true;
      }
    }
    return false;
  }

  @Override
  public boolean isSubtype(SNode subType, SNode superType, boolean isWeak) {
    if (null == subType || null == superType) {
      return false;
    }
    if (isSubTypeByReplacementRules(subType, superType)) {
      return true;
    }
    return isSubType(subType, superType, null, null, isWeak);
  }

  public boolean isSubType(SNode subType, SNode superType, @Nullable EquationInfo info, State state, boolean isWeak) {
    myState = state;
    if (subType == superType) {
      return true;
    }
    if (null == subType || null == superType) {
      return false;
    }
    if (!TypesUtil.hasVariablesInside(superType) && !TypesUtil.hasVariablesInside(subType)) {
      Boolean answer = getCacheAnswer(subType, superType, isWeak);
      if (answer != null) {
        return answer;
      }
    }

    if (meetsAndJoins(subType, superType, info, isWeak)) {
      return true;
    }
    Equations equations = null;
    if (myState!=null) {
      equations = myState.getEquations();
    }
    if (TypesUtil.match(subType, superType, equations, info)) {
      return true;
    }
    return searchInSuperTypes(subType, new NodeMatcher(superType, equations, info), info, isWeak);
  }

  private boolean meetsAndJoins(SNode subType, SNode superType, EquationInfo info, boolean isWeak) {
    if (LatticeUtil.isJoin(superType)) {
      for (SNode argument : LatticeUtil.getJoinArguments(superType)) {
        if (!TypesUtil.hasVariablesInside(argument) && isSubTypeByReplacementRules(subType, argument)) {
          return true;
        }
        if (isSubType(subType, argument, info, myState, isWeak)) {
          return true;
        }
      }
    }
    if (LatticeUtil.isMeet(subType)) {
      for (SNode argument : LatticeUtil.getMeetArguments(subType)) {
       if (!TypesUtil.hasVariablesInside(superType) && isSubTypeByReplacementRules(argument, superType)) {
          return true;
        }
        if (isSubType(argument, superType, info, myState, isWeak)) {
          return true;
        }
      }
    }
    if (LatticeUtil.isMeet(superType)) {
      boolean result = true;
      for (SNode argument : LatticeUtil.getMeetArguments(superType)) {
        if (result && !isSubType(subType, argument, info, myState, isWeak)) {
          result = false;
        }
      }
      if (result) {
        return true;
      }
    }
    return false;
  }

  boolean searchInSuperTypes(SNode subType, INodeMatcher superType, @Nullable EquationInfo errorInfo, boolean isWeak) {
    TypeCheckingContextNew typeCheckingContextNew = myState == null ? null : myState.getTypeCheckingContext();
    StructuralNodeSet<?> frontier = new StructuralNodeSet();
    StructuralNodeSet<?> newFrontier = new StructuralNodeSet();
    StructuralNodeSet<?> yetPassed = new StructuralNodeSet();
    frontier.add(subType);
    while (!frontier.isEmpty()) {
      Set<SNode> yetPassedRaw = new HashSet<SNode>();
      //collecting a set of frontier's ancestors
      StructuralNodeSet<?> ancestors = new StructuralNodeSet();
      for (SNode node : frontier) {
        collectImmediateSuperTypes(node, isWeak, ancestors, typeCheckingContextNew);
        yetPassedRaw.add(node);
      }
      ArrayList<SNode> ancestorsSorted;
      ancestorsSorted = new ArrayList<SNode>(ancestors);
      Collections.sort(ancestorsSorted, new Comparator<SNode>() {
        public int compare(SNode o1, SNode o2) {
          return TypesUtil.depth(o2) - TypesUtil.depth(o1);
        }
      });
      for (SNode ancestor : ancestorsSorted) {
        if (superType.matchesWith(ancestor)) {
          addToCache(subType, superType, true, isWeak);
          return true;
        }
      }
      for (SNode passedNodeRaw : yetPassedRaw) {
        yetPassed.add(passedNodeRaw);
      }
      for (SNode passedNode : yetPassed) {
        ancestors.removeStructurally(passedNode);
      }

      newFrontier.addAllStructurally(ancestors);
      yetPassed.addAllStructurally(ancestors);
      frontier = newFrontier;
      newFrontier = new StructuralNodeSet();
    }
    addToCache(subType, superType, false, isWeak);
    return false;
  }


  private void collectImmediateSuperTypes(final SNode term, boolean isWeak, StructuralNodeSet result, final TypeCheckingContext context) {
    if (term == null) {
      return;
    }
    Set<Pair<SubtypingRule_Runtime, IsApplicableStatus>> subtypingRule_runtimes = myTypeChecker.getRulesManager().getSubtypingRules(term, isWeak);
    if (subtypingRule_runtimes != null) {
      for (final Pair<SubtypingRule_Runtime, IsApplicableStatus> subtypingRule : subtypingRule_runtimes) {
        List<SNode> superTypes = subtypingRule.o1.getSubOrSuperTypes(term, context, subtypingRule.o2);
        if (superTypes !=null) {
          result.addAll(superTypes);
        }
      }
    }
  }

  private List<SNode> eliminateSubOrSuperTypes(List<SNode> types, boolean sub) {
    List<SNode> result = new LinkedList<SNode>();
    Set<SNode> toRemove = new HashSet<SNode>();
    for (SNode type : types) {
      boolean toAdd = true;
      for (SNode resultType : result) {
        if (subOrSuperType(resultType, type, sub, true)) {
          toAdd = false;
          break;
        }
        if (subOrSuperType(type, resultType, sub, true)) {
          toRemove.add(resultType);
        }
      }
      if (toAdd) {
        result.add(type);
      }
      for (SNode removeType : toRemove) {
        result.remove(removeType);
      }
    }
    return result;
  }

  public SNode createMeet(List<SNode> types) {
    if (types.size() > 1) {
       types = eliminateSubOrSuperTypes(types, true);
    }
    return types.iterator().next();
    // todo implement meet
  }

  private boolean isSuperType(SNode superType, Set<SNode> possibleSubTypes) {
    for (SNode subType : possibleSubTypes) {
      if (isSubtype(subType, superType, true)) {
        return true;
      }
    }
    return false;
  }

  private Set<SNode> leastCommonSuperTypes(SNode left, SNode right) {
    TypeCheckingContextNew typeCheckingContextNew = myState == null ? null : myState.getTypeCheckingContext();
    StructuralNodeSet<?> frontier = new StructuralNodeSet();
    StructuralNodeSet<?> newFrontier = new StructuralNodeSet();
    StructuralNodeSet<?> yetPassed = new StructuralNodeSet();
    Set<SNode> result = new HashSet<SNode>();
    frontier.add(left);
    while (!frontier.isEmpty()) {
      Set<SNode> yetPassedRaw = new HashSet<SNode>();
      //collecting a set of frontier's ancestors
      StructuralNodeSet<?> ancestors = new StructuralNodeSet();
      for (SNode node : frontier) {
        collectImmediateSuperTypes(node, true, ancestors, typeCheckingContextNew);
        yetPassedRaw.add(node);
      }
      for (SNode ancestor : ancestors) {
        if (isSubtype(right, ancestor, true)) {
          if (!isSuperType(ancestor,result)) {
            result.add(ancestor);
          }
        }
      }
      for (SNode passedNodeRaw : yetPassedRaw) {
        yetPassed.add(passedNodeRaw);
      }
      for (SNode passedNode : yetPassed) {
        ancestors.removeStructurally(passedNode);
      }
      for (SNode resultNode : result) {
        ancestors.removeStructurally(resultNode);
      }

      newFrontier.addAllStructurally(ancestors);
      yetPassed.addAllStructurally(ancestors);
      frontier = newFrontier;
      newFrontier = new StructuralNodeSet();
    }
    return result;
  }

  private SNode leastCommonSuperType(List<SNode> types) {
    if (types.size() == 0) {
      return null;
    }
    int newNodesSize = 1;
    while (types.size() > newNodesSize) {
      SNode left = types.remove(0);
      SNode right = types.remove(0);
      Set<SNode> newNodes = leastCommonSuperTypes(left, right);
      newNodesSize = newNodes.size();
      types.addAll(newNodes);
    }
    return LatticeUtil.meetNodes(new HashSet<SNode>(types));
  }

  private boolean subOrSuperType(SNode left, SNode right, boolean sub, boolean isWeak) {
    if (sub) {
      return isSubtype(left, right, isWeak);
    } else {
      return isSubtype(right, left, isWeak);
    }
  }  

  public SNode createLCS(List<SNode> types) {
    if (types.size() == 1) {
      return types.iterator().next();
    }
    if (types.size() > 1) {
      Collections.sort(types, new Comparator<SNode>() {
        public int compare(SNode node1, SNode node2) {
          return node1.getPresentation().compareTo(node2.getPresentation());
        }
      }) ;
      types = eliminateSubOrSuperTypes(types, false);
    }
    return leastCommonSuperType(types);
  }

  public boolean isComparableByRules(SNode left, SNode right, EquationInfo info, boolean isWeak) {
    if (left == null || right == null) {
      return false;
    }
    Set<Pair<ComparisonRule_Runtime, IsApplicable2Status>> comparisonRule_runtimes = myTypeChecker.getRulesManager().getComparisonRules(left, right, isWeak);
    if (comparisonRule_runtimes != null) {
      for (Pair<ComparisonRule_Runtime, IsApplicable2Status> comparisonRule_runtime : comparisonRule_runtimes) {
        if (comparisonRule_runtime.o1.areComparable(left, right, comparisonRule_runtime.o2)) return true;
      }
    }
    comparisonRule_runtimes = myTypeChecker.getRulesManager().getComparisonRules(right, left, isWeak);
    if (comparisonRule_runtimes != null) {
      for (Pair<ComparisonRule_Runtime, IsApplicable2Status> comparisonRule_runtime : comparisonRule_runtimes) {
        if (comparisonRule_runtime.o1.areComparable(right, left, comparisonRule_runtime.o2)) return true;
      }
    }
    return false;
  }


  public SNode coerceSubTypingNew(final SNode subtype, final IMatchingPattern pattern, final boolean isWeak, final State state) {
    return myCoercionManager.coerceSubTypingNew(subtype, pattern, isWeak, state);
  }

  private Boolean getCacheAnswer(SNode subType, SNode superType, boolean isWeak) {
    SubtypingCache cache = myTypeChecker.getSubtypingCache();
    if (cache != null) {
      Boolean answer = cache.getAnswer(subType,superType, isWeak);
      if (answer != null) {
        return answer;
      }
    }
    cache = myTypeChecker.getGlobalSubtypingCache();
    if (cache != null) {
      Boolean answer = cache.getAnswer(subType,superType, isWeak);
      if (answer != null) {
        return answer;
      }
    }
    return null;
  }

  private void addToCache(SNode subType, INodeMatcher superType, boolean answer, boolean isWeak) {
    SubtypingCache cache = myTypeChecker.getSubtypingCache();
    if (cache == null) {
      cache = myTypeChecker.getGlobalSubtypingCache();
    }
    if (cache !=null && superType instanceof NodeMatcher) {
      cache.addCacheEntry(subType, ((NodeMatcher)superType).getNode(), answer, isWeak);
    }
  }

  private static class NodeMatcher implements INodeMatcher {
    private final SNode myNode;
    private final Equations myEquations;
    private final EquationInfo myInfo;

    public NodeMatcher(SNode node, Equations equations, EquationInfo info) {
      myNode = node;
      myEquations = equations;
      myInfo = info;
    }

    public boolean matchesWith(SNode nodeToMatch) {
      return TypesUtil.match(nodeToMatch, myNode, myEquations, myInfo);
    }

    public SNode getNode() {
      return myNode;
    }

    public String getConceptFQName() {
      return myNode.getConceptFqName();
    }
  }

}
