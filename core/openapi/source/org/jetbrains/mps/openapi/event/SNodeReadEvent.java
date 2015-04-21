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
package org.jetbrains.mps.openapi.event;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.annotations.Immutable;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * PROVISIONAL API. WORK IN PROGRESS.
 * @since 3.3
 * @author Artem Tikhomirov
 */
@Immutable
public final class SNodeReadEvent {
  private final SNode myNode;

  public SNodeReadEvent(@NotNull SNode node) {
    myNode = node;
  }

  @NotNull
  public SNode getNode() {
    return myNode;
  }
}
