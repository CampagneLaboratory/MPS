package jetbrains.mps.baseLanguage.constraints;

import jetbrains.mps.smodel.search.IReferenceInfoResolver;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.baseLanguage.search.VisibleClassifierMembersScope;
import jetbrains.mps.baseLanguage.search.IClassifiersSearchScope;
import jetbrains.mps.baseLanguage.structure.*;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;

/**
 * Igor Alshannikov
 * Sep 18, 2007
 */
public class InstanceMethodCall_InstanceMethodScope extends VisibleClassifierMembersScope {
//  private ClassifierType myInstanceType;
//  private IMethodCall myMethodCall;

  /**
   * @todo this scope doesn't need 2nd parm
   */
  public InstanceMethodCall_InstanceMethodScope(ClassifierType instanceType, InstanceMethodCall methodCall) {
    super(instanceType, methodCall.getNode(), IClassifiersSearchScope.INSTANCE_METHOD);
//    myInstanceType = instanceType;
//    myMethodCall = methodCall;
  }

  /**
   * @todo this scope doesn't need 2nd parm
   */
  public InstanceMethodCall_InstanceMethodScope(ClassifierType instanceType, DotExpression methodCallDotExpression) {
    super(instanceType, methodCallDotExpression.getNode(), IClassifiersSearchScope.INSTANCE_METHOD);
//    myInstanceType = instanceType;
//    IOperation operation = methodCallDotExpression.getOperation();
//    if (operation instanceof IMethodCall) {
//      myMethodCall = (IMethodCall) operation;
//    }
  }

//  public IReferenceInfoResolver getReferenceInfoResolver(SNode referenceNode, AbstractConceptDeclaration targetConcept) {
//    if (SModelUtil_new.isAssignableConcept(targetConcept, InstanceMethodDeclaration.concept) && myMethodCall != null) {
//      return createInstanceMethodReferenceInfoResolver(myInstanceType, myMethodCall.getActualArguments());
//    }
//    return super.getReferenceInfoResolver(referenceNode, targetConcept);
//  }
}
