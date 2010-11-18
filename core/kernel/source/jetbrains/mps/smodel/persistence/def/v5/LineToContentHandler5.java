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
package jetbrains.mps.smodel.persistence.def.v5;

import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.persistence.def.DefaultMPSHandler;

import java.util.List;

/**
 * @author Evgeny Gerashchenko
 * @since 11/17/10
 */
public class LineToContentHandler5 extends LineToContentMapReader5Handler implements DefaultMPSHandler {
  @Override
  public SModel getModel() {
    return null;
  }

  @Override
  public List<SNodeId> getLineToIdMap() {
    return getResult();
  }
}
