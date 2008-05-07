package jetbrains.mps.smodel;

import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.project.GlobalOperationContext;
import jetbrains.mps.smodel.constraints.ModelConstraintsUtil;
import jetbrains.mps.smodel.constraints.SearchScopeStatus;
import jetbrains.mps.smodel.search.IReferenceInfoResolver;
import jetbrains.mps.smodel.search.ISearchScope;
import jetbrains.mps.smodel.search.ConceptAndSuperConceptsScope;
import org.jetbrains.annotations.NotNull;

/**
 * Igor Alshannikov
 * Dec 10, 2007
 */
public class DynamicReference extends SReferenceBase {
  private SNode myTargetNode;        // young

  public DynamicReference(@NotNull String role, @NotNull SNode sourceNode, @NotNull SNode targetNode) {
    // 'young' reference
    super(role, sourceNode, null, false);
    myTargetNode = targetNode;
  }

  public DynamicReference(String role, SNode sourceNode, SModelUID targetModelUID, String resolveInfo) {
    // 'mature' reference
    super(role, sourceNode, targetModelUID, true);
    setResolveInfo(resolveInfo);
  }

  public SModelUID getTargetModelUID() {
    if (mature()) {
      return super.getTargetModelUID();
    } else if (myTargetNode != null) {
      return myTargetNode.getModel().getUID();
    }
    return null;
  }

  public void setTargetModelUID(@NotNull SModelUID modelUID) {
    if (!mature()) makeMature();
    super.setTargetModelUID(modelUID);
  }


  protected SNode getTargetNode_internal() {
    if (!mature()) {
      return myTargetNode;
    }

    if (getResolveInfo() == null) {
      error("no resolve info");
      return null;
    }

    // todo: what about target model UID?

    SNode referenceNode = getSourceNode();
    AbstractConceptDeclaration referenceNodeConcept = referenceNode.getConceptDeclarationAdapter();
    SNode enclosingNode = getSourceNode().getParent();
    SearchScopeStatus status = ModelConstraintsUtil.getSearchScope(
      enclosingNode,
      referenceNode,
      referenceNodeConcept,
      getRole(), // "genuine" role here
      new GlobalOperationContext());
    if (status.isError()) {
      error("can't obtain search scope: " + status.getMessage());
      return null;
    }

    LinkDeclaration mostSpecificForRole = new ConceptAndSuperConceptsScope(referenceNodeConcept).getMostSpecificLinkDeclarationByRole(getRole());
    if (mostSpecificForRole == null) {
      error("couldn't find link declaration '" + getRole() + "' in concept '" + referenceNode.getConceptFqName() + "'");
      return null;
    }

    ISearchScope searchScope = status.getSearchScope();
    IReferenceInfoResolver infoResolver = searchScope.getReferenceInfoResolver(referenceNode, mostSpecificForRole.getTarget());
    if (infoResolver == null) {
      error("can't obtain resolve info resolver: '" + getRole() + "'");
      return null;
    }

    SNode targetNode = infoResolver.resolve(getResolveInfo());
    if (targetNode == null) {
      error("can't find target by resolve info: '" + getResolveInfo() + "'");
//      infoResolver.resolve(getResolveInfo());
    }

    return targetNode;
  }

  protected boolean canMakeMature() {
    // both source and target should be registered
    return getSourceNode().isRegistered() && myTargetNode.isRegistered();
  }

  protected void makeMature() {
    super.makeMature();
    setTargetModelUID(myTargetNode.getModel().getUID());
    setResolveInfo(myTargetNode.getResolveInfo());
    myTargetNode = null;
  }
}
