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
import jetbrains.mps.smodel.BaseSModelDescriptor.ModelLoadResult;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.smodel.descriptor.source.ModelDataSource;
import jetbrains.mps.smodel.descriptor.source.RegularModelDataSource;
import jetbrains.mps.smodel.nodeidmap.RegularNodeIdMap;
import jetbrains.mps.smodel.persistence.def.DescriptorLoadResult;
import jetbrains.mps.smodel.persistence.def.ModelFileReadException;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.persistence.def.PersistenceVersionNotFoundException;
import jetbrains.mps.vcs.VcsMigrationUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class DefaultModelRootManager extends BaseMPSModelRootManager {
  private static final Logger LOG = Logger.getLogger(DefaultModelRootManager.class);

  @NotNull
  @Override
  public SModel loadModel(@NotNull SModelDescriptor modelDescriptor) {
    return loadModel(modelDescriptor, ModelLoadingState.FULLY_LOADED).getModel();
  }

  @NotNull
  public ModelLoadResult loadModel(final @NotNull SModelDescriptor sm, ModelLoadingState state) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    SModelReference dsmRef = dsm.getSModelReference();

    if (!dsm.getModelFile().isReadOnly() && !dsm.getModelFile().exists()) {
      SModel model = new SModel(dsmRef, new RegularNodeIdMap());
      return new ModelLoadResult(model, ModelLoadingState.FULLY_LOADED);
    }

    ModelLoadResult result;
    try {
      result = ModelPersistence.readModel(dsm.getDescriptorSModelHeader(), dsm.getModelFile(), state);
      if (result.getState() == ModelLoadingState.NOT_LOADED) {
        // TODO this is a temporary fix to enable invoking merge dialog for model with wrong markup
        if (state != ModelLoadingState.NOT_LOADED) {
          VcsMigrationUtil.getHandler().addSuspiciousModel(dsm, false);
        }

        return result;
      }
    } catch (ModelFileReadException t) {
      return handleExceptionDuringModelRead(dsm, t, false);
    } catch (PersistenceVersionNotFoundException e) {
      LOG.error("Trying to load model " + dsm.getLongName() + " from file " + dsm.getModelFile().toString(), e);
      VcsMigrationUtil.getHandler().addSuspiciousModel(dsm, false);
      StubModel model = new StubModel(dsmRef);
      return new ModelLoadResult(model, ModelLoadingState.NOT_LOADED);
    }

    SModel model = result.getModel();
    if (result.getState() == ModelLoadingState.FULLY_LOADED) {
      try {
        model.setLoading(true);
        boolean needToSave = model.updateSModelReferences() || model.updateModuleReferences();

        if (needToSave && !dsm.getModelFile().isReadOnly()) {
          SModelRepository.getInstance().markChanged(model);
        }
      } finally {
        model.setLoading(false);
      }
    }

    LOG.assertLog(model.getSModelReference().equals(dsmRef),
      "\nError loading model from file: \"" + dsm.getModelFile() + "\"\n" +
        "expected model UID     : \"" + dsmRef + "\"\n" +
        "but was UID            : \"" + model.getSModelReference() + "\"\n" +
        "the model will not be available.\n" +
        "Make sure that all project's roots and/or the model namespace is correct");
    return result;
  }

  private ModelLoadResult handleExceptionDuringModelRead(EditableSModelDescriptor modelDescriptor, RuntimeException exception, boolean isConflictStateFixed) {
    VcsMigrationUtil.getHandler().addSuspiciousModel(modelDescriptor, isConflictStateFixed);
    SModel newModel = new StubModel(modelDescriptor.getSModelReference());
    LOG.error(exception.getMessage(), newModel);
    return new ModelLoadResult(newModel, ModelLoadingState.NOT_LOADED);
  }

  @Override
  public Collection<SModelDescriptor> load(@NotNull ModelRoot root, IModule module) {
    return null;
  }

  public boolean canCreateModel(IModule module, @NotNull ModelRoot root, @NotNull SModelFqName fqName) {
    return true;
  }

  public SModelDescriptor createModel(IModule module,@NotNull ModelRoot root, @NotNull SModelFqName fqName) {
    assert root.getPrefix().length() <= 0 || fqName.getLongName().startsWith(root.getPrefix()) : "Model name should start with model root prefix";

    if (SModelRepository.getInstance().getModelDescriptor(fqName) != null) {
      LOG.error("Couldn't create new model \"" + fqName.getLongName() + "\" because such model exists");
      return null;
    }

    ModelDataSource modelSource = RegularModelDataSource.createSourceForModelUID(root, fqName);
    SModelReference ref = new SModelReference(fqName, SModelId.generate());
    return new DefaultSModelDescriptor(module,modelSource, ref, new DescriptorLoadResult());
  }

  private static SModelDescriptor getInstance(IModule module,RegularModelDataSource source, SModelReference modelReference, DescriptorLoadResult d) {
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

