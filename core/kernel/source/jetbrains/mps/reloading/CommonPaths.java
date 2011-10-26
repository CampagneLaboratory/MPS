/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import jetbrains.mps.ClasspathReader;
import jetbrains.mps.ClasspathReader.ClassType;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.Callback;
import jetbrains.mps.util.PathManager;
import sun.misc.Launcher;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class CommonPaths {
  private static final String OS_NAME = System.getProperty("os.name").toLowerCase();
  public static final boolean isMac = OS_NAME.startsWith("mac");

  private static final Logger LOG = Logger.getLogger(CommonPaths.class);

  //--------paths-----------

  public static List<String> getMPSPaths(ClassType... types) {
    final CompositeClassPathItem result = new CompositeClassPathItem();
    ClasspathReader.addClasses(PathManager.getHomePath(), new Callback<String>() {
      public void call(String param) {
        addIfExists(result, File.separator + param);
      }
    }, types);
    for (ClassType type : types) {
      if(type == ClassType.CORE) {
        addCoreJars(result);
      } else if (type == ClassType.EDITOR) {
        addEditorJars(result);
      } else if (type == ClassType.WORKBENCH) {
        addIdeaJars(result);
      }
    }
    return itemToPath(result);
  }

  public static List<String> getTestbenchPaths() {
    return itemToPath(getTestbenchClassPath());
  }

  public static List<String> getJDKPath() {
    return itemToPath(getJDKClassPath());
  }

  public static String getBaseMPSPath() {
    String classesPath = PathManager.getHomePath() + File.separator + "classes";
    if (new File(classesPath).exists()) {
      return classesPath;
    }
    String mpsJarPath = PathManager.getHomePath() + File.separator + "lib" + File.separatorChar + "mps.jar";
    if (new File(mpsJarPath).exists()) {
      return mpsJarPath;
    }
    return null;
  }

  //------classpaths : JDK--------

  private static List<String> getJDKJars() {
    List<String> result = new ArrayList<String>();

    if (!isMac) {
      result.add("rt.jar");
    } else {
      result.add("classes.jar");
    }

    result.add("jsse.jar");
    result.add("jce.jar");
    result.add("charsets.jar");
    return result;
  }

  public static IClassPathItem getJDKClassPath() {
    CompositeClassPathItem composite = new CompositeClassPathItem();
    for (String s : getJDKJars()) {
      addJarForName(composite, s);
    }
    return composite;
  }

  private static void addJarForName(CompositeClassPathItem composite, String name) {
    RealClassPathItem rtJar = findBootstrapJarByName(name);
    if (rtJar != null) {
      composite.add(rtJar);
    } else {
      LOG.error("Can't find " + name + ". Make sure you are using JDK 5.0");
    }
  }

  private static RealClassPathItem findBootstrapJarByName(String name) {
    for (URL url : Launcher.getBootstrapClassPath().getURLs()) {
      try {
        File file = new File(url.toURI());
        if (!file.exists()) continue;

        if (file.getName().equals(name)) {
          return ClassPathFactory.getInstance().createFromPath(file.getCanonicalPath(), "Common paths");
        }
      } catch (URISyntaxException e) {
        LOG.error(e);
      } catch (Throwable e) {
        LOG.error(e);
      }
    }
    return null;
  }

  //------classpaths : MPS--------

  public static IClassPathItem getMPSClassPath() {
    CompositeClassPathItem result = new CompositeClassPathItem();
    addCoreJars(result);
    addEditorJars(result);
    addIdeaJars(result);
    addClasses(result, PathManager.getHomePath());
    return result;
  }

  private static void addCoreJars(CompositeClassPathItem result) {
    addIfExists(result, "/lib/mps-core.jar");
    addIfExists(result, "/lib/annotations.jar");
    addIfExists(result, "/lib/log4j.jar");
    addIfExists(result, "/lib/commons-lang-2.4.jar");
    addIfExists(result, "/lib/jdom.jar");
    addIfExists(result, "/lib/ecj.jar");
  }

  private static void addEditorJars(CompositeClassPathItem result) {
    addIfExists(result, "/lib/mps-editor.jar");
  }

  private static void addIdeaJars(CompositeClassPathItem result) {
    addIfExists(result, "/lib/mps-workbench.jar");
    addIfExists(result, "/lib/platform-api.jar");
    addIfExists(result, "/lib/platform.jar");
    addIfExists(result, "/lib/execution-api.jar");
    addIfExists(result, "/lib/util.jar");
    addIfExists(result, "/lib/extensions.jar");
    addIfExists(result, "/lib/junit-4.8.2.jar");
    addIfExists(result, "/lib/picocontainer.jar");
  }

  public static void addClasses(final CompositeClassPathItem result, final String homePath) {
    ClasspathReader.addClasses(homePath, new Callback<String>() {
      public void call(String param) {
        File dir = new File(homePath, param);
        if (!dir.exists()) return;
        try {
          result.add(ClassPathFactory.getInstance().createFromPath(dir.getAbsolutePath(), "Common paths"));
        } catch (IOException e) {
          LOG.error(e);
        }
      }
    }, ClassType.values());
  }

  private static String libPath() {
    return PathManager.getHomePath() + File.separator + "lib"
      + File.separator;
  }

  //------classpaths : Testbench--------

  public static IClassPathItem getTestbenchClassPath() {
    CompositeClassPathItem result = new CompositeClassPathItem();

    addIfExists(result, "/testbench/classes");
    addIfExists(result, "/testbench/testclasses");

    return result;
  }

  private static void addIfExists(CompositeClassPathItem item, String path) {
    path = PathManager.getHomePath() + path.replace('/', File.separatorChar);
    File file = new File(path);
    if (!file.exists()) return;
    try {
      item.add(ClassPathFactory.getInstance().createFromPath(path, "Common paths"));
    } catch (Throwable e) {
      LOG.error(e);
    }
  }

  //--------utils-----------

  private static List<String> itemToPath(IClassPathItem cp) {
    List<String> result = new ArrayList<String>();
    for (IClassPathItem item : cp.flatten()) {
      if (item instanceof FileClassPathItem) {
        result.add(((FileClassPathItem) item).getPath());
      } else if (item instanceof JarFileClassPathItem) {
        result.add(((JarFileClassPathItem) item).getFile().getAbsolutePath());
      } else {
        throw new IllegalArgumentException(item.getClass().getName());
      }
    }

    return result;
  }
}
