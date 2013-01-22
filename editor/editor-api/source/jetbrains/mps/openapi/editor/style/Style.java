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
package jetbrains.mps.openapi.editor.style;

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;

/**
 * User: shatalin
 * Date: 12/17/12
 */
public interface Style {
  /**
   * Deprecated: should be removed after MPS 3.0
   */
  @Deprecated
  void apply(@NotNull EditorCell cell);

  void putAll(@NotNull Style style);

  <T> void set(StyleAttribute<T> attribute, T value);

  /**
   * Deprecated: should be removed after MPS 3.0
   */
  @Deprecated
  <T> void set(StyleAttribute<T> attribute, AttributeCalculator<T> valueCalculator);

  <T> T get(StyleAttribute<T> attribute);

  <T> boolean isSpecified(StyleAttribute<T> attribute);

  Iterable<StyleAttribute> getSpecifiedAttributes();

  Object rawGet(StyleAttribute attribute);

  void addListener(StyleListener l);

  void removeListener(StyleListener l);

  void add(Style child);

  void remove(Style child);

  void setParent(Style parent, Collection<StyleAttribute> inheritedAttributes);
}
