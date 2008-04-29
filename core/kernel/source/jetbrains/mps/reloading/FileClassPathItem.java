package jetbrains.mps.reloading;

import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.ReadUtil;
import jetbrains.mps.vfs.*;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;

/**
 * @author Kostik
 */
public class FileClassPathItem extends AbstractClassPathItem {    
  private String myClassPath;

  private Map<String, Set<String>> mySubpackagesCache = new HashMap<String, Set<String>>();
  private Map<String, Set<String>> myAvailableClassesCache = new HashMap<String, Set<String>>();

  public FileClassPathItem(String classPath) {
    myClassPath = classPath;
  }

  public String getClassPath() {
    return myClassPath;
  }

  public byte[] getClass(String name) {
    String namespace = NameUtil.namespaceFromLongName(name);
    String shortname = NameUtil.shortNameFromLongName(name);

    if (!myAvailableClassesCache.containsKey(namespace)) {
      buildCacheFor(namespace);
    }

    Set<String> classes = myAvailableClassesCache.get(namespace);
    if (classes == null
            || !classes.contains(shortname)) {
      return null;
    }

    String path = myClassPath + File.separatorChar + name.replace('.', File.separatorChar) + ".class";
    IFile file = FileSystem.getFile(path);
    try {
      byte[] result = new byte[(int) file.length()];
      InputStream inp = null;
      try {
        inp = file.openInputStream();
        ReadUtil.read(result, inp);
      } finally {
        if (inp != null) {
          inp.close();
        }
      }

      return result;
    } catch (IOException e) {
      return null;
    }
  }

  public URL getResource(String name) {
    try {
      //todo convert to IFiles
      File file = new File(myClassPath + File.separator + name.replace('/', File.separatorChar));
      if (!file.exists()) return null;
      return file.toURL();
    } catch (MalformedURLException e) {
      return null;
    }
  }

  @NotNull
  public Set<String> getAvailableClasses(String namespace) {
    if (!myAvailableClassesCache.containsKey(namespace)) {
      buildCacheFor(namespace);
    }

    return Collections.unmodifiableSet(myAvailableClassesCache.get(namespace));
  }

  @NotNull
  public Set<String> getSubpackages(String namespace) {
    if (!mySubpackagesCache.containsKey(namespace)) {
      buildCacheFor(namespace);
    }

    return Collections.unmodifiableSet(mySubpackagesCache.get(namespace));
  }

  private void buildCacheFor(String namespace) {
    Set<String> subpacks = new HashSet<String>();
    Set<String> classes = new HashSet<String>();
    IFile dir = getModelDir(namespace);

    List<IFile> files = dir.list();
    if (files != null) {
      for (IFile file : files) {
        String name = file.getName();
        if (!name.endsWith(".class") && file.isDirectory()) { //isDirectory is quite expensive operation
          if (namespace.length() > 0) {
            subpacks.add(namespace + "." + name);
          } else {
            subpacks.add(namespace + name);
          }
        }

        if (name.endsWith(".class")) {
          classes.add(name.substring(0, name.length() - ".class".length()));
        }
      }
    }

    mySubpackagesCache.put(namespace, subpacks);
    myAvailableClassesCache.put(namespace, classes);
  }

  public long getClassesTimestamp(String namespace) {
    IFile dir = getModelDir(namespace);
    long result = dir.lastModified();
    if (dir.exists()) {
      for (IFile file : dir.list()) {
        if (file.getName().endsWith(".class")) {
          result = Math.max(result, file.lastModified());
        }
      }
    }
    return result;
  }

  public List<IClassPathItem> flatten() {
    List<IClassPathItem> result = new ArrayList<IClassPathItem>();
    result.add(this);
    return result;
  }

  private IFile getModelDir(String namespace) {
    if (namespace == null) namespace = "";
    return FileSystem.getFile(myClassPath + File.separatorChar + namespace.replace('.', File.separatorChar));
  }


  public String toString() {
    return "file class path item " + myClassPath;
  }
}
