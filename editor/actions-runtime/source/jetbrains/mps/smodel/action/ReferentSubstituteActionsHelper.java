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
package jetbrains.mps.smodel.action;

import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.scope.ErrorScope;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.constraints.IReferencePresentation;
import jetbrains.mps.smodel.constraints.ModelConstraintsUtil;
import jetbrains.mps.smodel.constraints.ModelConstraintsUtil.ReferenceDescriptor;
import jetbrains.mps.util.NameUtil;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/*package*/ class ReferentSubstituteActionsHelper {
  private static final Logger LOG = LogManager.getLogger(ReferentSubstituteActionsHelper.class);

  public static List<SubstituteAction> createActions(SNode referenceNode, SNode currentReferent, SNode linkDeclaration, IOperationContext context) {
    // proceed with custom builders
    SNode referenceNodeConcept = ((jetbrains.mps.smodel.SNode) referenceNode).getConceptDeclarationNode();
    Language primaryLanguage = SModelUtil.getDeclaringLanguage(referenceNodeConcept);
    if (primaryLanguage == null) {
      LOG.error("Couldn't build actions : couldn't get declaring language for concept " + SNodeUtil.getDebugText(referenceNodeConcept));
      return Collections.emptyList();
    }

    // search scope
    ReferenceDescriptor refDescriptor = ModelConstraintsUtil.getReferenceDescriptor(referenceNode, SModelUtil.getLinkDeclarationRole(linkDeclaration), 0);
    Scope searchScope = refDescriptor.getScope();
    if (searchScope instanceof ErrorScope) {
      LOG.error("Couldn't create referent search scope : " + ((ErrorScope) searchScope).getMessage());
      return Collections.emptyList();
    }

    IReferencePresentation presentation = refDescriptor.getReferencePresentation();
    return createActions(referenceNode, currentReferent, linkDeclaration, searchScope, presentation);
  }

  private static List<SubstituteAction> createActions(
      SNode referenceNode, SNode currentReferent, SNode linkDeclaration,
      Scope searchScope, IReferencePresentation presentation) {

    final SNode referentConcept = SModelUtil.getLinkDeclarationTarget(linkDeclaration);
    if (referentConcept == null) {
      return Collections.emptyList();
    }
    String referentConceptFqName = NameUtil.nodeFQName(referentConcept);
    Iterable<SNode> nodes = searchScope.getAvailableElements(null);
    List<SubstituteAction> actions = new ArrayList<SubstituteAction>();
    for (SNode node : nodes) {
      if (node == null || !node.getConcept().isSubConceptOf(SConceptRepository.getInstance().getConcept(referentConceptFqName)))
        continue;
      actions.add(new DefaultReferentNodeSubstituteAction(node, referenceNode, currentReferent, linkDeclaration, presentation));
    }
    return actions;
  }
}
