package jetbrains.mps.baseLanguage.unitTest.execution.client;

/*Generated by MPS */

import com.intellij.execution.process.ProcessAdapter;
import jetbrains.mps.baseLanguage.unitTest.execution.TestEvent;
import com.intellij.execution.process.ProcessTerminatedListener;
import com.intellij.execution.process.ProcessEvent;
import com.intellij.openapi.util.Key;
import com.intellij.execution.process.ProcessOutputTypes;

public class UnitTestProcessListener extends ProcessAdapter {
  private final TestEventsDispatcher myDispatcher;
  private TestEvent myLastEvent;
  public UnitTestProcessListener(TestEventsDispatcher dispatcher) {
    myDispatcher = dispatcher;
  }

  private boolean isTerminatedEvent() {
    for (StackTraceElement element : Thread.currentThread().getStackTrace()) {
      if (element.getClassName().equals(ProcessTerminatedListener.class.getName())) {
        return true;
      }
    }
    return false;
  }

  @Override
  public void onTextAvailable(ProcessEvent event, Key k) {
    if (this.isTerminatedEvent()) {
      this.myDispatcher.onProcessTerminated(event.getText());
    }
    String text = event.getText();
    if (text == null) {
      return;
    }
    String textTrimmed = ((text == null ? null : text.trim()));
    TestEvent testEvent = TestEvent.parse(textTrimmed);
    if (testEvent != null) {
      myLastEvent = testEvent;
      this.myDispatcher.onTestEvent(testEvent);
    } else {
      if (myLastEvent != null && (TestEvent.ASSUMPTION_FAILURE_TEST_PREFIX.equals(myLastEvent.getToken()) || TestEvent.FAILURE_TEST_PREFIX.equals(myLastEvent.getToken()))) {
        k = ProcessOutputTypes.STDERR;
      }
      this.myDispatcher.onSimpleTextAvailable(text, k);
    }
  }
}
