/*
 * Copyright 2003-2008 JetBrains s.r.o.
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

import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.ReloadAdapter;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.ManyToManyMap;
import jetbrains.mps.nodeEditor.cells.EditorCell;

import java.awt.Color;
import java.util.*;
import java.util.HashSet;
import java.util.HashMap;


public class NodeHighlightManager implements EditorMessageOwner {
  private EditorComponent myEditor;
  private Set<EditorMessage> myMessages = new HashSet<EditorMessage>();
  private Map<EditorMessageOwner, Set<EditorMessage>> myOwnerToMessages = new HashMap<EditorMessageOwner, Set<EditorMessage>>();
  private ManyToManyMap<EditorMessage, SNode> myMessagesToNodes = new ManyToManyMap<EditorMessage, SNode>();

  private final Object myMessagesLock = new Object();
  public ReloadAdapter myHandler;

  public NodeHighlightManager(EditorComponent edtitor) {
    myEditor = edtitor;
    myHandler = new ReloadAdapter() {
      public void onReload() {
        clear();
      }
    };
    ClassLoaderManager.getInstance().addReloadHandler(myHandler);
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

  private void removeMessage(EditorMessage m) {
    EditorMessageOwner owner = m.getOwner();
    Set<EditorMessage> messages = myOwnerToMessages.get(owner);
    messages.remove(m);
    if (messages.isEmpty()) {
      myOwnerToMessages.remove(owner);
    }
    myMessages.remove(m);
    myEditor.getMessagesGutter().remove(m);

    myMessagesToNodes.clearFirst(m);
  }

  public void clear() {
    synchronized (myMessagesLock) {
      for (EditorMessage m : new ArrayList<EditorMessage>(myMessages)) {
        removeMessage(m);
      }
    }
    myEditor.getExternalComponent().repaint();
  }

  public boolean clearForOwner(EditorMessageOwner owner) {
    boolean result = myEditor.getMessagesGutter().removeMessages(owner);
    synchronized (myMessagesLock) {
      if (myOwnerToMessages.containsKey(owner)) {
        for (EditorMessage m : new ArrayList<EditorMessage>(myOwnerToMessages.get(owner))) {
          removeMessage(m);
        }
      }
    }
    myEditor.updateMessages();
    return result;
  }

  public void mark(SNode node, Color color, String messageText, EditorMessageOwner owner) {
    if (node == null) return;
    mark(new DefaultEditorMessage(node, color, messageText, owner));
  }

  public void mark(EditorMessage message) {
    for (EditorMessage msg : getMessages()) {
      if (msg.sameAs(message)) return;
    }

    synchronized (myMessagesLock) {
      addMessage(message);
    }
    myEditor.getMessagesGutter().add(message);
    myEditor.updateMessages();
  }

  public Set<EditorMessage> getMessages() {
    Set<EditorMessage> result = new HashSet<EditorMessage>();
    synchronized (myMessagesLock) {
      result.addAll(myMessages);
    }
    return result;
  }

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

  public void dispose() {
    ClassLoaderManager.getInstance().removeReloadHandler(myHandler);
  }
}
