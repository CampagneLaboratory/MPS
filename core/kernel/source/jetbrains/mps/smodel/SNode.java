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

import jetbrains.mps.MPSCore;
import jetbrains.mps.extapi.model.EditableSModelBase;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.model.SNodeBase;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.SModel.FakeModelDescriptor;
import jetbrains.mps.smodel.adapter.SConceptNodeAdapter;
import jetbrains.mps.smodel.references.UnregisteredNodes;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import jetbrains.mps.util.AbstractImmutableList;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.EqualUtil;
import jetbrains.mps.util.InternUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.containers.ConcurrentHashSet;
import jetbrains.mps.util.containers.EmptyIterable;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.migration.annotations.LongTermMigration;
import org.jetbrains.mps.migration.annotations.MigrationScript;
import org.jetbrains.mps.migration.annotations.ShortTermMigration;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.language.SLink;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.util.Condition;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SNode extends SNodeBase implements org.jetbrains.mps.openapi.model.SNode {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(SNode.class));
  private static final String[] EMPTY_ARRAY = new String[0];
  private static final Object USER_OBJECT_LOCK = new Object();

  private static Set<String> ourErroredModels = new ConcurrentHashSet<String>();

  private static NodeMemberAccessModifier ourMemberAccessModifier = null;
  private static ThreadLocal<Boolean> ourReadAccessHandlingInProgress = new ThreadLocal<Boolean>();

  public static void setNodeMemberAccessModifier(NodeMemberAccessModifier modifier) {
    ourMemberAccessModifier = modifier;
  }

  private String myRoleInParent;
  private jetbrains.mps.smodel.SReference[] myReferences = jetbrains.mps.smodel.SReference.EMPTY_ARRAY;

  private String[] myProperties = null;

  private SNodeId myId;

  private Object[] myUserObjects; // key,value,key,value ; !copy-on-write

  @NotNull
  private String myConceptFqName;

  private final Object REPO_LOCK = new Object();
  protected volatile SModel myModel; //todo make private non-volatile
  protected volatile SModel myModelForUndo;
  private volatile SRepository myRepository = null;

  public SNode(@NotNull String conceptFqName) {
    myConceptFqName = conceptFqName;
    myId = SModel.generateUniqueId();
  }


  @Override
  public void attach(@NotNull SRepository repo) {
//    assert !(myRepository instanceof DisposedRepository) : "Not supposed to do this, just detach the node";
    repo.getModelAccess().checkReadAccess();
//    if (!myModel.isUpdateMode()) {
//      repo.getModelAccess().checkWriteAccess();
//    }
    if (myRepository == repo) return;
    synchronized (REPO_LOCK) {
      if (myRepository == repo) return;
      //    org.jetbrains.mps.openapi.model.SModel model = getModel();
      //assert model != null && model.getModule() != null && model.getModule().getRepository() != null;
      //    assert myRepository == null : "Can't register disposed node or node from another repo. Repo:" + myRepository + ", attaching to " + repo;
      myRepository = repo;
    }
  }

  @Override
  public void detach() {
    if (myRepository == DisposedRepository.INSTANCE) return;
    if (myRepository != null) {
      myRepository.getModelAccess().checkWriteAccess();
    }
    for (SNode c = firstChild(); c != null; c = c.next) {
      c.detach();
    }
    synchronized (REPO_LOCK) {
      myRepository = DisposedRepository.INSTANCE;
    }
  }

  protected void assertCanRead() {
    if (myRepository == null) return;
    if (myRepository instanceof DisposedRepository) {
      showDisposedMessage();
      return;
    }

    synchronized (REPO_LOCK) {
      if (myRepository == null) return;
      if (myRepository instanceof DisposedRepository) {
        showDisposedMessage();
        return;
      }
      myRepository.getModelAccess().checkReadAccess();
    }
  }

  private void assertCanChange() {
    if (myRepository == null) return;
    if (myRepository instanceof DisposedRepository) {
      showDisposedMessage();
      return;
    }

    synchronized (REPO_LOCK) {
      if (myRepository == null) return;
      if (myRepository instanceof DisposedRepository) {
        showDisposedMessage();
        return;
      }
      myRepository.getModelAccess().checkReadAccess();
      if (myModel != null && myModel.isUpdateMode()) return;
      myRepository.getModelAccess().checkWriteAccess();
      if (!UndoHelper.getInstance().isInsideUndoableCommand()) {
        throw new IllegalModelChangeError(
            "registered node can only be modified inside undoable command or in 'loading' model " +
                org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this)
        );
      }
    }
  }

  private void showDisposedMessage() {
    SModelDescriptor model = internal_getModel();
    String modelName = model == null ? "null" : jetbrains.mps.util.SNodeOperations.getModelLongName(model);
    if (ourErroredModels.add(modelName)) {
//      LOG.error(new IllegalModelAccessError("Accessing disposed node in model " + modelName));
    }
  }


  @Override
  public SNodeId getNodeId() {
    nodeRead();

    fireNodeReadAccess();
    return myId;
  }

  @Override
  @NotNull
  public SNode getContainingRoot() {
    nodeRead();

    SNode current = this;

    while (true) {
      current.fireNodeReadAccess();
      if (current.treeParent() == null) {
        return current;
      } else {
        current = current.treeParent();
      }
    }
  }

  @Override
  public String getName() {
    return SNodeAccessUtil.getProperty(this, SNodeUtil.property_INamedConcept_name);
  }

  @Override
  public final boolean hasProperty(String propertyName) {
    propertyRead(propertyName);

    firePropertyReadAccessInEditor(propertyName, true);
    String property_internal = getProperty(propertyName);
    return !SModelUtil_new.isEmptyPropertyValue(property_internal);
  }

  @Override
  public final String getProperty(String propertyName) {
    propertyRead(propertyName);

    firePropertyReadAccessInEditor(propertyName, false);

    String propertyValue = null;
    if (myProperties != null) {
      if (ourMemberAccessModifier != null) {
        propertyName = ourMemberAccessModifier.getNewPropertyName(getModel(), myConceptFqName, propertyName);
      }
      int index = getPropertyIndex(propertyName);
      if (index != -1) {
        propertyValue = myProperties[index + 1];
      }
    }
    fireNodePropertyReadAccess(propertyName, propertyValue);
    return propertyValue;
  }

  @Override
  public void setProperty(String propertyName, String propertyValue) {
    assertCanChange();

    propertyName = InternUtil.intern(propertyName);
    propertyValue = InternUtil.intern(propertyValue);
    if (ourMemberAccessModifier != null) {
      propertyName = ourMemberAccessModifier.getNewPropertyName(getModel(), myConceptFqName, propertyName);
    }
    int index = getPropertyIndex(propertyName);
    final String oldValue = index == -1 ? null : myProperties[index + 1];
    if (EqualUtil.equals(oldValue, propertyValue)) return;

    if (propertyValue == null) {
      String[] oldProperties = myProperties;
      int newLength = oldProperties.length - 2;
      if (newLength == 0) {
        myProperties = null;
      } else {
        myProperties = new String[newLength];
        System.arraycopy(oldProperties, 0, myProperties, 0, index);
        System.arraycopy(oldProperties, index + 2, myProperties, index, newLength - index);
      }
    } else if (oldValue == null) {
      String[] oldProperties = myProperties == null ? EMPTY_ARRAY : myProperties;
      myProperties = new String[oldProperties.length + 2];
      System.arraycopy(oldProperties, 0, myProperties, 0, oldProperties.length);
      myProperties[myProperties.length - 2] = propertyName;
      myProperties[myProperties.length - 1] = propertyValue;
    } else {
      myProperties[index + 1] = propertyValue;
    }

    final String finalPropertyValue = propertyValue;
    final String finalPropertyName = propertyName;
    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new PropertyChangeUndoableAction(SNode.this, finalPropertyName, oldValue, finalPropertyValue);
      }
    });

    if (myModel == null) return;

    if (ModelChange.needFireEvents(getModel(), this)) {
      myModel.firePropertyChangedEvent(this, propertyName, oldValue, propertyValue);
    }
    propertyChanged(propertyName, oldValue, propertyValue);
  }

  private void performUndoableAction(Computable<SNodeUndoableAction> computable) {
    if (myModelForUndo != null) {
      myModelForUndo.performUndoableAction(computable);
    } else {
      if (!UndoHelper.getInstance().needRegisterUndo()) return;
      if (!UnregisteredNodes.instance().contains(this)) return;

      UndoHelper.getInstance().addUndoableAction(computable.compute());
    }
  }

  @Override
  final public SNode getParent() {
    nodeRead();

    //todo: ModelAccess.assertLegalRead(this);
    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    return treeParent();
  }

  @Override
  public void addChild(String role, org.jetbrains.mps.openapi.model.SNode child) {
    insertChildBefore(role, child, null);
  }

  @Override
  @NotNull
  public List<SNode> getChildren(String role) {
    nodeRead();

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    SNode firstChild = firstChild();

    if (role != null) {
      while (firstChild != null && !firstChild.getRoleInParent().equals(role)) {
        firstChild = firstChild.treeNext();
      }
    }

    if (firstChild == null) return Collections.emptyList();

    return new ChildrenList(firstChild, role);
  }

  /**
   * Removes child from current node. This affects only link between current node and its child, but not links in
   * subtree of child node.
   * <p/>
   * Differs from {@link SNode#delete()}.
   *
   * @param child
   */
  @Override
  public void removeChild(org.jetbrains.mps.openapi.model.SNode child) {
    assertCanChange();
    assert
        child.getParent() == this :
        "Can't remove a node not from it's parent node: removing " + child.getReference().toString() + " from " + getReference().toString();

    final SNode wasChild = (SNode) child;
    final String wasRole = wasChild.getRoleInParent();
    final SNode anchor = firstChild() == wasChild ? null : wasChild.treePrevious();

    assert wasRole != null;
    if (myModel != null && ModelChange.needFireEvents(getModel(), this)) {
      myModel.fireBeforeChildRemovedEvent(this, wasRole, wasChild, anchor);
    }

    children_remove(wasChild);
    wasChild.setRoleInParent(null);
    wasChild.unRegisterFromModel();

    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new RemoveChildUndoableAction(SNode.this, anchor, wasRole, wasChild);
      }
    });

    if (myModel != null && ModelChange.needFireEvents(getModel(), this)) {
      myModel.fireChildRemovedEvent(this, wasRole, wasChild, anchor);
    }
    nodeRemoved(child, wasRole);
  }

  /**
   * Deletes all nodes in subtree starting with current. Differs from {@link SNode#removeChild(org.jetbrains.mps.openapi.model.SNode)}.
   */
  @Override
  public void delete() {
    assertCanChange();

    SNode p = getParent();
    if (p != null) {
      p.removeChild(this);
    } else if (myModel != null) {
      myModel.removeRootNode(this);
    }
  }

  @Override
  public void setReferenceTarget(String role, @Nullable org.jetbrains.mps.openapi.model.SNode target) {
    assertCanChange();

    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewReferentRole(getModel(), myConceptFqName, role);
    }

    if (target == null) {
      if (myReferences == null) return;

      for (SReference reference : myReferences) {
        if (!reference.getRole().equals(role)) continue;
        removeReferenceInternal(reference);
        referenceChanged(role, reference, null);
        return;
      }
      return;
    }

    // remove old references
    SReference toDelete = null;
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (!reference.getRole().equals(role)) continue;

        toDelete = reference;
        break;
      }
    }

    SReference newValue = SReference.create(role, this, target);

    if (toDelete != null) {
      removeReferenceInternal(toDelete);
    }
    addReferenceInternal(newValue);
    referenceChanged(role, toDelete, newValue);
  }

  @Override
  public SNode getReferenceTarget(String role) {
    referenceRead(role);

    SReference reference = getReference(role);
    SNode result = reference == null ? null : (SNode) reference.getTargetNode();
    if (result != null) {
      fireNodeReferentReadAccess(role, result);
    }
    return result;
  }

  @Override
  public SReference getReference(String role) {
    referenceRead(role);

    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewReferentRole(getModel(), myConceptFqName, role);
    }
    fireNodeReadAccess();
    SReference result = null;
    int count = 0; // paranoid check
    for (SReference reference : myReferences) {
      if (reference.getRole().equals(role)) {
        result = reference;
        count++;
      }
    }

    if (count > 1) {
      LOG.errorWithTrace("ERROR: " + count + " referents for role '" + role + "' in " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this));
    }

    fireNodeReferentReadAccess(role, null);
    return result;
  }

  @Override
  public void setReference(String role, @Nullable org.jetbrains.mps.openapi.model.SReference reference) {
    assertCanChange();

    SReference toRemove = null;
    for (SReference r : myReferences) {
      if (!r.getRole().equals(role)) continue;
      toRemove = r;
      break;
    }

    if (toRemove != null) {
      removeReferenceInternal(toRemove);
    }

    if (reference != null) {
      assert reference.getSourceNode() == this;
      addReferenceInternal((SReference) reference);
    }
    referenceChanged(role, toRemove, reference);
  }

  @Override
  public String getPresentation() {
    nodeRead();

    if (SNodeOperations.isUnknown(this)) {
      String persistentName = getProperty(SNodeUtil.property_INamedConcept_name);
      if (persistentName == null) {
        return "?" + NameUtil.shortNameFromLongName(getConceptFqName()) + "?";
      }
      return "?" + persistentName + "?";
    }

    return "" + SNodeUtil.getPresentation(this);
  }

  @Override
  public String toString() {
    nodeRead();

    fireNodeReadAccess();

    String s = null;
    try {
      s = getProperty(SNodeUtil.property_BaseConcept_alias);
      if (s == null) {
        s = getPresentation();
      }
    } catch (RuntimeException t) {
      LOG.error(t, this);
    }
    if (s == null) {
      return "???";
    }
    return s;
  }

  public void insertChildBefore(@NotNull String role, org.jetbrains.mps.openapi.model.SNode child,
      @Nullable final org.jetbrains.mps.openapi.model.SNode anchor) {
    assertCanChange();

    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewChildRole(getModel(), myConceptFqName, role);
    }
    final SNode schild = (SNode) child;
    SNode parentOfChild = schild.getParent();
    if (parentOfChild != null) {
      throw new RuntimeException(
          org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(
              schild) + " already has parent: " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(
              parentOfChild) + "\n" +
              "Couldn't add it to: " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this));
    }

    if (getTopmostAncestor() == child) {
      throw new RuntimeException("Trying to create a cyclic tree");
    }

    if (anchor != null) {
      if (anchor.getParent() != this) {
        throw new RuntimeException(
            "anchor is not a child of this node" + " | " +
                "this: " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this) + " | " +
                "anchor: " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(anchor)
        );
      }
//      if (!role.equals(anchor.getRoleInParent())){
//        throw new RuntimeException(
//            "anchor has a different role" + " | " +
//                "role: " + role + " | " +
//                "anchor role: " + anchor.getRoleInParent()
//        );
//      }
    }

    children_insertBefore(((SNode) anchor), schild);
    schild.setRoleInParent(role);

    //if child is in unregistered nodes, add this one too to track undo for it
    UnregisteredNodes un = UnregisteredNodes.instance();
    if (un.contains(child) && myModelForUndo == null && !un.contains(this)) {
      startUndoTracking(getTopmostAncestor(), ((SNode) child).myRepository);
    }

    if (myModel == null) {
      if (schild.myModel != null) {
        schild.clearModel();
      }
    } else {
      schild.registerInModel(myModel);
    }

    final String finalRole = role;
    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new InsertChildAtUndoableAction(SNode.this, anchor, finalRole, schild);
      }
    });

    if (myModel != null && ModelChange.needFireEvents(getModel(), this)) {
      myModel.fireChildAddedEvent(this, role, schild, ((SNode) anchor));
    }
    nodeAdded(role, child);
  }

  private void startUndoTracking(SNode root, SRepository repo) {
    for (SNode child : root.getChildren()) {
      startUndoTracking(child, repo);
    }
    if (UnregisteredNodes.instance().contains(root)) return;
    UnregisteredNodes.instance().put(root);
    root.myRepository = repo;
  }

  @Override
  public SNodeReference getReference() {
    nodeRead();

    return new jetbrains.mps.smodel.SNodePointer(this);
  }

  @Override
  public SConcept getConcept() {
    nodeRead();

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    // Note: during indexing we invoke `node.getConcept().getQualifiedName()`
    // 1) without read action 2) we must not use deployed version of the concept
    // ?? may be we need a separate getConceptQualifiedName() method here
    if (MPSCore.getInstance().isMergeDriverMode() || /* for indexing */ !ModelAccess.instance().canRead()) {
      return new SConceptNodeAdapter(myConceptFqName);
    }

    return SConceptRepository.getInstance().getInstanceConcept(myConceptFqName);
  }

  @Override
  public Object getUserObject(Object key) {
    synchronized (USER_OBJECT_LOCK) {
      if (myUserObjects == null) return null;
      for (int i = 0; i < myUserObjects.length; i += 2) {
        if (myUserObjects[i].equals(key)) {
          return myUserObjects[i + 1];
        }
      }
      return null;
    }
  }

  @Override
  public void putUserObject(Object key, @Nullable Object value) {
    synchronized (USER_OBJECT_LOCK) {
      if (value == null) {
        if (myUserObjects == null) return;
        for (int i = 0; i < myUserObjects.length; i += 2) {
          if (myUserObjects[i].equals(key)) {
            Object[] newarr = new Object[myUserObjects.length - 2];
            if (i > 0) {
              System.arraycopy(myUserObjects, 0, newarr, 0, i);
            }
            if (i + 2 < myUserObjects.length) {
              System.arraycopy(myUserObjects, i + 2, newarr, i, newarr.length - i);
            }
            myUserObjects = newarr;
            break;
          }
        }
        if (myUserObjects.length == 0) {
          myUserObjects = null;
        }
        return;
      }

      if (myUserObjects == null) {
        myUserObjects = new Object[]{key, value};
        return;
      }

      for (int i = 0; i < myUserObjects.length; i += 2) {
        if (myUserObjects[i].equals(key)) {
          myUserObjects = Arrays.copyOf(myUserObjects, myUserObjects.length, Object[].class);
          myUserObjects[i + 1] = value;
          return;
        }
      }
      Object[] newarr = new Object[myUserObjects.length + 2];
      System.arraycopy(myUserObjects, 0, newarr, 2, myUserObjects.length);
      newarr[0] = key;
      newarr[1] = value;
      myUserObjects = newarr;
    }
  }

  @Override
  public List<SNode> getChildren() {
    return getChildren(null);
  }

  @Override
  public List<jetbrains.mps.smodel.SReference> getReferences() {
    nodeRead();

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    return Arrays.asList(myReferences);
  }

  @Override
  public String getRoleInParent() {
    nodeRead();

    if (getParent() == null) {
      if (!EqualUtil.equals(myRoleInParent, getUserObject("role"))) {
        LOG.error(new IllegalStateException());
      }
      return null;
    }
    return myRoleInParent;
  }

  @Override
  public org.jetbrains.mps.openapi.model.SNode getFirstChild() {
    nodeRead();
    fireNodeReadAccess();
    return firstChild();
  }

  @Override
  public org.jetbrains.mps.openapi.model.SNode getLastChild() {
    nodeRead();
    fireNodeReadAccess();
    return firstChild().treePrevious();
  }

  @Override
  public SNode getPrevSibling() {
    nodeRead();
    fireNodeReadAccess();

    SNode p = getParent();
    if (p == null) return null;

    SNode tp = treePrevious();
    return tp.next == null ? null : tp;
  }

  @Override
  public SNode getNextSibling() {
    nodeRead();
    fireNodeReadAccess();

    SNode p = getParent();
    if (p == null) return null;

    return treeNext();
  }

  @Override
  public Iterable<Object> getUserObjectKeys() {
    assertCanRead();

    if (myUserObjects == null || myUserObjects.length == 0) return EmptyIterable.getInstance();
    return new Iterable<Object>() {
      @Override
      public Iterator<Object> iterator() {
        return new Iterator<Object>() {
          int myIndex = 0;

          @Override
          public boolean hasNext() {
            return myIndex < myUserObjects.length;
          }

          @Override
          public Object next() {
            myIndex += 2;
            return myUserObjects[myIndex - 2];
          }

          @Override
          public void remove() {
            throw new UnsupportedOperationException();
          }
        };
      }
    };
  }

  //todo rewrite using real iterable after 3.0. Set is here only for migration purposes
  @Override
  public Set<String> getPropertyNames() {
    nodeRead();

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    LinkedHashSet<String> result = new LinkedHashSet<String>();
    if (myProperties == null) return result;
    for (int i = 0; i < myProperties.length; i += 2) {
      result.add(myProperties[i]);
    }
    return result;
  }

  @Override
  public org.jetbrains.mps.openapi.model.SModel getModel() {
    nodeRead();

    fireNodeReadAccess();

    return internal_getModel();
  }

  //this method is for internal checks in SReferenceBase only
  //note it does not have a read action as it doesn't add a result dependency when called
  //it also does not check model access as it's already "synchronized" by volatile modifier of myRepo
  public boolean wasDetached() {
    return myRepository instanceof DisposedRepository;
  }

  private SModelBase getRealModel() {
    SModel persistentModel = getPersistentModel();
    if (persistentModel == null) return null;

    SModelDescriptor modelDescriptor = persistentModel.getModelDescriptor();
    if (!(modelDescriptor instanceof SModelBase)) return null;

    return (SModelBase) modelDescriptor;
  }

  private void nodeRead() {
    assertCanRead();
    SModelBase md = getRealModel();
    if (md == null) return;
    md.fireNodeRead(this);
  }

  private void referenceRead(String role) {
    assertCanRead();
    SModelBase md = getRealModel();
    if (md == null) return;
    md.fireReferenceRead(this, role);
  }

  private void propertyRead(String propertyName) {
    assertCanRead();
    SModelBase md = getRealModel();
    if (md == null) return;
    md.firePropertyRead(this, propertyName);
  }

  private void referenceChanged(String role, org.jetbrains.mps.openapi.model.SReference reference, org.jetbrains.mps.openapi.model.SReference newValue) {
    if (myModel != null && myModel.isUpdateMode()) return;
    SModelBase md = getRealModel();
    if (md == null || md instanceof FakeModelDescriptor) return;
    EditableSModelBase emd = (EditableSModelBase) md;
    emd.fireReferenceChanged(this, role, reference, newValue);
  }

  private void propertyChanged(String propertyName, String oldValue, String newValue) {
    if (myModel != null && myModel.isUpdateMode()) return;
    SModelBase md = getRealModel();
    if (md == null || md instanceof FakeModelDescriptor) return;
    EditableSModelBase emd = (EditableSModelBase) md;
    emd.firePropertyChanged(this, propertyName, oldValue, newValue);
  }

  private void nodeAdded(String role, org.jetbrains.mps.openapi.model.SNode child) {
    if (myModel != null && myModel.isUpdateMode()) return;
    SModelBase md = getRealModel();
    if (md == null || md instanceof FakeModelDescriptor) return;
    EditableSModelBase emd = (EditableSModelBase) md;
    emd.fireNodeAdded(this, role, child);
  }

  private void nodeRemoved(org.jetbrains.mps.openapi.model.SNode child, String role) {
    if (myModel != null && myModel.isUpdateMode()) return;
    SModelBase md = getRealModel();
    if (md == null || md instanceof FakeModelDescriptor) return;
    EditableSModelBase emd = (EditableSModelBase) md;
    emd.fireNodeRemoved(this, role, child);
  }

  public SModel getPersistentModel() {
    return myModel;
  }

  //-------------------------------------------------------
  //-----------TO IMPLEMENT VIA OTHER METHODS--------------
  //-------------------------------------------------------

  //----root, deleted, etc.---

  /*
  calling this means we've held a node between read actions and now it is deleted
  this won't happen if we store only node pointers
  in this case, isDisposed() can be replaced with false
   */
  public boolean isDisposed() {
    return myRepository instanceof DisposedRepository;
  }

  public void setId(@Nullable org.jetbrains.mps.openapi.model.SNodeId id) {
    if (EqualUtil.equals(id, myId)) return;

    if (myModel == null) {
      myId = ((SNodeId) id);
    } else {
      LOG.error("can't set id to registered node " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this), new Throwable());
    }
  }

  void unRegisterFromModel() {
    if (myModel == null) return;

    if (!myModel.isUpdateMode()) {
      UnregisteredNodes.instance().put(this);
      for (SReference ref : myReferences) {
        ref.makeDirect();
      }
    }

    myModel.unregisterNode(this);

    for (SNode child = firstChild(); child != null; child = child.nextSibling()) {
      child.unRegisterFromModel();
    }

    myModel = null;
  }

  void registerInModel(SModel model) {
    if (model != myModel) {
      if (myModel != null) {
        LOG.errorWithTrace("couldn't register node which is already registered in '" + myModel.getReference() + "'");
        return;
      }
    }

    SRepository repo = model.getModelDescriptor().getRepository();
    if (repo != null) {
      attach(repo);
    }

    model.registerNode(this);
    myModel = model;
    myModelForUndo = model;

    for (SReference ref : myReferences) {
      ref.makeIndirect();
    }

    UnregisteredNodes.instance().remove(this);

    for (SNode child = firstChild(); child != null; child = child.treeNext()) {
      child.registerInModel(model);
    }
  }

  //----------------------------------------------------------
  //-----------WORKING WITH CONCEPT ON A NODE LEVEL-----------
  //----------------------------------------------------------

  public SNode getConceptDeclarationNode() {
    return (SNode) SModelUtil.findConceptDeclaration(getConceptFqName(), GlobalScope.getInstance());
  }

  public SNode getPropertyDeclaration(String propertyName) {
    return (SNode) SModelSearchUtil.findPropertyDeclaration(getConceptDeclarationNode(), propertyName);
  }

  public SNode getLinkDeclaration(String role) {
    return (SNode) SModelSearchUtil.findLinkDeclaration(getConceptDeclarationNode(), role);
  }

  public SNode getRoleLink() {
    if (getRoleInParent() == null) return null;
    if (getParent() == null) return null;
    return getParent().getLinkDeclaration(getRoleInParent());
  }

  //----------------------------------------------------------
  //----------------USAGES IN REFACTORINGS ONLY---------------
  //----------------------------------------------------------

  public void setConceptFqName(@NotNull String conceptFQName) {
    myConceptFqName = InternUtil.intern(conceptFQName);
    //MihMuh: that's strange since we try not to mark models as changed after refactorings
    SModelRepository.getInstance().markChanged(getModel());
  }

  //--------------

  private SModelDescriptor internal_getModel() {
    return myModel == null ? null : myModel.getModelDescriptor();
  }

  //--------seems these methods are not needed-------

  private void clearModel() {
    myModel = null;
    for (SNode child : getChildren()) {
      child.clearModel();
    }
  }

  private int getPropertyIndex(String propertyName) {
    if (myProperties == null) return -1;
    for (int i = 0; i < myProperties.length; i += 2) {
      if (EqualUtil.equals(myProperties[i], propertyName)) return i;
    }
    return -1;
  }

  private void addReferenceInternal(final SReference reference) {
    int oldLen = myReferences.length;
    jetbrains.mps.smodel.SReference[] newArray = new jetbrains.mps.smodel.SReference[oldLen + 1];
    System.arraycopy(myReferences, 0, newArray, 0, oldLen);
    newArray[oldLen] = reference;
    myReferences = newArray;

    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new InsertReferenceAtUndoableAction(SNode.this, reference);
      }
    });

    if (myModel == null) return;

    if (ModelChange.needFireEvents(getModel(), this)) {
      myModel.fireReferenceAddedEvent(reference);
    }
  }

  private void removeReferenceInternal(final SReference ref) {
    int index = -1;
    for (int i = 0; i < myReferences.length; i++) {
      if (myReferences[i].equals(ref)) {
        index = i;
        break;
      }
    }

    if (index == -1) {
      LOG.error("ref not found " + ref, new Throwable());
      return;
    }

    jetbrains.mps.smodel.SReference[] newArray = new jetbrains.mps.smodel.SReference[myReferences.length - 1];
    System.arraycopy(myReferences, 0, newArray, 0, index);
    System.arraycopy(myReferences, index + 1, newArray, index, myReferences.length - index - 1);
    myReferences = newArray;

    performUndoableAction(new Computable<SNodeUndoableAction>() {
      @Override
      public SNodeUndoableAction compute() {
        return new RemoveReferenceAtUndoableAction(SNode.this, ref);
      }
    });

    if (myModel == null) return;

    if (ModelChange.needFireEvents(getModel(), this)) {
      myModel.fireReferenceRemovedEvent(ref);
    }
  }

  //--------private-------

  private void fireNodeUnclassifiedReadAccess() {
    if (myModel == null || !myModel.canFireReadEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadEventsCaster.fireNodeUnclassifiedReadAccess(this);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  private void fireNodeReadAccess() {
    if (myModel == null || !myModel.canFireReadEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadAccessCasterInEditor.fireNodeReadAccessed(this);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  private void fireNodeChildReadAccess(String role, SNode child) {
    if (myModel == null || !myModel.canFireReadEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadEventsCaster.fireNodeChildReadAccess(this, role, child);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  private void fireNodePropertyReadAccess(String propertyName, String propertyValue) {
    if (myModel == null || !myModel.canFireReadEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadEventsCaster.fireNodePropertyReadAccess(this, propertyName, propertyValue);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  private void fireNodeReferentReadAccess(String referentRole, SNode referent) {
    if (myModel == null || !myModel.canFireReadEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadEventsCaster.fireNodeReferentReadAccess(this, referentRole, referent);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  private void firePropertyReadAccessInEditor(String propertyName, boolean propertyExistenceCheck) {
    if (myModel == null || !myModel.canFireEvent()) return;
    if (ourReadAccessHandlingInProgress.get() != Boolean.TRUE) {
      try {
        ourReadAccessHandlingInProgress.set(Boolean.TRUE);
        NodeReadAccessCasterInEditor.firePropertyReadAccessed(this, propertyName, propertyExistenceCheck);
      } finally {
        ourReadAccessHandlingInProgress.set(Boolean.FALSE);
      }
    }
  }

  //--------private classes-------

  private class ChildrenList extends AbstractImmutableList<SNode> {
    @Nullable
    private String myRole;

    public ChildrenList(SNode first, @Nullable String role) {
      super(first);
      myRole = role;
    }

    public ChildrenList(SNode first, @Nullable String role, int size) {
      super(first, size);
      myRole = role;
    }

    @Override
    protected SNode next(SNode node) {
      if (myRole == null) return node.nextSibling();

      do {
        node = node.nextSibling();
      } while (node != null && !node.getRoleInParent().equals(myRole));
      return node;
    }

    @Override
    protected SNode prev(SNode node) {
      if (getParent() == null) return null;
      if (myRole == null) return node.prevSibling();

      SNode first = getParent().firstChild();
      if (node == first) return null;

      do {
        node = node.prevSibling();
      } while (node != first && !node.getRoleInParent().equals(myRole));

      return node.getRoleInParent().equals(myRole) ? node : null;
    }

    @Override
    protected AbstractImmutableList<SNode> subList(SNode elem, int size) {
      return new ChildrenList(elem, myRole, size);
    }
  }

  //---------tree structure-------------

  private SNode parent;

  /**
   * access only in firstChild()/firstChildInRole(role)
   */
  private SNode first;

  private SNode next;  // == null only for the last child in the list
  private SNode prev;  // notNull, myFirstChild.myLeftSibling = the last child

  protected SNode() {

  }

  protected SNode firstChild() {
    if (first == null) return null;
    if (myRepository != null && first.myRepository == null) {
      first.attach(myRepository);
    }
    return first;
  }

  protected SNode firstChildInRole(@NotNull String role) {
    for (SNode current = first; current != null; current = current.treeNext()) {
      if (role.equals(current.myRoleInParent)) {
        return current;
      }
    }
    return null;
  }

  protected SNode treePrevious() {
    if (myRepository != null && prev.myRepository == null) {
      prev.attach(myRepository);
    }
    return prev;
  }

  public SNode treeNext() {
    if (next == null) return null;
    if (myRepository != null && next.myRepository == null) {
      next.attach(myRepository);
    }
    return next;
  }

  protected SNode treeParent() {
    return parent;
  }

  protected void children_insertBefore(SNode anchor, @NotNull SNode node) {
    //be sure that getFirstChild is called before any access to myFirstChild
    SNode firstChild = firstChild();

    if (myRepository != null) {
      node.attach(myRepository);
    }
    node.parent = this;

    if (firstChild == null) {
      assert anchor == null;
      first = node;
      node.next = null;
      node.prev = node;
      return;
    }

    if (anchor == null) {
      SNode lastChild = firstChild.prev;
      node.next = null;
      node.prev = lastChild;
      firstChild.prev = node;
      lastChild.next = node;
      return;
    }

    node.next = anchor;
    node.prev = anchor.prev;
    if (anchor != firstChild) {
      anchor.prev.next = node;
    } else {
      first = node;
    }
    anchor.prev = node;
  }

  protected void children_remove(@NotNull SNode node) {
    //be sure that getFirstChild is called before any access to myFirstChild
    SNode firstChild = firstChild();
    if (firstChild == node) {
      first = node.next;
      if (first != null) {
        first.prev = node.prev;
      }
    } else {
      node.prev.next = node.next;
      if (node.next != null) {
        node.next.prev = node.prev;
      } else {
        firstChild.prev = node.prev;
      }
    }
    node.prev = node.next = null;
    node.parent = null;
  }

  //-----------these methods are rewritten on the top of SNode public, so that they are utilities actually----

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isInstanceOfConcept(String conceptFqName) {
    return org.jetbrains.mps.openapi.model.SNodeUtil.isInstanceOf(this, jetbrains.mps.util.SNodeOperations.getConcept(conceptFqName));
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SNodeId getSNodeId() {
    return getNodeId();
  }

  @Deprecated
  /**
   * Not supposed to be used
   * @Deprecated in 3.0
   */
  public void changeModel(SModel newModel) {
    if (myModel == newModel) return;
    LOG.assertLog(myModel == null, "couldn't change model of registered node " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this));

    myModel = newModel;
    myModelForUndo = newModel;
    for (SNode child = firstChild(); child != null; child = child.nextSibling()) {
      child.changeModel(newModel);
    }
  }

  @Deprecated
  /**
   * Inline
   * @Deprecated in 3.0
   */
  public String getPersistentProperty(String propertyName) {
    return getProperty(propertyName);
  }

  @Deprecated
  /**
   * Inline content in java code, not supposed to be used in MPS
   * @Deprecated in 3.0
   */
  public void putProperties(SNode fromNode) {
    for (String name : fromNode.getPropertyNames()) {
      setProperty(name, fromNode.getProperty(name));
    }
  }

  @Deprecated
  /**
   * Inline. Not supposed to be used
   * @Deprecated in 3.0
   */
  public void changePropertyName(String oldPropertyName, String newPropertyName) {
    setProperty(newPropertyName, getProperty(oldPropertyName));
    setProperty(oldPropertyName, null);
  }

  @Deprecated
  /**
   * Inline. Not supposed to be used
   * @Deprecated in 3.0
   */
  public void setProperty(String propertyName, String propertyValue, boolean usePropertySetter) {
    if (usePropertySetter) {
      SNodeAccessUtil.setProperty(this, propertyName, propertyValue);
    } else {
      setProperty(propertyName, propertyValue);
    }
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getRole() {
    return getRoleInParent();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SNode getTopmostAncestor() {
    return getContainingRoot();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isRoot() {
    return getModel() != null && getParent() == null;
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isDeleted() {
    return getModel() == null;
  }

  @Deprecated
  /**
   * Use<br/>
   * n = new jetbrains.mps.smodel.SNode(concept);<br/>
   * model.addNode(n)<br/>
   * or<br/>
   * n = model.newNode(concept)<br/>
   * Set id if needed before adding to model
   * InternUtil.intern should be done in outer code
   *
   * @Deprecated in 3.0
   */
  public SNode(SModel model, @NotNull String conceptFqName, boolean callIntern) {
    this(callIntern ? InternUtil.intern(conceptFqName) : conceptFqName);
  }

  @Deprecated
  /**
   * Use<br/>
   * n = new jetbrains.mps.smodel.SNode(concept);<br/>
   * model.addNode(n)<br/>
   * or<br/>
   * n = model.newNode(concept)<br/>
   * Set id if needed before adding to model
   *
   * @Deprecated in 3.0
   */
  public SNode(SModel model, String conceptFqName) {
    this(InternUtil.intern(conceptFqName));
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isRegistered() {
    return getModel() != null;
  }

  @Deprecated
  /**
   *  replace with getModel==null
   * @Deprecated in 3.0
   */
  public boolean isDetached() {
    return getModel() == null;
  }

  @Deprecated
  public static final String PACK = SNodeUtil.property_BaseConcept_virtualPackage;

  @Deprecated
  /**
   * Do not use. Work with SConcept instead
   * @Deprecated in 3.0
   */
  public boolean isInstanceOfConcept(SNode concept) {
    return org.jetbrains.mps.openapi.model.SNodeUtil.isInstanceOf(this, jetbrains.mps.util.SNodeOperations.getConcept(NameUtil.nodeFQName(concept)));
  }

  @Deprecated
  /**
   * Do not use. Get resolve info from a reference instead
   * @Deprecated in 3.0
   */
  public String getResolveInfo() {
    String resolveInfo = SNodeUtil.getResolveInfo(this);
    if (resolveInfo != null) {
      return resolveInfo;
    }
    // tmp hack
    return getProperty(SNodeUtil.property_INamedConcept_name);
  }

  @Deprecated
  /**
   * Not supposed to be used. write your own
   * @Deprecated in 3.0
   */
  public String getPresentation(boolean detailed) {
    if (SNodeOperations.isUnknown(this)) {
      String persistentName = getProperty(SNodeUtil.property_INamedConcept_name);
      if (persistentName == null) {
        return "?" + NameUtil.shortNameFromLongName(getConceptFqName()) + "?";
      }
      return "?" + persistentName + "?";
    }

    try {
      if (detailed) {
        return "" + SNodeUtil.getDetailedPresentation(this);
      } else {
        return "" + SNodeUtil.getPresentation(this);
      }
    } catch (RuntimeException t) {
      LOG.error(t);
      return "[can't calculate presentation : " + t.getMessage() + "]";
    }
  }

  @Deprecated
  /**
   * Not supposed to be used. Use smodel language instead
   * @Deprecated in 3.0
   */
  public SNode getChild(String role) {
    List<SNode> children = getChildren(role);
    int size = children.size();
    if (size > 1) {
      String errorMessage = "ERROR: SNode.getChild() executed when there are " + size + " children for role " + role + " in " + NameUtil.shortNameFromLongName(
          getClass().getName()) + "[" + getNodeId().toString() + "] " + getModel().getReference() + "\n";
      errorMessage += "they are : " + getChildren(role);
      LOG.error(errorMessage, new Throwable(), this);
    }
    if (size == 0) return null;
    return children.get(0);
  }

  @Deprecated
  /**
   * Not supposed to be used. Use smodel language instead
   * @Deprecated in 3.0
   */
  public List<SNode> getAncestors(boolean includeThis) {
    List<SNode> result = new ArrayList<SNode>();
    if (includeThis) {
      result.add(this);
    }
    SNode parent = getParent();
    if (parent != null) {
      result.addAll(parent.getAncestors(true));
    }
    return result;
  }

  @Deprecated
  /**
   * Not supposed to be used. Filter attributes out manually
   * @Deprecated in 3.0
   */
  public List<SNode> getChildren(boolean includeAttributes) {
    if (includeAttributes) return getChildren();
    ArrayList<SNode> res = new ArrayList<SNode>();
    for (SNode child : getChildren()) {
      if (AttributeOperations.isAttribute(child)) continue;
      res.add(child);
    }
    return res;
  }

  @Deprecated
  /**
   * Not supposed to be used. Concept properties were eliminated in MPS 3.0
   * by converting to BaseConcept properties mostly, and considering other
   * cases individually
   * @Deprecated in 3.0
   */
  public String getConceptProperty(String propertyName) {
    SNode conceptProperty = findConceptProperty(propertyName);
    Object o = SNodeUtil.getConceptPropertyValue(conceptProperty);
    return o != null ? o.toString() : null;
  }

  @Deprecated
  /**
   * Not supposed to be used. Concept properties were eliminated in MPS 3.0
   * by converting to BaseConcept properties mostly, and considering other
   * cases individually
   * @Deprecated in 3.0
   */
  public SNode findConceptProperty(String propertyName) {
    SNode conceptDeclaration;
    if (myConceptFqName.equals(SNodeUtil.concept_ConceptDeclaration) || myConceptFqName.equals(SNodeUtil.concept_InterfaceConceptDeclaration)) {
      conceptDeclaration = this;
    } else {
      conceptDeclaration = (SNode) SModelUtil.findConceptDeclaration(myConceptFqName, GlobalScope.getInstance());
    }
    return (SNode) SModelSearchUtil.findConceptProperty(conceptDeclaration, propertyName);
  }

  @Deprecated
  /**
   * Not supposed to be used. Concept properties were eliminated in MPS 3.0
   * by converting to BaseConcept properties mostly, and considering other
   * cases individually
   * @Deprecated in 3.0
   */
  public boolean hasConceptProperty(String propertyName) {
    if ("root".equals(propertyName)) {
      if (SNodeUtil.isInstanceOfConceptDeclaration(this)) {
        return SNodeUtil.getConceptDeclaration_IsRootable(this);
      } else {
        SNode conceptDeclaration = getConceptDeclarationNode();
        if (SNodeUtil.isInstanceOfConceptDeclaration(conceptDeclaration)) {
          return SNodeUtil.getConceptDeclaration_IsRootable(conceptDeclaration);
        }
      }
      return false;
    }

    return findConceptProperty(propertyName) != null;
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public List<SNode> getDescendants() {
    return getDescendants(null);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public List<SNode> getDescendants(final Condition<SNode> condition) {
    return (List) jetbrains.mps.util.SNodeOperations.getDescendants(this, new MyTransformingCondition(condition));
  }

  @Deprecated
  /**
   * Not supposed to be used. Use smodel language instead
   * @Deprecated in 3.0
   */
  public void setName(String name) {
    SNodeAccessUtil.setProperty(this, SNodeUtil.property_INamedConcept_name, name);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void insertChild(SNode anchorChild, String role, SNode child, boolean insertBefore) {
    if (insertBefore) {
      insertChildBefore(role, child, anchorChild);
    } else {
      jetbrains.mps.util.SNodeOperations.insertChild(this, role, child, anchorChild);
    }
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public List<SNode> getReferents() {
    List<SNode> result = new ArrayList<SNode>();
    for (SReference reference : getReferences()) {
      SNode targetNode = (SNode) reference.getTargetNode();
      if (targetNode != null) result.add(targetNode);
    }
    return result;
  }


  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Set<String> getReferenceRoles() {
    return jetbrains.mps.util.SNodeOperations.getReferenceRoles(this);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */

  public String getDebugText() {
    return org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(this);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void replaceChild(SNode oldChild, SNode newChild) {
    org.jetbrains.mps.openapi.model.SNodeUtil.replaceWithAnother(oldChild, newChild);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void putUserObjects(SNode fromNode) {
    if (fromNode == null) return;
    for (Object key : fromNode.getUserObjectKeys()) {
      putUserObject(key, fromNode.getUserObject(key));
    }
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SNode findParent(Condition<SNode> condition) {
    return ((SNode) jetbrains.mps.util.SNodeOperations.findParent(this, new MyTransformingCondition(condition)));
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void addReference(SReference reference) {
    setReference(reference.getRole(), reference);
  }

  @Deprecated
  /**
   * Use visitProperties()
   * @Deprecated in 3.0
   */
  public Map<String, String> getProperties() {
    return jetbrains.mps.util.SNodeOperations.getProperties(this);
  }

  @Deprecated
  /**
   * Use visitReferences()
   * @Deprecated in 3.0
   */
  public SReference[] getReferencesArray() {
    List<SReference> refs = ((List) jetbrains.mps.util.SNodeOperations.getReferences(this));
    return refs.toArray(new SReference[refs.size()]);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Collection<SReference> getReferencesIterable() {
    return ((List) jetbrains.mps.util.SNodeOperations.getReferences(this));
  }

  @Deprecated
  /**
   * Is not supposed to be used. Inline.
   * @Deprecated in 3.0
   */
  public SNode findChildByPath(String path) {
    if (path == null) return null;
    String residual = path;
    SNode current = this;
    while (!residual.equals("") && current != null) {
      residual = residual.substring(1);
      int index = residual.indexOf("/");
      String roleAndNumber = index == -1 ? residual : residual.substring(0, index);
      residual = residual.substring(roleAndNumber.length());

      int numberIndex = roleAndNumber.indexOf("#");
      String role = numberIndex == -1 ? roleAndNumber : roleAndNumber.substring(0, numberIndex);
      String numberString = numberIndex == -1 ? "-1" : roleAndNumber.substring(numberIndex + 1);
      int number = Integer.parseInt(numberString);

      if (number == -1) {
        current = current.getChild(role);
      } else {
        List<SNode> childrenForRole = current.getChildren(role);
        if (number < childrenForRole.size()) {
          current = childrenForRole.get(number);
        } else {
          current = null;
        }
      }
    }
    return current;
  }

  @Deprecated
  /**
   * Is not supposed to be used. Inline.
   * @Deprecated in 3.0
   */
  public String getNodePath(SNode child) {
    StringBuilder sb = new StringBuilder();
    SNode current = child;
    while (current != this && current != null) {
      String role = current.getRoleInParent();
      SNode currentParent = current.getParent();
      List<SNode> children = currentParent == null || role == null ? new ArrayList<SNode>() : currentParent.getChildren(role);
      String numberString = children.size() <= 1 ? "" : "#" + children.indexOf(current);
      sb.insert(0, "/" + role + numberString);
      current = currentParent;
    }
    return sb.toString();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SNode getChildAt(int index) {
    return getChildren().get(index);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SNode getReferent(String role) {
    return getReferenceTarget(role);
  }

  @Deprecated
  /**
   * Inline content in java code, is not supposed to be used in MPS
   * @Deprecated in 3.0
   */
  public boolean isAncestorOf(SNode child) {
    return jetbrains.mps.util.SNodeOperations.isAncestor(this, child);
  }

  @Deprecated
  /**
   * Inline content in java code, is not supposed to be used in MPS
   * @Deprecated in 3.0
   */
  public boolean isDescendantOf(SNode node, boolean includeThis) {
    return jetbrains.mps.util.SNodeOperations.isAncestor(node, includeThis ? this : getParent());
  }

  @Deprecated
  /**
   * Inline content in java code, is not supposed to be used in MPS
   * @Deprecated in 3.0
   */
  public StackTraceElement[] getModelDisposedTrace() {
    return myModel == null ? null : myModel.getDisposedStacktrace();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Set<String> getChildRoles() {
    return getChildRoles(false);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Set<String> getChildRoles(boolean includeAttributeRoles) {
    return addChildRoles(new HashSet<String>(), includeAttributeRoles);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Set<String> addChildRoles(final Set<String> augend) {
    return addChildRoles(augend, false);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Set<String> addChildRoles(final Set<String> augend, final boolean includeAttributeRoles) {
    for (SNode child : getChildren()) {
      if (includeAttributeRoles || !(AttributeOperations.isAttribute(child))) {
        augend.add(child.getRoleInParent());
      }
    }
    return augend;
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SReference setReferent(String role, SNode newReferent, boolean useHandler) {
    if (!useHandler) {
      LOG.warning("SNode.setReferent does not use the last parameter now");
    }
    setReferenceTarget(role, newReferent);
    return getReference(role);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SReference setReferent(String role, SNode newReferent) {
    setReferenceTarget(role, newReferent);
    return getReference(role);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean isReferentRequired(String role) {
    SLink link = getConcept().findLink(role);
    if (link == null) {
      LOG.error("couldn't find link declaration for role \"" + role + "\" in hierarchy of concept " + getConcept().getId());
      return false;
    }

    return !link.isOptional();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Iterable<SNode> getDescendantsIterable(@Nullable final Condition<SNode> condition, final boolean includeFirst) {
    return (Iterable) jetbrains.mps.util.SNodeOperations.getDescendants(this, new MyTransformingCondition(condition), includeFirst);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void insertChild(final SNode anchor, String role, final SNode child) {
    jetbrains.mps.util.SNodeOperations.insertChild(this, role, child, anchor);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void setChild(String role, org.jetbrains.mps.openapi.model.SNode childNode) {
    SNode oldChild = getChild(role);
    if (oldChild != null) {
      removeChild(oldChild);
    }
    if (childNode != null) {
      addChild(role, childNode);
    }
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public int getIndexOfChild(SNode child) {
    String role = child.getRoleInParent();
    if (role == null) return -1;
    return getChildren(role).indexOf(child);
  }

  @Deprecated
  /**
   * Do not use. Replace with smodel language or operations from SNodeUtil
   * @Deprecated in 3.0
   */
  public void replaceChild(SNode oldChild, List<SNode> newChildren) {
    assert oldChild.treeParent() == this;
    String oldChildRole = oldChild.getRoleInParent();
    assert oldChildRole != null;
    SNode prevChild = oldChild;
    for (SNode newChild : newChildren) {
      jetbrains.mps.util.SNodeOperations.insertChild(this, oldChildRole, newChild, prevChild);
      prevChild = newChild;
    }
    removeChild(oldChild);
  }

  @Deprecated
  /**
   * Do not use. Replace with visitUserObjects
   * @Deprecated in 3.0
   */
  public Map<Object, Object> getUserObjects() {
    final Map<Object, Object> userObjects = new LinkedHashMap<Object, Object>();
    for (Object key : getUserObjectKeys()) {
      userObjects.put(key, getUserObject(key));
    }
    return userObjects;
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Iterable<SNode> getChildrenIterable() {
    return getChildren();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void removeUserObject(Object key) {
    putUserObject(key, null);
  }

  @Deprecated
  /**
   * Users are not supposed to use this in past
   * @Deprecated in 3.0
   */
  public void setRoleInParent(String newRoleInParent) {//todo add undo
    myRoleInParent = InternUtil.intern(newRoleInParent);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getId() {
    return getNodeId().toString();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public boolean hasId() {
    return getNodeId() != null;
  }

  @MigrationScript(script = "Tools/Migration 3.0/Migrate to new SNode methods")
  @ShortTermMigration(migration = "Replace with SNodeOperations.getChildCount(node)")
  @LongTermMigration(migration = "Try to rewrite using getChildren()")
  @Deprecated
  /**
   * Do not use it.
   * Try to eliminate as many usages as possible,
   * make your own getChildCount() utility where you can't live without it.
   * No migration is provided since calls should be reviewed separately to avoid performance problems
   * @Deprecated in 3.0
   */
  public int getChildCount(String role) {
    return getChildren(role).size();
  }

  @MigrationScript(script = "Tools/Migration 3.0/Migrate to new SNode methods")
  @ShortTermMigration(migration = "Replace with SNodeOperations.getChildCount(node)")
  @LongTermMigration(migration = "Try to rewrite using getChildren()")
  @Deprecated
  /**
   * Do not use it.
   * Try to eliminate as many usages as possible,
   * make your own getChildCount() utility where you can't live without it.
   * No migration is provided since calls should be reviewed separately to avoid performance problems
   * @Deprecated in 3.0
   */
  public int getChildCount() {
    return jetbrains.mps.util.SNodeOperations.getChildren(this).size();
  }

  @Deprecated
  /**
   * Do not use. Access to children is now provided in by-role manner and through parent node.
   * Most probably, by calling this method you want to know a sibling in the same role.
   * E.g. if you need a previous sibling in the same role, use getParent().getPrevChild(node)
   * @Deprecated in 3.0
   */
  public SNode prevSibling() {
    if (getParent() == null) return null;
    return getParent().firstChild() == this ? null : treePrevious();
  }

  @Deprecated
  /**
   * Do not use. Access to children is now provided in by-role manner and through parent node.
   * Most probably, by calling this method you want to know a sibling in the same role.
   * E.g. if you need a next sibling in the same role, use getParent().getNextChild(node)
   * @Deprecated in 3.0
   */
  public SNode nextSibling() {
    return treeNext();
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public SModuleReference getConceptLanguage() {
    return new jetbrains.mps.project.structure.modules.ModuleReference(getConcept().getLanguage().getPresentation());
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Language getLanguage() {
    return jetbrains.mps.util.SNodeOperations.getLanguage(this);
  }

  @Deprecated
  @NotNull
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getLanguageNamespace() {
    return getConcept().getLanguage().getPresentation();
  }

  @NotNull
  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public Language getNodeLanguage() {
    return jetbrains.mps.util.SNodeOperations.getLanguage(this);
  }

  @Deprecated
  /**
   * Use setReference(referenceToRemove.getRole, referenceToAdd)
   * @Deprecated in 3.0
   */
  public void replaceReference(SReference referenceToRemove, @NotNull SReference referenceToAdd) {
    setReference(referenceToRemove.getRole(), referenceToAdd);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void removeReference(org.jetbrains.mps.openapi.model.SReference referenceToRemove) {
    setReference(referenceToRemove.getRole(), null);
  }

  @Deprecated
  /**
   * Use setReference(role, ref)
   * @Deprecated in 3.0
   */
  public void setReference(SReference reference) {
    setReference(reference.getRole(), reference);
  }

  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public void removeReferent(String role) {
    setReferenceTarget(role, null);
  }

  @NotNull
  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getConceptFqName() {
    return getConcept().getId();
  }

  @NotNull
  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getConceptShortName() {
    return getConcept().getName();
  }

  @Deprecated
  /**
   * Do not use this method. Add and remove only your own user objects
   * by using setUserObject() method
   * @Deprecated in 3.0
   */
  public void removeAllUserObjects() {
    myUserObjects = null;
  }

  @MigrationScript(script = "Tools/Migration 3.0/Migrate to new SNode methods")
  @Deprecated
  /**
   * Inline content in java code, use migration in MPS
   * @Deprecated in 3.0
   */
  public String getRole_() {
    return getRoleInParent();
  }

  @Deprecated
  /**
   * Use migration in MPS, should be no usages in java code (use smodel language instead)
   * @Deprecated in 3.0
   */
  public int getIntegerProperty(String propertyName) {
    String value = SNodeAccessUtil.getProperty(this, propertyName);
    try {
      return Integer.parseInt(value);
    } catch (Exception e) {
      return 0;
    }
  }

  @Deprecated
  /**
   * Use migration in MPS, should be no usages in java code (use smodel language instead)
   * @Deprecated in 3.0
   */
  public void setIntegerProperty(String propertyName, int value) {
    SNodeAccessUtil.setProperty(this, propertyName, "" + value);
  }

  @Deprecated
  /**
   * Use migration in MPS, should be no usages in java code (use smodel language instead)
   * @Deprecated in 3.0
   */
  public boolean getBooleanProperty(String propertyName) {
    return "true".equals(SNodeAccessUtil.getProperty(this, propertyName));
  }

  @Deprecated
  /**
   * Use migration in MPS, should be no usages in java code (use smodel language instead)
   * @Deprecated in 3.0
   */
  public void setBooleanProperty(String propertyName, boolean value) {
    SNodeAccessUtil.setProperty(this, propertyName, value ? "" + value : null);
  }

  private static class MyTransformingCondition implements Condition<org.jetbrains.mps.openapi.model.SNode> {
    private final Condition<SNode> myCondition;

    public MyTransformingCondition(Condition<SNode> condition) {
      myCondition = condition;
    }

    @Override
    public boolean met(org.jetbrains.mps.openapi.model.SNode object) {
      return object instanceof SNode && myCondition.met((SNode) object);
    }
  }
}
