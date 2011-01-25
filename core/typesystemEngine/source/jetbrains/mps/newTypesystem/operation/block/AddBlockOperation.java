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
package jetbrains.mps.newTypesystem.operation.block;

import jetbrains.mps.newTypesystem.operation.PresentationKind;
import jetbrains.mps.newTypesystem.state.Block;
import jetbrains.mps.newTypesystem.state.BlockKind;
import jetbrains.mps.newTypesystem.state.State;
import jetbrains.mps.smodel.CopyUtil;
import jetbrains.mps.typesystem.inference.EquationInfo;

public class AddBlockOperation extends AbstractBlockOperation {
  
  public AddBlockOperation(Block block) {
    myBlock = block;
    myPresentation = "Added : [" + myBlock.getPresentation() + "]"; 
    myEquationInfo = new EquationInfo(null, " ", block.getNodeModel(), block.getNodeId());
  }

  @Override
  public String getPresentation() {
    return myPresentation;
  }

  @Override
  public String getPresentationKind() {
    if (myBlock.getBlockKind() == BlockKind.WHEN_CONCRETE) {
      return PresentationKind.WHEN_CONCRETE_ADDED;
    } else {
      return PresentationKind.RELATION_ADDED;
    }
  }

  @Override
  public void doUndo(jetbrains.mps.newTypesystem.state.State state) {
    state.removeBlockNoVars(myBlock);
  }

  @Override
  public void doRedo(jetbrains.mps.newTypesystem.state.State state) {
    state.addBlockNoVars(myBlock);
  }

  @Override
  public void execute(State state) {
    super.execute(state);
    state.collectVarsExecuteIfNecessary(myBlock);
  }
}
