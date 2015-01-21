/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package org.jetbrains.mps.openapi.language;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * A descriptor of a concept. Concepts define categories for AST nodes.
 * The descriptor is read-only, so it is not possible to change the concept through its descriptor.
 * SConcept (and SAbstractConcept) can be obtained by their ids from SConceptRepository.
 * note: the relationship between SNode and SConcept is analogical to the relationship between an object and its Class in Java
 */
public interface SAbstractConcept {
  /**
   * The user visible name of the concept
   */
  String getName();

  /**
   * The language that defines the concept
   */
  SLanguage getLanguage();

  /**
   * Returns all the references this concept has, including inherited
   */
  Iterable<SReferenceLink> getReferenceLinks();

  /**
   * Returns all the links this concept has, including inherited
   * There's no "specialized links" at the compiled language level, all links are "original"
   */
  Iterable<SContainmentLink> getContainmentLinks();

  /**
     * Returns all the properties this concept has, including inherited
   */
  Iterable<SProperty> getProperties();

  /**
   * Either implementing or extending the supplied concept
   */
  boolean isSubConceptOf(SAbstractConcept concept);

  /**
   * @return <code>true</code> for interfaces and abstract concepts.
   */
  boolean isAbstract();

  /**
   * Returns the declaration node in case sources for this concept are present in IDE
   */
  @Nullable
  SNode getDeclarationNode();

  /**
   * Returns true if this concept is fully-functional. Typically, user code should not care about this
   * Can return false, for example, if the containing language is absent
   */
  boolean isValid();

  /*
   * The methods below are temporary included in openapi.
   * They will be removed when there will exist some better way to retrieve concept alias, short description and help url from generated code.
   */

  String getConceptAlias();

  String getShortDescription();

  String getHelpUrl();

  //----------deprecated------------

  @Deprecated
  String getQualifiedName();

  @Deprecated
  Iterable<SAbstractLink> getLinks();

  @Deprecated
  SProperty getProperty(String name);

  @Deprecated
  SAbstractLink getLink(String role);
}
