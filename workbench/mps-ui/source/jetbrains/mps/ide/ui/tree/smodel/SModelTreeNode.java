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
package jetbrains.mps.ide.ui.tree.smodel;

import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTreeNodeEx;
import jetbrains.mps.ide.ui.tree.SortUtil;
import jetbrains.mps.ide.ui.tree.TreeElement;
import jetbrains.mps.ide.ui.tree.TreeNodeVisitor;
import jetbrains.mps.smodel.DependencyRecorder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.util.ConditionalIterable;
import jetbrains.mps.util.InternUtil;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.ToStringComparator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.util.Condition;

import javax.swing.Icon;
import javax.swing.tree.DefaultTreeModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SModelTreeNode extends MPSTreeNodeEx implements TreeElement {

  private SModel myModelDescriptor;
  private List<SModelTreeNode> myChildModelTreeNodes = new ArrayList<SModelTreeNode>();

  private String myLabel;
  private boolean myInitialized = false;
  private boolean myInitializing = false;
  private boolean myShowLongName;
  private int myCountAdditionalNamePart = 0;
  private List<SNodeGroupTreeNode> myRootGroups = new ArrayList<SNodeGroupTreeNode>();

  private Condition<SNode> myNodesCondition;

  private DependencyRecorder<SNodeTreeNode> myDependencyRecorder = new DependencyRecorder<SNodeTreeNode>();

  private Map<String, PackageNode> myPackageNodes = new HashMap<String, PackageNode>();
  private Icon myIcon;

  public SModelTreeNode(SModel modelDescriptor,
      String label,
      @NotNull IOperationContext operationContext) {
    this(modelDescriptor, label, operationContext, true);
  }

  public SModelTreeNode(SModel modelDescriptor,
      String label,
      @NotNull IOperationContext operationContext,
      Condition<SNode> condition) {
    this(modelDescriptor, label, operationContext, true, condition, 0);
  }

  public SModelTreeNode(SModel modelDescriptor,
      String label,
      IOperationContext operationContext,
      boolean showLongName) {
    this(modelDescriptor, label, operationContext, showLongName, Condition.TRUE_CONDITION, 0);
  }

  public SModelTreeNode(SModel modelDescriptor,
      String label,
      IOperationContext operationContext,
      int countNamePart) {
    this(modelDescriptor, label, operationContext, false, Condition.TRUE_CONDITION, countNamePart);
  }

  public SModelTreeNode(SModel modelDescriptor,
      String label,
      IOperationContext operationContext,
      boolean showLongName,
      Condition<SNode> condition,
      int countNamePart) {
    super(operationContext);
    myShowLongName = showLongName;
    myModelDescriptor = modelDescriptor;
    myIcon = IconManager.getIconFor(getSModelDescriptor());
    myLabel = label;
    myNodesCondition = condition;
    myCountAdditionalNamePart = countNamePart;
    setUserObject(SNodeOperations.getModelLongName(modelDescriptor));
    if (myModelDescriptor != null) {
      setNodeIdentifier(myModelDescriptor.toString());
    } else {
      setNodeIdentifier("");
    }
    setText(calculateText());
    setIcon(myIcon);
  }

  public Icon getDefaultIcon() {
    return myIcon;
  }

  @Override
  public SNode getSNode() {
    return null;
  }

  public boolean hasModelsUnder() {
    return !getSubfolderSModelTreeNodes().isEmpty();
  }

  //do not use!
  public DependencyRecorder<SNodeTreeNode> getDependencyRecorder() {
    return myDependencyRecorder;
  }

  protected SNodeGroupTreeNode getNodeGroupFor(SNode node) {
    boolean packagesEnabled = true;
    if (!packagesEnabled) {
      return null;
    }

    String nodePackage = SNodeAccessUtil.getProperty(node, SNodeUtil.propertyName_BaseConcept_virtualPackage);

    if (nodePackage != null && !"".equals(nodePackage)) {
      String[] packages = nodePackage.split("\\.");

      String pack = "";
      PackageNode current = null;
      for (String aPackage : packages) {
        if (pack.length() > 0) {
          pack += ".";
        }
        pack += aPackage;

        if (!myPackageNodes.containsKey(pack)) {
          PackageNode parent = current;
          current = new PackageNode(this, aPackage, parent);
          myPackageNodes.put(pack, current);
          current.registerInModelNode(this, parent);
        }

        current = myPackageNodes.get(pack);
      }

      return current;
    }
    return null;
  }

  void register(SNodeGroupTreeNode parent, SNodeGroupTreeNode groupTreeNode) {
    if (parent == null) {
      int index = -1;
      for (int i = 0; i < myRootGroups.size(); i++) {
        SNodeGroupTreeNode group = myRootGroups.get(i);
        String rp = groupTreeNode.toString();
        String cp = group.toString();
        if (rp.compareTo(cp) < 0) {
          index = i;
          break;
        }
      }
      if (index == -1) {
        index = myRootGroups.size();
      }

      myRootGroups.add(index, groupTreeNode);

      if (myInitialized || myInitializing) {
        DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
        treeModel.insertNodeInto(groupTreeNode, this, index + myChildModelTreeNodes.size());
      }
    } else {
      int index = -1;
      int groupCount = 0;
      for (int i = 0; i < parent.getChildCount(); i++) {
        if (!(parent.getChildAt(i) instanceof SNodeGroupTreeNode)) {
          break;
        }
        groupCount++;
        SNodeGroupTreeNode group = (SNodeGroupTreeNode) parent.getChildAt(i);
        String rp = groupTreeNode.toString();
        String cp = group.toString();
        if (rp.compareTo(cp) < 0) {
          index = i;
          break;
        }
      }
      if (index == -1) {
        index = groupCount;
      }

      if (myInitialized || myInitializing) {
        DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
        treeModel.insertNodeInto(groupTreeNode, parent, index);
      } else {
        parent.insert(groupTreeNode, index);
      }
    }
  }

  public void groupBecameEmpty(SNodeGroupTreeNode node) {
    DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();

    myRootGroups.remove(node);

    MPSTreeNode parent = (MPSTreeNode) node.getParent();
    if (node.isAutoDelete()) {
      treeModel.removeNodeFromParent(node);
    }

    if (parent instanceof SNodeGroupTreeNode && parent.getChildCount() == 0) {
      groupBecameEmpty((SNodeGroupTreeNode) parent);
    }

    if (node instanceof PackageNode) {
      myPackageNodes.remove(((PackageNode) node).getPackage());
    }
  }

  public org.jetbrains.mps.openapi.model.SModel getModel() {
    return myModelDescriptor;
  }

  /**
   * use getModel
   */
  @Deprecated
  public final SModel getSModel() {
    return getModel();
  }

  /**
   * use getModel
   */
  @Deprecated
  public final SModel getSModelDescriptor() {
    return getModel();
  }

  @NotNull
  public final SNodeTreeNode createSNodeTreeNode(SNode node, IOperationContext operationContext) {
    return createSNodeTreeNode(node, null, operationContext);
  }

  @NotNull
  public final SNodeTreeNode createSNodeTreeNode(SNode node, IOperationContext operationContext, Condition<SNode> condition) {
    return createSNodeTreeNode(node, null, operationContext, condition);
  }

  @NotNull
  public final SNodeTreeNode createSNodeTreeNode(SNode node, String role, IOperationContext operationContext) {
    return createSNodeTreeNode(node, role, operationContext, Condition.TRUE_CONDITION);
  }

  @NotNull
  public SNodeTreeNode createSNodeTreeNode(SNode node, String role, IOperationContext operationContext, Condition<SNode> condition) {
    return new SNodeTreeNode(node, role, operationContext, condition);
  }

  private String calculateText() {
    org.jetbrains.mps.openapi.model.SModelReference reference;

    if (getModel() != null) {
      reference = getModel().getReference();
    } else {
      return "";
    }

    String name = calculatePresentationText(reference);
    String result;

    if (myLabel != null) {
      result = myLabel + " : " + name;
    } else {
      result = name;
    }

    return InternUtil.intern(result);
  }

  public void setCountAdditionalNamePart(int count) {
    myCountAdditionalNamePart = count;
    updatePresentation();
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  public boolean isSubfolderModel(SModel candidate) {
    if (myModelDescriptor == null) return false;
    String modelName = SNodeOperations.getModelLongName(myModelDescriptor);
    String candidateName = SNodeOperations.getModelLongName(candidate);
    if (candidateName == null || !candidateName.startsWith(modelName) || modelName.equals(candidateName))
      return false;
    if (candidateName.charAt(modelName.length()) == '.') {
      String modelStereotype = SModelStereotype.getStereotype(myModelDescriptor);
      String candidateStereotype = SModelStereotype.getStereotype(candidate);
      if (!modelStereotype.equals(candidateStereotype)) return false;
      String shortName = candidateName.replace(modelName + ".", "");
      if (shortName.contains(".")) {
        String maxPackage = candidateName.substring(0, candidateName.lastIndexOf('.'));
        SModel md = SModelRepository.getInstance().getModelDescriptor(maxPackage);
        if (md != null) {
          if (IterableUtil.asCollection(md.getModule().getModels()).contains(myModelDescriptor)) {
            return false;
          }
        }
      }
      return true;
    }
    return false;
  }

  public void addChildModel(SModelTreeNode model) {
    myChildModelTreeNodes.add(model);
  }

  public List<SModelTreeNode> getSubfolderSModelTreeNodes() {
    return Collections.unmodifiableList(myChildModelTreeNodes);
  }

  public List<SModelTreeNode> getAllSubfolderSModelTreeNodes() {
    List<SModelTreeNode> result = new ArrayList<SModelTreeNode>();
    if (myChildModelTreeNodes.isEmpty()) {
      result.add(this);
    } else {
      for (SModelTreeNode treeNode : myChildModelTreeNodes) {
        result.addAll(treeNode.getAllSubfolderSModelTreeNodes());
      }
    }
    return result;
  }

  @Override
  protected void doUpdate() {
    myInitialized = false;
    this.removeAllChildren();
  }

  @Override
  protected void doInit() {
    try {
      myInitializing = true;

      removeAllChildren();
      myPackageNodes.clear();
      myRootGroups.clear();

      for (SModelTreeNode newChildModel : myChildModelTreeNodes) {
        DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
        int index = myChildModelTreeNodes.indexOf(newChildModel);
        treeModel.insertNodeInto(newChildModel, this, index);
      }
      org.jetbrains.mps.openapi.model.SModel model = getModel();
      Iterable<SNode> iter = new ConditionalIterable(model.getRootNodes(), myNodesCondition);

      List<SNode> filteredRoots = new ArrayList<SNode>();
      for (SNode node : iter) {
        filteredRoots.add(node);
      }
      List<SNode> sortedRoots = SortUtil.sortNodesByPresentation(filteredRoots);
      Comparator<Object> childrenComparator = getTree().getChildrenComparator();
      if (childrenComparator != null) {
        Collections.sort(sortedRoots, childrenComparator);
      }
      for (SNode sortedRoot : sortedRoots) {
        MPSTreeNodeEx treeNode = createSNodeTreeNode(sortedRoot, getOperationContext(), myNodesCondition);
        MPSTreeNode group = getNodeGroupFor(sortedRoot);
        if (group != null) {
          group.add(treeNode);
        } else {
          add(treeNode);
        }
      }

      DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();
      treeModel.nodeStructureChanged(this);
    } finally {
      myInitialized = true;
      myInitializing = false;
    }
  }

  private String calculatePresentationText(org.jetbrains.mps.openapi.model.SModelReference reference) {
    if (myShowLongName) {
      return reference.getModelName();
    } else if (myCountAdditionalNamePart == 0) {
      return NameUtil.shortNameFromLongName(reference.getModelName());
    }
    StringBuilder stringBuilder = new StringBuilder();
    String[] namePart = reference.getModelName().split("\\.");
    int firstPart = namePart.length - myCountAdditionalNamePart - 1;
    for (int i = firstPart; i < namePart.length - 1; i++) {
      stringBuilder.append(namePart[i]).append('.');
    }
    stringBuilder.append(NameUtil.shortNameFromLongName(reference.getModelName()));
    return stringBuilder.toString();
  }

  @Override
  protected final boolean canBeOpened() {
    return false;
  }

  public void insertRoots(Set<SNode> addedRoots) {
    if (addedRoots.isEmpty()) return;

    DefaultTreeModel treeModel = (DefaultTreeModel) getTree().getModel();

    final ArrayList<SNode> allRoots = new ArrayList<SNode>();
    for (SNode root1 : getSModel().getRootNodes()) {
      allRoots.add(root1);
    }
    Collections.sort(allRoots, new ToStringComparator(true));

    List<SNode> added = new ArrayList<SNode>(addedRoots);
    Collections.sort(added, new Comparator<SNode>() {
      @Override
      public int compare(SNode o1, SNode o2) {
        return new Integer(allRoots.indexOf(o1)).compareTo(allRoots.indexOf(o2));
      }
    });

    for (SNode root : added) {
      SNodeTreeNode nodeToInsert = new SNodeTreeNode(root, getOperationContext());
      MPSTreeNode targetNode = getNodeGroupFor(root);

      if (targetNode == null) {
        targetNode = SModelTreeNode.this;
      }

      int index = -1;
      for (int i = 0; i < targetNode.getChildCount(); i++) {
        if (!(targetNode.getChildAt(i) instanceof SNodeTreeNode)) {
          continue;
        }
        SNodeTreeNode child = (SNodeTreeNode) targetNode.getChildAt(i);
        String rp = root.toString();
        String cp = child.getSNode().toString();
        if (rp.compareTo(cp) < 0) {
          index = i;
          break;
        }
      }
      if (index == -1) {
        index = targetNode.getChildCount();
      }
      treeModel.insertNodeInto(nodeToInsert, targetNode, index);
    }
  }

  @Override
  public void accept(@NotNull TreeNodeVisitor visitor) {
    visitor.visitModelNode(this);
  }
}
