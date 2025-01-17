package jetbrains.mps.lang.editor.forms.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

@MPSLaunch
public class PlatformCheckbox_SPACE_InImage_Toggles_Test extends BaseTransformationTest {
  public PlatformCheckbox_SPACE_InImage_Toggles_Test() {
  }
  @Test
  public void test_PlatformCheckbox_SPACE_InImage_Toggles() throws Throwable {
    this.initTest("${mps_home}", "r:9dd38274-05d8-45ba-a41e-44ac52909443(jetbrains.mps.lang.editor.forms.test@tests)");
    this.runTest("jetbrains.mps.lang.editor.forms.test.PlatformCheckbox_SPACE_InImage_Toggles_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("7013563450911367710", "7013563450911367713");
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " SPACE"));
    }
  }
}
