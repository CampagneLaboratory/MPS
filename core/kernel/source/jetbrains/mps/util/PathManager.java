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
package jetbrains.mps.util;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jdom.Document;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.io.FilenameFilter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;


public class PathManager {
  private static final Logger LOG = LogManager.getLogger(PathManager.class);

  private static final String FILE = "file";
  private static final String JAR = "jar";
  private static final String JAR_DELIMITER = "!";
  private static final String MPS_DASH = "mps-";
  private static final String DOT_JAR = ".jar";
  private static final String MODULES_PREFIX = "!/modules";

  private static final String PROTOCOL_DELIMITER = ":";
  private static final String PLUGINS_PATH = "plugins";

  private static String ourHomePath;
  private static String ourIdeaPath;

  private static final FilenameFilter MPS_JARS = new FilenameFilter() {
    @Override
    public boolean accept(File dir, String name) {
      return name.startsWith(MPS_DASH) && name.endsWith(DOT_JAR);
    }
  };

  public static String getHomePath() {
    if (ourHomePath != null) {
      return ourHomePath;
    }

    String rootPath = getContainingJar(PathManager.class);

    File root = new File(rootPath);
    root = root.getAbsoluteFile();

    if (rootPath.endsWith(".jar")) {
      // {mps_home}/lib
      root = root.getParentFile();
      if (root != null) {
        // {mps_home}
        root = root.getParentFile();
      }
    } else {
      while ((!isMpsDir(root)) && (root.getParentFile() != null)) {
        root = root.getParentFile();
      }
    }


    ourHomePath = root.getAbsolutePath();
    if (ourHomePath.equals("/")) {
      throw new IllegalStateException("cannot detect MPS location");
    }
    return ourHomePath;
  }

  private static String getContainingJar(Class aClass) {
    return getResourceRoot(aClass, "/" + aClass.getName().replace('.', '/') + ".class");
  }

  public static String getIdeaPath() {
    if (ourIdeaPath != null) {
      return ourIdeaPath;
    }

    // {idea_home}/lib/jdom.jar
    String rootPath = getContainingJar(Document.class);
    if (rootPath == null) {
      ourIdeaPath = getHomePath();
      return ourIdeaPath;
    }
    File root = new File(rootPath);
    root = root.getAbsoluteFile();

    // {idea_home}/lib
    root = root.getParentFile();
    if (root != null) {
      // {idea_home}
      root = root.getParentFile();
    }

    if (root == null) {
      ourIdeaPath = getHomePath();
    } else {
      ourIdeaPath = root.getAbsolutePath();
    }

    return ourIdeaPath;
  }

  public static String[] getHomePaths() {
    if (getHomePath().equals(getIdeaPath())) {
      return new String[]{getHomePath()};
    }
    return new String[]{getHomePath(), getIdeaPath()};
  }

  public static Collection<String> getBootstrapPaths() {
    Collection<String> paths = getBootstrapPathsIfPackaged();
    if (paths != null) return paths;
    else {
      paths = new ArrayList<String>(2);
      paths.add(getCorePath());
      paths.add(getEditorPath());
      return Collections.unmodifiableCollection(paths);
    }
  }

  @Nullable
  private static Collection<String> getBootstrapPathsIfPackaged() {
    File libDir = new File(getPackagedLibPath());
    if (libDir.exists() && libDir.isDirectory()) {
      List<String> paths = new ArrayList<String>();
      for (File jar : libDir.listFiles(MPS_JARS)) {
        paths.add(jar.getAbsolutePath() + MODULES_PREFIX);
      }
      if (paths.size() > 0) {
        return Collections.unmodifiableCollection(paths);
      }
    }
    return null;
  }

  private static String getPackagedLibPath() {
    return getHomePath() + File.separator + "lib";
  }

  public static String getLanguagesPath() {
    return getHomePath() + File.separator + "languages";
  }

  public static String getWorkbenchPath() {
    return getHomePath() + File.separator + "workbench";
  }

  public static String getCorePath() {
    return getHomePath() + File.separator + "core";
  }

  public static String getEditorPath() {
    return getHomePath() + File.separator + "editor";
  }

  private static boolean isMpsDir(File file) {
    return new File(file, "build.number").exists();
  }

  /**
   * Attempts to detect classpath entry which contains given resource
   */
  public static String getResourceRoot(Class context, String path) {
    URL url = context.getResource(path);
    if (url == null) {
      url = ClassLoader.getSystemResource(path.substring(1));
    }
    if (url == null) {
      return null;
    }
    return extractRoot(url, path);
  }

  /**
   * Attempts to extract classpath entry part from passed URL.
   */
  private static String extractRoot(URL resourceURL, String resourcePath) {
    if (!(resourcePath.startsWith("/") || resourcePath.startsWith("\\"))) {
      LOG.error("precondition failed for" + resourcePath);
      return null;
    }
    String protocol = resourceURL.getProtocol();
    String resultPath = null;

    if (FILE.equals(protocol)) {
      String path = resourceURL.getFile();
      String testPath = path.replace('\\', '/').toLowerCase();
      String testResourcePath = resourcePath.replace('\\', '/').toLowerCase();
      if (testPath.endsWith(testResourcePath)) {
        resultPath = path.substring(0, path.length() - resourcePath.length());
      }
    } else if (JAR.equals(protocol)) {
      String fullPath = resourceURL.getFile();
      int delimiter = fullPath.indexOf(JAR_DELIMITER);
      if (delimiter >= 0) {
        String archivePath = fullPath.substring(0, delimiter);
        if (archivePath.startsWith(FILE + PROTOCOL_DELIMITER)) {
          resultPath = archivePath.substring(FILE.length() + PROTOCOL_DELIMITER.length());
        }
      }
    }

    if (resultPath != null && resultPath.endsWith(File.separator)) {
      resultPath = resultPath.substring(0, resultPath.length() - 1);
    }

    resultPath = resultPath != null ? StringUtil.replace(resultPath, "%20", " ") : null;
    return resultPath;
  }

  public static String getPreInstalledPluginsPath() {
    return getHomePath() + File.separator + PLUGINS_PATH;
  }
}
