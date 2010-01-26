package jetbrains.mps.build.ant.generation;

import jetbrains.mps.build.ant.*;
import org.apache.tools.ant.types.resources.FileResource;

import java.util.Iterator;

public class TestGenerationOnTeamcity extends GenerateTask {
  public static final String INVOKE_TESTS = "INVOKE_TESTS";
  public static final String SAVE_ON_DISK = "SAVE_ON_DISK";
  public static final String SHOW_DIFF = "SHOW_DIFF";
  public static final String WHOLE_PROJECT = "WHOLE_PROJECT";
  public static final String GENERATE_PERFORMANCE_REPORT = "GENERATE_PERFORMANCE_REPORT";

  {
    myWhatToDo.putProperty(INVOKE_TESTS, Boolean.toString(false));
    myWhatToDo.putProperty(SHOW_DIFF, Boolean.toString(false));
    myWhatToDo.putProperty(GENERATE_PERFORMANCE_REPORT , "");
  }

  public boolean getShowDiff() {
    return Boolean.parseBoolean(myWhatToDo.getProperty(SHOW_DIFF));
  }

  public void setShowDiff(boolean isDifferenceCalculated) {
    myWhatToDo.putProperty(SHOW_DIFF, Boolean.toString(isDifferenceCalculated));
  }

  public boolean getInvokeTests() {
    return Boolean.parseBoolean(myWhatToDo.getProperty(INVOKE_TESTS));
  }

  public void setInvokeTests(boolean invokeTests) {
    myWhatToDo.putProperty(INVOKE_TESTS, Boolean.toString(invokeTests));
  }

  public boolean getSaveOnDisk() {
    return Boolean.parseBoolean(myWhatToDo.getProperty(SAVE_ON_DISK));
  }

  public void setSaveOnDisk(boolean saveOnDisk) {
    myWhatToDo.putProperty(SAVE_ON_DISK, Boolean.toString(saveOnDisk));
  }

  public void addConfiguredPerfomanceReport(PerfomanceReport report) {
    myWhatToDo.addPerfomanceReport(report.toString());
  }

  @Override
  protected Class<? extends MpsWorker> getWorkerClass() {
    return TestGenerationWorker.class;
  }

  @Override
  protected MyExecuteStreamHandler getExecuteStreamHandler() {
    return new MyTeamcityAwareExecuteStreamHandler(this, new TeamCityMessageFormat());
  }

  public void addConfiguredProject(ProjectNested projectInner) {
    if (projectInner.getWholeProject()) {
      Iterator it = projectInner.iterator();
      while (it.hasNext()) {
        FileResource next = (FileResource) it.next();
        myWhatToDo.addProjectFile(next.getFile(), WHOLE_PROJECT);
      }
    } else {
      super.addConfiguredProject(projectInner);
    }
  }
}
