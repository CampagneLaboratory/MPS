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
import jetbrains.mps.MPSCore;
import jetbrains.mps.TestMain;
import jetbrains.mps.build.ant.MpsPlatform;
import jetbrains.mps.build.ant.MpsWorker;
import jetbrains.mps.build.ant.util.PathManager;
import jetbrains.mps.build.ant.util.SetLibraryContributor;
import jetbrains.mps.generator.DefaultModifiableGenerationSettings;
import jetbrains.mps.generator.GenerationSettingsProvider;
import jetbrains.mps.library.LibraryInitializer;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.testbench.MpsMakeHelper;
import jetbrains.mps.testbench.junit.runners.SymbolicSuite.SuiteClassSymbols;
import jetbrains.mps.testbench.junit.runners.WatchingSuite;
import junit.framework.TestSuite;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.ConsoleAppender;
import org.apache.log4j.Logger;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import java.util.HashSet;
import java.util.Set;


@SuiteClassSymbols({"jetbrains.mps.tests.TestModule_closures_test",
  "jetbrains.mps.tests.TestModule_collections_trove_test",
  "jetbrains.mps.tests.TestModule_collections_unittest",
  "jetbrains.mps.tests.TestModule_dates_unittest",
  "jetbrains.mps.tests.TestModule_internalCollections_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_closures_unittest",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_math_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_regexp_unittest",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_tuples_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_baseLanguage_unittest",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_debugger_java_runtime_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_execution_impl_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_graphLayout_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_lang_editor_table_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_lang_editor_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_lang_pattern_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_lang_smodel_unittest",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_make_tests",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_smodel_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_traceInfo_test",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_traceInfo_testWeaving",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_ui_unittest",
  "jetbrains.mps.tests.TestModule_jetbrains_mps_xml_tests",
  "jetbrains.mps.tests.TestModule_ypath_test"})
@RunWith(WatchingSuite.class)
public class ModuleTestSuite extends TestSuite {

  private static MpsMakeHelper ourMakeHelper = new MpsMakeHelper();

  @BeforeClass
  public static void make () throws Exception {
    ourMakeHelper.make();
  }

  @AfterClass
  public static void shutdown() {
    TestMain.PROJECT_CONTAINER.clear();
    ourMakeHelper.dispose();
  }
}
