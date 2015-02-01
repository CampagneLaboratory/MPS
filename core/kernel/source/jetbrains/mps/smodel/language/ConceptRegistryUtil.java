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
package jetbrains.mps.smodel.language;

import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.structure.concept.SAbstractConceptAdapterById;
import jetbrains.mps.smodel.adapter.structure.concept.SConceptAdapterById;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.illegal.IllegalConceptDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class ConceptRegistryUtil {
  /**
   * Look up concept registry for specified concept
   * @param fqName qualified name of a concept to look up
   * @return <code>null</code> if concept with specified name is not found
   */
  @Nullable
  public static ConceptDescriptor getConceptDescriptor(String fqName) {
    ConceptRegistry cr = ConceptRegistry.getInstance();
    if (cr==null) return null;
    ConceptDescriptor result = cr.getConceptDescriptor(fqName);
    return result instanceof IllegalConceptDescriptor ? null : result;
  }

  /**
   * Look up concept registry for specified concept
   * @param conceptId id of a concept to look up
   * @return <code>null</code> if not found
   */
  @Nullable
  public static ConceptDescriptor getConceptDescriptor(SConceptId conceptId) {
    ConceptRegistry cr = ConceptRegistry.getInstance();
    if (cr == null) {
      return null;
    }
    ConceptDescriptor result = cr.getConceptDescriptor(conceptId);
    return result instanceof IllegalConceptDescriptor ? null : result;
  }

  @NotNull
  public static ConstraintsDescriptor getConstraintsDescriptor(SAbstractConcept concept) {
    ConceptRegistry cr = ConceptRegistry.getInstance();
    if (cr == null) {
      // FIXME WTF? non-initialized component in test doesn't justify not-null contract violation
      return null;
    }

    if (concept instanceof SAbstractConceptAdapterById) {
      return cr.getConstraintsDescriptor(((SConceptAdapterById) concept).getId());
    }
    return cr.getConstraintsDescriptor(concept.getQualifiedName());
  }
}
