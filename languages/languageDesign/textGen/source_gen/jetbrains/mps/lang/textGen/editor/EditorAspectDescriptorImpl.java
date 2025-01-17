package jetbrains.mps.lang.textGen.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x120153077caL, "jetbrains.mps.lang.textGen.structure.AppendOperation"))) {
        return Collections.<ConceptEditor>singletonList(new AppendOperation_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x7c096989aaf957c1L, "jetbrains.mps.lang.textGen.structure.AttributedNodePart"))) {
        return Collections.<ConceptEditor>singletonList(new AttributedNodePart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, "jetbrains.mps.lang.textGen.structure.CollectionAppendPart"))) {
        return Collections.<ConceptEditor>singletonList(new CollectionAppendPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f3c776369L, "jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new ConceptTextGenDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x12015288286L, "jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart"))) {
        return Collections.<ConceptEditor>singletonList(new ConstantStringAppendPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x63754d97e1c86b8cL, "jetbrains.mps.lang.textGen.structure.EncodingLiteral"))) {
        return Collections.<ConceptEditor>singletonList(new EncodingLiteral_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f7f7ff1bdL, "jetbrains.mps.lang.textGen.structure.FoundErrorOperation"))) {
        return Collections.<ConceptEditor>singletonList(new FoundErrorOperation_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x3c78adfd9bcaac6aL, "jetbrains.mps.lang.textGen.structure.IndentPart"))) {
        return Collections.<ConceptEditor>singletonList(new IndentPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b71f51fL, "jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new LanguageTextGenDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x2bad879ac8f27dcaL, "jetbrains.mps.lang.textGen.structure.LayoutPart"))) {
        return Collections.<ConceptEditor>singletonList(new LayoutPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x12015232fd0L, "jetbrains.mps.lang.textGen.structure.NewLineAppendPart"))) {
        return Collections.<ConceptEditor>singletonList(new NewLineAppendPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x12015251a28L, "jetbrains.mps.lang.textGen.structure.NodeAppendPart"))) {
        return Collections.<ConceptEditor>singletonList(new NodeAppendPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4ba6faaaL, "jetbrains.mps.lang.textGen.structure.OperationCall"))) {
        return Collections.<ConceptEditor>singletonList(new OperationCall_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b80e9d3L, "jetbrains.mps.lang.textGen.structure.OperationDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new OperationDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x5fec1f33fd3007f8L, "jetbrains.mps.lang.textGen.structure.ReferenceAppendPart"))) {
        return Collections.<ConceptEditor>singletonList(new ReferenceAppendPart_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4153bc8cL, "jetbrains.mps.lang.textGen.structure.SimpleTextGenOperation"))) {
        return Collections.<ConceptEditor>singletonList(new SimpleTextGenOperation_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x2bacbf19e457bd3bL, "jetbrains.mps.lang.textGen.structure.StubOperationDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new StubOperationDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x2bad879ac8f27dc9L, "jetbrains.mps.lang.textGen.structure.TextUnitLayout"))) {
        return Collections.<ConceptEditor>singletonList(new TextUnitLayout_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f6faa8c98L, "jetbrains.mps.lang.textGen.structure.UtilityMethodCall"))) {
        return Collections.<ConceptEditor>singletonList(new UtilityMethodCall_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f6f6a18e4L, "jetbrains.mps.lang.textGen.structure.UtilityMethodDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new UtilityMethodDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11fd28e1146L, "jetbrains.mps.lang.textGen.structure.WithIndentOperation"))) {
        return Collections.<ConceptEditor>singletonList(new WithIndentOperation_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
