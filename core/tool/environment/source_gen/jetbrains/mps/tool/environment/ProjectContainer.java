package jetbrains.mps.tool.environment;

/*Generated by MPS */

import jetbrains.mps.project.ProjectManagerListener;
import java.util.Set;
import jetbrains.mps.project.Project;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.LinkedHashSet;
import jetbrains.mps.project.ProjectManager;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import java.io.File;
import jetbrains.mps.project.FileBasedProject;
import org.apache.log4j.Level;
import jetbrains.mps.util.EqualUtil;
import java.io.IOException;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

/*package*/ class ProjectContainer implements ProjectManagerListener {
  private Set<Project> myProjects;

  public ProjectContainer() {
    myProjects = SetSequence.fromSet(new LinkedHashSet<Project>());
    ProjectManager.getInstance().addProjectListener(this);
  }

  public void dispose() {
    clear();
    ProjectManager.getInstance().removeProjectListener(this);
  }

  private void clear() {
    try {
      for (final Project project : myProjects) {
        assert project != null && !(project.isDisposed()) : "Project has been already disposed";
        project.dispose();
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    SetSequence.fromSet(myProjects).clear();
  }

  public Set<Project> getProjects() {
    return myProjects;
  }

  @Nullable
  public Project getProject(@NotNull File projectFile) {
    assert myProjects != null;
    for (Project project : SetSequence.fromSet(myProjects)) {
      if (projectHasPath(((FileBasedProject) project), projectFile)) {
        return project;
      }
    }
    return null;
  }

  private void addProject(@NotNull Project project) {
    assert !(SetSequence.fromSet(myProjects).contains(project));
    if (size() > 100) {
      if (LOG.isEnabledFor(Level.WARN)) {
        LOG.warn("ProjectContainer is too big");
      }
    }
    SetSequence.fromSet(myProjects).addElement(project);
  }

  private void removeProject(@NotNull Project project) {
    assert SetSequence.fromSet(myProjects).contains(project);
    SetSequence.fromSet(myProjects).removeElement(project);
  }

  public int size() {
    return SetSequence.fromSet(myProjects).count();
  }

  private static boolean projectHasPath(FileBasedProject project, @NotNull File path) {
    File projectFile = project.getProjectFile();
    try {
      String myProjectPath = projectFile.getCanonicalPath();
      return EqualUtil.equals(myProjectPath, path.getCanonicalPath());
    } catch (IOException e) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("Cannot access the project file in container", e);
      }
    }
    return false;
  }

  @Override
  public void projectClosed(@NotNull Project project) {
    removeProject(project);
  }

  @Override
  public void projectOpened(@NotNull Project project) {
    addProject(project);
  }
  protected static Logger LOG = LogManager.getLogger(ProjectContainer.class);
}
