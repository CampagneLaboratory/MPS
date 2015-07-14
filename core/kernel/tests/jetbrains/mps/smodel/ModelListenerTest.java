/*
 * Copyright 2003-2015 JetBrains s.r.o.
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

import jetbrains.mps.smodel.ModelUndoTest.TestUndoHandler;
import jetbrains.mps.smodel.TestModelFactory.TestModelAccess;
import jetbrains.mps.smodel.TestModelFactory.TestRepository;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelAccessListener;
import org.jetbrains.mps.openapi.model.SModelChangeListener;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ErrorCollector;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.TimeUnit;

import static jetbrains.mps.smodel.TestModelFactory.ourConcept;
import static jetbrains.mps.smodel.TestModelFactory.ourRef;
import static jetbrains.mps.smodel.TestModelFactory.ourRole;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.greaterThan;
import static org.hamcrest.Matchers.lessThan;
import static org.hamcrest.Matchers.notNullValue;

/**
 * Check contemporary and legacy model listener approaches, ensure they (not) get notified as expected.
 * Contemporary listeners are checked indirectly, by means of legacy listeners being registered. Internally, we
 * use only new listeners, and thus ensure we check both functionality of new listeners and compatibility with legacy code.
 *
 * Lives in [kernel] module for now as its dependencies are here, and not in [smodel]
 *
 * @author Artem Tikhomirov
 */
public class ModelListenerTest {
  @Rule
  public ErrorCollector myErrors = new ErrorCollector();

  private final TestModelAccess myTestModelAccess = new TestModelAccess();
  private final SRepository myTestRepo = new TestRepository(myTestModelAccess);

  @Before
  public void setUp() {
    TestUndoHandler uh = new TestUndoHandler();
    uh.needsUndo(false); // undo is not our focus here, we merely need to avoid NPE from ModelAccess.instance().isInsideCommand()
    UndoHelper.getInstance().setUndoHandler(uh);
  }


  /**
   * Check all three model notification approaches work.
   */
  @Test
  public void testNodeReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5, 2, 3);
    final int actualNodes = m1f.countModelNodes();

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);

    readTreeNodes(m1.getRootNodes());

    Assert.assertEquals(actualNodes * 3, cl1.myVisitedNodes);
    Assert.assertEquals(actualNodes * 2, cl1.myPropertiesRead);
    Assert.assertEquals(0, cl1.myReferencesRead);

    // NodeReadEventsCaster doesn't send events unless model.canFireEvent is true (which is false
    // as long SModel is not in a repository (!SNodeOperations.isRegistered(myModelDescriptor))
    Assert.assertEquals(0, cl2.myVisitedNodes);
    Assert.assertEquals(0, cl2.myPropertiesRead);
    Assert.assertEquals(0, cl2.myReferencesRead);
    Assert.assertEquals(0, cl2.myChildrenRead);

    // No notifications for NodeReadAccessCasterInEditor as well
    Assert.assertEquals(0, cl3.myVisitedNodes);
    Assert.assertEquals(0, cl3.myPropertiesRead);
    Assert.assertEquals(0, cl3.myReferencesRead);


    // do the same, with the model attached to a repository
    cl1.reset();
    cl2.reset();
    cl3.reset();
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    // readTreeNodes notifies 1 read per iteration over child, +1 for getProperties, +1 for getReferences()
    readTreeNodes(m1.getRootNodes());
    final int expectedNodeReadCount = actualNodes * 3;
    //
    // SModelAccessListener
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(expectedNodeReadCount));
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(actualNodes * 2));
    myErrors.checkThat(cl1.myReferencesRead, equalTo(0));
    //
    // NodeReadEventsCaster
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(expectedNodeReadCount));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(cl1.myVisitedNodes));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(actualNodes * 2));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(0));
    myErrors.checkThat("NodeReadEventsCaster.fireNodeChildReadAccess is never used", cl2.myChildrenRead, equalTo(0));
    //
    // NodeReadAccessCasterInEditor
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(expectedNodeReadCount));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(cl1.myVisitedNodes));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(actualNodes * 2));
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0));

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Single child iterated over with getChildren() shall dispatch node read event, see https://youtrack.jetbrains.com/issue/MPS-18766
   * The problem was due to iterator not dispatching nodeRead for the element iterator was initialized with.
   */
  @Test
  public void testSingleChildIteratorNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 1, 1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode n1 = r1.getChildren().iterator().next();
    Assert.assertNotNull(n1);
    // FIXME make sure we've got notification exactly for the node we're interested in (i.e. child of a root)
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode n2 = r1.getChildren(ourRole).iterator().next();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    m1f.detachAccessListeners(cl1, cl2, cl3);
    Assert.assertNotNull(n2);
    Assert.assertEquals(n1, n2);
  }

  /**
   * Capture state of node read notifications as we iterate children of a given role.
   */
  @Test
  public void testChildrenNextNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 3, 1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    // getChildren(role) is the one to check, as ChildrenIterator#getNext(node) calls for node.getContainmentLink(), which triggers another nodeRead
    final Iterator<? extends SNode> childIterator = r1.getChildren(ourRole).iterator();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode n1 = childIterator.next();
    final SNode n2 = childIterator.next();
    final SNode n3 = childIterator.next();
    m1f.detachAccessListeners(cl1, cl2, cl3);
    Assert.assertNotNull(n1);
    Assert.assertNotNull(n2);
    Assert.assertNotNull(n3);
    // 3 for each node + 2 for getNext(node) calls
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(3));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(3));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(3));
  }

  /**
   * Explicitly state convention whether node.children.isEmpty/isNotEmpty which ends up with children.iterator.hasNext() shall
   * trigger model read event for the first child.
   */
  @Test
  public void testChildrenHasNextNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    final TestModelFactory m2f = new TestModelFactory();
    final SModel m1 = m1f.createModel(1, 1);
    final SModel m2 = m2f.createModel(1, 3);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    m2f.attachTo(myTestRepo);

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    //
    // collection{single element}.hasNext
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertTrue(r1.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    // just in case accessor with role is different
    Assert.assertTrue(r1.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
    //
    // collection{multiple elements}.hasNext
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode r2 = m2f.getRoot(1);
    m2f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertTrue(r2.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    Assert.assertTrue(r2.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m2f.detachAccessListeners(cl1, cl2, cl3);

    //
    // collection{empty}.hasNext
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode n1 = r1.getChildren(ourRole).iterator().next();
    // n1 is leaf node
    m1f.attachAccessListeners(cl1, cl2, cl3);
    Assert.assertFalse(n1.getChildren().iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    cl1.reset(); cl2.reset(); cl3.reset();
    Assert.assertFalse(n1.getChildren(ourRole).iterator().hasNext());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Read notifications of SNode.getProperty() and SNode.hasProperty()
   */
  @Test
  public void testPropertyReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    final SNode r1 = m1f.getRoot(1);
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // hasProperty
    boolean shouldHave = r1.hasProperty(SNodeUtil.property_INamedConcept_name);
    myErrors.checkThat(shouldHave, equalTo(true));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1)); // cl3.propertyExistenceAccess() dispatches unclassifiedNodeRead
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(0));
    myErrors.checkThat(cl3.getExistenceReadAccessProperties().size(), equalTo(1));
    //
    // getProperty
    cl1.reset(); cl2.reset(); cl3.reset(); cl3.getExistenceReadAccessProperties().clear();
    r1.getProperty(SNodeUtil.property_INamedConcept_name);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl1.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl2.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.myPropertiesRead, equalTo(1));
    myErrors.checkThat(cl3.getExistenceReadAccessProperties().size(), equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Read notifications of SNode.getReference() and SNode.getReferenceTarget()
   */
  @Test
  public void testReferenceReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 5);
    final SNode r1 = m1f.getRoot(1);
    final SNode r2c1 = m1f.getRoot(2).getFirstChild();
    r1.setReferenceTarget(ourRef, r2c1);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    //
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // getReference()
    final SReference ref1 = r1.getReference(ourRef);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl1.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(1));
    // no NodeEditorCasterInEditor update, it is notified from StaticReference#getTargetNode_internal
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0));
    myErrors.checkThat(ref1.getTargetNode(), equalTo(r2c1));
    //
    // getReferenceTarget()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode t = r1.getReferenceTarget(ourRef);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1)); // 1 for target node
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1)); // StaticReference.getTargetNode_internal
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1)); // StaticReference.getTargetNode_internal
    myErrors.checkThat(cl1.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl2.myReferencesRead, equalTo(1));
    myErrors.checkThat(cl3.myReferencesRead, equalTo(0)); // see getReference() part, above
    myErrors.checkThat(t, equalTo(r2c1));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Test notifications around add/remove of a child node
   *
   * FWIW, might be interesting to look at node read notifications - SModel.fireChildRemovedEvent() does an
   * extra children walk (to find out index of anchor), thus triggering superfluous node read notifications
   */
  @Test
  public void testNodeAddRemoveNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode c = m1f.createNode();

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    r1.addChild(ourRole, c);
    myErrors.checkThat(cl1.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    r1.removeChild(c);
    myErrors.checkThat(cl1.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemoved.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemoved.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    final SNode anchor = r1.getFirstChild();
    m1f.clearEditableChanged();
    r1.insertChildBefore(ourRole, c, anchor);
    myErrors.checkThat(c.getNextSibling(), equalTo(anchor));
    myErrors.checkThat(cl1.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  /**
   * addRootNode/removeRootNode used to dispatch events and update setChanged
   * in a way different from add/remove of an ordinary node
   */
  @Test
  public void testRootAddRemoveNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 2);
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);
    final SNode c = m1f.createNode();
    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    //
    m1.addRootNode(c);
    myErrors.checkThat(cl1.myAddedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    myErrors.checkThat(cl1.myAddedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myAdded.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(3));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    m1.removeRootNode(c);
    myErrors.checkThat(cl1.myRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(2));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    //
    // use SNode.delete
    m1.addRootNode(c);
    Assert.assertEquals(3, IterableUtil.asCollection(m1.getRootNodes()).size());
    cl1.reset(); cl2.reset();
    m1f.clearEditableChanged();
    c.delete();
    myErrors.checkThat(cl1.myRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.size(), equalTo(1));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl1.myBeforeRemovedRoots.contains(c), equalTo(true));
    myErrors.checkThat(cl2.myRemoved.contains(c), equalTo(true));
    myErrors.checkThat(IterableUtil.asCollection(m1.getRootNodes()).size(), equalTo(2));
    myErrors.checkThat(m1f.isEditableChanged(), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  @Test
  public void testPropertyChangeNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    final String newValue = "XXX";
    r1.setProperty(SNodeUtil.property_INamedConcept_name, newValue);
    m1f.detachChangeListeners(cl1, cl2);
    Assert.assertEquals(newValue, r1.getProperty(SNodeUtil.property_INamedConcept_name));
    myErrors.checkThat(cl1.myChangedProperties.size(), equalTo(1));
    myErrors.checkThat(cl1.myChangedProperties.contains(SNodeUtil.property_INamedConcept_name.getName()), equalTo(true));
    myErrors.checkThat(cl2.myChangedProperties.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedProperties.contains(SNodeUtil.property_INamedConcept_name.getName()), equalTo(true));
  }

  @Test
  public void testReferenceChangeNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    final SNode r1 = m1f.getRoot(1);
    final SNode r2c1 = m1f.getRoot(2).getFirstChild();
    final SNode r3c2 = m1f.getRoot(3).getFirstChild().getNextSibling();
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);

    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);
    // create, with setReferenceTarget()
    r1.setReferenceTarget(ourRef, r2c1);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    // create, with setReference()
    cl1.reset(); cl2.reset();
    r2c1.setReference(ourRef, jetbrains.mps.smodel.SReference.create(ourRef, r2c1, r3c2));
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    // change, with setReference
    cl1.reset(); cl2.reset();
    r1.setReference(ourRef, jetbrains.mps.smodel.SReference.create(ourRef, r1, r3c2));
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    // change, with setReferenceTarget
    cl1.reset(); cl2.reset();
    r2c1.setReferenceTarget(ourRef, r1);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(1));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    // delete, with setReference()
    cl1.reset(); cl2.reset();
    r2c1.setReference(ourRef, null);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(0));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    // delete, with setReferenceTarget()
    cl1.reset(); cl2.reset();
    r1.setReferenceTarget(ourRef, null);
    myErrors.checkThat(cl1.myAddedRef.size(), equalTo(0));
    myErrors.checkThat(cl1.myRemovedRef.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.size(), equalTo(1));
    myErrors.checkThat(cl2.myChangedReferences.contains(ourRef.getRoleName()), equalTo(true));
    m1f.detachChangeListeners(cl1, cl2);
  }

  /**
   * Explicitly state convention that access to node's meta-model or auxiliary features doesn't trigger read events
   * {@link org.jetbrains.mps.openapi.model.SNode#getConcept()},
   * {@link org.jetbrains.mps.openapi.model.SNode#getContainmentLink()}
   * {@link org.jetbrains.mps.openapi.model.SNode#getReference()}}
   * {@link org.jetbrains.mps.openapi.model.SNode#getNodeId()}
   * {@link org.jetbrains.mps.openapi.model.SNode#toString()}}
   *
   * FIXME what about read notifications from getName() and getPresentation()?
   */
  @Test
  public void testNoReadNotifyForMeta() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c1 = r1.getFirstChild();
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    //
    // getConcept()
    SConcept c = r1.getConcept();
    myErrors.checkThat(c, equalTo(ourConcept));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // SNodePointer:getReference()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SNodeReference ptr = r1.getReference();
    myErrors.checkThat(ptr, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // getContainmentLink()
    cl1.reset(); cl2.reset(); cl3.reset();
    final SContainmentLink roleInParent = r1c1.getContainmentLink();
    myErrors.checkThat(roleInParent, equalTo(ourRole));
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // getNodeId()
    cl1.reset(); cl2.reset(); cl3.reset();
    SNodeId nid = r1c1.getNodeId();
    myErrors.checkThat(nid, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    //
    // toString()
    cl1.reset(); cl2.reset(); cl3.reset();
    String presentation = r1c1.toString();
    myErrors.checkThat(presentation, notNullValue());
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(0));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(0));
    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Node could get attached to a repository in two cases - when a repository is available
   * the moment node is added to model, and another case is when model got attached to a repository
   * later and nodes get to know their repository the moment they are accessed from the model.
   *
   * There's a flaw in the second scenario:
   * Node is attached to a repository, and its children are attached the moment we iterate over them.
   * However, if we get a non-root node from a model by id, and then obtain its parent, the parent node
   * won't be attached to a repository.
   *
   * I use ModelAccess.disableRead() here just to discover the fact SNode.myRepository field is null. Indeed,
   * real code won't mess with non-read model activities.
   */
  @Test
  public void testNodeHierarchyAttach() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(3, 2);
    final SNodeId r2c1 = m1f.getRoot(2).getFirstChild().getNodeId();
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode notRoot = m1.getNode(r2c1);
    // [sanity] - check that disabled read indeed triggers IMAE
    myTestModelAccess.disableRead();
    boolean gotAccessError = false;
    try {
      notRoot.getProperty(SNodeUtil.property_INamedConcept_name);
    } catch (IllegalModelAccessError e) {
      // expected, ignored
      gotAccessError = true;
    }
    Assert.assertTrue("Model belongs to a repository, SNode.getProperty without read access shall fail", gotAccessError);
    myTestModelAccess.enableRead();
    SNode parent = notRoot.getParent();
    myTestModelAccess.disableRead();
    try {
      parent.getProperty(SNodeUtil.property_INamedConcept_name);
      Assert.fail("getParent() for a node, which is obtained through model.getNodeId(), shall get SRepository and fully-functional checkModelRead");
    } catch (IllegalModelAccessError e) {
      // expected, ignored
    }
  }

  /**
   * SNode.getNextSibling() and getPrevSibling() shall dispatch read notification for node's parent
   * and for the sibling node.
   * Reason to dispatch parent read is that sibling change (change in result of node.getSibling())
   * occurs through change in parent (i.e. addition/removal of a node)
   *
   * Reason to dispatch sibling read is that we notify node read on first access to node, and do not notify node read
   * or property/reference access.
   */
  @Test
  public void testSiblingReadNotify() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c1 = r1.getFirstChild();
    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);
    final SNode r1c2 = r1c1.getNextSibling();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(2));

    cl1.reset(); cl2.reset(); cl3.reset();
    final SNode ps = r1c2.getPrevSibling();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(2));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(2));
    Assert.assertSame(r1c1, ps);

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * Capture read notifications of
   * {@link SModel#getNode(org.jetbrains.mps.openapi.model.SNodeId)},
   * {@link org.jetbrains.mps.openapi.model.SNode#getParent()}
   */
  @Test
  public void testReadNotifyOther() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3, 2);
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r1c2 = r1.getFirstChild().getNextSibling();
    final SNodeId r1c2c1 = r1c2.getFirstChild().getNodeId();

    AccessCountListener1 cl1 = new AccessCountListener1();
    AccessCountListener2 cl2 = new AccessCountListener2();
    AccessCountListener3 cl3 = new AccessCountListener3();
    m1f.attachAccessListeners(cl1, cl2, cl3);

    SNode n = m1.getNode(r1c2c1);
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    Assert.assertNotNull(n);
    Assert.assertSame(r1c2c1, n.getNodeId());

    cl1.reset(); cl2.reset(); cl3.reset();
    SNode p = n.getParent();
    myErrors.checkThat(cl1.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl2.myVisitedNodes, equalTo(1));
    myErrors.checkThat(cl3.myVisitedNodes, equalTo(1));
    Assert.assertSame(r1c2, p);

    m1f.detachAccessListeners(cl1, cl2, cl3);
  }

  /**
   * {@link org.jetbrains.mps.openapi.model.SModelChangeListener} shall dispatch events for unregistered models as well.
   * {@link jetbrains.mps.smodel.event.SModelListener} DOES NOT dispatch events for unregistered models.
   */
  @Test
  public void testChangeNotifyNoRepo() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 3);
    myTestModelAccess.enableRead();
    final SNode r1 = m1f.getRoot(1);

    Assert.assertNull(m1.getRepository());
    ChangeListener1 cl1 = new ChangeListener1();
    ChangeListener2 cl2 = new ChangeListener2();
    m1f.attachChangeListeners(cl1, cl2);

    SNode c = m1f.createNode();
    r1.addChild(ourRole, c);
    myErrors.checkThat(cl1.myAdded.size(), equalTo(0));
    myErrors.checkThat(cl2.myAdded.size(), equalTo(1));
    //
    cl1.reset(); cl2.reset();
    c.setProperty(SNodeUtil.property_INamedConcept_name, "XXX");
    myErrors.checkThat(cl1.myChangedProperties.size(), equalTo(0));
    myErrors.checkThat(cl2.myChangedProperties.size(), equalTo(1));
    //
    cl1.reset(); cl2.reset();
    c.delete();
    myErrors.checkThat(cl1.myRemoved.size(), equalTo(0));
    myErrors.checkThat(cl2.myRemoved.size(), equalTo(1));
    m1f.detachChangeListeners(cl1, cl2);
  }

  /**
   * Ensure parallel reads are viable.
   * <p>
   * Execution time, justification for baseline value
   * Detached model, no listeners: 1 thread = 200 ms; 4 threads = ~265 ms per thread
   * Attached model, no listeners: 1 thread = 270 ms; 4 threads = ~330 ms (300 - 420)
   * Attached model,  3 listeners: 1 thread = 340 ms; 4 threads = 510 ms (500-540)
   * </p>
   * Note, though average time in testWalkTime for slightly smaller model is 50ms, it's rather 200, 75, 25, 20, 20,
   * i.e. each thread in parallel mode is executed as a 'fresh' run, so it looks like JIT optimizes per thread?
   */
  @Test
  public void testParallelRead() throws Exception {
    final TestModelFactory m1f = new TestModelFactory();
    m1f.createModel(20, 100, 10, 5); // ~120k nodes
    final int initialNodeCount = m1f.countModelNodes();
    myTestModelAccess.enableRead();
    m1f.attachTo(myTestRepo);

    final long baselineMillis = 500 * 2; // Use twice as much time to account for slow build agents
    final int parallelThreads = 4;
    final CountDownLatch stopLatch = new CountDownLatch(3); // 1 for thread start sync, 1 for results ready sync, 1 for thread stop sync
    CyclicBarrier b = new CyclicBarrier(parallelThreads, new Runnable() {
      @Override
      public void run() {
        stopLatch.countDown();
      }
    });
    ModelReadThread[] threads = new ModelReadThread[parallelThreads];
    for (int i = 0; i < parallelThreads; i++) {
      threads[i] = new ModelReadThread(b, m1f);
      threads[i].start();
    }
    boolean finishOk = stopLatch.await(10, TimeUnit.SECONDS);
    if (finishOk) {
      final int expectedNodeCount = 3 * initialNodeCount;
      for (int i = 0; i < parallelThreads; i++) {
        myErrors.checkThat(threads[i].getName(), threads[i].getAllThreadListenerCount(), equalTo(expectedNodeCount * parallelThreads));
        myErrors.checkThat(threads[i].getName(), threads[i].getThisThreadCount1(), equalTo(expectedNodeCount));
        myErrors.checkThat(threads[i].getName(), threads[i].getThisThreadCount2(), equalTo(expectedNodeCount));
        myErrors.checkThat(threads[i].getName(), threads[i].getElapsedMillis(), lessThan(baselineMillis));
        myErrors.checkThat(threads[i].getName(), threads[i].getElapsedMillis(), greaterThan(baselineMillis / 4));
      }
      return;
    }
    for (int i = 0; i < parallelThreads; i++) {
      if (threads[i].isAlive()) {
        Throwable th = new Throwable("Hanging thread " + threads[i].getName());
        th.setStackTrace(threads[i].getStackTrace());
        myErrors.addError(th);
        threads[i].interrupt();
      }
    }
  }

  /**
   * Just a quick check iteration time over a model doesn't deviate significantly due to
   * changes in SModel/SNode implementation.
   */
  @Test
  public void testWalkTime() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(10, 25, 15, 5, 4);
    final int actualNodes = m1f.countModelNodes();
    // 10, 25, 15, 5, 4 == 97760 nodes. It takes about 50 ms to walk this model in avg. I use four times as much time to account for slower build agents
    final long baselineMillis = 200;
    final int testRuns = 10;
    long elapsed = 0;
    for (int i = 0; i < testRuns; i++) {
      final long start = System.nanoTime();
      readTreeNodes(m1.getRootNodes());
      elapsed += System.nanoTime()-start;
    }
    long averageMillis = elapsed / 1000000 / testRuns;
    if (averageMillis > baselineMillis) {
      final String fmt = "Walking model of %d nodes was expected to take less than %d ms. Actual average time for %d runs was %d ms";
      Assert.fail(String.format(fmt, actualNodes, baselineMillis, testRuns, averageMillis));
    }
    // guard if it's too fast
    if (averageMillis < baselineMillis / 10) {
      final String fmt = "Walking model of %d nodes took less than 10%% of baseline. Actual average time for %d runs was %d ms, while baseline is %d ms. Re-consider baseline value";
      Assert.fail(String.format(fmt, actualNodes, testRuns, averageMillis, baselineMillis));
    }
  }

  /**
   * There's a defect in insertChildBefore, node to insert has been checked for getParent() == null
   * which holds true both for detached/free-floating nodes AND for normal roots
   * Model m1 with two roots, r1 and r2. Insert r1 under r2 and observe both roots still there, as well as r1 as child of r2
   * FIXME this is not a listener test, add listeners or move to proper place
   */
  @Test
  public void testRootInsertedAsChild_sameModel() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 2);
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode r2 = m1f.getRoot(2);
    final SNodeId r1id = r1.getNodeId();
    Assert.assertEquals(2, IterableUtil.asCollection(m1.getRootNodes()).size());
    Assert.assertEquals(2, IterableUtil.asCollection(r2.getChildren()).size());
    Assert.assertSame(r1, m1.getNode(r1id));
    //
    //
    try {
      r2.insertChildBefore(ourRole, r1, null);
      Assert.assertEquals(2, IterableUtil.asCollection(m1.getRootNodes()).size());// 2 !!!
      Assert.assertEquals(3, IterableUtil.asCollection(r2.getChildren()).size()); // 3 !!!
      Assert.assertTrue(IterableUtil.asCollection(r2.getChildren()).contains(r1)); // !!!
      Assert.assertNotNull(r2.getParent()); // !!!
      Assert.assertSame(r1, m1.getNode(r1id)); // ?!
      Assert.fail("Insert of a root not detached from a model shall fail");
    } catch (IllegalModelAccessException ignored) {
      // expected
    }
  }

  /**
   * There's was a left-over from pre-3.0 to clear model of a node being added to free-floating node.
   * Only model was cleared, without un-registering node from its model.
   *
   * Move root from a registered model (m2) to a free-floating node
   * FIXME not a listener test either
   */
  @Test
  public void testRootInsertedAsChild_otherModel() {
    final TestModelFactory m1f = new TestModelFactory();
    SModel m1 = m1f.createModel(2, 2);
    myTestModelAccess.enableWrite();
    m1f.attachTo(myTestRepo);
    final SNode r1 = m1f.getRoot(1);
    final SNode ffn = m1f.createNode();
    final SNodeId r1id = r1.getNodeId();
    Assert.assertEquals(2, IterableUtil.asCollection(m1.getRootNodes()).size());
    Assert.assertEquals(2, IterableUtil.asCollection(r1.getChildren()).size());
    Assert.assertSame(r1, m1.getNode(r1id));
    //
    //
    try {
      ffn.insertChildBefore(ourRole, r1, null);
      Assert.assertEquals(2, IterableUtil.asCollection(m1.getRootNodes()).size());
      Assert.assertTrue(IterableUtil.asCollection(ffn.getChildren()).contains(r1));
      Assert.assertSame(r1, m1.getNode(r1id)); // still in the model
      Assert.assertNull(m1.getNode(r1id).getModel()); // but got no model assigned
      Assert.fail("Insert of a root not detached from a model shall fail");
    } catch (IllegalModelAccessException ignored) {
      // expected
    }
  }

  // read every property and every reference of an each node in sub-tree
  /*package*/ static void readTreeNodes(Iterable<? extends SNode> nodes) {
    for (SNode n : nodes) { // 1 nodeRead per next()
      for (SProperty p : n.getProperties()) { // 1 nodeRead
        n.getProperty(p);
      }
      for (org.jetbrains.mps.openapi.model.SReference r : n.getReferences()) { // 1 nodeRead
        n.getReferenceTarget(r.getLink());
      }
      readTreeNodes(n.getChildren()); // twice per each child - both hasNext and next trigger read event
    }
  }

  private static class AccessCountListener1 implements SModelAccessListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = 0;
    }

    @Override
    public synchronized void nodeRead(SNode node) {
      myVisitedNodes++;
    }

    @Override
    public void propertyRead(SNode node, String name) {
      myPropertiesRead++;
    }

    @Override
    public void referenceRead(SNode node, String role) {
      myReferencesRead++;
    }
  }

  private static class AccessCountListener2 extends AbstractNodesReadListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;
    public int myChildrenRead;

    @Override
    public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
      myChildrenRead++;
    }

    @Override
    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      myPropertiesRead++;
    }

    @Override
    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      myReferencesRead++;
    }

    @Override
    public void nodeUnclassifiedReadAccess(SNode node) {
      myVisitedNodes++;
    }

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = myChildrenRead = 0;
    }
  }

  private static class AccessCountListener3 extends NodeReadAccessInEditorListener {
    public int myVisitedNodes;
    public int myPropertiesRead;
    public int myReferencesRead;

    @Override
    public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
      Assert.fail("NodeReadAccessCasterInEditor doesn't call this method from NodeReadAccessInEditorListener");
    }

    @Override
    public void propertyDirtyReadAccess(SNode node, String propertyName) {
      myPropertiesRead++;
    }

    @Override
    public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
      myReferencesRead++;
    }

    @Override
    public void nodeUnclassifiedReadAccess(SNode node) {
      myVisitedNodes++;
    }

    public void reset() {
      myVisitedNodes = myPropertiesRead = myReferencesRead = 0;
    }
  }

  private static class ChangeListener1 extends SModelAdapter {
    public final List<SNode> myAdded = new ArrayList<SNode>();
    public final List<SNode> myAddedRoots = new ArrayList<SNode>();
    public final List<SNode> myRemoved = new ArrayList<SNode>();
    public final List<SNode> myRemovedRoots = new ArrayList<SNode>();
    public final List<SNode> myBeforeRemoved = new ArrayList<SNode>();
    public final List<SNode> myBeforeRemovedRoots = new ArrayList<SNode>();
    public final List<String> myChangedProperties = new ArrayList<String>();
    public final List<SReference> myAddedRef = new ArrayList<SReference>();
    public final List<SReference> myRemovedRef = new ArrayList<SReference>();

    @Override
    public void childAdded(SModelChildEvent event) {
      myAdded.add(event.getChild());
    }

    @Override
    public void childRemoved(SModelChildEvent event) {
      myRemoved.add(event.getChild());
    }

    @Override
    public void beforeChildRemoved(SModelChildEvent event) {
      myBeforeRemoved.add(event.getChild());
    }

    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      myChangedProperties.add(event.getPropertyName());
    }

    @Override
    public void referenceAdded(SModelReferenceEvent event) {
      myAddedRef.add(event.getReference());
    }

    @Override
    public void referenceRemoved(SModelReferenceEvent event) {
      myRemovedRef.add(event.getReference());
    }

    @Override
    public void rootAdded(SModelRootEvent event) {
      myAddedRoots.add(event.getRoot());
    }

    @Override
    public void rootRemoved(SModelRootEvent event) {
      myRemovedRoots.add(event.getRoot());
    }

    @Override
    public void beforeRootRemoved(SModelRootEvent event) {
      myBeforeRemovedRoots.add(event.getRoot());
    }

    /*package*/ void reset() {
      myAdded.clear();
      myRemoved.clear();
      myBeforeRemoved.clear();
      myChangedProperties.clear();
      myAddedRef.clear();
      myRemovedRef.clear();
      myAddedRoots.clear();
      myRemovedRoots.clear();
      myBeforeRemovedRoots.clear();
    }
  }

  private static class ChangeListener2 implements SModelChangeListener {
    // use list, not set to check for number of events, even if they come for the same object, to notice excessive notifications
    public final List<SNode> myAdded = new ArrayList<SNode>();
    public final List<SNode> myRemoved = new ArrayList<SNode>();
    public final List<String> myChangedProperties = new ArrayList<String>();
    public final List<String> myChangedReferences = new ArrayList<String>();

    @Override
    public void nodeAdded(SModel model, SNode parent, String role, SNode child) {
      myAdded.add(child);
    }

    @Override
    public void nodeRemoved(SModel model, SNode parent, String role, SNode child) {
      myRemoved.add(child);
    }

    @Override
    public void propertyChanged(SNode node, String propertyName, String oldValue, String newValue) {
      myChangedProperties.add(propertyName);
    }

    @Override
    public void referenceChanged(SNode node, String role, SReference oldRef, SReference newRef) {
      myChangedReferences.add(role);
    }

    /*package*/ void reset() {
      myAdded.clear();
      myRemoved.clear();
      myChangedProperties.clear();
      myChangedReferences.clear();
    }
  }

  private static class ModelReadThread extends Thread {
    private final CyclicBarrier myBarrier;
    private final TestModelFactory myModel;
    private int myCountL1, myCountL2, myCountL3;
    private long myElapsedMillis;

    public ModelReadThread(CyclicBarrier barrier, TestModelFactory mf) {
      myBarrier = barrier;
      myModel = mf;
    }

    @Override
    public void run() {
      AccessCountListener1 cl1 = new AccessCountListener1();
      AccessCountListener2 cl2 = new AccessCountListener2();
      AccessCountListener3 cl3 = new AccessCountListener3();
      myModel.attachAccessListeners(cl1, cl2, cl3);
      try {
        myBarrier.await();
        final long s = System.nanoTime();
        readTreeNodes(myModel.getModel().getRootNodes());
        final long e = System.nanoTime();
        myBarrier.await();
        myCountL1 = cl1.myVisitedNodes;
        myCountL2 = cl2.myVisitedNodes;
        myCountL3 = cl3.myVisitedNodes;
        myElapsedMillis = (e - s) / 1000000;
        myBarrier.await();
      } catch (InterruptedException e) {
        e.printStackTrace();
        throw new RuntimeException(e);
      } catch (BrokenBarrierException e) {
        e.printStackTrace();
        throw new RuntimeException(e);
      } finally {
        myModel.detachAccessListeners(cl1, cl2, cl3);
      }
    }

    public int getAllThreadListenerCount() {
      return myCountL1;
    }

    public int getThisThreadCount1() {
      return myCountL2;
    }
    public int getThisThreadCount2() {
      return myCountL3;
    }

    public long getElapsedMillis() {
      return myElapsedMillis;
    }
  }
}
