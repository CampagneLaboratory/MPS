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

package jetbrains.mps.jps.model;

import jetbrains.mps.idea.core.project.JpsModelRootContributor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.jps.model.module.JpsModule;
import org.jetbrains.jps.service.JpsServiceManager;

/**
 * evgeny, 11/28/12
 */
public abstract class JpsMPSExtensionService {
  public static JpsMPSExtensionService getInstance() {
    return JpsServiceManager.getInstance().getService(JpsMPSExtensionService.class);
  }

  @Nullable
  public abstract JpsMPSModuleExtension getExtension(@Nullable JpsModule module);

  public abstract void setExtension(@NotNull JpsModule module, @NotNull JpsMPSModuleExtension extension);

}
