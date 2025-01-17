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
package jetbrains.mps.smodel.adapter.structure.property;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.language.ConceptRegistryUtil;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.PropertyDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

public final class SPropertyAdapterById extends SPropertyAdapter {
  private final SPropertyId myPropertyId;
  private final boolean myIsBootstrap;

  public SPropertyAdapterById(@NotNull SPropertyId propertyId, @NotNull String propName) {
    this(propertyId, propName, false);
  }

  /**
   * @param bootstrap see BOOTSTRAP META OBJECTS javadoc for {@link jetbrains.mps.smodel.adapter.BootstrapAdapterFactory}
   */
  public SPropertyAdapterById(@NotNull SPropertyId propertyId, @NotNull String propName, boolean bootstrap) {
    super(propName);
    myPropertyId = propertyId;
    myIsBootstrap = bootstrap;
  }

  @NotNull
  public SPropertyId getId() {
    return myPropertyId;
  }

  @Override
  public boolean equals(Object obj) {
    if (!(obj instanceof SProperty)) return  false;
    return (obj instanceof SPropertyAdapterById) ? myPropertyId.equals(((SPropertyAdapterById) obj).myPropertyId) :
        myPropertyName.equals(((SPropertyAdapter) obj).myPropertyName);
  }

  @NotNull
  @Override
  public String getName() {
    if (RuntimeFlags.isMergeDriverMode() || myIsBootstrap) {
      return myPropertyName;
    }
    PropertyDescriptor d = getPropertyDescriptor();
    if (d == null) {
      //invalid property, needed for propertyRead event in SNode until event is rewritten
      return myPropertyName;
    }
    return d.getName();
  }

  @Override
  public PropertyDescriptor getPropertyDescriptor() {
    ConceptDescriptor cd = ConceptRegistryUtil.getConceptDescriptor(myPropertyId.getConceptId());
    if (cd == null) return null;
    return cd.getPropertyDescriptor(myPropertyId);
  }

  @Override
  protected SNode findInConcept(SNode cnode) {
    SModel model = cnode.getModel();
    return model.getNode(new SNodeId.Regular(myPropertyId.getIdValue()));
  }
}
