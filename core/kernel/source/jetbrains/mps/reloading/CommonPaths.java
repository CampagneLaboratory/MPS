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

import jetbrains.mps.ide.SystemInfo;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.FileSystemFile;
import sun.misc.Launcher;

import java.io.File;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class CommonPaths {
  private static final Logger LOG = Logger.getLogger(CommonPaths.class);

  //--------paths-----------

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

  public static List<String> getMPSPaths() {
    return itemToPath(getMPSClassPath());
  }

  public static List<String> getJDKPath() {
    return itemToPath(getJDKClassPath());
  }


  //------classpaths--------

  private static List<String> getJDKJars() {
    List<String> result = new ArrayList<String>();

    if (!SystemInfo.isMac) {
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

  public static IClassPathItem getMPSClassPath() {
    CompositeClassPathItem result = new CompositeClassPathItem();
    result.add(getBaseMPSClassPath());
    result.add(getIDEAOpenAPIJar());
    result.add(getIDEAJar());
    result.add(getIDEAUtilJar());
    result.add(getIDEAExtensionsJar());
    result.add(getLibraryJars());

    IClassPathItem kernelClassPath = getMPSKernelClassPath();
    if (kernelClassPath != null) {
      result.add(kernelClassPath);
    }

    IClassPathItem debugClassPath = getMPSDebugClassPath();
    if (debugClassPath != null) {
      result.add(debugClassPath);
    }

    IClassPathItem supportClassPath = getMPSSupportClassPath();
    if (supportClassPath != null) {
      result.add(supportClassPath);
    }

    IClassPathItem workbenchClassPath = getWorkbenchClassPath();
    if (workbenchClassPath != null) {
      result.add(getWorkbenchClassPath());
    }

    IClassPathItem svnClassPath = getSVNSupportClasspath();
    if (svnClassPath != null) {
      result.add(svnClassPath);
    }

    IClassPathItem javaConverterClassPath = getJavaConverterClasspath();
    if (javaConverterClassPath != null) {
      result.add(javaConverterClassPath);
    }

    addIfExists(result,"/lib/commons-lang/commons-lang-2.1.jar");
    addIfExists(result,"/lib/picocontainer/picocontainer.jar");
    addIfExists(result,"/lib/jdom/jdom.jar");

    addIfExists(result, "/lib/jetbrains-ideframework/annotations.jar");

    return result;
  }

  //--------private----------

  private static IClassPathItem getLibraryJars() {
    CompositeClassPathItem cp = new CompositeClassPathItem();

    String junitJar = libPath() + "junit4" + File.separator + "junit-4.1.jar";
    if (new File(junitJar).exists()) {
      cp.add(ClassPathFactory.getInstance().createFromPath(junitJar));
    }

    String log4jJar = libPath() + "log4j" + File.separator + "log4j.jar";
    if (new File(log4jJar).exists()) {
      cp.add(ClassPathFactory.getInstance().createFromPath(log4jJar));
    }

    return cp;
  }

  private static IClassPathItem getIDEAOpenAPIJar() {
    String path = getIdeaPlatformPath() + File.separator + "platform-api.jar";
    return ClassPathFactory.getInstance().createFromPath(path);
  }

  private static IClassPathItem getIDEAJar() {
    String path = getIdeaPlatformPath() + File.separator + "platform.jar";
    return ClassPathFactory.getInstance().createFromPath(path);
  }

  private static IClassPathItem getIDEAUtilJar() {
    String path = getIdeaPlatformPath() + File.separator + "util.jar";
    return ClassPathFactory.getInstance().createFromPath(path);
  }

  private static IClassPathItem getIDEAExtensionsJar() {
    String path = getIdeaPlatformPath() + File.separator + "extensions.jar";
    return ClassPathFactory.getInstance().createFromPath(path);
  }

  private static IClassPathItem getBaseMPSClassPath() {
    String path = getBaseMPSPath();

    if (path != null) {
      if (path.endsWith(".jar")) {
        try {
          return ClassPathFactory.getInstance().createFromPath(path);
        } catch (Throwable e) {
          LOG.error(e);
        }
      } else {
        return ClassPathFactory.getInstance().createFromPath(path);
      }
    }

    File file = new File(PathManager.getResourceRoot(ClassLoaderManager.class, "/" + ClassLoaderManager.class.getName().replace('.', '/') + ".class"));
    if (file.exists()) {
      return ClassPathFactory.getInstance().createFromPath(file.getAbsolutePath());
    }

    LOG.error("Can't find mps classpath");
    return null;
  }

  private static IClassPathItem getMPSKernelClassPath() {
    String supportClasses = PathManager.getHomePath() + File.separator + "core"
      + File.separator + "kernel" + File.separator + "classes";
    if (new File(supportClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(supportClasses);
    }

    return null;
  }

  private static IClassPathItem getMPSDebugClassPath() {
    String supportClasses = PathManager.getHomePath() + File.separator + "core"
      + File.separator + "kernel" + File.separator + "debug" + File.separator + "classes";
    if (new File(supportClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(supportClasses);
    }

    return null;
  }

  private static IClassPathItem getMPSSupportClassPath() {
    String supportClasses = PathManager.getHomePath() + File.separator + "MPSPlugin"
      + File.separator + "MPSSupport" + File.separator + "classes";
    if (new File(supportClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(supportClasses);
    }

    return null;
  }

  private static IClassPathItem getWorkbenchClassPath() {
    String workbenchClasses = PathManager.getHomePath() + File.separator + "workbench"
      + File.separator + "classes";
    if (new File(workbenchClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(workbenchClasses);
    }

    return null;
  }

  private static IClassPathItem getSVNSupportClasspath() {
    String workbenchClasses = PathManager.getHomePath() + File.separator + "core"
      + File.separator + "kernel"
      + File.separator + "vcs"
      + File.separator + "svn"
      + File.separator + "classes";
    if (new File(workbenchClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(workbenchClasses);
    }

    return null;
  }

  private static IClassPathItem getJavaConverterClasspath() {
    String workbenchClasses = PathManager.getHomePath() + File.separator + "core"
      + File.separator + "javaParser"
      + File.separator + "classes";
    if (new File(workbenchClasses).exists()) {
      return ClassPathFactory.getInstance().createFromPath(workbenchClasses);
    }

    return null;
  }

  //----constant paths------

  private static String libPath() {
    return PathManager.getHomePath() + File.separator + "lib"
      + File.separator;
  }

  private static String getIdeaPlatformPath() {
    return libPath() + "jetbrains-ideframework";
  }

  //--------utils-----------

  private static List<String> itemToPath(IClassPathItem cp) {
    List<String> result = new ArrayList<String>();
    for (IClassPathItem item : cp.flatten()) {
      if (item instanceof FileClassPathItem) {
        result.add(((FileClassPathItem) item).getClassPath());
      } else if (item instanceof JarFileClassPathItem) {
        result.add(((JarFileClassPathItem) item).getFile().getAbsolutePath());
      } else {
        throw new IllegalArgumentException(item.getClass().getName());
      }
    }

    return result;
  }

  private static JarFileClassPathItem findBootstrapJarByName(String name) {
    for (URL url : Launcher.getBootstrapClassPath().getURLs()) {
      try {
        File file = new File(url.toURI());

        if (!file.exists()) continue;

        if (file.getPath().endsWith(name)) {
          return new JarFileClassPathItem(new FileSystemFile(file));
        }
      } catch (URISyntaxException e) {
        LOG.error(e);
      } catch (Throwable e) {
        LOG.error(e);
      }
    }
    return null;
  }

  private static void addIfExists(CompositeClassPathItem item, String path) {
    path = PathManager.getHomePath() + path.replace('/', File.separatorChar);
    File file = new File(path);
    if (file.exists()) {
      try {
        item.add(ClassPathFactory.getInstance().createFromPath(path));
      } catch (Throwable e) {
        LOG.error(e);
      }
    }
  }

  private static void addJarForName(CompositeClassPathItem composite, String name) {
    JarFileClassPathItem rtJar = findBootstrapJarByName(name);
    if (rtJar != null) {
      composite.add(rtJar);
    } else {
      LOG.error("Can't find " + name + ". Make sure you are using JDK 5.0");
    }
  }
}
