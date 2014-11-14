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
package jetbrains.mps.library;

import jetbrains.mps.cleanup.CleanupManager;
import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.library.contributor.LibraryContributor.LibDescriptor;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class LibraryInitializer implements CoreComponent {
  private static final Logger LOG = LogManager.getLogger(LibraryInitializer.class);

  private static LibraryInitializer INSTANCE;

  public static LibraryInitializer getInstance() {
    return INSTANCE;
  }

  private Set<SLibrary> myLibraries = new LinkedHashSet<SLibrary>();
  private Map<String, ClassLoader> myParentLoaders = new ConcurrentHashMap<String, ClassLoader>();

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }
    INSTANCE = this;
  }

  @Override
  public void dispose() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      @Override
      public void run() {
        for (SLibrary lib : myLibraries) {
          lib.dispose();
        }
        myLibraries.clear();
      }
    });
    INSTANCE = null;
  }

  @SuppressWarnings("UnusedParameters")
  public LibraryInitializer(MPSModuleRepository repo, ClassLoaderManager clm) {
  }

  public void update() {
    update(false);
  }

  public ClassLoader getPluginClassLoaderForPath(@Nullable String pluginPath) {
    // TODO find classloader using ModuleOwner (SLibrary)
    if (pluginPath != null) {
      String foundPath = "";
      for (String path : myParentLoaders.keySet()) {
        if (pluginPath.startsWith(FileSystem.getInstance().getFileByPath(path).getPath())) {
          // handle one path being a prefix of the other
          if (path != null && path.length() > foundPath.length()) {
            foundPath = path;
          }
        }
      }
      if (!foundPath.isEmpty()) {
        return myParentLoaders.get(foundPath);
      }
    }

    //project module
    return LibraryInitializer.class.getClassLoader();
  }

  public void update(final boolean refreshFiles) {
    ModelAccess.assertLegalWrite();

    final Set<SLibrary> toUnload = new HashSet<SLibrary>(myLibraries);
    final Set<SLibrary> toLoad = new HashSet<SLibrary>();
    myParentLoaders.clear();
    for (LibraryContributor lc : myContributors) {
      for (LibDescriptor s : lc.getLibraries()) {
        IFile path = FileSystem.getInstance().getFileByPath(s.path);
        SLibrary lib = new SLibrary(path, s.parentLoader, lc.hiddenLanguages());
        toUnload.remove(lib);
        if (!myLibraries.contains(lib)) {
          myLibraries.add(lib);
          toLoad.add(lib);
        }

        IFile bundlePath = FileSystem.getInstance().isPackaged(path) ? FileSystem.getInstance().getBundleHome(path) : null;
        myParentLoaders.put(bundlePath != null ? bundlePath.getPath() : s.path, s.parentLoader != null ? s.parentLoader : LibraryInitializer.class.getClassLoader());
      }
    }
    myLibraries.removeAll(toUnload);

    if (toUnload.size() + toLoad.size() == 0) return;

    if (toLoad.size() > 0) LOG.info("Loading " + toLoad.size() + " libraries");
    if (toUnload.size() > 0) LOG.info("Unloading " + toUnload.size() + " libraries");

    ModelAccess.instance().runWriteAction(new Runnable() {
      @Override
      public void run() {
        ArrayList<SLibrary> toUnloadList = new ArrayList<SLibrary>(toUnload);
        ArrayList<SLibrary> toLoadList = new ArrayList<SLibrary>(toLoad);
        Collections.sort(toUnloadList);
        Collections.sort(toLoadList);
        for (SLibrary unloadLib : toUnloadList) {
          unloadLib.dispose();
        }

        for (SLibrary loadLib : toLoadList) {
          loadLib.attach(refreshFiles);
        }
      }
    });

    CleanupManager.getInstance().cleanup();
  }

  //----------bootstrap modules

  public <M extends SModule> Set<M> getBootstrapModules(Class<M> cls) {
    ModelAccess.assertLegalRead();

    Set<String> bootstrapPaths = new HashSet<String>();
    bootstrapPaths.addAll(PathManager.getBootstrapPaths());
    bootstrapPaths.add(PathManager.getLanguagesPath());

    List<M> result = new ArrayList<M>();
    for (SLibrary lib : myLibraries) {
      if (bootstrapPaths.contains(lib.getFile().getPath())) {
        result.addAll(ModuleRepositoryFacade.getInstance().getModules(lib, cls));
      }
    }

    addGenerators(cls, result);
    return new HashSet<M>(result);
  }

  public List<ModulesMiner.ModuleHandle> getModuleHandles() {
    ModelAccess.assertLegalRead();

    List<ModulesMiner.ModuleHandle> result = new ArrayList<ModulesMiner.ModuleHandle>();
    for (SLibrary lib : myLibraries) {
      result.addAll(lib.getHandles());
    }
    return result;
  }

  public <M extends SModule> void addGenerators(Class<M> cls, Collection<M> result) {
    for (M m : new ArrayList<M>(result)) {
      if (m instanceof Language) {
        if (cls == null || cls.isAssignableFrom(Generator.class)) {
          result.addAll((List<? extends M>) ((Language) m).getGenerators());
        }
      }
    }
  }

  //----------ext point

  private List<LibraryContributor> myContributors = new CopyOnWriteArrayList<LibraryContributor>();

  public void addContributor(LibraryContributor c) {
    LOG.info("Adding libraries from " + c);
    myContributors.add(c);
  }

  public void removeContributor(LibraryContributor c) {
    LOG.info("Removing libraries from " + c);
    myContributors.remove(c);
  }
}
