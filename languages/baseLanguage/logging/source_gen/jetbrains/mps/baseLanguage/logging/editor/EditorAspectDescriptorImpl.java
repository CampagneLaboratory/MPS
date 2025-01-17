package jetbrains.mps.baseLanguage.logging.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x760a0a8ceabb4521L, 0x8bfd65db761a9ba3L, 0x10fc428b1dfL, "jetbrains.mps.baseLanguage.logging.structure.LogStatement"))) {
        return Collections.<ConceptEditor>singletonList(new LogStatement_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x760a0a8ceabb4521L, 0x8bfd65db761a9ba3L, 0x1100a2cc320L, "jetbrains.mps.baseLanguage.logging.structure.PrintStatement"))) {
        return Collections.<ConceptEditor>singletonList(new PrintStatement_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
