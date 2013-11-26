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
package jetbrains.mps.generator.impl.reference;

import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.impl.TemplateGenerator;
import jetbrains.mps.smodel.SNodeUtil;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SAbstractLink;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Created by: Sergey Dmitriev
 * Date: Jan 25, 2007
 */
public abstract class ReferenceInfo {
  protected final SNode myOutputSourceNode;
  protected final String myReferenceRole;
  protected final SNode myInputNode;

  /**
   * @param referenceRole should be interned
   */
  protected ReferenceInfo(SNode outputSourceNode, String referenceRole, @Nullable SNode inputNode) {
    myOutputSourceNode = outputSourceNode;
    myReferenceRole = referenceRole;
    myInputNode = inputNode;
  }

  public SNode getOutputSourceNode() {
    return myOutputSourceNode;
  }

  @Nullable
  public SModelReference getTargetModelReference(TemplateGenerator generator) {
    // local references only
    return generator.getOutputModel().getReference();
  }

  public String getReferenceRole() {
    return myReferenceRole;
  }

  @Nullable
  public SNode getInputNode() {
    return myInputNode;
  }

  /*
   * test postponed references
   */
  public abstract SNode doResolve_Straightforward(TemplateGenerator generator);

  public abstract SNode doResolve_Tricky(TemplateGenerator generator);

  public abstract String getResolveInfoForDynamicResolve();

  public abstract String getResolveInfoForNothing();

  public boolean isRequired() {
    return true;
  }

  public abstract ProblemDescription[] getErrorDescriptions();

  /**
   * @return true if reference needs dynamic resolution (based on IResolveInfo target)
   */
  public boolean isDynamicResolve(IGeneratorLogger errorLog) {
    String role = getReferenceRole();
    SNode sourceNode = getOutputSourceNode();

    SAbstractLink link = sourceNode.getConcept().getLink(role);
    if (link == null) {
      errorLog.error(sourceNode, String.format("couldn't find link declaration '%s' in concept '%s'", role, sourceNode.getConcept().getQualifiedName()));
      return false;
    }
    if (!link.isReference()) {
      errorLog.error(sourceNode,
          String.format("link '%s' in '%s' is containment link, can't be subject for dynamic resolve", role, sourceNode.getConcept().getQualifiedName()));
    }
    SAbstractConcept resolveInfoConcept = SConceptRepository.getInstance().getConcept(SNodeUtil.concept_IResolveInfo);
    return link.getTargetConcept().isSubConceptOf(resolveInfoConcept);
  }
}
