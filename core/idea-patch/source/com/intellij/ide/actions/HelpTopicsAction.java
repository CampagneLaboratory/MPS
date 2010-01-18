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
package com.intellij.ide.actions;

import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.workbench.action.BaseAction;

/**
 * SEVEREPATCH
 * This action does nothing and is invisible.
 */
public class HelpTopicsAction extends BaseAction {

  @Override
  protected void doUpdate(AnActionEvent e) {
    e.getPresentation().setVisible(false);
  }

  protected void doExecute(AnActionEvent e) {

  }
}
