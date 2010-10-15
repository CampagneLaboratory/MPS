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
package jetbrains.mps.smodel;

import com.intellij.openapi.util.Computable;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.lang.core.behavior.BaseConcept_Behavior;
import jetbrains.mps.lang.core.structure.BaseConcept;
import jetbrains.mps.lang.core.structure.INamedConcept;
import jetbrains.mps.lang.core.structure.IResolveInfo;
import jetbrains.mps.lang.structure.structure.*;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.NodeReadAccessCasterInEditor;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.constraints.INodePropertyGetter;
import jetbrains.mps.smodel.constraints.INodePropertySetter;
import jetbrains.mps.smodel.constraints.INodeReferentSetEventHandler;
import jetbrains.mps.smodel.constraints.ModelConstraintsManager;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import jetbrains.mps.util.*;
import jetbrains.mps.util.annotation.UseCarefully;
import org.jetbrains.annotations.NotNull;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.*;

public final class SNode {
  private static final Logger LOG = Logger.getLogger(SNode.class);

  public static final String PACK = "package";
  private static final ModelConstraintsManager CONSTRAINTS_MANAGER = ModelConstraintsManager.getInstance();

  public static final SNode[] EMPTY_ARRAY = new SNode[0];

  private static NodeMemberAccessModifier ourMemberAccessModifier = null;

  private static ThreadLocal<Set<Pair<SNode, String>>> ourPropertySettersInProgress = new InProgressThreadLocal();
  private static ThreadLocal<Set<Pair<SNode, String>>> ourPropertyGettersInProgress = new InProgressThreadLocal();
  private static ThreadLocal<Set<Pair<SNode, String>>> ourSetReferentEventHandlersInProgress = new InProgressThreadLocal();

  //------static end-------

  private String myRoleInParent;
  private SNode myParent;

  private SNode myFirstChild;
  private SNode myNextSibling;  // == null only for the last child in the list
  private SNode myPrevSibling;  // notNull, myFirstChild.myPrevSibling = the last child
  private SReference[] myReferences = SReference.EMPTY_ARRAY;

  private Map<String, String> myProperties;

  private boolean myRegisteredInModelFlag;
  private SModel myModel;
  private SNodeId myId;

  private Object[] myUserObjects; // key,value,key,value ; !copy-on-write

  private String myConceptFqName;
  private String myLanguageNamespace;

  private BaseAdapter myAdapter;
  private boolean myDisposed;

  public static void setNodeMemberAccessModifier(NodeMemberAccessModifier modifier) {
    ourMemberAccessModifier = modifier;
  }

  public SNode(SModel model, @NotNull String conceptFqName, boolean callIntern) {
    myModel = model;
    if (callIntern) {
      myConceptFqName = InternUtil.intern(conceptFqName);
    } else {
      myConceptFqName = conceptFqName;
    }
  }

  public SNode(SModel model, String conceptFqName) {
    this(model, conceptFqName, true);
  }

  private void enforceModelLoad() {

  }

  public void changeModel(SModel newModel) {
    if (myModel == newModel) return;
    LOG.assertLog(!isRegistered(), "couldn't change model of registered node " + getDebugText());

    enforceModelLoad();
    SModel wasModel = myModel;
    myModel = newModel;
    ModelChangedCaster.getInstance().fireModelChanged(this, wasModel);

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      child.changeModel(newModel);
    }
  }

  public boolean isRoot() {
    return myRegisteredInModelFlag && myModel.isRoot(this);
  }

  public void addNextSibling(SNode newSibling) {
    myParent.insertChild(this, myRoleInParent, newSibling);
  }

  public void addPrevSibling(SNode newSibling) {
    myParent.insertChild(this, myRoleInParent, newSibling, true);
  }

  public SModel getModel() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    return myModel;
  }

  //MUST NOT be used,except from ModelAccess

  SModel getModelInternal() {
    return myModel;
  }

  public boolean isModelLoading() {
    return myModel.isLoading();
  }

  public String getRoleOf(SNode node) {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    if (node.getParent() == this) {
      String role = node.getRole_();
      assert role != null;
      return role;
    }
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.getTargetNode() == node) return reference.getRole();
      }
    }

    return "<no role>";
  }

  public Set<String> getChildRoles(boolean includeAttributeRoles) {
    return addChildRoles(new HashSet<String>(), includeAttributeRoles);
  }

  public Set<String> addChildRoles(final Set<String> augend, boolean includeAttributeRoles) {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      String roleOf = child.getRole_();
      assert roleOf != null;
      if (includeAttributeRoles || !(roleOf.contains(AttributesRolesUtil.STEREOTYPE_DELIM))) {
        augend.add(roleOf);
      }
    }
    return augend;
  }

  public Set<String> getChildRoles() {
    return getChildRoles(false);
  }

  public Set<String> addChildRoles(final Set<String> augend) {
    return addChildRoles(augend, false);
  }

  public Set<String> getReferenceRoles() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    Set<String> result = new HashSet<String>();
    if (myReferences != null) {
      for (SReference ref : myReferences) {
        result.add(ref.getRole());
      }
    }
    result.addAll(getLinkNamesFromAttributes());
    return result;
  }

  public boolean isAncestorOf(SNode child) {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    if (child == this) return true;
    SNode parentOfChild = child.getParent();
    if (parentOfChild == null) return false;
    return isAncestorOf(parentOfChild);
  }

  @NotNull
  public final SNode getTopmostAncestor() {
    SNode current = this;
    while (current.myParent != null) {
      assert current != current.myParent;
      current = current.myParent;
    }
    return current;
  }

  public SNode getContainingRoot() {
    ModelAccess.assertLegalRead(this);

    SNode current = this;

    while (true) {
      current.fireNodeReadAccess();
      if (current.myParent == null) {
        if (getModel().isRoot(current)) {
          return current;
        } else {
          return null;
        }
      } else {
        current = current.myParent;
      }
    }
  }

  public List<SNode> getAncestors(boolean includeThis) {
    List<SNode> result = new ArrayList<SNode>();
    if (includeThis) {
      result.add(this);
    }
    if (myParent != null) {
      result.addAll(myParent.getAncestors(true));
    }
    return result;
  }

  public void replaceChild(SNode oldChild, SNode newChild) {
    SNode anchor = oldChild == myFirstChild ? null : oldChild.myPrevSibling;
    String role = oldChild.getRole_();
    assert role != null;
    // old and new child can have the same node Id
    // thus it is important to remove old child first  
    removeChild(oldChild);
    insertChild(anchor, role, newChild);
  }

  public void replaceChild(SNode oldChild, List<SNode> newChildren) {
    assert oldChild.myParent == this;
    String oldChildRole = oldChild.getRole_();
    assert oldChildRole != null;
    SNode prevChild = oldChild;
    for (SNode newChild : newChildren) {
      insertChild(prevChild, oldChildRole, newChild);
      prevChild = newChild;
    }
    removeChild(oldChild);
  }

  public Object getUserObject(Object key) {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    if (myUserObjects == null) return null;
    for (int i = 0; i < myUserObjects.length; i += 2) {
      if (myUserObjects[i].equals(key)) {
        return myUserObjects[i + 1];
      }
    }
    return null;
  }

  public void putUserObject(Object key, Object value) {
    if (value == null) {
      removeUserObject(key);
      return;
    }
    if (myUserObjects == null) {
      myUserObjects = new Object[]{key, value};
    } else {
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

  public void putUserObjects(SNode fromNode) {
    if (fromNode == null || fromNode.myUserObjects == null) return;
    if (myUserObjects == null) {
      myUserObjects = fromNode.myUserObjects;
    } else {
      for (int i = 0; i < fromNode.myUserObjects.length; i += 2) {
        putUserObject(fromNode.myUserObjects[i], fromNode.myUserObjects[i + 1]);
      }
    }
  }

  public void removeUserObject(Object key) {
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
  }

  public void removeAllUserObjects() {
    myUserObjects = null;
  }

  public void setName(String name) {
    setProperty(INamedConcept.NAME, name);
  }

  public String getName() {
    return getProperty(INamedConcept.NAME);
  }

  public String getResolveInfo() {
    String resolveInfo = getProperty(IResolveInfo.RESOLVE_INFO);
    if (resolveInfo != null) {
      return resolveInfo;
    }
    // tmp hack
    return getProperty(INamedConcept.NAME);
  }

  public String getRole_() {
    return myRoleInParent;
  }

  public LinkDeclaration getRoleLink() {
    if (getRole_() == null) return null;
    if (getParent() == null) return null;
    return getParent().getLinkDeclaration(getRole_());
  }

  // ---------- attributes -------------
  //node

  public List<SNode> getNodeAttributes() {
    List<SNode> attributes = new ArrayList<SNode>(0);
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (AttributesRolesUtil.isNodeAttributeRole(child.getRole_())) {
        attributes.add(child);
      }
    }
    return attributes;
  }

  public List<SNode> getAllAttributes() {
    List<SNode> attributes = new ArrayList<SNode>(0);
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      String role = child.getRole_();
      if (AttributesRolesUtil.isNodeAttributeRole(role) ||
        AttributesRolesUtil.isLinkAttributeRole(role) ||
        AttributesRolesUtil.isPropertyAttributeRole(role)) {
        attributes.add(child);
      }
    }
    return attributes;
  }

  public boolean isAttribute() {
    String role_ = getRole_();
    return (role_ != null && AttributesRolesUtil.isAttributeRole(role_));
  }

  public SNode getAttribute(String role) {
    String attributeRole = AttributesRolesUtil.childRoleFromAttributeRole(role);
    return getChild(attributeRole);
  }

  public List<SNode> getAttributes(String role) {
    String attributeRole = AttributesRolesUtil.childRoleFromAttributeRole(role);
    return getChildren(attributeRole);
  }

  public void setAttribute(String role, SNode attribute) {
    setChild(AttributesRolesUtil.childRoleFromAttributeRole(role), attribute);
  }

  public void addAttribute(String role, SNode attribute) {
    addChild(AttributesRolesUtil.childRoleFromAttributeRole(role), attribute);
  }

  //property

  public void setPropertyAttribute(String role, String propertyName, SNode propertyAttribute) {
    setChild(AttributesRolesUtil.childRoleFromPropertyAttributeRole(role, propertyName), propertyAttribute);
  }

  public void addPropertyAttribute(String role, String propertyName, SNode propertyAttribute) {
    addChild(AttributesRolesUtil.childRoleFromPropertyAttributeRole(role, propertyName), propertyAttribute);
  }

  public SNode getPropertyAttribute(String role, String propertyName) {
    return getChild(AttributesRolesUtil.childRoleFromPropertyAttributeRole(role, propertyName));
  }

  public List<SNode> getPropertyAttributes(String role, String propertyName) {
    return getChildren(AttributesRolesUtil.childRoleFromPropertyAttributeRole(role, propertyName));
  }

  public Set<SNode> getPropertyAttributesForPropertyName(String propertyName) {
    Set<SNode> result = new HashSet<SNode>();
    for (String role : getChildRoles(true)) {
      String attributePropertyName = AttributesRolesUtil.getPropertyNameFromPropertyAttributeRole(role);
      if (attributePropertyName != null) {
        if (attributePropertyName.equals(propertyName)) {
          result.add(getChild(role));
        }
      }
    }
    return result;
  }

  //link

  public void setLinkAttribute(String role, String linkRole, SNode linkAttribute) {
    setChild(AttributesRolesUtil.childRoleFromLinkAttributeRole(role, linkRole), linkAttribute);
  }

  public void addLinkAttribute(String role, String linkRole, SNode linkAttribute) {
    addChild(AttributesRolesUtil.childRoleFromLinkAttributeRole(role, linkRole), linkAttribute);
  }

  public SNode getLinkAttribute(String role, String linkRole) {
    return getChild(AttributesRolesUtil.childRoleFromLinkAttributeRole(role, linkRole));
  }

  public List<SNode> getLinkAttributes(String role, String linkRole) {
    return getChildren(AttributesRolesUtil.childRoleFromLinkAttributeRole(role, linkRole));
  }

  public Set<SNode> getLinkAttributesForLinkRole(String linkRole) {
    Set<SNode> result = new HashSet<SNode>();
    if (linkRole == null) return result;
    for (String role : getChildRoles(true)) {
      String attributelinkRole = AttributesRolesUtil.getLinkRoleFromLinkAttributeRole(role);
      if (linkRole.equals(attributelinkRole)) {
        result.add(getChild(role));
      }
    }
    return result;
  }

  // ---------- properties -------------

  public Map<String, String> getProperties() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    if (myProperties == null) return Collections.emptyMap();
    return Collections.unmodifiableMap(myProperties);
  }

  public void putProperties(SNode fromNode) {
    ModelChange.assertLegalNodeChange(this);

    if (fromNode == null || fromNode.myProperties == null) return;
    if (myProperties == null) {
      myProperties = new ListMap<String, String>();
    }

    myProperties.putAll(fromNode.myProperties);
  }

  public Set<String> getPropertyNames() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    Set<String> result = getPropertyNamesFromAttributes();
    if (myProperties != null) {
      result.addAll(myProperties.keySet());
    }
    return result;
  }

  protected Set<String> getPropertyNamesFromAttributes() {
    Set<String> result = new HashSet<String>();
    for (String role : getChildRoles(true)) {
      String propertyName = AttributesRolesUtil.getPropertyNameFromPropertyAttributeRole(role);
      if (propertyName != null) result.add(propertyName);
    }
    return result;
  }

  protected Set<String> getLinkNamesFromAttributes() {
    Set<String> result = new HashSet<String>();
    for (String role : getChildRoles(true)) {
      String linkRole = AttributesRolesUtil.getLinkRoleFromLinkAttributeRole(role);
      if (linkRole != null) result.add(linkRole);
    }
    return result;
  }

  public boolean getBooleanProperty(String propertyName) {
    String value = getProperty(propertyName);
    return "true".equals(value);
  }

  public void setBooleanProperty(String propertyName, boolean value) {
    setProperty(propertyName, value ? "" + value : null);
  }

  public int getIntegerProperty(String propertyName) {
    String value = getProperty(propertyName);
    try {
      return Integer.parseInt(value);
    } catch (Exception e) {
      return 0;
    }
  }

  public void setIntegerProperty(String propertyName, int value) {
    setProperty(propertyName, "" + value);
  }

  public final boolean hasProperty(String propertyName) {
    ModelAccess.assertLegalRead(this);

    NodeReadAccessCasterInEditor.firePropertyReadAccessed(this, propertyName, true);
    String property_internal = getProperty_internal(propertyName);
    return !SModelUtil_new.isEmptyPropertyValue(property_internal);
  }

  public final String getProperty(String propertyName) {
    ModelAccess.assertLegalRead(this);

    NodeReadAccessCasterInEditor.firePropertyReadAccessed(this, propertyName, false);
    String propertyValue = getProperty_internal(propertyName);
    NodeReadEventsCaster.fireNodePropertyReadAccess(this, propertyName, propertyValue);
    return propertyValue;
  }

  private String getProperty_internal(String propertyName) {
    Set<Pair<SNode, String>> getters = ourPropertyGettersInProgress.get();
    Pair<SNode, String> current = new Pair<SNode, String>(this, propertyName);
    if (getters.contains(current)) return getPersistentProperty(propertyName);

    getters.add(current);
    try {
      INodePropertyGetter getter = ModelConstraintsManager.getInstance().getNodePropertyGetter(this, propertyName);
      if (getter == null) return getPersistentProperty(propertyName);

      Object getterValue = getter.execPropertyGet(this, propertyName, GlobalScope.getInstance());
      return getterValue == null ? null : String.valueOf(getterValue);
    } finally {
      getters.remove(current);
    }
  }

  public String getPersistentProperty(String propertyName) {
    if (myProperties == null) return null;
    if (ourMemberAccessModifier != null) {
      propertyName = ourMemberAccessModifier.getNewPropertyName(myModel, myConceptFqName, propertyName);
    }
    return myProperties.get(propertyName);
  }

  void changePropertyName(String oldPropertyName, String newPropertyName) {
    //todo make undo?
    if (myProperties == null) return;
    String value = myProperties.remove(oldPropertyName);
    myProperties.put(newPropertyName, value);
  }

  public void setProperty(final String propertyName, String propertyValue) {
    setProperty(propertyName, propertyValue, true);
  }

  public void setProperty(String propertyName, String propertyValue, boolean usePropertySetter) {
    propertyName = InternUtil.intern(propertyName);
    ModelChange.assertLegalNodeChange(this);
    propertyValue = InternUtil.intern(propertyValue);
    if (usePropertySetter) {
      Set<Pair<SNode, String>> threadSet = ourPropertySettersInProgress.get();
      Pair<SNode, String> pair = new Pair<SNode, String>(this, propertyName);
      if (!threadSet.contains(pair) && !myModel.isLoading()) {
        INodePropertySetter setter = CONSTRAINTS_MANAGER.getNodePropertySetter(this, propertyName);
        if (setter != null) {
          threadSet.add(pair);
          try {
            setter.execPropertySet(this, propertyName, propertyValue, GlobalScope.getInstance());
            return;
          } catch (Exception t) {
            LOG.error(t);
          } finally {
            threadSet.remove(pair);
          }
        }
      }
    }
    if (myProperties == null) {
      myProperties = new ListMap<String, String>();
    }
    if (ourMemberAccessModifier != null) {
      propertyName = ourMemberAccessModifier.getNewPropertyName(myModel, myConceptFqName, propertyName);
    }
    final String propertyName_ = propertyName;
    final String oldValue = myProperties.get(propertyName_);
    if (propertyValue == null) {
      myProperties.remove(propertyName_);
    } else {
      myProperties.put(propertyName_, propertyValue);
    }

    if (UndoHelper.getInstance().needRegisterUndo(getModel())) {
      UndoHelper.getInstance().addUndoableAction(new PropertyChangeUndoableAction(this, propertyName, oldValue, propertyValue));
    }

    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().firePropertyChangedEvent(this, propertyName_, oldValue, propertyValue);
    }
  }

  // ---------- children -------------

  final public SNode getParent() {
    return myParent;
  }

  public void setChild(String role, SNode childNode) {
    SNode oldChild = getChild(role);
    if (oldChild != null) {
      removeChild(oldChild);
    }
    if (childNode != null) {
      addChild(role, childNode);
    }
  }

  public SNode getChild(String role) {
    ModelAccess.assertLegalRead(this);
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewChildRole(myModel, myConceptFqName, role);
    }
    fireNodeReadAccess();
    int count = 0;
    SNode foundChild = null;
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (role.equals(child.getRole_())) {
        foundChild = child;
        count++;
      }
    }
    if (count > 1) {
      String errorMessage = "ERROR: " + count + " children for role " + role + " in " + NameUtil.shortNameFromLongName(getClass().getName()) + "[" + getId() + "] " + getModel().getSModelReference() + "\n";
      errorMessage += "they are : " + getChildren(role);
      LOG.error(errorMessage, this);
    }
    NodeReadEventsCaster.fireNodeChildReadAccess(this, role, foundChild);
    return foundChild;
  }

  public SNode getChildAt(int index) {
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (index-- == 0) {
        return child;
      }
    }
    return null;
  }

  public void addChild(String role, SNode child) {
    insertChild(myFirstChild == null ? null : myFirstChild.myPrevSibling, role, child);
  }

  public void insertChild(SNode anchorChild, String role, SNode child, boolean insertBefore) {
    if (insertBefore) {
      insertChild(myFirstChild == anchorChild ? null : anchorChild.myPrevSibling, role, child);
    } else {
      insertChild(anchorChild, role, child);
    }
  }

  public int getChildCount(String role) {
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewChildRole(myModel, myConceptFqName, role);
    }
    int count = 0;

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (role.equals(child.getRole_())) {
        count++;
      }
    }
    return count;
  }

  public int getIndexOfChild(SNode child_) {
    ModelAccess.assertLegalRead(this);
    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    String role_ = child_.getRole_();
    if (role_ == null) return -1;
    int count = 0;

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (child == child_) return count;
      if (role_.equals(child.getRole_())) {
        count++;
      }
    }
    return -1;
  }

  public List<SNode> getChildren() {
    return getChildren(true);
  }

  private List<SReference> _reference() {
    return new MyReferencesWrapper();
  }

  /**
   * Array iteration with foreach is much faster than List iteration so use array in bottlenecks
   */
  public SNode[] getChildrenArray() {
    int len = getChildCount();
    SNode[] nodes = new SNode[len];
    int i = 0;
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      nodes[i++] = child;
    }
    return nodes;
  }

  /**
   * Array iteration with foreach is much faster than List iteration so use array in bottlenecks
   */
  public SNode[] getChildrenArray(String role) {
    List<SNode> children = getChildren(role);
    return children.toArray(new SNode[children.size()]);
  }

  public Iterable<SNode> getChildrenIterable() {
    return new Iterable<SNode>() {
      public Iterator<SNode> iterator() {
        return new Iterator<SNode>() {
          private SNode current = myFirstChild;

          public boolean hasNext() {
            return current != null;
          }

          public SNode next() {
            SNode result = current;
            current = current.myNextSibling;
            return result;
          }

          public void remove() {
            throw new UnsupportedOperationException();
          }
        };
      }
    };
  }

  public List<SNode> getChildren(boolean includeAttributes) {
    ModelAccess.assertLegalRead(this);
    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    if (includeAttributes) {
      return new ChildrenList(myFirstChild);
    } else {
      return new SkipAttributesChildrenList(myFirstChild);
    }
  }

  private void fireNodeUnclassifiedReadAccess() {
    if (myModel.isLoading()) return;
    NodeReadEventsCaster.fireNodeUnclassifiedReadAccess(this);
  }

  public int getChildCount() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    int count = 0;

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      count++;
    }
    return count;
  }

  private void fireNodeReadAccess() {
    if (myModel.isLoading()) return;
    NodeReadAccessCasterInEditor.fireNodeReadAccessed(this);
  }

  public List<SNode> getChildren(String role) {
    ModelAccess.assertLegalRead(this);
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewChildRole(myModel, myConceptFqName, role);
    }
    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    if (myFirstChild == null) return Collections.emptyList();
    List<SNode> result = new ArrayList<SNode>();

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (role.equals(child.getRole_())) {
        result.add(child);
        child.fireNodeReadAccess();
        NodeReadEventsCaster.fireNodeChildReadAccess(this, role, child);
      }
    }
    return result;
  }

  public SNode getNextChild(SNode child) {
    String childRole = child.getRole_();
    assert childRole != null : "role must be not null";
    List<SNode> children = getChildren(childRole);
    int index = children.indexOf(child);
    if (index < 0 || index >= children.size() - 1) return null;
    return children.get(index + 1);
  }

  public SNode getPrevChild(SNode child) {
    String childRole = child.getRole_();
    assert childRole != null : "role must be not null";
    List<SNode> children = getChildren(childRole);
    int index = children.indexOf(child);
    if (index <= 0) return null;
    return children.get(index - 1);
  }

  /**
   * Removes child from current node. This affects only link between current node and its child, but not links in
   * subtree of child node.
   * <p/>
   * Differs from {@link SNode#delete()}.
   * @param wasChild
   */
  public void removeChild(SNode wasChild) {
    if (wasChild.myParent != this) return;
    ModelChange.assertLegalNodeChange(this);
    final String wasRole = wasChild.getRole_();
    SNode anchor = myFirstChild == wasChild ? null : wasChild.myPrevSibling;

    assert wasRole != null;
    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().fireBeforeChildRemovedEvent(this, wasRole, wasChild, anchor);
    }

    children_remove(wasChild);
    wasChild.myRoleInParent = null;
    wasChild.unRegisterFromModel();

    if (UndoHelper.getInstance().needRegisterUndo(getModel())) {
      UndoHelper.getInstance().addUndoableAction(new RemoveChildUndoableAction(this, anchor, wasRole, wasChild));
    }

    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().fireChildRemovedEvent(this, wasRole, wasChild, anchor);
    }
  }

  public void insertChild(final SNode anchor, String _role, final SNode child) {
    enforceModelLoad();

    if (ourMemberAccessModifier != null) {
      _role = ourMemberAccessModifier.getNewChildRole(myModel, myConceptFqName, _role);
    }
    final String role = _role;
    SNode parentOfChild = child.getParent();
    if (parentOfChild != null) {
      throw new RuntimeException(child.getDebugText() + " already has parent: " + parentOfChild.getDebugText() + "\n" +
        "Couldn't add it to: " + this.getDebugText());
    }

    if (child.isRoot()) {
      throw new RuntimeException(child.getDebugText() + " is root node. Can't add it as a child");
    }

    if (getTopmostAncestor() == child) {
      throw new RuntimeException("Trying to create a cyclic tree");
    }

    ModelChange.assertLegalNodeChange(this);

    children_insertAfter(anchor, child);
    child.myRoleInParent = InternUtil.intern(role);

    if (isRegistered()) {
      child.registerInModel(getModel());
    } else {
      child.changeModel(getModel());
    }

    if (UndoHelper.getInstance().needRegisterUndo(getModel())) {
      UndoHelper.getInstance().addUndoableAction(new InsertChildAtUndoableAction(this, anchor, _role, child));
    }

    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().fireChildAddedEvent(this, role, child, anchor);
    }
  }

  void unRegisterFromModel() {
    if (!myRegisteredInModelFlag) return;
    UnregisteredNodes.instance().put(this);
    myRegisteredInModelFlag = false;

    if (myAdapter != null) {
      UnregisteredNodesWithAdapters.getInstance().add(this);
    }

    myModel.unregisterNode(this);

    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      child.unRegisterFromModel();
    }
  }

  void registerInModel(SModel model) {
    registerInModel_internal(model);

    // add language because typesystem needs it to invalidate/revalidate its caches
    //todo this is a hack
    SModelOperations.validateLanguages(model, this);
  }

  private void registerInModel_internal(SModel model) {
    if (myRegisteredInModelFlag) {
      if (model != myModel) {
        LOG.errorWithTrace("couldn't register node which is already registered in '" + myModel.getSModelReference() + "'");
      }
      return;
    }

    SModel wasModel = myModel;
    myModel = model;
    myModel.registerNode(this);
    myRegisteredInModelFlag = true;

    UnregisteredNodes.instance().remove(this);

    if (myAdapter != null) {
      UnregisteredNodesWithAdapters.getInstance().remove(this);
    }

    if (wasModel != model) {
      ModelChangedCaster.getInstance().fireModelChanged(this, wasModel);
    }
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      child.registerInModel_internal(model);
    }
  }

  void dispose() {
    //myModel = null;
    //myRegisteredInModelFlag = false;
    //myChildren = null;
    //myReferences = null;
    //myProperties = null;
    myAdapter = null;
    myUserObjects = null;
    myDisposed = true;
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  public boolean shouldHaveBeenDisposed() {
    return myDisposed || myModel.isDisposed();
  }

  public boolean isDetached() {
    return getContainingRoot() == null;
  }

  public boolean isRegistered() {
    return myRegisteredInModelFlag;
  }

  // ---------- references -------------

  public List<SReference> getReferences() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    return new ArrayList<SReference>(_reference());
  }

  public SReference[] getReferencesArray() {
    SReference[] references = new SReference[myReferences.length];
    System.arraycopy(myReferences, 0, references, 0, myReferences.length);
    return references;
  }

  public Collection<SReference> getReferencesIterable() {
    return new AbstractList<SReference>() {
      public SReference get(int index) {
        return myReferences[index];
      }

      public int size() {
        return myReferences.length;
      }
    };
  }

  public SReference setReferent(String role, SNode newReferent) {
    return setReferent(role, newReferent, true);
  }

  public SReference setReferent(String role, SNode newReferent, boolean useHandler) {
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewReferentRole(myModel, myConceptFqName, role);
    }
    // remove old references
    List<SReference> toDelete = new ArrayList<SReference>();
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.getRole().equals(role)) {
          toDelete.add(reference);
        }
      }
    }
    SNode oldReferent = null;
    if (!toDelete.isEmpty()) {
      oldReferent = toDelete.get(0).getTargetNode();
    }
    if (toDelete.size() > 1) {
      LOG.errorWithTrace("ERROR! " + toDelete.size() + " references found for role '" + role + "' in " + this.getDebugText());
    }
    for (SReference reference : toDelete) {
      int index = _reference().indexOf(reference);
      removeReferenceAt(index);
    }

    SReference resultReference = null;
    if (newReferent != null) {
      resultReference = SReference.create(role, this, newReferent);
      insertReferenceAt(myReferences == null ? 0 : myReferences.length, resultReference);
    }

    if (useHandler && !getModel().isLoading()) {
      // invoke custom referent set event handler
      Set<Pair<SNode, String>> threadSet = ourSetReferentEventHandlersInProgress.get();
      Pair<SNode, String> pair = new Pair<SNode, String>(this, role);
      if (!threadSet.contains(pair)) {
        INodeReferentSetEventHandler handler = CONSTRAINTS_MANAGER.getNodeReferentSetEventHandler(this, role);
        if (handler != null) {
          threadSet.add(pair);
          try {
            handler.processReferentSetEvent(this, oldReferent, newReferent, GlobalScope.getInstance());
          } finally {
            threadSet.remove(pair);
          }
        }
      }
    }

    return resultReference;
  }

  public SNode getReferent(String role) {
    SReference reference = getReference(role);
    SNode result = reference == null ? null : reference.getTargetNode();
    if (result != null) {
      NodeReadEventsCaster.fireNodeReferentReadAccess(this, role, result);
    }
    return result;
  }

  public SReference getReference(String role) {
    ModelAccess.assertLegalRead(this);
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewReferentRole(myModel, myConceptFqName, role);
    }
    fireNodeReadAccess();
    SReference result = null;
    int count = 0; // paranoid check
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.getRole().equals(role)) {
          result = reference;
          count++;
        }
      }
    }

    if (count > 1) {
      LOG.errorWithTrace("ERROR: " + count + " referents for role '" + role + "' in " + getDebugText());
    }

    NodeReadEventsCaster.fireNodeReferentReadAccess(this, role, null);
    return result;
  }

  public void addReference(SReference reference) {
    assert reference.getSourceNode() == this;
    insertReferenceAt(myReferences == null ? 0 : myReferences.length, reference);
  }

  public void removeReferent(String role) {
    if (ourMemberAccessModifier != null) {
      role = ourMemberAccessModifier.getNewReferentRole(myModel, myConceptFqName, role);
    }
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.getRole().equals(role)) {
          int index = _reference().indexOf(reference);
          removeReferenceAt(index);
          break;
        }
      }
    }
  }

  public void removeReference(SReference referenceToRemove) {
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.equals(referenceToRemove)) {
          int index = _reference().indexOf(reference);
          removeReferenceAt(index);
          break;
        }
      }
    }
  }

  public void replaceReference(SReference referenceToRemove, @NotNull SReference referenceToAdd) {
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        if (reference.equals(referenceToRemove)) {
          int index = _reference().indexOf(reference);
          replaceReferenceAt(index, referenceToAdd);
          break;
        }
      }
    }
  }

  public List<SNode> getReferents() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    List<SNode> result = new ArrayList<SNode>();
    if (myReferences != null) {
      for (SReference reference : myReferences) {
        SNode targetNode = reference.getTargetNode();
        if (targetNode != null) result.add(targetNode);
      }
    }
    return result;
  }

  void insertReferenceAt(final int i, final SReference reference) {
    ModelChange.assertLegalNodeChange(this);
    _reference().add(i, reference);

    if (UndoHelper.getInstance().needRegisterUndo(getModel())) {
      UndoHelper.getInstance().addUndoableAction(new InsertReferenceAtUndoableAction(this, i, reference));
    }

    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().fireReferenceAddedEvent(reference);
    }
  }

  private void replaceReferenceAt(int index, @NotNull SReference referenceToAdd) {
    ModelChange.assertLegalNodeChange(this);

    if (UndoHelper.getInstance().needRegisterUndo(getModel()) || ModelChange.needFireEvents(getModel(), this)) {
      removeReferenceAt(index);
      insertReferenceAt(index, referenceToAdd);
    } else {
      myReferences[index] = referenceToAdd;
    }
  }

  void removeReferenceAt(final int i) {
    ModelChange.assertLegalNodeChange(this);
    final SReference reference = myReferences[i];
    _reference().remove(reference);

    if (UndoHelper.getInstance().needRegisterUndo(getModel())) {
      UndoHelper.getInstance().addUndoableAction(new RemoveReferenceAtUndoableAction(this, i, reference));
    }

    if (ModelChange.needFireEvents(getModel(), this)) {
      getModel().fireReferenceRemovedEvent(reference);
    }
  }

  /**
   * Deletes all nodes in subtree starting with current. Differs from {@link SNode#removeChild(SNode)}.
   */
  public void delete() {
    delete_internal();
  }

  private void delete_internal() {
    //delete all children
    List<SNode> children = new ArrayList<SNode>(getChildren());
    for (SNode child : children) {
      child.delete_internal();
    }

    //remove all references
    removeAllReferences();

    //remove from parent
    SNode parent = getParent();
    if (parent != null) {
      parent.removeChild(this);
    } else if (getModel().isRoot(this)) {
      getModel().removeRoot(this);
    }

    // really delete
    UnregisteredNodes.instance().remove(this);
  }


  private void removeAllReferences() {
    while (_reference().size() > 0) {
      removeReferenceAt(0);
    }
  }


  public boolean isDeleted() {
    return (_reference().size() == 0) && myParent == null && !getModel().isRoot(this);
  }

  // ---------- -------------

  public String getDebugText() {
    String roleText = "";
    if (isRegistered()) {
      String s = getRole_();
      roleText = s == null ? "[root]" : "[" + s + "]";
    }
    String nameText;
    try {
      if ("jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration".equals(getConceptFqName())) {
        // !!! use *safe* getRole !!!
        String role = myProperties == null ? null : myProperties.get("role");
        nameText = (role == null) ? "<no role>" : '"' + role + '"';
      } else {
        // !!! use *safe* getName !!!
        String name = myProperties == null ? null : myProperties.get("name");
        nameText = (name == null) ? "<no name>" : '"' + name + '"';
      }
      // !!! use *safe* getId !!!
      nameText = nameText + "[" + myId + "]";

    } catch (Exception e) {
      //e.printStackTrace();
      nameText = "<??name??>";
    }
    return roleText + " " + NameUtil.shortNameFromLongName(getConceptShortName()) + " " + nameText + " in " + myModel.getSModelFqName();
  }

  public boolean hasId() {
    return myId != null;
  }

  public String getId() {
    return getSNodeId().toString();
  }

  public SNodeId getSNodeId() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    if (myId == null && !isRegistered()) {
      // TODO remove id generation
      myId = SModel.generateUniqueId();
      //LOG.error(new IllegalStateException("cannot generate id for unregistered node"));
    }
    return myId;
  }

  public void setId(SNodeId id) {
    if (id.equals(myId)) return;

    if (!isRegistered()) {
      myId = id;
    } else {
      LOG.error("can't set id to registered node " + getDebugText(), new Throwable());
    }
  }

  public String getPresentation() {
    return getPresentation(false);
  }

  public String getPresentation(boolean detailed) {
    if (isUnknown()) {
      String persistentName = getPersistentProperty(INamedConcept.NAME);
      if (persistentName == null) {
        return "?" + getConceptShortName() + "?";
      }
      return "?" + persistentName + "?";
    }

    try {
/*
 Warning:
 BaseConcept_Behavior class will be loaded using platform classloader here.
 As a result this class will be loaded twice - once using own BundleClassLoader and one more time - here.
 */
      if (detailed) {
        return "" + BaseConcept_Behavior.call_getDetailedPresentation_2354269628709769373(this);
      } else {
        return "" + BaseConcept_Behavior.call_getPresentation_1213877396640(this);
      }
    } catch (RuntimeException t) {
      LOG.error(t);
      return "[can't calculate presentation : " + t.getMessage() + "]";
    }
  }

  public String toString() {
    ModelAccess.assertLegalRead(this);
    fireNodeReadAccess();

    String s = null;
    try {
      s = getProperty(BaseConcept.ALIAS);
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

  public List<SNode> getDescendants() {
    return getDescendants(null);
  }

  public Iterable<SNode> getDescendantsIterable(final Condition<SNode> condition, final boolean includeFirst) {
    return new DescendantsIterable(this, includeFirst ? this : myFirstChild, condition);
  }

  public List<SNode> getDescendants(Condition<SNode> condition) {
    ModelAccess.assertLegalRead(this);
    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();

    List<SNode> list = new ArrayList<SNode>();
    collectDescendants(condition, list);
    return list;
  }

  private void collectDescendants(Condition<SNode> condition, List<SNode> list) {
    // depth-first traversal
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (condition == null || condition == Condition.TRUE_CONDITION || condition.met(child)) {
        list.add(child);
      }
      child.collectDescendants(condition, list);
    }
  }

  public boolean isDescendantOf(SNode node, boolean includeThis) {
    SNode current;
    if (includeThis) {
      current = this;
    } else {
      current = getParent();
    }
    while (current != null) {
      if (current == node) {
        return true;
      }
      current = current.getParent();
    }
    return false;
  }

  public Language getNodeLanguage() {
    SNode concept = getConceptDeclarationNode();
    return SModelUtil.getDeclaringLanguage(concept, GlobalScope.getInstance());
  }

  @NotNull
  public String getConceptFqName() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    fireNodeUnclassifiedReadAccess();
    return myConceptFqName;
  }

  public ModuleReference getConceptLanguage() {
    return new ModuleReference(getLanguageNamespace());
  }

  @NotNull
  public String getConceptShortName() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    return NameUtil.shortNameFromLongName(myConceptFqName);
  }

  public String getLanguageNamespace() {
    ModelAccess.assertLegalRead(this);

    fireNodeReadAccess();
    if (myLanguageNamespace != null) {
      return myLanguageNamespace;
    }
    return (myLanguageNamespace = InternUtil.intern(NameUtil.namespaceFromConceptFQName(myConceptFqName)));
  }

  public boolean isUnknown() {
    Language language = GlobalScope.getInstance().getLanguage(getLanguageNamespace());
    return language == null || language.findConceptDeclaration(getConceptShortName()) == null;
  }

  @UseCarefully
  void setConceptFqName(@NotNull String conceptFQName) {
    myConceptFqName = InternUtil.intern(conceptFQName);
    myLanguageNamespace = null;
    myAdapter = null;
    SModelRepository.getInstance().markChanged(getModel());
  }

  public boolean isInstanceOfConcept(AbstractConceptDeclaration concept) {
    return isInstanceOfConcept(NameUtil.nodeFQName(concept));
  }

  public boolean isInstanceOfConcept(String conceptFqName) {
    return SModelUtil_new.isAssignableConcept(myConceptFqName, conceptFqName);
  }

  public SNode getConceptDeclarationNode() {
    String conceptFQName = getConceptFqName();
    return SModelUtil.findConceptDeclaration(conceptFQName, GlobalScope.getInstance());
  }

  public PropertyDeclaration getPropertyDeclaration(String propertyName) {
    SNode sourceNode = this;
    AbstractConceptDeclaration typeDeclaration = sourceNode.getConceptDeclarationAdapter();
    return SModelSearchUtil.findPropertyDeclaration(typeDeclaration, propertyName);
  }

  public LinkDeclaration getLinkDeclaration(String role) {
    AbstractConceptDeclaration conceptDeclaration = getConceptDeclarationAdapter();
    return SModelSearchUtil.findLinkDeclaration(conceptDeclaration, role);
  }

  public SNode findParent(Condition<SNode> condition) {
    SNode parent = getParent();
    while (parent != null) {
      if (condition.met(parent)) {
        return parent;
      }
      parent = parent.getParent();
    }
    return null;
  }

  // -----------------------------
  // concept properties support
  // -----------------------------

  public boolean hasConceptProperty(String propertyName) {
    if ("root".equals(propertyName)) {
      if (getAdapter() instanceof ConceptDeclaration) {
        return ((ConceptDeclaration) getAdapter()).getRootable();
      } else {
        AbstractConceptDeclaration conceptDeclaration = getConceptDeclarationAdapter();
        if (conceptDeclaration instanceof ConceptDeclaration) {
          return ((ConceptDeclaration) conceptDeclaration).getRootable();
        }
      }
      return false;
    }

    ConceptProperty conceptProperty = findConceptProperty(propertyName);
    return conceptProperty != null;
  }

  public String getConceptProperty(String propertyName) {
    ConceptProperty conceptProperty = findConceptProperty(propertyName);
    if (conceptProperty instanceof StringConceptProperty) {
      return ((StringConceptProperty) conceptProperty).getValue();
    }

    if (conceptProperty instanceof IntegerConceptProperty) {
      return "" + ((IntegerConceptProperty) conceptProperty).getValue();
    }

    if (conceptProperty instanceof BooleanConceptProperty) {
      return "true";
    }
    return null;
  }

  public ConceptProperty findConceptProperty(String propertyName) {
    SNode conceptDeclaration;
    if (myConceptFqName.equals(ConceptDeclaration.concept) || myConceptFqName.equals(InterfaceConceptDeclaration.concept)) {
      conceptDeclaration = this;
    } else {
      conceptDeclaration = SModelUtil.findConceptDeclaration(myConceptFqName, GlobalScope.getInstance());
    }
    return SModelSearchUtil.findConceptProperty((AbstractConceptDeclaration) conceptDeclaration.getAdapter(), propertyName);
  }

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

  public String getNodePath(SNode child) {
    StringBuilder sb = new StringBuilder();
    SNode current = child;
    while (current != this && current != null) {
      String role = current.getRole_();
      SNode currentParent = current.getParent();
      List<SNode> children = currentParent == null || role == null ? new ArrayList<SNode>() : currentParent.getChildren(role);
      String numberString = children.size() <= 1 ? "" : "#" + children.indexOf(current);
      sb.insert(0, "/" + role + numberString);
      current = currentParent;
    }
    return sb.toString();
  }

  public boolean isReferentRequired(String role) {
    AbstractConceptDeclaration conceptDeclaration = getConceptDeclarationAdapter();
    LinkDeclaration linkDeclaration = SModelSearchUtil.findLinkDeclaration(conceptDeclaration, role);
    if (linkDeclaration == null) {
      LOG.error("couldn't find link declaration for role \"" + role + "\" in hierarchy of concept " + conceptDeclaration.getDebugText());
      return false;
    }
    Cardinality cardinality = SModelUtil_new.getGenuineLinkSourceCardinality(linkDeclaration);
    if (cardinality == Cardinality._1 || cardinality == Cardinality._1__n) {
      return true;
    }
    return false;
  }

  public Language getLanguage(@NotNull IScope scope) {
    String languageNamespace = getLanguageNamespace();
    return scope.getLanguage(languageNamespace);
  }

  public BaseAdapter getAdapter() {
    ModelAccess.assertLegalRead(this);
    BaseAdapter adapter = myAdapter;
    if (adapter != null) return adapter;
    Constructor c = QueryMethodGenerated.getAdapterConstructor(getConceptFqName());
    if (c == null) return new BaseConcept(this);

    synchronized (this) {
      adapter = myAdapter;
      if (adapter != null) return adapter;
      try {
        adapter = (BaseAdapter) c.newInstance(this);
        assert adapter.getNode() == this;

        if (!myRegisteredInModelFlag) {
          UnregisteredNodesWithAdapters.getInstance().add(this);
        }
        myAdapter = adapter;
        return adapter;
      } catch (IllegalAccessException e) {
        LOG.error(e);
      } catch (InvocationTargetException e) {
        LOG.error(e);
      } catch (InstantiationException e) {
        LOG.error(e);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
    return new BaseConcept(this);
  }

  void clearAdapter() {
    myAdapter = null;
  }

  public void setRoleInParent(String newRoleInParent) {//todo add undo
    myRoleInParent = InternUtil.intern(newRoleInParent);
  }

  public int depth() {
    int childDepth = 0;
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      int depth = child.depth();
      if (childDepth < depth) {
        childDepth = depth;
      }
    }
    return childDepth + 1;
  }

  public SNode prevSibling() {
    if (myParent == null) {
      return null;
    }
    return myParent.myFirstChild == this ? null : myPrevSibling;
  }

  public SNode nextSibling() {
    return myNextSibling;
  }

  public SModel getModelInternal() {
    return myModel;
  }

  private class MyReferencesWrapper extends ArrayWrapper<SReference> {
    protected SReference[] getArray() {
      return myReferences;
    }

    protected void setArray(SReference[] newArray) {
      myReferences = newArray;
    }

    protected SReference[] newArray(int size) {
      return new SReference[size];
    }
  }

  private void children_insertAfter(SNode anchor, @NotNull SNode node) {
    if (anchor == null) {
      if (myFirstChild != null) {
        node.myPrevSibling = myFirstChild.myPrevSibling;
        myFirstChild.myPrevSibling = node;
      } else {
        node.myPrevSibling = node;
      }
      node.myNextSibling = myFirstChild;
      myFirstChild = node;
    } else {
      node.myPrevSibling = anchor;
      node.myNextSibling = anchor.myNextSibling;
      if (anchor.myNextSibling == null) {
        myFirstChild.myPrevSibling = node;
      } else {
        anchor.myNextSibling.myPrevSibling = node;
      }
      anchor.myNextSibling = node;
    }
    node.myParent = this;
  }

  private void children_remove(@NotNull SNode node) {
    if (myFirstChild == node) {
      myFirstChild = node.myNextSibling;
      if (myFirstChild != null) {
        myFirstChild.myPrevSibling = node.myPrevSibling;
      }
    } else {
      node.myPrevSibling.myNextSibling = node.myNextSibling;
      if (node.myNextSibling != null) {
        node.myNextSibling.myPrevSibling = node.myPrevSibling;
      } else {
        myFirstChild.myPrevSibling = node.myPrevSibling;
      }
    }
    node.myPrevSibling = node.myNextSibling = null;
    node.myParent = null;
  }

  private class ChildrenList extends AbstractImmutableList<SNode> {
    public ChildrenList(SNode first) {
      super(first);
    }

    public ChildrenList(SNode first, int size) {
      super(first, size);
    }

    @Override
    protected SNode next(SNode node) {
      return node.myNextSibling;
    }

    @Override
    protected SNode prev(SNode node) {
      return node.myPrevSibling;
    }

    @Override
    protected AbstractImmutableList<SNode> subList(SNode elem, int size) {
      return new ChildrenList(elem, size);
    }
  }

  private class SkipAttributesChildrenList extends AbstractImmutableList<SNode> {
    public SkipAttributesChildrenList(SNode first) {
      super(first);
    }

    public SkipAttributesChildrenList(SNode first, int size) {
      super(first, size);
    }

    protected SNode next(SNode node) {
      SNode result = node.myNextSibling;
      while (result != null && result.isAttribute()) {
        result = result.myNextSibling;
      }
      return result;
    }

    protected SNode prev(SNode node) {
      SNode result = myFirst == node ? null : node.myPrevSibling;
      while (result != null && result.isAttribute()) {
        result = myFirst == result ? null : result.myPrevSibling;
      }
      return result;
    }

    protected AbstractImmutableList<SNode> subList(SNode elem, int size) {
      return new SkipAttributesChildrenList(elem, size);
    }
  }

  private static class InProgressThreadLocal extends ThreadLocal<Set<Pair<SNode, String>>> {
    protected Set<Pair<SNode, String>> initialValue() {
      return new HashSet<Pair<SNode, String>>();
    }
  }

  private static class DescendantsIterable implements Iterator<SNode>, Iterable<SNode> {
    private SNode original;
    private SNode current;
    private Condition<SNode> condition;

    DescendantsIterable(SNode original, SNode first, Condition<SNode> condition) {
      this.original = original;
      this.current = first;
      this.condition = condition;
      while (current != null && condition != null && !condition.met(current)) {
        current = nextInternal(current);
      }
    }

    public boolean hasNext() {
      return current != null;
    }

    public SNode next() {
      SNode result = current;
      do {
        current = nextInternal(current);
      } while (current != null && condition != null && !condition.met(current));
      return result;
    }

    private SNode nextInternal(SNode curr) {
      if (curr == null) {
        return null;
      }
      if (curr.myFirstChild != null) {
        return curr.myFirstChild;
      }
      if (curr == original) {
        return null;
      }
      do {
        if (curr.myNextSibling != null) {
          return curr.myNextSibling;
        }
        curr = curr.myParent;
      } while (curr != original);
      return null;
    }

    public void remove() {
      throw new UnsupportedOperationException();
    }

    public Iterator<SNode> iterator() {
      return this;
    }
  }

  //------------deprecated-------------

  @Deprecated
  public SNode getAttribute() {
    // default (?) attribute
    SNode result = getAttribute(null);  // '_attr_$attribute'
    if (result == null) {
      // old way, just: '$attribute'
      result = getChild(AttributesRolesUtil.STEREOTYPE_DELIM + AttributesRolesUtil.ATTRIBUTE_STEREOTYPE);
    }
    return result;
  }

  @Deprecated
  public void setAttribute(SNode attributeConcept) {
    // default (?) attribute
    setAttribute(null, attributeConcept);
  }

  @Deprecated
  public void setPropertyAttribute(String propertyName, SNode propertyAttribute) {
    // 'default' property attr
    setPropertyAttribute(null, propertyName, propertyAttribute);
  }

  @Deprecated
  public SNode getPropertyAttribute(String propertyName) {
    // 'default' property attr
    SNode result = getPropertyAttribute(null, propertyName);
    if (result != null) return result;

    // back compatibility with some obsolete property attributes?
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (AttributesRolesUtil.isChildRoleOfPropertyAttributeForPropertyName(propertyName, child.getRole_())) {
        return child;
      }
    }

    // old - no attribute role.
    result = getChild(propertyName + AttributesRolesUtil.STEREOTYPE_DELIM + AttributesRolesUtil.PROPERTY_ATTRIBUTE_STEREOTYPE);
    return result;
  }

  @Deprecated
  public void setLinkAttribute(String role, SNode linkAttribute) {
    // 'default' link attr
    setLinkAttribute(null, role, linkAttribute);
  }

  @Deprecated
  public SNode getLinkAttribute(String role) {
    // 'default' link attr
    SNode result = getLinkAttribute(null, role);
    if (result != null) return result;

    // back compatibility with some obsolete link attributes?
    for (SNode child = myFirstChild; child != null; child = child.myNextSibling) {
      if (AttributesRolesUtil.isChildRoleOfLinkAttributeForLinkRole(role, child.getRole_())) {
        return child;
      }
    }

    result = getChild(role + AttributesRolesUtil.STEREOTYPE_DELIM + AttributesRolesUtil.LINK_ATTRIBUTE_STEREOTYPE);
    return result;
  }

  @Deprecated
  public AbstractConceptDeclaration getConceptDeclarationAdapter() {
    String conceptFQName = getConceptFqName();
    AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(conceptFQName, GlobalScope.getInstance());
    return concept;
  }

  @Deprecated
  public boolean isInstanceOfConcept(String conceptFqName, IScope scope) {
    return isInstanceOfConcept(conceptFqName);
  }

}
