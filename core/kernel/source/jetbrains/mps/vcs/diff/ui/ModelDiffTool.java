/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.vcs.diff.ui;

import com.intellij.openapi.diff.DiffTool;
import com.intellij.openapi.diff.DiffRequest;
import com.intellij.openapi.diff.DiffContent;
import com.intellij.openapi.diff.DiffManager;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.fileTypes.FileType;

import java.io.IOException;
import java.io.ByteArrayInputStream;

import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.fileTypes.MPSFileTypesManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.vcs.ApplicationLevelVcsManager;
import org.jdom.Document;
import org.jdom.JDOMException;
import org.jetbrains.annotations.NotNull;

public class ModelDiffTool implements DiffTool {
  private final static Logger LOG = Logger.getLogger(ModelDiffTool.class);

  public void show(final DiffRequest request) {
    DiffContent[] contents = request.getContents();

    try {
      final SModel oldModel = readModel(contents[0], getFilePath(request));
      final SModel newModel = readModel(contents[1], getFilePath(request));

      ModelDifferenceDialog d = ModelAccess.instance().runReadAction(new Computable<ModelDifferenceDialog>() {
        public ModelDifferenceDialog compute() {
          return new ModelDifferenceDialog(null, oldModel, newModel, request.getWindowTitle());
        }
      });
      d.showDialog();

    } catch (IOException e) {
      e.printStackTrace();
    } catch (ReadException e) {
      // if we cant read model from file
      // we try to use idea diff tool instead
      LOG.warning("Can't read models. Using text based merge...", e);
      DiffTool ideaDiffTool = DiffManager.getInstance().getIdeaDiffTool();
      if (ideaDiffTool.canShow(request)){
        ideaDiffTool.show(request);
      }
    }
  }

  public static String getFilePath(DiffRequest request) {
    for (DiffContent c : request.getContents()) {
      if (c.getFile() != null) {
        return c.getFile().getPath();
      }
    }
    return "";
  }

  public static String[] getModelNameAndStereotype(String modelPath) {
    int index = modelPath.lastIndexOf("/");
    String shortName = modelPath;
    if (index != -1) shortName = modelPath.substring(index + 1);
    index = shortName.lastIndexOf("\\");
    if (index != -1) shortName = shortName.substring(index + 1);

    index = shortName.indexOf('.');
    shortName = (index >= 0) ? shortName.substring(0, index) : shortName;
    int index1 = shortName.indexOf("@");
    String modelName = shortName;
    String modelStereotype = "";
    if (index1 >= 0) {
      modelName = shortName.substring(0, index1);
      modelStereotype = shortName.substring(index1 + 1);
    }

    return new String[]{modelName, modelStereotype};
  }

  public static SModel readModel(DiffContent content, String path) throws IOException, ReadException {
    return readModel(content.getBytes(), path);
  }

  public static SModel readModel(byte[] bytes, String path) throws IOException, ReadException {
    final String[] modelNameAndStereotype = getModelNameAndStereotype(path);
    try {
      final Document document = JDOMUtil.loadDocument(new ByteArrayInputStream(bytes));
      return ModelAccess.instance().runReadAction(new Computable<SModel>() {
        public SModel compute() {
          return ModelPersistence.readModel(document, modelNameAndStereotype[0], modelNameAndStereotype[1]);
        }
      });
    } catch (Throwable t) {
      throw new ReadException(t);
    }
  }

  public boolean canShow(DiffRequest request) {
    if (ApplicationLevelVcsManager.instance().getSettings().getTextModeEnabled()) return false;

    DiffContent[] contents = request.getContents();
    return (contents.length == 2) && isModelFile(contents[0]) && isModelFile(contents[1]);
  }

  private boolean isModelFile(@NotNull DiffContent contents) {
    FileType type = contents.getContentType();
    if (type == null) {
      return false;
    }
    return type.equals(MPSFileTypesManager.MODEL_FILE_TYPE);
  }

  public static class ReadException extends Throwable {
    public ReadException(Throwable t) {
      super(t);
    }
  }
}
