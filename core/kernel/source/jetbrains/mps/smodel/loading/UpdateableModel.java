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
package jetbrains.mps.smodel.loading;

import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Computable;
import org.jetbrains.annotations.Nullable;

/*
 * This class consists of 2 methods
 * getModel(state) returns model loaded up to the given state or further
 * getState() returns the state to which the model is loaded
 *
 * The aim of the class
 * When we have model write-access, all model changes are made in single thread, so there will not be any threading problems
 * The only problem appears when there are no write-actions and at least two concurring reads. In this case, the only thing
 * that can change model is loading/replacing.
 * This class has an aim to synchronize all loading processes
 */
public abstract class UpdateableModel {
  private final SModelDescriptor myDescriptor;

  private volatile ModelLoadingState myState = ModelLoadingState.NOT_LOADED;
  private volatile SModel myModel = null;

  public UpdateableModel(SModelDescriptor descriptor) {
    myDescriptor = descriptor;
  }

  public final ModelLoadingState getState() {
    return myState;
  }

  public final SModel getModel(ModelLoadingState state) {
    if (!ModelAccess.instance().canWrite()){
      synchronized (this){
        ensureLoadedTo(state);
      }
    } else{
      ensureLoadedTo(state);
    }
    return myModel;
  }

  private void ensureLoadedTo(final ModelLoadingState state) {
    if (state.ordinal() <= myState.ordinal()) return;
    myState = state;  //this is for elimination of infinite recursion

    ModelLoadResult res = NodeReadAccessCasterInEditor.runReadTransparentAction(new Computable<ModelLoadResult>() {
      public ModelLoadResult compute() {
        return UndoHelper.getInstance().runNonUndoableAction(new Computable<ModelLoadResult>() {
          public ModelLoadResult compute() {
            return doLoad(state, myModel);
          }
        });
      }
    });
    if (myModel != null) {
      myModel.setModelDescriptor(null);
    }
    myModel = res.getModel();
    myModel.setModelDescriptor(myDescriptor);
    myState = res.getState();
  }

  protected abstract ModelLoadResult doLoad(ModelLoadingState state,@Nullable SModel current);

  public void replaceWith(SModel newModel, ModelLoadingState state) {
    if (!ModelAccess.instance().canWrite()){
      synchronized (this){
        doReplace(newModel, state);
      }
    } else{
      doReplace(newModel, state);
    }
  }

  private void doReplace(SModel newModel, ModelLoadingState state) {
    myModel = newModel;
    myState = state;
  }
}
