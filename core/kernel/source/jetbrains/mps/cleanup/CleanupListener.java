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
package jetbrains.mps.cleanup;

import jetbrains.mps.util.annotation.ToRemove;

/**
 * @deprecated  Without any clear contract, add 2 dubious uses throughout MPS (BaseModelCache and BreakpointsIconCache), doesn't justify own existence
 */
@Deprecated
@ToRemove(version = 3.3)
public interface CleanupListener {
  void performCleanup();
}
