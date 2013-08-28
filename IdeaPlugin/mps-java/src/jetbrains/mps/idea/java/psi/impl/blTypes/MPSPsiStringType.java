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
package jetbrains.mps.idea.java.psi.impl.blTypes;

import com.intellij.openapi.project.Project;
import com.intellij.psi.JavaPsiFacade;
import com.intellij.psi.PsiClass;
import com.intellij.psi.PsiClassType;
import com.intellij.psi.PsiManager;
import com.intellij.psi.PsiSubstitutor;
import com.intellij.psi.PsiType;
import com.intellij.psi.impl.source.PsiImmediateClassType;
import com.intellij.psi.search.GlobalSearchScope;
import jetbrains.mps.idea.core.psi.impl.MPSPsiNode;
import jetbrains.mps.idea.java.psi.impl.ComputesPsiType;
import org.jetbrains.mps.openapi.model.SNodeId;

/**
 * danilla 7/10/13
 */

public class MPSPsiStringType extends MPSPsiNode implements ComputesPsiType<PsiClassType> {

  public MPSPsiStringType(SNodeId id, String concept, String containingRole) {
    super(id, concept, containingRole);
  }

  @Override
  public PsiClassType getPsiType() {
    // we don't cache it to avoid possible subtle bugs, when JDK is changed or something
    Project project = getProject();
    return PsiType.getJavaLangString(PsiManager.getInstance(project), GlobalSearchScope.allScope(project));
  }
}
