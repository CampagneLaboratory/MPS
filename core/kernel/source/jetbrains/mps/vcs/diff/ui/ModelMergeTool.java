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
package jetbrains.mps.vcs.diff.ui;

import com.intellij.openapi.diff.DiffContent;
import com.intellij.openapi.diff.DiffManager;
import com.intellij.openapi.diff.DiffRequest;
import com.intellij.openapi.diff.DiffTool;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.vcs.ApplicationLevelVcsManager;
import jetbrains.mps.vcs.ModelUtils;
import jetbrains.mps.vcs.diff.MPSDiffRequestFactory.ModelMergeRequest;
import jetbrains.mps.vcs.diff.ui.ModelDiffTool.ReadException;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.MPSProjectHolder;

import javax.swing.SwingUtilities;
import java.io.*;

public class ModelMergeTool implements DiffTool {
  private static final Logger LOG = Logger.getLogger(ModelMergeTool.class);

  public void show(final DiffRequest request) {
    ModelMergeRequest mrequest = (ModelMergeRequest) request;

    try {
      DiffContent[] contents = mrequest.getContents();
      final SModel baseModel = ModelDiffTool.readModel(contents[ModelMergeRequest.ORIGINAL],
        mrequest.getFile().getPath());
      final SModel mineModel = ModelDiffTool.readModel(contents[ModelMergeRequest.CURRENT],
        mrequest.getFile().getPath());
      final SModel newModel = ModelDiffTool.readModel(contents[ModelMergeRequest.LAST_REVISION],
        mrequest.getFile().getPath());
      final MergeModelsDialog dialog = ModelAccess.instance().runReadAction(new Computable<MergeModelsDialog>() {
        public MergeModelsDialog compute() {
          MPSProject project = request.getProject().getComponent(MPSProjectHolder.class).getMPSProject();
          IOperationContext context = new ModuleContext(baseModel.getModelDescriptor().getModule(), project);
          return new MergeModelsDialog(context, baseModel, mineModel, newModel);
        }
      });

      SwingUtilities.invokeLater(new Runnable() {
        public void run() {
          dialog.toFront();
        }
      });
      dialog.showDialog();

      if (dialog.getResultModel() != null) {
        byte[] bytes = ModelUtils.modelToBytes(dialog.getResultModel());
        mrequest.resolved(bytes);
      }
    } catch (IOException e) {
      LOG.error(e);
    } catch (ReadException e) {
      // if we cant read model from file
      // we try to use idea diff tool instead
      LOG.warning("Can't read models. Using text based diff...", e);
      DiffTool ideaDiffTool = DiffManager.getInstance().getIdeaDiffTool();
      if (ideaDiffTool.canShow(request)) {
        ideaDiffTool.show(request);
      }
    }
  }

  public boolean canShow(DiffRequest request) {
    if (ApplicationLevelVcsManager.instance().getSettings().getTextModeEnabled()) return false;
    return (request instanceof ModelMergeRequest);
  }
}
