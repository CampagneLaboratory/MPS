package testPackagedLanguage.test;

/*Generated by MPS */

import junit.framework.TestCase;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import junit.framework.Assert;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import javax.swing.Icon;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class TestPackagedLanguage_Test extends TestCase {
  public void test_testLanguagePresent() throws Exception {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Language language = ModuleRepositoryFacade.getInstance().getModule(PersistenceFacade.getInstance().createModuleReference("2d9a25d3-02b8-4024-afe2-bb9457a02cbf(testPackagedLanguage)"), Language.class);
        Assert.assertNotNull(language);
      }
    });
  }
  public void test_testStructureModel() throws Exception {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SModel struc = LanguageAspect.STRUCTURE.get(ModuleRepositoryFacade.getInstance().getModule(PersistenceFacade.getInstance().createModuleReference("2d9a25d3-02b8-4024-afe2-bb9457a02cbf(testPackagedLanguage)"), Language.class));
        Assert.assertNotNull(struc);
        Assert.assertEquals(ListSequence.fromList(SModelOperations.roots(struc, null)).count(), 1);
      }
    });
  }
  public void test_testEditorModel() throws Exception {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SModel editor = LanguageAspect.EDITOR.get(ModuleRepositoryFacade.getInstance().getModule(PersistenceFacade.getInstance().createModuleReference("2d9a25d3-02b8-4024-afe2-bb9457a02cbf(testPackagedLanguage)"), Language.class));
        Assert.assertNotNull(editor);
        Assert.assertEquals(ListSequence.fromList(SModelOperations.roots(editor, null)).count(), 1);
      }
    });
  }
  public void test_testIcons() throws Exception {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Icon icon = IconManager.getIcon(MetaAdapterFactory.getConcept(0x2d9a25d302b84024L, 0xafe2bb9457a02cbfL, 0x6005c4080114d50fL, "testPackagedLanguage.structure.TestConcept"));
        Assert.assertNotNull(icon);
        Assert.assertEquals(icon.getIconWidth(), 16);
        Assert.assertEquals(icon.getIconHeight(), 16);
      }
    });
  }
  public void test_testStubs() throws Exception {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SModel libraryModel = null;
        for (SModel m : ModuleRepositoryFacade.getInstance().getModule(PersistenceFacade.getInstance().createModuleReference("2d9a25d3-02b8-4024-afe2-bb9457a02cbf(testPackagedLanguage)"), Language.class).getModels()) {
          if ("dummy@java_stub".equals(m.getModelName())) {
            libraryModel = m;
            break;
          }
        }
        Assert.assertNotNull(libraryModel);
        Assert.assertEquals(ListSequence.fromList(SModelOperations.roots(libraryModel, null)).count(), 1);
        Assert.assertEquals(SPropertyOperations.getString(SNodeOperations.cast(ListSequence.fromList(SModelOperations.roots(libraryModel, null)).first(), MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), "DummyLibraryClass");
      }
    });
  }
}
