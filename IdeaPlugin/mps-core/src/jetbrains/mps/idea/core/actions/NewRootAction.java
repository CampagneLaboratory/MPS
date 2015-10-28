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

package jetbrains.mps.idea.core.actions;

import com.intellij.ide.projectView.ProjectView;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.LangDataKeys;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.fileEditor.FileEditorManager;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.ModuleRootManager;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.psi.PsiDirectory;
import com.intellij.psi.PsiElement;
import jetbrains.mps.ide.editor.actions.ImportHelper;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.idea.core.MPSBundle;
import jetbrains.mps.idea.core.project.module.MPSModuleFacade;
import jetbrains.mps.idea.core.psi.impl.MPSPsiModel;
import jetbrains.mps.idea.core.ui.CreateFromTemplateDialog;
import jetbrains.mps.kernel.model.MissingDependenciesFixer;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.project.ModelsAutoImportsManager;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.smodel.SModelFileTracker;
import jetbrains.mps.smodel.SModelOperations;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.smodel.presentation.NodePresentationUtil;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.workbench.nodesFs.MPSNodesVirtualFileSystem;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class NewRootAction extends AnAction {
  private EditableSModel myModelDescriptor;
  private Project myProject;
  private IOperationContext myOperationContext;
  private Map<String, SNodeReference> myConceptFqNameToNodePointerMap = new LinkedHashMap<String, SNodeReference>();
  private boolean myNewModel = false;

  private static Logger LOG = LogManager.getLogger(NewRootAction.class);

  public NewRootAction() {
    super(MPSBundle.message("new.root.action"), null, IdeIcons.DEFAULT_ROOT_ICON);
  }

  @Override
  public void actionPerformed(AnActionEvent e) {
    if (myModelDescriptor == null && myNewModel) {
      if (createPerRootModel(e)) return;
    }

    if (myModelDescriptor == null)
      return;

    if (myConceptFqNameToNodePointerMap.isEmpty()) {
      final SModel[] model = new SModel[1];
      myModelDescriptor.getRepository().getModelAccess().runReadAction(new Runnable() {
        @Override
        public void run() {
          model[0] = myModelDescriptor.getModule().getModel(myModelDescriptor.getModelId());
        }
      });
      ImportHelper.addLanguageImport(myProject, myModelDescriptor.getModule(),
        model[0], null, new Runnable() {
          @Override
          public void run() {
            final ProjectView projectView = ProjectView.getInstance(myProject);
            projectView.refresh();
          }
        });
      return;
    }

    final MyCreateFromTemplateDialog dialog = new MyCreateFromTemplateDialog(myProject);
    dialog.setTitle(MPSBundle.message("create.new.root.dialog.title"));
    myOperationContext.getProject().getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        for (Map.Entry<String, SNodeReference> entry : myConceptFqNameToNodePointerMap.entrySet()) {
          String conceptFqName = entry.getKey();
          SNode concept = entry.getValue().resolve(MPSModuleRepository.getInstance());
          dialog.getKindCombo().addItem(NodePresentationUtil.matchingText(concept), IconManager.getIconForConceptFQName(conceptFqName), conceptFqName);
          dialog.setTemplateKindComponentsVisible(true);
        }
      }
    });
    dialog.show();

    final SNodeReference rootNode = dialog.getRootNode();
    if (rootNode != null) {
      FileEditorManager.getInstance(myProject).openFile(
        MPSNodesVirtualFileSystem.getInstance().getFileFor(rootNode), true);
    }
  }

  private boolean createPerRootModel(AnActionEvent e) {
    final PsiElement psiElement = e.getData(LangDataKeys.PSI_ELEMENT);
    if (psiElement == null || !(psiElement instanceof PsiDirectory)) {
      //Can be used only on directories
      return true;
    }
    final VirtualFile targetDir = ((PsiDirectory) psiElement).getVirtualFile();

    myModelDescriptor = new ModelAccessHelper(ProjectHelper.getModelAccess(myProject)).executeCommand(new Computable<EditableSModel>() {
      @Override
      public EditableSModel compute() {
        ModelRoot useModelRoot = null;
        String useSourceRoot = null;
        for (ModelRoot root : myOperationContext.getModule().getModelRoots()) {
          if (!(root instanceof DefaultModelRoot)) continue;
          DefaultModelRoot modelRoot = (DefaultModelRoot) root;
          for (String sourceRoot : modelRoot.getFiles(DefaultModelRoot.SOURCE_ROOTS)) {
            if (FileUtil.isSubPath(sourceRoot, targetDir.getPath())) {
              useModelRoot = root;
              useSourceRoot = targetDir.getPath();
              break;
            }
          }
        }
        if (useModelRoot == null) return null;

        // fixme getPresentation() for model name sucks
        // for java package it will be package name
        final String modelName = ((PsiDirectory) psiElement).getPresentation().getLocationString();
        EditableSModel model = null;
        try {
          model = (EditableSModel) ((DefaultModelRoot) useModelRoot).createModel(modelName, useSourceRoot, null,
            PersistenceRegistry.getInstance().getFolderModelFactory("file-per-root"));
        } catch (IOException ioException) {
          LOG.error("Can't create per-root model " + modelName + " under " + useSourceRoot, ioException);
        }

        model.setChanged(true);
        model.load();
        model.save();

        //TODO: This methods are from SModuleOperations.createModelWithAdjustments. Need to check them really needed.
        ModelsAutoImportsManager.doAutoImport(useModelRoot.getModule(), model);
        new MissingDependenciesFixer(model).fixModuleDependencies();

        return model;
      }
    });
    return false;
  }

  @Override
  public void update(AnActionEvent e) {
    updateFields(e);

    final boolean isEnabled = isEnabled(e);
    e.getPresentation().setVisible(isEnabled);
    if (!isEnabled) return;

    if (myConceptFqNameToNodePointerMap.isEmpty()) {
      e.getPresentation().setText("Add Language Import");
      e.getPresentation().setIcon(IdeIcons.LANGUAGE_ICON);
    } else {
      e.getPresentation().setText(MPSBundle.message("new.root.action"));
      e.getPresentation().setIcon(IdeIcons.DEFAULT_ROOT_ICON);
    }
  }

  private void updateFields(AnActionEvent e) {
    // cleaning all local fields
    myOperationContext = null;
    myModelDescriptor = null;
    myConceptFqNameToNodePointerMap.clear();
    myProject = e.getData(PlatformDataKeys.PROJECT);

    if (myProject == null) {
      return;
    }
    final jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(myProject);
    if (mpsProject == null) {
      return;
    }

    final Module module = e.getData(LangDataKeys.MODULE);
    final VirtualFile[] vFiles = e.getData(PlatformDataKeys.VIRTUAL_FILE_ARRAY);
    if (module == null ||
      vFiles == null ||
      vFiles.length != 1) {
      return;
    }

    final MPSModuleFacade mpsFacade = module.getProject().getComponent(MPSModuleFacade.class);
    if (!mpsFacade.isMPSEnabled(module)) {
      return;
    }

    String url = vFiles[0].getUrl();
    if (!LocalFileSystem.PROTOCOL.equals(VirtualFileManager.extractProtocol(url))) {
      return;
    }
    final String path = VirtualFileManager.extractPath(url);
    mpsProject.getModelAccess().runReadAction(new Runnable() {
      @Override
      public void run() {
        for (ModelRoot root : mpsFacade.getSolution(module).getModelRoots()) {
          if (!(root instanceof DefaultModelRoot)) continue;
          DefaultModelRoot modelRoot = (DefaultModelRoot) root;
          for (String sourceRoot : modelRoot.getFiles(DefaultModelRoot.SOURCE_ROOTS)) {
            if (path.startsWith(sourceRoot)) {
              Solution solution = mpsFacade.getSolution(module);
              myOperationContext = new ModuleContext(solution, mpsProject);
              myModelDescriptor = (EditableSModel) SModelFileTracker.getInstance().findModel(FileSystem.getInstance().getFileByPath(vFiles[0].getPath()));
              if (myModelDescriptor != null) {

                SModel model = myModelDescriptor;
                List<Language> modelLanguages = SModelOperations.getLanguages(model);
                for (Language language : modelLanguages) {
                  for (SNode concept : language.getConceptDeclarations()) {
                    String conceptFqName = NameUtil.nodeFQName(concept);
                    if (ModelConstraints.canBeRoot(conceptFqName, model, null)) {
                      myConceptFqNameToNodePointerMap.put(conceptFqName, new jetbrains.mps.smodel.SNodePointer(concept));
                    }
                  }
                }
              } else {
                myNewModel = true;
              }
            }
            return;
          }
        }
      }
    });
  }

  public boolean isEnabled(AnActionEvent e) {
    PsiElement psiElement = e.getData(LangDataKeys.PSI_ELEMENT);
    if (psiElement == null || !(psiElement instanceof PsiDirectory)) {
      //Can be used only on package
      return false;
    }
    VirtualFile targetDir = ((PsiDirectory) psiElement).getVirtualFile();

    if (!(psiElement instanceof MPSPsiModel)) {
      Module module = e.getData(LangDataKeys.MODULE);
      if (module == null) {
        return false;
      }
      if (myNewModel) {
        VirtualFile[] sourceRoots = ModuleRootManager.getInstance(module).getSourceRoots(true);
        for (VirtualFile root : sourceRoots) {
          if (targetDir.getPath().equals(root.getPath())) {
            //Can't be source or test folder
            return false;
          }
        }
      }
    }

    return myOperationContext != null && (myModelDescriptor != null || myNewModel) && myProject != null;
  }

  private class MyCreateFromTemplateDialog extends CreateFromTemplateDialog {
    protected MyCreateFromTemplateDialog(@NotNull Project project) {
      super(project);
    }

    public SNodeReference getRootNode() {
      return myRootNode;
    }

    private SNodeReference myRootNode = null;

    @Override
    protected void doOKAction() {
      final SNodeReference conceptPointer = myConceptFqNameToNodePointerMap.get(getKindCombo().getSelectedName());
      myOperationContext.getProject().getModelAccess().executeCommand(new Runnable() {
        @Override
        public void run() {
          SNode concept = conceptPointer.resolve(MPSModuleRepository.getInstance());
          SModel model = myModelDescriptor;
          final SNode newNode = NodeFactoryManager.createNode(concept, null, null, model);
          SNodeAccessUtil.setProperty(newNode, SNodeUtil.property_INamedConcept_name, getNameField().getText());
          model.addRootNode(newNode);
          myModelDescriptor.save();

          myRootNode = newNode.getReference();
        }
      });
      super.doOKAction();
    }
  }
}
