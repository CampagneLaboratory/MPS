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
package jetbrains.mps;

import jetbrains.mps.ide.IdeMain;

import javax.swing.SwingUtilities;
import java.io.File;
import java.io.IOException;

import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import com.intellij.openapi.util.InvalidDataException;
import org.jdom.JDOMException;

public class Converter {
  public static void main(String[] args) throws Exception {

    convert(new File("C:/mps/app/agreement/agreementLanguage.mpr"));


  }

  private static void convert(final File mprFile) throws Exception {

    TestMain.configureMPS();
    IdeMain.setTestMode(true);

    SwingUtilities.invokeAndWait(new Runnable() {
      public void run() {
        try {
          Project project = ProjectManager.getInstance().loadAndOpenProject(mprFile.getPath());
          assert project != null;
          project.save();
          ProjectManager.getInstance().closeProject(project);
        } catch (Exception e) {
          throw new RuntimeException(e);
        }

      }
    });


  }
}
