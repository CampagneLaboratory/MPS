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
package jetbrains.mps.smodel;

import jetbrains.mps.util.Pair;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.HashSet;
import java.util.Set;

public class NodeReadAccessInEditorListener implements INodesReadListener {
  protected HashSet<SNode> myNodesToDependOn = new HashSet<SNode>();
  protected HashSet<SNodeReference> myReferentTargetsToDependOn = new HashSet<SNodeReference>();
  protected HashSet<Pair<SNodeReference, String>> myDirtilyReadAccessedProperties = new HashSet<Pair<SNodeReference, String>>();
  protected HashSet<Pair<SNodeReference, String>> myExistenceReadAccessProperties = new HashSet<Pair<SNodeReference, String>>();

  private Set<Pair<SNodeReference, String>> myCleanlyReadAccessedProperties = new HashSet<Pair<SNodeReference, String>>();

  private static final Logger LOG = LogManager.getLogger(NodeReadAccessInEditorListener.class);

  public NodeReadAccessInEditorListener() {
  }

  /**
   * This constructor should be used while creating NodeReadAccessInEditorListener to track top-level EditorCell dependencies.
   * In this case NodeReadAccessInEditorListener instance will include passed rootNode into the set myNodesToDependOn.
   * Intention is to properly handle EditorCell dependencies and update in case root cell has no node-sensitive child cells, so
   * read-access to the root node will not be recorded.
   * <p/>
   * For example, in case root node editor looks like:
   * <p/>
   * [- (- %children% -) -]
   * <p/>
   * then read access to each of the child nodes will e recorded, but root (parent) node will not be tracked and returned as one
   * of myNodesToDependOn. That's because nodeChildReadAccess() is never called anymore.
   *
   * @param rootNode the node used to create root cell of the editor
   */
  public NodeReadAccessInEditorListener(SNode rootNode) {
    myNodesToDependOn.add(rootNode);
  }

  public Set<SNode> getNodesToDependOn() {
    return myNodesToDependOn;
  }

  public Set<SNodeReference> getRefTargetsToDependOn() {
    return myReferentTargetsToDependOn;
  }

  public HashSet<Pair<SNodeReference, String>> getDirtilyReadAccessedProperties() {
    return myDirtilyReadAccessedProperties;
  }

  public HashSet<Pair<SNodeReference, String>> getExistenceReadAccessProperties() {
    return myExistenceReadAccessProperties;
  }

  public Set<Pair<SNodeReference, String>> popCleanlyReadAccessedProperties() {
    Set<Pair<SNodeReference, String>> result = myCleanlyReadAccessedProperties;
    myCleanlyReadAccessedProperties = new HashSet<Pair<SNodeReference, String>>();
    return result;
  }

  public void addNodesToDependOn(Set<SNode> nodes) {
    if (nodes == null) {
      LOG.error("passing null nodes collection to depend on");
      return;
    }
    myNodesToDependOn.addAll(nodes);
  }

  public void addRefTargetsToDependOn(Set<SNodeReference> targets) {
    myReferentTargetsToDependOn.addAll(targets);
  }

  @Override
  public void propertyDirtyReadAccess(SNode node, String propertyName) {
    myDirtilyReadAccessedProperties.add(new Pair<SNodeReference, String>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
    //refactored here from calling after unique usage
    nodeUnclassifiedReadAccess(node);
  }

  @Override
  public void propertyCleanReadAccess(SNode node, String propertyName) {
    myCleanlyReadAccessedProperties.add(new Pair<SNodeReference, String>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
  }

  @Override
  public void nodeUnclassifiedReadAccess(SNode node) {
    myNodesToDependOn.add(node);
  }

  @Override
  public void modelNodesReadAccess(SModel model) {
    /* ignored */
  }

  @Override
  public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
    addRefTargetToDependOn(new jetbrains.mps.smodel.SNodePointer(referent));
  }

  public void addRefTargetToDependOn(SNodeReference target) {
    myReferentTargetsToDependOn.add(target);
  }

  @Override
  public void propertyExistenceAccess(SNode node, String propertyName) {
    myExistenceReadAccessProperties.add(new Pair<SNodeReference, String>(new jetbrains.mps.smodel.SNodePointer(node), propertyName));
    //refactored here from from calling after unique usage
    nodeUnclassifiedReadAccess(node);
  }

  public void clearCleanlyReadAccessProperties() {
    myCleanlyReadAccessedProperties = new HashSet<Pair<SNodeReference, String>>();
  }

  @Override
  public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
    assert false : "should be never called";
  }

  @Override
  public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
    // todo remove when refactoring completed
  }
}
