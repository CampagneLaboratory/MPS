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

import com.intellij.util.containers.EmptyIterable;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.stubs.javastub.classpath.ClassifierKind;
import jetbrains.mps.util.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;

/**
 * @author Kostik
 */
public class FileClassPathItem extends RealClassPathItem {
  private String myClassPath;
  private Map<String, Set<String>> mySubpackagesCache = new HashMap<String, Set<String>>();
  private Map<String, Set<String>> myAvailableClassesCache = new HashMap<String, Set<String>>();

  protected FileClassPathItem(String classPath) {
    myClassPath = classPath;
  }

  public String getClassPath() {
    checkValidity();
    return myClassPath;
  }

  public byte[] getClass(String name) {
    checkValidity();
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

    String path = myClassPath + File.separatorChar + NameUtil.pathFromNamespace(name) + MPSExtentions.DOT_CLASSFILE;
    try {
      byte[] result = null;
      InputStream inp = null;
      try {
        inp = new FileInputStream(path);
        result = ReadUtil.read(inp);
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

  public ClassifierKind getClassifierKind(String name) {
    String path = myClassPath + File.separatorChar + NameUtil.pathFromNamespace(name) + MPSExtentions.DOT_CLASSFILE;
    try {
      InputStream inp = null;
      try {
        inp = new FileInputStream(path);
        return ClassifierKind.getClassifierKind(inp);
      } finally {
        if (inp != null) {
          inp.close();
        }
      }
    } catch (IOException e) {
      return null;
    }
  }

  public URL getResource(String name) {
    checkValidity();
    try {
      File resourceFile = new File(myClassPath + File.separator + name.replace('/', File.separatorChar));
      if (!resourceFile.exists()) return null;
      return resourceFile.toURI().toURL();
    } catch (MalformedURLException e) {
      return null;
    }
  }

  public Iterable<String> getAvailableRootClasses(String namespace) {
    checkValidity();
    if (!myAvailableClassesCache.containsKey(namespace)) {
      buildCacheFor(namespace);
    }

    Set<String> start = myAvailableClassesCache.get(namespace);
    if (start == null) return new EmptyIterable<String>();
    Condition<String> cond = new Condition<String>() {
      public boolean met(String className) {
        return !isInner(className);
      }
    };
    return new ConditionalIterable<String>(start, cond);
  }

  public Iterable<String> getSubpackages(String namespace) {
    checkValidity();
    if (!mySubpackagesCache.containsKey(namespace)) {
      buildCacheFor(namespace);
    }

    Set<String> result = mySubpackagesCache.get(namespace);
    if (result == null) return new EmptyIterable<String>();
    return result;
  }

  private void buildCacheFor(String namespace) {
    namespace = InternUtil.intern(namespace);
    Set<String> subpacks = null;
    Set<String> classes = null;
    File dir = getModelDir(namespace);

    File[] files = dir.listFiles();
    if (files != null) {
      for (File file : files) {
        String name = file.getName();
        if (name.endsWith(MPSExtentions.DOT_CLASSFILE)) { //isDirectory is quite expensive operation
          if (classes == null) {
            classes = new HashSet<String>(files.length);
          }
          classes.add(name.substring(0, name.length() - MPSExtentions.DOT_CLASSFILE.length()));
        } else {
          if (file.isDirectory()) {
            if (subpacks == null) {
              subpacks = new HashSet<String>();
            }
            subpacks.add(namespace.length() > 0 ? namespace + "." + name : name);
          }
        }
      }
    }

    mySubpackagesCache.put(namespace, subpacks);
    myAvailableClassesCache.put(namespace, classes);
  }

  public long getClassesTimestamp(String namespace) {
    checkValidity();
    File dir = getModelDir(namespace);
    long result = dir.lastModified();
    if (dir.exists()) {
      for (File file : dir.listFiles()) {
        if (file.getName().endsWith(MPSExtentions.DOT_CLASSFILE)) {
          result = Math.max(result, file.lastModified());
        }
      }
    }
    return result;
  }

  public List<IClassPathItem> flatten() {
    checkValidity();
    List<IClassPathItem> result = new ArrayList<IClassPathItem>();
    result.add(this);
    return result;
  }

  @Override
  public void accept(IClassPathItemVisitor visitor) {
    checkValidity();
    visitor.visit(this);
  }

  private File getModelDir(String namespace) {
    checkValidity();
    if (namespace == null) namespace = "";
    return new File(myClassPath + File.separatorChar + NameUtil.pathFromNamespace(namespace));
  }


  public String toString() {
    return "file-cp: " + myClassPath;
  }
}
