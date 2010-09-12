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
package jetbrains.mps;

import com.intellij.idea.MainImpl;

import java.lang.reflect.Method;

public class MPSMainImpl {
  public static void start(final String[] args) {
    try {
      Class mainImplCls = MainImpl.class;
      Method method = mainImplCls.getDeclaredMethod("start", String[].class);
      method.setAccessible(true);
      method.invoke(null, new Object[]{args});
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
