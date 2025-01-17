package jetbrains.mps.lang.editor.forms.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import java.awt.Component;
import java.awt.event.MouseEvent;

@MPSLaunch
public class TextCheckbox_CLICK_Toggles_Test extends BaseTransformationTest {
  public TextCheckbox_CLICK_Toggles_Test() {
  }
  @Test
  public void test_TextCheckbox_CLICK_Toggles() throws Throwable {
    this.initTest("${mps_home}", "r:9dd38274-05d8-45ba-a41e-44ac52909443(jetbrains.mps.lang.editor.forms.test@tests)");
    this.runTest("jetbrains.mps.lang.editor.forms.test.TextCheckbox_CLICK_Toggles_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("5347446703375532577", "5347446703375532579");
      {
        int x_qbnwfg_a0 = 1;
        int y_qbnwfg_a0 = 1;
        Component eventTargetComponent_qbnwfg_a0 = this.processMouseEvent(x_qbnwfg_a0, y_qbnwfg_a0, MouseEvent.MOUSE_PRESSED);
        this.processSecondaryMouseEvent(eventTargetComponent_qbnwfg_a0, x_qbnwfg_a0, y_qbnwfg_a0, MouseEvent.MOUSE_RELEASED);
        this.processSecondaryMouseEvent(eventTargetComponent_qbnwfg_a0, x_qbnwfg_a0, y_qbnwfg_a0, MouseEvent.MOUSE_CLICKED);
      }
    }
  }
}
