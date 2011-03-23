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
package jetbrains.mps.newTypesystem.operation;

import jetbrains.mps.newTypesystem.state.State;

/**
 * Created by IntelliJ IDEA.
 * User: Ilya.Lintsbakh
 * Date: Oct 14, 2010
 * Time: 1:42:37 PM
 */

public class AddRemarkOperation extends AbstractOperation {
  private final String myString;
  private Runnable myAction = null;

  public AddRemarkOperation(String string) {
    myString = string;
  }

  public AddRemarkOperation(String string, Runnable runnable) {
    myString = string;
    myAction = runnable;
  }

  public AddRemarkOperation(Runnable runnable) {
    myAction = runnable;
    myString = "";
  }

  @Override
  public String getPresentation() {
    return myString;
  }

  @Override
  public void doUndo(jetbrains.mps.newTypesystem.state.State state) {
  }

  @Override
  public void doRedo(State state) {
  }

  public void execute(State state) {
    if (myAction != null) {
      myAction.run();
      myAction = null;
    }
  }

  @Override
  public boolean hasEffect() {
    return false;
  }
}
