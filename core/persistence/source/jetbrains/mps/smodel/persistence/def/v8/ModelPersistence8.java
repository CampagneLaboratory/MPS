/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.smodel.persistence.def.v8;

import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.persistence.def.IHashProvider;
import jetbrains.mps.smodel.persistence.def.IModelPersistence;
import jetbrains.mps.smodel.persistence.def.IModelReader;
import jetbrains.mps.smodel.persistence.def.IModelWriter;
import jetbrains.mps.smodel.persistence.def.PersistenceUtil;
import jetbrains.mps.smodel.persistence.lines.LineContent;
import jetbrains.mps.util.xml.XMLSAXHandler;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.util.Consumer;

import java.util.List;

public class ModelPersistence8 implements IModelPersistence {

  //todo remove
  @Override
  public IModelWriter getModelWriter() {
    return null;
  }

  @Override
  public void index(char[] data, Consumer<String> consumer) {
    PersistenceUtil.index(data, consumer);
  }

  @Override
  public int getVersion() {
    return 8;
  }

  @Override
  public IModelWriter getModelWriter(@Nullable SModelHeader header) {
    return null;
  }

  @Override
  public IModelReader getModelReader() {
    return null;
  }

  @Override
  public IHashProvider getHashProvider() {
    return new HashProvider8();
  }

  @Override
  public XMLSAXHandler<ModelLoadResult> getModelReaderHandler(ModelLoadingState state, SModelHeader header) {
    return new ModelReader8Handler(state == ModelLoadingState.INTERFACE_LOADED, state == ModelLoadingState.NO_IMPLEMENTATION, header);
  }

  @Override
  public XMLSAXHandler<List<LineContent>> getLineToContentMapReaderHandler() {
    return new LineToContentMapReader8Handler();
  }


}
