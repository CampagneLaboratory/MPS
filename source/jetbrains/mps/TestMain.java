package jetbrains.mps;

import jetbrains.mps.logging.LoggerUtil;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.TestResult;
import jetbrains.mps.project.ProjectTester;
import jetbrains.mps.ide.IdeMain;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.refactoring.framework.tests.IRefactoringTester;
import jetbrains.mps.projectLanguage.structure.LanguageDescriptor;
import jetbrains.mps.projectLanguage.structure.ClassPathEntry;
import jetbrains.mps.make.ModuleMaker;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;

import com.intellij.openapi.progress.EmptyProgressIndicator;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectUtil;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ex.ApplicationManagerEx;
import com.intellij.openapi.util.InvalidDataException;
import com.intellij.idea.IdeaTestApplication;
import com.intellij.ide.IdeEventQueue;

import javax.swing.SwingUtilities;

import org.jdom.JDOMException;

public class TestMain {
  private static final Logger LOG = Logger.getLogger(TestMain.class);

  public static void main(String[] args) {
    if (args.length != 1) {
      System.out.println("Usage : TestMain mpsProject");
      return;
    }

    File projectFile = new File(args[0]);
    if (!projectFile.exists()) {
      System.out.println("Can't find a file " + projectFile);
      return;
    }

    String error = testProject(projectFile);
    System.exit(error == null ? 0 : 1);
  }


  public static void testProject(File projectFile, ProjectRunnable pr) {
    IdeMain.setTestMode(true);
    TestMain.configureMPS();
    final MPSProject project = loadProject(projectFile);
    pr.execute(project);
  }

  public static MPSProject loadProject(File projectFile) {
    if (!projectFile.exists()) {
      throw new RuntimeException("Can't find a project in file " + projectFile.getAbsolutePath());
    }


    ApplicationManagerEx.getApplicationEx().doNotSave();

    final ProjectManagerEx projectManager = ProjectManagerEx.getInstanceEx();

    String filePath = projectFile.getAbsolutePath();
    String iprfilePath = filePath.replaceAll("(.*)(\\.mpr)", "$1.ipr");

    Project ideaProject = null;
    try {
      ideaProject = projectManager.loadAndOpenProject(iprfilePath, false);
    } catch (IOException e) {
      throw new RuntimeException(e);
    } catch (JDOMException e) {
      throw new RuntimeException(e);
    } catch (InvalidDataException e) {
      throw new RuntimeException(e);
    }

    assert ideaProject != null;

    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        new ModuleMaker().make(
          new LinkedHashSet<IModule>(MPSModuleRepository.getInstance().getAllModules()),
          new EmptyProgressIndicator());
      }
    });

    projectManager.openProject(ideaProject);
    MPSProjectHolder holder = ideaProject.getComponent(MPSProjectHolder.class);
    return holder.getMPSProject();
  }

  public static boolean testProjectGenerationForLeaks(File projectFile) {
    return testProjectGenerationForLeaks(projectFile, 1000);
  }

  public static boolean testProjectGenerationForLeaks(File projectFile, int leakThreshold) {
    IdeMain.setTestMode(true);

    TestMain.configureMPS();

    final MPSProject project = loadProject(projectFile);
    return testActionForLeaks(new Runnable() {
      public void run() {
        new ProjectTester(project).testProject();
      }
    }, leakThreshold);
  }

  public static boolean testRefactoringTestEnvironment(File projectDirectory) {
    IdeMain.setTestMode(true);
    TestMain.configureMPS();
    File projectFile = new File(projectDirectory, "testRefactoring.ipr");
    final MPSProject project = loadProject(projectFile);
    final boolean[] b = new boolean[]{true};
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        if (getSandbox1(project) == null) {
          b[0] = false;
          return;
        }
        if (getSandbox2(project) == null) {
          b[0] = false;
          return;
        }
        if (getTestRefactoringLanguage(project) == null) {
          b[0] = false;
          return;
        }
        if (getTestRefactoringTargetLanguage(project) == null) {
          b[0] = false;
          return;
        }
      }
    });

    ThreadUtils.runInUIThreadNoWait(new Runnable() {
      public void run() {
        project.dispose();
      }
    });
    return b[0];
  }

  private static SModelDescriptor getSandbox1(MPSProject project) {
    return project.getScope().getModelDescriptor(SModelUID.fromString("testRefactoring.sandbox"));
  }

  private static SModelDescriptor getSandbox2(MPSProject project) {
    return project.getScope().getModelDescriptor(SModelUID.fromString("testRefactoring.sandbox2"));
  }

  private static Language getTestRefactoringLanguage(MPSProject project) {
    return project.getScope().getLanguage("testRefactoring");
  }

  private static Language getTestRefactoringTargetLanguage(MPSProject project) {
    return project.getScope().getLanguage("testRefactoringTargetLang");
  }

  public static boolean testRefactoringOnProject(final File projectDirectory, final IRefactoringTester refactoringTester) {
    IdeMain.setTestMode(true);
    TestMain.configureMPS();
    final boolean[] b = new boolean[]{true};


    final File destination = new File(PathManager.getHomePath(), "TEST_REFACTORING");
    if (destination.exists()) {
      FileUtil.delete(destination);
    }
    FileUtil.copyDir(projectDirectory, destination);
    final  MPSProject[] projectArray = new MPSProject[]{null};

    //loading a project
    try {
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          File projectFile = new File(destination, "testRefactoring.mpr");
          projectArray[0] = loadProject(projectFile);
        }
      });
    } catch (Throwable t) {
      t.printStackTrace();
      return false;
    }

    final MPSProject project = projectArray[0];


    final Runnable continuation = new Runnable() {
      public void run() {
        if (project != null) {
          project.dispose();
        }
        FileUtil.delete(destination);
      }
    };

    final SModelDescriptor[] sandbox1 = new SModelDescriptor[]{null};
    final SModelDescriptor[] sandbox2 = new SModelDescriptor[]{null};
    final Language[] testRefactoringLanguage = new Language[]{null};
    final Language[] testRefactoringTargetLanguage = new Language[]{null};
    ModelAccess.instance().runWriteAction(new Runnable() {
      public void run() {
        try {
          sandbox1[0] = getSandbox1(project);
          sandbox2[0] = getSandbox2(project);
          testRefactoringLanguage[0] = getTestRefactoringLanguage(project);
          testRefactoringTargetLanguage[0] = getTestRefactoringTargetLanguage(project);

          //update languages' classpathes
          {
            LanguageDescriptor testRefactoringDescriptor = testRefactoringLanguage[0].getLanguageDescriptor();
            LanguageDescriptor testRefactoringTargetDescriptor = testRefactoringTargetLanguage[0].getLanguageDescriptor();

            ClassPathEntry cpEntry1 = ClassPathEntry.newInstance(testRefactoringDescriptor.getModel());
            ClassPathEntry cpEntry2 = ClassPathEntry.newInstance(testRefactoringTargetDescriptor.getModel());
            String classPath = destination.getAbsolutePath() + "/classes";
            cpEntry1.setPath(classPath);
            cpEntry2.setPath(classPath);

            testRefactoringDescriptor.replaceChild(testRefactoringDescriptor.getClassPathEntrys().get(0), cpEntry1);
            testRefactoringTargetDescriptor.replaceChild(testRefactoringTargetDescriptor.getClassPathEntrys().get(0), cpEntry2);

            testRefactoringLanguage[0].setLanguageDescriptor(testRefactoringDescriptor);
            testRefactoringTargetLanguage[0].setLanguageDescriptor(testRefactoringTargetDescriptor);
          }
        } catch (Throwable t) {
          t.printStackTrace();
          b[0] = false;
          return;
        }
      } });

    if (!b[0]) {
      return false;
    }
    try {
      return refactoringTester.testRefactoring(
        project,
        sandbox1[0],
        sandbox2[0],
        testRefactoringLanguage[0],
        testRefactoringTargetLanguage[0], null/*continuation*/);
    } catch (Throwable t) {
      t.printStackTrace();
      return false;
    } finally {
      ThreadUtils.runInUIThreadAndWait(continuation);
    }
  }

  public static boolean testProjectReloadForLeaks(final File projectFile) {
    IdeMain.setTestMode(true);

    return testProjectReloadForLeaks(projectFile, 1000);
  }

  public static boolean testProjectReloadForLeaks(final File projectFile, int leakThreshold) {
    TestMain.configureMPS();

    return testActionForLeaks(new Runnable() {
      public void run() {
        MPSProject project = loadProject(projectFile);
        project.getPluginManager().reloadPlugins();
        project.dispose();
      }
    }, leakThreshold);
  }

  public static boolean testActionForLeaks(Runnable action, int leakThreshold) {
    action.run();
    gc();
    allowToCreateASnapshot();

    long memory = usedMemory();
    action.run();
    gc();
    allowToCreateASnapshot();

    long delta = usedMemory() - memory;

    System.out.println("delta = " + delta);

    if (delta > leakThreshold * 1000) {
      System.out.println(delta + " bytes leaked");
      return false;
    }

    return true;
  }

  private static void allowToCreateASnapshot() {

//    try {
//      System.out.println("take a snapshot!!!!");
//      Thread.sleep(30000);
//
//    } catch (Throwable t) {
//      t.printStackTrace();
//    }
  }

  private static void gc() {
    for (int i = 0; i < 5; i++) {
      System.gc();
    }
  }

  private static long usedMemory() {
    return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
  }

  public static String testProject(File projectFile) {
    return testProject(projectFile, (String) null);
  }

  /**
   * Null result means no problems, not null result contains error description.
   * @param projectFile
   * @param treatThisWarningAsError
   * @return
   */
  public static String testProject(File projectFile, String treatThisWarningAsError) {
    IdeMain.setTestMode(true);
    long start = System.currentTimeMillis();
    configureMPS();
    System.out.println("loading project...");
    if (!projectFile.exists()) {
      throw new RuntimeException("Can't find a project in file " + projectFile.getAbsolutePath());
    }

    final MPSProject project = loadProject(projectFile);
    TestResult result = new ProjectTester(project).testProject();

    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        project.dispose();

        IdeEventQueue.getInstance().flushQueue();        
        gc();
      }
    });

    result.dump(System.out);
    String message = null;

    if (result.isOk()) {
      if (treatThisWarningAsError != null) {
        int i = result.warningsStartsWith(treatThisWarningAsError);

        if (i > 0) {
          message = "No generation errors.\nNo compilation problems.\nThere're [" + i + "]  warnings start with [" + treatThisWarningAsError + "]";
        }
      } else {
        message = null;
      }
    } else {
      message = "";
      if (result.hasGenerationErrors()) {
        message = "[" + result.myGenerationErrors.size() + "] generation errors.\n";
        for (String error : result.myGenerationErrors) {
          message = message + error + "\n";
        }
      }
      if (result.hasGenerationWarnings()) {
        message += "[" + result.myGenerationWarnings.size() + "] generation warnings.\n";
        for (String error : result.myGenerationWarnings) {
          message = message + error + "\n";
        }
      }
      if (result.hasCompilationProblems()) {
        message += "[" + result.myCompilationProblems.size() + "] compilation problems.\n";
        for (String error : result.myCompilationProblems) {
          message = message + error + "\n";
        }
      }
    }

    if (message != null) System.out.println(message);
    System.out.println("testing took " + (System.currentTimeMillis() - start) + " ms");

    return message;
  }

  public static void configureMPS() {
    System.setProperty("idea.is.internal", "true");
    System.setProperty("idea.no.jre.check", "true");
    System.setProperty("idea.load.plugins", "false");
    System.setProperty("idea.platform.prefix", "MPS");

    try {
      IdeaTestApplication.getInstance();
    } catch (Exception e) {
      throw new RuntimeException(e);
    }


    LoggerUtil.configureLogger();
  }

  public static interface ProjectRunnable {
    void execute(MPSProject project);
  }
}
