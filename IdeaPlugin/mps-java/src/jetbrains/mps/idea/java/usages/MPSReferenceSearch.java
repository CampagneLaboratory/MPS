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

package jetbrains.mps.idea.java.usages;

import com.intellij.facet.FacetManager;
import com.intellij.openapi.application.QueryExecutorBase;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleManager;
import com.intellij.openapi.project.DumbService;
import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiClass;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiField;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiJavaFile;
import com.intellij.psi.PsiManager;
import com.intellij.psi.PsiMethod;
import com.intellij.psi.PsiReference;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.psi.search.searches.ReferencesSearch;
import com.intellij.psi.search.searches.ReferencesSearch.SearchParameters;
import com.intellij.util.Processor;
import jetbrains.mps.baseLanguage.javastub.ASMNodeId;
import jetbrains.mps.findUsages.FindUsagesManager;
import jetbrains.mps.findUsages.SearchType;
import jetbrains.mps.idea.core.facet.MPSFacet;
import jetbrains.mps.idea.core.facet.MPSFacetType;
import jetbrains.mps.idea.core.psi.impl.MPSPsiNode;
import jetbrains.mps.idea.core.psi.impl.MPSPsiProvider;
import jetbrains.mps.idea.core.psi.impl.MPSPsiRef;
import jetbrains.mps.idea.core.refactoring.NodePtr;
import jetbrains.mps.idea.core.usages.IdeaSearchScope;
import jetbrains.mps.idea.java.psiStubs.JavaForeignIdBuilder;
import jetbrains.mps.persistence.java.library.JavaClassStubModelDescriptor;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.FindUsagesFacade;
import org.jetbrains.mps.openapi.util.Consumer;

import java.util.HashSet;
import java.util.Set;

/**
 * danilla 2/13/13
 */

// NOTE: It should be invoked by Idea only for classes and fields
// For methods MethodReferenceSearch is used.
// Local variables shouldn't bother us since we can't reference java code's local vars
public class MPSReferenceSearch extends QueryExecutorBase<PsiReference, ReferencesSearch.SearchParameters> {
  @Override
  public void processQuery(@NotNull SearchParameters queryParameters, final @NotNull Processor<PsiReference> consumer) {
    if (!(queryParameters.getEffectiveSearchScope() instanceof GlobalSearchScope)) {
      return;
    }

    final GlobalSearchScope scope = (GlobalSearchScope) queryParameters.getEffectiveSearchScope();

    final PsiElement psiTarget = queryParameters.getElementToSearch();
    final Project project = psiTarget.getProject();
    final MPSPsiProvider psiProvider = MPSPsiProvider.getInstance(project);

    if (DumbService.getInstance(project).isDumb()) {
      return;
    }

    ModelAccess.instance().runReadAction(new Runnable() {

      @Override
      public void run() {

        // if MPSReferenceSearch is moved to mps-core, it will be MPS2PsiMapperUtil.getNodeId
        final SNode targetNode = getNodeForElement(psiTarget);
        if (targetNode == null) {
          // it can't be referenced from MPS
          return;
        }

        Set<SNode> targetNodes = new HashSet<SNode>(1);
        targetNodes.add(targetNode);

        Set<SReference> references = FindUsagesFacade.getInstance().findUsages(new IdeaSearchScope(scope), targetNodes, null);

        for (SReference sReference : references) {
          SNode source = sReference.getSourceNode();
          MPSPsiNode psiNode = (MPSPsiNode) psiProvider.getPsi(source);
          // the source could have come from the psi stub itself
          if (psiNode == null) return;
          String refRole = sReference.getRole();
          MPSPsiRef[] refs = psiNode.getReferences(refRole);
//          // 0 or 1
//          MPSPsiRef ref = refs.length > 0 ? refs[0] : null;
//          if (ref != null) {
//            consumer.process(ref.getReference());
//          }

          for (MPSPsiRef r : refs) {
            if (targetNode.getNodeId().equals(r.getNodeId())) {
              // it's our reference: giving it out to find usages
              consumer.process(r.getReference());
            }
          }
        }

      }

    });
  }

  // Maybe will go to MPS2PsiMapper
  @Nullable
  public static SNode getNodeForElement(PsiElement element) {
    // baseLanguage specific check
    if (!(element instanceof PsiClass || element instanceof PsiMethod || element instanceof PsiField)) {
      return null;
    }

    PsiFile psiFile = element.getContainingFile();
    if (!(psiFile instanceof PsiJavaFile)) {
      return null;
    }

    if (PsiManager.getInstance(element.getProject()).isInProject(element)) {
      // It must be sources, try psi stubs
      // There might be psi stubs for this element, but there also might not (e.g. if it's inside a module
      // with no MPS facet)

      NodePtr nodePtr = JavaForeignIdBuilder.computeNodePtr(element);
      if (nodePtr == null) {
        return null;
      }
      SNode node = nodePtr.toSNodeReference().resolve(MPSModuleRepository.getInstance());

      return node;

    } else {
      // It must be from a library or SDK or something like that
      // Trying to find a suitable node in a class stub model
      SNodeId nodeId = null;
      if (element instanceof PsiClass) {
        nodeId = ASMNodeId.createId(((PsiClass) element).getQualifiedName());

      } else if (element instanceof PsiField) {
        PsiClass clas = ((PsiField) element).getContainingClass();
        String clasFqName = clas.getQualifiedName();
        nodeId = ASMNodeId.createFieldId(clasFqName, ((PsiField) element).getName());

      } else if (element instanceof PsiMethod) {
        // TODO argument types must be handled like they are in ASMNodeId (via asm classes)
      }

      if (nodeId == null) {
        // can't do anything about it
        return null;
      }

      String packageName = ((PsiJavaFile) psiFile).getPackageName();
      // looks like this works without stereotype
      for (SModel model : SModelRepository.getInstance().getModelDescriptorsByModelName(packageName)) {
        if (!(model instanceof JavaClassStubModelDescriptor)) continue;
        SNode node = model.getNode(nodeId);
        if (node == null) continue;
        return node;
      }
    }

    return null;
  }
}
