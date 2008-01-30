package jetbrains.mps;

import junit.framework.TestCase;
import jetbrains.mps.ide.TestMain;

import java.io.File;

public class BootstrapTest extends BaseMPSTest {
  public void testBaseLanguage() {
    String res = testProject(new File("core/baseLanguage/baseLanguage/baseLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testBaseLanguageStrings() {
    String res = testProject(new File("core/baseLanguage/strings/strings.mpr"));
    assertTrue(res, res == null);
  }

  public void testCoreLanguage() {
    String res = testProject(new File("core/languageDesign/core/core.mpr"));
    assertTrue(res, res == null);
  }

  public void testStructureLanguage() {
    String res = testProject(new File("core/languageDesign/structureLanguage/structureLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testEditorLanguage() {
    String res = testProject(new File("core/languageDesign/editorLanguage/editorLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testConstraintsLanguage() {
    String res = testProject(new File("core/languageDesign/constraintsLanguage/constraintsLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testSModelLanguage() {
    String res = testProject(new File("core/languageDesign/smodelLanguage/smodelLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testActionsLanguage() {
    String res = testProject(new File("core/languageDesign/actionsLanguage/actionsLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testHelgins() {
    String res = testProject(new File("core/languageDesign/helgins/jetbrains.mps.bootstrap.helgins.mpr"));
    assertTrue(res, res == null);
  }

  public void testRefactoringLanguage() {
    String res = testProject(new File("core/languageDesign/refactoring/refactoring.mpr"));
    assertTrue(res, res == null);
  }

  public void testSharedConcepts() {
    String res = testProject(new File("core/languageDesign/sharedConcepts/sharedConcepts.mpr"));
    assertTrue(res, res == null);
  }

  public void testCollectionsLanguage() {
    String res = testProject(new File("core/baseLanguage/collections/collections.mpr"));
    assertTrue(res, res == null);
  }

  public void testProjectLanguage() {
    String res = testProject(new File("languages/projectLanguage/projectLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testTransformation() {
    String res = testProject(new File("core/languageDesign/transformation/templateLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testIntentionsLanguage() {
    String res = testProject(new File("core/languageDesign/intentionsLanguage/intentionsLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testFindUsagesLanguage() {
    String res = testProject(new File("core/languageDesign/findUsagesLanguage/findUsagesLanguage.mpr"));
    assertTrue(res, res == null);
  }

  public void testXML() {
    String res = testProject(new File("platform/xml/xml.mpr"));
    assertTrue(res, res == null);
  }

  public void testRegexps() {
    String res = testProject(new File("platform/regexp/regexp.mpr"));
    assertTrue(res, res == null);
  }
}
