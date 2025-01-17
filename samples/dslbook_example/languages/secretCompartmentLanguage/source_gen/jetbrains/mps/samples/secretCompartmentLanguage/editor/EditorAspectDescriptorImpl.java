package jetbrains.mps.samples.secretCompartmentLanguage.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116bcdac91eL, "jetbrains.mps.samples.secretCompartmentLanguage.structure.Event"))) {
        return Collections.<ConceptEditor>singletonList(new Event_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116c2015933L, "jetbrains.mps.samples.secretCompartmentLanguage.structure.HandleEvent"))) {
        return Collections.<ConceptEditor>singletonList(new HandleEvent_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116bced8217L, "jetbrains.mps.samples.secretCompartmentLanguage.structure.State"))) {
        return Collections.<ConceptEditor>singletonList(new State_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116bbacae3cL, "jetbrains.mps.samples.secretCompartmentLanguage.structure.StateMachine"))) {
        return Collections.<ConceptEditor>singletonList(new StateMachine_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116c17a1865L, "jetbrains.mps.samples.secretCompartmentLanguage.structure.StateMachineTest"))) {
        return Collections.<ConceptEditor>singletonList(new StateMachineTest_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116c1d2af8aL, "jetbrains.mps.samples.secretCompartmentLanguage.structure.StateMachineTestMethod"))) {
        return Collections.<ConceptEditor>singletonList(new StateMachineTestMethod_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x6986543d82184ebfL, 0xa2e9565e5049c1ceL, 0x116c112fe2aL, "jetbrains.mps.samples.secretCompartmentLanguage.structure.Transition"))) {
        return Collections.<ConceptEditor>singletonList(new Transition_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
