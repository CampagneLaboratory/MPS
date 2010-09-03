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
package jetbrains.mps.smodel.search;

import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.Condition;
import jetbrains.mps.util.NameUtil;

public class IsInstanceCondition implements Condition<SNode> {
  private String myConceptFqName;

  public IsInstanceCondition(SNode node) {
    this((AbstractConceptDeclaration) node.getAdapter());
  }

  public IsInstanceCondition(AbstractConceptDeclaration conceptDeclaration) {
    this(NameUtil.nodeFQName(conceptDeclaration));
  }

  public IsInstanceCondition(String fqName) {
    myConceptFqName = fqName;
  }

  public String getConceptFqName() {
    return myConceptFqName;
  }

  public boolean met(SNode node) {
    return node.isInstanceOfConcept(myConceptFqName);
  }
}
