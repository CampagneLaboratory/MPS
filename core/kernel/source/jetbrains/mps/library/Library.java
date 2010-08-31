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
package jetbrains.mps.library;

import com.intellij.util.xmlb.annotations.Transient;
import org.jetbrains.annotations.NotNull;

public class Library implements Cloneable {
  private String myName;
  private String myPath;

  public Library() {
  }

  public void setName(String name) {
    myName = name;
  }

  public String getName() {
    return myName;
  }

  @NotNull
  public String getPath() {
    return myPath;
  }

  public boolean canSetPath() {
    return true;
  }

  public void setPath(String path) {
    myPath = path;
  }

  public String toString() {
    return myName;
  }

  @Transient
  public boolean isPredefined() {
    return false;
  }

  @Transient
  public boolean isBootstrap() {
    return false;
  }

  public Library copy() {
    try {
      return (Library) super.clone();
    } catch (CloneNotSupportedException e) {
      throw new RuntimeException(e);
    }
  }
}
