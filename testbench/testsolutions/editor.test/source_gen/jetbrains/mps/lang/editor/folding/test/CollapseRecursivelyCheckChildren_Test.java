package jetbrains.mps.lang.editor.folding.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class CollapseRecursivelyCheckChildren_Test extends BaseTransformationTest {
  public CollapseRecursivelyCheckChildren_Test() {
  }
  @Test
  public void test_CollapseRecursivelyCheckChildren() throws Throwable {
    this.initTest("${mps_home}", "r:0204c664-b836-4137-bb87-42caecd8a4e3(jetbrains.mps.lang.editor.folding.test)");
    this.runTest("jetbrains.mps.lang.editor.folding.test.CollapseRecursivelyCheckChildren_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("8741431550096045523", "8741431550096045531");
      this.invokeAction("jetbrains.mps.ide.editor.actions.CollapseRecursively_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.End_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveLeft_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Expand_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveDown_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveDown_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.End_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveLeft_Action");
    }
  }
}
