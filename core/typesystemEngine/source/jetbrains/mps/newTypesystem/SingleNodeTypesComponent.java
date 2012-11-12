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
package jetbrains.mps.newTypesystem;

import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;

/**
 * Created with IntelliJ IDEA.
 * User: fyodor
 * Date: 11/12/12
 * Time: 3:24 PM
 * To change this template use File | Settings | File Templates.
 */
public class SingleNodeTypesComponent {

  protected final SNode myRootNode;
  protected final TypeCheckingContext myTypeCheckingContext;
  private final SingleTypeSystemComponent myTypeSystemComponent;

  public SingleNodeTypesComponent(TypeCheckingContext typeCheckingContext, State state) {
    myRootNode = typeCheckingContext.getNode();
    myTypeCheckingContext = typeCheckingContext;
    myTypeSystemComponent = createTypeSystemComponent(state);

  }

  protected SingleTypeSystemComponent createTypeSystemComponent(State state) {
    return new SingleTypeSystemComponent(TypeChecker.getInstance(), state, this);
  }


  protected SingleTypeSystemComponent getTypeSystemComponent() {
    return myTypeSystemComponent;
  }
}
