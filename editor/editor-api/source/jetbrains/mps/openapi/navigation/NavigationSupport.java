/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.openapi.navigation;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.openapi.editor.Editor;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;

/**
 * Facility to reveal different aspects of an mps project, either in a project tree or in an editor.
 * FIXME it's odd to require external methods to wrap into read/write/EDT if we can do it ourselves here (with project and its model access available)
 */
public abstract class NavigationSupport implements CoreComponent {
  private static NavigationSupport INSTANCE;

  public static NavigationSupport getInstance() {
    return INSTANCE;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }

  /**
   * @deprecated use {@link #openNode(jetbrains.mps.project.Project, org.jetbrains.mps.openapi.model.SNode, boolean, boolean)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  public Editor openNode(@NotNull IOperationContext context, @NotNull SNode node, boolean focus, boolean select) {
    return openNode(context.getProject(), node, focus, select);
  }

  /**
   * Opens node in the editor. Requires: model write, EDT.
   *
   * Model write is required because saveAll() will be called by implementation
   * of this method (IDEA API calls).
   *
   * @param mpsProject project where node is looked up and where editor is opened
   * @param node alive node from model repository
   * @param focus move focus if needed - to editor or to inspector
   * @param select select node (or its parent) in editor and inspector (if exist)
   */
  public abstract Editor openNode(@NotNull Project mpsProject, @NotNull SNode node, boolean focus, boolean select);

  /**
   * @deprecated use {@link #selectInTree(jetbrains.mps.project.Project, org.jetbrains.mps.openapi.model.SNode, boolean)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  public void selectInTree(@NotNull IOperationContext context, @NotNull SNode node, boolean focus) {
    selectInTree(context.getProject(), node, focus);
  }

  /**
   * Opens project tree tool and selects the node. Requires: model read, EDT.
   *
   * @param project where the node is looked up and where it gets revealed
   * @param node  node to select
   * @param focus focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SNode node, boolean focus);

  /**
   * @deprecated use {@link #selectInTree(jetbrains.mps.project.Project, org.jetbrains.mps.openapi.model.SModel, boolean)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  public void selectInTree(@NotNull IOperationContext context, @NotNull SModel model, boolean focus) {
    selectInTree(context.getProject(), model, focus);
  }

  /**
   * Activates project tree tool and selects the model. Requires: model read, EDT.
   *
   * @param project where the model is looked up and where it gets revealed
   * @param model model to select
   * @param focus focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SModel model, boolean focus);

  /**
   * @deprecated use {@link #selectInTree(jetbrains.mps.project.Project, org.jetbrains.mps.openapi.module.SModule, boolean)} instead
   */
  @Deprecated
  @ToRemove(version = 3.2)
  public void selectInTree(@NotNull IOperationContext context, @NotNull SModule module, boolean focus) {
    selectInTree(context.getProject(), module, focus);
  }

  /**
   * Activates project tree tool and selects the module. Requires: module read, EDT.
   *
   * @param project where the module is looked up and where it gets revealed
   * @param module module to select
   * @param focus  focus on project tree tool
   */
  public abstract void selectInTree(@NotNull Project project, @NotNull SModule module, boolean focus);
}
