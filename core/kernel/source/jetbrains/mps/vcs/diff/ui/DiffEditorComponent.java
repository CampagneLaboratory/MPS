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
package jetbrains.mps.vcs.diff.ui;

import jetbrains.mps.nodeEditor.*;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.vcs.diff.changes.*;

import java.util.*;
import java.awt.Color;
import java.awt.Point;
import java.awt.Rectangle;

public abstract class DiffEditorComponent extends EditorComponent {
  private EditorMessageOwner myOwner = new EditorMessageOwner() {

  };
  private List<Change> myChanges = new ArrayList<Change>();
  private ArrayList<ChangeEditorMessage> myChangeEditorMessages = new ArrayList<ChangeEditorMessage>();
  private InspectorEditorComponent myInspector;
  private static final Color ERROR_COLOR = new Color(255, 220, 220);

  public DiffEditorComponent(IOperationContext context, SNode node) {
    super(context);
    myInspector = new InspectorEditorComponent();
    myInspector.setEditable(false);
    editNode(node, context);

  }

  public void inspect(SNode node) {
    myInspector.inspectNode(node, getOperationContext());
    removeAllChangesFrom(myInspector);
    myInspector.getHighlightManager().rebuildMessages();
    if (myInspector.getHighlightManager().getMessageFor(node) == null) {
      makeChangeBlocks(myInspector, new ArrayList(myChangeEditorMessages));
    }
  }

  public EditorCell createRootCell() {
    return createRootCell(null);
  }


  public InspectorEditorComponent getInspector() {
    return myInspector;
  }

  public EditorCell createRootCell(List<SModelEvent> events) {
    if (getEditedNode() == null || getEditedNode().isDeleted()) {
      EditorContext editorContext = getEditorContext();
      return new EditorCell_Constant(editorContext, getEditedNode(), "<no editor info>");
    }
    return getEditorContext().createRootCell(getEditedNode(), events);
  }

  public void hightlight(final List<Change> changes, final boolean isNewVersion, final boolean revertedChanges) {
    final List<ChangeEditorMessage> resultChanges = new ArrayList<ChangeEditorMessage>();
    myChanges = new ArrayList<Change>(changes);
    SNode sNode = getRootCell().getSNode();
    if (sNode == null) {
      return;
    }
    final SModel model = sNode.getModel();

    final Set<Change> newChanges = getNewChanges(changes);

    ModelAccess.instance().runReadAction(new Runnable() {

      public void run() {
        for (Change change : changes) {

          if (change instanceof SetReferenceChange) {
            SetReferenceChange referenceChange = (SetReferenceChange) change;

            ChangeEditorMessage message = createEditorMessage(change, model, revertedChanges, !newChanges.contains(change));
            message.setRole(referenceChange.getRole());

            resultChanges.add(message);
            getHighlightManager().mark(message);
          }

          if (change instanceof MoveNodeChange || change instanceof ChangeConceptChange) {
            ChangeEditorMessage message = createEditorMessage(change, model, revertedChanges, !newChanges.contains(change));
            resultChanges.add(message);
            getHighlightManager().mark(message);
          }

          if (change instanceof NewNodeChange) {
            if (!isNewVersion) {
              ChangeEditorMessage message = createEditorMessage(change, model, revertedChanges, !newChanges.contains(change));
              resultChanges.add(message);
              getHighlightManager().mark(message);
            }
          }

          if (change instanceof SetPropertyChange) {
            SetPropertyChange propertyChange = (SetPropertyChange) change;
            ChangeEditorMessage message = createEditorMessage(change, model, revertedChanges, !newChanges.contains(change));
            message.setProperty(propertyChange.getProperty());
            resultChanges.add(message);
            getHighlightManager().mark(message);
          }

          if (change instanceof DeleteNodeChange) {
            if (isNewVersion) {
              ChangeEditorMessage message = createEditorMessage(change, model, revertedChanges, !newChanges.contains(change));
              resultChanges.add(message);
              getHighlightManager().mark(message);
            }
          }

        }
      }
    });
    for (ChangeEditorMessage editorMessage : resultChanges) {
      getInspector().getHighlightManager().mark(editorMessage);
    }
    myChangeEditorMessages = new ArrayList<ChangeEditorMessage>(resultChanges);
  }

  private Set<Change> getNewChanges(List<Change> changes) {
    Set<SNodeId> newNodes = new HashSet<SNodeId>();
    for (Change change : changes) {
      if (change instanceof NewNodeChange) {
        newNodes.add(change.getAffectedNodeId());
      }
    }
    Set<Change> newChanges = new HashSet<Change>();
    for (Change change : changes) {
      if (change instanceof NewNodeChange) {
        SNodeId id = ((NewNodeChange) change).getNodeParent();
        if (id != null && newNodes.contains(id)) {
          newChanges.add(change);
        }
      } else {
        SNodeId id = change.getAffectedNodeId();
        if (id != null && newNodes.contains(id)) {
          newChanges.add(change);
        }
      }
    }
    return newChanges;
  }

  private ChangeEditorMessage createEditorMessage(Change change, SModel model, boolean revertChanges, boolean show) {
    Color color = null;
    if (show) {
      if (revertChanges) {
        color = change.getChangeType().getOpositeChange().getColor();
      } else {
        color = change.getChangeType().getColor();
      }
      if (change.isError()) {
        color = ERROR_COLOR;
      }
    }
    SNode id = model.getNodeById(change.getAffectedNodeId());
    return new ChangeEditorMessage(change, id, color, "", myOwner);
  }

  public void makeChangeBlocks() {
    makeChangeBlocks(this, new ArrayList(myChangeEditorMessages));
    if (myInspector.getHighlightManager().getMessageFor(myInspector.getEditedNode()) == null) {
      makeChangeBlocks(myInspector, new ArrayList(myChangeEditorMessages));
    }
  }

  public void makeChangeBlocks(EditorComponent component, List<ChangeEditorMessage> changeEditorMessages) {
    relayout();
    final NodeHighlightManager highlightManager = component.getHighlightManager();
    highlightManager.rebuildMessages();
    for (Iterator<ChangeEditorMessage> iterator = changeEditorMessages.iterator(); iterator.hasNext();) {
      ChangeEditorMessage change = iterator.next();
      if (highlightManager.getCell(change) == null) {
        iterator.remove();
      }
    }
    Collections.sort(changeEditorMessages, new Comparator<ChangeEditorMessage>() {

      public int compare(ChangeEditorMessage o1, ChangeEditorMessage o2) {
        return highlightManager.getCell(o1).getY() - highlightManager.getCell(o2).getY();
      }
    });

    ChangesBlock block = null;

    for (ChangeEditorMessage m : changeEditorMessages) {
      EditorCell cell = highlightManager.getCell(m);
      if (block == null) {
        block = new ChangesBlock();
      } else {
        if (block.getY2() < cell.getY()) {
          configureBlock(block);
          addBlock(component, block);
          block = new ChangesBlock();
        }
      }
      configureBlock(block);
      block.addChange(m, cell);
    }
    if (block != null) {
      addBlock(component, block);
    }
  }

  private void addBlock(EditorComponent component, ChangesBlock block) {
    block.addTo(component);
  }

  private void removeAllChangesFrom(EditorComponent component) {
    for (AdditionalPainter painter : getAdditionalPainters()) {
      if (painter instanceof ChangesBlock) {
        ((ChangesBlock) painter).removeFrom(component);
      }
    }
  }

  public abstract void configureBlock(ChangesBlock block);

  public void removeAllChanges() {
    for (ChangeEditorMessage message : myChangeEditorMessages) {
      getHighlightManager().unmark(message, false);
      myInspector.getHighlightManager().unmark(message, false);
    }
    myInspector.getHighlightManager().rebuildMessages();
    removeAllChangesFrom(this);
    removeAllChangesFrom(myInspector);
  }

  public SNode getFirtsVisibleNode() {
    return getFirtsVisibleNode(getEditedNode());
  }

  private SNode getFirtsVisibleNode(SNode node) {
    EditorCell cell = findNodeCell(node);
    if (cell == null) {
      return null;
    }
    if (cell.getY() > getViewport().getViewPosition().y) {
      return node;
    }
    for (SNode child : node.getChildrenArray()) {
      SNode result = getFirtsVisibleNode(child);
      if (result != null) {
        return result;
      }

    }
    return null;
  }

  public void synchronizeViewWith(final DiffEditorComponent otherComponent) {
    if (this == otherComponent) {
      return;
    }
    ModelAccess.instance().runReadAction(new Runnable() {

      public void run() {
        SNode visibleNode = getFirtsVisibleNode();
        if (visibleNode != null) {
          SNodeId id = visibleNode.getSNodeId();
          int newRelativePos = getViewport().getViewPosition().y - findNodeCell(visibleNode).getY();

          SNode sNode = otherComponent.getEditedNode();
          if (sNode == null) {
            return;
          }
          SNode nodeById = sNode.getModel().getNodeById(id);
          EditorCell oldCell = otherComponent.findNodeCell(nodeById);
          Point position = getViewport().getViewPosition();
          if (oldCell != null) {
            otherComponent.getViewport().setViewPosition(new Point((int) position.getX(), newRelativePos + oldCell.getY()));
            Rectangle viewRect = otherComponent.getViewport().getViewRect();
            if (viewRect.y + viewRect.height > otherComponent.getHeight()) {
              otherComponent.getViewport().setViewPosition(new Point(viewRect.x, otherComponent.getHeight() - viewRect.height));
            }
          }
        }

      }
    });
  }

  public List<Change> getChanges() {
    return myChanges;
  }
}
