/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import gnu.trove.THashSet;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.typesystem.TypeSystemReporter;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.typesystem.inference.util.StructuralNodeSet;
import jetbrains.mps.typesystem.inference.util.SubtypingCache;
import jetbrains.mps.typesystemEngine.util.CoerceUtil;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.Nullable;

import java.util.*;

public class CoercionManager {
  private final TypeChecker myTypeChecker;
  private final SubTypingManagerNew mySubTyping;

  public CoercionManager(TypeChecker typeChecker, SubTypingManagerNew subTyping) {
    myTypeChecker = typeChecker;
    mySubTyping = subTyping;
  }


  public SNode coerceSubTypingNew(final SNode subtype, final IMatchingPattern pattern, final boolean isWeak, final State state) {
    if (subtype == null) return null;
    if (pattern.match(subtype)) return subtype;
    if (!CoerceUtil.canBeCoerced(subtype, pattern.getConceptFQName())) return null;
    if ("jetbrains.mps.lang.typesystem.structure.MeetType".equals(subtype.getConcept().getId())) {
      List<SNode> children = subtype.getChildren("argument");
      for (SNode child : children) {
        SNode result = coerceSubTypingNew(child, pattern, isWeak, state);
        if (result != null) return result;
      }
      return null;
    }
    final TypeCheckingContextNew typeCheckingContext = state == null ? null : state.getTypeCheckingContext();
    if ("jetbrains.mps.lang.typesystem.structure.JoinType".equals(subtype.getConcept().getId())) {
      List<SNode> children = subtype.getChildren("argument");

      SNode lcs = mySubTyping.createLCS(children, typeCheckingContext);
      return coerceSubTypingNew(lcs, pattern, isWeak, state);
    }

    //asking the cache
    return NodeReadAccessCasterInEditor.runReadTransparentAction(new Computable<SNode>() {
      public SNode compute() {
        Pair<Boolean, SNode> answer = getCoerceCacheAnswer(subtype, pattern, isWeak);
        if (answer != null && answer.o1) {
          return answer.o2;
        }
        CoercionMatcher coercionMatcher = new CoercionMatcher(pattern);
        SNode result = searchInSuperTypes(subtype, coercionMatcher, isWeak);
        //writing to the cache
        SubtypingCache subtypingCache = myTypeChecker.getSubtypingCache();
        if (subtypingCache != null) {
          subtypingCache.cacheCoerce(subtype, pattern, result, isWeak);
        }
        subtypingCache = myTypeChecker.getGlobalSubtypingCache();
        if (subtypingCache != null) {
          subtypingCache.cacheCoerce(subtype, pattern, result, isWeak);
        }

        return result;
      }
    });
  }

  @Nullable
  Pair<Boolean, SNode> getCoerceCacheAnswer(SNode subtype, IMatchingPattern pattern, boolean isWeak) {
    SubtypingCache cache = myTypeChecker.getSubtypingCache();
    if (cache != null) {
      Pair<Boolean, SNode> coerced = cache.getCoerced(subtype, pattern, isWeak);
      if (coerced != null) {
        return coerced;
      }
    }
    cache = myTypeChecker.getGlobalSubtypingCache();
    if (cache != null) {
      Pair<Boolean, SNode> coerced = cache.getCoerced(subtype, pattern, isWeak);
      if (coerced != null) return coerced;
    }
    return null;
  }

  private SNode searchInSuperTypes(SNode subType, CoercionMatcher superType, boolean isWeak) {
    StructuralNodeSet<?> frontier = new StructuralNodeSet();
    StructuralNodeSet<?> newFrontier = new StructuralNodeSet();
    StructuralNodeSet<?> yetPassed = new StructuralNodeSet();
    frontier.add(subType);
    while (!frontier.isEmpty()) {
      Set<SNode> yetPassedRaw = new THashSet<SNode>();
      //collecting a set of frontier's ancestors
      StructuralNodeSet<?> ancestors = new StructuralNodeSet();
      for (SNode node : frontier) {
        mySubTyping.collectImmediateSuperTypes(node, isWeak, ancestors, null);
        yetPassedRaw.add(node);
      }
      ArrayList<SNode> ancestorsSorted;
      ancestorsSorted = new ArrayList<SNode>(ancestors);
      Collections.sort(ancestorsSorted, new Comparator<SNode>() {
        public int compare(SNode o1, SNode o2) {
          return TypesUtil.depth(o2) - TypesUtil.depth(o1);
        }
      });
      List<SNode> results = new ArrayList<SNode>();
      for (SNode ancestor : ancestorsSorted) {
        if (superType.matchesWith(ancestor)) {
          results.add(ancestor);
        }
      }
      if (!results.isEmpty()) {
        if (results.size() > 1) {
          results = mySubTyping.eliminateSuperTypes(results);
        }
        if (!results.isEmpty()) {
          return results.get(0);
        }
      }
      for (SNode passedNodeRaw : yetPassedRaw) {
        yetPassed.add(passedNodeRaw);
      }
      for (SNode passedNode : yetPassed) {
        ancestors.removeStructurally(passedNode);
      }
      for (SNode ancestor : ancestors) {
        Pair<Boolean, SNode> answer = getCoerceCacheAnswer(ancestor, superType.getMatchingPattern(), isWeak);
        if (answer != null) {
          if (answer.o1 && answer.o2 == null) {
            // System.out.println("coerce optimized");
            continue;
          }
        }
        newFrontier.addStructurally(ancestor);
        yetPassed.addStructurally(ancestor);
      }
      frontier = newFrontier;
      newFrontier = new StructuralNodeSet();
    }
    return null;
  }

  static class CoercionMatcher implements INodeMatcher {
    private final IMatchingPattern myPattern;

    public CoercionMatcher(IMatchingPattern pattern) {
      myPattern = pattern;
    }

    public boolean matchesWith(SNode nodeToMatch) {
      return myPattern.match(nodeToMatch);
    }

    public IMatchingPattern getMatchingPattern() {
      return myPattern;
    }

    public String getConceptFQName() {
      return myPattern.getConceptFQName();
    }
  }

}
