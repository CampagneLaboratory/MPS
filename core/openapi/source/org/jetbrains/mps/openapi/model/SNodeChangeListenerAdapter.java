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
package org.jetbrains.mps.openapi.model;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;

/**
 * Blank (no-op) implementation of {@link SNodeChangeListener}
 * @author Artem Tikhomirov
 */
public abstract class SNodeChangeListenerAdapter implements SNodeChangeListener {
  @Override
  public void propertyChanged(@NotNull SPropertyChangeEvent event) {
  }

  @Override
  public void referenceChanged(@NotNull SReferenceChangeEvent event) {
  }

  @Override
  public void nodeAdded(@NotNull SNodeAddEvent event) {
  }

  @Override
  public void nodeRemoved(@NotNull SNodeRemoveEvent event) {
  }
}
