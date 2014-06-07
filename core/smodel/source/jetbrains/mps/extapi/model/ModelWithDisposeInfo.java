/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.extapi.model;

/**
 * Internal interface, not to be queried or implemented outside of MPS's SModel implementation.
 * FIXME update and regenerate SNodeOperations.isModelDisposed to use this interface
 * @author Artem Tikhomirov
 */
public interface ModelWithDisposeInfo {
  boolean isDisposed();
  StackTraceElement[] getDisposedStacktrace();
}
