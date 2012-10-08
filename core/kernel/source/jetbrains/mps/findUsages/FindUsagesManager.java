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
package jetbrains.mps.findUsages;

import org.jetbrains.mps.openapi.components.CoreComponent;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.progress.ProgressMonitor;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.containers.MultiMap;
import org.jetbrains.annotations.Nullable;

import java.util.HashSet;
import java.util.Set;

public class FindUsagesManager implements CoreComponent {

  //------------CoreComponent stuff----------------

  private static FindUsagesManager INSTANCE;

  public static FindUsagesManager getInstance() {
    return INSTANCE;
  }

  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  public void dispose() {
    INSTANCE = null;
  }

//------------------API-------------------------

  public <T, R> Set<T> findUsages(Set<SNode> nodes, SearchType<T, R> type, IScope scope, @Nullable ProgressMonitor monitor) {
    MultiMap<SModelDescriptor, R> directSearch = type.findMatchingModelsInCache(nodes, scope.getModelDescriptors(), null);

    Set<T> result = new HashSet<T>();
    if (monitor == null) monitor = new EmptyProgressMonitor();
    monitor.start("Finding usages...", directSearch.size());
    try {
      result.addAll(type.findInModel(directSearch, new MyProgressNotifier(monitor)));
    } finally {
      monitor.done();
    }
    return result;
  }

  private static class MyProgressNotifier implements Computable<Boolean> {
    private final ProgressMonitor myProgress;

    public MyProgressNotifier(ProgressMonitor progress) {
      myProgress = progress;
    }

    public Boolean compute() {
      myProgress.advance(1);
      return !myProgress.isCanceled();
    }
  }
}
