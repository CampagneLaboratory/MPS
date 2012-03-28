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

package jetbrains.mps.idea.core.tests;

import com.intellij.openapi.application.ex.ApplicationManagerEx;
import com.intellij.openapi.components.impl.ComponentManagerImpl;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.project.Project;
import com.intellij.testFramework.TestLoggerFactory;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.ide.editor.MPSEditorOpener;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.idea.core.facet.MPSFacetConfiguration;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest4;
import jetbrains.mps.lang.test.runtime.ProjectTest;
import jetbrains.mps.lang.test.runtime.TransformationTestRunner;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.smodel.*;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class EditorTests extends DataMPSFixtureTestCase {

    private List<BaseTransformationTest4> tests = new ArrayList<BaseTransformationTest4>();

    @Override
    protected boolean runInDispatchThread() {
        return false;
    }

    @Override
    protected void invokeTestRunnable(Runnable runnable) throws Exception {
        // superclass's method always starts this in the EDT
        runnable.run();
    }

    @Override
    protected void prepareTestData(MPSFacetConfiguration configuration) throws  Exception {
        IFile test = copyResource("models", "test.mps", "test.mps", "/tests/editorTests/models/test.mps");
      ArrayList<ModelRoot> roots = new ArrayList<ModelRoot>();
      roots.add(new ModelRoot(test.getParent().getPath()));
      configuration.getState().setModelRoots(roots);
    }

    @Override
    protected void setUp() throws Exception {
        final Exception[] thrown = new Exception[1];
        UIUtil.invokeAndWaitIfNeeded(new Runnable() {
            @Override
            public void run() {
                try {
                    EditorTests.super.setUp();
                } catch (Exception e) {
                    thrown[0] = e;
                }
            }
        });
        if (thrown[0] != null) throw thrown[0];

        // this is to prevent exceptions in the project components that get "projectClosed" notifications
        ApplicationManagerEx.getApplicationEx().doNotSave();

        SModelRoot sModelRoot = myFacet.getSolution().getSModelRoots().iterator().next();
        final IFile modelFile = FileSystem.getInstance().getFileByPath(sModelRoot.getPath()+"/test.mps");
        final List<SNode> roots = new ArrayList<SNode>();

        ModelAccess.instance().runReadAction(new Runnable() {
            @Override
            public void run() {
                SModelDescriptor descr = SModelRepository.getInstance().findModel(modelFile);
                if (descr == null) {
                    thrown[0] = new IllegalStateException("model not found");
                    return;
                }

                SModel model = descr.getSModel();
                if (model != null) {
                    for (SNode root : model.roots()) {
                        roots.add(root);
                    }
                }

                for (SNode r: roots) {
                    if ("EditorTestCase".equals(r.getConceptShortName())) {
                        try {
                            Class<?> cls = Class.forName(model.getLongName() + "." + r.getName() + "_Test");
                            Method mth = cls.getMethod("test_" + r.getName());
                            BaseTransformationTest4 btt = (BaseTransformationTest4) cls.newInstance();
                            btt.setTestRunner(new SimpleTransformationTestRunner(r, mth));
                            tests.add(btt);
                        }
                        catch (Exception e) {
                            thrown[0] = e;
                        }
                    }
                }


           }
        });
        // restore test logger factory
        Logger.setFactory(TestLoggerFactory.getInstance());
        if (thrown[0] != null) throw thrown[0];
    }

    @Override
    protected void tearDown() throws Exception {
        final Exception[] thrown = new Exception[1];
        UIUtil.invokeAndWaitIfNeeded(new Runnable() {
            @Override
            public void run() {
                try {
                    EditorTests.super.tearDown();
                } catch (Exception e) {
                    thrown[0] = e;
                }
            }
        });
        if (thrown[0] != null) throw thrown[0];

        Project prj = myModule.getProject();
        if (prj instanceof ComponentManagerImpl) {
            ((ComponentManagerImpl)prj).setTemporarilyDisposed(true);
        }
    }


    public void test_AllEditorTests() throws Throwable {
        for(BaseTransformationTest4 btt: tests) {
            ((SimpleTransformationTestRunner)btt.getTestRunner()).doTest(btt);
        }
    }

    public class SimpleTransformationTestRunner extends TransformationTestRunner {

        private SNode myRoot;
        private Method myTestMethod;

        public SimpleTransformationTestRunner (SNode root, Method testMethod) {
            myRoot = root;
            myTestMethod = testMethod;
        }

        public void doTest (BaseTransformationTest4 btt) throws Throwable {
            try {
                myTestMethod.invoke(btt);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }

        @Override
        public void initTest(final ProjectTest btt, @NotNull String projectName, String model) throws Exception {
            UIUtil.invokeAndWaitIfNeeded(new Runnable() {
                @Override
                public void run() {
                    ModelAccess.instance().runReadAction(new Runnable() {
                        @Override
                        public void run() {
                            final ProjectOperationContext context = new ProjectOperationContext(
                                    ProjectHelper.toMPSProject(myModule.getProject()));

                            new MPSEditorOpener(myModule.getProject()).openNode(myRoot, context, true, true);

                            btt.setModelDescriptor(myRoot.getModel().getModelDescriptor());
                            btt.setProject(ProjectHelper.toMPSProject(myModule.getProject()));
                        }
                    });
                }
            });
        }

        @Override
        public void runTest(ProjectTest btt, String className, String methodName, boolean runInCommand) throws Throwable {
            try {
                Class<?> cls = Class.forName(className);
                Object obj = cls.newInstance();

                cls.getField("myModel").set(obj, btt.getModelDescriptor());
                cls.getField("myProject").set(obj, btt.getProject());

                Method mth = cls.getMethod(methodName);
                mth.invoke(obj);
            }
            catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }

    }
}
