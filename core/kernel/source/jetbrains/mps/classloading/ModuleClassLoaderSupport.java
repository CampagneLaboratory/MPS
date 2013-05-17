/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager;
import jetbrains.mps.project.dependency.GlobalModuleDependenciesManager.Deptype;
import jetbrains.mps.project.facets.JavaModuleFacet;
import jetbrains.mps.project.facets.JavaModuleOperations;
import jetbrains.mps.reloading.CompositeClassPathItem;
import jetbrains.mps.reloading.IClassPathItem;
import jetbrains.mps.smodel.Generator;
import org.jetbrains.mps.openapi.module.SModule;

import java.net.URL;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class ModuleClassLoaderSupport {
  private final SModule module;
  private final IClassPathItem classPathItem;
  private final Set<SModule> compileDependencies;

  private ModuleClassLoaderSupport(SModule module) {
    // ModuleClassLoaders should be created all canCreate()-able modules!
    assert canCreate(module);

    this.module = module;

    JavaModuleFacet facet = module.getFacet(JavaModuleFacet.class);
    assert facet != null;

    assert facet.isCompileInMps();
    classPathItem = JavaModuleOperations.createClassPathItem(facet.getClassPath(), ModuleClassLoaderSupport.class.getName());

    compileDependencies = new HashSet<SModule>();
    for (SModule dependency : new GlobalModuleDependenciesManager(module).getModules(Deptype.COMPILE)) {
      compileDependencies.add(dependency);
    }
  }

  // ext point possible here
  public static boolean canCreate(SModule module) {
    // todo: + check is module compiled?
    return module.getFacet(JavaModuleFacet.class) != null && module.getFacet(NonReloadableModuleFacet.class) == null;
  }

  public static ModuleClassLoaderSupport create(SModule module) {
    return new ModuleClassLoaderSupport(module);
  }

  public SModule getModule() {
    return module;
  }

  public IClassPathItem getClassPathItem() {
    return classPathItem;
  }

  public boolean canFindClass(String name) {
    return classPathItem.hasClass(name);
  }

  public byte[] findClassBytes(String name) {
    return classPathItem.getClass(name);
  }

  public URL findResource(String name) {
    return classPathItem.getResource(name);
  }

  public Collection<SModule> getCompileDependencies() {
    return compileDependencies;
  }
}
