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
package jetbrains.mps.plugins.pluginparts.actions;

import com.intellij.openapi.actionSystem.*;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.extensions.PluginId;
import jetbrains.mps.plugins.applicationplugins.ApplicationPluginManager;
import jetbrains.mps.plugins.applicationplugins.BaseApplicationPlugin;
import jetbrains.mps.workbench.action.ActionFactory;
import jetbrains.mps.workbench.action.BaseAction;
import jetbrains.mps.workbench.action.BaseGroup;
import jetbrains.mps.workbench.action.MPSActions;

public abstract class GeneratedActionGroup extends BaseGroup {
  protected GeneratedActionGroup(String text, String id) {
    super(text, id);
  }

  @Deprecated//replace with action stubs
  protected void addAction(String id){
    add(ActionManager.getInstance().getAction(id));
  }

  @Deprecated
  protected void addParameterizedAction(GeneratedAction action, PluginId id, Object ... params){
    ActionManager manager = ActionManager.getInstance();
    AnAction oldAction = manager.getAction(action.getActionId());
    if (oldAction==null){
      manager.registerAction(action.getActionId(),action,id);
      oldAction = action;
    }

    add(oldAction);

    BaseApplicationPlugin plugin = ApplicationManager.getApplication().getComponent(ApplicationPluginManager.class).getPlugin(id);
    plugin.addParameterizedAction(action,params);
  }

  protected void addAction(ActionStub creator) {
    add(MPSActions.getInstance().acquireAction(creator));
  }
}
