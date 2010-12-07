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

import com.intellij.openapi.fileTypes.FileTypeManager;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.SModelRoot;
import jetbrains.mps.refactoring.StructureModificationHistory;
import jetbrains.mps.smodel.BaseSModelDescriptor.ModelLoadResult;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.smodel.nodeidmap.RegularNodeIdMap;
import jetbrains.mps.smodel.persistence.def.*;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.ModelRefCreator;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vcs.VcsMigrationUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileUtils;
import org.jetbrains.annotations.NotNull;

import java.io.*;
import java.util.List;
import java.util.Set;

/**
 * @author Kostik
 */
public class DefaultModelRootManager extends BaseMPSModelRootManager {
  private static final Logger LOG = Logger.getLogger(DefaultModelRootManager.class);

  public void updateModels(@NotNull SModelRoot root, @NotNull IModule owner) {
    readModelDescriptors(FileSystem.getInstance().getFileByPath(root.getPath()), root, owner);
  }

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
      result = ModelPersistence.readModel(dsm.getPersistenceVersion(), dsm.getModelFile(), state);
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
      LOG.error(e);
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

  @Override
  public void saveModelRefactorings(@NotNull SModelDescriptor sm, @NotNull StructureModificationHistory history) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    int persistence = dsm.getPersistenceVersion();
    if (persistence >= 5) {
      RefactoringsPersistence.save(dsm.getModelFile(), history);
    } else {
      dsm.getSModel().setRefactoringHistory(history);
    }
  }

  @Override
  public StructureModificationHistory loadModelRefactorings(@NotNull SModelDescriptor sm) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    StructureModificationHistory refactorings = RefactoringsPersistence.load(dsm.getModelFile());
    if (refactorings != null) {
      return refactorings;
    }

    if (dsm.getPersistenceVersion() < 5) {
      return RefactoringsPersistence.loadFromModel(dsm.getModelFile());
    }
    return null;
  }

  private ModelLoadResult handleExceptionDuringModelRead(EditableSModelDescriptor modelDescriptor, RuntimeException exception, boolean isConflictStateFixed) {
    VcsMigrationUtil.getHandler().addSuspiciousModel(modelDescriptor, isConflictStateFixed);
    SModel newModel = new StubModel(modelDescriptor.getSModelReference());
    LOG.error(exception.getMessage(), newModel);
    return new ModelLoadResult(newModel, ModelLoadingState.NOT_LOADED);
  }

  public boolean isFindUsagesSupported() {
    return true;
  }

  public boolean containsSomeString(@NotNull SModelDescriptor sm, @NotNull Set<String> strings) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    if (SModelRepository.getInstance().isChanged(dsm)) return true;

    IFile modelFile = dsm.getModelFile();
    if (!modelFile.exists()) return true;
    BufferedReader r = null;
    try {
      r = new BufferedReader(new InputStreamReader(modelFile.openInputStream()));
      String line;
      boolean result = false;
      while ((line = r.readLine()) != null) {
        for (String s : strings) {
          if (line.contains(s)) {
            result = true;
            break;
          }
        }
      }
      return result;
    } catch (IOException e) {
      LOG.error(e);
    } finally {
      if (r != null) {
        try {
          r.close();
        } catch (IOException e) {
          LOG.error(e);
        }
      }
    }
    return true;
  }

  public boolean isEmpty(SModelDescriptor sm) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    IFile modelFile = dsm.getModelFile();
    if (!modelFile.exists()) return true;
    Reader reader = null;
    try {
      BufferedReader r = new BufferedReader(new InputStreamReader(modelFile.openInputStream()));
      String line;
      while ((line = r.readLine()) != null) {
        if (line.contains("<node")) {
          return false;
        }
      }
    } catch (IOException e) {
      LOG.error(e);
    } finally {
      if (reader != null) {
        try {
          reader.close();
        } catch (IOException e) {
          LOG.error(e);
        }
      }
    }
    return true;
  }

  public boolean containsString(@NotNull SModelDescriptor modelDescriptor, @NotNull String string) {
    return containsSomeString(modelDescriptor, CollectionUtil.set(string));
  }

  /**
   * returns upgraded model, or null
   */
  public SModel saveModel(@NotNull SModelDescriptor sm, boolean canUpgrade) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    SModel smodel = dsm.getSModel();
    if (smodel instanceof StubModel) {
      // we do not save stub model to do not overwrite the real model
      return null;
    }
    IFile modelFile = dsm.getModelFile();
    assert modelFile != null;
    return ModelPersistence.saveModel(smodel, modelFile, true, dsm.getPersistenceVersion());
  }

  private void readModelDescriptors(IFile dir, SModelRoot modelRoot, ModelOwner owner) {
    if (FileTypeManager.getInstance().isFileIgnored(dir.getName())) return;
    if (!dir.isDirectory()) return;

    List<IFile> files = dir.list();
    for (IFile file : files) {
      String fileName = file.getName();
      boolean isMPSModel = fileName.endsWith(MPSExtentions.DOT_MODEL);
      if (!(isMPSModel)) continue;

      DescriptorLoadResult dr = ModelPersistence.loadDescriptor(file);

      SModelReference modelReference = null;
      if (dr.getUID() != null) {
        modelReference = SModelReference.fromString(dr.getUID());
      } else {
        modelReference = ModelRefCreator.createModelReference(file, FileSystem.getInstance().getFileByPath(modelRoot.getPath()), modelRoot.getPrefix());
      }


      //this code is for migration from old models (with no IDS)
      if (modelReference.getSModelId() == null) {
        modelReference = new SModelReference(modelReference.getSModelFqName(), SModelId.generate());
      }

      SModelDescriptor modelDescriptor;
      if (ModelPersistence.needsRecreating(file)) {
        modelDescriptor = recreateFileAndGetInstance(this, file.getAbsolutePath(), modelReference, owner, modelRoot, dr);
        LOG.debug("Recreated file and read model descriptor" + modelDescriptor.getSModelReference() + "\n" + "Model root is " + modelRoot.getPath() + " " + modelRoot.getPrefix());
      } else {
        modelDescriptor = getInstance(this, file.getAbsolutePath(), modelReference, dr, owner, false);
        LOG.debug("Read model descriptor " + modelDescriptor.getSModelReference() + "\n" + "Model root is " + modelRoot.getPath() + " " + modelRoot.getPrefix());
      }
    }
    for (IFile childDir : files) {
      if (childDir.isDirectory()) {
        readModelDescriptors(childDir, modelRoot, owner);
      }
    }
  }

  public boolean isNewModelsSupported() {
    return true;
  }

  @NotNull
  public SModelDescriptor createNewModel(@NotNull SModelRoot root, @NotNull SModelFqName fqName, @NotNull ModelOwner owner) {
    assert root.getPrefix().length() <= 0 || fqName.getLongName().startsWith(root.getPrefix()) : "Model name should start with model root prefix";

    IFile modelFile = createFileForModelUID(root, fqName);
    return DefaultModelRootManager.createModel(this, modelFile.getAbsolutePath(), fqName, new DescriptorLoadResult(), owner);
  }

  private IFile createFileForModelUID(SModelRoot root, SModelFqName fqName) {
    String pathPrefix = root.getPrefix();
    String path = root.getPath();

    if (pathPrefix == null) pathPrefix = "";
    if (pathPrefix.length() > 0 && !fqName.getLongName().startsWith(pathPrefix)) {
      LOG.error("Model fqName \"" + fqName + "\" doesn't match name prefix \"" + pathPrefix + "\"");
    }

    String filenameSuffix = fqName.getLongName().substring(pathPrefix.length());
    if (fqName.hasStereotype()) {
      filenameSuffix = filenameSuffix + '@' + fqName.getStereotype();
    }

    return FileSystem.getInstance().getFileByPath(path + File.separator + NameUtil.pathFromNamespace(filenameSuffix) + MPSExtentions.DOT_MODEL);
  }

  private SModelDescriptor recreateFileAndGetInstance(IModelRootManager manager, String fileName, SModelReference modelReference, ModelOwner owner, SModelRoot root, DescriptorLoadResult d) {
    SModelRepository modelRepository = SModelRepository.getInstance();
    SModelDescriptor modelDescriptor = modelRepository.getModelDescriptor(modelReference);
    if (modelDescriptor != null) {
      LOG.error("can't recreate file for already loaded descriptor " + modelReference);
      return getInstance(manager, fileName, modelReference, d, owner, false);
    }
    IFile modelFile = FileSystem.getInstance().getFileByPath(fileName);
    SModelReference newModelReference = ModelPersistence.upgradeModelUID(modelReference);
    IFile newFile = createFileForModelUID(root, newModelReference.getSModelFqName());//ModelPersistence.upgradeFile(modelFile);
    newFile.createNewFile();
    IFileUtils.copyFileContent(modelFile, newFile);
    modelFile.delete();

    return getInstance(manager, newFile.getAbsolutePath(), newModelReference, d, owner, true);
  }

  private static SModelDescriptor getInstance(IModelRootManager manager, String fileName, SModelReference modelReference, DescriptorLoadResult d, ModelOwner owner, boolean fireModelCreated) {
    LOG.debug("Getting model " + modelReference + " from " + fileName + " with owner " + owner);

    SModelRepository modelRepository = SModelRepository.getInstance();
    SModelDescriptor modelDescriptor = modelRepository.getModelDescriptor(modelReference);
    if (modelDescriptor == null) {
      IFile modelFile = FileSystem.getInstance().getFileByPath(fileName);
      DefaultSModelDescriptor md = new DefaultSModelDescriptor(manager, modelFile, modelReference, d);
      if (fireModelCreated) {
        modelRepository.createNewModel(md, owner);
      } else {
        modelRepository.registerModelDescriptor(md, owner);
      }
      return md;
    }

    IFile newFile = FileSystem.getInstance().getFileByPath(fileName);
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) modelDescriptor;
    if (!newFile.equals(dsm.getModelFile())) {
      // file might be not the same if user, for example, moved model file using external file manager
      ((DefaultSModelDescriptor) modelDescriptor).changeModelFile(newFile);
    }
    modelRepository.addOwnerForDescriptor(modelDescriptor, owner);
    return modelDescriptor;
  }

  private static SModelDescriptor createModel(IModelRootManager manager, String fileName, SModelFqName modelUID, DescriptorLoadResult d, ModelOwner owner) {
    LOG.debug("create model uid=\"" + modelUID.getLongName() + "\" file=\"" + fileName + "\" owner: " + owner);

    SModelRepository modelRepository = SModelRepository.getInstance();
    if (modelRepository.getModelDescriptor(modelUID) != null) {
      LOG.error("Couldn't create new model \"" + modelUID.getLongName() + "\" because such model exists");
    }

    DefaultSModelDescriptor modelDescriptor = new DefaultSModelDescriptor(manager, FileSystem.getInstance().getFileByPath(fileName), new SModelReference(modelUID, SModelId.generate()), d);
    SModelRepository.getInstance().createNewModel(modelDescriptor, owner);
    modelDescriptor.getSModel();
    return modelDescriptor;
  }


  public void rename(SModelDescriptor sm, SModelFqName modelFqName, boolean changeFile) {
    DefaultSModelDescriptor dsm = (DefaultSModelDescriptor) sm;
    if (!changeFile) {
      dsm.save();
      return;
    }
    IFile oldFile = dsm.getModelFile();
    SModelRoot root = ModelRootUtil.getSModelRoot(sm);
    IFile newFile = createFileForModelUID(root, modelFqName);
    newFile.getParent().mkdirs();
    newFile.createNewFile();
    dsm.changeModelFile(newFile);
    dsm.save();
    oldFile.delete();
  }
}

