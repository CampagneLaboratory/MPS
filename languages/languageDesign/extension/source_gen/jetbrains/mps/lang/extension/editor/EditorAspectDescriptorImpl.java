package jetbrains.mps.lang.extension.editor;

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
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x1c30c5b543be3b2L, "jetbrains.mps.lang.extension.structure.Extension"))) {
        return Collections.<ConceptEditor>singletonList(new Extension_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d4L, "jetbrains.mps.lang.extension.structure.ExtensionDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e99L, "jetbrains.mps.lang.extension.structure.ExtensionFieldDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionFieldDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e9eL, "jetbrains.mps.lang.extension.structure.ExtensionFieldReference"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionFieldReference_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x33c018482cafa9d6L, "jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionPointDeclaration_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x5bf74eafefe0e940L, "jetbrains.mps.lang.extension.structure.ExtensionPointExpression"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionPointExpression_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142eb538L, "jetbrains.mps.lang.extension.structure.ExtensionPointType"))) {
        return Collections.<ConceptEditor>singletonList(new ExtensionPointType_Editor());
      }
      if (SConceptOperations.isExactly(SNodeOperations.asSConcept(cncpt), MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x2c10fa62142ef747L, "jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation"))) {
        return Collections.<ConceptEditor>singletonList(new GetExtensionObjectsOperation_Editor());
      }
    }
    return Collections.<ConceptEditor>emptyList();
  }



}
