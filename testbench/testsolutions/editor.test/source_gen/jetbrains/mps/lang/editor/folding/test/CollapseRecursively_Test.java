package jetbrains.mps.lang.editor.folding.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class CollapseRecursively_Test extends BaseTransformationTest {
  public CollapseRecursively_Test() {
  }
  @Test
  public void test_CollapseRecursively() throws Throwable {
    this.initTest("${mps_home}", "r:0204c664-b836-4137-bb87-42caecd8a4e3(jetbrains.mps.lang.editor.folding.test)");
    this.runTest("jetbrains.mps.lang.editor.folding.test.CollapseRecursively_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("7429553584211922243", "7429553584211922266");
      this.invokeAction("jetbrains.mps.ide.editor.actions.CollapseRecursively_Action");
    }
  }
}
