/*
 * Copyright 2003-2013 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.classloading;

import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.facets.JavaModuleFacetImpl;
import jetbrains.mps.project.structure.modules.Dependency;
import jetbrains.mps.project.structure.modules.SolutionKind;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.testbench.ModuleMpsTest;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.FacetsFacade;
import org.jetbrains.mps.openapi.module.FacetsFacade.FacetFactory;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleFacet;
import org.junit.AfterClass;
import org.junit.Assume;
import org.junit.BeforeClass;
import org.junit.Test;

import org.junit.Assert;

import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ModulesReloadTest extends ModuleMpsTest {
  private static FacetFactory ourOldFacetFactory;
  private final ClassLoaderManager myManager = ClassLoaderManager.getInstance();

  private static final String CLASS_TO_LOAD = "Test";
  private static final File TEMP_DIR = createTempDir();
  private static final String TEMP_DIR_PATH = getTempDirPath();
  private static final FacetFactory FACET_FACTORY = new FacetFactory() {
    @Override
    public SModuleFacet create() {
      return new TestJavaModuleFacet();
    }
  };

  private static File createTempDir() {
    File tempDir = FileUtil.createTmpDir();
    Assume.assumeTrue("Cannot write the " + tempDir + " directory", tempDir.canRead());
    return tempDir;
  }

  private static String getTempDirPath() {
    try {
      return TEMP_DIR.getCanonicalPath();
    } catch (IOException e) {
      throw new IOError(e);
    }
  }

  @BeforeClass
  public static void setUp() {
    new TestClassFileCreator(CLASS_TO_LOAD, TEMP_DIR_PATH).create();
    attachTestJavaFacetFactory();
  }

  @AfterClass
  public static void tearDown() {
    FileUtil.delete(TEMP_DIR);
    detachTestJavaFacetFactory();
  }

  private static void attachTestJavaFacetFactory() {
    ourOldFacetFactory = FacetsFacade.getInstance().getFacetFactory(JavaModuleFacet.FACET_TYPE);
    FacetsFacade.getInstance().removeFactory(ourOldFacetFactory);
    FacetsFacade.getInstance().addFactory(JavaModuleFacet.FACET_TYPE, FACET_FACTORY);
  }

  private static void detachTestJavaFacetFactory() {
    FacetsFacade.getInstance().removeFactory(FACET_FACTORY);
    FacetsFacade.getInstance().addFactory(JavaModuleFacet.FACET_TYPE, ourOldFacetFactory);
  }

  @Test
  public void testLanguageIsLoadable() {
    final Language language = createLanguage();
    Assert.assertTrue(safeGetClass(language, CLASS_TO_LOAD) == null);
    addClassTo(language);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        language.reload();
        Assert.assertTrue(classIsLoadableFromModule(language));
      }
    });
  }

  @Test
  public void testGeneratorIsLoadable() {
    final Generator generator = createGenerator();
    Assert.assertTrue(safeGetClass(generator, CLASS_TO_LOAD) == null);
    addClassTo(generator);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        generator.reload();
        Assert.assertTrue(classIsLoadableFromModule(generator));
      }
    });
  }

  @Test
  public void testPluginSolutionIsLoadable() {
    final Solution solution = createSolution();
    addClassTo(solution);
    solution.getModuleDescriptor().setKind(SolutionKind.PLUGIN_CORE);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        solution.reload();
      }
    });
    Assert.assertTrue(classIsLoadableFromModule(solution));
  }

  @Test
  public void testNotLoadableDepsAreNotLoadable() {
    final Solution solution = createSolution();
    addClassTo(solution);
    solution.getModuleDescriptor().setKind(SolutionKind.NONE);
    final Language l1 = createLanguage();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        ClassLoaderManager.getInstance().reloadModule(solution);
        l1.addDependency(solution.getModuleReference(), false);
        ClassLoaderManager.getInstance().reloadModule(solution);
//        Assert.assertFalse(classIsLoadableFromModule(l1)); // the class must be available already here FIXME: enable after 3.2
      }
    });
  }

  @Test
  public void testNonPluginSolutionIsNotLoadable() {
    final Solution solution = createSolution();
    addClassTo(solution);
    solution.getModuleDescriptor().setKind(SolutionKind.NONE);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        ClassLoaderManager.getInstance().reloadModule(solution);
//        Assert.assertFalse(classIsLoadableFromModule(solution)); FIXME: enable after 3.2
      }
    });
//    Assert.assertFalse(classIsLoadableFromModule(solution));
  }
  @Test
  public void testReloadNonLoadableSolution() {
    final Solution solution = createSolution();
    solution.getModuleDescriptor().setKind(SolutionKind.NONE);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        solution.reload();
        ClassLoaderManager.getInstance().reloadModule(solution);
      }
    });
  }

  @Test
  public void testReloadingSolutionKinds() {
    final Solution solution = createSolution();
    addClassTo(solution);
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        solution.getModuleDescriptor().setKind(SolutionKind.NONE);
        ClassLoaderManager.getInstance().reloadModule(solution);
        Assert.assertTrue(myManager.getModulesWatcher().isModuleWatched(solution));
//        Assert.assertFalse(classIsLoadableFromModule(solution)); FIXME: enable after 3.2
        solution.getModuleDescriptor().setKind(SolutionKind.PLUGIN_CORE);
        ClassLoaderManager.getInstance().reloadModule(solution);
        Assert.assertTrue(classIsLoadableFromModule(solution));
        Assert.assertTrue(myManager.getModulesWatcher().isModuleWatched(solution));
        solution.getModuleDescriptor().setKind(SolutionKind.NONE);
        ClassLoaderManager.getInstance().reloadModule(solution);
        Assert.assertTrue(myManager.getModulesWatcher().isModuleWatched(solution));
//        Assert.assertFalse(classIsLoadableFromModule(solution)); FIXME: enable after 3.2
      }
    });
  }

  @Test
  public void testDepsAreLoadable1() {
    final Language l1 = createLanguage();
    final Language l2 = createLanguage();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        addClassTo(l2);
        l2.reload();
        l1.addDependency(l2.getModuleReference(), false);
        Assert.assertTrue(classIsLoadableFromModule(l1)); // the class must be available already here
      }
    });
  }

  @Test
  public void testDepsAreLoadable2() {
    final Language l = createLanguage();
    final Solution s = createSolution();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        addClassTo(s);
        l.addDependency(s.getModuleReference(), false);
//        Assert.assertFalse(classIsLoadableFromModule(l)); FIXME turn on after 3.2
        s.getModuleDescriptor().setKind(SolutionKind.PLUGIN_CORE);
        s.reload();
        Assert.assertTrue(classIsLoadableFromModule(l)); // the class must be available already here
      }
    });
  }

  @Test
  public void testNonLoadableDepsThrows() {
    final Language l = createLanguage();
    final Solution s = createSolution();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        addClassTo(s);
        l.addDependency(s.getModuleReference(), false);
//        Assert.assertFalse(classIsLoadableFromModule(l)); // the class must be available already here FIXME: enable after 3.2
      }
    });
  }

  @Test
  public void testBackDepsReload() {
    final Language l1 = createLanguage();
    final Language l2 = createLanguage();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l1.addDependency(l2.getModuleReference(), false);
        l1.reload();
      }
    });
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        addClassTo(l2);
        l2.reload();
        Assert.assertTrue(classIsLoadableFromModule(l1));
        Assert.assertTrue(classIsLoadableFromModule(l2));
      }
    });
  }

  @Test
  public void testLanguageAddRemove() {
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        final Language language = createLanguage();
        removeModule(language);
      }
    });
  }

  @Test
  public void testUnload1() {
    final Language l1 = createLanguage();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        removeModule(l1);
        Assert.assertTrue(l1.getClassLoader() == null);
        Assert.assertTrue(!myManager.getModulesWatcher().isModuleWatched(l1));
      }
    });
    Assert.assertTrue(l1.getClassLoader() == null);
  }

  @Test
  public void testModuleRemoval() {
    final Language l1 = createLanguage();
    final Language l2 = createLanguage();
    final Language l3 = createLanguage();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l1.addDependency(l2.getModuleReference(), false);
        l2.addDependency(l3.getModuleReference(), false);
        addClassTo(l2);
        l2.reload();
        Assert.assertTrue(classIsLoadableFromModule(l1));
        removeModule(l3);
        Assert.assertFalse(classIsLoadableFromModule(l1));
        Assert.assertFalse(myManager.getModulesWatcher().isModuleWatched(l3));
      }
    });
    Assert.assertFalse(classIsLoadableFromModule(l1));
  }

  @Test
  public void testModuleRecreation() {
    final Language l1 = createLanguage();
    final Language[] l2 = new Language[1];
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        addClassTo(l1);
        l1.reload();
        Assert.assertTrue(classIsLoadableFromModule(l1));
        removeModule(l1);
        l2[0] = createLanguage(l1.getModuleDescriptor().getId(), l1.getModuleName()); // the same
        Assert.assertTrue(l2[0].getClassLoader() != null);
      }
    });
    Assert.assertTrue(l2[0].getClassLoader() != null);
  }

  @Test
  public void testModuleRecreation2() {
    final Language[] l = new Language[1];
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l[0] = createLanguage();
        addClassTo(l[0]);
        l[0].reload();
        Assert.assertTrue(classIsLoadableFromModule(l[0]));
        removeModule(l[0]);
      }
    });
    Assert.assertTrue(l[0].getClassLoader() == null);
  }

  @Test
  public void testModuleRecreation3() {
    final Language[] l = new Language[3];
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l[0] = createLanguage();
        l[1] = createLanguage();
        l[0].addDependency(l[1].getModuleReference(), false);
        removeModule(l[1]);
        l[2] = createLanguage(l[1].getModuleDescriptor().getId(), l[1].getModuleName()); // the same
        addClassTo(l[2]);
        l[2].reload();
        Assert.assertTrue(classIsLoadableFromModule(l[0]));
      }
    });
    Assert.assertTrue(classIsLoadableFromModule(l[0]));
  }

  @Test
  public void testModuleDeps() {
    final Language[] l = new Language[2];
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l[0] = createLanguage();
        l[1] = createLanguage();
        l[0].addDependency(l[1].getModuleReference(), false);
        addClassTo(l[1]);
        l[1].reload();
        Assert.assertTrue(classIsLoadableFromModule(l[0]));
      }
    });
    Assert.assertTrue(classIsLoadableFromModule(l[0]));
  }

  @Test
  public void testDisposedDepsIsNotValidForCL() {
    final Language l1 = createLanguage();
    addClassTo(l1);
    final Language l2 = createLanguage();
    final Language l3 = createLanguage();
    final Wrapper<Dependency> dep12 = new Wrapper<Dependency>();
    final Wrapper<Dependency> dep13 = new Wrapper<Dependency>();
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        dep12.setValue(l1.addDependency(l2.getModuleReference(), false));
        dep13.setValue(l1.addDependency(l3.getModuleReference(), false));
      }
    });
    Assert.assertTrue(classIsLoadableFromModule(l1));
    removeModule(l2);
    Assert.assertTrue(!classIsLoadableFromModule(l1));
    removeModule(l3);
    Assert.assertTrue(!classIsLoadableFromModule(l1));
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l1.removeDependency(dep12.getValue());
      }
    });
    Assert.assertTrue(!classIsLoadableFromModule(l1)); // still no, obviously
    getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        l1.removeDependency(dep13.getValue());
      }
    });
    Assert.assertTrue(classIsLoadableFromModule(l1));
  }

  /**
   * adds {@link #CLASS_TO_LOAD} to class path of the given module
   */
  private void addClassTo(SModule module) {
    TestJavaModuleFacet facet = module.getFacet(TestJavaModuleFacet.class);
    assert facet != null;
    facet.setLibClassPath(TEMP_DIR_PATH);
  }

  private boolean classIsLoadableFromModule(ReloadableModule module) {
    return safeGetClass(module, CLASS_TO_LOAD) != null;
  }

  @Nullable
  private static Class<?> safeGetClass(ReloadableModule module, String classFqName) {
    try {
      return module.getClass(classFqName);
    } catch (ClassNotFoundException ignored) {
      return null;
    }
  }

  /**
   * My personal JavaModuleFacet implementation, which allows to reset library class path and compileInMps flag.
   */
  private static class TestJavaModuleFacet extends JavaModuleFacetImpl implements JavaModuleFacet {
    private String myLibClassPath = null;
    private boolean myCompileInMps = true;

    @Override
    public boolean isCompileInMps() {
      return myCompileInMps;
    }

    @Override
    public String getFacetType() {
      return FACET_TYPE;
    }

    @Override
    @Nullable
    public IFile getClassesGen() {
      return null;
    }

    @Override
    public Set<String> getLibraryClassPath() {
      Set<String> result = new HashSet<String>();
      if (myLibClassPath != null) result.add(myLibClassPath);
      return result;
    }

    public void setLibClassPath(@Nullable String newPath) {
      myLibClassPath = newPath;
    }

    public void setCompileInMps(boolean value) {
      myCompileInMps = value;
    }
  }


  private static class Wrapper<T> {
    private T myValue;

    public Wrapper() {
      myValue = null;
    }

    public void setValue(T value) {
      myValue = value;
    }

    public T getValue() {
      return myValue;
    }
  }
}
