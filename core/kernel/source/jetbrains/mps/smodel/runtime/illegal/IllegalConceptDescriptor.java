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
package jetbrains.mps.smodel.runtime.illegal;

import jetbrains.mps.smodel.DebugRegistry;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.ids.SContainmentLinkId;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.ConceptKind;
import jetbrains.mps.smodel.runtime.LinkDescriptor;
import jetbrains.mps.smodel.runtime.PropertyDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceDescriptor;
import jetbrains.mps.smodel.runtime.StaticScope;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collections;
import java.util.List;
import java.util.Set;

public class IllegalConceptDescriptor implements ConceptDescriptor {
  private static final Logger LOG = LogManager.getLogger(IllegalConceptDescriptor.class);

  private String fqName;
  private SConceptId myConceptId;

  public IllegalConceptDescriptor(@NotNull SConceptId conceptId) {
    this(conceptId, null);
  }

  public IllegalConceptDescriptor(@NotNull String fqName) {
    this(null, fqName);
  }

  private IllegalConceptDescriptor(@Nullable SConceptId conceptId, @Nullable String fqName) {
    if (conceptId == null && fqName == null) {
      throw new IllegalArgumentException();
    }
    this.fqName = fqName == null ? DebugRegistry.getInstance().getConceptName(conceptId) : fqName;
    this.myConceptId = conceptId == null ? MetaIdFactory.INVALID_CONCEPT_ID : conceptId;

    String languageName = NameUtil.namespaceFromConceptFQName(fqName);
    SLanguageId languageId = conceptId == null ? null : conceptId.getLanguageId();
    LOG.warn("IllegalConceptDescriptor created for concept " + (fqName == null ? "" : fqName) + (conceptId == null ? "" : " with id " + conceptId) +
        ". Please check the language " + (languageName == null ? "" : languageName) + (languageId == null ? "" : " with id " + languageId) + " is built and compiled.");
  }

  @Override
  public SConceptId getId() {
    return myConceptId;
  }

  @Override
  public String getConceptFqName() {
    if (fqName == null) {
      fqName = DebugRegistry.getInstance().getConceptName(myConceptId);
    }
    return fqName == null ? MetaIdFactory.INVALID_CONCEPT_NAME : fqName;
  }

  @Override
  public String getSuperConcept() {
    return null;
  }

  @Override
  public boolean isInterfaceConcept() {
    return false;
  }

  @Override
  public Set<String> getPropertyNames() {
    return Collections.emptySet();
  }

  @Override
  public boolean hasProperty(String name) {
    return false;
  }

  @Override
  public Set<SReferenceLinkId> getReferenceIds() {
    return Collections.emptySet();
  }

  @Override
  public ReferenceDescriptor getRefDescriptor(SReferenceLinkId id) {
    return null;
  }

  @Override
  public PropertyDescriptor getPropertyDescriptor(String name) {
    return null;
  }

  @Override
  public ReferenceDescriptor getRefDescriptor(String name) {
    return null;
  }

  @Override
  public LinkDescriptor getLinkDescriptor(String name) {
    return null;
  }

  @Override
  public Set<String> getReferenceNames() {
    return Collections.emptySet();
  }

  @Override
  public boolean hasReference(String name) {
    return false;
  }

  @Override
  public Set<SContainmentLinkId> getLinkIds() {
    return Collections.emptySet();
  }

  @Override
  public LinkDescriptor getLinkDescriptor(SContainmentLinkId id) {
    return null;
  }

  @Override
  public Set<String> getChildrenNames() {
    return Collections.emptySet();
  }

  @Override
  public boolean isUnorderedChild(String name) {
    return false;
  }

  @Override
  public Set<String> getUnorderedChildrenNames() {
    return Collections.emptySet();
  }

  @Override
  public boolean hasChild(String name) {
    return false;
  }

  @Override
  public StaticScope getStaticScope() {
    return StaticScope.GLOBAL;
  }

  @Override
  public boolean isMultipleChild(String name) {
    return false;
  }

  @Override
  public List<String> getParentsNames() {
    return Collections.emptyList();
  }

  @Override
  public boolean isAssignableTo(String toConceptFqName) {
    return false;
  }

  @Override
  public Set<String> getAncestorsNames() {
    return Collections.emptySet();
  }

  @Override
  public Set<SPropertyId> getPropertyIds() {
    return Collections.emptySet();
  }

  @Override
  public PropertyDescriptor getPropertyDescriptor(SPropertyId id) {
    return null;
  }

  @Override
  public ConceptKind getConceptKind() {
    return ConceptKind.NORMAL;
  }

  @Override
  public boolean isAbstract() {
    return false;
  }

  @Override
  public boolean isFinal() {
    return false;
  }


  @Override
  public String getConceptAlias() {
    return "";
  }

  @Override
  public String getConceptShortDescription() {
    return "";
  }

  @Override
  public String getHelpUrl() {
    return "";
  }

  @Nullable
  @Override
  public SConceptId getSuperConceptId() {
    return MetaIdFactory.INVALID_CONCEPT_ID;
  }

  @Override
  public List<SConceptId> getParentsIds() {
    return Collections.emptyList();
  }
}
