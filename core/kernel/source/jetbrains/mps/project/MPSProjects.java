package jetbrains.mps.project;

import jetbrains.mps.logging.Logger;

import java.util.ArrayList;
import java.util.List;

/**
 * User: Sergey Dmitriev
 * Date: Mar 24, 2005
 */
public class MPSProjects {

  public static MPSProjects instance() {
    return ApplicationComponents.getInstance().getComponent(MPSProjects.class);
  }

  private ArrayList<MPSProject> myProjects = new ArrayList<MPSProject>();
  private ArrayList<IMPSProjectsListener> myMPSProjectsListeners = new ArrayList<IMPSProjectsListener>();

  public void addProject(MPSProject mpsProject) {
    myProjects.add(mpsProject);
    for(IMPSProjectsListener listener : myMPSProjectsListeners) {
      listener.projectAdded(mpsProject);
    }
  }

  public List<MPSProject> getProjects() {
    return new ArrayList<MPSProject>(myProjects);
  }

  public void removeProject(MPSProject mpsProject) {
    myProjects.remove(mpsProject);
    for(IMPSProjectsListener listener : myMPSProjectsListeners) {
      listener.projectRemoved(mpsProject);
    }
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public void addMPSProjectsListener(IMPSProjectsListener listener) {
    myMPSProjectsListeners.add(listener);
  }

  @SuppressWarnings({"UnusedDeclaration"})
  public void removeMPSProjectsListener(IMPSProjectsListener listener) {
    myMPSProjectsListeners.remove(listener);
  }

}
