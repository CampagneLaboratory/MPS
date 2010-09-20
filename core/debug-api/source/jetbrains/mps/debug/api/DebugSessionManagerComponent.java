package jetbrains.mps.debug.api;

import com.intellij.execution.ExecutionManager;
import com.intellij.execution.process.ProcessHandler;
import com.intellij.execution.ui.RunContentDescriptor;
import com.intellij.execution.ui.RunContentListener;
import com.intellij.execution.ui.RunContentManager;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.NotNull;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 08.02.2010
 * Time: 19:01:48
 * To change this template use File | Settings | File Templates.
 */
public class DebugSessionManagerComponent implements ProjectComponent {

  //abstract stuff
  private final Map<ProcessHandler, AbstractDebugSession> myProcessesToSessions = new HashMap<ProcessHandler, AbstractDebugSession>(1);
  private final List<DebugSessionListener> myCurrentDebugSessionListeners = new ArrayList<DebugSessionListener>();
  private final DebugSessionManagerComponent.MyRunContentListener myRunContentListener = new MyRunContentListener();
  private final ExecutionManager myExecutionManager;
  private final Project myProject;

  public DebugSessionManagerComponent(ExecutionManager executionManager, Project project) {
    myExecutionManager = executionManager;
    myProject = project;
  }

  public static DebugSessionManagerComponent getInstance(Project project) {
    return project.getComponent(DebugSessionManagerComponent.class);
  }

  public Project getProject() {
    return myProject;
  }

  @NotNull
  @Override
  public String getComponentName() {
    return "MPS Debug Manager";
  }

  @Override
  public void initComponent() {
    addRunContentListener();
  }

  @Override
  public void disposeComponent() {
    removeRunContentListener();
  }

  @Override
  public void projectOpened() {

  }

  @Override
  public void projectClosed() {
  }

  public AbstractDebugSession getDebugSessionByCurrentTab() {
    RunContentDescriptor contentDescriptor = myExecutionManager.getContentManager().getSelectedContent();
    if (contentDescriptor == null) return null;
    return getDebugSession(contentDescriptor.getProcessHandler());
  }

  private void addRunContentListener() {
    RunContentManager contentManager = myExecutionManager.getContentManager();
    contentManager.addRunContentListener(myRunContentListener);
  }

  private void removeRunContentListener() {
    RunContentManager contentManager = myExecutionManager.getContentManager();
    contentManager.removeRunContentListener(myRunContentListener);
  }

  private void fireSelectedDebugSessionChanged(AbstractDebugSession debugSession) {
    for (DebugSessionListener listener : getAllCurrentDebugSessionListeners()) {
      listener.currentSessionChanged(debugSession);
    }
  }

  private void fireSessionDetached(AbstractDebugSession debugSession) {
    for (DebugSessionListener listener : getAllCurrentDebugSessionListeners()) {
      listener.detached(debugSession);
    }
  }

  private void fireSessionRegistered(AbstractDebugSession debugSession) {
    for (DebugSessionListener listener : getAllCurrentDebugSessionListeners()) {
      listener.registered(debugSession);
    }
  }

  public AbstractDebugSession getDebugSession(ProcessHandler processHandler) {
    return myProcessesToSessions.get(processHandler);
  }

  public Set<AbstractDebugSession> getDebugSessions() {
    synchronized (myProcessesToSessions) {
      return new HashSet<AbstractDebugSession>(myProcessesToSessions.values());
    }
  }

  public void addDebugSession(AbstractDebugSession session) {
    ProcessHandler processHandler = session.getProcessHandler();
    assert processHandler != null;
    synchronized (myProcessesToSessions) {
      myProcessesToSessions.put(processHandler, session);
    }
    session.sessionRegistered(this);
    fireSessionRegistered(session);
  }

  public void removeDebugSession(AbstractDebugSession session) {
    fireSessionDetached(session);
    session.sessionUnregistered(this);
    myProcessesToSessions.remove(session.getProcessHandler());
  }


  public void addCurrentDebugSessionListener(DebugSessionListener listener) {
    synchronized (myCurrentDebugSessionListeners) {
      myCurrentDebugSessionListeners.add(listener);
    }
  }

  public void removeCurrentDebugSessionListener(DebugSessionListener listener) {
    synchronized (myCurrentDebugSessionListeners) {
      myCurrentDebugSessionListeners.remove(listener);
    }
  }

  public List<DebugSessionListener> getAllCurrentDebugSessionListeners() {
    synchronized (myCurrentDebugSessionListeners) {
      return new ArrayList<DebugSessionListener>(myCurrentDebugSessionListeners);
    }
  }

  // TODO this listener now looks strange

  public static interface DebugSessionListener {
    //todo why don't listen DebugSessionManagerComponent?

    public void registered(AbstractDebugSession session);

    public void currentSessionChanged(AbstractDebugSession session);

    public void detached(AbstractDebugSession session);
  }

  private class MyRunContentListener implements RunContentListener {
    @Override
    public void contentSelected(RunContentDescriptor descriptor) {
      AbstractDebugSession debugSession = null;
      if (descriptor != null) {
        debugSession = getDebugSession(descriptor.getProcessHandler());
        fireSelectedDebugSessionChanged(debugSession);
      }
    }

    @Override
    public void contentRemoved(RunContentDescriptor descriptor) {
      //todo maybe do something
    }
  }
}
