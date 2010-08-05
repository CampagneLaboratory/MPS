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
package jetbrains.mps.vcs.diff;

import jetbrains.mps.vcs.diff.ui.ModelDiffTool.ReadException;
import jetbrains.mps.vcs.ModelUtils;
import jetbrains.mps.vcs.ModelUtils.Version;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.vfs.FileSystem;

import java.io.File;
import java.io.IOException;

public class MergeTestUtil {

  public static SModel[] loadTestModels(File zipfile) throws IOException, ReadException {
    return ModelUtils.loadZippedModels(zipfile, TestVersion.values());
  }

  public static void saveTestModel(final SModel model, final File file) {
    ModelPersistence.saveModel(model, FileSystem.getFile(file), true, false);
  }

  public static enum TestVersion implements Version {
    MINE("mine"),
    BASE("base"),
    REPO("repository"),
    EXPECTED("exp");

    private final String mySuffix;

    TestVersion(String suffix) {
      mySuffix = suffix;
    }

    public String getSuffix() {
      return mySuffix;
    }
  }
}
