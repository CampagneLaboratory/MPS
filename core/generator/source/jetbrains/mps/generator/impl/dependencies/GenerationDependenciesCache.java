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
package jetbrains.mps.generator.impl.dependencies;

import jetbrains.mps.cleanup.CleanupListener;
import jetbrains.mps.cleanup.CleanupManager;
import jetbrains.mps.generator.GenerationStatus;
import jetbrains.mps.generator.ModelGenerationStatusManager;
import jetbrains.mps.generator.cache.XmlBasedModelCache;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.vfs.IFile;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import java.util.Arrays;

/**
 * Evgeny Gryaznov, May 14, 2010
 */
public class GenerationDependenciesCache extends XmlBasedModelCache<GenerationDependencies> {

  private static GenerationDependenciesCache INSTANCE;

  public static GenerationDependenciesCache getInstance() {
    return INSTANCE;
  }

  public GenerationDependenciesCache(SModelRepository modelRepository) {
    super(modelRepository);
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
    super.init();
    CleanupManager.getInstance().addCleanupListener(new CleanupListener() {
      public void performCleanup() {
        cleanup();
      }
    });
  }

  @Override
  public void dispose() {
    super.dispose();
    INSTANCE = null;
  }

  @NotNull
  public String getCacheFileName() {
    return "generated";
  }

  protected Element toXml(GenerationDependencies dependencies) {
    return dependencies.toXml();
  }

  protected GenerationDependencies fromXml(Element e) {
    return GenerationDependencies.fromXml(e);
  }

  protected GenerationDependencies generateCache(GenerationStatus status) {
    return status.getDependencies();
  }

  @Override
  public SModelDescriptor invalidateCacheForFile(IFile file) {
    SModelDescriptor md = super.invalidateCacheForFile(file);
    if (md != null && md.getModule() != null) {
      ModelGenerationStatusManager.getInstance().invalidateData(Arrays.asList(md));
    }
    return md;
  }
}
