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
package jetbrains.mps.smodel.action;

import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.Iterator;

public class RemoveSideTransformActionByConditionContext {
  private Iterator<SubstituteAction> myActions;
  private SNode mySourceNode;

  public RemoveSideTransformActionByConditionContext(Iterator<SubstituteAction> actions, SNode sourceNode) {
    myActions = actions;
    mySourceNode = sourceNode;
  }

  /**
   * Method should be removed after MPS 3.0
   *
   * @deprecated since MPS 3.0 use getSideTransformActions() instead
   */
  @Deprecated
  public Iterator<INodeSubstituteAction> getActions() {
    return (Iterator) myActions;
  }

  public Iterator<SubstituteAction> getSideTransformActions() {
    return myActions;
  }

  public SNode getSourceNode() {
    return mySourceNode;
  }
}
