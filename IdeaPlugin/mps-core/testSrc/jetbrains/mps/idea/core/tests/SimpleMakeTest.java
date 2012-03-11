/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.tests;

import com.intellij.compiler.CompilerManagerImpl;
import com.intellij.openapi.compiler.CompileContext;
import com.intellij.openapi.compiler.CompileStatusNotification;
import com.intellij.openapi.compiler.CompilerManager;
import com.intellij.openapi.compiler.CompilerPaths;
import com.intellij.openapi.roots.ModuleRootManager;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.vfs.VirtualFileSystem;
import jetbrains.mps.idea.core.facet.MPSFacetConfiguration;
import jetbrains.mps.idea.core.make.MPSCompiler2;
import jetbrains.mps.idea.core.make.MPSCompilerPaths;
import jetbrains.mps.vfs.IFile;

/**
 * Created by IntelliJ IDEA.
 * User: fyodor
 * Date: 2/15/12
 * Time: 10:36 AM
 * To change this template use File | Settings | File Templates.
 */
public class SimpleMakeTest extends AbstractMakeTest {

  @Override
  protected void prepareTestData(final MPSFacetConfiguration configuration) throws Exception {
    String moduleFileName = configuration.getFacet().getModule().getModuleFilePath();
    copyResource(moduleFileName, "simple.iml", "/tests/simple/simple.iml");
    final IFile model = copyResource("models", "simple.mps", "simple.mps", "/tests/simple/models/simple.mps");
    configuration.getState().setModelRootPaths(model.getParent().getPath());
    prepareTestData(configuration, model.getParent());
  }


  public void testGeneratingIntoHiddenDir() throws Exception {
    CompilerManagerImpl.testSetup();

    ModuleRootManager mrm = ModuleRootManager.getInstance(myFacet.getModule());
    VirtualFile[] srs = mrm.getSourceRoots();
    assertTrue(srs.length == 2);
    assertEquals("models", srs[0].getName());

    VirtualFile[] children = srs[0].getChildren();
    assertTrue(children.length == 1);
    assertEquals("simple.mps", children[0].getName());

    final VirtualFile moduleDir = srs[0].getParent();
    assertTrue(moduleDir.findChild("source_gen") == null);

    CompilerManager cm = CompilerManager.getInstance(myFacet.getModule().getProject());
    assertCompiles(cm, 1, 0);

    MPSCompiler2[] mpscs = cm.getCompilers(MPSCompiler2.class);
    assertSame(1, mpscs.length);

    VirtualFile outputDir = getVFS().findFileByPath(CompilerPaths.getGenerationOutputPath(mpscs[0], myFacet.getModule(), false));
    assertNotNull("Not found output dir", outputDir);
    assertExists(outputDir, "simple");
    assertExists(outputDir, "simple/Launchme.java");
    assertExists(outputDir, "simple/trace.info");
    assertTrue(outputDir.findFileByRelativePath("simple").getChildren().length == 2);

    getVFS().refresh(false);
    assertNotExists(moduleDir, "source_gen");

    VirtualFile cachesOutputDir = getVFS().findFileByPath(MPSCompilerPaths.getCachesOutputPath(mpscs[0], myFacet.getModule(), false));
    assertExists(cachesOutputDir, "simple");
    assertExists(cachesOutputDir, "simple/generated");
    assertExists(cachesOutputDir, "simple/dependencies");
  }
}
