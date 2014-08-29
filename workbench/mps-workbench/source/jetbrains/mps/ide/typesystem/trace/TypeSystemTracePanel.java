/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.ide.typesystem.trace;

import javax.swing.JPanel;

import com.intellij.icons.AllIcons;
import com.intellij.icons.AllIcons.Actions;
import com.intellij.openapi.Disposable;
import jetbrains.mps.icons.MPSIcons;
import jetbrains.mps.icons.MPSIcons.Nodes;
import jetbrains.mps.newTypesystem.context.IncrementalTypecheckingContext;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.ide.tools.BaseTool;
import jetbrains.mps.ide.ui.tree.MPSTree;
import java.awt.BorderLayout;
import java.awt.Dimension;
import javax.swing.SwingUtilities;
import javax.swing.JComponent;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.ActionPlaces;
import java.awt.Color;

import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.mps.openapi.model.SNode;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.openapi.ui.Splitter;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.newTypesystem.state.State;
import com.intellij.openapi.util.Disposer;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.ToggleAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import jetbrains.mps.workbench.action.BaseAction;
import java.util.Map;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.smodel.ModelAccess;

public class TypeSystemTracePanel extends JPanel implements Disposable {
  private TypeSystemTraceTree myTraceTree;
  private TypeSystemStateTree myStateTree;
  private JPanel myButtons;
  private EditorComponent myEditorComponent;
  private BaseTool myTool;
  private MPSTree myDetailsTree;
  private TypecheckingContextTracker myContextTracker;

  public TypeSystemTracePanel(BaseTool tool) {
    this.setLayout(new BorderLayout());
    myButtons = new JPanel(new BorderLayout());
    this.setMinimumSize(new Dimension(700, 700));
    SwingUtilities.invokeLater(new Runnable() {
      @Override
    public void run() {
        JComponent buttonsPanel = ActionManager.getInstance().createActionToolbar(ActionPlaces.TYPE_HIERARCHY_VIEW_TOOLBAR, createButtonsGroup(), true).getComponent();
        myButtons.add(buttonsPanel, BorderLayout.WEST);
      }
    });
    myTool = tool;
  }

  @Override
  public Color getBackground() {
    return Color.WHITE;
  }

  public void showTraceForNode(final IOperationContext operationContext, SNode node, EditorComponent editorComponent, boolean rebuild) {
//    if (rebuild) {
//      incrementalTypecheckingContext.checkRootInTraceMode(true);
//    }
    cleanUp();
    myEditorComponent = editorComponent;
    myTraceTree = new TypeSystemTraceTree(operationContext, node, this, editorComponent);
    // TODO: refactor into a separate class 
    this.myDetailsTree = myTraceTree.getDetailsTree();
    myStateTree = new TypeSystemStateTree(operationContext, myTraceTree.getState(), editorComponent);
    JBScrollPane traceScrollPane = new JBScrollPane(myTraceTree);
    traceScrollPane.setPreferredSize(new Dimension(400, 700));
    JBScrollPane detailsScrollPane = new JBScrollPane(myDetailsTree);
    detailsScrollPane.setPreferredSize(new Dimension(400, 200));
    JBScrollPane stateScrollPane = new JBScrollPane(myStateTree);
    stateScrollPane.setPreferredSize(new Dimension(400, 900));

    Splitter leftHSplitPane = new Splitter(true, 0.8f);
    // <node> 
    // <node> 
    leftHSplitPane.setFirstComponent(traceScrollPane);
    leftHSplitPane.setSecondComponent(detailsScrollPane);
    leftHSplitPane.getDivider().setBackground(UIUtil.getPanelBackground());
    leftHSplitPane.getDivider().setOpaque(true);

    Splitter vSplitPane = new Splitter(false, 0.65f);
    // <node> 
    // <node> 
    vSplitPane.setFirstComponent(leftHSplitPane);
    vSplitPane.setSecondComponent(stateScrollPane);
    vSplitPane.getDivider().setBackground(UIUtil.getPanelBackground());
    vSplitPane.getDivider().setOpaque(true);


    this.removeAll();
    this.add(vSplitPane);
    this.add(myButtons, BorderLayout.NORTH);
    this.setVisible(true);
  }

  public void resetState(State state) {
    myStateTree.resetState(state);
  }

  public void updateState(State state) {
    myStateTree.updateState(state);
  }

  @Override
  public void dispose() {
    cleanUp();
  }

  public void cleanUp() {
    if (myTraceTree != null) {
      Disposer.dispose(myTraceTree);
      this.myTraceTree = null;
    }
    if (myStateTree != null) {
      Disposer.dispose(myStateTree);
      this.myStateTree = null;
    }
    if (myDetailsTree != null) {
      Disposer.dispose(myDetailsTree);
      this.myDetailsTree = null;
    }
  }

  protected DefaultActionGroup createButtonsGroup() {
    ToggleAction showApplyRuleAction = new ToggleAction("Show Apply Rule", "Show apply rule operations in trace", Nodes.Rule) {
      private boolean mySelected = TraceSettings.isShowApplyRuleOperations();

      @Override
    public boolean isSelected(AnActionEvent e) {
        return mySelected;
      }

      @Override
    public void setSelected(AnActionEvent e, boolean state) {
        mySelected = state;
        TraceSettings.setShowApplyRuleOperations(state);
        myTraceTree.rebuildNow();
        myTraceTree.expandAll();
      }
    };
    ToggleAction showGenerationModeAction = new ToggleAction("Generation Mode", "Show trace in generation mode", Nodes.Generator) {
      private boolean mySelected = TraceSettings.isGenerationMode();

      @Override
    public boolean isSelected(AnActionEvent e) {
        return mySelected;
      }

      @Override
    public void setSelected(AnActionEvent e, boolean state) {
        mySelected = state;
        TraceSettings.setGenerationMode(state);
        myTraceTree.rebuildNow();
        myTraceTree.expandAll();
      }
    };
    ToggleAction showTypesExpansion = new ToggleAction("Show types expansion", "Show types expansion", AllIcons.Nodes.Folder) {
      private boolean mySelected = TraceSettings.isShowTypesExpansion();

      @Override
    public boolean isSelected(AnActionEvent e) {
        return mySelected;
      }

      @Override
    public void setSelected(AnActionEvent e, boolean state) {
        mySelected = state;
        TraceSettings.setShowTypesExpansion(state);
        myTraceTree.rebuildNow();
        myTraceTree.expandAll();
      }
    };
    ToggleAction showTraceForSelectedNode = new ToggleAction("Trace for Selected Node", "Show trace for selected node", Nodes.Node) {
      private boolean mySelected = TraceSettings.isTraceForSelectedNode();

      @Override
    public boolean isSelected(AnActionEvent e) {
        return mySelected;
      }

      @Override
    public void setSelected(AnActionEvent e, boolean state) {
        mySelected = state;
        TraceSettings.setTraceForSelectedNode(state);
        refresh(false);
      }
    };
    ToggleAction showBlockDependencies = new ToggleAction("Show block dependencies", "Show block dependencies in trace", MPSIcons.General.Block) {
      private boolean mySelected = TraceSettings.isShowBlockDependencies();

      @Override
    public boolean isSelected(AnActionEvent e) {
        return mySelected;
      }

      @Override
    public void setSelected(AnActionEvent e, boolean state) {
        mySelected = state;
        TraceSettings.setShowBlockDependencies(state);
        myTraceTree.rebuildNow();
        myTraceTree.expandAll();
      }
    };

    BaseAction refreshAction = new BaseAction("Refresh", "Refresh", Actions.Refresh) {
      @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
        refresh(true);
      }
    };
    BaseAction nextErrorAction = new BaseAction("Next error", "Navigate to next error in trace", AllIcons.General.Error) {
      @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
        myTraceTree.goToNextError();
      }
    };
    BaseAction closeAction = new BaseAction("Close", "Close type system trace tool", Actions.Cancel) {
      @Override
    protected void doExecute(AnActionEvent e, Map<String, Object> _params) {
        myTool.setAvailable(false);
      }
    };

    return ActionUtils.groupFromActions(closeAction, showApplyRuleAction, showGenerationModeAction, showTraceForSelectedNode, showTypesExpansion, showBlockDependencies, refreshAction, nextErrorAction);
  }

  public void refresh(final boolean checkRoot) {
    if (myEditorComponent == null) {
      return;
    }
    final SNode selectedNode = myEditorComponent.getSelectedNode();
    if (selectedNode == null) {
      return;
    }
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
    public void run() {
        showTraceForNode(myEditorComponent.getOperationContext(), selectedNode, myEditorComponent, checkRoot);
      }
    });
    this.validate();
  }
}
