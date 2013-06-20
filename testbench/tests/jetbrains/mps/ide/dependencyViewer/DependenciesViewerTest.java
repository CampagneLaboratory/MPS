/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.dependencyViewer;

import jetbrains.mps.WorkbenchMpsTest;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.testbench.TestOutputFilter;
import jetbrains.mps.testbench.junit.runners.ProjectTestsSupport;
import jetbrains.mps.testbench.junit.runners.ProjectTestsSupport.ProjectRunnable;
import jetbrains.mps.util.PathManager;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.junit.Assert;
import org.junit.Test;

import java.io.File;
import java.util.List;

import static org.junit.Assert.assertNotNull;

// todo: use CoreMpsTest instead?
public class DependenciesViewerTest extends WorkbenchMpsTest {
  private static final String TEST_PROJECT = "testDependenciesViewer" + MPSExtentions.DOT_MPS_PROJECT;
  private static final String TEST_MODEL = "testDependenciesViewer.sandbox.first";
  private static final String TARGET_MODEL = "testDependenciesViewer.sandbox.target";
  private final static File sourceZip = new File("testbench/modules/testDependenciesViewer.zip");
  private final static File tempDir = new File(PathManager.getHomePath(), "TEST_DEPENDENCY");

  private TestOutputFilter filter = new TestOutputFilter() {
    @Override
    protected boolean isLineOK(String line) {
      return !(line.contains("attribute") && line.contains("undeclared child role:"));
    }
  };

  @Test
  public void testDependencies() {
    boolean result = ProjectTestsSupport.testOnProjectCopy(sourceZip, tempDir, TEST_PROJECT, new ProjectRunnable() {
      @Override
      public boolean execute(final Project project) {
        final boolean[] res = new boolean[1];
        res[0] = true;
        ModelAccess.instance().runReadAction(new Runnable() {
          public void run() {
            SModel testModel = ProjectTestsSupport.getModel(project, TEST_MODEL);
            SModel targetModel = ProjectTestsSupport.getModel(project, TARGET_MODEL);
            assertNotNull("test model is null", testModel);
            assertNotNull("target model is null", targetModel);

            ReferencesFinder finder = new ReferencesFinder();

            DependencyViewerScope testScope = new DependencyViewerScope();
            testScope.add(testModel);
            DependencyViewerScope targetScope = new DependencyViewerScope();
            targetScope.add(targetModel);

            List<SNode> nodes = finder.getNodes(testScope, new EmptyProgressMonitor());

            if (nodes.size() != 50) {
              System.out.println("Nodes size " + nodes.size());
              res[0] = false;
            }
            SearchResults targetSearchResults = finder.getTargetSearchResults(nodes, testScope, new EmptyProgressMonitor());
            int size = targetSearchResults.getSearchResults().size();
            if (size != 11) {
              System.out.println("Targets size " + size);
              res[0] = false;
            }
            SearchResults refSearchResults = finder.getUsagesSearchResults(nodes, testScope, targetScope, new EmptyProgressMonitor());
            size = refSearchResults.getSearchResults().size();
            if (size != 4) {
              System.out.println("Results size " + size);
              res[0] = false;
            }
          }
        });
        return res[0];
      }
    });
    Assert.assertTrue(result);
  }
}
