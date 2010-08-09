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
package jetbrains.mps.refactoring.renameLanguage;

import com.intellij.openapi.project.Project;
import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.ide.genconf.GeneratorConfigUtil;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.refactoring.framework.AbstractLoggableRefactoring;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.refactoring.framework.OldRefactoringAdapter;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vcs.MPSVCSManager;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class LanguageRenamer {
  private Project myProject;
  private Language myLanguage;
  private String myNewName;
  private RefactoringProcessor myProcessor;
  private RefactoringContext myContext = new RefactoringContext(OldRefactoringAdapter.createAdapterFor(new MyRefactoring()));

  public LanguageRenamer(Project project, Language language, String newName) {
    myProject = project;
    myLanguage = language;
    myNewName = newName;
    myProcessor = new RefactoringProcessor();
  }

  public void rename(boolean deleteOldFiles) {
    checkPreconditions();

    String oldFqName = myLanguage.getModuleFqName();
    List<File> oldFiles = null;
    if (deleteOldFiles) {
      oldFiles = getModelOutputRoots();
    }

    renameLanguage(oldFqName);
    renameGenerators(oldFqName);

    if (deleteOldFiles) {
      deleteOldFiles(oldFiles);
    }
  }

  private void deleteOldFiles(List<File> oldModelRoots) {
    List<File> newModelRoots = getModelOutputRoots();
    MPSVCSManager.getInstance(myProject).deleteFromDiskAndRemoveFromVcs(getFilesToDelete(oldModelRoots, newModelRoots), true);
  }

  private void renameLanguage(String oldFqName) {
    for (SModelRoot root : myLanguage.getSModelRoots()) {
      root.setPrefix(myNewName);
    }

    EditableSModelDescriptor structure = myLanguage.getStructureModelDescriptor();
    for (AbstractConceptDeclaration concept : structure.getSModel().allAdapters(AbstractConceptDeclaration.class)) {
      myContext.changeFeatureName(concept.getNode(), myNewName + ".structure." + concept.getName(), concept.getName());
    }
    myContext.computeCaches();

    for (SModelDescriptor sm : myLanguage.getOwnModelDescriptors()) {
      if (!SModelStereotype.isUserModel(sm)) continue;

      if (sm.getSModelFqName().toString().startsWith(oldFqName + ".")) {
        String suffix = sm.getSModelFqName().toString().substring(oldFqName.length());
        sm.rename(SModelFqName.fromString(myNewName + suffix), false);
      }
    }

    LanguageDescriptor descriptor = myLanguage.getModuleDescriptor();
    descriptor.setNamespace(myNewName);
    myLanguage.setLanguageDescriptor(descriptor, false);
    myLanguage.save();

    myProcessor.writeIntoLog(structure, myContext);
    SModelRepository.getInstance().saveAll();
  }

  private void renameGenerators(String oldFqName) {
    for (Generator g : myLanguage.getGenerators()) {
      GeneratorDescriptor genDesc = g.getModuleDescriptor();
      String uid = genDesc.getGeneratorUID();
      int sharpIndex = uid.indexOf('#');
      genDesc.setGeneratorUID(myNewName + "#" + uid.substring(sharpIndex + 1));

      for (SModelRoot root : g.getSModelRoots()) {
        String oldPrefix = root.getPrefix();
        if (oldPrefix != null && oldPrefix.startsWith(oldFqName)) {
          String newPrefix = myNewName + oldPrefix.substring(oldFqName.length());
          root.changePrefix(newPrefix);
        }
      }
    }

    myLanguage.save();
  }

  public void update() {
    updateReferences();
    EditableSModelDescriptor structure = myLanguage.getStructureModelDescriptor();
    myProcessor.updateLoadedModels(structure.getSModelReference(), structure, myContext);
  }

  private void updateReferences() {
    SModelRepository.getInstance().updateReferences();
    MPSModuleRepository.getInstance().updateReferences();
  }

  private void checkPreconditions() {
    for (SModelRoot root : myLanguage.getSModelRoots()) {
      if (!root.getPrefix().equals(myLanguage.getModuleFqName())) {
        throw new IllegalArgumentException();
      }
    }
  }

  private List<File> getFilesToDelete(List<File> oldModelRoots, List<File> newModelRoots) {
    if (oldModelRoots.size() == 0) return Collections.emptyList();
    if (newModelRoots.size() == 0) return Arrays.asList(myLanguage.getSourceDir().listFiles());

    File oldFile = FileUtil.getMaxContainingFile(oldModelRoots);
    assert FileUtil.isParentUp(myLanguage.getSourceDir(), oldFile);
    File newFile = FileUtil.getMaxContainingFile(newModelRoots);
    assert FileUtil.isParentUp(myLanguage.getSourceDir(), newFile);

    if (FileUtil.isParentUp(oldFile, newFile)) {
      List<File> filesToRemove = new ArrayList<File>();
      for (File f : oldModelRoots) {
        File containingFile = FileUtil.getMaxContainingFile(newFile, f);
        filesToRemove.add(getContainingChildren(containingFile, f));
      }
      return filesToRemove;
    }

    File containingFile = FileUtil.getMaxContainingFile(oldFile, newFile);
    assert containingFile != null;
    assert FileUtil.isParentUp(myLanguage.getSourceDir(), containingFile);
    return Collections.singletonList(getContainingChildren(containingFile, oldFile));
  }

  private File getContainingChildren(File parent, File children) {
    for (File child : parent.listFiles()) {
      if (FileUtil.isParentUp(child, children)) {
        return child;
      }
    }
    return children;
  }

  private List<File> getModelOutputRoots() {
    List<File> result = new ArrayList<File>();
    File sourceDir = myLanguage.getSourceDir();

    List<EditableSModelDescriptor> inputModels = GeneratorConfigUtil.getLanguageModels(myLanguage);

    for (SModelDescriptor d : inputModels) {
      result.add(FileGenerationUtil.getDefaultOutputDir(d, sourceDir));
    }

    return result;
  }

  public static class MyRefactoring extends AbstractLoggableRefactoring {
    public boolean doesUpdateModel() {
      return true;
    }

    public void updateModel(SModel model, RefactoringContext refactoringContext) {
      refactoringContext.updateModelWithMaps(model);
    }
  }
}
