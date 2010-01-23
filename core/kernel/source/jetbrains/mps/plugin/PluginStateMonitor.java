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
package jetbrains.mps.plugin;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.wm.IdeFrame;
import com.intellij.openapi.wm.StatusBar;
import com.intellij.openapi.wm.WindowManager;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.plugin.icons.Icons;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.Icon;
import javax.swing.JLabel;
import javax.swing.SwingUtilities;
import javax.swing.Timer;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class PluginStateMonitor implements ProjectComponent {
  private static Logger LOG = Logger.getLogger(PluginStateMonitor.class);

  private static final int INITIAL_DELAY = 4000;
  private static final int CRITICAL_DELAY = 16000;
  private static final double DELAY_MUL = 2.0;

  private Project myProject;
  private MyTimer myTimer;
  private JLabel myLabel;
  private State myState = State.TRYING_TO_CONNECT;
  private StatusBar myStatusBar;
  private MouseAdapter myListener;

  public PluginStateMonitor(Project project) {
    myProject = project;
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return PluginStateMonitor.class.getSimpleName();
  }

  public void initComponent() {
  }

  public void disposeComponent() {
  }

  public void projectOpened() {
    myStatusBar = getStatusBar();
    if (myStatusBar == null) return;

    myLabel = new JLabel();
    myListener = new MouseAdapter() {
      @Override
      public void mouseClicked(MouseEvent e) {
        if (myState == State.DISCONNECTED) {
          setNewState(State.TRYING_TO_CONNECT);
          myTimer.setNewDelay(INITIAL_DELAY);
        }
      }
    };
    myLabel.addMouseListener(myListener);
    myStatusBar.addCustomIndicationComponent(myLabel);

    myTimer = new MyTimer(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        new Thread("connection checker") {
          public void run() {
            tick();
          }
        }.start();
      }
    });
    myTimer.start();
  }

  public void projectClosed() {
    if (myStatusBar == null) return;

    if (myTimer.isRunning()) {
      myTimer.stop();
    }

    myLabel.removeMouseListener(myListener);
    myStatusBar.removeCustomIndicationComponent(myLabel);
  }

  private void tick() {
    LOG.assertLog(!ThreadUtils.isEventDispatchThread());
    if (myState == State.CONNECTED && isConnected()) return;

    if (myState == State.DISCONNECTED) {
      if (MPSPlugin.getInstance().checkIsConnected()) {
        setNewState(State.CONNECTED);
        myTimer.setNewDelay(INITIAL_DELAY);
      }
    } else if (myState == State.CONNECTED) {
      //isConnected = false
      setNewState(State.TRYING_TO_CONNECT);
      myTimer.setNewDelay(INITIAL_DELAY);
    } else if (myState == State.TRYING_TO_CONNECT) {
      if (isConnected()) {
        setNewState(State.CONNECTED);
        myTimer.setNewDelay(INITIAL_DELAY);
      } else {
        int newDelay = (int) (myTimer.getDelay() * DELAY_MUL);
        if (newDelay <= CRITICAL_DELAY) {
          myTimer.setNewDelay(newDelay);
        } else {
          setNewState(State.DISCONNECTED);
          myTimer.setNewDelay(INITIAL_DELAY);
        }
      }
    }
  }

  private void setNewState(State state) {
    assert myState != state;

    myState = state;

    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        myLabel.setIcon(myState.getIcon());
        myLabel.setToolTipText(myState.getHelpText());
      }
    });
  }

  private boolean isConnected() {
    return MPSPlugin.getInstance().isIDEAPresent();
  }

  @Nullable
  private StatusBar getStatusBar() {
    IdeFrame ideFrame = WindowManager.getInstance().getIdeFrame(myProject);
    if (ideFrame == null) return null;
    return ideFrame.getStatusBar();
  }

  private enum State {
    DISCONNECTED(Icons.DISCONNECTED, "Not connected to IDEA. Click to reconnect."),
    TRYING_TO_CONNECT(Icons.TRYING_TO_CONNECT, "Connecting to IDEA..."),
    CONNECTED(Icons.CONNECTED, "Connected to IDEA");


    private Icon myIcon;
    private String myHelpText;

    private State(Icon icon, String helpText) {
      myIcon = icon;
      myHelpText = helpText;
    }

    public Icon getIcon() {
      return myIcon;
    }

    public String getHelpText() {
      return myHelpText;
    }
  }

  private static class MyTimer extends Timer {
    public MyTimer(ActionListener listener) {
      super(INITIAL_DELAY, listener);
    }

    public void setNewDelay(int delay) {
      setDelay(delay);
      setInitialDelay(delay);
      restart();
    }
  }
}
