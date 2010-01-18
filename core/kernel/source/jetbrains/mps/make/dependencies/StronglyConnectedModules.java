/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.make.dependencies;

import jetbrains.mps.project.IModule;
import jetbrains.mps.make.dependencies.graph.Graph;
import jetbrains.mps.make.dependencies.graph.Graphs;
import jetbrains.mps.make.dependencies.graph.IVertex;

import java.util.*;

public class StronglyConnectedModules {

  private static final StronglyConnectedModules INSTANCE = new StronglyConnectedModules();

  private StronglyConnectedModules() {
  }

  public static StronglyConnectedModules getInstance() {
    return INSTANCE;
  }

  public <M extends IModule> List<Set<M>> getStronglyConnectedComponents(Set<M> modules, boolean includeBootstrap) {
    return getStronglyConnectedComponents(modules, new DefaultModuleDecoratorBuilder<M>(includeBootstrap));
  }

  public <M extends IModule> List<Set<M>> getStronglyConnectedComponents(Set<M> modules) {
    return getStronglyConnectedComponents(modules, new DefaultModuleDecoratorBuilder<M>(false));
  }

  public <M extends IModule, D extends IModuleDecorator<M>> List<Set<M>> getStronglyConnectedComponents(Set<M> modules, IModuleDecoratorBuilder<M, D> decoratorBuilder) {
    List<Set<M>> result = new LinkedList<Set<M>>();

    Graph<IModuleDecorator<M>> g = new Graph<IModuleDecorator<M>>();

    Map<IModule, IModuleDecorator<M>> moduleToDecorator = new LinkedHashMap<IModule, IModuleDecorator<M>>();
    for (M m : modules) {
      IModuleDecorator<M> dec = decoratorBuilder.decorate(m);
      moduleToDecorator.put(m, dec);
      g.add(dec);
    }

    for (IModuleDecorator<M> m : g.getData()) {
      m.fill(moduleToDecorator);
    }

    List<Set<IModuleDecorator<M>>> sets = Graphs.getInstance().findStronglyConnectedComponents(g);

    for (Set<IModuleDecorator<M>> set : sets) {
      Set<M> mset = new LinkedHashSet<M>();
      result.add(mset);
      for (IModuleDecorator<M> md : set) {
        mset.add(md.getModule());
      }
    }

    Collections.reverse(result);

    return result;
  }

  public static interface IModuleDecorator<M extends IModule> extends IVertex, Comparable<IModuleDecorator<M>> {
    public M getModule();

    public void fill(Map<IModule, IModuleDecorator<M>> map);
  }

  public static interface IModuleDecoratorBuilder<M extends IModule, D extends IModuleDecorator<M>> {
    public D decorate(M module);
  }

  private static class DefaultModuleDecoratorBuilder<M extends IModule> implements IModuleDecoratorBuilder<M, DefaultModuleDecorator<M>> {
    private final boolean myIncludeBootstrap;

    public DefaultModuleDecoratorBuilder(boolean includeBootstrap) {
      myIncludeBootstrap = includeBootstrap;
    }

    public DefaultModuleDecorator<M> decorate(M module) {
      return new DefaultModuleDecorator<M>(module, myIncludeBootstrap);
    }
  }

  private static class DefaultModuleDecorator<M extends IModule> implements IModuleDecorator<M> {

    private final M myModule;
    private final Set<DefaultModuleDecorator> myNext = new LinkedHashSet<DefaultModuleDecorator>();
    private boolean myIncludeBootstrap;

    public DefaultModuleDecorator(M module, boolean includeBootstrap) {
      myModule = module;
      myIncludeBootstrap = includeBootstrap;
    }

    public void fill(Map<IModule, IModuleDecorator<M>> map) {
      for (IModule m : myModule.getExplicitlyDependOnModules(myIncludeBootstrap)) {
        DefaultModuleDecorator<M> next = (DefaultModuleDecorator<M>) map.get(m);
        if (next != null) myNext.add(next);
      }
    }

    public M getModule() {
      return myModule;
    }

    public Set<? extends IVertex> getNexts() {
      return Collections.unmodifiableSet(myNext);
    }

    public int compareTo(IModuleDecorator<M> o) {
      return this.hashCode() - o.hashCode();
    }
  }

}
