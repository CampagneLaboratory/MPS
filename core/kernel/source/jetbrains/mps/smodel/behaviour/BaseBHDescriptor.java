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
package jetbrains.mps.smodel.behaviour;

import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.WeakSet;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.util.BreadthConceptHierarchyIterator;
import org.jetbrains.mps.util.DepthFirstConceptIterator;
import org.jetbrains.mps.util.UniqueIterator;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Common ancestor for all the generated behavior aspects (per concept).
 * Exploiting the idea of virtual table to yield the dynamic dispatch for behavior methods' invocation.
 */
// Todo check destruction ??
public abstract class BaseBHDescriptor implements BHDescriptor {
  private static final Logger LOG = LogManager.getLogger(BaseBHDescriptor.class);

  private boolean myInitialized = false;
  private final SAbstractConcept myConcept;
  private final BHVirtualMethodTable myVTable = new BHVirtualMethodTable();
  private final AncestorCache myAncestorCache;
  private final ConstructionHandler myConstructionHandler;

  public BaseBHDescriptor(@NotNull SAbstractConcept concept) {
    myConcept = concept;
    myAncestorCache = new AncestorCache(concept);
    myConstructionHandler = new ConstructionHandler(concept, myAncestorCache);
  }

  @Override
  public void init() {
    initVTable();
    myInitialized = true;
  }

  private void checkInitialized() {
    if (!myInitialized) {
      throw new BHNotInitializedException();
    }
  }

  private void initVTable() {
    Iterable<SAbstractConcept> ancestorIterator = myAncestorCache.getAncestorsVirtualInvocationOrder();
    for (SAbstractConcept ancestor : ancestorIterator) {
      BHDescriptor bhDescriptor = getBHDescriptor(ancestor);
      if (bhDescriptor instanceof BaseBHDescriptor) {
        ((BaseBHDescriptor) bhDescriptor).fillVTable(myVTable);
      }
    }
  }

  @NotNull
  private BHDescriptor getBHDescriptor(@NotNull SAbstractConcept concept) {
    return ConceptRegistry.getInstance().getBHDescriptor(concept);
  }

  @Override
  public final Object invoke(@Nullable SNode node, @NotNull SMethod method, Object... parameters) {
    if ((node == null) && !method.getMethodModifiers().isStatic()) {
      throw new BHNullPointerException();
    }
    if (method.getParameterCount() != parameters.length) {
      throw new BHMethodArgumentsCountDoNotMatch(method, parameters.length);
    }

    if (method == SMethod.INIT) {
      assert node != null;
      myConstructionHandler.initNode(node);
      return null;
    } else if (method.getMethodModifiers().isVirtual()) {
      BaseBHDescriptor bhDescriptor = myVTable.get(method);
      return bhDescriptor.invokeOwn(node, method, parameters);
    } else {
      if (hasOwnMethod(method)) {
        return invokeOwn(node, method, parameters);
      } else {
        Iterable<SAbstractConcept> ancestorIterator = myAncestorCache.getAncestorsVirtualInvocationOrder();
        for (SAbstractConcept ancestor : ancestorIterator) {
          BHDescriptor bhDescriptor = getBHDescriptor(ancestor);
          if (bhDescriptor instanceof BaseBHDescriptor) {
            BaseBHDescriptor bhDescriptor1 = (BaseBHDescriptor) bhDescriptor;
            if (bhDescriptor1.hasOwnMethod(method)) {
              return bhDescriptor1.invokeOwn(node, method, parameters);
            }
          }
        }
        throw new BHMethodNotFoundException(method);
      }
    }
  }

  /**
   * @generated : listing all the virtual methods; register each SMethod in the VTable (if not yet registered)
   **/
  protected abstract void fillVTable(@NotNull BHVirtualMethodTable tableToFill);

  /**
   * invokes a method without dynamic resolution
   * @generated : switch by the method; direct invocation in each case
   * @throws BHMethodNotFoundException if the method has not been found
   **/
  protected abstract Object invokeOwn(@Nullable SNode node, @NotNull SMethod method, Object... parameters);

  /**
   * @generated : switch by the method
   * @return true iff the method exists
   **/
  protected abstract boolean hasOwnMethod(@NotNull SMethod method);

  @NotNull
  @Override
  public final SAbstractConcept getConcept() {
    return myConcept;
  }

  static class BHVirtualMethodTable {
    private final Map<SMethod, BaseBHDescriptor> myTable = new HashMap<SMethod, BaseBHDescriptor>();

    public void put(@NotNull SMethod method, @NotNull BaseBHDescriptor descriptor) {
      if (!method.getMethodModifiers().isVirtual()) {
        throw new IllegalArgumentException("Method " + method + " must be virtual to be registered in the Virtual Table");
      }
      // only new virtual method implementations need to be recorded
      for (SMethod methodSeen : myTable.keySet()) {
        if (methodSeen.overrides(method)) {
          return;
        }
      }
      myTable.put(method, descriptor);
    }

    @NotNull public BaseBHDescriptor get(@NotNull SMethod method) {
      return myTable.get(method);
    }
  }

  private class ConstructionHandler {
    private final Set<SNode> myConstructed = new WeakSet<SNode>();
    private final SAbstractConcept myConcept;
    private final AncestorCache myAncestorCache;

    public ConstructionHandler(SAbstractConcept concept, AncestorCache ancestorCache) {
      myConcept = concept;
      myAncestorCache = ancestorCache;
    }

    public synchronized void initNode(@NotNull SNode node) {
      assert myConcept.equals(node.getConcept());
      if (myConstructed.contains(node)) {
        throw new AlreadyConstructedException();
      }
      for (SAbstractConcept ancestor : myAncestorCache.getAncestorsConstructionOrder()) {
        BHDescriptor ancestorDescriptor = BaseBHDescriptor.this.getBHDescriptor(ancestor);
        if (ancestorDescriptor instanceof BaseBHDescriptor) {
          ((BaseBHDescriptor) ancestorDescriptor).invokeOwn(node, SMethod.INIT);
        } else {
          // todo
        }
      }
      myConstructed.add(node);
    }

    private class AlreadyConstructedException extends RuntimeException {
    }
  }

  private static class AncestorCache {
    private final SAbstractConcept myConcept;
    private final Iterable<SAbstractConcept> myConstructorAncestors;
    private final Iterable<SAbstractConcept> myVirtualInvocationAncestors;

    public AncestorCache(SAbstractConcept concept) {
      myConcept = concept;
      myConstructorAncestors = calcConstructorAncestors();
      myVirtualInvocationAncestors = calcVirtualInvocationAncestors();
    }

    private Iterable<SAbstractConcept> calcConstructorAncestors() {
      Iterable<SAbstractConcept> ancestors = new UniqueIterator<SAbstractConcept>(new BreadthConceptHierarchyIterator(myConcept));
      List<SAbstractConcept> constructorAncestors = IterableUtil.asList(ancestors);
      Collections.reverse(constructorAncestors);
      return constructorAncestors;
    }

    private Iterable<SAbstractConcept> calcVirtualInvocationAncestors() {
      return new UniqueIterator<SAbstractConcept>(new DepthFirstConceptIterator(myConcept));
    }

    public Iterable<SAbstractConcept> getAncestorsConstructionOrder() {
      return myConstructorAncestors;
    }

    public Iterable<SAbstractConcept> getAncestorsVirtualInvocationOrder() {
      return myVirtualInvocationAncestors;
    }
  }

  private class BHNullPointerException extends NullPointerException {
  }

  // TODO
  private class BHMethodArgumentsCountDoNotMatch extends RuntimeException {
    public BHMethodArgumentsCountDoNotMatch(SMethod method, int length) {
    }
  }

  // todo
  private class BHNotInitializedException extends Throwable {
  }
}
