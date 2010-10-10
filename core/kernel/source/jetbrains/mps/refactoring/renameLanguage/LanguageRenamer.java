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
import jetbrains.mps.ide.refactoring.RefactoringFacade;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.refactoring.framework.AbstractLoggableRefactoring;
import jetbrains.mps.refactoring.framework.OldRefactoringAdapter;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;

public class LanguageRenamer {
  private Project myProject;
  private Language myLanguage;
  private String myNewName;
  private RefactoringContext myContext = new RefactoringContext(OldRefactoringAdapter.createAdapterFor(new MyRefactoring()));

  public LanguageRenamer(Project project, Language language, String newName) {
    myProject = project;
    myLanguage = language;
    myNewName = newName;
  }

  public void rename(boolean deleteOldFiles) {
    checkPreconditions();

    String oldFqName = myLanguage.getModuleFqName();
    IFile oldOutputDir = FileSystem.getInstance().getFileByPath(myLanguage.getGeneratorOutputPath());
    IFile oldCachesDir = FileGenerationUtil.getCachesDir(oldOutputDir);
    IFile oldClassesGen = myLanguage.getClassesGen();

    renameLanguage(oldFqName);
    renameGenerators(oldFqName);

    if (deleteOldFiles) {
      oldOutputDir.delete();
      oldCachesDir.delete();
      oldClassesGen.delete();
    }
  }

  private void renameLanguage(String oldFqName) {
    for (SModelRoot root : myLanguage.getSModelRoots()) {
      root.setPrefix(myNewName);
    }

    EditableSModelDescriptor structure = myLanguage.getStructureModelDescriptor();
    for (SNode concept : structure.getSModel().roots()) {
      if (!(concept.isInstanceOfConcept(AbstractConceptDeclaration.concept))) continue;
      myContext.changeFeatureName(concept, myNewName + ".structure." + concept.getName(), concept.getName());
    }

    for (SModelDescriptor sm : myLanguage.getOwnModelDescriptors()) {
      if (!SModelStereotype.isUserModel(sm)) continue;

      if (sm.getSModelReference().getSModelFqName().toString().startsWith(oldFqName + ".")) {
        String suffix = sm.getSModelReference().getSModelFqName().toString().substring(oldFqName.length());
        sm.rename(SModelFqName.fromString(myNewName + suffix), false);
      }
    }

    LanguageDescriptor descriptor = myLanguage.getModuleDescriptor();
    descriptor.setNamespace(myNewName);
    myLanguage.setLanguageDescriptor(descriptor, false);
    myLanguage.save();

    RefactoringFacade.writeIntoLog(structure, myContext);
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
    RefactoringFacade.updateLoadedModels(structure.getSModelReference(), structure, myContext);
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

  public static class MyRefactoring extends AbstractLoggableRefactoring {
    public boolean doesUpdateModel() {
      return true;
    }

    public void updateModel(SModel model, RefactoringContext refactoringContext) {
      refactoringContext.updateByDefault(model);
    }
  }
}
