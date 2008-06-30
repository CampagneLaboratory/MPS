package jetbrains.mps.vcs.ui;

import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.smodel.SNodeTreeNode;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.CollectionUtil;
import jetbrains.mps.util.Condition;
import jetbrains.mps.vcs.diff.*;

import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSplitPane;
import javax.swing.tree.TreeNode;
import java.awt.BorderLayout;
import java.awt.Color;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.intellij.openapi.actionSystem.ActionGroup;

public class ModelDifferenceView extends JPanel {
  private MPSTree myModelTree = new MPSTree() {
    protected MPSTreeNode rebuild() {
      if (myNewModel == null) {
        return new TextTreeNode("No Model To Display");
      } else {
        return new MySModelTreeNode(myNewModel, "", null);
      }
    }
  };

  private MPSTree myChangesTree = new MPSTree() {
    protected MPSTreeNode rebuild() {
      if (myNewModel == null) {
        return new TextTreeNode("No Changes To Display");
      } else {
        return buildChangesTree();
      }
    }
  };

  private Set<SNodeId> myChangedNodes = new HashSet<SNodeId>();
  private Set<SNodeId> myAddedNodes = new HashSet<SNodeId>();
  private SModel myNewModel;
  private List<Change> myChanges;

  public ModelDifferenceView() {
    setLayout(new BorderLayout());

    JSplitPane splitter = new JSplitPane(JSplitPane.VERTICAL_SPLIT,
            new JScrollPane(myModelTree),
            new JScrollPane(myChangesTree));
    splitter.setDividerLocation(500);
    
    add(splitter, BorderLayout.CENTER);
    updateView();
  }

  public ModelDifferenceView showDifference(SModel oldModel, SModel newModel) {
    myNewModel = newModel;

    DiffBuilder builder = new DiffBuilder(oldModel, newModel);
    final List<Change> changes = builder.getChanges();
    myChanges = changes;

    for (AddRootChange ar : CollectionUtil.filter(AddRootChange.class, changes)) {
      myAddedNodes.add(ar.getNodeId());
    }

    for (AddNodeChange an : CollectionUtil.filter(AddNodeChange.class, changes)) {
      myAddedNodes.add(an.getNodeId());      
    }

    for (SetNodeChange c : CollectionUtil.filter(SetNodeChange.class, changes)) {
      myAddedNodes.add(c.getNodeId());
    }

    for (SetPropertyChange p : CollectionUtil.filter(SetPropertyChange.class, changes)) {
      myChangedNodes.add(p.getNodeId());
    }

    for (SetReferenceChange r : CollectionUtil.filter(SetReferenceChange.class, changes)) {
      myChangedNodes.add(r.getNodeId());
    }

    updateView();


    myModelTree.runWithoutExpansion(new Runnable() {
      public void run() {
        for (Change c : changes) {
          if (c instanceof NewNodeChange) {
            NewNodeChange nnc = (NewNodeChange) c;
            if (nnc.getNodeParent() == null || !myAddedNodes.contains(nnc.getNodeParent())) {
              expandNode(c.getAffectedNodeId());
            }
          } else if (c instanceof SetPropertyChange ||
                  c instanceof SetReferenceChange) {
            SNodeId id = c.getAffectedNodeId();
            if (!myAddedNodes.contains(id)) {
              expandNode(id);
            }
          } else if (c instanceof DeleteNodeChange) {
            //skip
          } else {
            expandNode(c.getAffectedNodeId());
          }
        }
      }
    });

    return this;
  }

  private void updateView() {
    myChangesTree.rebuildNow();
    myChangesTree.expandRoot();

    myModelTree.rebuildNow();
    myModelTree.expandRoot();
  }

  private MPSTreeNode buildChangesTree() {
    TextTreeNode changes = new TextTreeNode("Changes");

    List<AddNodeChange> addNodeChanges = CollectionUtil.filter(AddNodeChange.class, myChanges);
    TextTreeNode addNode = new TextTreeNode("Add Node (" + addNodeChanges.size() + ")");
    for (AddNodeChange change : addNodeChanges) {
      addNode.add(new ChangeNode(change));
    }
    changes.add(addNode);

    List<AddRootChange> addRootChanges = CollectionUtil.filter(AddRootChange.class, myChanges);
    TextTreeNode addRoot = new TextTreeNode("Add Root (" + addRootChanges.size() + ")");
    for (AddRootChange change : addRootChanges) {
      addRoot.add(new ChangeNode(change));
    }
    changes.add(addRoot);

    List<DeleteNodeChange> deleteNodeChanges = CollectionUtil.filter(DeleteNodeChange.class, myChanges);
    TextTreeNode deleteNode = new TextTreeNode("Delete Node (" + deleteNodeChanges.size() + ")");
    for (DeleteNodeChange change : deleteNodeChanges) {
      deleteNode.add(new ChangeNode(change));
    }
    changes.add(deleteNode);

    List<MoveNodeChange> moveNodeChanges = CollectionUtil.filter(MoveNodeChange.class, myChanges);
    TextTreeNode moveNode = new TextTreeNode("Move Node (" + moveNodeChanges.size() + ")");
    for (MoveNodeChange change : moveNodeChanges) {
      moveNode.add(new ChangeNode(change));
    }
    changes.add(moveNode);

    List<SetNodeChange> setNodeChanges = CollectionUtil.filter(SetNodeChange.class, myChanges);
    TextTreeNode setNode = new TextTreeNode("Set Node (" + setNodeChanges.size() + ")");
    for (SetNodeChange change : setNodeChanges) {
      setNode.add(new ChangeNode(change));
    }
    changes.add(setNode);

    List<SetPropertyChange> setPropertyChanges = CollectionUtil.filter(SetPropertyChange.class, myChanges);
    TextTreeNode setProperty = new TextTreeNode("Set Property (" + setPropertyChanges.size() + ")");
    for (SetPropertyChange change : setPropertyChanges) {
      setProperty.add(new ChangeNode(change));
    }
    changes.add(setProperty);

    List<SetReferenceChange> setReferenceChanges = CollectionUtil.filter(SetReferenceChange.class, myChanges);
    TextTreeNode setReference = new TextTreeNode("Set Reference (" + setReferenceChanges.size() + ")");
    for (SetReferenceChange change : setReferenceChanges) {
      setReference.add(new ChangeNode(change));
    }
    changes.add(setReference);

    return changes;
  }

  private void expandNode(SNodeId affectedNode) {
    SNode node = myNewModel.getNodeById(affectedNode);
    if (node != null) {
      TreeNode tn = myModelTree.findNodeWith(node);

      myModelTree.selectNode(tn);
    }
  }

  private class MySModelTreeNode extends SModelTreeNode {
    private SModel myModel;

    public MySModelTreeNode(SModel model, String label, IOperationContext operationContext) {
      super(null, label, operationContext);
      myModel = model;
      updatePresentation();
    }

    protected void updatePresentation() {
      if (myModel == null) {
        return;
      }
      super.updatePresentation();
    }                                                            

    public SNodeTreeNode createSNodeTreeNode(SNode node, String role, IOperationContext operationContext, Condition<SNode> condition) {
      return new MySNodeTreeNode(node, role, operationContext);      
    }


    public SModel getSModel() {
      return myModel;
    }

    public void doubleClick() {      
    }

    public SModelDescriptor getSModelDescriptor() {
      return null;
    }

    public ActionGroup getActionGroup() {
      return null;
    }
  }

  private class MySNodeTreeNode extends SNodeTreeNode {
    public MySNodeTreeNode(SNode node, String role, IOperationContext operationContext) {
      super(node, role, operationContext);
    }

    public void doUpdatePresentation() {
      super.doUpdatePresentation();
      SNodeId id = getSNode().getSNodeId();
      if (myAddedNodes.contains(id)) {
        setColor(new Color(0, 120, 0));
      } else if (myChangedNodes.contains(id)) {
        setColor(new Color(0, 0, 120));
      } else {
        setColor(Color.BLACK);
      }

      setText(getText() + " " + getSNode().getId());
    }

    public ActionGroup getActionGroup() {
      return null; 
    }

    public void doubleClick() {
    }
  }

  private class ChangeNode extends MPSTreeNode {
    private Change myChange;

    public ChangeNode(Change change) {
      super(change, null);
      myChange = change;

      setNodeIdentifier(myChange.toString());
    }

    public void doubleClick() {
      SNodeId affectedNode = myChange.getAffectedNodeId();
      expandNode(affectedNode);
    }

    public boolean isLeaf() {
      return true;
    }
  }
}
