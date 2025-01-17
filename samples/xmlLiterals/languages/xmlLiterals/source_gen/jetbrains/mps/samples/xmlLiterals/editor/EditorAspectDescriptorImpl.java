package jetbrains.mps.samples.xmlLiterals.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee38086aL, "jetbrains.mps.samples.xmlLiterals.structure.ElementMacro"))) {
        return Collections.<ConceptEditor>singletonList(new ElementMacro_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee374ae1L, "jetbrains.mps.samples.xmlLiterals.structure.TextMacro"))) {
        return Collections.<ConceptEditor>singletonList(new TextMacro_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa1896bc34f5b4a31L, 0xb78bb65514f8d0e5L, 0x7f05a5bbee3522c3L, "jetbrains.mps.samples.xmlLiterals.structure.XmlLiteral"))) {
        return Collections.<ConceptEditor>singletonList(new XmlLiteral_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
