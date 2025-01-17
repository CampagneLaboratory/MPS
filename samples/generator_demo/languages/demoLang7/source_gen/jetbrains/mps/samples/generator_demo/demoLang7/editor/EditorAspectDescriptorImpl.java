package jetbrains.mps.samples.generator_demo.demoLang7.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb1ccc903f5a942d1L, 0xadd980ac0e69d662L, 0x3236df431b7f1b53L, "jetbrains.mps.samples.generator_demo.demoLang7.structure.XMLDocument"))) {
        return Collections.<ConceptEditor>singletonList(new XMLDocument_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
