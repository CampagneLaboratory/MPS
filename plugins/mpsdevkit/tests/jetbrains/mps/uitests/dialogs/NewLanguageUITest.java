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
package jetbrains.mps.uitests.dialogs;

import com.intellij.ide.DataManager;
import jetbrains.mps.ide.common.PathField;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.ide.newModuleDialogs.NewLanguageDialog;
import jetbrains.mps.project.Project;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.util.Computable;
import jetbrains.mps.workbench.MPSDataKeys;
import junit.extensions.jfcunit.eventdata.StringEventData;

import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import java.lang.reflect.InvocationTargetException;

public class NewLanguageUITest extends NewDialogsUITestsBase {
  public void testLanguageCreation() throws InvocationTargetException, InterruptedException {
    Project project = MPSDataKeys.MPS_PROJECT.getData(DataManager.getInstance().getDataContext());
    assertNotNull("Main project not found", project);

    final NewLanguageDialog dialog = new NewLanguageDialog(project, null);

    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        dialog.show();
      }
    });
    flushAWT();

    JTextField nameField = findTextField("Name");
    getHelper().sendString(new StringEventData(this, nameField, "myLang"));
    flushAWT();
    PathField pathField = findPathField("Path");
    boolean correctSuffix = pathField.getPath().endsWith(nameField.getText());
    assertTrue("Language suffix is not added to path", correctSuffix);

    pressButton(dialog, "OK");

    final boolean[] loaded = new boolean[1];
    ClassLoaderManager.getInstance().addReloadHandler(new ReloadAdapter() {
      @Override
      public void onAfterReload() {
        loaded[0] = true;
        ClassLoaderManager.getInstance().removeReloadHandler(this);
      }
    });

    TestUtil.conditionalWaitAndFlush(this, new Computable<Boolean>() {
      public Boolean compute() {
        return loaded[0];
      }
    });

    final Language l = dialog.getLangauge();
    assertNotNull("Language is not created", l);

    boolean isImported = myCreatedProject.getProjectModules(Language.class).contains(l);
    assertTrue("Language is not imported into project", isImported);
  }
}
