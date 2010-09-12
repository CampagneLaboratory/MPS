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
package jetbrains.mps.resolve;

import com.intellij.openapi.util.Computable;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.lang.structure.structure.LinkDeclaration;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.NullSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SReference;
import jetbrains.mps.smodel.action.DefaultReferentNodeSubstituteAction;
import jetbrains.mps.smodel.action.INodeSubstituteAction;
import jetbrains.mps.smodel.constraints.ModelConstraintsUtil;
import jetbrains.mps.smodel.constraints.SearchScopeStatus;
import jetbrains.mps.smodel.search.ISearchScope;
import jetbrains.mps.smodel.search.IsInstanceCondition;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.typesystem.inference.TypeContextManager;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;

import java.util.*;

public class Resolver {

  private static final Logger LOG = Logger.getLogger(Resolver.class);

  /**
   * @return unresolved references
   */
  public static List<SReference> resolveReferences(Set<SReference> references, IOperationContext operationContext) {
    return resolveReferences(references, operationContext, new ArrayList<ResolveResult>(), true);
  }

  /**
   * @return unresolved references
   */
  public static List<SReference> resolveReferences(Set<SReference> references, IOperationContext operationContext, List<ResolveResult> results, boolean forceResolve) {
    List<SReference> referencesToSort = new ArrayList<SReference>(references);
    Collections.sort(referencesToSort, new Comparator<SReference>() {
      public int compare(SReference o1, SReference o2) {
        SNode node1 = o1.getSourceNode();
        SNode node2 = o2.getSourceNode();
        if (node1.isAncestorOf(node2)) return 1;
        if (node2.isAncestorOf(node1)) return -1;
        return 0;
      }
    });

    while (true) {
      int size = referencesToSort.size();
      for (SReference reference : new ArrayList<SReference>(referencesToSort)) {
        boolean resolved = resolve1(reference, operationContext, results, forceResolve);
        if (resolved) {
          referencesToSort.remove(reference);
        }
      }
      if (size <= referencesToSort.size()) {
        break;
      }
    }
    return referencesToSort;
  }

  public static boolean resolve1(SReference reference, IOperationContext operationContext) {
    return resolve1(reference, operationContext, new ArrayList<ResolveResult>(), true);
  }

  public static boolean resolve1(final SReference reference, final IOperationContext operationContext, final List<ResolveResult> results, final boolean forceResolve) {
    // search scope
    final SNode referenceNode = reference.getSourceNode();
    if (referenceNode == null) return false;
    final ConceptDeclaration referenceNodeConcept = (ConceptDeclaration) referenceNode.getConceptDeclarationAdapter();
    final LinkDeclaration linkDeclaration = SModelSearchUtil.findLinkDeclaration(referenceNodeConcept, reference.getRole());
    if (linkDeclaration == null) {
      return false;
    }
    final AbstractConceptDeclaration referentConcept = linkDeclaration.getTarget();

    TypeCheckingContext typeCheckingContext = TypeContextManager.getInstance().createTypeCheckingContext(referenceNode);
    if (typeCheckingContext == null) return false;
    return typeCheckingContext.runTypeCheckingActionInEditorQueries(new Computable<Boolean>() {
      @Override
      public Boolean compute() {
        SearchScopeStatus status = ModelConstraintsUtil.getSearchScope(referenceNode.getParent(),
          referenceNode, referenceNodeConcept, linkDeclaration, operationContext);
        if (status.isError()) {
          LOG.error("Couldn't create referent search scope : " + status.getMessage());
          return false;
        }
        ISearchScope searchScope = status.getSearchScope();

        List<SNode> nodes = searchScope.getNodes(new IsInstanceCondition(referentConcept));

        Condition<SNode> nameMatchesCondition = new Condition<SNode>() {
          public boolean met(SNode object) {
            String resolveInfo = reference.getResolveInfo();
            return resolveInfo != null && resolveInfo.equals(object.getName());
          }
        };
        List<SNode> filtered = CollectionUtil.filter(nodes, nameMatchesCondition);
        if (!filtered.isEmpty()) {
          ResolveResult resolveResult = new ResolveResult(referenceNode, filtered.get(0), reference.getRole(), null);
          results.add(resolveResult);
          if (forceResolve) {
            resolveResult.setTarget();
          }
          return true;
        }

        return false;
      }
    });
  }

  public static List<INodeSubstituteAction> createResolveActions(SReference reference, IOperationContext operationContext, EditorContext editorContext) {
    String resolveInfo = reference.getResolveInfo();
    String role = reference.getRole();
    final SNode sourceNode = reference.getSourceNode();

    ConceptDeclaration sourceConcept = (ConceptDeclaration) sourceNode.getConceptDeclarationAdapter();
    LinkDeclaration refLinkDeclaration = SModelSearchUtil.findLinkDeclaration(sourceConcept, role);
    SNode sourceParent = sourceNode.getParent();

    if (sourceParent == null) sourceParent = sourceNode;

    LinkDeclaration childLinkDeclaration = SModelSearchUtil.findLinkDeclaration(sourceParent.getConceptDeclarationAdapter(), sourceNode.getRole_());

    EditorCell editorCell = editorContext.createNodeCell(sourceParent);
    EditorCell inspectedCell = editorContext.createInspectedCell(sourceNode, null);

    EditorCell refCell = searchForRefCell(editorCell, sourceNode, refLinkDeclaration, childLinkDeclaration);
    if (refCell == null) {
      refCell = searchForRefCell(inspectedCell, sourceNode, refLinkDeclaration, childLinkDeclaration);
    }
    if (refCell == null) {
      refCell = editorCell;
    }

    NodeSubstituteInfo substituteInfo = refCell.getSubstituteInfo();
    if (substituteInfo == null) substituteInfo = new NullSubstituteInfo();

    List<INodeSubstituteAction> actions = substituteInfo.getMatchingActions(resolveInfo, false);
    List<INodeSubstituteAction> matchingActions = new ArrayList<INodeSubstituteAction>();
    for (INodeSubstituteAction action : actions) {
      if (action.canSubstituteStrictly(resolveInfo)) {
        matchingActions.add(action);
      }
    }
    if (matchingActions.isEmpty()) {
      for (INodeSubstituteAction action : actions) {
        if (action.canSubstitute(resolveInfo)) {
          matchingActions.add(action);
        }
      }
    }
    Collections.sort(matchingActions, new Comparator<INodeSubstituteAction>() {
      public int compare(INodeSubstituteAction o1, INodeSubstituteAction o2) {
        if (!(o2 instanceof DefaultReferentNodeSubstituteAction)) return 1;
        if (!(o1 instanceof DefaultReferentNodeSubstituteAction)) return -1;
        DefaultReferentNodeSubstituteAction action1 = (DefaultReferentNodeSubstituteAction) o1;
        DefaultReferentNodeSubstituteAction action2 = (DefaultReferentNodeSubstituteAction) o2;
        SModel model1 = null;
        SModel model2 = null;
        if (action1.getOutputConcept() != null) model1 = ((SNode) action1.getOutputConcept()).getModel();
        if (action2.getOutputConcept() != null) model2 = ((SNode) action2.getOutputConcept()).getModel();
        if (model1 == sourceNode.getModel()) return 1;
        if (model2 == sourceNode.getModel()) return -1;
        return 0;
      }
    });
    return matchingActions;
  }

  private static EditorCell searchForRefCell(EditorCell editorCell, SNode sourceNode, LinkDeclaration refLinkDeclaration, LinkDeclaration childLinkDeclaration) {
    Set<EditorCell> frontier = new HashSet<EditorCell>();
    Set<EditorCell> newFrontier = new HashSet<EditorCell>();
    EditorCell foundCell = null;
    frontier.add(editorCell);
    while (!frontier.isEmpty()) {
      for (EditorCell cell : frontier) {
        LinkDeclaration userObject = cell.getLinkDeclaration();
        if (cell.getSNode() == sourceNode) {
          if (userObject == refLinkDeclaration) {
            return cell;
          }
          if (childLinkDeclaration != null && userObject == childLinkDeclaration) {
            if (foundCell == null) foundCell = cell;
          }
        }
        if (cell instanceof EditorCell_Collection) {
          newFrontier.addAll(CollectionUtil.asList(((EditorCell_Collection) cell).cells()));
        }
      }
      frontier = newFrontier;
      newFrontier = new HashSet<EditorCell>();
    }
    return foundCell;
  }

}
