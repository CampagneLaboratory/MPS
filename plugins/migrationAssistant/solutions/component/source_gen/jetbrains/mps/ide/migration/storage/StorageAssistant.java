package jetbrains.mps.ide.migration.storage;

/*Generated by MPS */

import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.components.AbstractProjectComponent;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.project.Project;
import jetbrains.mps.project.Version;
import jetbrains.mps.project.MPSProjectVersion;
import com.intellij.openapi.project.ex.ProjectEx;
import com.intellij.ide.impl.ProjectUtil;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.ide.actions.SaveAsDirectoryBasedFormatAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import org.jetbrains.annotations.Nullable;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import java.io.File;
import com.intellij.openapi.vfs.VfsUtil;
import java.io.IOException;

/**
 * This migrates the project from an old file-based format to a directory-based
 */
@State(name = "StorageAssistant", storages = {@Storage(file = StoragePathMacros.WORKSPACE_FILE)
})
public class StorageAssistant extends AbstractProjectComponent implements PersistentStateComponent<StorageAssistant.MyState> {
  private StorageAssistant.MyState myState = new StorageAssistant.MyState();
  public StorageAssistant(Project project) {
    super(project);
  }
  @Override
  public void projectOpened() {
    Version version = myProject.getComponent(MPSProjectVersion.class).getVersion();
    if (myProject instanceof ProjectEx && !((version.isMajorUpdate(MPSProjectVersion.CURRENT))) && ProjectUtil.isDirectoryBased(myProject) && myState.offerStorageMigration) {
      StartupManager.getInstance(myProject).registerPostStartupActivity(new Runnable() {
        @Override
        public void run() {
          SaveAsDirectoryBasedFormatAction action = new SaveAsDirectoryBasedFormatAction();
          final AnActionEvent actionEvent = AnActionEvent.createFromDataContext("", null, new DataContext() {
            @Nullable
            @Override
            public Object getData(String dataId) {
              return (CommonDataKeys.PROJECT.getName().equals(dataId) ? myProject : null);
            }
          });
          action.update(actionEvent);
          action.actionPerformed(actionEvent);
        }
      });
    }
  }
  private boolean createDir(File ideaDir) {
    try {
      VfsUtil.createDirectories(ideaDir.getPath());
      return true;
    } catch (IOException e) {
      return false;
    }
  }
  @Override
  public StorageAssistant.MyState getState() {
    return myState;
  }
  @Override
  public void loadState(StorageAssistant.MyState state) {
    myState = state;
  }
  public static class MyState {
    public boolean offerStorageMigration = true;
  }
}
