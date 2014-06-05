/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.idea.core.refactoring;

import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.diagnostic.Logger;
import com.intellij.openapi.editor.Editor;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.InputValidatorEx;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.util.Pair;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import com.intellij.refactoring.rename.RenameHandler;
import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.idea.core.MPSBundle;
import jetbrains.mps.idea.core.MPSDataKeys;
import jetbrains.mps.project.ReferenceUpdater;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.EditableSModel;
import jetbrains.mps.smodel.SModelFileTracker;
import jetbrains.mps.smodel.SModelFqName;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;

import javax.lang.model.SourceVersion;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public class ModelRenameHandler implements RenameHandler {
  private static final Logger LOG = Logger.getInstance("#jetbrains.mps.idea.core.refactoring.ModelRenameHandler");

  @Override
  public boolean isAvailableOnDataContext(DataContext dataContext) {
    IFile modelFile = getModelFile(dataContext);
    if (modelFile == null) return false;
    SModel descriptor = SModelFileTracker.getInstance().findModel(modelFile);
    return (descriptor instanceof EditableSModel);
  }

  @Override
  public boolean isRenaming(DataContext dataContext) {
    return isAvailableOnDataContext(dataContext);
  }

  @Override
  public void invoke(@NotNull Project project, Editor editor, PsiFile psiFile, DataContext dataContext) {
    LOG.assertTrue(false);
  }

  @Override
  public void invoke(@NotNull final Project project, @NotNull PsiElement[] psiElements, DataContext dataContext) {
    IFile modelFile = getModelFile(dataContext);
    if (modelFile == null) return;

    SModel descriptor = SModelFileTracker.getInstance().findModel(modelFile);
    if (!(descriptor instanceof EditableSModel)) return;

    final EditableSModel modelDescriptor = (EditableSModel) descriptor;
    final AtomicReference<String> targetFqName = new AtomicReference<String>(null);

    Pair<String, Boolean> result = Messages.showInputDialogWithCheckBox(
      MPSBundle.message("rename.model.to", SNodeOperations.getModelLongName(modelDescriptor)),
      MPSBundle.message("rename.model"),
      MPSBundle.message("update.all.references"), true, true, null, SNodeOperations.getModelLongName(modelDescriptor),
      new MyInputValidator() {
        @Override
        protected void doRename(String fqName) {
          targetFqName.set(fqName);
        }
      });

    if (targetFqName.get() != null) {
      ApplicationManager.getApplication().runWriteAction(new Runnable() {
        @Override
        public void run() {
          deleteGeneratedFiles(modelDescriptor);
        }
      });
      final ModelRenamer renamer = new ModelRenamer(modelDescriptor, targetFqName.get(), !(result.getSecond()));
      ModelAccess.instance().runWriteActionInCommand(new Runnable() {
        @Override
        public void run() {
          renamer.rename();
        }
      },
        ProjectHelper.toMPSProject(project));
      ProgressManager.getInstance().run(new Task.Modal(project, "Updating model usages...", false) {
        @Override
        public void run(@NotNull ProgressIndicator indicator) {
          indicator.pushState();
          indicator.setIndeterminate(true);
          try {
            ModelAccess.instance().runWriteAction(new Runnable() {
              public void run() {
                renamer.updateReferencesIfNeeded();
              }
            });
          } finally {
            indicator.popState();
          }
        }
      });
    }
  }

  private IFile getModelFile(DataContext dataContext) {
    IFile modelFile = null;
    Set<IFile> modelFiles = MPSDataKeys.MODEL_FILES.getData(dataContext);
    if (modelFiles != null && modelFiles.size() == 1) {
      modelFile = modelFiles.iterator().next();
    }
    return modelFile;
  }

  private void deleteGeneratedFiles(SModel modelDescriptor) {
    // TODO: find a way to safely delete generated files. Until then, let's not make a mess
    if (true) return;
    String moduleOutputPath = SModuleOperations.getOutputPathFor(modelDescriptor);
    if (moduleOutputPath == null) {
      return;
    }
    IFile moduleOutput = FileSystem.getInstance().getFileByPath(moduleOutputPath);
    FileGenerationUtil.getDefaultOutputDir(modelDescriptor, moduleOutput).delete();
    FileGenerationUtil.getDefaultOutputDir(modelDescriptor, FileGenerationUtil.getCachesDir(moduleOutput)).delete();
  }

  private static abstract class MyInputValidator implements InputValidatorEx {

    @Override
    public boolean checkInput(String text) {
      return text != null && isModelNameValid(text.trim());
    }

    @Override
    public boolean canClose(String text) {
      if (text == null) return false;
      String targetName = text.trim();
      if (!isModelNameValid(targetName)) return false;
      doRename(targetName);
      return true;
    }

    @Override
    public String getErrorText(String text) {
      if (text != null) {
        String[] errorText = new String[1];
        if (!isModelNameValid(text.trim(), errorText)) {
          return errorText[0];
        }
      }
      return null;
    }

    protected abstract void doRename(String fqName);

    private boolean isModelNameValid(String modelFqName) {
      return isModelNameValid(modelFqName, new String[1]);
    }

    private boolean isModelNameValid(String modelName, String[] errorText) {
      if (modelName.length() == 0) {
        errorText[0] = MPSBundle.message("create.new.model.dialog.error.empty.name");
        return false;
      }

      if (SModelRepository.getInstance().getModelDescriptor(SModelFqName.fromString(modelName)) != null) {
        errorText[0] = MPSBundle.message("create.new.model.dialog.error.model.exists", modelName);
        return false;
      }

      if (modelName.lastIndexOf(".") == modelName.length()) {
        errorText[0] = MPSBundle.message("create.new.model.dialog.error.empty.short.name");
        return false;
      }

      if (!(SourceVersion.isName(modelName))) {
        errorText[0] = MPSBundle.message("create.new.model.dialog.error.invalid.java", modelName);
        return false;
      }
      return true;
    }
  }

  private static class ModelRenamer {
    private EditableSModel myModelDescriptor;
    private String myNewName;
    private boolean myLazy;

    public ModelRenamer(EditableSModel modelDescriptor, String fqName, boolean lazy) {
      myModelDescriptor = modelDescriptor;
      myNewName = fqName;
      myLazy = lazy;
    }

    public void rename() {
      myModelDescriptor.rename(myNewName, true);
    }

    public void updateReferencesIfNeeded() {
      if (!myLazy) {
        ReferenceUpdater.getInstance().updateModelReferences();
        ReferenceUpdater.getInstance().updateModuleReferences();
      }
    }
  }
}
