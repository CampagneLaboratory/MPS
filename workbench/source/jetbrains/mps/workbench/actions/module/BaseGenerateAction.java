/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.workbench.actions.module;

import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.wm.WindowManager;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.generator.IllegalGeneratorConfigurationException;
import jetbrains.mps.generator.generationTypes.IGenerationHandler;
import jetbrains.mps.ide.actions.ModelCheckerTool_Tool;
import jetbrains.mps.ide.genconf.GenParameters;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.project.testconfigurations.BaseTestConfiguration;
import jetbrains.mps.project.structure.project.testconfigurations.ModuleTestConfiguration;
import jetbrains.mps.smodel.*;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.BaseAction;
import org.jetbrains.annotations.NotNull;

import javax.swing.JOptionPane;
import javax.swing.tree.TreeNode;
import java.awt.Frame;
import java.util.*;

public abstract class BaseGenerateAction extends BaseAction {
  private boolean myRegenerate;
  private IOperationContext myOperationContext;
  private MPSProject myProject;
  private Frame myFrame;
  Set<IModule> myModules;

  public BaseGenerateAction(boolean regenerate) {
    super("");
    myRegenerate = regenerate;
    setIsAlwaysVisible(false);
    setExecuteOutsideCommand(true);
    addPlace(null);
  }

  abstract Set<IModule> getModuleToGenerate(AnActionEvent e);
  abstract String getObject();

  protected void doUpdate(AnActionEvent e) {
    for (IModule module : myModules) {
      if ((!(module instanceof Solution)) && (!(module instanceof Language)) && (!(module instanceof Generator))) {
        disable(e.getPresentation());
        return;
      }
    }
    enable(e.getPresentation());
    TreeNode treeNode = MPSDataKeys.LOGICAL_VIEW_NODE.getData(e.getDataContext());
    String obj = getObject();
    String newText = (myRegenerate ? "Regenerate" : "Generate") + " " + obj;
    e.getPresentation().setText(newText);
  }

  protected boolean collectActionData(AnActionEvent e) {
    if (!super.collectActionData(e)) return false;
    myProject = MPSDataKeys.MPS_PROJECT.getData(e.getDataContext());
    myOperationContext = MPSDataKeys.OPERATION_CONTEXT.getData(e.getDataContext());
    if (myOperationContext == null) return false;
    myModules = getModuleToGenerate(e);
    if (myModules.isEmpty()) return false;
    myFrame = MPSDataKeys.FRAME.getData(e.getDataContext());
    if (myFrame == null) return false;
    return true;
  }

  public String getActionId() {
    return BaseGenerateAction.class.getName() + "#" + myRegenerate;
  }

  protected void doExecute(AnActionEvent e) {
    final List<SModelDescriptor> modelsToGenerate = new ArrayList<SModelDescriptor>();

    IOperationContext invocationContext = myOperationContext;
    for (IModule module : myModules) {
      if (module instanceof Generator) {
        module = ((Generator) module).getSourceLanguage();
        invocationContext = new MyContext(module, myOperationContext);
      }
      modelsToGenerate.addAll(getModelsToGenerate(module));
    }

    Collections.sort(modelsToGenerate, new Comparator<SModelDescriptor>() {
      public int compare(SModelDescriptor o1, SModelDescriptor o2) {
        return o1.getLongName().compareTo(o2.getLongName());
      }
    });

    if (modelsToGenerate.isEmpty()) {
      Project project = e.getData(PlatformDataKeys.PROJECT);
      WindowManager.getInstance().getIdeFrame(project).getStatusBar().setInfo("Nothing to generate");
      return;
    }

    final IOperationContext invocationContext1 = invocationContext;
    //noinspection ConstantConditions
    boolean checkSuccessful = myProject.getPluginManager().getTool(ModelCheckerTool_Tool.class)
      .checkModelsBeforeGenerationIfNeeded(invocationContext, modelsToGenerate, new Runnable() {
        public void run() {
          GeneratorManager generatorManager = myOperationContext.getComponent(GeneratorManager.class);
          IGenerationHandler generationHandler = generatorManager.getDefaultGenerationHandler();
          generatorManager.generateModelsFromDifferentModules(
            invocationContext1,
            modelsToGenerate,
            generationHandler);
        }
      });
    if (!checkSuccessful) {
      return;
    }

    GeneratorManager generatorManager = myOperationContext.getComponent(GeneratorManager.class);
    IGenerationHandler generationHandler = generatorManager.getDefaultGenerationHandler();
    generatorManager.generateModelsFromDifferentModules(
      invocationContext,
      modelsToGenerate,
      generationHandler);
  }

  @NotNull
  private List<SModelDescriptor> getModelsToGenerate(final IModule module) {
    GenParameters params = ModelAccess.instance().runReadAction(new Computable<GenParameters>() {
      public GenParameters compute() {
        SModel tmp = new SModel();
        tmp.setLoading(true);


        BaseTestConfiguration conf = null;

        if (module instanceof Solution) {
          ModuleTestConfiguration solutionConfig = new ModuleTestConfiguration();
          solutionConfig.setModuleRef(module.getModuleReference());
          solutionConfig.setName("tmp");
          conf = solutionConfig;
        }

        if (module instanceof Language) {
          ModuleTestConfiguration languageConfig = new ModuleTestConfiguration();
          languageConfig.setModuleRef(module.getModuleReference());
          languageConfig.setName("tmp");
          conf = languageConfig;
        }

        assert conf != null;

        try {
          return conf.getGenParams(myProject, myRegenerate);
        } catch (IllegalGeneratorConfigurationException e) {
          JOptionPane.showMessageDialog(myFrame, e.getMessage());
          return null;
        }
      }
    });

    if (params == null) return new ArrayList<SModelDescriptor>();
    return params.getModelDescriptors();
  }

  private static class MyContext implements IOperationContext {
    private final IModule myModule;
    private IOperationContext myOperationContext;

    public MyContext(IModule module, IOperationContext operationContext) {
      myModule = module;
      myOperationContext = operationContext;
    }

    public <T> T getComponent(Class<T> clazz) {
      return myOperationContext.getComponent(clazz);
    }

    public Frame getMainFrame() {
      return myOperationContext.getMainFrame();
    }

    public boolean isValid() {
      return true;
    }

    public IModule getModule() {
      return myModule;
    }

    public MPSProject getMPSProject() {
      return myOperationContext.getMPSProject();
    }

    public Project getProject() {
      return myOperationContext.getProject();
    }

    @NotNull
    public IScope getScope() {
      return myOperationContext.getScope();
    }

    public boolean isTestMode() {
      return myOperationContext.isTestMode();
    }
  }
}

