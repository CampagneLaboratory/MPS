package jetbrains.mps.smodel;

import jetbrains.mps.lang.structure.structure.LinkDeclaration;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
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

  public DynamicReference(String role, SNode sourceNode, SModelReference targetModelReference, String resolveInfo) {
    // 'mature' reference
    super(role, sourceNode, targetModelReference, true);
    setResolveInfo(resolveInfo);
  }

  public SModelReference getTargetSModelReference() {
    if (mature()) {
      return super.getTargetSModelReference();
    } else if (myTargetNode != null) {
      return myTargetNode.getModel().getSModelReference();
    }
    return null;
  }

  public void setTargetSModelReference(@NotNull SModelReference modelReference) {
    if (!mature()) makeMature();
    super.setTargetSModelReference(modelReference);
  }


  protected SNode getTargetNode_internal() {
    if (!mature()) {
      return myTargetNode;
    }

    if (getResolveInfo() == null) {
      error("no resolve info");
      return null;
    }

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

    SNode targetNode = infoResolver.resolve(getResolveInfo(), getTargetSModelReference());
    if (targetNode == null) {
      error("can't find target by resolve info: '" + getResolveInfo() + "'");
//      infoResolver.resolve(getResolveInfo(), getTargetSModelReference());
    }

    return targetNode;
  }

  protected boolean canMakeMature() {
    // both source and target should be registered
    return getSourceNode().isRegistered() && myTargetNode.isRegistered();
  }

  protected void makeMature() {
    super.makeMature();
    setTargetSModelReference(myTargetNode.getModel().getSModelReference());
    setResolveInfo(myTargetNode.getResolveInfo());
    myTargetNode = null;
  }
}
