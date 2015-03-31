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
package jetbrains.mps;

import jetbrains.mps.cache.CachesManager;
import jetbrains.mps.checkers.CheckersComponent;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.cleanup.CleanupManager;
import jetbrains.mps.components.ComponentPlugin;
import jetbrains.mps.datatransfer.CopyPasteManager;
import jetbrains.mps.datatransfer.PasteWrappersManager;
import jetbrains.mps.extapi.module.FacetsRegistry;
import jetbrains.mps.extapi.module.SRepositoryRegistry;
import jetbrains.mps.findUsages.FindUsagesManager;
import jetbrains.mps.lang.dataFlow.DataFlowManager;
import jetbrains.mps.library.LibraryInitializer;
import jetbrains.mps.make.facets.BootstrapMakeFacets;
import jetbrains.mps.make.java.BLDependenciesCache;
import jetbrains.mps.migration.global.MigrationPropertiesManager;
import jetbrains.mps.persistence.PersistenceRegistry;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.PathMacros;
import jetbrains.mps.project.structure.LanguageDescriptorModelProvider;
import jetbrains.mps.project.structure.ProjectStructureModule;
import jetbrains.mps.resolve.ResolverComponent;
import jetbrains.mps.smodel.ConceptDescendantsCache;
import jetbrains.mps.smodel.DebugRegistry;
import jetbrains.mps.smodel.DefaultModelAccess;
import jetbrains.mps.smodel.GlobalSModelEventsManager;
import jetbrains.mps.smodel.LanguageHierarchyCache;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.ModuleFileTracker;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.PropertySupport.PropertySupportCache;
import jetbrains.mps.smodel.SModelFileTracker;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SNodeAccessUtilImpl;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.language.ConceptRepository;
import jetbrains.mps.smodel.language.ExtensionRegistry;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.references.ImmatureReferences;
import jetbrains.mps.util.QueryMethodGenerated;
import jetbrains.mps.validation.ValidationSettings;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

/**
 * Evgeny Gryaznov, Sep 1, 2010
 */
public final class MPSCore extends ComponentPlugin {

  public MPSCore() {
  }

  @Override
  public void init() {
    super.init();
    if (ModelAccess.instance() == null) {
      ModelAccess.setInstance(new DefaultModelAccess());
    }

    SNodeAccessUtil.setInstance(new SNodeAccessUtilImpl());
    init(new PersistenceRegistry());
    init(new FacetsRegistry());
    init(new ConceptRepository());
    init(new FindUsagesManager());
    init(new MigrationPropertiesManager());

    // repositories
    final SRepositoryRegistry repositoryRegistry = init(new SRepositoryRegistry());
    SModelRepository modelRepository = init(new SModelRepository());
    MPSModuleRepository moduleRepository = init(new MPSModuleRepository());
    init(new GlobalSModelEventsManager(modelRepository));
    ClassLoaderManager classLoaderManager = init(new ClassLoaderManager(moduleRepository));
    init(new DebugRegistry());

    init(new SModelFileTracker(SRepositoryRegistry.getInstance()));
    init(new ModuleRepositoryFacade(moduleRepository));
    init(new ModuleFileTracker(moduleRepository));
    CleanupManager cleanupManager = init(new CleanupManager(classLoaderManager));
    init(new PathMacros());
    init(new LibraryInitializer(moduleRepository, classLoaderManager));
    init(new GlobalScope(moduleRepository, modelRepository));
    init(new ImmatureReferences(moduleRepository));

    init(new QueryMethodGenerated(classLoaderManager));
    LanguageRegistry languageRegistry = init(new LanguageRegistry(moduleRepository, classLoaderManager));
    init(new ConceptRegistry(languageRegistry));
    init(new ExtensionRegistry(classLoaderManager, moduleRepository));
    init(new LanguageHierarchyCache(moduleRepository));
    init(new ConceptDescendantsCache(moduleRepository, languageRegistry));
    init(new CachesManager(classLoaderManager, modelRepository));
    init(new LanguageDescriptorModelProvider(moduleRepository));
    init(new ProjectStructureModule(moduleRepository, modelRepository));
    init(new CopyPasteManager(classLoaderManager));
    init(new PasteWrappersManager(classLoaderManager));
    init(new BLDependenciesCache(moduleRepository, cleanupManager));
    init(new DataFlowManager(moduleRepository, classLoaderManager));

    init(new ResolverComponent());
    init(new CheckersComponent());
    init(new ValidationSettings());

    init(new BootstrapMakeFacets());
    init(new PropertySupportCache(classLoaderManager));
  }
}
