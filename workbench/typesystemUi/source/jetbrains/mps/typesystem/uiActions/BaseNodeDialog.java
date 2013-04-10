/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.typesystem.uiActions;

import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.ui.Splitter;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.nodeEditor.UIEditorComponent;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.mps.openapi.model.SNode;

import javax.swing.JComponent;

public abstract class BaseNodeDialog extends DialogWrapper {

  private static final Logger LOG = LogManager.getLogger(BaseNodeDialog.class);

  private IOperationContext myOperationContext;
  private UIEditorComponent myEditorComponent;
  private Splitter mySplitter;
  private boolean myDisposed = false;

  protected BaseNodeDialog(String text, IOperationContext operationContext) {
    super(true);
    setTitle(text);
    myOperationContext = operationContext;

    InspectorEditorComponent inspector = new InspectorEditorComponent();
    inspector.setNoVirtualFile(true);
    myEditorComponent = new UIEditorComponent(getOperationContext(), inspector);

    mySplitter = new Splitter(true, 0.6f);
    mySplitter.setFirstComponent(myEditorComponent.getExternalComponent());
    mySplitter.setSecondComponent(inspector.getExternalComponent());
  }

  protected abstract SNode getNode();

  protected IOperationContext getOperationContext() {
    return myOperationContext;
  }

  protected JComponent getMainComponent() {
    return mySplitter;
  }

  @Override
  public void show() {
    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {
        myEditorComponent.editNode(getNode(), myEditorComponent.getOperationContext());
      }
    });
    super.show();
  }

  @Override
  protected void dispose() {
    if (myDisposed) {
      return;
    }
    myDisposed = true;
    myEditorComponent.dispose();
    super.dispose();
  }

  @Override
  protected String getDimensionServiceKey() {
    return this.getClass().getCanonicalName();
  }
}
