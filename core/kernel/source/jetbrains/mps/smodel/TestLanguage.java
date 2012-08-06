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
package jetbrains.mps.smodel;

import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.vfs.IFile;

public class TestLanguage extends Language {
  private TestLanguage(LanguageDescriptor descriptor, IFile file) {
    super(descriptor, file);
  }

  //this is for tests only. Can be later converted into subclass
  public static Language newInstance(LanguageDescriptor descriptor, MPSModuleOwner moduleOwner) {
    Language language = new TestLanguage(descriptor,null);

    Language registered = MPSModuleRepository.getInstance().registerModule(language, moduleOwner);
    if (registered==language){
      language.setLanguageDescriptor(descriptor, false);
    }

    return registered;
  }

  public String getGeneratorOutputPath() {
    return null;
  }

  public String getTestsGeneratorOutputPath() {
    return null;
  }
}
