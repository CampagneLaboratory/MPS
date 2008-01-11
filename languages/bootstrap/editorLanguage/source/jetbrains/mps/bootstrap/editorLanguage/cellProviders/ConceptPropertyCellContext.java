package jetbrains.mps.bootstrap.editorLanguage.cellProviders;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptPropertyDeclaration;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.smodel.SNode;

/**
 * Igor Alshannikov
 * Date: Nov 29, 2006
 */
public class ConceptPropertyCellContext extends BasicCellContext {
  public static final Object CONCEPT_PROPERTY_DECLARATION = new Object();

  public ConceptPropertyCellContext(SNode node, ConceptPropertyDeclaration propertyDeclaration) {
    super(node);
    put(CONCEPT_PROPERTY_DECLARATION, propertyDeclaration.getNode());
  }
}
