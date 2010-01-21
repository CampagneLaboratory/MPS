package jetbrains.mps.ide.progress;

import com.intellij.openapi.progress.ProgressIndicator;
import jetbrains.mps.ide.progress.TaskProgressSettings;
import jetbrains.mps.util.TimePresentationUtil;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
* Evgeny Gryaznov, Jan 20, 2010
*/
public class TaskProgressHelper {

  private static final int TIMER_DELAY = 100; //milliseconds

  private final ProgressIndicator myProgress;
  private final long myStartJobTime;
  private long myTotalJob;

  private javax.swing.Timer myTimer;
  private String myTaskName;
  private long myStartTime;
  private String myText2;

  private final Object myDisposeSync = new Object();
  private boolean myIsDisposed = false;
  private long myEstimatedTime;

  public TaskProgressHelper(ProgressIndicator progressIndicator, long totalJob, long startJobTime) {
    myProgress = progressIndicator;
    myStartJobTime = startJobTime;
    myTotalJob = totalJob;

    myProgress.setIndeterminate(false);
    myProgress.setFraction(0);
  }

  private void clear() {
    synchronized (myDisposeSync) {
      myIsDisposed = true;
      myTimer = null;
      myTaskName = null;
      myStartTime = 0;
    }
  }

  public void startLeafTask(String taskName) {
    myTaskName = taskName;
    myIsDisposed = false;

    myEstimatedTime = TaskProgressSettings.getInstance().getEstimatedTimeMillis(taskName);
    myStartTime = System.currentTimeMillis();

    javax.swing.Timer timer = new javax.swing.Timer(TIMER_DELAY, new ActionListener() {
      long myMillis = 0;

      public void actionPerformed(ActionEvent e) {
        synchronized (myDisposeSync) {
          if (myIsDisposed) return;

          myMillis += TIMER_DELAY;
          if (myMillis > myEstimatedTime) {
            advance(myTotalJob + myMillis - myEstimatedTime, (myStartTime - myStartJobTime) + myMillis);
          } else {
            advance(myTotalJob, (myStartTime - myStartJobTime) + myMillis);
          }
        }
      }
    });
    myTimer = timer;
    timer.start();
  }

  public void finishTask() {
    long elapsedTaskTime = System.currentTimeMillis() - myStartTime;
    long elapsedJob = System.currentTimeMillis() - myStartJobTime;
    myTotalJob += elapsedTaskTime - myEstimatedTime;
    if(myTotalJob < 1) {
      myTotalJob = 1;
    }
    TaskProgressSettings.getInstance().addEstimatedTimeMillis(myTaskName, elapsedTaskTime);
    advance(myTotalJob, elapsedJob);
    myTimer.stop();
    clear();
  }

  private void advance(long totalJob, long elapsedJob) {
    double fraction = ((double) elapsedJob) / ((double) totalJob);
    if (fraction > 1) {
      fraction = 1;
    }
    myProgress.setFraction(fraction);
    setText2(myText2);
  }

  public void setText2(String text) {
    myText2 = text;
    long elapsedTime = System.currentTimeMillis() - myStartJobTime;
    String elapsedTimeString = TimePresentationUtil.timeIntervalStringPresentation(elapsedTime);
    String estimatedTimeString = TimePresentationUtil.timeIntervalStringPresentation(myTotalJob);
    myProgress.setText(myText2);
    myProgress.setText2("Estimated time: " + estimatedTimeString + ", elapsed time: " + elapsedTimeString);
  }

  public boolean isCancelled() {
    return myProgress.isCanceled();
  }
}
