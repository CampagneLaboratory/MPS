package jetbrains.mps.lang.constraints.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x11a7208faaeL, "jetbrains.mps.lang.constraints.structure.ConceptConstraints"))) {
        return Collections.<ConceptEditor>singletonList(new ConceptConstraints_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b81d516b4L, "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_AbstractBase"))) {
        return Collections.<ConceptEditor>singletonList(new ConstraintFunction_ReferentSearchScope_AbstractBase_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x74999a95393c73b2L, "jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory"))) {
        return Collections.<ConceptEditor>singletonList(new InheritedNodeScopeFactory_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10dead47852L, "jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope"))) {
        return Collections.<ConceptEditor>singletonList(new NodeDefaultSearchScope_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b2a5eaa48L, "jetbrains.mps.lang.constraints.structure.NodePropertyConstraint"))) {
        return Collections.<ConceptEditor>singletonList(new NodePropertyConstraint_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b731752daL, "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint"))) {
        return Collections.<ConceptEditor>singletonList(new NodeReferentConstraint_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
