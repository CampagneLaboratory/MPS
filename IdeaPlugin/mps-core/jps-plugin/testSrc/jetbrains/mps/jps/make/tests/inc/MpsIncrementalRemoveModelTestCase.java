/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

package jetbrains.mps.jps.make.tests.inc;

import com.intellij.testFramework.TestDataPath;
import jetbrains.mps.jps.make.testEnvironment.JpsTestBean;
import jetbrains.mps.jps.make.tests.inc.MpsIncrementalMakeTestCase;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.jps.builders.BuildResult;
import org.jetbrains.jps.cmdline.ProjectDescriptor;
import org.junit.Assume;

import java.io.File;
import java.util.ResourceBundle;

/**
 * 1. clean rebuild, remove model, make -- java removed from src_gen and from the output
 * 2. clean rebuild, remove model, make -- xml removed from src_gen and from the output
 */
@TestDataPath(value = "$PROJECT_ROOT/mps-core/jps-plugin/testResources/testMake")
public class MpsIncrementalRemoveModelTestCase extends MpsIncrementalSingleModelTestCase {
  @NotNull
  @NonNls
  @Override
  protected String getLogFileName() {
    return "remove.log";
  }

  @NotNull
  @Override
  protected BuildResult doTestIncrementalBuild(@NotNull ProjectDescriptor projectDescriptor) {
    rebuildAll();

    final String modelFile = getModelPath();
    delete(modelFile);

    return makeAll();
  }

  public void testJava() {
    doTest("java/in");
  }

  public void testXml() {
    doTest("xml/in");
  }
}
