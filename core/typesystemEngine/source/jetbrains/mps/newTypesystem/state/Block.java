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
package jetbrains.mps.newTypesystem.state;

import com.intellij.openapi.util.Pair;
import jetbrains.mps.smodel.SNode;

import java.util.Set;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 06.12.10
 * Time: 18:23
 * To change this template use File | Settings | File Templates.
 */
public abstract class Block {
  protected State myState;
  protected String myNodeModel;
  protected String myNodeId;

  public Block(State state, String nodeModel, String nodeId) {
    myState = state;
    myNodeModel = nodeModel;
    myNodeId = nodeId;
  }

  public SNode getResolvedInput(SNode input) {
    return myState.expand(input);
  }

  public String getNodeModel() {
    return myNodeModel;
  }

  public String getNodeId() {
    return myNodeId;
  }

  public String getExpandedPresentation(State state) {
    return getPresentation();
  }

  public abstract BlockKind getBlockKind();

  public abstract String getPresentation();

  public abstract void performAction();

  public abstract Set<SNode> getInputs();

  public abstract Set<Pair<SNode, ConditionKind>> getInitialInputs();
}
