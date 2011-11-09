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
package jetbrains.mps.smodel.persistence;

import jetbrains.mps.library.ModelsMiner;
import jetbrains.mps.library.ModelsMiner.ModelHandle;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.structure.model.ModelRoot;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.descriptor.source.ModelDataSource;
import jetbrains.mps.smodel.descriptor.source.RegularModelDataSource;
import jetbrains.mps.smodel.persistence.def.DescriptorLoadResult;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class DefaultModelRootManager extends BaseMPSModelRootManager {
  private static final Logger LOG = Logger.getLogger(DefaultModelRootManager.class);

  public Collection<SModelDescriptor> load(@NotNull ModelRoot root,IModule module) {
    List<ModelHandle> models = new ArrayList<ModelHandle>();
    ModelsMiner.collectModelDescriptors(FileSystem.getInstance().getFileByPath(root.getPath()), root, models);

    List<SModelDescriptor> result = new ArrayList<SModelDescriptor>();
    for (ModelHandle handle : models) {
      SModelDescriptor modelDescriptor = getInstance(module,new RegularModelDataSource(handle.getFile()), handle.getReference(), handle.getLoadResult());
      LOG.debug("Read model descriptor " + modelDescriptor.getSModelReference() + "\n" + "Model root is " + root.getPath());
      result.add(modelDescriptor);
    }
    return result;
  }

  public boolean canCreateModel(IModule module, @NotNull ModelRoot root, @NotNull SModelFqName fqName) {
    return true;
  }

  public SModelDescriptor createModel(IModule module,@NotNull ModelRoot root, @NotNull SModelFqName fqName) {
    if (SModelRepository.getInstance().getModelDescriptor(fqName) != null) {
      LOG.error("Couldn't create new model \"" + fqName.getLongName() + "\" because such model exists");
      return null;
    }

    ModelDataSource modelSource = RegularModelDataSource.createSourceForModelUID(root, fqName);
    SModelReference ref = new SModelReference(fqName, SModelId.generate());
    return new DefaultSModelDescriptor(module,modelSource, ref, new DescriptorLoadResult());
  }

  private static SModelDescriptor getInstance(IModule module, RegularModelDataSource source, SModelReference modelReference, DescriptorLoadResult d) {
    LOG.debug("Getting model " + modelReference + " from " + source);

    SModelRepository modelRepository = SModelRepository.getInstance();
    SModelDescriptor modelDescriptor = modelRepository.getModelDescriptor(modelReference);
    if (modelDescriptor == null) return new DefaultSModelDescriptor(module,source, modelReference, d);

    //todo rewrite
    IFile newFile = source.getFile();
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) modelDescriptor;
    if (!newFile.equals(dsm.getModelFile())) {
      // file might be not the same if user, for example, moved model file using external file manager
      ((DefaultSModelDescriptor) modelDescriptor).changeModelFile(newFile);
    }

    //todo modelRepository.registerModelDescriptor(modelDescriptor);
    return modelDescriptor;
  }

}

