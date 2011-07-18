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
package jetbrains.mps.project.structure.modules;

import org.jetbrains.annotations.NotNull;

public class Dependency {
  public static final String MODULEREF = "moduleRef";
  public static final String REEXPORT = "reexport";

  @NotNull
  private ModuleReference myModuleRef;
  private boolean myReexport;

  @NotNull
  public ModuleReference getModuleRef() {
    return myModuleRef;
  }

  public void setModuleRef(@NotNull ModuleReference moduleRef) {
    myModuleRef = moduleRef;
  }

  public boolean isReexport() {
    return myReexport;
  }

  public void setReexport(boolean reexport) {
    myReexport = reexport;
  }

  public Dependency getCopy() {
    Dependency result = new Dependency();
    result.myModuleRef = myModuleRef;
    result.myReexport = myReexport;

    return result;
  }
}
