package jetbrains.mps.smodel.action;

import jetbrains.mps.lang.structure.structure.LinkDeclaration;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SNode;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 10.06.2006
 * Time: 14:27:47
 * To change this template use File | Settings | File Templates.
 */
public class DefaultAttributeNodeSetter extends DefaultChildNodeSetter {
  public DefaultAttributeNodeSetter(LinkDeclaration linkDeclaration) {
    super(linkDeclaration);
  }

  public SNode doExecute(SNode parenNode, SNode oldChild, SNode newChild, IScope scope) {
    if (oldChild != null) {
      String role = oldChild.getRole_();
      assert role != null;
      parenNode.insertChild(oldChild, role, newChild);
      oldChild.delete();
    }
    return newChild;
  }


}
