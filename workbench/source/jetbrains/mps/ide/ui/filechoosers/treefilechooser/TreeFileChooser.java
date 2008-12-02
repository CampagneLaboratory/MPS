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
package jetbrains.mps.ide.ui.filechoosers.treefilechooser;

import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.FileChooserDialog;
import com.intellij.openapi.fileChooser.FileChooserFactory;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.vfs.FileSystemFile;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JComponent;
import javax.swing.JOptionPane;
import java.awt.Frame;

public class TreeFileChooser {
  public static final int MODE_FILES = TreeFileChooserDialog.MODE_FILES;
  public static final int MODE_DIRECTORIES = TreeFileChooserDialog.MODE_DIRECTORIES;
  public static final int MODE_FILES_AND_DIRECTORIES = TreeFileChooserDialog.MODE_FILES_AND_DIRECTORIES;

  public static final IFileFilter ALL_FILES_FILTER = new IFileFilter() {
    public boolean accept(IFile file) {
      return true;
    }
  };

  /////////////////////////////

  @NotNull
  private static IFile ourInitialSelectedFile = new FileSystemFile(PathManager.getHomePath());

  private int myMode = MODE_FILES;
  private IFileFilter myFileFilter = ALL_FILES_FILTER;
  private IOperationContext myContext = null;

  /////////////////////////////

  public void setMode(int mode) {
    myMode = mode;
  }

  public void setExtensionFileFilter(final String extension) {
    myFileFilter = new IFileFilter() {
      public boolean accept(IFile file) {
        return file.getName().toLowerCase().endsWith(extension) || file.isDirectory();
      }
    };
  }

  public void setFileFilter(IFileFilter fileFilter) {
    myFileFilter = fileFilter;
  }

  public void setContext(IOperationContext context) {
    myContext = context;
  }

  public void setInitialFile(IFile file) {
    ourInitialSelectedFile = file;
  }

  @Nullable
  public IFile showDialog(Frame owner) {
    if (owner == null) owner = JOptionPane.getRootFrame();
    setAdditionalModeFilter(myMode);

    IFile res = null;

    if (UseIdeaFileChooser.useIdeaFileChooser()) {
      FileChooserDescriptor descriptor = new FileChooserDescriptor(myMode != MODE_DIRECTORIES, myMode != MODE_FILES, true, true, false, false) {
        public boolean isFileVisible(VirtualFile file, boolean showHiddenFiles) {
          if (!super.isFileVisible(file, showHiddenFiles)) return false;
          return myFileFilter.accept(new FileSystemFile(file.getPath()));
        }
      };
      descriptor.setTitle("Select File");
      descriptor.setShowFileSystemRoots(true);

      FileChooserDialog dialog = FileChooserFactory.getInstance().createFileChooser(descriptor, owner);

      VirtualFile selection = LocalFileSystem.getInstance().findFileByIoFile(ourInitialSelectedFile.toFile());
      VirtualFile[] files = dialog.choose(selection, null);
      if (files.length == 0) {
        res = null;
      } else {
        res = new FileSystemFile(files[0].getPath());
      }
    } else {
      TreeFileChooserDialog dialog = new TreeFileChooserDialog(owner, myMode, myFileFilter, myContext, ourInitialSelectedFile);
      dialog.setVisible(true);

      if (!dialog.isCancelled()) {
        res = dialog.getSelectedFile();
      }
    }
    if (res != null) ourInitialSelectedFile = res;
    return res;
  }

  @Nullable
  public IFile showDialog(JComponent owner) {
    return showDialog(JOptionPane.getFrameForComponent(owner));
  }

  @Nullable
  public IFile showDialog() {
    return showDialog((Frame) null);
  }

  private void setAdditionalModeFilter(int mode) {
    if (mode == MODE_DIRECTORIES) {
      //show only directories
      myFileFilter = new IFileFilter() {
        IFileFilter myInnerFilter = myFileFilter;

        public boolean accept(IFile file) {
          if (!file.isDirectory()) return false;
          return myInnerFilter.accept(file);
        }
      };
    }
  }
}
