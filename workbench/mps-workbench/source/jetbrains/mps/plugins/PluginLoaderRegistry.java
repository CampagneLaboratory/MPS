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
package jetbrains.mps.plugins;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.classloading.MPSClassesListener;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.module.ReloadableModuleBase;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.SolutionKind;
import jetbrains.mps.smodel.Language;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Represents a single class loading listener to trigger the plugin reload in
 * {@link jetbrains.mps.plugins.applicationplugins.ApplicationPluginManager}
 * and {@link jetbrains.mps.plugins.projectplugins.ProjectPluginManager}. It does that via the {@link jetbrains.mps.plugins.PluginReloadingListener} interface.
 *
 * It listens for class loading events, calculate the plugin contributors which need to be updated and notifies these managers.
 *
 * TODO: currently it reloads only the ModulePluginContributors, need to work on AbstractPluginFactories also. Makes sense to remove this factories at all
 */
public class PluginLoaderRegistry implements ApplicationComponent {
  private static final Logger LOG = Logger.getLogger(PluginLoaderRegistry.class);

  private ClassLoaderManager myClassLoaderManager;
  private MPSClassesListener myClassesListener = new MyReloadAdapter();
  private List<PluginContributor> myLoadedContributors = new ArrayList<PluginContributor>(); // modules
  private final List<PluginLoader> myPluginLoaders = new CopyOnWriteArrayList<PluginLoader>(); // components

  public PluginLoaderRegistry(MPSCoreComponents coreComponents) {
    myClassLoaderManager = coreComponents.getClassLoaderManager();
  }

  public List<PluginContributor> getLoadedContributors() {
    return new ArrayList<PluginContributor>(myLoadedContributors);
  }

  private static List<PluginContributor> createPluginContributors(Collection<ReloadableModule> modules) {
    List<ReloadableModule> sortedModules = new PluginSorter(modules).sortByDependencies();

    List<PluginContributor> contributors = new ArrayList<PluginContributor>();
    for (ReloadableModule module : sortedModules) {
      PluginContributor contributor = createPluginContributor(module);
      if (contributor != null) {
        contributors.add(contributor);
      }
    }

    return contributors;
  }

  @Nullable
  private static PluginContributor createPluginContributor(@NotNull ReloadableModule module) {
    if (module.willLoad()) {
      LOG.debug("Creating plugin contributor from " + module);
      return new ModulePluginContributor(module);
    }
    return null;
  }

  public void register(@NotNull PluginLoader loader) {
    myPluginLoaders.add(loader);
  }

  public void unregister(@NotNull PluginLoader loader) {
    myPluginLoaders.remove(loader);
  }

  private void unloadPlugins(List<PluginContributor> contributors) {
    LOG.debug(String.format("Unloading plugins from %d contributors", contributors.size()));
    if (contributors.isEmpty()) return;
    long beginTime = System.nanoTime();
    try {
      for (PluginLoader listener : myPluginLoaders) {
        listener.unloadPlugins(contributors);
      }
    } finally {
      LOG.info(String.format("Unloading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  private void loadPlugins(List<PluginContributor> contributors) {
    LOG.debug(String.format("Loading plugins from %d contributors", contributors.size()));
    if (contributors.isEmpty()) return;
    long beginTime = System.nanoTime();
    try {
      for (PluginLoader listener : myPluginLoaders) {
        listener.loadPlugins(contributors);
      }
    } finally {
      LOG.info(String.format("Loading of %d plugins took %.3f s", contributors.size(), (System.nanoTime() - beginTime) / 1e9));
    }
  }

  private List<PluginContributor> calcContributorsToUnload(Set<ReloadableModule> toUnload) {
    List<PluginContributor> toUnloadContributors = new ArrayList<PluginContributor>();
    for (PluginContributor contributor : myLoadedContributors) {
      if (contributor instanceof ModulePluginContributor) {
        if (toUnload.contains(((ModulePluginContributor) contributor).getModule())) {
          toUnloadContributors.add(contributor);
        }
      }
    }
    Collections.reverse(toUnloadContributors);
    return toUnloadContributors;
  }

  @Override
  @NonNls
  @NotNull
  public String getComponentName() {
    return PluginLoaderRegistry.class.getName();
  }

  @Override
  public void initComponent() {
    myClassLoaderManager.addClassesHandler(myClassesListener);
    // invoking loading factories (which are obtained from PluginFactoriesRegistry) at the end of idea app components initialization
    ApplicationManager.getApplication().invokeLater(new Runnable() {
      @Override
      public void run() {
        loadFactories();
      }
    });
  }

  /**
   * Factories are registered via IdeaInitializerDescriptor generated code.
   * They are initialized during the application initialization
   */
  private void loadFactories() {
    List<PluginContributor> toLoadContributors = new ArrayList<PluginContributor>();
    for (PluginContributor contributor : getPluginFactoriesRegistryContributors()) {
      if (!myLoadedContributors.contains(contributor)) {
        toLoadContributors.add(contributor);
      }
    }
    loadPlugins(toLoadContributors);
    myLoadedContributors.addAll(toLoadContributors);
  }

  private static List<PluginContributor> getPluginFactoriesRegistryContributors() {
    List<PluginContributor> pluginContributors = new ArrayList<PluginContributor>();

    Collection<AbstractPluginFactory> pluginFactories = PluginFactoriesRegistry.flush();
    for (AbstractPluginFactory factory : pluginFactories) {
      pluginContributors.add(PluginContributor.adapt(factory));
    }

    return pluginContributors;
  }

  @Override
  public void disposeComponent() {
    myClassLoaderManager.removeClassesHandler(myClassesListener);
  }

  private class MyReloadAdapter implements MPSClassesListener {
    private boolean isPluginModule(SModule module) {
      //todo this line should be removed as long as we move plugins out from languages
      if (module instanceof Language) return true;

      if (module instanceof Solution) {
        SolutionKind kind = ((Solution) module).getKind();
        return kind != SolutionKind.NONE;
      }
      return false;
    }

    @Override
    public void beforeClassesUnloaded(Set<? extends ReloadableModuleBase> unloadedModules) {
      Set<ReloadableModule> pluginModules = getPluginModules(unloadedModules);
      List<PluginContributor> toUnloadContributors = calcContributorsToUnload(pluginModules);
      unloadPlugins(toUnloadContributors);
      myLoadedContributors.removeAll(toUnloadContributors);
    }

    @Override
    public void afterClassesLoaded(Set<? extends ReloadableModuleBase> loadedModules) {
      Set<ReloadableModule> pluginModules = getPluginModules(loadedModules);
      List<PluginContributor> toLoadContributors = createPluginContributors(pluginModules);
      loadFactories(); // it is a hack to load ide plugin before others. however there is no guarantee that it is already registered.
      loadPlugins(toLoadContributors);
      myLoadedContributors.addAll(toLoadContributors);
    }

    private Set<ReloadableModule> getPluginModules(Collection<? extends ReloadableModule> modules) {
      Set<ReloadableModule> result = new HashSet<ReloadableModule>();

      for (ReloadableModule module : modules) {
        if (isPluginModule(module)) {
          result.add(module);
        }
      }
      return result;
    }
  }
}
