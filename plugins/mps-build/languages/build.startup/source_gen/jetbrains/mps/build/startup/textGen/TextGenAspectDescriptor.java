package jetbrains.mps.build.startup.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenAspectBase;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.text.rt.TextGenDescriptor;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import java.util.Arrays;
import jetbrains.mps.text.rt.TextGenModelOutline;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class TextGenAspectDescriptor extends TextGenAspectBase {
  private final long[] myId2Index;
  public TextGenAspectDescriptor() {
    myId2Index = new long[2];
    myId2Index[0] = 0x180805c7b1d6687cL;
    myId2Index[1] = 0x180805c7b1d668a2L;
  }
  @Nullable
  @Override
  public TextGenDescriptor getDescriptor(@NotNull SConceptId id) {
    final int index = Arrays.binarySearch(myId2Index, id.getIdValue());
    switch (index) {
      case 0:
        return new TextFile_TextGen();
      case 1:
        return new TextLine_TextGen();
      default:
        return null;
    }
  }

  @Override
  public void breakdownToUnits(@NotNull TextGenModelOutline outline) {
    for (SNode root : outline.getModel().getRootNodes()) {
      if (root.getConcept().equals(MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x180805c7b1d6687cL, "jetbrains.mps.build.startup.structure.TextFile"))) {
        String fname = getFileName_TextFile(root);
        String ext = getFileExtension_TextFile(root);
        outline.registerTextUnit((ext == null ? fname : (fname + '.' + ext)), root);
        continue;
      }
    }
  }
  private static String getFileName_TextFile(SNode node) {
    return node.getName();
  }
  private static String getFileExtension_TextFile(SNode node) {
    return null;
  }
}
