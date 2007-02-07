package jetbrains.mps.nodeEditor.cellMenu;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.action.DefaultChildNodeSetter;
import jetbrains.mps.smodel.action.DefaultAttributeNodeSetter;
import jetbrains.mps.bootstrap.structureLanguage.LinkDeclaration;
import jetbrains.mps.nodeEditor.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.EditorContext;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 10.06.2006
 * Time: 14:27:00
 * To change this template use File | Settings | File Templates.
 */
public class DefaultAttributeSubstituteInfo extends DefaultChildSubstituteInfo {

  public DefaultAttributeSubstituteInfo(SNode parentNode, SNode currChildNode, LinkDeclaration linkDeclaration, EditorContext editorContext) {
    super(parentNode, currChildNode, (jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration) linkDeclaration.getAdapter(), editorContext);    
  }

  protected DefaultChildNodeSetter createDefaultNodeSetter() {
    return new DefaultAttributeNodeSetter(getLinkDeclaration());
  }
}
