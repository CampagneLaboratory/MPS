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

import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.openapi.project.IndexNotReadyException;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.search.EverythingGlobalScope;
import com.intellij.util.indexing.FileBasedIndex;
import com.intellij.util.indexing.FileBasedIndex.ValueProcessor;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import jetbrains.mps.persistence.ModelDigestHelper;
import jetbrains.mps.persistence.ModelDigestHelper.DigestProvider;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;

import java.util.Map;

public class IndexBasedModelDigest implements ApplicationComponent {
  @Override
  @NotNull
  public String getComponentName() {
    return "Index based model digest component";
  }

  @Override
  public void initComponent() {
    // default model persistence (.mps files)
    ModelDigestHelper.getInstance().addDigestProvider(new DigestProvider() {
      @Override
      public Map<String, String> getGenerationHashes(@NotNull IFile iFile) {
        if (iFile == null) return null;
        try {
          VirtualFile file = VirtualFileUtils.getVirtualFile(iFile);
          if (file == null) return null;

          final Map<String, String>[] valueArray = new Map[]{null};
          FileBasedIndex.getInstance().processValues(ModelDigestIndex.NAME, FileBasedIndex.getFileId(file), file,
              new ValueProcessor<Map<String, String>>() {
                @Override
                public boolean process(VirtualFile file, Map<String, String> values) {
                  valueArray[0] = values;
                  return true;
                }
              }, new EverythingGlobalScope());
          return valueArray[0];
        } catch (IndexNotReadyException ignored) {
        } catch (ProcessCanceledException ignored) {
        }
        return null;
      }
    });
    // binary model persistence (.mpb files)
    ModelDigestHelper.getInstance().addDigestProvider(new DigestProvider() {
      @Override
      public Map<String, String> getGenerationHashes(@NotNull IFile iFile) {
        if (iFile == null) return null;
        try {
          VirtualFile file = VirtualFileUtils.getVirtualFile(iFile);
          if (file == null) return null;

          final Map<String, String>[] valueArray = new Map[]{null};
          FileBasedIndex.getInstance().processValues(BinaryModelDigestIndex.NAME, FileBasedIndex.getFileId(file), file,
              new ValueProcessor<Map<String, String>>() {
                @Override
                public boolean process(VirtualFile file, Map<String, String> values) {
                  valueArray[0] = values;
                  return true;
                }
              }, new EverythingGlobalScope());
          return valueArray[0];
        } catch (IndexNotReadyException ignored) {
        } catch (ProcessCanceledException ignored) {
        }
        return null;
      }
    });
    // language module files (.mpl files)
    ModelDigestHelper.getInstance().addDigestProvider(new DigestProvider() {
      @Override
      public Map<String, String> getGenerationHashes(@NotNull IFile iFile) {
        try {
          VirtualFile file = VirtualFileUtils.getVirtualFile(iFile);
          if (file == null) return null;

          final Map<String, String>[] valueArray = new Map[]{null};
          FileBasedIndex.getInstance().processValues(LanguageModelDigestIndex.NAME, FileBasedIndex.getFileId(file), file,
              new ValueProcessor<Map<String, String>>() {
                @Override
                public boolean process(VirtualFile file, Map<String, String> values) {
                  valueArray[0] = values;
                  return true;
                }
              }, new EverythingGlobalScope());
          return valueArray[0];
        } catch (IndexNotReadyException e) {
        } catch (ProcessCanceledException e) {
        }
        return null;
      }
    });
  }

  @Override
  public void disposeComponent() {

  }
}
