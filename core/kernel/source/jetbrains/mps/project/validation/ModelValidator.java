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
package jetbrains.mps.project.validation;

import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.annotations.Nullable;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ModelValidator {
  private SModel myModel;

  public ModelValidator(SModel model) {
    myModel = model;
  }

  public List<String> validate(IScope scope) {
    ModelAccess.assertLegalRead();

    List<String> errors = new ArrayList<String>();
    if (myModel.isTransient()) {
      return errors;
    }
    if (myModel.isDisposed()) {
      return errors;
    }
    if (myModel instanceof StubModel) {
      errors.add(messageFromModelReadException(((StubModel) myModel).getCause()));
      return errors;
    }

    for (SModelReference reference : SModelOperations.getImportedModelUIDs(myModel)) {
      if (scope.getModelDescriptor(reference) == null) {
        errors.add("Can't find model: " + reference.getLongName());
      }
    }

    List<ModuleReference> langsToCheck = new ArrayList<ModuleReference>();
    langsToCheck.addAll(IterableUtil.asCollection(myModel.getModelDepsManager().getAllImportedLanguages()));
    langsToCheck.addAll(myModel.engagedOnGenerationLanguages());
    for (ModuleReference lang : langsToCheck) {
      if (scope.getLanguage(lang) == null) {
        errors.add("Can't find language: " + lang.getModuleFqName());
      }
    }

    for (ModuleReference devKit : myModel.importedDevkits()) {
      if (scope.getDevKit(devKit) == null) {
        errors.add("Can't find devkit: " + devKit.getModuleFqName());
      }
    }

    return errors;
  }

  private static String messageFromModelReadException(@Nullable ModelReadException e) {
    if (e == null) {
      return "Couldn't read model";
    }
    Throwable cause = e.getCause();
    if (cause instanceof IOException) {
      return "Couldn't read model because of I/O error.\n" + cause.getMessage();
    } else if (cause instanceof SAXParseException) {
      return "Couldn't read model because of invalid XML markup.\n" + cause.getMessage();
    } else if (cause instanceof SAXException) {
      return "Couldn't read model because of invalid SAX error.\n" + cause.getMessage();
    } else if (cause != null) {
      return "Couldn't read model.\n" + cause.getMessage();
    } else {
      return e.getMessage();
    }
  }
}
