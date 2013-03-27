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

package jetbrains.mps.idea.core.psi;

import com.intellij.openapi.project.Project;
import com.intellij.psi.PsiElement;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * danilla 2/25/13
 */

public class MPS2PsiMapperUtil {

  @Nullable
  public static PsiElement getPsiElement(SNode node, Project project) {
    for (MPS2PsiMapper finder : MPS2PsiMapper.EP_NAME.getExtensions()) {
      if (!finder.canBeMine(node)) continue;
      PsiElement psiElement = finder.getPsiElement(node, project);
      if (psiElement != null) {
        return psiElement;
      }
    }
    return null;
  }

//  @Nullable
//  public static SNode findNodeByPsi(PsiElement element, Project project) {
//    for (MPS2PsiMapper finder : MPS2PsiMapper.EP_NAME.getExtensions()) {
//      SNode node = finder.getMPSNodeForPsi(element, project);
//      if (node != null) {
//        return node;
//      }
//    }
//    return null;
//  }
//
//  @Nullable
//  public static NodePtr getNodePtr(PsiElement element) {
//    SModelReference modelRef = getModelReference(element);
//    SNodeId nodeId = getNodeId(element);
//    if (modelRef == null || nodeId == null) {
//      return null;
//    }
//    return new NodePtr(modelRef, nodeId);
//  }
//
//  @Nullable
//  public static SModelReference getModelReference(PsiElement element) {
//    for (MPS2PsiMapper mapper : MPS2PsiMapper.EP_NAME.getExtensions()) {
//      if (!mapper.canComputeNodeId(element)) continue;
//      SModelReference modelRef = mapper.computeModelReference(element);
//      if (modelRef != null) {
//        return modelRef;
//      }
//    }
//    return null;
//  }
//
//  @Nullable
//  public static SNodeId getNodeId(PsiElement element) {
//    for (MPS2PsiMapper mapper : MPS2PsiMapper.EP_NAME.getExtensions()) {
//      if (!mapper.canComputeNodeId(element)) continue;
//      SNodeId nodeId = mapper.computeNodeId(element);
//      if (nodeId != null) {
//        return nodeId;
//      }
//    }
//    return null;
//  }


}
