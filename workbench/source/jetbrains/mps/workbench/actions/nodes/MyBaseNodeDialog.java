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
package jetbrains.mps.workbench.actions.nodes;

import jetbrains.mps.ide.dialogs.BaseNodeDialog;
import jetbrains.mps.ide.dialogs.DialogDimensionsSettings.DialogDimensions;
import jetbrains.mps.lang.typesystem.plugin.GoToTypeErrorRuleUtil;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.smodel.*;
import jetbrains.mps.typesystem.uiActions.SupertypesViewTool;
import jetbrains.mps.util.JSplitPaneWithoutBorders;

import javax.swing.AbstractAction;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JSplitPane;
import java.awt.HeadlessException;
import java.awt.event.ActionEvent;

import com.intellij.openapi.util.Computable;

public class
  MyBaseNodeDialog extends BaseNodeDialog {
  private final SNode myType;
  private SModel myModel;
  private final IErrorReporter myError;
  private boolean myWasRegistered = true;
  private JSplitPane myMainComponent;

  public MyBaseNodeDialog(IOperationContext operationContext, SNode node, SNode type, IErrorReporter error) throws HeadlessException {
    super(getTitle(node), operationContext);

    SupertypesViewTool supertypesView = operationContext.getProject().getComponent(SupertypesViewTool.class);

    myMainComponent = new JSplitPaneWithoutBorders(JSplitPane.HORIZONTAL_SPLIT, getSuperMainComponent(), supertypesView.getComponent());
    myMainComponent.setDividerSize(6);
    myMainComponent.setResizeWeight(0.8);

    myType = type;
    final BaseAdapter[] adapter = new BaseAdapter[1];
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        myModel = myType.getModel();
        adapter[0] = myType.getAdapter();
      }
    });
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        if (!myType.isRegistered()) {
          boolean wasLoading = myModel.isLoading();
          try {
            myModel.setLoading(true);
            myWasRegistered = false;
            myModel.addRoot(myType.getTopmostAncestor());
          } finally {
            myModel.setLoading(wasLoading);
          }
        }
      }
    });
    myError = error;
    supertypesView.showItemInHierarchy(adapter[0], operationContext);
  }

  private static String getTitle(final SNode node) {
    return ModelAccess.instance().runWriteActionInCommand(new Computable<String>() {
      public String compute() {
        return "Type For Node " + node;
      }
    });
  }

  protected JComponent getMainComponent() {
    return myMainComponent;
  }

  private JComponent getSuperMainComponent() {
    return super.getMainComponent();
  }

  protected JButton[] createButtons() {
    JButton button = new JButton(new AbstractAction("OK") {
      public void actionPerformed(ActionEvent e) {
        MyBaseNodeDialog.this.dispose();
      }
    });
    if (myError != null) {
      JButton errorButton = new JButton(new AbstractAction("Go To Rule Which Caused Error") {
        public void actionPerformed(ActionEvent e) {
          GoToTypeErrorRuleUtil.goToTypeErrorRule(getOperationContext(), myError);
        }
      });
      return new JButton[]{button, errorButton};
    }
    return new JButton[]{button};
  }

  protected boolean saveChanges() {
    return true;
  }

  protected SNode getNode() {
    return myType;
  }

  public DialogDimensions getDefaultDimensionSettings() {
    return new DialogDimensions(200, 200, 500, 400);
  }

  public void showDialog() {
    if (myError != null) {
      String s = ModelAccess.instance().runReadAction(new Computable<String>() {
        public String compute() {
          return myError.reportError();
        }
      });
      setErrorText("Type error! Message: " + s);
    }
    super.showDialog();
  }

  public void dispose() {
    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        if (!myWasRegistered) {
          boolean wasLoading = myModel.isLoading();
          try {
            myModel.setLoading(true);
            myModel.removeRoot(myType.getTopmostAncestor());
            myWasRegistered = true;
          } finally {
            myModel.setLoading(wasLoading);
          }
        }
        callSuperDispose();
      }
    });
  }

  private void callSuperDispose() {
    super.dispose();
  }
}
