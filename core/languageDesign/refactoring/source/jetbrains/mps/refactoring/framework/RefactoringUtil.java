/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.refactoring.framework;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.structure.project.testconfigurations.ModuleTestConfiguration;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModel;

import java.util.*;

public class RefactoringUtil {
  private static final Logger LOG = Logger.getLogger(RefactoringUtil.class);

  public static List<IRefactoring> getAllRefactorings() {
    List<IRefactoring> allRefactorings = new ArrayList<IRefactoring>();
    List<Language> languages = GlobalScope.getInstance().getVisibleLanguages();

    for (Language language : languages) {
      allRefactorings.addAll(language.getRefactorings());
    }

    return allRefactorings;
  }

  public static boolean isApplicableInContext(IRefactoring refactoring, Collection entities) {
    assert !entities.isEmpty();
    assert (entities.size() == 1 || refactoring.getRefactoringTarget().allowMultipleTargets());

    IRefactoringTarget target = refactoring.getRefactoringTarget();
    if (!isApplicableToEntities(refactoring.getUserFriendlyName(), target, entities)) return false;

    for (IRefactoring r : getAllRefactorings()) {
      if (r.getRefactoringTarget().getTarget() != target.getTarget()) continue;
      if (!isApplicableToEntities(r.getUserFriendlyName(), r.getRefactoringTarget(), entities)) continue;

      //todo {begin} for compatibility. Can be removed when all refactorings are rewritten
      Class refClass = refactoring instanceof OldRefactoringAdapter ? ((OldRefactoringAdapter) refactoring).getRefactoringClass() : refactoring.getClass();
      if (r.getOverridenRefactoringClass() == refClass) return false;
      //todo {end}
    }

    return true;
  }

  private static boolean isApplicableToEntities(String refactoringName, IRefactoringTarget target, Collection entities) {
    for (Object entity : entities) {
      boolean applicable;
      try {
        applicable = target.isApplicable(entity);
      } catch (Throwable t) {
        LOG.error("An error occured while executing "+refactoringName+".isApplicable(). This refactoring will not be available.",t);
        applicable = false;
      }
      if (!applicable) {
        return false;
      }
    }
    return true;
  }

  public static Map<IModule, List<SModel>> getLanguageAndItsExtendingLanguageModels(MPSProject project, Language language) {
    Set<Language> extendingLangs =  MPSModuleRepository.getInstance().getAllExtendingLanguages(language);
    Map<IModule, List<SModel>> result = new LinkedHashMap<IModule, List<SModel>>(extendingLangs.size() + 1);
    result.put(language, getLanguageModelsList(project, language));
    for (Language l : extendingLangs) {
      if(!l.equals(language)) {
        result.put(l, getLanguageModelsList(project, l));
      }
    }
    return result;
  }

  private static List<SModel> getLanguageModelsList(MPSProject project, Language l) {
    ModuleTestConfiguration languageConfig = new ModuleTestConfiguration();
    languageConfig.setModuleRef(l.getModuleReference());
    return languageConfig.getGenParams(project, true).getSModels();
  }

  public static Map<IModule, List<SModel>> getLanguageModels(MPSProject project, Language language) {
    return Collections.<IModule, List<SModel>>singletonMap(language, getLanguageModelsList(project, language));
  }
}
