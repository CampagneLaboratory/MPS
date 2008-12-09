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
package jetbrains.mps.util;

import javax.swing.JOptionPane;
import java.awt.Frame;
import java.io.File;

/**
 * @author Kostik
 */
public class DirectoryUtil {
  public static boolean askToCreateNewDirectory(Frame mainFrame, File dir) {
    if (!dir.exists()) {
      int result = JOptionPane.showConfirmDialog(mainFrame, "Do you want to create directory " + dir, "Directory doesn't exist", JOptionPane.YES_NO_OPTION, JOptionPane.INFORMATION_MESSAGE);
      if (result != JOptionPane.OK_OPTION) {
        return false;
      }
      dir.mkdirs();
    }
    return true;
  }
}
