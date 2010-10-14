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
package jetbrains.mps.lang.structure.editor;

import jetbrains.mps.ide.ui.filechoosers.treefilechooser.TreeFileChooser;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Macros;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;

import javax.swing.*;
import java.awt.Component;
import java.awt.event.ActionEvent;
import java.io.File;


public class EditorUtil {
  public static JComponent createSelectIconButton(SNode sourceNode, final EditorContext context) {
    return createSelectIconButton(sourceNode, ConceptDeclaration.ICON_PATH, context);
  }

  public static JComponent createSelectIconButton(final SNode sourceNode, final String propertyName, final EditorContext context) {

    IModule module = findAnchorModule(sourceNode);

    final Macros macros = Macros.moduleDescriptor(module);

    String path = sourceNode.getProperty(propertyName);
    final IModule finalModule = module;
    String filename = finalModule == null ? null : macros.expandPath(path, finalModule.getDescriptorFile());
    final File baseFile = filename == null ? null : new File(filename);
    final JButton button = new JButton();
    button.setAction(new AbstractAction("...") {
      public void actionPerformed(ActionEvent e) {
        Component root = SwingUtilities.getRoot(button);
        JFrame frame = root instanceof JFrame ? (JFrame) root : null;
        TreeFileChooser chooser = new TreeFileChooser();

        chooser.setContext(context.getOperationContext());

        if (baseFile != null && baseFile.exists()) {
          chooser.setInitialFile(FileSystem.getInstance().getFileByPath(baseFile.getAbsolutePath()));
        }

        IFile result = chooser.showDialog(frame);
        if (result == null) return;

        String selectedPath = result.getAbsolutePath();
        final String pathToShow;
        if (finalModule != null) {
          pathToShow = macros.shrinkPath(selectedPath, finalModule.getDescriptorFile());
        } else {
          pathToShow = selectedPath;
        }

        ModelAccess.instance().runWriteActionInCommand(new Runnable() {
          public void run() {
            sourceNode.setProperty(propertyName, pathToShow);
          }
        });
      }
    });
    return button;
  }

  public static String expandIconPath(String path, SNode sourceNode) {
    IModule module = findAnchorModule(sourceNode);
    final Macros macros = Macros.moduleDescriptor(module);
    String filename = module == null ? null : macros.expandPath(path, module.getDescriptorFile());
    return filename;
  }

  public static IModule findAnchorModule(SNode sourceNode) {
    return findAnchorModule(sourceNode.getModel());
  }

  public static IModule findAnchorModule(SModel sourceModel) {
    IModule module = null;
    SModelDescriptor modelDescriptor = sourceModel.getModelDescriptor();
    Language modelLang = Language.getLanguageFor(modelDescriptor);
    if (modelLang != null) {
      module = modelLang;
    } else if (modelDescriptor != null) {
      //modelDescriptor can be null if sourceModel came from VCS as prev. version in diff dialog
      module = modelDescriptor.getModule();
      if(!(module instanceof Solution || module instanceof Generator)) {
        module = null;
      }
    }
    return module;
  }
}
