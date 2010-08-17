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
package jetbrains.mps.project;

import com.intellij.openapi.progress.EmptyProgressIndicator;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.persistence.DevkitDescriptorPersistence;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleOwner;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.util.ToStringComparator;
import jetbrains.mps.vfs.IFile;

import java.util.*;

public class DevKit extends AbstractModule implements MPSModuleOwner {
  private static final Logger LOG = Logger.getLogger(DevKit.class);

  public static DevKit newInstance(IFile descriptorFile, MPSModuleOwner moduleOwner) {
    DevKit result = new DevKit();

    DevkitDescriptor devKitDescriptor;
    if (descriptorFile.exists()) {
      devKitDescriptor = DevkitDescriptorPersistence.loadDevKitDescriptor(descriptorFile);
      if (devKitDescriptor.getUUID() == null) {
        devKitDescriptor.setUUID(UUID.randomUUID().toString());
        DevkitDescriptorPersistence.saveDevKitDescriptor(devKitDescriptor, descriptorFile);
      }
    } else {
      devKitDescriptor = new DevkitDescriptor();
      devKitDescriptor.setUUID(UUID.randomUUID().toString());
    }


    result.myDescriptorFile = descriptorFile;

    MPSModuleRepository repository = MPSModuleRepository.getInstance();
    if (repository.existsModule(devKitDescriptor.getModuleReference())) {
      LOG.error("Loading module " + devKitDescriptor.getNamespace() + " for the second time");
      return repository.getDevKit(devKitDescriptor.getModuleReference());
    }

    result.setDevKitDescriptor(devKitDescriptor, false);
    repository.addModule(result, moduleOwner);

    return result;
  }

  private DevkitDescriptor myDescriptor;
  private IFile myDescriptorFile;
  private MPSModuleOwner myGenerationOnlyModelsModelOwner = this;

  public DevKit() {
    
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
    moduleRepo.unRegisterModules(this);
    moduleRepo.unRegisterModules(myGenerationOnlyModelsModelOwner);

    myDescriptor = descriptor;

    if (myDescriptor.getNamespace() != null) {
      ModuleReference mp = new ModuleReference(myDescriptor.getNamespace(), myDescriptor.getUUID());
      setModuleReference(mp);
    }

    reloadAfterDescriptorChange();
    moduleRepo.fireModuleChanged(this);

    if (reloadClasses) {
      ClassLoaderManager.getInstance().reloadAll(new EmptyProgressIndicator());
    }

    invalidateDependencies();
  }

  public String getGeneratorOutputPath() {
    return null;
  }

  public String getTestsGeneratorOutputPath() {
    return null;
  }

  protected void reloadAfterDescriptorChange() {
    MPSModuleRepository.getInstance().unRegisterModules(this);
    super.reloadAfterDescriptorChange();
  }

  public void dispose() {
    super.dispose();

    SModelRepository.getInstance().unRegisterModelDescriptors(this);
    MPSModuleRepository.getInstance().unRegisterModules(this);
    MPSModuleRepository.getInstance().unRegisterModules(myGenerationOnlyModelsModelOwner);
  }

  @Override
  protected DevkitDescriptor loadDescriptor() {
    return DevkitDescriptorPersistence.loadDevKitDescriptor(getDescriptorFile());
  }

  public List<Language> getExportedLanguages() {
    List<Language> langs = new ArrayList<Language>();
    for (ModuleReference l : myDescriptor.getExportedLanguages()) {
      ModuleReference ref = ModuleReference.fromString(l.getModuleFqName());
      Language lang = MPSModuleRepository.getInstance().getLanguage(ref);
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

  public List<DevKit> getExtendedDevKits() {
    List<DevKit> result = new ArrayList<DevKit>();
    for (ModuleReference ref : myDescriptor.getExtendedDevkits()) {
      String uid = ref.getModuleFqName();
      DevKit devKit = MPSModuleRepository.getInstance().getDevKit(uid);
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
      Solution solution = MPSModuleRepository.getInstance().getSolution(uid);
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

  protected List<IModule> doGetDependOnModules() {
    List<IModule> res = super.doGetDependOnModules();
    res.addAll(getExtendedDevKits());
    res.addAll(getExportedLanguages());
    res.addAll(getExportedSolutions());
    return res;
  }

  public void save() {
    DevkitDescriptorPersistence.saveDevKitDescriptor(getModuleDescriptor(), myDescriptorFile);
  }

  public String getName() {
    return myDescriptor.getNamespace();
  }

  public String toString() {
    return getName();
  }

  public String getDevKitPluginClass() {
    return myDescriptor.getPlugin();
  }
}
