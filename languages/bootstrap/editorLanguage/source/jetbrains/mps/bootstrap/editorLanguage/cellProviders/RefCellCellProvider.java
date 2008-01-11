package jetbrains.mps.bootstrap.editorLanguage.cellProviders;

import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.core.structure.BaseConcept;
import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.smodel.SNode;

/**
 * Created by IntelliJ IDEA.
 * User: User
 * Date: 20.02.2006
 * Time: 19:12:07
 * To change this template use File | Settings | File Templates.
 */
public class RefCellCellProvider extends AbstractReferentCellProvider {

  //it is important for descendants to have a unique constructor and with the same parameters as this one
  public RefCellCellProvider(SNode node, EditorContext context) {
    super(node, context);
  }

  public EditorCell createEditorCell(EditorContext context) {
    EditorCell result = super.createEditorCell(context);
    result.putUserObject(EditorCell.METAINFO_SOURCE_NODE, getSNode());
    return result;
  }

  protected EditorCell createRefCell(EditorContext context, SNode effectiveNode, SNode node) {
    AbstractCellProvider inlineComponent = myAuxiliaryCellProvider;
    myAuxiliaryCellProvider.setSNode(effectiveNode);
    EditorCell editorCell;
    if (myIsAggregation) {
      editorCell = inlineComponent.createEditorCell(context);
    } else {
      editorCell = context.createReferentCell(inlineComponent, getSNode(), effectiveNode, myGenuineRole);
    }
    EditorUtil.setSemanticNodeToCells(editorCell, node);

    if (myIsCardinality1) {
      editorCell.setAction(EditorCellAction.DELETE, new CellAction_Empty());
    } else {
      if (myIsAggregation) {
        editorCell.setAction(EditorCellAction.DELETE, new CellAction_DeleteNode(node));
      } else {
        editorCell.setAction(EditorCellAction.DELETE, new CellAction_DeleteReference(node, myGenuineRole));
      }
    }
    return editorCell;
  }

  public static String getRoleByRelationDeclaration(BaseConcept relationDeclaration) {
    if (relationDeclaration instanceof LinkDeclaration) {
      LinkDeclaration linkDeclaration = (LinkDeclaration) relationDeclaration;
      return linkDeclaration.getRole();
    }
    return null;
  }
}
