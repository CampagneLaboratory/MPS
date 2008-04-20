package jetbrains.mps.make;

import jetbrains.mps.project.IModule;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.FileSystem;

import java.util.*;

public class ModuleSources {
  private static final String JAVA_SUFFIX = ".java";
  private static final String CLASS_SUFFIX = ".class";

  private IModule myModule;
  private Map<String, JavaFile> myJavaFiles = new HashMap<String, JavaFile>();
  private Map<String, ResourceFile> myResourceFiles = new HashMap<String, ResourceFile>();

  private Set<IFile> myFilesToDelete = new HashSet<IFile>();
  private Set<JavaFile> myFilesToCompile = new HashSet<JavaFile>();
  
  private Set<ResourceFile> myResourcesToCopy = new HashSet<ResourceFile>();

  ModuleSources(IModule module) {
    myModule = module;

    collectInputFilesInfo();
    collectOutputFilesInfo();
  }

  public Set<IFile> getFilesToDelete() {
    return Collections.unmodifiableSet(myFilesToDelete);
  }

  public Set<JavaFile> getFilesToCompile() {
    return Collections.unmodifiableSet(myFilesToCompile);
  }

  public Set<ResourceFile> getResourcesToCopy() {
    return Collections.unmodifiableSet(myResourcesToCopy);
  }

  public boolean isUpToDate() {
    return getFilesToDelete().isEmpty() && getFilesToCompile().isEmpty() && getResourcesToCopy().isEmpty();
  }

  private void collectInputFilesInfo() {
    for (String source : myModule.getSourcePaths()) {
      collectInput(FileSystem.getFile(source), "");
    }
  }

  private void collectInput(IFile dir, String path) {
    List<IFile> list = dir.list();
    if (list == null) return;

    for (IFile child : list) {
      if (isIgnored(child)) continue;

      if (isJavaFile(child)) {
        String className = child.getName().substring(0, child.getName().length() - JAVA_SUFFIX.length());
        String fqName = toPack(addSubPath(path, className));
        myJavaFiles.put(fqName, new JavaFile(child, fqName));
      }

      if (isResourceFile(child)) {
        String resourceName = child.getName();
        String childPath = addSubPath(path, resourceName);
        myResourceFiles.put(childPath, new ResourceFile(child, childPath));
      }

      if (child.isDirectory()) {
        collectInput(child, addSubPath(path, child.getName()));
      }
    }
  }

  private void collectOutputFilesInfo() {
    myFilesToCompile.addAll(myJavaFiles.values());
    myResourcesToCopy.addAll(myResourceFiles.values());
    collectOutput(myModule.getClassesGen(), "");
  }

  private void collectOutput(IFile current, String path) {
    List<IFile> files = current.list();
    if (files == null) return;

    for (IFile file : files) {
      if (isIgnored(file)) continue;

      if (file.isDirectory()) {
        collectOutput(file, addSubPath(path, file.getName()));
      } else {
        if (file.getName().endsWith(CLASS_SUFFIX)) {
          String containerName = file.getName().substring(0, file.getName().length() - CLASS_SUFFIX.length());
          if (containerName.contains("$")) {
            containerName = containerName.substring(0, containerName.lastIndexOf("$"));
          }
          String fqName = toPack(addSubPath(path, containerName));
          JavaFile javaFile = myJavaFiles.get(fqName);
          if (javaFile == null) {
            myFilesToDelete.add(file);
          } else if (javaFile.getFile().lastModified() < file.lastModified())   {
            myFilesToCompile.remove(javaFile);
          }
        }

        if (isResourceFile(file)) {
          String childPath = addSubPath(path, file.getName());
          ResourceFile resourceFile = myResourceFiles.get(childPath);
          if (resourceFile == null) {
            myFilesToDelete.add(file);
          } else if (resourceFile.getFile().lastModified() < file.lastModified()) {
            myResourcesToCopy.remove(resourceFile);
          }
        }
      }
    }
  }

  private boolean isIgnored(IFile file) {
    return file.isDirectory() && ".svn".equals(file.getName());
  }

  private String addSubPath(String path, String name) {
    if (path.length() > 0) {
      return path + "/" + name;
    } else {
      return name;
    }
  }

  private String toPack(String path) {
    return path.replace('/', '.');
  }

  private boolean isJavaFile(IFile file) {
    return file.isFile() && file.getName().endsWith(JAVA_SUFFIX);
  }

  private boolean isResourceFile(IFile file) {
    return file.isFile() &&
      !file.getName().endsWith(JAVA_SUFFIX) &&
      !file.getName().endsWith(CLASS_SUFFIX);
  }
}
