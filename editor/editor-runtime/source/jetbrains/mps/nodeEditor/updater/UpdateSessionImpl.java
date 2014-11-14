/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.updater;

import com.intellij.openapi.project.Project;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.ReferencedNodeContext;
import jetbrains.mps.nodeEditor.SModelModificationsCollector;
import jetbrains.mps.nodeEditor.attribute.AttributeKind;
import jetbrains.mps.nodeEditor.hintsSettings.ConceptEditorHintSettingsComponent;
import jetbrains.mps.nodeEditor.hintsSettings.ConceptEditorHintSettingsComponent.HintsState;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.update.UpdateSession;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.WeakSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.lang.ref.WeakReference;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * User: shatalin
 * Date: 03/09/14
 */
public class UpdateSessionImpl implements UpdateSession {
  private static final String[] EMPTY_HINTS_ARRAY = new String[0];

  @NotNull
  private final UpdaterImpl myUpdater;
  private SNode myNode;
  private List<Pair<SNode, SNodeReference>> myModelModifications;
  private String[] myInitialEditorHints = null;

  private Map<SNode, WeakReference<EditorCell>> myBigCellsMap;
  private Map<EditorCell, Set<SNode>> myRelatedNodes;
  private Map<EditorCell, Set<SNodeReference>> myRelatedRefTargets;
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myCleanDependentCells;
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myDirtyDependentCells;
  private Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> myExistenceDependentCells;

  private Deque<ReferencedNodeContext> myContextStack = new LinkedList<ReferencedNodeContext>();

  protected UpdateSessionImpl(@NotNull SNode node, List<SModelEvent> events, @NotNull UpdaterImpl updater, Map<SNode, WeakReference<EditorCell>> bigCellsMap,
      Map<EditorCell, Set<SNode>> relatedNodes, Map<EditorCell, Set<SNodeReference>> relatedRefTargets,
      Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> cleanDependentCells, Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> dirtyDependentCells,
      Map<Pair<SNodeReference, String>, WeakSet<EditorCell>> existenceDependentCells) {
    myNode = node;
    myModelModifications = new SModelModificationsCollector(events).getModifications();
    myUpdater = updater;
    myBigCellsMap = bigCellsMap;
    myRelatedNodes = relatedNodes;
    myRelatedRefTargets = relatedRefTargets;
    myCleanDependentCells = cleanDependentCells;
    myDirtyDependentCells = dirtyDependentCells;
    myExistenceDependentCells = existenceDependentCells;
  }

  @Override
  public void registerDependencies(EditorCell cell, Iterable<SNode> nodes, Iterable<SNodeReference> refTargets) {
    Set<SNode> registeredRelatedNodes = new HashSet<SNode>();
    myRelatedNodes.put(cell, registeredRelatedNodes);

    for (SNode nextNode : nodes) {
      assert nextNode != null;
      registeredRelatedNodes.add(nextNode);
    }
    /**
     * Always adding cell's node to the set of dependencies of the corresponding cell.
     * It was done because read-access to the cell's node can be not recorded during
     * editor update process for some specific editors - if cell's node was not required
     * for the cell creation process.
     *
     * E.G.
     * - node is represented by only constant cells
     * - node is represented as a list of child nodes and at the moment we create editor
     * there were no children in model
     *
     * "constant-only" cells should be still re-created if node attribute was added.
     * "pure-child" cell should be re-created if first child was added to a node.
     *
     * To handle such situations & trigger editor update process for the corresponding
     * cell, we are explicitly adding "self" node to the set of cell dependencies here.
     */
    if (cell.getSNode() != null) {
      registeredRelatedNodes.add(cell.getSNode());
    }

    Set<SNodeReference> registeredRefTargets = new HashSet<SNodeReference>();
    myRelatedRefTargets.put(cell, registeredRefTargets);

    for (SNodeReference nextRefTarget : refTargets) {
      registeredRefTargets.add(nextRefTarget);
    }
  }

  @Override
  public void registerCleanDependency(EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<EditorCell> dependentCells = myCleanDependentCells.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<EditorCell>();
      myCleanDependentCells.put(pair, dependentCells);
    }
    dependentCells.add(cell);
  }

  @Override
  public void registerDirtyDependency(EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<EditorCell> dependentCells = myDirtyDependentCells.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<EditorCell>();
      myDirtyDependentCells.put(pair, dependentCells);
    }
    dependentCells.add(cell);
  }

  @Override
  public void registerExistenceDependency(EditorCell cell, Pair<SNodeReference, String> pair) {
    WeakSet<EditorCell> dependentCells = myExistenceDependentCells.get(pair);
    if (dependentCells == null) {
      dependentCells = new WeakSet<EditorCell>();
      myExistenceDependentCells.put(pair, dependentCells);
    }
    dependentCells.add(cell);
  }

  public EditorCell performUpdate() {
    ReferencedNodeContext currentContext = ReferencedNodeContext.createNodeContext(getNode());
    myContextStack.push(currentContext);
    EditorContext editorContext = getUpdater().getEditorContext();
    editorContext.getCellFactory().pushCellContext();
    try {
      editorContext.getCellFactory().addCellContextHints(getInitialEditorHints(editorContext));
      return EditorManager.getInstanceFromContext(editorContext).createRootCell(editorContext, getNode(), getModelModifications(), currentContext,
          editorContext.isInspector());
    } finally {
      editorContext.getCellFactory().popCellContext();
      myContextStack.pop();
    }
  }

  void setInitialEditorHints(String[] initialHints) {
    myInitialEditorHints = initialHints;
  }

  @NotNull
  private String[] getInitialEditorHints(EditorContext editorContext) {
    if (myInitialEditorHints != null) {
      return myInitialEditorHints;
    }

    Project project = ProjectHelper.toIdeaProject(ProjectHelper.getProject(editorContext.getRepository()));
    if (project == null) {
      return EMPTY_HINTS_ARRAY;
    }
    HintsState state = ConceptEditorHintSettingsComponent.getInstance(project).getState();
    return state.getEnabledHints().toArray(EMPTY_HINTS_ARRAY);
  }

  @Override
  public EditorCell updateChildNodeCell(SNode node) {
    ReferencedNodeContext currentContext = myContextStack.peek().sameContextButAnotherNode(node);
    myContextStack.push(currentContext);
    try {
      EditorContext editorContext = getUpdater().getEditorContext();
      EditorCell nodeCell = EditorManager.getInstanceFromContext(editorContext).createEditorCell(editorContext, getModelModifications(), currentContext);
      return nodeCell;
    } finally {
      myContextStack.pop();
    }
  }

  @Override
  public EditorCell updateRoleAttributeCell(Class attributeKind, EditorCell cellWithRole, SNode roleAttribute) {
    if (attributeKind != AttributeKind.Reference.class && myContextStack.peek().hasRoles()) {
      //Suppressing role attribute cell creation upon reference cells.
      return cellWithRole;
    }
    EditorContext editorContext = getUpdater().getEditorContext();
    return EditorManager.getInstanceFromContext(editorContext).doCreateRoleAttributeCell(attributeKind, cellWithRole, editorContext, roleAttribute,
        myModelModifications);
  }

  @Override
  public <T> T updateReferencedNodeCell(Computable<T> update, SNode node, String role) {
    ReferencedNodeContext currentContext = myContextStack.peek();
    myContextStack.push(currentContext.contextWithOneMoreReference(node, currentContext.getNode(), role));
    try {
      return update.compute();
    } finally {
      myContextStack.pop();
    }
  }

  public void registerAsBigCell(EditorCell cell) {
    myBigCellsMap.put(cell.getSNode(), new WeakReference<EditorCell>(cell));
  }

  @Nullable
  public List<Pair<SNode, SNodeReference>> getModelModifications() {
    return myModelModifications;
  }

  @NotNull
  public SNode getNode() {
    return myNode;
  }

  @NotNull
  protected UpdaterImpl getUpdater() {
    return myUpdater;
  }
}
