package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class SidedeleteAtTheEnd_Test extends BaseTransformationTest {
  public SidedeleteAtTheEnd_Test() {
  }
  @Test
  public void test_SidedeleteAtTheEnd() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.SidedeleteAtTheEnd_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("1232624761393", "1232624785391");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Delete_Action");
    }
  }
}
