/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.project.structure.model;

public class ModelRoot {
  public static final String PATH = "path";
  public static final String PREFIX = "prefix";
  public static final String MANAGER = "manager";
  public static final String OLD_MANAGER = "handlerClass";

  private String myPath;
  private String myPrefix;
  private ModelRootManager myManager;
  private String myHandlerClass;

  public String getPath() {
    return myPath;
  }

  public void setPath(String path) {
    myPath = path;
  }

  public String getPrefix() {
    return myPrefix;
  }

  public void setPrefix(String prefix) {
    myPrefix = prefix;
  }

  public String getHandlerClass() {
    return myHandlerClass;
  }

  public void setHandlerClass(String handlerClass) {
    myHandlerClass = handlerClass;
  }

  public ModelRootManager getManager(){
    return myManager;
  }

  public void setManager(ModelRootManager manager) {
    myManager = manager;
  }

  public ModelRoot getCopy() {
    ModelRoot result = new ModelRoot();
    result.myPath = myPath;
    result.myPrefix = myPrefix;
    result.myHandlerClass = myHandlerClass;
    result.myManager = myManager.getCopy();

    return result;
  }
}
