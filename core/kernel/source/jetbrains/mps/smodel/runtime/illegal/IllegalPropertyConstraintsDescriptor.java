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
package jetbrains.mps.smodel.runtime.illegal;

import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SNode;

public class IllegalPropertyConstraintsDescriptor implements PropertyConstraintsDescriptor {
  private final SProperty myProperty;
  private final ConstraintsDescriptor container;

  public IllegalPropertyConstraintsDescriptor(SProperty property, ConstraintsDescriptor container) {
    this.myProperty = property;
    this.container = container;
  }

  @Override
  public SProperty getProperty() {
    return myProperty;
  }

  @Override
  public String getName() {
    return myProperty.getName();
  }

  @Override
  public ConstraintsDescriptor getContainer() {
    return container;
  }

  @Override
  public Object getValue(SNode node) {
    return node.getProperty(myProperty);
  }

  @Override
  public void setValue(SNode node, String value) {
//    throw new UnsupportedOperationException("Unsupported set value for " + container.getContainingConcept().getId() + "." + getName() + " property");
    node.setProperty(myProperty, value);
  }

  @Override
  public boolean validateValue(SNode node, String value) {
    return false;
  }

  @Override
  public boolean isReadOnly() {
    return true;
  }
}
