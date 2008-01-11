package jetbrains.mps.bootstrap.editorLanguage.cellProviders;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptPropertyDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptProperty;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.nodeEditor.cellMenu.INodeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.ICellContext;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.core.structure.BaseConcept;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 17.02.2006
 * Time: 20:55:25
 * To change this template use File | Settings | File Templates.
 */
public class ConceptPropertyCellProvider extends CellProviderWithRole {

  private String myConceptPropertyName;
  private ConceptPropertyDeclaration myConceptPropertyDeclaration;

  public void setRole(Object role) {
    myConceptPropertyName = role.toString();
    ConceptProperty conceptProperty = getSNode().findConceptProperty(myConceptPropertyName);
    if (conceptProperty != null) {
      myConceptPropertyDeclaration = conceptProperty.getConceptPropertyDeclaration();
    }
  }

  public ConceptPropertyCellProvider(SNode node, EditorContext context) {
    super(node, context);
  }


  public EditorCell createEditorCell(EditorContext editorContext) {
    String text = getSNode().getConceptProperty(myConceptPropertyName);
    EditorCell_Label editorCell;
    if (text == null) {
      String errorText = myNoTargetText;
      if ((errorText == null) || (errorText.length() == 0)) {
        errorText = " <no  " + myConceptPropertyName + "  value> ";
      }
      editorCell = new EditorCell_Error(myEditorContext, getSNode(), errorText);
    } else {
      editorCell = new EditorCell_Constant(myEditorContext, getSNode(), text);
      editorCell.setEditable(true);
    }
    return editorCell;
  }


  public INodeSubstituteInfo createDefaultSubstituteInfo() {
    return null;
  }

  public SNode getRoleAttribute() {
    return null;
  }

  public Class getRoleAttributeClass() {
    return EditorManager.NoAttribute.class;
  }


  public ICellContext getCellContext() {
    return new ConceptPropertyCellContext(getSNode(), myConceptPropertyDeclaration);
  }

  //To change body of overridden methods use File | Settings | File Templates.
  // important: create such a method in every descendant of this class, it will be invoked via reflection
  public static String getRoleByRelationDeclaration(BaseConcept relationDeclaration) {
    if (relationDeclaration instanceof ConceptPropertyDeclaration) {
      return ((ConceptPropertyDeclaration) relationDeclaration).getName();
    }
    return null;
  }
}
