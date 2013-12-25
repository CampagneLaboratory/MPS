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
package jetbrains.mps.persistence;

import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.persistence.FileBasedModelRoot;
import jetbrains.mps.extapi.persistence.FileDataSource;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.structure.model.ModelRootDescriptor;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.JavaNameUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.UnsupportedDataSourceException;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * evgeny, 11/9/12
 */
public class DefaultModelRoot extends FileBasedModelRoot {

  public DefaultModelRoot() {
    super(new String[]{SOURCE_ROOTS});
  }

  @Override
  public String getType() {
    return PersistenceRegistry.DEFAULT_MODEL_ROOT;
  }

  @Override
  public SModel getModel(SModelId id) {
    // TODO implement
    return null;
  }

  @Override
  public Iterable<SModel> loadModels() {
    List<SModel> result = new ArrayList<SModel>();
    Map<String, String> options = new HashMap<String, String>();
    String contentHome = getContentRoot();
    SModule module = getModule();
    if (module != null) {
      options.put(ModelFactory.OPTION_MODULEREF, module.getModuleReference().toString());
    }
    for (String path : getFiles(SOURCE_ROOTS)) {
      String relativePath = contentHome != null ? makeRelative(contentHome, path) : null;
      collectModels(FileSystem.getInstance().getFileByPath(path), "", relativePath, options, result);
    }
    return result;
  }

  protected static String makeRelative(String contentHome, String fullPath) {
    if ((fullPath == null || fullPath.length() == 0 || fullPath.equals(contentHome))) {
      return "";
    }
    String normalized = FileUtil.getAbsolutePath(fullPath).replace("\\", "/");
    try {
      return FileUtil.getRelativePath(normalized, contentHome, "/");
    } catch (Exception ex) {
      return null;
    }
  }

  @Override
  public boolean canCreateModels() {
    return super.canCreateModels() && !getFiles(SOURCE_ROOTS).isEmpty();
  }

  public SModel createModel(String modelName, String sourceRoot, ModelFactory factory) throws IOException {
    Map<String, String> options = new HashMap<String, String>();
    DataSource source = factory instanceof FolderModelFactory
        ? ((FolderModelFactory) factory).createNewSource(this, sourceRoot, modelName, options)
        : createSource(modelName, factory.getFileExtension(), sourceRoot, options);
    if (source == null) {
      return null;
    }
    SModel model = factory.create(source, options);
    ((SModelBase) model).setModelRoot(this);
    // TODO fix
    register(model);
    return model;
  }

  @Override
  public boolean canCreateModel(String modelName) {
    if (!canCreateModels()) {
      return false;
    }
    if (isLanguageAspectModelRoot()) {
      return isLanguageAspect(modelName, getFiles(SOURCE_ROOTS).iterator().next());
    }
    ModelFactory modelFactory = PersistenceFacade.getInstance().getModelFactory(MPSExtentions.MODEL);
    Map<String, String> options = new HashMap<String, String>();
    FileDataSource source;
    try {
      source = createSource(modelName, MPSExtentions.MODEL, null, options);
    } catch (IOException e) {
      return false;
    }
    return modelFactory.canCreate(source, options);
  }

  @Override
  public SModel createModel(String modelName) {
    ModelFactory modelFactory = PersistenceFacade.getInstance().getModelFactory(MPSExtentions.MODEL);
    try {
      return createModel(modelName, null, modelFactory);
    } catch (IOException e) {
      return null;
    }
  }

  protected final void collectModels(IFile dir, String package_, String relativePath, Map<String, String> options, Collection<SModel> models) {
    if (FileSystem.getInstance().isFileIgnored(dir.getName())) return;
    if (!dir.isDirectory()) return;

    List<IFile> files = dir.getChildren();
    options.put(ModelFactory.OPTION_PACKAGE, package_);
    for (IFile file : files) {
      String fileName = file.getName();
      String extension = FileUtil.getExtension(fileName);

      if (extension == null) continue;
      ModelFactory modelFactory = PersistenceFacade.getInstance().getModelFactory(extension);
      if (modelFactory == null || file.isDirectory()) continue;

      FileDataSource source = new FileDataSource(file, this);
      options.put(ModelFactory.OPTION_RELPATH, combinePath(relativePath, fileName));
      String fileNameWE = FileUtil.getNameWithoutExtension(fileName);
      options.put(ModelFactory.OPTION_MODELNAME, package_ != null ? (package_.isEmpty() ? fileNameWE : package_ + "." + fileNameWE) : null);
      try {
        SModel model = modelFactory.load(source, Collections.unmodifiableMap(options));
        ((SModelBase) model).setModelRoot(this);
        models.add(model);
      } catch (UnsupportedDataSourceException ex) {
        /* model factory registration problem: ignore */
      } catch (IOException ex) {
        // TODO report?
      }
    }

    options.put(ModelFactory.OPTION_RELPATH, relativePath);
    for (FolderModelFactory factory : PersistenceRegistry.getInstance().getFolderModelFactories()) {
      for (DataSource dataSource : factory.createDataSources(this, dir)) {
        try {
          SModel model = factory.load(dataSource, Collections.unmodifiableMap(options));
          ((SModelBase) model).setModelRoot(this);
          models.add(model);
        } catch (IOException e) {
          // TODO report?
        }
      }
    }

    for (IFile childDir : files) {
      if (childDir.isDirectory()) {
        String name = childDir.getName();
        String innerPackage = package_ != null && JavaNameUtil.isJavaIdentifier(name) ? (package_.isEmpty() ? name : package_ + "." + name) : null;
        String innerPath = combinePath(relativePath, name);
        collectModels(childDir, innerPackage, innerPath, options, models);
      }
    }
  }


  protected final String combinePath(String left, String right) {
    if (left == null) {
      return null;
    }
    return left.length() == 0 ? right : left + "/" + right;
  }

  @NotNull
  public FileDataSource createSource(String modelName, String extension, @Nullable String sourceRoot, Map<String, String> options) throws IOException {
    options.put(ModelFactory.OPTION_MODELNAME, modelName);
    SModule module = getModule();
    if (module != null) {
      options.put(ModelFactory.OPTION_MODULEREF, module.getModuleReference().toString());
    }
    int lastDot = modelName.lastIndexOf(".");
    options.put(ModelFactory.OPTION_PACKAGE, lastDot == -1 ? "" : modelName.substring(0, lastDot));

    Set<String> sourceRoots = new LinkedHashSet<String>(getFiles(SOURCE_ROOTS));
    if (sourceRoots.isEmpty()) {
      throw new IOException("empty list of source roots");
    }

    if (sourceRoot == null || !sourceRoots.contains(sourceRoot)) {
      sourceRoot = null;
      for (String sr : sourceRoots) {
        if (isLanguageAspectsSourceRoot(sr)) {
          String prefix = getModule().getModuleName() + ".";
          if (modelName.startsWith(prefix)) {
            String aspectName = modelName.substring(prefix.length());
            if (getAspect(aspectName) != null) {
              sourceRoot = sr;
              break;
            }
          }
          continue;
        }
        sourceRoot = sr;
        break;
      }
      if (sourceRoot == null) {
        throw new IOException("no suitable source root found");
      }
    }

    String filenameSuffix = modelName;
    if (isLanguageAspect(modelName, sourceRoot) || isGeneratorTemplateModel(modelName)) {
      filenameSuffix = NameUtil.shortNameFromLongName(filenameSuffix);
    }

    String relPath = NameUtil.pathFromNamespace(filenameSuffix) + "." + extension;
    options.put(ModelFactory.OPTION_RELPATH, relPath);
    IFile file = FileSystem.getInstance().getFileByPath(sourceRoot + File.separator + relPath);
    return new FileDataSource(file, this);
  }

  private LanguageAspect getAspect(@NotNull String aspectName) {
    if (aspectName.indexOf('.') >= 0) {
      return null;
    }
    for (LanguageAspect la : LanguageAspect.values()) {
      if (la.getName().equals(aspectName)) {
        return la;
      }
    }
    return null;
  }

  private boolean isLanguageAspect(String modelName, String sourceRoot) {
    if (!isLanguageAspectsSourceRoot(sourceRoot)) return false;
    //prefixed with language namespace
    if (!NameUtil.namespaceFromLongName(modelName).equals(getModule().getModuleName())) return false;
    //is aspect model name
    String name = NameUtil.shortNameFromLongName(modelName);
    for (LanguageAspect la : LanguageAspect.values()) {
      if (la.getName().equals(name)) return true;
    }
    return false;
  }

  public boolean isLanguageAspectsSourceRoot(String sourceRoot) {
    if (!(getModule() instanceof Language)) return false;
    return FileSystem.getInstance().getFileByPath(sourceRoot).getName().equals(Language.LANGUAGE_MODELS);
  }

  private boolean isLanguageAspectModelRoot() {
    if (!(getModule() instanceof Language)) return false;
    Collection<String> modelRoots = getFiles(SOURCE_ROOTS);
    return modelRoots.size() == 1 && isLanguageAspectsSourceRoot(modelRoots.iterator().next());
  }

  private boolean isGeneratorTemplateModel(String modelName) {
    return getModule() instanceof Generator && modelName.endsWith("@" + SModelStereotype.GENERATOR);
  }

  @Deprecated
  public ModelRootDescriptor toDescriptor() {
    ModelRootDescriptor result = new ModelRootDescriptor();
    save(result.getMemento());
    return result;
  }
}
