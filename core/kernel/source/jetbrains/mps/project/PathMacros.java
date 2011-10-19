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
package jetbrains.mps.project;

import jetbrains.mps.components.CoreComponent;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * evgeny, 10/19/11
 */
public class PathMacros implements PathMacrosProvider, CoreComponent {

  private static PathMacros INSTANCE;

  private List<PathMacrosProvider> myMacrosProviders = new CopyOnWriteArrayList<PathMacrosProvider>();

  public static PathMacros getInstance() {
    return INSTANCE;
  }

  public PathMacros() {
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }

  @Override
  public Set<String> getNames() {
    Set<String> result = null;
    boolean modifiable = false;
    for (PathMacrosProvider p : myMacrosProviders) {
      Set<String> pnames = p.getNames();
      if (pnames == null || pnames.isEmpty()) continue;
      if (result == null) {
        result = pnames;
        continue;
      }
      if (!modifiable) {
        result = new HashSet<String>(result);
        modifiable = true;
      }
      result.addAll(pnames);
    }
    return result != null ? result : Collections.<String>emptySet();
  }

  @Override
  public String getValue(String name) {
    for (PathMacrosProvider p : myMacrosProviders) {
      final String value = p.getValue(name);
      if (value != null) {
        return value;
      }
    }
    return null;
  }


  public void addMacrosProvider(PathMacrosProvider provider) {
    if (provider == this) return;
    myMacrosProviders.add(provider);
  }

  public void removeMacrosProvider(PathMacrosProvider provider) {
    myMacrosProviders.remove(provider);
  }
}
