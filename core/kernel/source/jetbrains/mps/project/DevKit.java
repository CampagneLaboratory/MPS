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

import jetbrains.mps.library.ModulesMiner;
import jetbrains.mps.library.ModulesMiner.ModuleHandle;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.persistence.DevkitDescriptorPersistence;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.vfs.IFile;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class DevKit extends AbstractModule implements MPSModuleOwner {
  public static DevKit newInstance(ModuleHandle handle, MPSModuleOwner moduleOwner) {
    DevkitDescriptor descriptor = (DevkitDescriptor) handle.getDescriptor();
    assert descriptor != null;
    assert descriptor.getId() != null;

    DevKit result = new DevKit(descriptor, handle.getFile());

    DevKit registered = MPSModuleRepository.getInstance().registerModule(result, moduleOwner);
    if (registered == result) {
      result.setDevKitDescriptor(descriptor, false);
    }
    return registered;
  }

  private DevkitDescriptor myDescriptor;
  private IFile myDescriptorFile;
  private MPSModuleOwner myGenerationOnlyModelsModelOwner = this;

  private DevKit(DevkitDescriptor descriptor, IFile file) {
    myDescriptorFile = file;
    myDescriptor = descriptor;
    setModuleReference(descriptor.getModuleReference());
  }

  public IFile getDescriptorFile() {
    return myDescriptorFile;
  }

  public DevkitDescriptor getModuleDescriptor() {
    return myDescriptor;
  }

  public void setModuleDescriptor(ModuleDescriptor moduleDescriptor, boolean reloadClasses) {
    setDevKitDescriptor((DevkitDescriptor) moduleDescriptor, reloadClasses);
  }

  public void setDevKitDescriptor(DevkitDescriptor descriptor, boolean reloadClasses) {
    MPSModuleRepository moduleRepo = MPSModuleRepository.getInstance();
    ModuleRepositoryFacade.getInstance().unregisterModules(this);
    ModuleRepositoryFacade.getInstance().unregisterModules(myGenerationOnlyModelsModelOwner);

    myDescriptor = descriptor;

    if (myDescriptor.getNamespace() != null) {
      ModuleReference mp = new ModuleReference(myDescriptor.getNamespace(), myDescriptor.getId());
      setModuleReference(mp);
    }

    reloadAfterDescriptorChange();
    moduleRepo.fireModuleChanged(this);

    if (reloadClasses) {
      ClassLoaderManager.getInstance().reloadAll(new EmptyProgressMonitor());
    }

    invalidateDependencies();
  }

  public String getGeneratorOutputPath() {
    return null;
  }

  public String getTestsGeneratorOutputPath() {
    return null;
  }

  //why?   [Mihail Muhin]
  protected void reloadAfterDescriptorChange() {
    ModuleRepositoryFacade.getInstance().unregisterModules(this);
    super.reloadAfterDescriptorChange();
  }

  public void dispose() {
    ModuleRepositoryFacade.getInstance().unregisterModules(this);
    ModuleRepositoryFacade.getInstance().unregisterModules(myGenerationOnlyModelsModelOwner);

    super.dispose();
  }

  @Override
  protected ModuleDescriptor loadDescriptor() {
    return ModulesMiner.getInstance().loadModuleDescriptor(getDescriptorFile());
  }

  public List<Language> getExportedLanguages() {
    List<Language> langs = new ArrayList<Language>();
    for (ModuleReference l : myDescriptor.getExportedLanguages()) {
      ModuleReference ref = ModuleReference.fromString(l.getModuleFqName());
      Language lang = ModuleRepositoryFacade.getInstance().getModule(ref, Language.class);
      if (lang != null) {
        langs.add(lang);
      }
    }
    Collections.sort(langs, new ToStringComparator());
    return langs;
  }

  public List<Language> getAllExportedLanguages() {
    List<Language> result = new ArrayList<Language>();
    for (DevKit dk : getAllExtendedDevkits()) {
      for (Language l : dk.getExportedLanguages()) {
        if (!result.contains(l)) {
          result.add(l);
        }
      }
    }
    return result;
  }

  Iterable<ModuleReference> getExtendedDevKits_internal() {
    return myDescriptor.getExtendedDevkits();
  }

  Iterable<ModuleReference> getExportedSolutions_internal() {
    return myDescriptor.getExportedSolutions();
  }

  Iterable<ModuleReference> getExportedLanguages_internal() {
    return myDescriptor.getExportedLanguages();
  }

  public List<DevKit> getExtendedDevKits() {
    List<DevKit> result = new ArrayList<DevKit>();
    for (ModuleReference ref : myDescriptor.getExtendedDevkits()) {
      String uid = ref.getModuleFqName();
      DevKit devKit = ModuleRepositoryFacade.getInstance().getModule(uid, DevKit.class);
      if (devKit != null) {
        result.add(devKit);
      }
    }
    return result;
  }

  public List<DevKit> getAllExtendedDevkits() {
    List<DevKit> result = new ArrayList<DevKit>();
    collectDevKits(result);
    return result;
  }

  private void collectDevKits(List<DevKit> result) {
    if (result.contains(this)) return;
    result.add(this);
    for (DevKit dk : getExtendedDevKits()) {
      dk.collectDevKits(result);
    }
  }

  public List<Solution> getExportedSolutions() {
    List<Solution> result = new ArrayList<Solution>();
    for (ModuleReference ref : myDescriptor.getExportedSolutions()) {
      String uid = ref.getModuleFqName();
      Solution solution = ModuleRepositoryFacade.getInstance().getModule(uid, Solution.class);
      if (solution == null) continue;
      result.add(solution);
    }
    return result;
  }

  public List<Solution> getAllExportedSolutions() {
    List<Solution> result = new ArrayList<Solution>();
    for (DevKit dk : getAllExtendedDevkits()) {
      for (Solution s : dk.getExportedSolutions()) {
        if (result.contains(s)) continue;
        result.add(s);
      }
    }
    return result;
  }

  public List<String> getLanguageNamespaces() {
    List<String> result = new ArrayList<String>();
    for (Language l : getExportedLanguages()) {
      result.add(l.getModuleFqName());
    }
    return result;
  }

  public void save() {
    DevkitDescriptorPersistence.saveDevKitDescriptor(myDescriptorFile, getModuleDescriptor());
  }

  public String getName() {
    return myDescriptor.getNamespace();
  }

  public String toString() {
    return getName();
  }

  public boolean isHidden() {
    return false;
  }

}
