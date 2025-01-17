package jetbrains.mps.samples.heating.tabular.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import jetbrains.mps.openapi.editor.descriptor.EditorHintsProvider;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorHint;
import java.util.Arrays;
import jetbrains.mps.editor.runtime.desctiptor.ConceptEditorHintImpl;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collections;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase implements EditorHintsProvider {
  private Collection<ConceptEditorHint> myHints = Arrays.<ConceptEditorHint>asList(new ConceptEditorHintImpl("tabular", "", true, "jetbrains.mps.samples.heating.tabular.editor.HeatingViews.tabular"));
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    {
      SAbstractConcept cncpt = ((SAbstractConcept) concept);
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec62L, "jetbrains.mps.samples.heating.structure.ChangeEvent"))) {
        return Collections.<ConceptEditor>singletonList(new ChangeEvent_tabular_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec4fL, "jetbrains.mps.samples.heating.structure.DailyPlan"))) {
        return Collections.<ConceptEditor>singletonList(new DailyPlan_tabular_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aa3f2L, "jetbrains.mps.samples.heating.structure.HeatingPlan"))) {
        return Collections.<ConceptEditor>singletonList(new HeatingPlan_tabular_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4f786d85fe288176L, "jetbrains.mps.samples.heating.structure.Slot"))) {
        return Collections.<ConceptEditor>singletonList(new Slot_tabular_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }


  public Collection<ConceptEditorHint> getHints() {
    return myHints;
  }

}
