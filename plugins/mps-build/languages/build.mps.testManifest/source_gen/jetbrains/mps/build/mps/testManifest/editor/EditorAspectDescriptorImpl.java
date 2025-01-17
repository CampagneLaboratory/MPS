package jetbrains.mps.build.mps.testManifest.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x9f846aef4e4a4a84L, 0x828e7e83fe2697f2L, 0x2dc6844997876882L, "jetbrains.mps.build.mps.testManifest.structure.TestModuleManifest"))) {
        return Collections.<ConceptEditor>singletonList(new TestModuleManifest_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x9f846aef4e4a4a84L, 0x828e7e83fe2697f2L, 0x2dc684499788c1c4L, "jetbrains.mps.build.mps.testManifest.structure.TestModuleManifestRef"))) {
        return Collections.<ConceptEditor>singletonList(new TestModuleManifestRef_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x9f846aef4e4a4a84L, 0x828e7e83fe2697f2L, 0x2dc6844997876885L, "jetbrains.mps.build.mps.testManifest.structure.TestProjectConfiguration"))) {
        return Collections.<ConceptEditor>singletonList(new TestProjectConfiguration_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
