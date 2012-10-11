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
package jetbrains.mps.smodel.constraints;

import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.project.IModule;
import jetbrains.mps.scope.*;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.constraints.ReferenceDescriptor.ErrorReferenceDescriptor;
import jetbrains.mps.smodel.constraints.ReferenceDescriptor.OkReferenceDescriptor;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.presentation.ReferenceConceptUtil;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import static jetbrains.mps.smodel.constraints.ModelConstraintsUtils.getModule;
import static jetbrains.mps.smodel.constraints.ModelConstraintsUtils.getModuleScope;
import static jetbrains.mps.smodel.constraints.ModelConstraintsUtils.getOperationContext;

/**
 * Api for model constraints
 * All methods require read action
 * If you don't need breaking node set checkingNodeContext parameter to null
 *
 * If you need Scope use 1) getScope(SReference) or 2) getReferenceDescriptor(...).getScope()
 * If you need reference presentation use getReferenceDescriptor(...).getText(...)
 *
 * Possible parameters for getReferenceDescriptor method:
 *  getReferenceDescriptor(reference) gets ref descriptor for existing reference
 *  getReferenceDescriptor(node, role) gets ref descriptor for reference being created at the location, role (cannot be null) should be "reference" link
 *  getReferenceDescriptor(node, role, index, smartConcept) gets ref descriptor for smartReference being created in "aggregation" role
 *
*/
public class ModelConstraints {
  // todo: make ModelConstraints project component? Concept and Language registry too?

  // canBe* section
  public static boolean canBeAncestor(@NotNull SNode node, @Nullable SNode childNode, @NotNull SNode childConcept, @Nullable CheckingNodeContext checkingNodeContext) {
    ModelAccess.assertLegalRead();

    SNode currentNode = node;

    ConceptRegistry registry = ConceptRegistry.getInstance();
    IOperationContext context = getOperationContext(getModule(node));

    while (currentNode != null) {
      ConstraintsDescriptor descriptor = registry.getConstraintsDescriptor(currentNode.getConcept().getId());

      if (!descriptor.canBeAncestor(currentNode, childNode, childConcept, context, checkingNodeContext)) {
        return false;
      }

      currentNode = currentNode.getParent();
    }

    return true;
  }

  public static boolean canBeParent(@NotNull SNode parentNode, @NotNull SNode childConcept, @NotNull SNode link, @Nullable SNode childNode, @Nullable CheckingNodeContext checkingNodeContext) {
    ModelAccess.assertLegalRead();

    ConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(parentNode.getConcept().getId());
    return descriptor.canBeParent(parentNode, childNode, childConcept, link, getOperationContext(getModule(parentNode)), checkingNodeContext);
  }

  public static boolean canBeChild(String fqName, SNode parentNode, SNode link, @Nullable SNode childNode, @Nullable CheckingNodeContext checkingNodeContext) {
    ModelAccess.assertLegalRead();

    IModule module = getModule(parentNode);
    ConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(fqName);
    return descriptor.canBeChild(childNode, parentNode, link, SModelUtil.findConceptDeclaration(fqName, getModuleScope(module)), getOperationContext(module), checkingNodeContext);
  }

  public static boolean canBeRoot(String conceptFqName, SModel model, @Nullable CheckingNodeContext checkingNodeContext) {
    ModelAccess.assertLegalRead();

    // todo: use concept descriptor here?
    SNode concept = SModelUtil.findConceptDeclaration(conceptFqName, GlobalScope.getInstance());
    if (!SNodeUtil.isInstanceOfConceptDeclaration(concept) && SNodeUtil.getConceptDeclaration_IsRootable(concept)) {
      if (checkingNodeContext != null) {
        checkingNodeContext.setBreakingNode(new SNodePointer(concept));
      }
      return false;
    }

    ConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(conceptFqName);
    return descriptor.canBeRoot(model, getOperationContext(getModule(model)), checkingNodeContext);
  }

  // scopes part
  @NotNull
  public static Scope getScope(@NotNull SReference reference) {
    return getReferenceDescriptor(reference).getScope();
  }

  @NotNull
  public static ReferenceDescriptor getReferenceDescriptor(@NotNull SReference reference) {
    ModelAccess.assertLegalRead();
    return getReferenceDescriptorForReferenceNode(reference, reference.getSourceNode(), reference.getRole());
  }

  @NotNull
  public static ReferenceDescriptor getReferenceDescriptor(@NotNull SNode referenceNode, @NotNull String role) {
    // TODO: this method first argument before is enclosingNode, it's wrong - it's referenceNode. check usages of method
    ModelAccess.assertLegalRead();
    return getReferenceDescriptorForReferenceNode(null, referenceNode, role);
  }

  @NotNull
  private static ReferenceDescriptor getReferenceDescriptorForReferenceNode(@Nullable SReference reference, @NotNull SNode referenceNode, @NotNull String role) {
    SNode scopeReference = referenceNode.getLinkDeclaration(role);
    if (scopeReference == null) {
      return new ErrorReferenceDescriptor("can't find link for role '" + role + "' in '" + referenceNode.getConcept().getId() + "'");
    }
    SNode concept = referenceNode.getConceptDeclarationNode();

    return new OkReferenceDescriptor(reference, concept, // reference, sourceNodeConcept
      referenceNode.getParent(), referenceNode, // enclosingNode, referenceNode
      role, SModelUtil.getGenuineLinkRole(scopeReference), // contextRole, genuineRole
      0, // index
      SModelUtil.getLinkDeclarationTarget(scopeReference), referenceNode.getRoleLink()); // linkTarget, containingLinkDeclaration
  }

  @NotNull
  public static ReferenceDescriptor getSmartReferenceDescriptor(@NotNull SNode enclosingNode, @Nullable String role, int index, @NotNull SNode smartConcept) {
    ModelAccess.assertLegalRead();

    final SNode smartReference = ReferenceConceptUtil.getCharacteristicReference(smartConcept);
    if (smartReference == null) {
      return new ErrorReferenceDescriptor("smartConcept has no characteristic reference: " + smartConcept.getName());
    }
    SNode linkDeclaration = role != null ? enclosingNode.getLinkDeclaration(role) : null;
    if (linkDeclaration != null && SNodeUtil.getLinkDeclaration_IsReference(linkDeclaration)) {
      return new ErrorReferenceDescriptor("for reference role smartConcept should be null");
    }

    return new OkReferenceDescriptor(null, smartConcept, // reference, sourceNodeConcept
      enclosingNode, null, // enclosingNode, referenceNode
      role, SModelUtil.getGenuineLinkRole(smartReference), // contextRole, genuineRole
      index, // index
      SModelUtil.getLinkDeclarationTarget(smartReference), linkDeclaration); // linkTarget, containingLinkDeclaration
  }

  // other things
  public static String getDefaultConcreteConceptFqName(String fqName) {
    return ConceptRegistry.getInstance().getConstraintsDescriptor(fqName).getDefaultConcreteConceptFqName();
  }
}
