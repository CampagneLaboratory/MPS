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
package jetbrains.mps.vcs.diff;

import com.intellij.openapi.diff.ActionButtonPresentation;
import com.intellij.openapi.diff.MergeRequest;
import com.intellij.openapi.diff.SimpleContent;
import com.intellij.openapi.diff.impl.mergeTool.DiffRequestFactoryImpl;
import com.intellij.openapi.diff.impl.mergeTool.MergeRequestImpl;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.fileTypes.MPSFileTypeFactory;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.vcs.ModelUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class MPSDiffRequestFactory extends DiffRequestFactoryImpl {
  private static final Logger LOG = Logger.getLogger(MPSDiffRequestFactory.class);

  @Override
  public MergeRequest createMergeRequest(String leftText, String rightText, String originalContent, @NotNull VirtualFile file, Project project, @Nullable ActionButtonPresentation actionButtonPresentation) {
    if (!file.getFileType().equals(MPSFileTypeFactory.MODEL_FILE_TYPE)) {
      return super.createMergeRequest(leftText, rightText, originalContent, file, project, actionButtonPresentation);
    }
    return new ModelMergeRequest(leftText, rightText, originalContent, file, project, actionButtonPresentation);
  }

  public static class ModelMergeRequest extends MergeRequestImpl {
    public static final int CURRENT = 0;
    public static final int ORIGINAL = 1;
    public static final int LAST_REVISION = 2;
    private final VirtualFile myFile;

    protected ModelMergeRequest(String leftText, String rightText, String originalContent, @NotNull VirtualFile file, Project project, ActionButtonPresentation actionButtonPresentation) {
      super(leftText, originalContent, rightText, project, actionButtonPresentation);

      ApplicationManager.getApplication().saveAll();
      myFile = file;
    }

    @NotNull
    public VirtualFile getFile() {
      return myFile;
    }

    public void resolved(final byte[] result) {
      ((SimpleContent) getContents()[ORIGINAL]).setBOM(result);
      setResult(DialogWrapper.OK_EXIT_CODE);
      ModelUtils.replaceWithNewModelFromBytes(myFile, result);
    }
  }
}
