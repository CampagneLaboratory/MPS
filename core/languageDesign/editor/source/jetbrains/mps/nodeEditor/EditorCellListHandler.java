package jetbrains.mps.nodeEditor;

import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.lang.structure.structure.LinkDeclaration;
import jetbrains.mps.lang.structure.structure.LinkMetaclass;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNode;

import java.util.List;

/**
 * Author: Sergey Dmitriev.
 * Time: Oct 21, 2003 5:12:16 PM
 */
public abstract class EditorCellListHandler extends AbstractCellListHandler {

  private ConceptDeclaration myChildConcept;
  private LinkDeclaration myLinkDeclaration;

  public EditorCellListHandler(SNode ownerNode, String childRole, EditorContext editorContext) {
    super(ownerNode, childRole, editorContext);
    myLinkDeclaration = ownerNode.getLinkDeclaration(childRole);
    myChildConcept = (ConceptDeclaration) myLinkDeclaration.getTarget();
    LinkDeclaration genuineLink = SModelUtil_new.getGenuineLinkDeclaration(myLinkDeclaration);
    if (genuineLink.getMetaClass() != LinkMetaclass.aggregation) {
      throw new RuntimeException("Only Aggregation links can be used in list");
    }
    myElementRole = genuineLink.getRole();
  }

  public LinkDeclaration getLinkDeclaration() {
    return myLinkDeclaration;
  }

  public ConceptDeclaration getChildConcept() {
    return myChildConcept;
  }


  public EditorCell createNodeCell(EditorContext editorContext, SNode node) {
    return editorContext.createNodeCell(node);
  }

  protected EditorCell createEmptyCell(EditorContext editorContext) {
    EditorCell_Constant emptyCell = new EditorCell_Constant(editorContext, getOwner(), null);
    emptyCell.setDefaultText("<< ... >>");
    emptyCell.setEditable(true);
    emptyCell.setSubstituteInfo(new DefaultChildSubstituteInfo(getOwner(), null, getLinkDeclaration(), editorContext));
    emptyCell.putUserObject(EditorCell.ROLE, getElementRole());
    return emptyCell;
  }


  protected SNode getAnchorNode(EditorCell anchorCell) {
    SNode anchorNode = (anchorCell != null ? anchorCell.getSNode() : null);
    if (anchorNode != null) {
      List<SNode> listElements = getOwner().getChildren(getElementRole());
      // anchor should be directly referenced from "list owner"
      while (anchorNode != null && !listElements.contains(anchorNode)) {
        anchorNode = anchorNode.getParent();
      }
    }
    return anchorNode;
  }

  protected void doInsertNode(SNode anchorNode, boolean insertBefore) {
    getOwner().insertChild(anchorNode, getElementRole(), myInsertedNode, insertBefore);
  }

  protected List<SNode> getNodesForList() {
    return myOwnerNode.getChildren(getElementRole());
  }

}
