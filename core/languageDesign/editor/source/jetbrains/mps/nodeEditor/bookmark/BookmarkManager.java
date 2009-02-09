/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.bookmark;

import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.workbench.editors.MPSEditorOpener;
import jetbrains.mps.nodeEditor.bookmark.BookmarkManager.MyState;

import javax.swing.Icon;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;

import com.intellij.openapi.project.Project;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.PersistentStateComponent;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

/**
 * Created by IntelliJ IDEA.
 * User: User
 * Date: 06.02.2009
 * Time: 20:18:52
 * To change this template use File | Settings | File Templates.
 */

@State(
  name = "BookmarkManager",
  storages = {
  @Storage(
    id = "other",
    file = "$WORKSPACE_FILE$"
  )
    }
)
public class BookmarkManager implements ProjectComponent, PersistentStateComponent<MyState> {
  private static Logger LOG = Logger.getLogger(BookmarkManager.class);

  private static Icon[] myBookmarkIcons = new Icon[] {
    Icons.BOOKMARK_0,
    Icons.BOOKMARK_1,
    Icons.BOOKMARK_2,
    Icons.BOOKMARK_3,
    Icons.BOOKMARK_4,
    Icons.BOOKMARK_5,
    Icons.BOOKMARK_6,
    Icons.BOOKMARK_7,
    Icons.BOOKMARK_8,
    Icons.BOOKMARK_9
  };

  private List<BookmarkListener> myBookmarkListeners = new ArrayList<BookmarkListener>();

  public SNodePointer[] myBookmarks = new SNodePointer[10];
  private Project myProject;

  public BookmarkManager(Project project) {
    myProject = project;
  }

  public void projectOpened() {
  }

  public void projectClosed() {
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return getClass().getName();
  }

  public void initComponent() {
  }

  public void disposeComponent() {
  }

  public List<Pair<SNode, Integer>> getBookmarks(SNode root) {
    if (root == null) return Collections.emptyList();
    List<Pair<SNode, Integer>> result = new ArrayList<Pair<SNode, Integer>>();
    for (int i = 0; i<=9; i++) {
      SNodePointer nodePointer = myBookmarks[i];
      if (nodePointer != null) {
        SNode node = nodePointer.getNode();
        if (node != null && node.getContainingRoot() == root) {
          result.add(new Pair<SNode, Integer>(node, i));
        }
      }
    }
    return result;
  }

  public void setBookmark(SNode node, int number) {
    if (node == null) {
      LOG.error("node to bookmark is null");
      return;
    }
    SNodePointer oldBookmark = myBookmarks[number];
    SNode oldNode = null;
    myBookmarks[number] = null;
    if (oldBookmark != null) {
      oldNode = oldBookmark.getNode();
      fireBookmarkRemoved(number, oldNode);
    }
    if (!node.equals(oldNode)) {
      myBookmarks[number] = new SNodePointer(node);
      fireBookmarkAdded(number, node);
    }
  }

  public void clearBookmarks() {
    for (int i = 0; i < myBookmarks.length; i++) {
      SNodePointer pointer = myBookmarks[i];
      if (pointer != null) {
        myBookmarks[i] = null;
        fireBookmarkRemoved(i, pointer.getNode());
      }
    }
  }

  public void removeBookmark(int i) {
    if (i > 9) return;
    SNodePointer pointer = myBookmarks[i];
    if (pointer != null) {
      myBookmarks[i] = null;
      fireBookmarkRemoved(i, pointer.getNode());
    }
  }

  public List<SNodePointer> getAllBookmarks() {
    return CollectionUtil.list(myBookmarks);
  }

  public static Icon getIcon(int bookmarkNumber) {
    return myBookmarkIcons[bookmarkNumber];
  }

  public void navigateToBookmark(int number) {
    if (number > 9) return;
    SNodePointer pointer = myBookmarks[number];
    if (pointer == null) return;
    SNode targetNode = pointer.getNode();
    if (targetNode != null) {
      myProject.getComponent(MPSEditorOpener.class).openNode(targetNode);
    }
  }

  public void addBookmarkListener(BookmarkListener listener) {
    myBookmarkListeners.add(listener);
  }

  public void removeBookmarkListener(BookmarkListener listener) {
    myBookmarkListeners.remove(listener);
  }

  public boolean hasBookmarkListener(BookmarkListener listener) {
    return myBookmarkListeners.contains(listener);
  }

  private void fireBookmarkAdded(int number, SNode node) {
    for (BookmarkListener listener : myBookmarkListeners) {
      listener.bookmarkAdded(number, node);
    }
  }

  private void fireBookmarkRemoved(int number, SNode node) {
    for (BookmarkListener listener : myBookmarkListeners) {
      listener.bookmarkRemoved(number, node);
    }
  }

  public MyState getState() {
    MyState state = new MyState();
    for (int i = 0; i < myBookmarks.length; i++) {
      SNodePointer pointer = myBookmarks[i];
      if (pointer != null) {
        SModelReference sModelReference = pointer.getModelReference();
        SNodeId id = pointer.getNodeId();
        state.myBookmarkInfos[i] = new BookmarkInfo(sModelReference.toString(), id.toString(), i);
      } else {
        state.myBookmarkInfos[i] = new BookmarkInfo();
      }
    }
    return state;
  }

  public void loadState(MyState state) {
    for (int i = 0; i < state.myBookmarkInfos.length; i++) {
      BookmarkInfo bookmarkInfo = state.myBookmarkInfos[i];
      if (!bookmarkInfo.myIsNull) {
        assert i == bookmarkInfo.myNumber;
        myBookmarks[i] = new SNodePointer(bookmarkInfo.myModelReference, bookmarkInfo.myNodeId);
      } else {
        myBookmarks[i] = null;
      }
    }
  }

  public interface BookmarkListener {
    public void bookmarkAdded(int number, SNode node);
    public void bookmarkRemoved(int number, SNode node);
  }

  public static class MyState {
    public BookmarkInfo[] myBookmarkInfos = new BookmarkInfo[10];
  }

  public static class BookmarkInfo {

    public String myModelReference;
    public String myNodeId;
    public int myNumber;
    public boolean myIsNull = true;

    public BookmarkInfo() {
      myIsNull = true;
    }

    public BookmarkInfo(String modelReference, String nodeId, int number) {
      myModelReference = modelReference;
      myNodeId = nodeId;
      myNumber = number;
      myIsNull = false;
    }


  }
}
