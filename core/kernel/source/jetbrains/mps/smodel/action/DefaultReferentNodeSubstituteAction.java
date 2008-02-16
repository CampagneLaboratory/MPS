package jetbrains.mps.smodel.action;

import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.LinkMetaclass;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.ide.icons.IconManager;

import javax.swing.Icon;

/**
 * Igor Alshannikov
 * Mar 29, 2005
 */
public class DefaultReferentNodeSubstituteAction extends AbstractNodeSubstituteAction {
  private SNode myCurrentReferent;
  private LinkDeclaration myLinkDeclaration;

  public DefaultReferentNodeSubstituteAction(SNode parameterNode, SNode referenceNode, SNode currentReferent, LinkDeclaration linkDeclaration) {
    super(null, parameterNode, referenceNode);
    myCurrentReferent = currentReferent;
    myLinkDeclaration = linkDeclaration;
    if (SModelUtil_new.getGenuineLinkMetaclass(linkDeclaration) != LinkMetaclass.reference) {
      throw new RuntimeException("Only reference links are allowed here.");
    }
  }

  public String getMatchingText(String pattern) {
    return getMatchingText(pattern, true);
  }

  public String getDescriptionText(String pattern) {
    return getDescriptionText(pattern, true);
  }

  public SNode doSubstitute(String pattern) {
    SNode parameterNode = (SNode) getParameterObject();
    if (myCurrentReferent != parameterNode) {
      if (!SModelUtil_new.isAcceptableTarget(myLinkDeclaration, parameterNode)) {
        throw new RuntimeException("Couldn't set referent node: " + parameterNode.getDebugText());
      }
      getSourceNode().setReferent(SModelUtil_new.getGenuineLinkRole(myLinkDeclaration), parameterNode);
    }
    return getSourceNode();
  }
}
