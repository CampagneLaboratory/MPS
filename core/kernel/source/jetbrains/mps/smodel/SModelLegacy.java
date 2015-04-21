/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

import jetbrains.mps.smodel.SModel.ImportElement;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Auxiliary methods that used to constitute API of smodel.SModel and we no longer want to be there.
 * There's no need to keep old code along with the new one in smodel.SModel as it makes the class way too complicated and hard to maintain.
 * Hence, all the stuff deemed legacy moves here, and uses of that API simply get changed to wrap contemporary model with <code>SModelLegacy</code>
 * instance:
 * <pre>
 *   SModel m = ...;
 *   SModuleReference r = ...;
 *   m.addLanguage(r)  -->  new SModelLegacy(m).addLanguage(r);
 * </pre>
 * Note, use of SModelLegacy is just a quick migration step, it's advised to replace legacy calls with modern alternatives.
 *
 * @author Artem Tikhomirov
 */
public final class SModelLegacy {
  private final SModel myModel;

  public SModelLegacy(@NotNull SModel model) {
    myModel = model;
  }

  public void addLanguage(SModuleReference ref) {
    myModel.addLanguage(MetaAdapterFactory.getLanguage(ref));
  }

  public void addModelImport(org.jetbrains.mps.openapi.model.SModelReference ref, boolean firstVersion) {
    ImportElement importElement = SModelOperations.getImportElement(myModel, ref);
    if (importElement != null) {
      return;
    }
    int usedVersion = -1;
    importElement = new ImportElement(ref, -1, firstVersion ? -1 : usedVersion);

    myModel.addModelImport(importElement);
  }

  public List<SModuleReference> importedLanguages() {
    final Collection<SLanguage> usedLanguages = myModel.usedLanguages();
    ArrayList<SModuleReference> rv = new ArrayList<SModuleReference>(usedLanguages.size());
    for (SLanguage l : usedLanguages) {
      final SModule sourceModule = l.getSourceModule();
      if (sourceModule != null) {
        rv.add(sourceModule.getModuleReference());
      }
    }
    return rv;
  }

}
