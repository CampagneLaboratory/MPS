/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.project.structure.modules;

import jetbrains.mps.project.ModuleId;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.InternUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Immutable
public final class ModuleReference implements SModuleReference {
  private static final Pattern MODULE_REFERENCE = Pattern.compile("(.*?)\\((.*?)\\)");

  /**
   * use {@link org.jetbrains.mps.openapi.persistence.PersistenceFacade#createModuleReference(String)}
   */
  @Deprecated
  public static ModuleReference fromString(String text) {
    return ((ModuleReference) parseReference(text));
  }

  private final String myModuleName;
  private final SModuleId myModuleId;

  @Deprecated
  public ModuleReference(String moduleName) {
    this(moduleName, (SModuleId) null);
  }

  public ModuleReference(String moduleName, SModuleId moduleId) {
    myModuleName = InternUtil.intern(moduleName);
    myModuleId = moduleId;
  }

  @Deprecated
  public ModuleReference(String moduleName, String moduleId) {
    this(moduleName, ModuleId.fromString(moduleId));
  }

  @Override
  public SModuleId getModuleId() {
    return myModuleId;
  }

  @Override
  public String getModuleName() {
    return myModuleName;
  }

  @Override
  public SModule resolve(@NotNull SRepository repo) {
    return repo.getModule(getModuleId());
  }

  public int hashCode() {
    if (myModuleId != null) return myModuleId.hashCode();
    return myModuleName.hashCode();
  }

  public boolean equals(Object obj) {
    if (!(obj instanceof SModuleReference)) return false;
    SModuleReference p = (SModuleReference) obj;

    if (myModuleId == null && p.getModuleId() == null) return myModuleName.equals(p.getModuleName());
    return EqualUtil.equals(myModuleId, p.getModuleId());
  }

  public String toString() {
    if (myModuleId == null) return myModuleName;
    return myModuleId.toString() + "(" + myModuleName + ")";
  }

  // deprecated
  @Deprecated
  public String getModuleFqName() {
    return myModuleName;
  }

  public static SModuleReference parseReference(String text) {
    text = text.trim();
    Matcher m = MODULE_REFERENCE.matcher(text);
    if (m.matches()) {
      return new ModuleReference(m.group(2), ModuleId.fromString(m.group(1)));
    }
    return new ModuleReference(text);
  }
}

