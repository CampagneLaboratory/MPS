/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.lang.script.plugin;

import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.project.Project;
import jetbrains.mps.lang.script.structure.MigrationScript;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.workbench.action.ActionEventData;

import java.util.ArrayList;
import java.util.List;

/**
 * Igor Alshannikov
 * Date: Apr 24, 2007
 */
public class RunMigrationScriptAction extends AbstractMigrationScriptAction {
  private MigrationScript myScript;
  private Project myProject;
  private IOperationContext myContext;
  private List<SModelDescriptor> myModels;
  private List<IModule> myModules;

  public RunMigrationScriptAction(MigrationScript script, String name, boolean applyToSelection) {
    super(name, applyToSelection);
    myScript = script;
  }


  protected void doExecute(AnActionEvent e) {
    IScope migrationScope = createMigrationScope(myModels, myModules);
    if (migrationScope.getModelDescriptors().isEmpty()) {
      return;
    }

    List<MigrationScript> scripts = new ArrayList<MigrationScript>();
    scripts.add(myScript);
    doRunScripts(scripts, migrationScope, myContext);
  }

  protected boolean collectActionData(AnActionEvent e) {
    if (!super.collectActionData(e)) return false;

    ActionEventData eventData = new ActionEventData(e);
    myContext = eventData.getOperationContext();
    if (myContext == null) return false;
    myProject = eventData.getProject();
    if (myProject == null) return false;
    myModels = eventData.getModels();
    myModules = eventData.getModules();

    return true;
  }
}
