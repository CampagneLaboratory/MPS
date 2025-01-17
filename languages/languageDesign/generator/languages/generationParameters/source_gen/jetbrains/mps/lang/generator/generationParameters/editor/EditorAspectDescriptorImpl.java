package jetbrains.mps.lang.generator.generationParameters.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x289fcc83654341e8L, 0xa5ca768235715ce4L, 0x2a86294b8491c07cL, "jetbrains.mps.lang.generator.generationParameters.structure.DefaultGenerationParameterId"))) {
        return Collections.<ConceptEditor>singletonList(new DefaultGenerationParameterId_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x289fcc83654341e8L, 0xa5ca768235715ce4L, 0x75bebc44281efab4L, "jetbrains.mps.lang.generator.generationParameters.structure.DefaultGeneratorParameter"))) {
        return Collections.<ConceptEditor>singletonList(new DefaultGeneratorParameter_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x289fcc83654341e8L, 0xa5ca768235715ce4L, 0x75bebc44281efab8L, "jetbrains.mps.lang.generator.generationParameters.structure.DefaultGeneratorParameterContainer"))) {
        return Collections.<ConceptEditor>singletonList(new DefaultGeneratorParameterContainer_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
