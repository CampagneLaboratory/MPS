package jetbrains.mps.ide.projectPane.fileSystem;

import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.SelectInTarget;
import com.intellij.ide.util.treeView.NodeDescriptor;
import com.intellij.openapi.vfs.*;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.vcs.impl.VcsFileStatusProvider;
import com.intellij.openapi.vcs.FileStatusManager;
import com.intellij.openapi.vcs.FileStatusListener;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.IdeActions;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.actionSystem.DataConstants;
import com.intellij.util.ReflectionCache;

import javax.swing.Icon;
import javax.swing.JComponent;
import javax.swing.JScrollPane;
import javax.swing.tree.TreePath;
import javax.swing.tree.DefaultMutableTreeNode;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;

import jetbrains.mps.vfs.VFileSystem;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.ide.projectPane.fileSystem.FolderTreeNode;
import jetbrains.mps.vcs.ui.IFileController;
import jetbrains.mps.vcs.ui.IFileController.IWorkspaceListener;
import jetbrains.mps.vcs.Status;
import jetbrains.mps.vcs.ProjectVCSManager;
import jetbrains.mps.MPSProjectHolder;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.project.ProjectOperationContext;

import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import java.util.LinkedList;

public class FileProjectViewPane extends AbstractProjectViewPane implements DataProvider {
  @NonNls
  public static final String ID = "FileSystem";
  public static final String TITLE = "File System";

  private Project myProject;
  private ProjectView myProjectView;
  private MPSTree myMPSTree;
  private FileStatusListener myFileStatusListener;
  private VirtualFileAdapter myFileListener;

  protected FileProjectViewPane(Project project, final ProjectView projectView) {
    super(project);

    myProject = project;
    myProjectView = projectView;

    myMPSTree = new MPSTree() {
      protected MPSTreeNode rebuild() {
        if (myProject != null) {
          final IFile root = VFileSystem.toIFile(myProject.getBaseDir());
          return new FolderTreeNode(new ProjectOperationContext(getProject()),
            myProject.getComponent(VcsFileStatusProvider.class),
            root);
        } else {
          return new TextTreeNode("No Project");
        }
      }
    };
    myTree = myMPSTree;

    // adding listeners

    myFileStatusListener = new FileStatusListener() {
      public void fileStatusesChanged() {
        rebuildTree();
      }

      public void fileStatusChanged(@NotNull VirtualFile virtualFile) {
        rebuildTree();
      }
    };

    myFileListener = new VirtualFileAdapter() {
      @Override
      public void fileCreated(VirtualFileEvent event) {
        rebuildTree();
      }

      @Override
      public void fileDeleted(VirtualFileEvent event) {
        rebuildTree();
      }

      @Override
      public void fileMoved(VirtualFileMoveEvent event) {
        rebuildTree();
      }

      @Override
      public void fileCopied(VirtualFileCopyEvent event) {
        rebuildTree();
      }
    };
  }

  private void rebuildTree() {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        myMPSTree.rebuildLater();
      }
    });
  }


  private MPSProject getProject() {
    MPSProjectHolder holder = myProject.getComponent(MPSProjectHolder.class);
    return holder.getMPSProject();
  }

  public String getTitle() {
    return TITLE;
  }

  public Icon getIcon() {
    return null;
  }

  @NotNull
  public String getId() {
    return ID;
  }

  public JComponent createComponent() {
    return new JScrollPane(myTree);
  }

  public void updateFromRoot(boolean restoreExpandedPaths) {

  }

  public void select(Object element, VirtualFile file, boolean requestFocus) {

  }// used for sorting tabs in the tabbed pane

  public int getWeight() {
    return 1;
  }

  public SelectInTarget createSelectInTarget() {
    return null;
  }

  public void projectOpened() {
    rebuildTree();
    StartupManager.getInstance(myProject).registerPostStartupActivity(new Runnable() {
      public void run() {
        myProjectView.addProjectPane(FileProjectViewPane.this);
      }
    });

    FileStatusManager.getInstance(myProject).addFileStatusListener(myFileStatusListener);
    VirtualFileManager.getInstance().addVirtualFileListener(myFileListener);
  }

  public void projectClosed() {
    FileStatusManager.getInstance(myProject).removeFileStatusListener(myFileStatusListener);
    VirtualFileManager.getInstance().removeVirtualFileListener(myFileListener);
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "FileProjectViewPane";
  }

  public void initComponent() {

  }

  public void disposeComponent() {

  }

  public Object getData(String dataId){
    if (dataId.equals(DataConstants.VIRTUAL_FILE_ARRAY)){
      List<VirtualFile> files = new LinkedList<VirtualFile>();
      TreePath[] treePaths = getSelectionPaths();
      for (TreePath tp : treePaths){
        Object lastPathComponent = tp.getLastPathComponent();
        AbstractFileTreeNode node = (AbstractFileTreeNode) lastPathComponent;
        files.add(VFileSystem.getFile(node.getFile()));
      }
      return files.toArray(new VirtualFile[files.size()]);
    }
    return super.getData(dataId);
  }

}
