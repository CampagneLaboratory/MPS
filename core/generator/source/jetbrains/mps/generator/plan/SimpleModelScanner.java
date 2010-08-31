/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.generator.plan;

import jetbrains.mps.smodel.SNode;

import java.util.List;

/**
 * Igor Alshannikov
 * Date: Apr 26, 2007
 */
class SimpleModelScanner extends AbstractModelScanner {
  public String getUsedLanguageNamespaceFromInstanceNode(SNode node) {
    return node.getLanguageNamespace();
  }

  public List<SNode> getDescendantsToScan(SNode node) {
    return node.getChildren();
  }
}
