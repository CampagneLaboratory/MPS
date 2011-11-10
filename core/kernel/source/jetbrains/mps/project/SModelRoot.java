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
package jetbrains.mps.project;

import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SModelFqName;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.smodel.persistence.DefaultModelRootManager;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.util.annotation.UseCarefully;

public class SModelRoot {
  private ModelRoot myModelRoot;
  private IModelRootManager myManager;

  public SModelRoot(ModelRoot root) throws ManagerNotFoundException {
    myModelRoot = root;
    myManager = createManager();
  }

  private IModelRootManager createManager() throws ManagerNotFoundException {
    if (myModelRoot.getManager() != null) {
      String moduleId = myModelRoot.getManager().getModuleId();
      String className = myModelRoot.getManager().getClassName();
      return create(moduleId, className);
    }

    return new DefaultModelRootManager();
  }

  private IModelRootManager create(String moduleId, String className) throws ManagerNotFoundException {
    IModule mod = MPSModuleRepository.getInstance().getModuleById(ModuleId.fromString(moduleId));
    if (mod == null) return null;

    if (!ClassLoaderManager.getInstance().canLoadClasses(mod)) return null;

    Class managerClass = mod.getClass(className);
    if (managerClass == null) {
      throw new ManagerNotFoundException("Manager class " + className + " not found in module " + mod.getModuleFqName());
    }

    try {
      return (IModelRootManager) managerClass.newInstance();
    } catch (Throwable t) {
      throw new ManagerNotFoundException("Problems during instantiating manager " + className, t);
    }
  }

  //this method is temporary, just to fix MPS-14489 and should be replaced since custom persistence is implemented
  @UseCarefully
  public boolean isStubModels() {
    return getModelRoot().getManager() != null;
  }

  public IModelRootManager getManager() {
    return myManager;
  }

  public String getPath() {
    return myModelRoot.getPath();
  }

  public void setPath(String newPath) {
    myModelRoot.setPath(newPath);
  }

  public String getPrefix() {
    return myModelRoot.getPrefix();
  }

  public void setPrefix(String newPrefix) {
    myModelRoot.setPrefix(newPrefix);
  }

  public void changePrefix(String newPrefix, AbstractModule owner) {
    String oldPrefix = getPrefix();
    myModelRoot.setPrefix(newPrefix);
    for (SModelDescriptor sm : owner.getOwnModelDescriptors()) {
      if (!SModelStereotype.isUserModel(sm)) continue;
      if (!(sm instanceof EditableSModelDescriptor)) continue;

      if (sm.getSModelReference().getSModelFqName().toString().startsWith(oldPrefix + ".")) {
        String suffix = sm.getSModelReference().getSModelFqName().toString().substring(oldPrefix.length());
        ((EditableSModelDescriptor) sm).rename(SModelFqName.fromString(newPrefix + suffix), false);
      }
    }
  }

  public boolean isCorrectModelFqName(SModelFqName fqName) {
    return fqName.getLongName().startsWith(getPrefix());
  }

  public ModelRoot getModelRoot() {
    return myModelRoot;
  }

  public static class ManagerNotFoundException extends Exception {
    public ManagerNotFoundException(String message) {
      super(message);
    }

    public ManagerNotFoundException(String message, Throwable cause) {
      super(message, cause);
    }
  }
}
