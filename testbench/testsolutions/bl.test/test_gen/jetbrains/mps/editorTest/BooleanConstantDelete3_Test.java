package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class BooleanConstantDelete3_Test extends BaseTransformationTest {
  public BooleanConstantDelete3_Test() {
  }
  @Test
  public void test_BooleanConstantDelete3() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.BooleanConstantDelete3_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("6450120067538813824", "6450120067538813832");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Backspace_Action");
    }
  }
}
