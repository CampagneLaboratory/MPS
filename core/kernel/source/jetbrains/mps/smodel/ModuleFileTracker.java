/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import jetbrains.mps.project.IModule;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileUtils;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ModuleFileTracker {

  public static ModuleFileTracker getInstance(){
    return null;
  }

  private Map<String, IModule> myCanonicalFileToModuleMap = new ConcurrentHashMap<String, IModule>();

  public IModule getModuleByFile(IFile file) {
    return myCanonicalFileToModuleMap.get(IFileUtils.getCanonicalPath(file));
  }

  private void addCanonicalFile(@Nullable IFile file, IModule module) {
    if (file != null) {
      String canonicalDescriptorPath = IFileUtils.getCanonicalPath(file);
      if (canonicalDescriptorPath != null && !myCanonicalFileToModuleMap.containsKey(canonicalDescriptorPath)) {
        myCanonicalFileToModuleMap.put(canonicalDescriptorPath, module);
      }
    }
  }

  private void removeModuleFile(@Nullable IFile file) {
    if (file != null) {
      String canonicalPath = IFileUtils.getCanonicalPath(file);
      if (canonicalPath != null) {
        myCanonicalFileToModuleMap.remove(canonicalPath);
      }
    }
  }

  public List<IModule> findModulesUnderDir(String dirPath) {
    List<IModule> result = new ArrayList<IModule>();
    for (String path : myCanonicalFileToModuleMap.keySet()) {
      if (path.startsWith(dirPath)) {
        result.add(myCanonicalFileToModuleMap.get(path));
      }
    }
    return result;
  }


}
