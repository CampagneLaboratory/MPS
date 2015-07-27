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
package jetbrains.mps.smodel.behaviour;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;

public final class IllegalBHDescriptor implements BHDescriptor {
  private final SAbstractConcept myConcept;

  public IllegalBHDescriptor(@NotNull SAbstractConcept concept) {
    myConcept = concept;
  }

  @Override
  public Object invoke(@Nullable SNode node, @NotNull SMethod method, Object... parameters) {
    throw new UnsupportedOperationException();
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return myConcept;
  }
}
