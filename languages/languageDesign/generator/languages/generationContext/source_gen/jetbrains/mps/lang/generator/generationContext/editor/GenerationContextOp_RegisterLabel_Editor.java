package jetbrains.mps.lang.generator.generationContext.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.RefCellCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.InlineCellProvider;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;

public class GenerationContextOp_RegisterLabel_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_hi1ek1_a(editorContext, node);
  }
  private EditorCell createCollection_hi1ek1_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_hi1ek1_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_hi1ek1_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_hi1ek1_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_hi1ek1_c0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_hi1ek1_d0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_hi1ek1_e0(editorContext, node));
    editorCell.addEditorCell(this.createRefCell_hi1ek1_f0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_hi1ek1_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "label");
    editorCell.setCellId("Constant_hi1ek1_a0");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_genContext_operation(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_hi1ek1_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new GenerationContextOp_RegisterLabel_Editor.inputNodeSingleRoleHandler_hi1ek1_b0(node, MetaAdapterFactory.getContainmentLink(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x4def01254aef34cdL, 0x4def01254aef7b6eL, "inputNode"), editorContext);
    return provider.createCell();
  }
  private class inputNodeSingleRoleHandler_hi1ek1_b0 extends SingleRoleCellProvider {
    public inputNodeSingleRoleHandler_hi1ek1_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("inputNode");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_inputNode");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no inputNode>";
    }

  }
  private EditorCell createConstant_hi1ek1_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "to");
    editorCell.setCellId("Constant_hi1ek1_c0");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_genContext_operation(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_hi1ek1_d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new GenerationContextOp_RegisterLabel_Editor.outputNodeSingleRoleHandler_hi1ek1_d0(node, MetaAdapterFactory.getContainmentLink(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x4def01254aef34cdL, 0x4def01254aef7b78L, "outputNode"), editorContext);
    return provider.createCell();
  }
  private class outputNodeSingleRoleHandler_hi1ek1_d0 extends SingleRoleCellProvider {
    public outputNodeSingleRoleHandler_hi1ek1_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("outputNode");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_outputNode");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no outputNode>";
    }

  }
  private EditorCell createConstant_hi1ek1_e0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "as");
    editorCell.setCellId("Constant_hi1ek1_e0");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_genContext_operation(style, editorCell);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefCell_hi1ek1_f0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new RefCellCellProvider(node, editorContext);
    provider.setRole("label");
    provider.setNoTargetText("<choose mapping label>");
    EditorCell editorCell;
    provider.setAuxiliaryCellProvider(new GenerationContextOp_RegisterLabel_Editor._Inline_hi1ek1_a5a());
    editorCell = provider.createEditorCell(editorContext);
    if (editorCell.getRole() == null) {
      editorCell.setReferenceCell(true);
      editorCell.setRole("label");
    }
    Style style = new StyleImpl();
    jetbrains.mps.lang.generator.editor.Styles_StyleSheet.apply_mappingLabelReference(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  public static class _Inline_hi1ek1_a5a extends InlineCellProvider {
    public _Inline_hi1ek1_a5a() {
      super();
    }
    public EditorCell createEditorCell(EditorContext editorContext) {
      return this.createEditorCell(editorContext, this.getSNode());
    }
    public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
      return this.createProperty_hi1ek1_a0f0(editorContext, node);
    }
    private EditorCell createProperty_hi1ek1_a0f0(EditorContext editorContext, SNode node) {
      CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
      provider.setRole("name");
      provider.setNoTargetText("<no name>");
      provider.setReadOnly(true);
      EditorCell editorCell;
      editorCell = provider.createEditorCell(editorContext);
      editorCell.setCellId("property_name");
      editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
      SNode attributeConcept = provider.getRoleAttribute();
      Class attributeKind = provider.getRoleAttributeClass();
      if (attributeConcept != null) {
        EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
        return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
      } else
      return editorCell;
    }
  }
}
