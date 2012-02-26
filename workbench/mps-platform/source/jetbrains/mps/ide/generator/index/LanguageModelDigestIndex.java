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
package jetbrains.mps.ide.generator.index;

import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.indexing.FileBasedIndex.InputFilter;
import com.intellij.util.indexing.ID;
import jetbrains.mps.fileTypes.MPSFileTypeFactory;

import java.util.Map;

public class LanguageModelDigestIndex extends BaseModelDigestIndex {
  public static final ID<Integer, Map<String, String>> NAME = ID.create("LanguageModelDigest");

  public ID<Integer, Map<String, String>> getName() {
    return NAME;
  }

  public InputFilter getInputFilter() {
    return new InputFilter() {
      public boolean acceptInput(VirtualFile file) {
        return file.getFileType().equals(MPSFileTypeFactory.LANGUAGE_FILE_TYPE);
      }
    };
  }

  public int getVersion() {
    return 1;
  }
}
