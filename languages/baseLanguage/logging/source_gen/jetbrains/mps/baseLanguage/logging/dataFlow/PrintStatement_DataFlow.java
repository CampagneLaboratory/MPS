package jetbrains.mps.baseLanguage.logging.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class PrintStatement_DataFlow extends DataFlowBuilder {
  public PrintStatement_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    for (SNode textExpression : ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x760a0a8ceabb4521L, 0x8bfd65db761a9ba3L, 0x1100a2cc320L, 0x1100a2d9863L, "textExpression")))) {
      _context.getBuilder().build((SNode) textExpression);
    }
  }
}
