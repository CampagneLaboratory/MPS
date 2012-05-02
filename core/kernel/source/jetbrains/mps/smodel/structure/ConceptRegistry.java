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
package jetbrains.mps.smodel.structure;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.runtime.adapter.BehaviorDescriptorAdapter;
import org.jetbrains.annotations.Nullable;

public class ConceptRegistry {
  private static final ConceptRegistry REGISTRY = new ConceptRegistry();

  private final jetbrains.mps.smodel.language.ConceptRegistry inner = jetbrains.mps.smodel.language.ConceptRegistry.getInstance();

  private ConceptRegistry() {
  }

  public static ConceptRegistry getInstance() {
    return REGISTRY;
  }

  @Deprecated
  public BehaviorDescriptor getBehaviorDescriptorForInstanceNode(@Nullable SNode node) {
    return new BehaviorDescriptorAdapter(inner.getBehaviorDescriptorForInstanceNode(node));
  }
}
