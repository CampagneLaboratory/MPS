package jetbrains.mps.lang.generator.generationContext.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collections;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase {
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    {
      SAbstractConcept cncpt = ((SAbstractConcept) concept);
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b5282d0d3L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_Base"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_Base_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x671e792f3dbdfe7eL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ContextVarRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_ContextVarRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x23358d5095e2d082L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CopyWithTrace"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_CopyWithTrace_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b994bfa0fL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_CreateUniqueName_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x4afdb473461e8c79L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_DirtyNode"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_DirtyNode_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x22cdba820a9a0583L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GenParameterRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GenParameterRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b8f9620cdL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetCopiedOutputByInput"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetCopiedOutputByInput_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x6db65d569fb2527L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetExport"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetExport_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11e42912257L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetOriginalCopiedInputByOutput_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b5282d0d6L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabel"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetOutputByLabel_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b5282d0dbL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetOutputByLabelAndInput_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11c5652e4d5L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetOutputByLabelAndInputAndReferenceScope_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11c529a6c83L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputListByLabelAndInput"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetOutputListByLabelAndInput_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b8f6c38c2L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetPrevInputByLabel"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_GetPrevInputByLabel_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x186874d40ed9c757L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_LinkPatternRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_LinkPatternRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x3fb2d847d55fc21eL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_NodePatternRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_NodePatternRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x4806ea5d84d8a2caL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ParameterRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_ParameterRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x186874d40ed9c758L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_PropertyPatternRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_PropertyPatternRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x4def01254aef34cdL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_RegisterLabel"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_RegisterLabel_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b9417864bL, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_ShowMessageBase_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x11b8fe60348L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_UserObjectAccessBase"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_UserObjectAccessBase_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x25c655ce6e80fdd8L, "jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef"))) {
        return Collections.<ConceptEditor>singletonList(new GenerationContextOp_VarRef_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
