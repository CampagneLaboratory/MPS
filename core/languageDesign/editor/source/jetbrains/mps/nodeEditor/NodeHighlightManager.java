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
package jetbrains.mps.nodeEditor;

import com.intellij.openapi.util.Computable;
import com.intellij.util.containers.SortedList;
import jetbrains.mps.nodeEditor.EditorComponent.RebuildListener;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.ManyToManyMap;
import org.jetbrains.annotations.NotNull;

import java.awt.Color;
import java.util.*;
import java.util.Map.Entry;


public class NodeHighlightManager implements EditorMessageOwner {
  private static final Comparator<EditorMessage> EDITOR_MESSAGES_COPARATOR = new Comparator<EditorMessage>() {
    @Override
    public int compare(EditorMessage m1, EditorMessage m2) {
      return m1.getPriority() - m2.getPriority();
    }
  };

  private final Object myMessagesLock = new Object();

  @NotNull
  private EditorComponent myEditor;
  private Set<EditorMessage> myMessages = new HashSet<EditorMessage>();
  private Map<EditorMessageOwner, Set<EditorMessage>> myOwnerToMessages = new HashMap<EditorMessageOwner, Set<EditorMessage>>();
  private ManyToManyMap<EditorMessage, SNode> myMessagesToNodes = new ManyToManyMap<EditorMessage, SNode>();

  /**
   * all Chaches are synchronized using myMessagesLock 
   */
  private Map<EditorCell, List<EditorMessage>> myMessagesCache;
  public ReloadAdapter myHandler;
  private Set<EditorMessageIconRenderer> myIconRenderersCache = new HashSet<EditorMessageIconRenderer>();
  private boolean myRebuildIconRenderersCacheFlag;

  public NodeHighlightManager(@NotNull EditorComponent edtitor) {
    myEditor = edtitor;
    myHandler = new ReloadAdapter() {
      public void onReload() {
        clear();
      }
    };

    edtitor.addRebuildListener(new RebuildListener() {
      public void editorRebuilt(EditorComponent editor) {
        synchronized (myMessagesLock) {
          if (myMessagesCache == null) {
            return;
          }
          for (EditorCell cell : myMessagesCache.keySet()) {
            if (!myEditor.isValid(cell)) {
              rebuildMessages();
              return;
            }
          }
        }
      }
    });

    ClassLoaderManager.getInstance().addReloadHandler(myHandler);
  }

  /**
   * scheduling lazy rebuild of myMessagesCache and myIconRenderersCache
   * this method can be called from any thread
   * this method should be called inside synchronize(myMessagesLock) block only
   */
  private void rebuildMessages() {
    myMessagesCache = null;
    myRebuildIconRenderersCacheFlag = true;
  }

  private Map<EditorCell, List<EditorMessage>> getMessagesCache() {
    assert ModelAccess.instance().isInEDT() : "getMessagesCache() should be called from EDT only";
    synchronized (myMessagesLock) {
      // trying to avoid entring ReadAction
      if (myMessagesCache != null) {
        return myMessagesCache;
      }
      if (myMessages.isEmpty()) {
        myMessagesCache = Collections.emptyMap();
        return myMessagesCache;
      }
    }
    // We should first run ReadAction and then go into syhcnronized(myMessagesLock) to avoid deadlock with Highlighter
    return ModelAccess.instance().runReadAction(new Computable<Map<EditorCell, List<EditorMessage>>>() {
      public Map<EditorCell, List<EditorMessage>> compute() {
        synchronized (myMessagesLock) {
          if (myMessagesCache == null) {
            myMessagesCache = new HashMap<EditorCell, List<EditorMessage>>();
            if (myEditor.getRootCell() != null && !myMessages.isEmpty()) {
              rebuildMessages(myEditor.getRootCell());
            }
          }
          return myMessagesCache;
        }
      }
    });
  }

  /**
   * part of myMessagesCache rebuild process
   * this method should be called inside synchronize(myMessagesLock) block only
   */
  private void rebuildMessages(EditorCell root) {
    List<EditorMessage> messages = calculateMessages(root);
    if (!messages.isEmpty()) {
      myMessagesCache.put(root, messages);
    }

    if (root instanceof EditorCell_Collection) {
      EditorCell_Collection collection = (EditorCell_Collection) root;
      for (EditorCell cell : collection.getCells()) {
        rebuildMessages(cell);
      }
    }
  }

  public List<EditorMessage> getMessages(EditorCell cell) {
    List<EditorMessage> result = getMessagesCache().get(cell);
    if (result != null) {
      return new ArrayList<EditorMessage>(result);
    }
    return Collections.<EditorMessage>emptyList();
  }

  /**
   * part of myMessagesCache rebuild process
   * this method should be called inside synchronize(myMessagesLock) block only
   */
  private List<EditorMessage> calculateMessages(EditorCell cell) {
    final SNode node = cell.getSNode();
    final List<EditorMessage> result = new SortedList<EditorMessage>(EDITOR_MESSAGES_COPARATOR);
    if (node == null) return result;
    Set<EditorMessage> messageSet = myMessagesToNodes.getBySecond(node);
    for (EditorMessage message : messageSet) {
      if (message.acceptCell(cell, myEditor)) {
        result.add(message);
      }
    }
    if (myEditor.getRootCell() != cell || !(myEditor instanceof InspectorEditorComponent)) {
      // the condition above is because an inspector for the node
      // does not have cells for some node's children (they are edited in main editor)
      // but the cell should not be highlighted only because of this
      if (cell.isBigCell()) {
        for (SNode child : node.getChildren()) {
          EditorCell cellForChild = myEditor.findNodeCell(child);
          if (cellForChild == null) {
            getMessagesFromDescendants(child, result);
          }
        }
      }
    }
    return result;
  }

  private void getMessagesFromDescendants(SNode nodeWithoutCell, List<EditorMessage> messages) {
    messages.addAll(myMessagesToNodes.getBySecond(nodeWithoutCell));
    for (SNode descendant : nodeWithoutCell.getDescendants()) {
      messages.addAll(myMessagesToNodes.getBySecond(descendant));
    }
  }

  private void addMessage(EditorMessage m) {
    EditorMessageOwner owner = m.getOwner();
    if (!myOwnerToMessages.containsKey(owner)) {
      myOwnerToMessages.put(owner, new HashSet<EditorMessage>());
    }
    myOwnerToMessages.get(owner).add(m);
    myMessages.add(m);

    myMessagesToNodes.addLink(m, m.getNode());
  }

  private boolean removeMessage(EditorMessage m) {
    if (m == null) {
      return false;
    }
    EditorMessageOwner owner = m.getOwner();
    Set<EditorMessage> messages = myOwnerToMessages.get(owner);
    if (messages != null) {
      messages.remove(m);
      if (messages.isEmpty()) {
        myOwnerToMessages.remove(owner);
      }
    }
    myMessages.remove(m);
    myEditor.getMessagesGutter().remove(m);

    myMessagesToNodes.clearFirst(m);
    return true;
  }

  public void mark(EditorMessage message) {
    for (EditorMessage msg : getMessages()) {
      if (msg.sameAs(message)) return;
    }

    synchronized (myMessagesLock) {
      addMessage(message);
      rebuildMessages();
    }
    myEditor.getMessagesGutter().add(message);
  }

  public void unmarkSingleMessage(EditorMessage message) {
    unmark(message);
    repaintAndRebuildEditorMessages();
  }

  public void unmark(EditorMessage message) {
    synchronized (myMessagesLock) {
      if (removeMessage(message)) {
        rebuildMessages();
      }
    }
    myEditor.getMessagesGutter().remove(message);
  }

  private void clear() {
    synchronized (myMessagesLock) {
      if (myMessages.isEmpty()) {
        return;
      }
      for (EditorMessage m : new ArrayList<EditorMessage>(myMessages)) {
        removeMessage(m);
      }
      rebuildMessages();
    }
    repaintAndRebuildEditorMessages();
  }

  public boolean clearForOwner(EditorMessageOwner owner) {
    return clearForOwner(owner, true);
  }

  public boolean clearForOwner(EditorMessageOwner owner, boolean repaintAndRebuild) {
    boolean result = myEditor.getMessagesGutter().removeMessages(owner);
    synchronized (myMessagesLock) {
      if (myOwnerToMessages.containsKey(owner)) {
        ArrayList<EditorMessage> messages = new ArrayList<EditorMessage>(myOwnerToMessages.get(owner));
        for (EditorMessage m : messages) {
          removeMessage(m);
        }
        rebuildMessages();
      }
    }
    if (repaintAndRebuild) {
      repaintAndRebuildEditorMessages();
    }
    return result;
  }

  /**
   * perform refresh of messages visible in LeftEditorHighlighter
   * and repaint associated EditorComponent
   */
  public void repaintAndRebuildEditorMessages() {
    ModelAccess.instance().runReadInEDT(new Runnable() {
      public void run() {
        refreshLeftHighlighterMessages();
        myEditor.getExternalComponent().repaint();
      }
    });
  }

  private void refreshLeftHighlighterMessages() {
    assert ModelAccess.instance().isInEDT() : "refreshLeftHighlighterMessages() should be called from EDT only";
    Set<EditorMessageIconRenderer> oldIconRenderers;
    Set<EditorMessageIconRenderer> newIconRenderers;
    synchronized (myMessagesLock) {
      if (!myRebuildIconRenderersCacheFlag) {
        return;
      }
      myRebuildIconRenderersCacheFlag = false;
      oldIconRenderers = myIconRenderersCache;
      newIconRenderers = myIconRenderersCache = new HashSet<EditorMessageIconRenderer>();
      for (EditorMessage message : myMessages) {
        if (message instanceof EditorMessageIconRenderer) {
          myIconRenderersCache.add((EditorMessageIconRenderer) message);
        }
      }
    }
    myEditor.getLeftEditorHighlighter().removeAllIconRenderers(oldIconRenderers);
    myEditor.getLeftEditorHighlighter().addAllIconRenderers(newIconRenderers);
  }

  public void mark(SNode node, Color color, String messageText, EditorMessageOwner owner) {
    if (node == null) return;
    mark(new DefaultEditorMessage(node, color, messageText, owner));
  }

  public void mark(List<EditorMessage> messages) {
    for (int i = 0; i < messages.size(); i++) {
      mark(messages.get(i));
    }
    repaintAndRebuildEditorMessages();
  }

  public void markSingleMessage(EditorMessage message) {
    mark(message);
    repaintAndRebuildEditorMessages();
  }

  public Set<EditorMessage> getMessages() {
    Set<EditorMessage> result = new HashSet<EditorMessage>();
    synchronized (myMessagesLock) {
      result.addAll(myMessages);
    }
    return result;
  }

  // not used anymore?
  @Deprecated
  public Color getColorFor(SNode node) {
    synchronized (myMessagesLock) {
      for (EditorMessage msg : myMessages) {
        if (msg.getNode() == node) return msg.getColor();
      }
    }
    return null;
  }

  public EditorMessage getMessageFor(SNode node) {
    synchronized (myMessagesLock) {
      for (EditorMessage msg : myMessages) {
        if (msg.getNode() == node) return msg;
      }
    }
    return null;
  }

  public List<EditorMessage> getMessagesFor(SNode node) {
    List<EditorMessage> result = new ArrayList<EditorMessage>();
    synchronized (myMessagesLock) {
      result.addAll(myMessagesToNodes.getBySecond(node));
    }
    return result;
  }

  public List<EditorMessage> getMessagesFor(SNode node, EditorMessageOwner owner) {
    List<EditorMessage> result = new ArrayList<EditorMessage>();
    synchronized (myMessagesLock) {
      for (EditorMessage message : myMessagesToNodes.getBySecond(node)) {
        if (message.getOwner() == owner) {
          result.add(message);
        }
      }
    }
    return result;
  }

  public void dispose() {
    ClassLoaderManager.getInstance().removeReloadHandler(myHandler);
  }

  public EditorCell getCell(EditorMessage change) {
    for (Entry<EditorCell, List<EditorMessage>> e: getMessagesCache().entrySet()) {
      if (e.getValue().contains(change)) {
        return e.getKey();
      }
    }
    return null;
  }

}