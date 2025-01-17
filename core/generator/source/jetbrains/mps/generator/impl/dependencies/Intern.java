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
package jetbrains.mps.generator.impl.dependencies;

import org.jetbrains.annotations.Nullable;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Don't want to use <code>jetbrains.mps.util.Interner</code> as it's an overkill for our single-threaded case, I don't like its name, and perhaps
 * I'll have to intern other objects here (as SNodeId or SModelReference).
 * @author Artem Tikhomirov
 */
final class Intern {
  private final Map<String, String> myStrings = new HashMap<String, String>(256);

  @Nullable
  public String value(@Nullable String origin) {
    if (origin == null) {
      return null;
    }
    String cached = myStrings.get(origin);
    if (cached != null) {
      return cached;
    }
    myStrings.put(origin, origin);
    return origin;
  }
}
