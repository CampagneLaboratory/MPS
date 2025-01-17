/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.intentions;

import jetbrains.mps.util.annotation.ToRemove;

/**
 * @deprecated Replaced with {@link IntentionAspectBase}.
 * This class is used in intentions generated with MPS 3.2, we keep it for binary compatibility.
 */
@Deprecated
@ToRemove(version = 3.3)
public abstract class BaseIntentionsDescriptor {
  protected BaseIntentionsDescriptor() {

  }
  // FIXME shall pass IntentionsManager instance into init() to get populated with intentions
  public abstract void init();
}
