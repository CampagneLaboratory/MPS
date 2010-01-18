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
package jetbrains.mps.project.listener;

import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.library.LanguageDesign_DevKit;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.util.CollectionUtil;

import java.util.List;

public class LanguageModelCreationListener extends ModelCreationListener {
  private List<String> getModelsToImport(Language language) {
    return CollectionUtil.list(
      language.getStructureModelDescriptor().getSModelReference().toString()
    );
  }

  public boolean isApplicable(SModelDescriptor m) {
    return m.getModule() instanceof Language;
  }

  public void onCreate(SModelDescriptor model) {
    Language language = (Language) model.getModule();
    model.getSModel().addLanguage(language);

    model.getSModel().addDevKit(LanguageDesign_DevKit.get());

    for (String modelUID : getModelsToImport(language)) {
      model.getSModel().addImportedModel(SModelReference.fromString(modelUID));
    }

    model.getSModel().addImportedModel(language.getStructureModelDescriptor().getSModelReference());
  }
}
