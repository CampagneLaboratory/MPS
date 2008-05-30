package jetbrains.mps.resolve;

import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.helgins.inference.NodeTypesComponent;
import jetbrains.mps.helgins.inference.NodeTypesComponentsRepository;
import jetbrains.mps.helgins.inference.TypeChecker;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorCell;
import jetbrains.mps.nodeEditor.EditorCell_Collection;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.cellMenu.INodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.NullSubstituteInfo;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.action.DefaultReferentNodeSubstituteAction;
import jetbrains.mps.smodel.action.INodeSubstituteAction;
import jetbrains.mps.smodel.constraints.ModelConstraintsUtil;
import jetbrains.mps.smodel.constraints.SearchScopeStatus;
import jetbrains.mps.smodel.presentation.ReferenceConceptUtil;
import jetbrains.mps.smodel.search.ISearchScope;
import jetbrains.mps.smodel.search.IsInstanceCondition;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 29.06.2005
 * Time: 20:17:58
 * To change this template use File | Settings | File Templates.
 */
public class Resolver {

  private static Logger LOG = Logger.getLogger(Resolver.class);

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

  private static List<SNode> getSmartReferenceTargets(
    final ConceptDeclaration referenceNodeConcept,
    LinkDeclaration smartReference,
    final SNode parentNode,
    final IOperationContext context) {

    // try to create referent-search-scope
    SearchScopeStatus status = ModelConstraintsUtil.getSearchScope(parentNode, null, referenceNodeConcept, smartReference, context);
    if (status.isError()) return new ArrayList<SNode>();

    ISearchScope searchScope = status.getSearchScope();
    final AbstractConceptDeclaration targetConcept = smartReference.getTarget();

    List<SNode> referentNodes = searchScope.getNodes(new IsInstanceCondition(targetConcept));
    return referentNodes;
  }

  public static boolean resolve1(SReference reference, IOperationContext operationContext) {
    return resolve1(reference, operationContext, new ArrayList<ResolveResult>(), true);
  }

  public static boolean resolve1(final SReference reference, final IOperationContext operationContext, List<ResolveResult> results, boolean forceResolve) {
    // search scope
    SNode referenceNode = reference.getSourceNode();
    ConceptDeclaration referenceNodeConcept = (ConceptDeclaration) referenceNode.getConceptDeclarationAdapter();
    LinkDeclaration linkDeclaration = SModelUtil_new.findLinkDeclaration(referenceNodeConcept, reference.getRole());
    if (linkDeclaration == null) {
      LOG.error("couldn't find link declaration for role '" + reference.getRole() + "'", referenceNode);
      return false;
    }
    final AbstractConceptDeclaration referentConcept = linkDeclaration.getTarget();

    SNode sNode = referenceNode.getParent();
    if (sNode == null) sNode = referenceNode;

    SNode containingRoot = sNode.getContainingRoot();
    NodeTypesComponent nodeTypesComponent = NodeTypesComponentsRepository.getInstance().
      createNodeTypesComponent(containingRoot);
    NodeTypesComponent temporaryComponent;
    try {
      temporaryComponent = nodeTypesComponent.clone();
    } catch (CloneNotSupportedException ex) {
      LOG.error(ex);
      return false;
    }
    TypeChecker.getInstance().setCurrentTypesComponent(temporaryComponent);
    temporaryComponent.computeOnlyTypesForNode(sNode); //todo dirty hack
    temporaryComponent.solveInequationsAndExpandTypes();
    TypeChecker.getInstance().clearCurrentTypesComponent();

    NodeTypesComponentsRepository.getInstance().swapTypesComponentForRoot(containingRoot, temporaryComponent);

    try {
      SearchScopeStatus status = ModelConstraintsUtil.getSearchScope(referenceNode.getParent(),
        referenceNode, referenceNodeConcept, linkDeclaration, operationContext);
      if (status.isError()) {
        LOG.error("Couldn't create referent search scope : " + status.getMessage());
        return false;
      }
      ISearchScope searchScope = status.getSearchScope();
      List<SNode> nodes = searchScope.getNodes(new Condition<SNode>() {
        public boolean met(SNode node) {
          return node.isInstanceOfConcept(referentConcept);
        }
      });
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
      if (referenceNode.getParent() == null) {
        return false;
      }
      SNode parent = referenceNode.getParent();
      LinkDeclaration parentLinkDeclaration = SModelUtil_new.findLinkDeclaration(parent.getConceptDeclarationAdapter(),
        referenceNode.getRole_());
      if (parentLinkDeclaration == null) {
        return false;
      }
      final AbstractConceptDeclaration possibleChildConceptDeclaration = parentLinkDeclaration.getTarget();

      ISearchScope conceptsSearchScope = SModelSearchUtil.createConceptsFromModelLanguagesScope(parent.getModel(), true, operationContext.getScope());
      List<SNode> applicableConcepts = conceptsSearchScope.getNodes(new Condition<SNode>() {
        public boolean met(SNode object) {
          return SModelUtil_new.isAssignableConcept((ConceptDeclaration) BaseAdapter.fromNode(object), possibleChildConceptDeclaration);
        }
      });
      for (SNode node : applicableConcepts) {
        ConceptDeclaration applicableConcept = (ConceptDeclaration) BaseAdapter.fromNode(node);
        LinkDeclaration smartReference = ReferenceConceptUtil.getCharacteristicReference(applicableConcept);
        if (smartReference == null) continue;
        List<SNode> smartReferenceTargets = getSmartReferenceTargets(applicableConcept, smartReference, parent, operationContext);
        List<SNode> filteredRefTargets = CollectionUtil.filter(smartReferenceTargets, nameMatchesCondition);
        if (!filteredRefTargets.isEmpty()) {
          SNode target = filteredRefTargets.get(0);
          ResolveResult resolveResult = new ResolveResult(referenceNode, target, SModelUtil_new.getGenuineLinkRole(smartReference), applicableConcept);
          results.add(resolveResult);
          if (forceResolve) {
            resolveResult.setTarget();
          }
          return true;
        }
      }

      return false;
    } finally {
      NodeTypesComponentsRepository.getInstance().swapTypesComponentForRoot(containingRoot, nodeTypesComponent);
    }
  }

  public static List<INodeSubstituteAction> createResolveActions(SReference reference, IOperationContext operationContext, EditorContext editorContext) {
    String resolveInfo = reference.getResolveInfo();
    String role = reference.getRole();
    final SNode sourceNode = reference.getSourceNode();

    ConceptDeclaration sourceConcept = (ConceptDeclaration) sourceNode.getConceptDeclarationAdapter();
    LinkDeclaration refLinkDeclaration = SModelUtil_new.findLinkDeclaration(sourceConcept, role);
    SNode sourceParent = sourceNode.getParent();

    if (sourceParent == null) sourceParent = sourceNode;

    LinkDeclaration childLinkDeclaration = SModelUtil_new.findLinkDeclaration(sourceParent.getConceptDeclarationAdapter(), sourceNode.getRole_());

    EditorCell editorCell = editorContext.createNodeCell(sourceParent);
    EditorCell inspectedCell = editorContext.createInspectedCell(sourceNode, null);

    EditorCell refCell = searchForRefCell(editorCell, sourceNode, refLinkDeclaration, childLinkDeclaration);
    if (refCell == null) {
      refCell = searchForRefCell(inspectedCell, sourceNode, refLinkDeclaration, childLinkDeclaration);
    }
    if (refCell == null) {
      refCell = editorCell;
    }

    INodeSubstituteInfo substituteInfo = refCell.getSubstituteInfo();
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
        Object userObject = cell.getUserObject(EditorCell.METAINFO_LINK_DECLARATION);
        if (cell.getSNode() == sourceNode) {
          if (userObject == refLinkDeclaration.getNode()) {
            return cell;
          }
          if (childLinkDeclaration != null && userObject == childLinkDeclaration.getNode()) {
            if (foundCell == null) foundCell = cell;
          }
        }
        if (cell instanceof EditorCell_Collection) {
          newFrontier.addAll(CollectionUtil.iteratorAsList(((EditorCell_Collection) cell).cells()));
        }
      }
      frontier = newFrontier;
      newFrontier = new HashSet<EditorCell>();
    }
    return foundCell;
  }

}
