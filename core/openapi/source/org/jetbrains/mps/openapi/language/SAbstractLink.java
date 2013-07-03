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

/**
 * Represents an abstract meta-definition of node connections. These can express either references or containment relationships.
 */
public interface SAbstractLink {

  /**
   * The identifier of the link within the containing concept.
   */
  String getRole();

  /**
   * The concept for the nodes that this link points to.
   */
  SAbstractConcept getTargetConcept();

  /**
   * True for references, false for containment relationships.
   */
  boolean isReference();

  /**
   * This link may contain no elements.
   */
  boolean isOptional();
}
