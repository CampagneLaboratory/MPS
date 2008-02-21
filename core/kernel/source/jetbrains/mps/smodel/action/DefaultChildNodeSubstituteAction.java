package jetbrains.mps.smodel.action;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.*;

/**
 * Igor Alshannikov
 * Mar 29, 2005
 */
public class DefaultChildNodeSubstituteAction extends AbstractNodeSubstituteAction {
  private SNode myCurrentChild;
  private IScope myScope;
  private IChildNodeSetter mySetter;

  /**
   * @deprecated  - ambiguity
   */
  public DefaultChildNodeSubstituteAction(Object parameterObject, SNode parentNode, SNode currentChild, IChildNodeSetter setter, IScope scope) {
    // parameter object is always output concept?
    super(parameterObject, parentNode);
    myCurrentChild = currentChild;
    myScope = scope;
    mySetter = setter;
  }

  public DefaultChildNodeSubstituteAction(AbstractConceptDeclaration outputConcept, Object parameterObject, SNode parentNode, SNode currentChild, IChildNodeSetter setter, IScope scope) {
    // parameter object is always output concept?
    super(BaseAdapter.fromAdapter(outputConcept), parameterObject, parentNode);
    myCurrentChild = currentChild;
    myScope = scope;
    mySetter = setter;
  }

  public IScope getScope() {
    return myScope;
  }

  public SNode doSubstitute(String pattern) {
    SNode parentNode = getSourceNode();
    SNode newChild = createChildNode(getParameterObject(), parentNode.getModel(), pattern);
    if (newChild != null) {
      return mySetter.execute(parentNode, myCurrentChild, newChild, getScope());
    }
    return null;
  }

  public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
    ConceptDeclaration conceptDeclaration = null;
    INodeAdapter parameterNodeAdapter = BaseAdapter.fromNode((SNode) getOutputConcept());
    if (parameterNodeAdapter instanceof ConceptDeclaration) {
      conceptDeclaration = (ConceptDeclaration) parameterNodeAdapter;
    } else {
      throw new RuntimeException("Couldn't create child node. Parameter object: " + getParameterObject());
    }
    return NodeFactoryManager.createNode(conceptDeclaration, myCurrentChild, getSourceNode(), model, getScope());
  }
}
