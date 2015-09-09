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
package jetbrains.mps.core.aspects.behaviour;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SAbstractType;

import java.lang.reflect.Type;

/**
 * Represents a type which internally uses the java class
 * Intended to represent the compound type (not primitive and not enumeration)
 *
 * Created by apyshkin on 08/09/15.
 */
public interface SJavaCompoundType extends SAbstractType {
  @NotNull
  Class<?> getJavaType();
}
