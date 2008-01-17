package jetbrains.mps.refactoring.framework;

import jetbrains.mps.smodel.SModel;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.BaseMPSTest;
import jetbrains.mps.refactoring.framework.tests.RenameConceptRefactoringTester;

import java.io.File;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 16.01.2008
 * Time: 16:12:33
 * To change this template use File | Settings | File Templates.
 */
public class RefactoringTest extends BaseMPSTest {
  private static final String TEST_REFACTORING_PATH = "app/testRefactoring";

  public void testRefactoringEnvironment() {
    assertTrue(testRefactoringTestEnvironment(new File(TEST_REFACTORING_PATH)));
  }

  public void testRenameConceptRefactoring() {
    assertTrue(testRefactoringOnProject(new File(TEST_REFACTORING_PATH), "jetbrains.mps.refactoring.framework.tests.RenameConceptRefactoringTester"));
  }

  public void testMoveConceptRefactoring() {
    assertTrue(testRefactoringOnProject(new File(TEST_REFACTORING_PATH), "jetbrains.mps.refactoring.framework.tests.MoveConceptRefactoringTester"));
  }
}
