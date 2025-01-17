package jetbrains.mps.testbench.junit.runners;

/*Generated by MPS */

import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;
import org.jetbrains.annotations.NotNull;
import org.junit.runner.notification.RunNotifier;
import org.junit.runner.Description;

public class DelegatingRunner extends Runner {
  private final RunnerBuilder myBuilder;
  private final Class<?> myTestClass;

  public DelegatingRunner(RunnerBuilder builder, @NotNull Class<?> testClass) {
    myBuilder = builder;
    myTestClass = testClass;
  }

  @Override
  public void run(RunNotifier notifier) {
    // todo: runner should be created only twice: in #run and #getDescription 
    myBuilder.safeRunnerForClass(getTestClass()).run(notifier);
  }

  @Override
  public Description getDescription() {
    return myBuilder.safeRunnerForClass(getTestClass()).getDescription();
  }

  @NotNull
  private Class<?> getTestClass() {
    // todo: execute only MPS tests here. move all unit tests to ant task 
    return myTestClass;
  }

}
