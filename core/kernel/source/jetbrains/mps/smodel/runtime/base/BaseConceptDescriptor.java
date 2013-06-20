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
package jetbrains.mps.smodel.runtime.base;

import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.ConceptKind;

import java.util.HashSet;
import java.util.Set;

public abstract class BaseConceptDescriptor implements ConceptDescriptor {
  private Set<String> propertyNamesSet;
  private Set<String> referenceNamesSet;
  private Set<String> childrenNamesSet;

  @Override
  public boolean isAssignableTo(String toConceptFqName) {
    return getAncestorsNames().contains(toConceptFqName);
  }

  @Override
  public boolean hasProperty(String name) {
    if (propertyNamesSet == null) {
      propertyNamesSet = new HashSet<String>(getPropertyNames());
    }
    return propertyNamesSet.contains(name);
  }

  @Override
  public boolean hasReference(String name) {
    if (referenceNamesSet == null) {
      referenceNamesSet = new HashSet<String>(getReferenceNames());
    }
    return referenceNamesSet.contains(name);
  }

  @Override
  public boolean hasChild(String name) {
    if (childrenNamesSet == null) {
      childrenNamesSet = new HashSet<String>(getReferenceNames());
    }
    return childrenNamesSet.contains(name);
  }

  @Override
  public ConceptKind getConceptKind() {
    Set<String> ancestors = getAncestorsNames();
    return ancestors.contains(SNodeUtil.concept_InterfacePart) ? ConceptKind.INTERFACE
        : ancestors.contains(SNodeUtil.concept_ImplementationWithStubPart) ? ConceptKind.IMPLEMENTATION_WITH_STUB
        : ancestors.contains(SNodeUtil.concept_ImplementationPart) ? ConceptKind.IMPLEMENTATION
        : ConceptKind.NORMAL;
  }

  @Override
  public boolean isUnorderedChild(String name) {
    return getUnorderedChildrenNames().contains(name);
  }
}
