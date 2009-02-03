/*
 * Copyright 2003-2008 JetBrains s.r.o.
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

import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;

import java.util.Map;
import java.util.List;
import java.net.URL;
import java.io.*;

import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.util.Macros;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.logging.Logger;

public class BuiltInLibrariesReader {
  private static final Logger LOG = Logger.getLogger(BuiltInLibrariesReader.class);
  private static final String CONFIG_FILE_NAME = "CustomBuiltInLibraries.xml";
  private static final String ROOT_TAG = "libraries";
  private static final String LIBRARY_TAG = "library";
  private static final String LIBRARY_NAME_TAG = "name";
  private static final String LIBRARY_PATH_TAG = "path";

  public static void readBuiltInLibraries(Map<String, Library> libraryMap) {
    URL resource = LibraryManager.class.getResource(CONFIG_FILE_NAME);
    if (resource == null) return;
    File configFile = new File(resource.getFile());
    if (!configFile.exists()) return;

    try {
      Document document = JDOMUtil.loadDocument(configFile);
      Element element = document.getRootElement();
      List children = element.getChildren(LIBRARY_TAG);
      for (Object childObj : children) {
        Element child = (Element) childObj;
        String name = child.getAttribute(LIBRARY_NAME_TAG).getValue();
        String path = child.getAttribute(LIBRARY_PATH_TAG).getValue();
        final String realPath = Macros.mpsHomeMacros().expandPath(path, new File(PathManager.getHomePath()));

        PredefinedLibrary predefinedLibrary = new PredefinedLibrary(name) {
          @Override
          public String getPath() {
            return realPath;
          }
        };
        libraryMap.put(name, predefinedLibrary);
      }
    } catch (JDOMException e) {
      LOG.error(e);
    } catch (IOException e) {
      LOG.error(e);
    }
  }

  public static void addLibraryToConfigurationFile(String name, String path, String sourceHome) {
    try {
      File sourceFile = new File(sourceHome + File.separator + BuiltInLibrariesReader.class.getName().replace(".", File.separator) + ".java");
      if (sourceFile.exists()) {
        File configFile = new File(sourceHome + getModifiedConfigurationFile());
        configFile.createNewFile();
        write(configFile, name, path);
      }
    } catch (JDOMException e) {
      LOG.error(e);
    } catch (IOException e) {
      LOG.error(e);
    }
  }

  private static void write(File configFile, String name, String path) throws JDOMException, IOException {
    Document document;
    try {
      document = JDOMUtil.loadDocument(configFile);
    } catch (JDOMException e) {
      document = new Document();
      Element rootElement = new Element(ROOT_TAG);
      document.setRootElement(rootElement);
    }
    Element element = document.getRootElement();
    assert element.getName().equals(ROOT_TAG);
    write(element, name, path);
    JDOMUtil.writeDocument(document, configFile);
  }

  private static void write(Element element, String name, String path) {
    Element libraryElement = new Element(LIBRARY_TAG);
    libraryElement.setAttribute(LIBRARY_NAME_TAG, name);
    libraryElement.setAttribute(LIBRARY_PATH_TAG, path);
    element.addContent(libraryElement);
  }

  public static String getModifiedConfigurationFile() {
    return BuiltInLibrariesReader.class.getPackage().getName().replace(".", File.separator) + File.separator + CONFIG_FILE_NAME;
  }

  public static void main(String[] args) {
    String mpsHome = args[0];

    for (int i = 1; i < args.length; i++) {
      String param = args[i];
      String[] strings = param.split("=");

      if (!strings[0].startsWith("\"") || !strings[0].endsWith("\"") ||
        !strings[1].startsWith("\"") || !strings[1].endsWith("\"")) {
        continue;
      }

      String name = strings[0].substring(1, strings[0].length() - 1);
      String path = Macros.MPS_HOME + File.separator + strings[1].substring(1, strings[1].length() - 1);

      BuiltInLibrariesReader.addLibraryToConfigurationFile(name, path, mpsHome);
    }
  }

}
