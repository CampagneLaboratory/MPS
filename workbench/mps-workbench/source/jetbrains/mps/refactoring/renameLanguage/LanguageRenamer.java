/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.project.Project;
import jetbrains.mps.project.ReferenceUpdater;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;

public class LanguageRenamer {
  private Language myLanguage;
  private String myNewName;
  private RefactoringContext myContext;
  private Project myProject;

  public LanguageRenamer(Project project, final Language language, String newName) {
    myLanguage = language;
    myNewName = newName;

    //todo
    myContext = new RefactoringContext(project, null);
    myProject = project;
  }

  public void rename(boolean deleteOldFiles) {
    String oldFqName = myLanguage.getModuleName();
    IFile oldOutputDir = myLanguage.getOutputPath();
    IFile oldCachesDir = FileGenerationUtil.getCachesDir(oldOutputDir);
    IFile oldClassesGen = myLanguage.getFacet(JavaModuleFacet.class).getClassesGen();

    renameLanguage(oldFqName);
    renameGenerators(oldFqName);

    SModelRepository.getInstance().saveAll();

    if (deleteOldFiles) {
      oldOutputDir.delete();
      oldCachesDir.delete();
      oldClassesGen.delete();
    }
  }

  private void renameLanguage(String oldFqName) {
    for (SModel sm : myLanguage.getModels()) {
      if (!SModelStereotype.isUserModel(sm)) continue;
      if (!(sm instanceof EditableSModel)) continue;

      if (sm.getReference().getModelName().startsWith(oldFqName + ".")) {
        String suffix = sm.getReference().getModelName().substring(oldFqName.length());
      }
    }

    LanguageDescriptor descriptor = myLanguage.getModuleDescriptor();
    descriptor.setNamespace(myNewName);
    myLanguage.setLanguageDescriptor(descriptor);
    myLanguage.save();
  }

  private void renameGenerators(String oldFqName) {
    for (Generator g : myLanguage.getGenerators()) {
      GeneratorDescriptor genDesc = g.getModuleDescriptor();
      String uid = genDesc.getGeneratorUID();
      int sharpIndex = uid.indexOf('#');
      genDesc.setGeneratorUID(myNewName + "#" + uid.substring(sharpIndex + 1));

      String newPrefix = myNewName + oldFqName.substring(oldFqName.length());

      for (SModel sm : g.getModels()) {
        if (!SModelStereotype.isUserModel(sm)) continue;
        if (!(sm instanceof EditableSModel)) continue;

        if (sm.getReference().getModelName().startsWith(oldFqName + ".")) {
          String suffix = sm.getReference().getModelName().substring(oldFqName.length());
        }
      }
    }

    myLanguage.save();
  }

  public void update() {
    updateReferences(myProject);
    SModelRepository.getInstance().saveAll();
  }

  private void updateReferences(Project project) {
    ReferenceUpdater.updateModelAndModuleReferences(project);
  }
}
