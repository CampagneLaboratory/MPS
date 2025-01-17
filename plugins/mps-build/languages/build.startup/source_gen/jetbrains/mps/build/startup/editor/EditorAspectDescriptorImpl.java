package jetbrains.mps.build.startup.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437509L, "jetbrains.mps.build.startup.structure.ClassPathItem"))) {
        return Collections.<ConceptEditor>singletonList(new ClassPathItem_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437508L, "jetbrains.mps.build.startup.structure.MpsStartupScript"))) {
        return Collections.<ConceptEditor>singletonList(new MpsStartupScript_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b343774cL, "jetbrains.mps.build.startup.structure.SimpleVmOptions"))) {
        return Collections.<ConceptEditor>singletonList(new SimpleVmOptions_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x180805c7b1d6687cL, "jetbrains.mps.build.startup.structure.TextFile"))) {
        return Collections.<ConceptEditor>singletonList(new TextFile_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x180805c7b1d668a2L, "jetbrains.mps.build.startup.structure.TextLine"))) {
        return Collections.<ConceptEditor>singletonList(new TextLine_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
