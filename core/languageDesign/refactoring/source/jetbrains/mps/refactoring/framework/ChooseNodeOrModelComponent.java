package jetbrains.mps.refactoring.framework;

import jetbrains.mps.ide.ui.MPSTree;
import jetbrains.mps.ide.ui.MPSTreeNode;
import jetbrains.mps.ide.ui.TextTreeNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.smodel.SNodeTreeNode;
import jetbrains.mps.ide.ChooseItemComponent;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Condition;

import javax.swing.*;
import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.awt.*;
import static java.awt.GridBagConstraints.*;
import java.util.*;

public class ChooseNodeOrModelComponent extends JPanel implements IChooseComponent<Object> {
  private String myCaption;
  private String myPropertyName;
  private MyTree myTree = new MyTree();
  private MyChooseItemComponent myChooseItemComponent = new MyChooseItemComponent();
  private String myConceptFQName;
  private IOperationContext myOperationContext;
  private Set<SModelDescriptor> myModels = new HashSet<SModelDescriptor>();
  private SModelDescriptor myModel = null;
  boolean myMayBeModel;
  boolean myMayBeNode;
  boolean myReturnLoadedModels = false;

  private Condition myCondition = Condition.TRUE_CONDITION;

  public ChooseNodeOrModelComponent(IOperationContext operationContext, String conceptFQName, boolean mayBeModel, boolean mayBeNode) {
    myOperationContext = operationContext;
    myMayBeModel = mayBeModel;
    myMayBeNode = mayBeNode;
    myConceptFQName = conceptFQName;
  }

  public void initComponent() {
    setLayout(new GridBagLayout());
    GridBagConstraints constraints = new GridBagConstraints();
    constraints.gridx = 0;
    constraints.gridy = 0;
    constraints.fill = HORIZONTAL;
    constraints.weightx = 1;
    constraints.weighty = 0;
    add(new JLabel(myCaption), constraints);
    constraints.gridy++;
    constraints.fill = BOTH;
    constraints.weighty = 0.5;
    add(myChooseItemComponent, constraints);
    constraints.gridy++;
    constraints.fill = BOTH;
    constraints.weighty = 1;
    add(new JScrollPane(myTree), constraints);

    myTree.setRootVisible(true);
    updateModels(myCondition);
    myTree.rebuildNow();
    myChooseItemComponent.rebuild();
    myTree.expandPath(new TreePath(myTree.getRootNode()));
  }


  public ChooseNodeOrModelComponent(IOperationContext operationContext, String conceptFQName, boolean mayBeModel, boolean mayBeNode, boolean useLoadedModels) {
    this(operationContext, conceptFQName, mayBeModel, mayBeNode);
    myReturnLoadedModels = useLoadedModels;
  }

  public void setCaption(String caption) {
    myCaption = caption;
  }

  public JComponent getComponentToFocus() {
    return myChooseItemComponent.getTextField();
  }

  public void setCondition(Condition<Object> condition) {
    myCondition = condition;
    Condition modelCondition = Condition.TRUE_CONDITION;
    if (myMayBeModel) {
      modelCondition = myCondition;
    }
    updateModels(modelCondition);
    myTree.rebuildNow();
    myChooseItemComponent.rebuild();
  }

  private void updateModels(Condition modelCondition) {
    Set<SModelDescriptor> models = getModelsFrom(myOperationContext, modelCondition);
    myModels = models;
  }

  private Set<SModelDescriptor> getModelsFrom(IOperationContext context, Condition condition) {
    Set<SModelDescriptor> models = new HashSet<SModelDescriptor>(context.getMPSProject().getScope().getModelDescriptors());
    for (SModelDescriptor model : new ArrayList<SModelDescriptor>(models)) {
      if (!model.getStereotype().equals(SModelStereotype.NONE) && !model.getStereotype().equals(SModelStereotype.TEMPLATES)) {
        models.remove(model);
      }
      if (myReturnLoadedModels) {
        if (!condition.met(model.getSModel())) {
          models.remove(model);
        }
      } else {
        if (!condition.met(model)) {
          models.remove(model);
        }
      }
    }
    return models;
  }

  private final class MyTree extends MPSTree {
    {
      setShowsRootHandles(true);
    }

    public boolean isRootVisible() {
      return true;
    }

    protected MPSTreeNode rebuild() {
      MPSTreeNode root;
      if (myModel != null) {
        Condition<SNode> nodeCondition = Condition.FALSE_CONDITION;
        if (myMayBeNode) {
          nodeCondition = myCondition;
        }
        root = new SModelTreeNode(myModel, null, myOperationContext, nodeCondition);
      } else {
        root = new TextTreeNode("no model is selected");
        root.setIcon(Icons.DEFAULT_ICON);
      }

      return root;
    }
  }

  public Object submit() throws InvalidInputValueException {
    if (myTree.getSelectionPath() == null) {
      throw new InvalidInputValueException(myCaption + ": nothing is selected");
    }

    MPSTreeNode node = (MPSTreeNode)  myTree.getSelectionPath().getLastPathComponent();
    if (node instanceof SNodeTreeNode) {
      if (!myMayBeNode) {
        throw new InvalidInputValueException(myCaption + ": selected value should not not be a node");
      }
      SNode sNode = ((SNodeTreeNode)node).getSNode();
      if (myConceptFQName != null && !sNode.isInstanceOfConcept(myConceptFQName)) {
        throw new InvalidInputValueException(myCaption + ": selected node should be an istance of " + myConceptFQName);
      }
      return sNode;
    }
    if (node instanceof SModelTreeNode) {
      if (!myMayBeModel) {
        throw new InvalidInputValueException(myCaption + ": selected value should not not be a model");
      }
      SModelDescriptor modelDescriptor = ((SModelTreeNode)node).getSModelDescriptor();
      if (myReturnLoadedModels) {
        return modelDescriptor.getSModel();
      } else {
        return modelDescriptor;
      }
    }
    throw new InvalidInputValueException(myCaption + ": nothing is selected");
  }

  public String getPropertyName() {
    return myPropertyName;
  }

  public void setPropertyName(String propertyName) {
    myPropertyName = propertyName;
  }

  public void setInitialValue(Object initialValue) {
    if (myReturnLoadedModels && initialValue instanceof SModel) {
      initialValue = ((SModel)initialValue).getModelDescriptor();
    }
    TreeNode treeNode = myTree.findNodeWith(initialValue);
    if (treeNode != null) {
      myTree.selectNode(treeNode);
    }
  }

  public JComponent getMainComponent() {
    return this;
  }

  class MyChooseItemComponent extends ChooseItemComponent<SModelDescriptor> {
    public MyChooseItemComponent() {
      super(null);
      setMinimumSize(new Dimension(400, 100));
      setPreferredSize(new Dimension(400, 100));
    }

    public void askForDispose() {
    }

    public void doChoose(SModelDescriptor sModelDescriptor) {
      myModel = sModelDescriptor;
      myTree.rebuildNow();//selectNode(myTree.findNodeWith(sModelDescriptor));
    }

    public void rebuild() {
      getNames().clear();
      getItemsMap().clear();
      for (SModelDescriptor modelDescriptor : myModels) {
        putItem(modelDescriptor.toString(), modelDescriptor);
      }
      makeNamesConsistent();
    }
  }
}
