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
package jetbrains.mps.classloading;

import jetbrains.mps.classloading.GraphHolder.Graph;
import jetbrains.mps.classloading.GraphHolder.Graph.VertexVisitor;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager.AbsentDependencyException;
import jetbrains.mps.project.dependency.UsedModulesCollector;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.util.Condition;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class ModuleUpdater {
  private static final Logger LOG = LogManager.getLogger(ModuleUpdater.class);
  private static final Object LOCK = new Object();

  private volatile boolean myChangedFlag = false;
  private final Set<ReloadableModule> myModulesToAdd = new LinkedHashSet<ReloadableModule>();
  private final Set<ReloadableModule> myModulesToReload = new LinkedHashSet<ReloadableModule>();
  private final Set<SModuleReference> myModulesToRemove = new LinkedHashSet<SModuleReference>();
  private final Condition<ReloadableModule> myWatchableCondition;
  private final GraphHolder<SModuleReference> myDepGraph = new GraphHolder<SModuleReference>();
  private final ReferenceStorage<ReloadableModule> myRefStorage;
  private final SRepository myRepository;
  private final Map<ReloadableModule, AbsentDependencyException> myModulesWithAbsentDeps = new HashMap<ReloadableModule, AbsentDependencyException>();

  public ModuleUpdater(SRepository repository, Condition<ReloadableModule> watchableCondition, ReferenceStorage<ReloadableModule> refStorage) {
    myRepository = repository;
    myWatchableCondition = watchableCondition;
    myRefStorage = refStorage;
  }

  public void updateModules(@NotNull Collection<? extends ReloadableModule> modules) {
    synchronized (LOCK) {
      myChangedFlag = true;
      for (ReloadableModule module : modules) {
        if (myWatchableCondition.met(module)) {
          myModulesToReload.add(module);
        }
        // need this call because we might get #addModules notification later than this one
        myRefStorage.moduleAdded(module);
      }
    }
  }

  public void addModules(@NotNull Collection<? extends ReloadableModule> modules) {
    synchronized (LOCK) {
      myChangedFlag = true;
      for (ReloadableModule module : modules) {
        if (myWatchableCondition.met(module)) {
          myModulesToAdd.add(module);
          myModulesToRemove.add(module.getModuleReference());
        }
        myRefStorage.moduleAdded(module);
      }
    }
  }

  public void removeModules(@NotNull Collection<? extends SModuleReference> mRefs) {
    synchronized (LOCK) {
      for (SModuleReference mRef : mRefs) {
        if (myRefStorage.moduleRemoved(mRef) != null) {
          // need to clean up myModulesToLoad and myModulesToReload
          removeMRefFromModules(mRef, myModulesToAdd);
          removeMRefFromModules(mRef, myModulesToReload);
          myModulesToRemove.add(mRef);
          myChangedFlag = true;
        }
      }
    }
  }

  public Collection<SModuleReference> getModules() {
    synchronized (LOCK) {
      return myDepGraph.getVertices();
    }
  }

  private void removeMRefFromModules(SModuleReference mRef, Collection<ReloadableModule> modules) {
    for (Iterator<ReloadableModule> iterator = modules.iterator(); iterator.hasNext();) {
      ReloadableModule module = iterator.next();
      SModuleReference ref = module.getModuleReference();
      if (mRef.equals(ref)) iterator.remove();
    }
  }

  /**
   * @return if graph did change (some edges or vertices added/removed)
   */
  public boolean refreshGraph() {
    myRepository.getModelAccess().checkReadAccess();
    synchronized (LOCK) {
      myChangedFlag = false;
      UsedModulesCollector usedModulesCollector = new UsedModulesCollector();

      myDepGraph.checkGraphsCorrectness();
      int wasEdges = myDepGraph.getEdgesCount();
      int wasVertices = myDepGraph.getVerticesCount();

      myModulesWithAbsentDeps.clear();
      boolean updated = !myModulesToAdd.isEmpty() || !myModulesToRemove.isEmpty();
      updateRemoved(myModulesToRemove);
      updateAdded(myModulesToAdd, usedModulesCollector);
      updated |= updateReloaded(myModulesToReload, usedModulesCollector);
      myModulesToRemove.clear();
      myModulesToAdd.clear();
      myModulesToReload.clear();

      LOG.debug("Difference in the vertex count after validation " + (myDepGraph.getVerticesCount() - wasVertices));
      LOG.debug("Difference in the edge count after validation " + (myDepGraph.getEdgesCount() - wasEdges));
      return updated;
    }
  }

  public Map<ReloadableModule, AbsentDependencyException> getModulesWithAbsentDeps() {
    return Collections.unmodifiableMap(myModulesWithAbsentDeps);
  }

  private void updateRemoved(Set<? extends SModuleReference> modulesToRemove) {
    for (SModuleReference mRef : modulesToRemove) {
      if (!myDepGraph.contains(mRef)) continue;
      LOG.debug("Removing module " + mRef);
      myDepGraph.remove(mRef);
    }
  }

  private void updateAdded(final Set<? extends ReloadableModule> modulesToAdd, UsedModulesCollector usedModulesCollector) {
    updateAddedVertices(modulesToAdd);
    updateAllEdges(usedModulesCollector);
  }

  /**
   * @return true if actual update happened
   */
  private boolean updateReloaded(final Set<? extends ReloadableModule> modulesToReload, UsedModulesCollector usedModulesCollector) {
    if (modulesToReload.isEmpty()) {
      return false;
    }
    boolean updated = updateReloadedVertices(modulesToReload);
    updated |= updateReloadedEdges(modulesToReload, usedModulesCollector);
    return updated;
  }

  private void updateAddedVertices(Set<? extends ReloadableModule> modulesToAdd) {
    for (ReloadableModule module : modulesToAdd) {
      LOG.debug("Adding module " + module);
      assert myWatchableCondition.met(module);
      assert module.getRepository() != null;
      myDepGraph.add(module.getModuleReference());
    }
  }

  /**
   * Here we are updating references from all the existing modules
   * Also we are going through all the modules in the repository and checking that their dependencies do exist.
   * It checks every module in the current graph and tracks whether it has some unresolved dependencies.
   * If so it puts it to the map {@link #myModulesWithAbsentDeps}.
   * @param usedModulesCollector
   */
  private void updateAllEdges(UsedModulesCollector usedModulesCollector) {
    myRepository.getModelAccess().checkReadAccess();
    Collection<? extends SModuleReference> allRefs = myDepGraph.getVertices();
    for (SModuleReference ref : allRefs) {
      ReloadableModule module = myRefStorage.resolveRef(ref);
      assert module != null;
      Collection<? extends ReloadableModule> deps;
      try {
        deps = getModuleDeps(module, usedModulesCollector);
      } catch (AbsentDependencyException e) {
        myModulesWithAbsentDeps.put(module, e);
        continue;
      }
      for (ReloadableModule dep : deps) {
        if (allRefs.contains(dep.getModuleReference())) {
          myDepGraph.addEdge(ref, dep.getModuleReference());
        } else {
//        valid if somebody calls reloadModule in moduleAdded() listener before us
          LOG.warn("The dependent module " + dep + " of the " + module + " is not registered");
        }
      }
    }
  }

  private boolean updateReloadedVertices(Set<? extends ReloadableModule> modulesToReload) {
    boolean updated = false;
    for (ReloadableModule module : modulesToReload) {
      LOG.debug("Reloading module " + module);
      assert myWatchableCondition.met(module);
      assert module.getRepository() != null;
      SModuleReference mRef = module.getModuleReference();
      if (!myDepGraph.contains(mRef)) {
        myDepGraph.add(mRef);
        updated = true;
      }
    }
    return updated;
  }

  /**
   * calculates difference in the outgoing edges for each given module
   */
  private boolean updateReloadedEdges(Set<? extends ReloadableModule> modulesToReload, UsedModulesCollector usedModulesCollector) {
    boolean updated = false;
    myRepository.getModelAccess().checkReadAccess();
    Collection<? extends SModuleReference> allRefs = myDepGraph.getVertices();
    for (ReloadableModule module : modulesToReload) {
      SModuleReference mRef = module.getModuleReference();
      Collection<? extends SModuleReference> currentDeps = new HashSet<SModuleReference>(myDepGraph.getOutgoingEdges(mRef));
      Collection<? extends ReloadableModule> newModuleDeps;
      try {
        newModuleDeps = getModuleDeps(module, usedModulesCollector);
      } catch (AbsentDependencyException e) {
        assert myModulesWithAbsentDeps.containsKey(module);
        return true;
      }
      for (ReloadableModule moduleDep : newModuleDeps) {
        SModuleReference depRef = moduleDep.getModuleReference();
        if (!currentDeps.contains(depRef)) {
          if (allRefs.contains(depRef)) {
            myDepGraph.addEdge(mRef, depRef);
            updated = true;
          }
        } else {
          currentDeps.remove(depRef);
        }
      }
      for (SModuleReference curDep : currentDeps) {
        myDepGraph.removeEdge(mRef, curDep);
        updated = true;
      }
    }
    return updated;
  }

  private Collection<ReloadableModule> getModuleDeps(@NotNull ReloadableModule module, UsedModulesCollector usedModulesCollector) throws AbsentDependencyException {
    myRepository.getModelAccess().checkReadAccess();
    if (module.getRepository() == null) return Collections.emptySet();
    Set<ReloadableModule> deps = new LinkedHashSet<ReloadableModule>();
    Collection<? extends SModule> directlyUsedModules = usedModulesCollector.directlyUsedModules0(module, true, true);
    for (SModule dep : directlyUsedModules) {
      if (dep instanceof ReloadableModule) {
        ReloadableModule reloadableModule = (ReloadableModule) dep;
        if (myWatchableCondition.met(reloadableModule)) {
          deps.add(reloadableModule);
        }
      }
    }
    return deps;
  }

  public Collection<SModuleReference> getDeps(Iterable<? extends SModuleReference> mRefs) {
    synchronized (LOCK) {
      final Collection<SModuleReference> result = new ArrayList<SModuleReference>();
      Graph<SModuleReference> depGraph = myDepGraph.getGraph();
      depGraph.dfs(mRefs, new VertexVisitor<SModuleReference>() {
        @Override
        public void visit(SModuleReference mRef) {
          result.add(mRef);
        }
      });
      return Collections.unmodifiableCollection(result);
    }
  }

  public Collection<SModuleReference> getBackDeps(Iterable<? extends SModuleReference> mRefs) {
    synchronized (LOCK) {
      final Collection<SModuleReference> result = new LinkedHashSet<SModuleReference>();
      Graph<SModuleReference> backDepGraph = myDepGraph.getConjugateGraph();
      backDepGraph.dfs(mRefs, new VertexVisitor<SModuleReference>() {
        @Override
        public void visit(SModuleReference mRef) {
          result.add(mRef);
        }
      });
      return Collections.unmodifiableCollection(result);
    }
  }

  public boolean isDirty() {
    return myChangedFlag;
  }
}
