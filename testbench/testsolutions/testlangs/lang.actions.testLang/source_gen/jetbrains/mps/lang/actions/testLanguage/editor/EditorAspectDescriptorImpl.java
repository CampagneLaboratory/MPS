package jetbrains.mps.lang.actions.testLanguage.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2365c14e167220f9L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChild1"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChild1_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x7f805f0c2dd45b4eL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChild1Child"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChild1Child_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2c99ba4dd5ff2533L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChild1SubConcept"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChild1SubConcept_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2365c14e1672224dL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChild2"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChild2_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x47ad1fca2ee71badL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChildToWrap1"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChildToWrap1_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2622c47afd434fd2L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChildToWrap2"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChildToWrap2_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x47ad1fca2ec9ad4dL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestChildWrapper"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestChildWrapper_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2365c14e1671696fL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestContainer"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestContainer_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x73dfe0fc25516733L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestDefaultChild1"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestDefaultChild1_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x73dfe0fc25516dd5L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestDefaultChild2"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestDefaultChild2_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x179f28a7ade471f3L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAbstractChild"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAbstractChild_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x43d1b15d415e8d80L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAddConceptAbstractChild"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAddConceptAbstractChild_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x43d1b15d4168a426L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAddConceptChild"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAddConceptChild_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2c35cefefca54d96L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAnotherAbstractChild"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAnotherAbstractChild_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2c35cefefca55189L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAnotherChild1"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAnotherChild1_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2c35cefefca551bdL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformAnotherChild2"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformAnotherChild2_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x44969b12b8c94c1bL, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformChild1"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformChild1_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x2c35cefefc9cfa78L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformTestAncestor"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformTestAncestor_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0x737ed1fffa634ebcL, 0xa834435499b23c64L, 0x179f28a7ade381e5L, "jetbrains.mps.lang.actions.testLanguage.structure.ActionTestSidetransformTestContainer"))) {
        return Collections.<ConceptEditor>singletonList(new ActionTestSidetransformTestContainer_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
