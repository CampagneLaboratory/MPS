package jetbrains.mps.refactoringTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.ChangeMethodSignatureParameters;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.ChangeMethodSignatureRefactoring;
import java.util.List;
import java.util.ArrayList;
import junit.framework.Assert;
import jetbrains.mps.lang.test.matcher.NodesMatcher;

@MPSLaunch
public class ChangeSignatureOfStaticMethod_Test extends BaseTransformationTest {
  @Test
  public void test_ChangeSignatureOfStaticMethod() throws Throwable {
    this.initTest("${mps_home}", "r:4dc6ffb5-4bbb-4773-b0b7-e52989ceb56f(jetbrains.mps.refactoringTest@tests)", false);
    this.runTest("jetbrains.mps.refactoringTest.ChangeSignatureOfStaticMethod_Test$TestBody", "test_ChangeSignatureOfStaticMethod", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_ChangeSignatureOfStaticMethod() throws Exception {
      this.addNodeById("1230052903079");
      this.addNodeById("1230052903110");
      ChangeMethodSignatureParameters params = new ChangeMethodSignatureParameters(SNodeOperations.cast(this.getNodeById("1230052903099"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration")));
      SNode p1 = ListSequence.fromList(SLinkOperations.getChildren(params.getDeclaration(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).first();
      SNode p0 = ListSequence.fromList(SLinkOperations.getChildren(params.getDeclaration(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).getElement(1);
      ListSequence.fromList(SLinkOperations.getChildren(params.getDeclaration(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).clear();
      ListSequence.fromList(SLinkOperations.getChildren(params.getDeclaration(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).addElement(p0);
      ListSequence.fromList(SLinkOperations.getChildren(params.getDeclaration(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).addElement(p1);
      ChangeMethodSignatureRefactoring ref = new ChangeMethodSignatureRefactoring(params, SNodeOperations.cast(this.getNodeById("1230052903099"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration")));
      List<SNode> ussages = ListSequence.fromList(new ArrayList<SNode>());
      ListSequence.fromList(ussages).addElement(SNodeOperations.cast(this.getNodeById("1230052903086"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall")));
      ListSequence.fromList(ussages).addElement(SNodeOperations.cast(this.getNodeById("1230052903093"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, "jetbrains.mps.baseLanguage.structure.StaticMethodCall")));
      ref.setUsages(ussages);
      ref.doRefactoring();
      {
        List<SNode> nodesBefore = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("1230052903080"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        List<SNode> nodesAfter = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("1230052903111"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        Assert.assertNull("nodes '" + nodesBefore + "' and '" + nodesAfter + "' do not match!", NodesMatcher.matchNodes(nodesBefore, nodesAfter));
      }
    }
  }
}
