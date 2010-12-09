package jetbrains.mps.plugin;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import jetbrains.mps.MPSCore;
import jetbrains.mps.internal.make.runtime.java.IAuxProjectPeer;
import jetbrains.mps.internal.make.runtime.java.IJavaCompiler;
import jetbrains.mps.project.IModule;
import org.jetbrains.annotations.NotNull;

import java.rmi.RemoteException;

/**
 * Created by IntelliJ IDEA.
 * User: fyodor
 * Date: Dec 8, 2010
 * Time: 11:30:34 AM
 * To change this template use File | Settings | File Templates.
 */
public class IDEAProjectPeer implements ProjectComponent, IAuxProjectPeer {
  private final Project myProject;
  private IProjectHandler myIdeaProjectHandler;

  public IDEAProjectPeer (Project project){
    myProject = project;
  }

  public void projectOpened() {
    new Thread(new Runnable(){
      public void run() {
        IDEAProjectPeer.this.myIdeaProjectHandler = getIdeaProjectHandler();
      }
    }).start ();
  }

  public void projectClosed() {
  }

  @NotNull
  public String getComponentName() {
    return "IDEA Project Peer";
  }

  public void initComponent() {

  }

  public void disposeComponent() {

  }

  public IJavaCompiler getJavaCompiler() {
    return new IDEACompiler();
  }

  private boolean isIDEAPresent() {
    return !MPSCore.getInstance().isTestMode() && myIdeaProjectHandler != null;
  }

  private IProjectHandler getIdeaProjectHandler() {
    if (MPSCore.getInstance().isTestMode()) return null;
    return MPSPlugin.getInstance().getProjectHandler(myProject);
  }

  private class IDEACompiler implements IJavaCompiler{
    public boolean compileModule(IModule module) {
      if (!isIDEAPresent()) {
        return false;
      }

      boolean compiledSuccessfully = true;
      try {
        myIdeaProjectHandler.refreshFS();

        CompilationResult compilationResult = myIdeaProjectHandler.buildModule(module.getGeneratorOutputPath());

        if (compilationResult == null || compilationResult.getErrors() > 0) {
          compiledSuccessfully = false;
        }

      } catch (RemoteException e) {
        e.printStackTrace();
      }
      return compiledSuccessfully;
    }
  }
}
