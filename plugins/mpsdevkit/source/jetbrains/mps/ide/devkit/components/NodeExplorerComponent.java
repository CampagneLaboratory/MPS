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
package jetbrains.mps.ide.devkit.components;

import com.intellij.openapi.actionSystem.ActionGroup;
import com.intellij.openapi.project.Project;
import com.intellij.ui.ScrollPaneFactory;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.ide.ui.tree.MPSTree;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.typesystem.PresentationManager;
import jetbrains.mps.typesystem.inference.TypeChecker;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;

import javax.swing.JComponent;
import javax.swing.JScrollPane;

public class NodeExplorerComponent {
  private final MyTree myTree = new MyTree();
  private SNodeReference myNode;
  private JScrollPane myScrollPane;

  public NodeExplorerComponent() {
    myScrollPane = ScrollPaneFactory.createScrollPane(myTree);
    myTree.setRootVisible(true);
  }

  public JComponent getComponent() {
    return myScrollPane;
  }

  public void showNode(SNode node) {
    myNode = node == null ? null : new jetbrains.mps.smodel.SNodePointer(node);
    myTree.rebuildNow();
  }

  public void clear() {
    myNode = null;
    myTree.rebuildLater();
  }

  private class MyTree extends MPSTree {
    @Override
    protected ActionGroup createPopupActionGroup(MPSTreeNode node) {
      return null;
    }

    @Override
    protected MPSTreeNode rebuild() {
      if (myNode == null || myNode.resolve(MPSModuleRepository.getInstance()) == null) {
        return new TextTreeNode("no node");
      } else {
        TextTreeNode textTreeNode = new TextTreeNode("node");
        SNodeTreeNode sNodeTreeNode = new MySNodeTreeNode(myNode.resolve(MPSModuleRepository.getInstance()));
        textTreeNode.add(sNodeTreeNode);
        return textTreeNode;
      }
    }
  }

  private class MySNodeTreeNode extends SNodeTreeNode {

    public MySNodeTreeNode(SNode node) {
      super(node);
    }

    public MySNodeTreeNode(SNode node, String role) {
      super(node, role);
    }

    @Override
    protected void doUpdatePresentation_internal() {
      super.doUpdatePresentation_internal();
      String string = getText();
      final SNode typeOf = TypeChecker.getInstance().getTypeOf(getSNode());
      if (typeOf != null) {
        String typeInfo = " {" + PresentationManager.toString(typeOf) + "}";
        setText(string + typeInfo);
      }
    }

    @Override
    protected void doInit() {
      this.removeAllChildren();
      if (getSNode() == null) return;

      add(new TextTreeNode("Concept = " + getSNode().getConcept().getQualifiedName()));

      for (SNode childNode : getSNode().getChildren()) {
        add(new MySNodeTreeNode(childNode, childNode.getRoleInParent()));
      }
      add(new MyPropertiesNode(getSNode()));
      add(new MyReferentsNode(getSNode()));
      myInitialized = true;
    }
  }

  private class MyReferentsNode extends TextTreeNode {
    private SNodeReference myNode;
    private boolean myIsInitialized = false;

    public MyReferentsNode(SNode node) {
      super("referents");
      myNode = new jetbrains.mps.smodel.SNodePointer(node);
    }

    @Override
    public boolean isLeaf() {
      return false;
    }

    @Override
    protected void doInit() {
      for (SReference reference : jetbrains.mps.util.SNodeOperations.getReferences(myNode.resolve(MPSModuleRepository.getInstance()))) {
        SNode referent = reference.getTargetNode();
        if (referent != null) {
          add(new MySNodeTreeNode(referent, reference.getRole()));
        }
      }
      myIsInitialized = true;
    }

    @Override
    public boolean isInitialized() {
      return myIsInitialized;
    }
  }

  private class MyPropertiesNode extends TextTreeNode {
    private SNodeReference myNode;
    private boolean myIsInitialized = false;

    public MyPropertiesNode(SNode node) {
      super("properties");
      myNode = new jetbrains.mps.smodel.SNodePointer(node);
    }

    @Override
    public boolean isLeaf() {
      return false;
    }

    @Override
    protected void doInit() {
      SNode node = myNode.resolve(MPSModuleRepository.getInstance());
      for (String name : node.getPropertyNames()) {
        TextTreeNode tn = new TextTreeNode(name + " : " + SNodeAccessUtil.getProperty(node, name));
        tn.setIcon(Icons.DEFAULT_ICON);
        add(tn);
      }
      myIsInitialized = true;
    }

    @Override
    public boolean isInitialized() {
      return myIsInitialized;
    }
  }
}
