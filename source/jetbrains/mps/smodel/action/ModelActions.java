package jetbrains.mps.smodel.action;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Condition;

import java.util.List;

/**
 * Igor Alshannikov
 * Mar 29, 2005
 */
public class ModelActions {
  //-------------------
  // child substitute
  //-------------------

  public static List<INodeSubstituteAction> createChildSubstituteActions(SNode parentNode, SNode currentChild, jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration childConcept, IChildNodeSetter childSetter, IOperationContext context) {
    return ChildSubstituteActionsHelper.createActions(parentNode, currentChild, childConcept, childSetter, context);
  }

  /**
   * helper method
   */
  public static List<INodeSubstituteAction> createPrimaryChildSubstituteActions(SNode parentNode, SNode currentChild, jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration childConcept, IChildNodeSetter childSetter, Condition<SNode> filter, IOperationContext context) {
    return ChildSubstituteActionsHelper.createPrimaryChildSubstituteActions(
            parentNode,
            currentChild,
            (jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration) childConcept,
            childSetter,
            filter,
            context);
  }

  /**
   * helper method
   */
  public static List<ConceptDeclaration> getDefaultSubstitutableConcepts(SModel sourceModel, final jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration targetConcept, final IScope scope) {
    return sourceModel.conceptAdaptersFromModelLanguages(new Condition<ConceptDeclaration>() {
      public boolean met(ConceptDeclaration node) {
        return ChildSubstituteActionsHelper.isDefaultSubstitutableConcept(
                (jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration) node,
                targetConcept,
                scope);
      }
    }, scope);
  }

  //-------------------
  // referent substitute
  //-------------------

  public static List<INodeSubstituteAction> createReferentSubstituteActions(SNode referenceNode, SNode currentReferent, LinkDeclaration linkDeclaration, IOperationContext context) {
    return ReferentSubstituteActionsHelper.createActions(referenceNode, currentReferent, (jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration) linkDeclaration, context);
  }

  //-------------------
  // right-transform hint substitute
  //-------------------

  public static boolean canCreateRightTransformHintSubstituteActions(SNode sourceNode, String transformTag, IOperationContext context) {
    return RTransformHintSubstituteActionsHelper.canCreateActions(sourceNode, transformTag, context);
  }

  public static List<INodeSubstituteAction> createRightTransformHintSubstituteActions(SNode sourceNode, String transformTag, IOperationContext context) {
    return RTransformHintSubstituteActionsHelper.createActions(sourceNode, transformTag, context);
  }
}
