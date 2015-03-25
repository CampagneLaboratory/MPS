/*
 * Copyright 2003-2013 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.nodeEditor;

import jetbrains.mps.editor.runtime.impl.CellUtil;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteEasily;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSPropertyOrNode;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_DeleteSmart;
import jetbrains.mps.editor.runtime.impl.cellMenu.EnumSPropertySubstituteInfo;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.lang.editor.cellProviders.ChildListHandler;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.nodeEditor.attribute.AttributeKind;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteOnErrorReference;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteReference;
import jetbrains.mps.nodeEditor.cellActions.CellAction_Insert;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.nodeEditor.cellMenu.BooleanSPropertySubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.DefaultContainmentSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.DefaultReferenceSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.DefaultSReferenceSubstituteInfo;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cells.EditorCell_Error;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.SPropertyAccessor;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.project.dependency.VisibilityUtil;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.smodel.presentation.ReferenceConceptUtil;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SDataType;
import org.jetbrains.mps.openapi.language.SPrimitiveDataType;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/**
 * Semen Alperovich
 * 04 04, 2013
 */
public class DefaultEditor extends AbstractDefaultEditor {
  protected Collection<SProperty> myProperties = new ArrayList<SProperty>();
  protected Collection<SReferenceLink> myReferenceLinks = new ArrayList<SReferenceLink>();
  protected Collection<SContainmentLink> myContainmentLinks = new ArrayList<SContainmentLink>();

  public DefaultEditor(@NotNull SConcept concept) {
    super(concept);
  }

  protected void init() {
    assert mySNode != null && myConcept != null;
    for (SProperty sProperty : myConcept.getProperties()) {
      if (!sProperty.getContainingConcept().equals(SNodeUtil.concept_BaseConcept)) {
        myProperties.add(sProperty);
      }
    }
    // TODO: add other SProperties declared in this node, not declared in the concept

    for (SReferenceLink sReferenceLink : myConcept.getReferenceLinks()) {
      if (!sReferenceLink.getContainingConcept().equals(SNodeUtil.concept_BaseConcept)){
        myReferenceLinks.add(sReferenceLink);
      }
    }
    // TODO: add other SReferenceLinks declared in this node, not declared in the concept

    for (SContainmentLink sContainmentLink : myConcept.getContainmentLinks()) {
      if (!sContainmentLink.getContainingConcept().equals(SNodeUtil.concept_BaseConcept)) {
        myContainmentLinks.add(sContainmentLink);
      }
    }
  }

  @Override
  protected Collection<SProperty> getProperties() {
    return myProperties;
  }

  @Override
  protected Collection<SReferenceLink> getReferenceLinks() {
    return myReferenceLinks;
  }

  @Override
  protected Collection<SContainmentLink> getContainmentLinks() {
    return myContainmentLinks;
  }

  @Override
  protected void addPropertyCell(SProperty property) {
    EditorCell_Property editorCell = EditorCell_Property.create(myEditorContext, new SPropertyAccessor(mySNode, property, false, true), mySNode);
    editorCell.setDefaultText("<no " + property.getName() + ">");
    if (editorCell.getCellId() == null) {
      editorCell.setCellId("property_" + property);
    }
    editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSPropertyOrNode(mySNode, property));
    editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSPropertyOrNode(mySNode, property));

    SDataType type = property.getType();
    if (type instanceof SPrimitiveDataType) {
      if (((SPrimitiveDataType) type).getType() == SPrimitiveDataType.BOOL) {
        editorCell.setSubstituteInfo(new BooleanSPropertySubstituteInfo(mySNode, property, myEditorContext));
      }
    } else {
      editorCell.setSubstituteInfo(new EnumSPropertySubstituteInfo(mySNode, property, myEditorContext));
    }
    //todo generate property data type
//    if (type instanceof SEnumeration) {
//      editorCell.setSubstituteInfo(new EnumSPropertySubstituteInfo(mySNode, property, myEditorContext));
//    }
    addCellWithRole(IterableUtils.first(AttributeOperations.getPropertyAttributes(mySNode, property)), AttributeKind.Property.class, editorCell);
  }

  @Override
  protected void addChildCell(SContainmentLink link) {
    if (link.isMultiple()) {
      AbstractCellListHandler handler = new ListHandler(mySNode, link, myEditorContext);
      EditorCell editorCell = handler.createCells(myEditorContext, new CellLayout_Indent(), false);
      editorCell.setRole(handler.getElementRole());
      addStyle(editorCell, StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE);
      setIndent(editorCell);
      addCell(editorCell);
    } else {
      Iterator<? extends SNode> childIterator = mySNode.getChildren(link).iterator();
      SNode child = childIterator.hasNext() ? childIterator.next() : null;
      if (child == null) {
        String noTargetText = "<no " + link.getRoleName() + ">";
        jetbrains.mps.nodeEditor.cells.EditorCell_Label noRefCell = link.isOptional() ?
            new EditorCell_Constant(myEditorContext, mySNode, "", true) : new EditorCell_Error(myEditorContext, mySNode, "", true);
        noRefCell.setDefaultText(noTargetText);

        //todo rewrite cell actions
        noRefCell.setAction(CellActionType.DELETE, new CellAction_DeleteEasily(mySNode));
        noRefCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteEasily(mySNode));
        noRefCell.setAction(CellActionType.INSERT, new CellAction_Insert(mySNode, link.getRoleName()));
        noRefCell.setAction(CellActionType.INSERT_BEFORE, new CellAction_Insert(mySNode, link.getRoleName()));

        noRefCell.setCellId("empty_" + link.getRoleName());
        noRefCell.setRole(link.getRoleName());
        noRefCell.setSubstituteInfo(new DefaultContainmentSubstituteInfo(mySNode, link, myEditorContext));
        setIndent(noRefCell);
        addCell(noRefCell);
      } else {
        EditorCell editorCell = myEditorContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateChildNodeCell(child);
        setIndent(editorCell);
        //todo rewrite cell actions
        editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteSmart(mySNode, link.getDeclarationNode(), child));
        editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteSmart(mySNode, link.getDeclarationNode(), child));
        editorCell.setSubstituteInfo(new DefaultContainmentSubstituteInfo(mySNode, child, link, myEditorContext));
        setIndent(editorCell);
        addCell(editorCell);
      }
    }
  }

  @Override
  protected void addReferenceCell(final SReferenceLink referenceLink) {
    SReference reference = mySNode.getReference(referenceLink);
    if (reference == null) {
      String noTargetText = "<no " + referenceLink.getRoleName() + ">";
      jetbrains.mps.nodeEditor.cells.EditorCell_Label noRefCell = referenceLink.isOptional() ?
          new EditorCell_Constant(myEditorContext, mySNode, "") : new EditorCell_Error(myEditorContext, mySNode, noTargetText);
      noRefCell.setText("");
      noRefCell.setEditable(true);
      noRefCell.setDefaultText(noTargetText);

      noRefCell.setAction(CellActionType.DELETE, new CellAction_DeleteEasily(mySNode));
      noRefCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteEasily(mySNode));

      noRefCell.setCellId("empty_" + referenceLink.getRoleName());
      noRefCell.setRole(referenceLink.getRoleName());
      noRefCell.setReferenceCell(true);
      noRefCell.setSubstituteInfo(new DefaultSReferenceSubstituteInfo(mySNode, referenceLink, myEditorContext));
      noRefCell.setRole(referenceLink.getRoleName());
      setIndent(noRefCell);
      addCell(noRefCell);
    } else {
      final SNode referentNode = reference.getTargetNode();
      if (referentNode == null || referentNode.getModel() == null || !VisibilityUtil.isVisible(myEditorContext.getModel(), referentNode.getModel())) {
        //todo do we need this?
        String rinfo = ((jetbrains.mps.smodel.SReference) reference).getResolveInfo();
        addCell(createErrorCell(rinfo != null ? rinfo : "?" + referenceLink.getRoleName() + "?", referenceLink));
      } else {
        EditorCell cell = myEditorContext.getEditorComponent().getUpdater().getCurrentUpdateSession().updateReferencedNodeCell(new Computable<EditorCell>() {
          @Override
          public EditorCell compute() {
            return createReferentEditorCell(myEditorContext, referenceLink, referentNode);
          }
        }, referentNode, referenceLink.getRoleName());
        //todo what is that?
        CellUtil.setupIDeprecatableStyles(referentNode, cell);
        setSemanticNodeToCells(cell, mySNode);

        //todo rewrite cell actions
        cell.setAction(CellActionType.DELETE, new CellAction_DeleteReference(mySNode, referenceLink.getRoleName()));
        cell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteReference(mySNode, referenceLink.getRoleName()));
        cell.setSubstituteInfo(new DefaultSReferenceSubstituteInfo(mySNode, referenceLink, myEditorContext));
        cell.setRole(referenceLink.getRoleName());
        //todo attributes
        addCell(cell);
      }
    }

  }


  protected EditorCell createErrorCell(String error, SReferenceLink link) {
    EditorCell_Error errorCell = new EditorCell_Error(myEditorContext, mySNode, error, true);
    if (!link.isOptional()) {
      if (ReferenceConceptUtil.getCharacteristicReference(mySNode.getConcept()) != null) {
        errorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(mySNode));
        errorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(mySNode));
        return errorCell;
      }
    }

    //todo rewrite cell actions
    errorCell.setAction(CellActionType.DELETE, new CellAction_DeleteOnErrorReference(mySNode, link.getRoleName()));
    errorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteOnErrorReference(mySNode, link.getRoleName()));
    return errorCell;
  }

  private void addCellWithRole(SNode attributeConcept, Class attributeKind, EditorCell editorCell) {
    EditorCell roleAttributeCell = createRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    if (roleAttributeCell != null) {
      addCell(roleAttributeCell);
    } else {
      addCell(editorCell);
    }
  }

  private EditorCell createRoleAttributeCell(SNode attributeConcept, Class attributeKind, EditorCell editorCell) {
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(myEditorContext);
      if (manager != null) {
        return manager.createNodeRoleAttributeCell(myEditorContext, attributeConcept, attributeKind, editorCell);
      }
    }
    return null;
  }


  private static class ListHandler extends ChildListHandler {
    public ListHandler(SNode ownerNode, SContainmentLink link, EditorContext context) {
      super(ownerNode, link, context, false);
    }

    public SNode createNodeToInsert(EditorContext editorContext) {
      SNode listOwner = super.getOwner();
      return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
    }

    public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
      EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
      this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
      return elementCell;
    }

    public EditorCell createEmptyCell(EditorContext editorContext) {
      EditorCell emptyCell = super.createEmptyCell(editorContext);
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }

    public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultReferenceSubstituteInfo) {
          elementCell.setSubstituteInfo(new DefaultContainmentSubstituteInfo(listOwner, elementNode, myLink, editorContext));
        }
      }
    }
  }
}
