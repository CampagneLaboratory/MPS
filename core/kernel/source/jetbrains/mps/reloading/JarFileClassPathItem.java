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
package jetbrains.mps.reloading;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.ReadUtil;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.FileSystemFile;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.MPSExtentions;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class JarFileClassPathItem extends RealClassPathItem {
  private static final Logger LOG = Logger.getLogger(JarFileClassPathItem.class);

  private IFile myIFile;

  //computed during init
  private boolean myIsInitialized = false;
  private ZipFile myZipFile;
  private String myPrefix;
  private File myFile;

  private Map<String, ZipEntry> myEntries = new HashMap<String, ZipEntry>();
  private MyCache myCache = new MyCache();

  private static final HashSet<String> DEFAULT_VALUE = new HashSet<String>(0);

  protected JarFileClassPathItem(String path) {
    this(FileSystem.getFile(path));
  }

  protected JarFileClassPathItem(IFile file) {
    myIFile = file;
  }

  public IFile getIFile() {
    checkValidity();
    return myIFile;
  }

  public File getFile() {
    checkValidity();
    ensureInitialized();
    return myFile;
  }

  public byte[] getClass(String name) {
    checkValidity();
    ensureInitialized();
    ZipEntry entry = myEntries.get(name);
    if (entry == null) return null;
    InputStream inp = null;
    try {
      inp = myZipFile.getInputStream(entry);
      byte[] result = new byte[(int) entry.getSize()];

      ReadUtil.read(result, inp);

      return result;
    } catch (IOException e) {
      return null;
    } finally {
      if (inp != null) {
        try {
          inp.close();
        } catch (IOException e) {
          LOG.error(e);
        }
      }
    }
  }

  public URL getResource(String name) {
    checkValidity();
    ensureInitialized();
    try {
      if (myZipFile.getEntry(name) == null) return null;
      return new URL(myPrefix + name);
    } catch (MalformedURLException e) {
      return null;
    }
  }

  public void collectAvailableClasses(Set<String> classes, String namespace) {
    checkValidity();
    ensureInitialized();
    classes.addAll(myCache.getClassesSetFor(namespace));
  }

  public void collectSubpackages(Set<String> subpackages, String namespace) {
    checkValidity();
    ensureInitialized();
    subpackages.addAll(myCache.getSubpackagesSetFor(namespace));
  }

  public long getClassesTimestamp(String namespace) {
    checkValidity();
    ensureInitialized();
    long timestamp = 0;
    for (String cls : getAvailableClasses(namespace)) {
      timestamp = Math.max(timestamp, getClassTimestamp(namespace.equals("") ? cls : namespace + "." + cls));
    }
    return timestamp;
  }

  public long getTimestamp() {
    checkValidity();
    return myIFile.lastModified();
  }

  public List<IClassPathItem> flatten() {
    checkValidity();
    List<IClassPathItem> result = new ArrayList<IClassPathItem>();
    result.add(this);
    return result;
  }

  public void accept(IClassPathItemVisitor visitor) {
    checkValidity();
    visitor.visit(this);
  }

  public String toString() {
    return "jar-cp: " + myIFile;
  }

  private void ensureInitialized(){
    if (myIsInitialized) return;

    myIsInitialized = true;
    try {
      myFile = transformFile(myIFile);
      myPrefix = "jar:" + myFile.toURL() + "!/";
      myZipFile = new ZipFile(myFile);
      buildCaches();
    } catch (IOException e) {
      LOG.error(e);
    }
  }

  private long getClassTimestamp(String name) {
    String path = name.replace('.', '/') + ".class";
    ZipEntry entry = myZipFile.getEntry(path);
    assert entry != null : path;
    return entry.getTime();
  }


  private void buildCaches() {
    Iterable<? extends ZipEntry> entries = CollectionUtil.asIterable(myZipFile.entries());

    for (ZipEntry entry : entries) {
      if (entry.isDirectory()) {
        String name = entry.getName();
        if (name.endsWith("/")) {
          name = name.substring(0, name.length() - 1);
        }

        //directry having a '.' in its name can't contain classes.
        // See http://youtrack.jetbrains.net/issue/MPS-7012 for details 
        if (name.contains(".")) continue;

        String pack = name.replace('/', '.');
        buildPackageCaches(pack);
      } else {
        String name = entry.getName();

        if (!name.endsWith(MPSExtentions.DOT_CLASSFILE)) continue;

        int packEnd = name.lastIndexOf('/');
        String pack;
        String className;
        if (packEnd == -1) {
          pack = "";
          className = name.substring(0, name.length() - MPSExtentions.DOT_CLASSFILE.length());
        } else {
          pack = packEnd > 0 ? name.substring(0, packEnd).replace('/', '.') : name;
          className = name.substring(packEnd + 1, name.length() - ".class".length());
        }

        buildPackageCaches(pack);
        myCache.addClass(pack, className);

        if (pack.length() > 0) {
          myEntries.put(pack + "." + className, entry);
        } else {
          myEntries.put(className, entry);
        }
      }
    }
  }

  private void buildPackageCaches(String namespace) {
    String parent = getParentPackage(namespace);
    if (parent.equals(namespace)) return;
    myCache.addPackage(namespace, parent);
    buildPackageCaches(parent);
  }

  private String getParentPackage(String pack) {
    int lastDot = pack.lastIndexOf(".");
    if (lastDot == -1) return "";
    return pack.substring(0, lastDot);
  }

  private static File transformFile(IFile f) throws IOException {
    if (f instanceof FileSystemFile) {
      return ((FileSystemFile) f).getFile();
    }

    File tmpFile = File.createTempFile(f.getName(), "tmp");
    tmpFile.deleteOnExit();

    OutputStream os = null;
    InputStream is = null;
    try {
      is = new BufferedInputStream(f.openInputStream());
      os = new BufferedOutputStream(new FileOutputStream(tmpFile));
      int result;
      while ((result = is.read()) != -1) {
        os.write(result);
      }
    } finally {
      if (is != null) {
        is.close();
      }
      if (os != null) {
        os.close();
      }
    }

    return tmpFile;
  }

  //do not touch this class if you are not sure in your changes - this can lead to excess memory consumption (see #53513)
  private static class MyCache{
    private Map<String, Set<String>> myClasses = new HashMap<String, Set<String>>();
    private Map<String, Set<String>> mySubpackages = new HashMap<String, Set<String>>();

    public Set<String> getClassesSetFor(String pack) {
      if (!myClasses.containsKey(pack)) {
        return DEFAULT_VALUE;
      }
      return myClasses.get(pack);
    }

    public Set<String> getSubpackagesSetFor(String pack) {
      if (!mySubpackages.containsKey(pack)) {
        return DEFAULT_VALUE;
      }
      return mySubpackages.get(pack);
    }

    public void addClass(String pack, String className) {
      if (!myClasses.containsKey(pack)){
        myClasses.put(pack,new HashSet<String>(2));
      }
      myClasses.get(pack).add(className);
    }

    public void addPackage(String namespace, String pack) {
      if (!mySubpackages.containsKey(pack)){
        mySubpackages.put(pack,new HashSet<String>(2));
      }
      mySubpackages.get(pack).add(namespace);
    }
  }
}
