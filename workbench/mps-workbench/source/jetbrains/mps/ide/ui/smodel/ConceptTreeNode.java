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
package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.ide.ui.MPSTreeNodeEx;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.mps.openapi.model.SNode;

public class ConceptTreeNode extends MPSTreeNodeEx {
  private SNode myNode;
  private boolean myInitialized;

  @Override
  public boolean isLeaf() {
    return true;
  }

  public ConceptTreeNode(IOperationContext operationContext, SNode node) {
    super(operationContext);
    myNode = node;

    SNode concept = getDeclarationNode();
    if (concept != null) {
      setIcon(IconManager.getIconFor(concept));
      setNodeIdentifier(concept.getName());
    } else {
      setNodeIdentifier(myNode.getConcept().getConceptId());
    }
  }

  @Override
  public SNode getSNode() {
    return myNode;
  }

  public SNode getDeclarationNode() {
    return ((jetbrains.mps.smodel.SNode) myNode).getConceptDeclarationNode();
  }

  @Override
  public boolean isInitialized() {
    return myInitialized;
  }

  @Override
  protected void doInit() {
    super.doInit();
    myInitialized = true;
  }

  @Override
  protected void doUpdate() {
    super.doUpdate();
    myInitialized = false;
  }

  @Override
  public void doubleClick() {
    ModelAccess.instance().runWriteInEDT(new Runnable() {
      @Override
      public void run() {
        SNode concept = getSNode();
        if (concept == null || jetbrains.mps.util.SNodeOperations.isDisposed(concept) || concept.getModel() == null || concept.getModel() == null) {
          return;
        }
        // TODO: use node pointers here
        NavigationSupport.getInstance().openNode(getOperationContext(), concept, true, true);
      }
    });
  }
}
