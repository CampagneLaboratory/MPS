/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.project.ProjectPathUtil;
import jetbrains.mps.project.io.DescriptorIO;
import jetbrains.mps.project.io.DescriptorIOException;
import jetbrains.mps.project.io.DescriptorIOFacade;
import jetbrains.mps.project.persistence.DeploymentDescriptorPersistence;
import jetbrains.mps.project.persistence.ModuleReadException;
import jetbrains.mps.project.structure.modules.DeploymentDescriptor;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.project.structure.modules.GeneratorDescriptor;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.util.io.ModelInputStream;
import jetbrains.mps.util.io.ModelOutputStream;
import jetbrains.mps.vfs.FileRefresh;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Detects modules in a folder.
 * Methods of this class are not thread-safe, do not share instances of this class between threads.
 *
 * NB: we will go inside the jar if it either has a 'modules' folder (with modules (!)) or has a module.xml file in the META-INF folder
 */
public final class ModulesMiner {
  private static final Logger LOG = LogManager.getLogger(ModulesMiner.class);
  public static final String JAR = ".jar";
  public static final String META_INF = "META-INF";
  public static final String JAR_SEPARATOR = "!/";
  public static final String MODULE_XML = "module.xml";
  public static final String MODULES_DIR = "modules";
  public static final String META_INF_MODULE_XML = META_INF + "/" + MODULE_XML; // deployment descriptor resides at abc-lang.jar!/META-INF/module.xml
  public static final String SLASH_META_INF_MODULE_XML = JAR_SEPARATOR + META_INF_MODULE_XML;
  private static final String SOURCES_MODULE_DIR = "module"; // source descriptor (if packaged) resides at the abc-lang-src.jar!/module/abc-lang.msd

  // excludes is going to be updated from #processExcludes, ensure it can be changed.
  private final Set<IFile> myExcludes = new HashSet<IFile>();
  private final List<ModuleHandle> myOutcome = new ArrayList<ModuleHandle>();

  /**
   * @deprecated use {@link #ModulesMiner()} constructor} instead
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static ModulesMiner getInstance() {
    return new ModulesMiner();
  }

  public ModulesMiner() {
    this(Collections.<IFile>emptySet());
  }

  public ModulesMiner(@NotNull Collection<IFile> excludes) {
    myExcludes.addAll(excludes);
  }

  @NotNull
  public ModulesMiner collectModules(IFile dir) {
    LOG.debug("Reading modules from " + dir);
    readModuleDescriptors(dir);
    return this;
  }

  @NotNull
  public Collection<ModuleHandle> getCollectedModules() {
    return Collections.unmodifiableList(myOutcome);
  }

  @Deprecated
  @ToRemove(version = 3.3)
  public List<ModuleHandle> collectModules(IFile dir, boolean refreshFiles) {
    return collectModules(dir, null, refreshFiles);
  }

  /**
   * @deprecated use {@link #collectModules(IFile)} instead.
   *             To refresh files, use {@link FileRefresh} directly
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public List<ModuleHandle> collectModules(IFile dir, Set<IFile> excludes, boolean refreshFiles) {
    if (excludes != null) {
      myExcludes.addAll(excludes);
    }
    if (refreshFiles) {
      LOG.debug("Refreshing recursively in the " + dir);
      new FileRefresh(dir).run();
    }
    myOutcome.clear();
    collectModules(dir);
    return new ArrayList<ModuleHandle>(myOutcome);
  }

  private boolean needProcess(IFile file) {
    return !getFileSystem().isFileIgnored(file.getName()) && !myExcludes.contains(file);
  }


  private void readModuleDescriptors(IFile file) {
    if (!needProcess(file)) {
      return;
    }

    if (file.isDirectory()) {
      readModuleDescriptorsFromFolder(file);
    } else {
      readModuleDescriptorsFromFile(file);
    }
  }

  private void readModuleDescriptorsFromFile(IFile file) {
    if (!needProcess(file)) {
      return;
    }

    if (IFileUtils.isJarFile(file)) {
      readModuleDescriptorsFromFolder(file);
    } else {
      if (isSourceModuleFile(file)) {
        ModuleDescriptor moduleDescriptor = loadDescriptorOnly_internal(file);
        if (moduleDescriptor != null) {
          myOutcome.add(new ModuleHandle(file, moduleDescriptor));
        }
      }
    }
  }

  // if this is a jar dir, we need to go to modules sub dir or check for META-INF/module.xml
  // if this is just good old plain directory, we check every file in it
  private void readModuleDescriptorsFromFolder(IFile file) {
    if (!needProcess(file)) return;

    if (IFileUtils.isJarFile(file)) { // ends with .jar
      readModuleDescriptorsFromFolder(IFileUtils.stepIntoJar(file));
    } else if (file.getPath().endsWith(JAR_SEPARATOR)) { // ends with .jar/!
      IFile moduleXml = file.getDescendant(META_INF).getDescendant(MODULE_XML);
      if (moduleXml.exists() && !moduleXml.isDirectory()) {
        ModuleDescriptor moduleDescriptor = loadDeploymentDescriptor(moduleXml);
        if (moduleDescriptor != null) {
          myOutcome.add(new ModuleHandle(moduleXml, moduleDescriptor));
        }
      } else {
        IFile dirInJar = file.getDescendant(MODULES_DIR);
        if (dirInJar.exists() && dirInJar.isDirectory()) {
          readModuleDescriptorsFromFolder0(dirInJar, Location.INSIDE_THE_JAR);
        }
      }
    } else {
      readModuleDescriptorsFromFolder0(file, Location.OUTSIDE_THE_JAR);
    }
  }

  /**
   * insideTheJar == Location.INSIDE_THE_JAR whether ModulesMiner is inside some jar already
   * first, we read from files
   * this way all modules roots, sources/classes folders are in excludes and we do not even go into them
   */
  private void readModuleDescriptorsFromFolder0(IFile file, Location insideTheJar) {
    if (insideTheJar == Location.INSIDE_THE_JAR) {
      assert file.getPath().contains(JAR + JAR_SEPARATOR + MODULES_DIR); // note: we must be scanning for modules in the 'modules' directory
    }
    List<IFile> children = file.getChildren();
    ArrayList<IFile> folders = new ArrayList<IFile>();
    for (IFile child : children) {
      if (!child.isDirectory()) {
        readModuleDescriptorsFromFile(child);
      } else {
        folders.add(child);
      }
    }

    // now read from folders
    for (IFile child : folders) {
      if (insideTheJar == Location.INSIDE_THE_JAR) {
        readModuleDescriptorsFromFolder0(child, Location.INSIDE_THE_JAR);
      } else {
        readModuleDescriptorsFromFolder(child);
      }
    }
  }

  /**
   * Attempts to load module descriptor from file.
   * Updates {@link #getCollectedModules()} collection.
   * @param file descriptor file to parse for module information
   * @return handle for descriptor loaded from file
   */
  @NotNull
  public ModuleHandle loadModuleHandle(@NotNull IFile file) {
    final ModuleHandle moduleHandle = new ModuleHandle(file, loadModuleDescriptor(file));
    myOutcome.add(moduleHandle);
    return moduleHandle;
  }

  /**
   * @deprecated shall become private, clients shall use {@link #loadModuleHandle(IFile)} instead
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public ModuleDescriptor loadModuleDescriptor(IFile file) {
    String filePath = file.getPath();
    if (filePath.endsWith(SLASH_META_INF_MODULE_XML)) {
      return loadDeploymentDescriptor(file);
    } else {
      return loadSourceModuleDescriptor(file);
    }
  }

  private ModuleDescriptor loadSourceModuleDescriptor(IFile file) {
    try {
      DescriptorIO<? extends ModuleDescriptor> descriptorIO = DescriptorIOFacade.getInstance().fromFileType(file);
      return descriptorIO.readFromFile(file);
    } catch (DescriptorIOException t) {
      LOG.error("Fail to load module from descriptor " + file.getPath(), t);
      return null;
    } catch (Exception e) {
      LOG.error("Unknown error while trying to load source module descriptor " + file.getPath(), e);
      return null;
    }
  }

  /**
   * loads deployment descriptor and try to load the corresponding source module descriptor
   */
  private ModuleDescriptor loadDeploymentDescriptor(IFile file) {
    try {
      DeploymentDescriptor deploymentDescriptor = DeploymentDescriptorPersistence.loadDeploymentDescriptor(file);
      ModuleDescriptor result = null;
      IFile sourceDescriptorFile = getSourceDescriptorFile(file.getPath(), deploymentDescriptor);
      if (sourceDescriptorFile != null) {
        result = loadSourceModuleDescriptor(sourceDescriptorFile);
      }
      // TODO create module without sources
      if (result != null) {
        result.setDeploymentDescriptor(deploymentDescriptor);
        // TODO fix stubs
      }
      return result;
    } catch (ModuleReadException e) {
      LOG.error("Exception while loading a deployment descriptor from the path " + file.getPath(), e);
      return null;
    } catch (Exception e) {
      LOG.error("Unknown error while loading a deployment descriptor from the path " + file.getPath(), e);
      return null;
    }
  }

  // read a module file and update excludes set with output locations (classes, generated sources) of the module
  private ModuleDescriptor loadDescriptorOnly_internal(IFile descriptorFile) {
    ModuleDescriptor descriptor = loadModuleDescriptor(descriptorFile);
    if (descriptor != null) {
      processExcludes(descriptorFile, descriptor);
    }
    return descriptor;
  }

  private void processExcludes(@NotNull IFile descriptorFile, ModuleDescriptor descriptor) {
    // in fact, descriptorFile.isReadOnly doesn't really mean there could be no dirs to exclude
    // perhaps, there should be two distinct miners, one to look up source modules, and another one for deployed?
    if (descriptor == null || descriptorFile.isReadOnly()) {
      return;
    }

    excludeGeneratedSourcesDir(ProjectPathUtil.getGeneratorOutputPath(descriptorFile.getParent(), descriptor));
    excludeGeneratedSourcesDir(ProjectPathUtil.getGeneratorTestsOutputPath(descriptorFile, descriptor));
    excludeIdeaClassesGen(descriptorFile, descriptor);
    excludeClassesGen(descriptorFile, descriptor);

    for (String p : descriptor.getSourcePaths()) {
      myExcludes.add(getFileSystem().getFileByPath(p));
    }

    for (String entry : descriptor.getAdditionalJavaStubPaths()) {
      myExcludes.add(getFileSystem().getFileByPath(entry));
    }

    if (descriptor instanceof LanguageDescriptor) {
      for (GeneratorDescriptor generator : ((LanguageDescriptor) descriptor).getGenerators()) {
        processExcludes(descriptorFile, generator);
      }
    }
  }

  private void excludeGeneratedSourcesDir(IFile sourceDir) {
    if (sourceDir != null) {
      myExcludes.add(sourceDir);
      // todo: why?
      if (!sourceDir.isReadOnly()) {
        myExcludes.add(getFileSystem().getFileByPath(FileGenerationUtil.getCachesPath(sourceDir.getPath())));
      }
    }
  }

  private void excludeClassesGen(IFile descriptorFile, ModuleDescriptor descriptor) {
    IFile classesGen = ProjectPathUtil.getClassesGenFolder(descriptorFile, descriptor instanceof GeneratorDescriptor);
    if (classesGen != null) {
      myExcludes.add(classesGen);
    }
  }

  private void excludeIdeaClassesGen(IFile descriptorFile, ModuleDescriptor descriptor) {
    IFile classesDir = ProjectPathUtil.getClassesFolder(descriptorFile);
    if (classesDir != null) {
      myExcludes.add(classesDir);
    }
  }

  static boolean isSourceModuleFile(IFile file) {
    return !file.isDirectory() && DescriptorIOFacade.getInstance().fromFileType(file) != null;
  }

  /**
   * @param deploymentFile -- the path to deployment descriptor
   */
  @Nullable
  public static IFile getSourceDescriptorFile(@NotNull String deploymentFile, @NotNull DeploymentDescriptor deploymentDescriptor) {
    if (deploymentDescriptor.getSourcesJar() != null) {
      IFile moduleJar = FileSystem.getInstance().getFileByPath(deploymentFile.substring(0, deploymentFile.length() - SLASH_META_INF_MODULE_XML.length()));
      IFile sourcesJar = moduleJar.getParent().getDescendant(deploymentDescriptor.getSourcesJar());
      if (sourcesJar.exists() && deploymentDescriptor.getDescriptorFile() != null) {
        return FileSystem.getInstance().getFileByPath(sourcesJar.getPath() + JAR_SEPARATOR + SOURCES_MODULE_DIR + "/" + deploymentDescriptor.getDescriptorFile());
      }
    }
    return null;
  }

  @NotNull
  private static FileSystem getFileSystem() {
    return FileSystem.getInstance();
  }

  public void saveHandle(@NotNull ModuleHandle handle, ModelOutputStream stream) throws IOException {
    stream.writeShort(0x1be0);
    stream.writeString(handle.file.getPath());
    if (handle.descriptor instanceof LanguageDescriptor) {
      stream.writeByte(1);
    } else if (handle.descriptor instanceof SolutionDescriptor) {
      stream.writeByte(2);
    } else if (handle.descriptor instanceof DevkitDescriptor) {
      stream.writeByte(3);
    } else {
      throw new IllegalArgumentException("unknown module!");
    }
    handle.descriptor.save(stream);
  }

  public ModuleHandle loadHandle(ModelInputStream stream) throws IOException {
    if (stream.readShort() != 0x1be0) throw new IOException("bad stream: no start marker");
    String file = stream.readString();
    ModuleDescriptor descriptor;
    int type = stream.readByte();
    if (type == 1) {
      descriptor = new LanguageDescriptor();
    } else if (type == 2) {
      descriptor = new SolutionDescriptor();
    } else if (type == 3) {
      descriptor = new DevkitDescriptor();
    } else {
      throw new IOException("broken stream: invalid descriptor type");
    }
    descriptor.load(stream);
    return new ModuleHandle(getFileSystem().getFileByPath(file), descriptor);
  }

  public static class ModuleHandle {
    private final IFile file;
    private final ModuleDescriptor descriptor;

    public ModuleHandle(IFile file, ModuleDescriptor descriptor) {
      this.file = file;
      this.descriptor = descriptor;
    }

    @NotNull
    public IFile getFile() {
      return file;
    }

    @Nullable
    public ModuleDescriptor getDescriptor() {
      return descriptor;
    }

    @Override
    public String toString() {
      return descriptor.getNamespace();
    }
  }

  private enum Location {
    INSIDE_THE_JAR,
    OUTSIDE_THE_JAR;
  }
}
