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
package jetbrains.mps.project.dependency;

import jetbrains.mps.project.ModuleUtil;
import jetbrains.mps.smodel.Language;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

public class LanguageDependenciesManager extends ModuleDependenciesManager<Language> {
  public LanguageDependenciesManager(Language language) {
    super(language);
  }

  public Collection<Language> getAllExtendedLanguages() {
    Set<Language> result = new LinkedHashSet<Language>();
    collectAllExtendedLanguages(result);
    return result;
  }

  private void collectAllExtendedLanguages(Set<Language> result) {
    if (result.contains(myModule)) return;

    result.add(myModule);

    for (Language l : ModuleUtil.refsToLanguages(myModule.getExtendedLanguageRefs())) {
      l.getDependenciesManager().collectAllExtendedLanguages(result);
    }
  }
}
