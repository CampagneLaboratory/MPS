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
package jetbrains.mps.openapi.editor.cells;

import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * User: shatalin
 * Date: 2/15/13
 */
public interface SubstituteAction {
  SNode getIconNode(String pattern);

  boolean isReferentPresentation();

  SNode getSourceNode();

  Object getParameterObject();

  SNode getOutputConcept();

  SNode getActionType(String pattern);

  SNode getActionType(String pattern, EditorCell contextCell);

  String getMatchingText(String pattern);

  String getVisibleMatchingText(String pattern);

  String getDescriptionText(String pattern);

  boolean canSubstituteStrictly(String pattern);

  boolean canSubstitute(String pattern);

  SNode substitute(@Nullable EditorContext context, String pattern);

  /**
   * Actions that implement fluent data entry return true, other false. Return value is false
   * in abstract implementations of this interface to maintain backward compatibility.
   * @return
   */
  boolean isFluentEntry();
}
