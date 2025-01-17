package testOverridingType.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x394e385732564e8bL, 0x96015abe7ad354d9L, 0x19f3ac4f6f2a7f40L, "testOverridingType.structure.ErrorType"))) {
        return Collections.<ConceptEditor>singletonList(new ErrorType_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x394e385732564e8bL, 0x96015abe7ad354d9L, 0x391548fac32006d4L, "testOverridingType.structure.OverrideAnnotation"))) {
        return Collections.<ConceptEditor>singletonList(new OverrideAnnotation_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x394e385732564e8bL, 0x96015abe7ad354d9L, 0x5b362c13a4988795L, "testOverridingType.structure.OverridingPrimNumConstant"))) {
        return Collections.<ConceptEditor>singletonList(new OverridingPrimNumConstant_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x394e385732564e8bL, 0x96015abe7ad354d9L, 0x19f3ac4f6f2a050aL, "testOverridingType.structure.UnconditionalOverrideAnnotation"))) {
        return Collections.<ConceptEditor>singletonList(new UnconditionalOverrideAnnotation_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
