package jetbrains.mps.lang.slanguage.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.lang.smodel.behavior.SNodeOperation__BehaviorDescriptor;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_2030416617761268205(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x69b8a9939b874d96L, 0xbf0c3559f4bb0c63L, 0x1c2d7d27ffb53efbL, 0x1c2d7d27ffb53fb8L, "aspect")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6171083915388386832(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x69b8a9939b874d96L, 0xbf0c3559f4bb0c63L, 0x55a418200fd9206aL, 0x55a418200fdd3607L, "aspect")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static SNode sourceNodeQuery_2030416617761266991(final SourceSubstituteMacroNodeContext _context) {
    return (SNode) SNodeOperation__BehaviorDescriptor.getLeftExpression_idhEwJdGu.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_6171083915388385882(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x69b8a9939b874d96L, 0xbf0c3559f4bb0c63L, 0x55a418200fd9206aL, 0x55a418200fd9206bL, "lang"));
  }
}
