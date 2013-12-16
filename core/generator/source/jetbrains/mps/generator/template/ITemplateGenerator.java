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
package jetbrains.mps.generator.template;

import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.IGeneratorLogger;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.smodel.IScope;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.List;

public interface ITemplateGenerator {

  ProgressMonitor getProgressMonitor();

  SModel getInputModel();

  SModel getOutputModel();

  /**
   * @deprecated
   */
  SModel getSourceModel();

  /**
   * @deprecated
   */
  SModel getTargetModel();

  boolean areMappingsAvailable();

  void registerMappingLabel(SNode inputNode, String mappingName, SNode outputNode);

  SNode findOutputNodeByInputNodeAndMappingName(SNode inputNode, String mappingName);

  List<SNode> findAllOutputNodesByInputNodeAndMappingName(SNode inputNode, String mappingName);

  SNode findCopiedOutputNodeForInputNode(SNode inputNode);

  GenerationSessionContext getGeneratorSessionContext();

  /**
   * @deprecated This method is no longer used, and needs to be removed
   */
  @Deprecated
  IScope getScope();

  boolean isStrict();

  boolean isDirty(SNode node);

  IGeneratorLogger getLogger();

  void showErrorMessage(SNode inputNode, SNode templateNode, String message);

  // FIXME switch to SNodeReference (templateNode and ruleNode) and move to IGeneratorLogger
  void showErrorMessage(SNode inputNode, SNode templateNode, SNode ruleNode, String message);
}
