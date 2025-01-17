package jetbrains.mps.baseLanguage.unitTest.execution.client;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.core.aspects.behaviour.SMethodTrimmedId;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;

public class JUnit3TestWrapper extends AbstractTestWrapper<SNode> {
  public JUnit3TestWrapper(SNode classConcept) {
    super(classConcept);
  }
  @Override
  public boolean isTestCase() {
    return true;
  }
  @NonNls
  @Override
  public String getFqName() {
    return check_qb7e7i_a0a2(getNode(), this);
  }
  @NotNull
  @Override
  public Iterable<ITestNodeWrapper> getTestMethods() {
    SNode node = getNode();
    Iterable<SNode> nodes = Sequence.fromIterable(((Iterable<SNode>) BHReflection.invoke(((SNode) BHReflection.invoke(node, SMethodTrimmedId.create("getThisType", null, "6r77ob2UWbY"))), SMethodTrimmedId.create("getMembers", MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x66c71d82c2eb7f7eL, "jetbrains.mps.baseLanguage.structure.IClassifierType"), "6r77ob2V1Fr")))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    });

    return Sequence.fromIterable(SNodeOperations.ofConcept(nodes, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return JUnit3MethodWrapper.isTestMethod(it);
      }
    }).select(new ISelector<SNode, ITestNodeWrapper>() {
      public ITestNodeWrapper select(SNode it) {
        return TestNodeWrapperFactory.tryToWrap(it);
      }
    }).where(new IWhereFilter<ITestNodeWrapper>() {
      public boolean accept(ITestNodeWrapper it) {
        return it != null;
      }
    });
  }
  private static String check_qb7e7i_a0a2(SNode checkedDotOperand, JUnit3TestWrapper checkedDotThisExpression) {
    if (null != checkedDotOperand) {
      return ((String) BHReflection.invoke(checkedDotOperand, SMethodTrimmedId.create("getFqName", null, "hEwIO9y")));
    }
    return null;
  }
}
