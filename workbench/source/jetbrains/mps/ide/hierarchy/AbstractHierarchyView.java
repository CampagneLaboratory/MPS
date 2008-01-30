package jetbrains.mps.ide.hierarchy;

import jetbrains.mps.ide.toolsPane.DefaultTool;
import jetbrains.mps.ide.*;
import jetbrains.mps.ide.GoToNodeWindow.GoToNodeComponent;
import jetbrains.mps.smodel.*;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.project.MPSProject;

import javax.swing.*;
import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import java.util.Set;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 05.06.2007
 * Time: 15:40:25
 * To change this template use File | Settings | File Templates.
 */
public abstract class AbstractHierarchyView<T extends INodeAdapter> extends DefaultTool {

  protected AbstractHierarchyTree<T> myHierarchyTree;
  protected HierarchyTreeNode<T> myTreeNode;
  protected JPanel myComponent = new JPanel(new BorderLayout());
  protected JPanel myButtonsPanel = new JPanel(new GridLayout(1,3));
  protected ButtonGroup myButtonGroup = new ButtonGroup();
  protected JRadioButton myChildrenHierarchyButton;
  protected JRadioButton myParentsHierarchyButton;
  protected JCheckBox myOnlyInOneModelCheckBox;
  protected IOperationContext myContext;
  protected IDEProjectFrame myIde;
  public JScrollPane myScrollPane;

  public AbstractHierarchyView(IDEProjectFrame ide) {
    myIde = ide;
    init();
  }

  protected abstract AbstractHierarchyTree<T> createHierarchyTree(boolean isParentHierarchy);

  protected void init() {
    myHierarchyTree = createHierarchyTree(false);
    myHierarchyTree.setRootVisible(true);

    initButtons();
    JPanel panel = new JPanel(new BorderLayout());
    panel.add(myButtonsPanel, BorderLayout.WEST);
    myComponent.add(panel, BorderLayout.NORTH);
    myScrollPane = new JScrollPane(myHierarchyTree);
    myComponent.add(myScrollPane, BorderLayout.CENTER);
    showConceptInHierarchy(null, null);
  }

  protected void initButtons() {
    myChildrenHierarchyButton = new JRadioButton(new AbstractAction("Children Hierarchy") {
      public void actionPerformed(ActionEvent e) {
        myHierarchyTree.setParentHierarchy(false);
        myHierarchyTree.rebuildNow();
      }
    });

    myParentsHierarchyButton = new JRadioButton(new AbstractAction("Parent Hierarchy") {
      public void actionPerformed(ActionEvent e) {
        myHierarchyTree.setParentHierarchy(true);
        myHierarchyTree.rebuildNow();
      }
    });

    myOnlyInOneModelCheckBox = new JCheckBox(new AbstractAction("Only This Model") {
      public void actionPerformed(ActionEvent e) {
        myHierarchyTree.setIsOnlyInOneModel(myOnlyInOneModelCheckBox.isSelected());
      }
    });

    myButtonGroup.add(myChildrenHierarchyButton);
    myButtonGroup.add(myParentsHierarchyButton);
    myChildrenHierarchyButton.setSelected(true);
    myButtonsPanel.add(myChildrenHierarchyButton);
    myButtonsPanel.add(myParentsHierarchyButton);
    myButtonsPanel.add(myOnlyInOneModelCheckBox);
  }


  protected JPopupMenu showHierarchyForFoundConceptPopupMenu(final Class<T> aClass) {
    JPopupMenu result = new JPopupMenu();
    result.add(new AbstractActionWithEmptyIcon("Show Hierarchy For Concept") {
      public void actionPerformed(ActionEvent e) {
        java.util.List<SNode> nodes = new ArrayList<SNode>();
        for (SModelDescriptor modelDescriptor : myContext.getScope().getModelDescriptors()) {
          if (modelDescriptor.getStereotype().equals(SModelStereotype.JAVA_STUB)) continue;
          for (INodeAdapter node : modelDescriptor.getSModel().getRootsAdapters()) {
            if (aClass.isInstance(node)) nodes.add(node.getNode());
          }
        }

        new ChooseItemWindow(myIde.getMainFrame(), nodes.toArray(new SNode[0]), new GoToNodeComponent(myIde) {
          public void doChoose(final SNode node) {
            MPSProject project = myIde.getProject();
            if (project != null) {
              final IOperationContext operationContext = project.createOperationContext();
              showConceptInHierarchy((T) node.getAdapter(), operationContext);
            }
          }
        });
      }
    }).setBorder(null);
    return result;
  }

  public void showConceptInHierarchy(T node, IOperationContext _context) {
    IOperationContext context = _context == null ? null : _context.getProject().createOperationContext();
    myHierarchyTree.setOperationContext(context);
    myContext = context;
    myHierarchyTree.myHierarchyNode = node;
    SwingUtilities.invokeLater(new Runnable() {
      public void run() {
        myHierarchyTree.rebuildNow();
        if (myTreeNode != null) myHierarchyTree.selectNode(myTreeNode);
      }
    });
  }

  public JComponent getComponent() {
    return myComponent;
  }
}
