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
package jetbrains.mps.smodel;

import jetbrains.mps.baseLanguage.closures.structure.Closures_Language;
import jetbrains.mps.baseLanguage.collections.structure.Collections_Language;
import jetbrains.mps.baseLanguage.structure.BaseLanguage_Language;
import jetbrains.mps.lang.actions.structure.Actions_Language;
import jetbrains.mps.lang.constraints.structure.Constraints_Language;
import jetbrains.mps.lang.core.structure.Core_Language;
import jetbrains.mps.lang.dataFlow.structure.DataFlow_Language;
import jetbrains.mps.lang.editor.structure.Editor_Language;
import jetbrains.mps.lang.findUsages.structure.FindUsages_Language;
import jetbrains.mps.lang.generator.structure.Generator_Language;
import jetbrains.mps.lang.intentions.structure.Intentions_Language;
import jetbrains.mps.lang.pattern.structure.Pattern_Language;
import jetbrains.mps.lang.plugin.structure.Plugin_Language;
import jetbrains.mps.lang.quotation.structure.Quotation_Language;
import jetbrains.mps.lang.refactoring.structure.Refactoring_Language;
import jetbrains.mps.lang.script.structure.Script_Language;
import jetbrains.mps.lang.sharedConcepts.structure.SharedConcepts_Language;
import jetbrains.mps.lang.smodel.structure.Smodel_Language;
import jetbrains.mps.lang.structure.structure.Structure_Language;
import jetbrains.mps.lang.typesystem.structure.Typesystem_Language;

public class BootstrapLanguages {
  public static Language baseLanguage() {
    return BaseLanguage_Language.get();
  }

  public static Language coreLanguage() {
    return Core_Language.get();
  }

  public static Language structureLanguage() {
    return Structure_Language.get();
  }

  public static Language editorLanguage() {
    return Editor_Language.get();
  }

  public static Language constrintsLanguage() {
    return Constraints_Language.get();
  }

  public static Language smodelLanguage() {
    return Smodel_Language.get();
  }

  public static Language actionsLanguage() {
    return Actions_Language.get();
  }

  public static Language typesystemLanguage() {
    return Typesystem_Language.get();
  }

  public static Language refactoringLanguage() {
    return Refactoring_Language.get();
  }

  public static Language shredConceptsLanguage() {
    return SharedConcepts_Language.get();
  }

  public static Language collectionsLanguage() {
    return Collections_Language.get();
  }

  public static Language closuresLanguage() {
    return Closures_Language.get();
  }

  public static Language generatorLanguage() {
    return Generator_Language.get();
  }

  public static Language intentionsLanguage() {
    return Intentions_Language.get();
  }

  public static Language findUsagesLanguage() {
    return FindUsages_Language.get();
  }

  public static Language pluginLanguage() {
    return Plugin_Language.get();
  }

  public static Language quotationLanguage() {
    return Quotation_Language.get();
  }

  public static Language patternsLanguage() {
    return Pattern_Language.get();
  }

  public static Language dataFlowLanguage() {
    return DataFlow_Language.get();
  }

  public static Language scriptLanguage() {
    return Script_Language.get();
  }
}
