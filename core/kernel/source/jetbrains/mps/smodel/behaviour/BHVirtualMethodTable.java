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
package jetbrains.mps.smodel.behaviour;

import org.jetbrains.annotations.NotNull;

import java.util.HashMap;
import java.util.Map;

/**
* Created by apyshkin on 28/07/15.
*/
public class BHVirtualMethodTable {
  private final Map<SMethod, BaseBHDescriptor> myTable = new HashMap<SMethod, BaseBHDescriptor>();

  public void put(@NotNull SMethod method, @NotNull BaseBHDescriptor descriptor) {
    if (!method.getMethodModifiers().isVirtual()) {
      throw new IllegalArgumentException("Method " + method + " must be virtual to be registered in the Virtual Table");
    }
    // only new virtual method implementations need to be recorded
    for (SMethod methodSeen : myTable.keySet()) {
      if (SMethod.overrides(methodSeen, method)) {
        return;
      }
    }
    myTable.put(method, descriptor);
  }

  @NotNull public BaseBHDescriptor get(@NotNull SMethod method) {
    return myTable.get(method);
  }
}
