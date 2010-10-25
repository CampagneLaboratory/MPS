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
package jetbrains.mps.smodel.constraints;

import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.search.EmptySearchScope;
import jetbrains.mps.smodel.search.ISearchScope;
import jetbrains.mps.smodel.search.SimpleSearchScope;
import jetbrains.mps.smodel.search.UndefinedSearchScope;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.IterableUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class BaseNodeReferenceSearchScopeProvider implements INodeReferentSearchScopeProvider {
  public Object createSearchScopeOrListOfNodes(final IOperationContext operationContext, final ReferentConstraintContext _context) {
    return new UndefinedSearchScope();
  }

  public ISearchScope createNodeReferentSearchScope(final IOperationContext operationContext, final ReferentConstraintContext _context) {
    Object searchScopeOrListOfNodes = this.createSearchScopeOrListOfNodes(operationContext, _context);
    if (searchScopeOrListOfNodes == null) {
      return new EmptySearchScope();
    }
    if (searchScopeOrListOfNodes instanceof ISearchScope) {
      return (ISearchScope) searchScopeOrListOfNodes;
    }
    if (searchScopeOrListOfNodes instanceof List) {
      CollectionUtil.checkForNulls((Iterable) searchScopeOrListOfNodes, "" + this);
      return new SimpleSearchScope((List) searchScopeOrListOfNodes);
    }
    if (searchScopeOrListOfNodes instanceof Iterable) {
      CollectionUtil.checkForNulls((Iterable) searchScopeOrListOfNodes, "" + this);
      Collection nodes = IterableUtil.asCollection((Iterable) searchScopeOrListOfNodes);
      return new SimpleSearchScope(nodes);
    }
    throw new RuntimeException("unexpected type in search-scope provider " + searchScopeOrListOfNodes.getClass());
  }

  public boolean hasPresentation() {
    return false;
  }

  public String getPresentation(IOperationContext operationContext, PresentationReferentConstraintContext _context) {
    throw new UnsupportedOperationException();
  }

  public SNodePointer getSearchScopeValidatorNodePointer() {
    return null;
  }
}
