/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.messages;

import com.intellij.openapi.Disposable;
import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.wm.ToolWindow;
import com.intellij.ui.content.Content;
import com.intellij.ui.content.ContentManager;
import com.intellij.ui.content.MessageView;
import com.intellij.ui.content.MessageView.SERVICE;
import jetbrains.mps.MPSCore;
import jetbrains.mps.ide.messages.MessageList.MessageListState;
import jetbrains.mps.messages.IMessage;
import jetbrains.mps.messages.Message;
import jetbrains.mps.messages.MessageKind;
import org.jetbrains.annotations.NotNull;

import javax.swing.JList;
import javax.swing.SwingUtilities;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@State(
  name = "MessagesViewTool",
  storages = {
    @Storage(
      id = "other",
      file = "$WORKSPACE_FILE$"
    )
  }
)
public class MessagesViewTool implements ProjectComponent, PersistentStateComponent<MessageListState>, Disposable {
  private static final String DEFAULT_LIST = "DEFAULT_LIST";

  private Project myProject;
  private Map<Object, List<MessageList>> myMessageLists = new HashMap<Object, List<MessageList>>();
  private Map<Content, MessageList> myContents = new HashMap<Content, MessageList>();
  private boolean myDisposed = false;

  public MessagesViewTool(Project project) {
    myProject = project;
    addList(DEFAULT_LIST, new DefaultMessageList(project));
  }

  @Override
  public void dispose() {
    myContents.clear();
    myMessageLists.clear();
  }

  public Project getProject() {
    return myProject;
  }

  public void openToolLater(final boolean setActive) {
    SwingUtilities.invokeLater(new Runnable() {
      @Override
      public void run() {
        getDefaultList().show(setActive);
      }
    });
  }

  public void clear() {
    getDefaultList().clear();
  }

  public void clear(String listName) {
    MessageList list = getAvailableList(listName, false);
    if (list != null) {
      list.clear();
    }
  }

  public void add(final IMessage message) {
    getDefaultList().add(message);
  }

  public void add(final IMessage message, String listName) {
    final MessageList list = getAvailableList(listName, true);
    list.add(message);

    SwingUtilities.invokeLater(new Runnable() {
      @Override
      public void run() {
        list.show(false);
      }
    });
  }

  @Override
  @NotNull
  public String getComponentName() {
    return MessagesViewTool.class.getSimpleName();
  }

  @Override
  public void initComponent() {
    getDefaultList().createContent();
  }

  @Override
  public void disposeComponent() {
    Disposer.dispose(this);
    myDisposed = true;
  }

  @Override
  public void projectOpened() {
  }

  @Override
  public void projectClosed() {
  }

  @Override
  public MessageListState getState() {
    return getDefaultList().getState();
  }

  @Override
  public void loadState(MessageListState state) {
    getDefaultList().loadState(state);
  }

  public MessageView getMessagesService() {
    return SERVICE.getInstance(myProject);
  }

  /**
   * What's this?
   */
  public void resetAutoscrollOption() {
    getDefaultList().resetAutoscrollOption();
  }

  private synchronized void addList(String name, MessageList list) {
    List<MessageList> lists = myMessageLists.containsKey(name) ? myMessageLists.get(name) : new ArrayList<MessageList>();
    if (!myMessageLists.containsKey(name)) {
      myMessageLists.put(name, lists);
    }
    lists.add(list);
  }

  private synchronized MessageList getAvailableList(String name, boolean createIfNotFound) {
    List<MessageList> lists = myMessageLists.containsKey(name) ? myMessageLists.get(name) : new ArrayList<MessageList>();
    if (!myMessageLists.containsKey(name)) {
      myMessageLists.put(name, lists);
    }
    for (int i = lists.size() - 1; i >= 0; --i) {
      MessageList messageList = lists.get(i);
      ContentManager contentManager = null;
      try {
        contentManager = getMessagesService().getContentManager();
      } catch (NullPointerException dumb) {
      }
      Content content = contentManager != null ? contentManager.getContent(messageList.getComponent()) : null;
      if (content == null || !content.isPinned()) {
        return messageList;
      }
    }
    if (createIfNotFound) {
      MessageList list = createList(name);
      lists.add(list);
      return list;
    }
    return null;
  }

  private synchronized MessageList getSingletonList(String name) {
    List<MessageList> lists = myMessageLists.containsKey(name) ? myMessageLists.get(name) : new ArrayList<MessageList>();
    if (lists == null) return null;
    assert lists.size() == 1;
    return lists.get(0);
  }

  private synchronized MessageList createList(String name) {
    AuxMessageList list = new AuxMessageList(myProject, name);
    list.createContent();
    return list;
  }

  private synchronized void removeList(MessageList list, String name) {
    List<MessageList> lists = myMessageLists.get(name);
    if (lists != null) {
      lists.remove(list);
      Disposer.dispose(list);
    }
  }

  private MessageList getDefaultList() {
    return getSingletonList(DEFAULT_LIST);
  }

  private abstract class MessageListWithActions extends MessageList {
    protected MessageListWithActions(Project project) {
      super(project);
      Disposer.register(MessagesViewTool.this, this);
    }

    @Override
    protected void populateActions(JList list, DefaultActionGroup group) {
      ActionGroup acts = (ActionGroup) ActionManager.getInstance().getAction("MPS.MessagesView");
      group.addAll(acts);
    }
  }

  private class DefaultMessageList extends MessageListWithActions {

    public DefaultMessageList(Project project) {
      super(project);
    }

    @Override
    public void createContent() {
      if (MPSCore.getInstance().isTestMode()) return;

      final MessageView service = getMessagesService();
      service.runWhenInitialized(new Runnable() {
        @Override
        public void run() {
          initUI();
          Content content = service.getContentManager().getFactory().createContent(getComponent(), "Messages", true);
          myContents.put(content, DefaultMessageList.this);

          content.setCloseable(false);
          content.setPinned(false);
          content.putUserData(ToolWindow.SHOW_CONTENT_ICON, Boolean.TRUE);
          service.getContentManager().addContent(content);
        }
      });
    }

    @Override
    protected boolean isDisposed() {
      return myDisposed;
    }

    @Override
    protected void setDisplayInfo(final String name) {
      final MessageView service = getMessagesService();
      service.runWhenInitialized(new Runnable() {
        @Override
        public void run() {
          Content content = service.getContentManager().getContent(getComponent());
          if (content != null) {
            content.setDisplayName(name);
          }
        }
      });
    }
  }

  private class AuxMessageList extends MessageListWithActions {

    private String myName;

    public AuxMessageList(Project project, String name) {
      super(project);
      myName = name;
    }

    public String getName() {
      return myName;
    }

    @Override
    public void createContent() {
      if (MPSCore.getInstance().isTestMode()) return;

      SwingUtilities.invokeLater(new Runnable() {
        @Override
        public void run() {

          final MessageView service = getMessagesService();
          service.runWhenInitialized(new Runnable() {
            @Override
            public void run() {
              initUI();
              final Content content = service.getContentManager().getFactory().createContent(getComponent(), myName, true);
              myContents.put(content, AuxMessageList.this);

              content.setCloseable(true);
              content.setDisposer(new Disposable() {
                @Override
                public void dispose() {
                  AuxMessageList list = (AuxMessageList) myContents.remove(content);
                  if (list != null) {
                    removeList(list, list.getName());
                  }
                }
              });
              content.putUserData(ToolWindow.SHOW_CONTENT_ICON, Boolean.TRUE);
              service.getContentManager().addContent(content);
            }
          });

        }
      });
    }

    @Override
    protected boolean isDisposed() {
      return myDisposed;
    }

    @Override
    protected void setDisplayInfo(final String name) {
      final MessageView service = getMessagesService();

      service.runWhenInitialized(new Runnable() {
        @Override
        public void run() {
          Content content = service.getContentManager().getContent(getComponent());
          if (content != null) {
            content.setDisplayName((name != null && name.length() > 0) ? myName + ": " + name : myName);
          }
        }
      });

    }
  }

  public static void log(Project p, MessageKind kind, String message) {
    p.getComponent(MessagesViewTool.class).add(new Message(kind, message));
  }
}
