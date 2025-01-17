package jetbrains.mps.lang.textGen.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseReferenceScopeProvider;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SNodePointer;

public class OperationDeclaration_Constraints extends BaseConstraintsDescriptor {
  public OperationDeclaration_Constraints() {
    super(MetaIdFactory.conceptId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b80e9d3L));
  }
  @Override
  public boolean hasOwnDefaultScopeProvider() {
    return true;
  }
  @Override
  public ReferenceScopeProvider getDefaultScopeProvider() {
    return new BaseReferenceScopeProvider() {
      @Override
      public Object createSearchScopeOrListOfNodes(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
        List<SNode> result = new ArrayList<SNode>();
        List<SNode> tgList = SModelOperations.rootsIncludingImported(_context.getModel(), MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b71f51fL, "jetbrains.mps.lang.textGen.structure.LanguageTextGenDeclaration"));
        for (SNode tg : tgList) {
          ListSequence.fromList(result).addSequence(ListSequence.fromList(SLinkOperations.getChildren(tg, MetaAdapterFactory.getContainmentLink(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b71f51fL, 0x11f4b821fc5L, "operation"))));
        }
        return result;
      }
      @Override
      public SNodeReference getSearchScopeValidatorNode() {
        return breakingNode_617hs5_a0a1a0a0a2;
      }
    };
  }
  @Override
  protected Map<SPropertyId, PropertyConstraintsDescriptor> getNotDefaultSProperties() {
    Map<SPropertyId, PropertyConstraintsDescriptor> properties = new HashMap<SPropertyId, PropertyConstraintsDescriptor>();
    properties.put(MetaIdFactory.propId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b80e9d3L, 0x11f5fdf3bedL), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x11f4b80e9d3L, 0x11f5fdf3bedL), this) {
      @Override
      public boolean hasOwnGetter() {
        return true;
      }
      @Override
      public Object getValue(SNode node) {
        String propertyName = "operationName";
        {
          String name = SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
          if (name == null) {
            return null;
          }
          StringBuilder result = new StringBuilder();
          for (int i = 0; i < name.length(); i++) {
            if (Character.isUpperCase(name.charAt(i))) {
              result.append(' ');
              result.append(name.toLowerCase().charAt(i));
            } else {
              result.append(name.charAt(i));
            }
          }
          return result.toString();
        }
      }
    });
    return properties;
  }
  private static SNodePointer breakingNode_617hs5_a0a1a0a0a2 = new SNodePointer("r:472e3702-e789-4c3f-b300-132c65ad44f1(jetbrains.mps.lang.textGen.constraints)", "1236703304349");
}
