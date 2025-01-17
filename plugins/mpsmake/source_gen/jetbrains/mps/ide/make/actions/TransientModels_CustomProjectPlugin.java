package jetbrains.mps.ide.make.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.custom.BaseCustomProjectPlugin;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.ide.ThreadUtils;

public class TransientModels_CustomProjectPlugin extends BaseCustomProjectPlugin {
  private TransientModelsNotification myNotifier;
  public TransientModels_CustomProjectPlugin() {
  }
  public void doInit(MPSProject project) {
    TransientModels_CustomProjectPlugin.this.myNotifier = new TransientModelsNotification(project.getProject());
    ThreadUtils.runInUIThreadNoWait(new Runnable() {
      public void run() {
        TransientModels_CustomProjectPlugin.this.myNotifier.projectOpened();
      }
    });
  }
  public void doDispose(MPSProject project) {
    TransientModels_CustomProjectPlugin.this.myNotifier.projectClosed();
    TransientModels_CustomProjectPlugin.this.myNotifier = null;
  }
}
