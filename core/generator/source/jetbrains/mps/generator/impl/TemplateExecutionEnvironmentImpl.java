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
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.IGenerationTracer;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.impl.AbstractTemplateGenerator.RoleValidationStatus;
import jetbrains.mps.generator.impl.AbstractTemplateGenerator.RoleValidator;
import jetbrains.mps.generator.impl.reference.*;
import jetbrains.mps.generator.runtime.*;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.generator.template.TracingUtil;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.util.InternUtil;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.search.SModelSearchUtil;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/**
 * Evgeny Gryaznov, 11/10/10
 */
public class TemplateExecutionEnvironmentImpl implements TemplateExecutionEnvironment {
  private final TemplateGenerator generator;
  private final ReductionContext reductionContext;

  public TemplateExecutionEnvironmentImpl(@NotNull TemplateGenerator generator, @NotNull ReductionContext reductionContext) {
    this.generator = generator;
    this.reductionContext = reductionContext;
  }

  @Override
  public IOperationContext getOperationContext() {
    return generator.getOperationContext();
  }

  @Override
  public SModel getOutputModel() {
    return generator.getOutputModel();
  }

  @Override
  public SNode createOutputNode(String conceptName) {
    return new jetbrains.mps.smodel.SNode(InternUtil.intern(conceptName));
  }

  @Override
  @NotNull
  public TemplateGenerator getGenerator() {
    return generator;
  }

  @Override
  public IGenerationTracer getTracer() {
    return generator.getGenerationTracer();
  }

  @Override
  public IGeneratorLogger getLogger() {
    return generator.getLogger();
  }

  @Override
  @NotNull
  public ReductionContext getReductionContext() {
    return reductionContext;
  }

  @Override
  public QueryExecutionContext getQueryExecutor() {
    return reductionContext.getQueryExecutor();
  }

  @Override
  public TemplateExecutionEnvironment getEnvironment(SNode inputNode, TemplateReductionRule rule) {
    return new TemplateExecutionEnvironmentImpl(generator, new ReductionContext(reductionContext, inputNode, rule));
  }

  @Override
  public Collection<SNode> copyNodes(Iterable<SNode> inputNodes, SNodeReference templateNode, String templateId, String mappingName, TemplateContext templateContext) throws GenerationCanceledException, GenerationFailureException {
    final Iterator<SNode> it = inputNodes.iterator();
    if (!it.hasNext()) {
      return Collections.emptyList();
    }
    ArrayList<SNode> outputNodes = new ArrayList<SNode>();
    while(it.hasNext()) {
      SNode newInputNode = it.next();
      Collection<SNode> _outputNodes = generator.copySrc(mappingName, templateNode, templateId, newInputNode, reductionContext);
      assert _outputNodes != null; // copySrc contract
      // check node languages : prevent 'input node' query from returning node, which language was not counted when
      // planning the generation steps.
      for (SNode outputNode : _outputNodes) {
        Language outputNodeLang = jetbrains.mps.util.SNodeOperations.getLanguage(outputNode);
        if (!generator.getGeneratorSessionContext().getGenerationPlan().isCountedLanguage(outputNodeLang)) {
          if (!outputNodeLang.getGenerators().isEmpty()) {
            SNode tNode = templateNode.resolve(MPSModuleRepository.getInstance());
            generator.getLogger().error(outputNode, "language of output node is '" + outputNodeLang.getModuleName() + "' - this language did not show up when computing generation steps!",
              GeneratorUtil.describe(tNode, "template"),
              GeneratorUtil.describe(templateContext.getInput(), "input"),
              new ProblemDescription(null, "workaround: add the language '" + outputNodeLang.getModuleName() + "' to list of 'Languages Engaged On Generation' in model '" + generator.getGeneratorSessionContext().getOriginalInputModel().getReference().getModelName() + "'"));
          }
        }
      }
      outputNodes.addAll(_outputNodes);
    }
    return outputNodes;
  }

  @Override
  public SNode insertNode(SNode child, SNodeReference templateNode, TemplateContext templateContext) throws GenerationCanceledException, GenerationFailureException {
    // check node languages : prevent 'mapping func' query from returnning node, which language was not counted when
    // planning the generation steps.
    Language childLang = jetbrains.mps.util.SNodeOperations.getLanguage(child);
    if (!generator.getGeneratorSessionContext().getGenerationPlan().isCountedLanguage(childLang)) {
      if (!childLang.getGenerators().isEmpty()) {
        SNode tNode = templateNode.resolve(MPSModuleRepository.getInstance());
        generator.getLogger().error(child, "language of output node is '" + childLang.getModuleName() + "' - this language did not show up when computing generation steps!",
          GeneratorUtil.describe(tNode, "template"),
          GeneratorUtil.describe(templateContext.getInput(), "input"),
          new ProblemDescription(null, "workaround: add the language '" + childLang.getModuleName() + "' to list of 'Languages Engaged On Generation' in model '" + generator.getGeneratorSessionContext().getOriginalInputModel().getReference().getModelName() + "'"));
      }
    }

    if (child.getModel() != null) {
      // must be "in air"
      child = CopyUtil.copy(child);
    }
    // replace references back to input model
    validateReferences(child, templateContext.getInput());
    return child;
  }

  private void validateReferences(SNode node, final SNode inputNode) {
    for (SReference ref : node.getReferences()) {
      // reference to input model - illegal
      if (generator.getInputModel().getReference().equals(ref.getTargetSModelReference())) {
        // replace
        ReferenceInfo_CopiedInputNode refInfo = new ReferenceInfo_CopiedInputNode(
          ref.getRole(),
          ref.getSourceNode(),
          inputNode,
          ref.getTargetNode());
        PostponedReference postponedReference = new PostponedReference(
          refInfo,
          generator);
        ref.getSourceNode().setReference(ref.getRole(), postponedReference);
      }
    }
    for (SNode child : node.getChildren()) {
      validateReferences(child, inputNode);
    }
  }

  @Override
  public Collection<SNode> trySwitch(SNodeReference switch_, String mappingName, TemplateContext context) throws GenerationException {
    Collection<SNode> collection = generator.tryToReduce(context, switch_, mappingName, reductionContext);
    if (collection != null) {
      return collection;
    }

    // try the default case
    TemplateSwitchMapping current = generator.getSwitch(switch_);
    if (current != null) {
      collection = current.applyDefault(this, switch_, mappingName, context);
      if (collection != null) {
        return collection;
      }
    }

    // no switch-case found for the inputNode - continue with templateNode under the $switch$
    return null;
  }

  @Override
  public Collection<SNode> applyTemplate(@NotNull SNodeReference templateDeclaration, @NotNull SNodeReference templateNode, @NotNull TemplateContext context, Object... arguments) throws GenerationException {
    TemplateModel templateModel = generator.getRuleManager().getTemplateModel(templateDeclaration.getModelReference());
    if (templateModel == null) {
      generator.getLogger().error(templateNode.resolve(MPSModuleRepository.getInstance()), "template model not found: cannot apply template declaration, try to check & regenerate affected generators",
        GeneratorUtil.describeIfExists(context.getInput(), "input"),
        GeneratorUtil.describeIfExists(templateNode.resolve(MPSModuleRepository.getInstance()), "template"),
        GeneratorUtil.describeIfExists(templateDeclaration.resolve(MPSModuleRepository.getInstance()), "template declaration"));
      return Collections.emptyList();
    }

    TemplateDeclaration templateDeclarationInstance = templateModel.loadTemplate(templateDeclaration, arguments);
    if (templateDeclarationInstance == null) {
      generator.getLogger().error(templateNode.resolve(MPSModuleRepository.getInstance()), "declaration not found: cannot apply template declaration, try to check & regenerate affected generators",
        GeneratorUtil.describeIfExists(context.getInput(), "input"),
        GeneratorUtil.describeIfExists(templateNode.resolve(MPSModuleRepository.getInstance()), "template"),
        GeneratorUtil.describeIfExists(templateDeclaration.resolve(MPSModuleRepository.getInstance()), "template declaration"));
      return Collections.emptyList();
    }

    return templateDeclarationInstance.apply(this, context);
  }

  @Override
  public Collection<SNode> weaveTemplate(@NotNull SNodeReference templateDeclaration, @NotNull SNodeReference templateNode, @NotNull TemplateContext context, @NotNull SNode outputContextNode, Object... arguments) throws GenerationException {
    TemplateModel templateModel = generator.getRuleManager().getTemplateModel(templateDeclaration.getModelReference());
    if (templateModel == null) {
      generator.getLogger().error(templateNode.resolve(MPSModuleRepository.getInstance()), "template model not found: cannot apply template declaration, try to check & regenerate affected generators",
        GeneratorUtil.describeIfExists(context.getInput(), "input"),
        GeneratorUtil.describeIfExists(templateNode.resolve(MPSModuleRepository.getInstance()), "template"),
        GeneratorUtil.describeIfExists(templateDeclaration.resolve(MPSModuleRepository.getInstance()), "template declaration"));
      return Collections.emptyList();
    }

    TemplateDeclaration templateDeclarationInstance = templateModel.loadTemplate(templateDeclaration, arguments);
    if (templateDeclarationInstance == null || !(templateDeclarationInstance instanceof TemplateDeclarationWeavingAware)) {
      generator.getLogger().error(templateNode.resolve(MPSModuleRepository.getInstance()), "declaration not found: cannot apply template declaration, try to check & regenerate affected generators",
        GeneratorUtil.describeIfExists(context.getInput(), "input"),
        GeneratorUtil.describeIfExists(templateNode.resolve(MPSModuleRepository.getInstance()), "template"),
        GeneratorUtil.describeIfExists(templateDeclaration.resolve(MPSModuleRepository.getInstance()), "template declaration"));
      return Collections.emptyList();
    }

    return ((TemplateDeclarationWeavingAware) templateDeclarationInstance).weave(this, context, outputContextNode);
  }


  @Override
  public void nodeCopied(TemplateContext context, SNode outputNode, String templateNodeId) {
    GeneratorMappings mappings = generator.getMappings();
    mappings.addOutputNodeByInputAndTemplateNode(context.getInput(), templateNodeId, outputNode);
    for (SNode historyInputNode : context.getInputHistory()) {
      mappings.addOutputNodeByIndirectInputAndTemplateNode(historyInputNode, templateNodeId, outputNode);
    }
    mappings.addOutputNodeByTemplateNode(templateNodeId, outputNode);
  }

  @Override
  public void registerLabel(SNode inputNode, SNode outputNode, String mappingLabel) {
    generator.getMappings().addOutputNodeByInputNodeAndMappingName(inputNode, mappingLabel, outputNode);
  }

  @Override
  public void registerLabel(SNode inputNode, Iterable<SNode> outputNodes, String mappingLabel) {
    for (SNode outputNode : outputNodes) {
      generator.getMappings().addOutputNodeByInputNodeAndMappingName(inputNode, mappingLabel, outputNode);
    }
  }

  @Override
  public void resolveInTemplateLater(@NotNull SNode outputNode, String role, SNodeReference sourceNode, int parentIndex, String resolveInfo, TemplateContext context) {
    ReferenceInfo_TemplateParent refInfo = new ReferenceInfo_TemplateParent(
      outputNode,
      role,
      sourceNode,
      parentIndex,
      resolveInfo,
      context);
    PostponedReference postponedReference = new PostponedReference(
      refInfo,
      generator
    );
    outputNode.setReference(postponedReference.getRole(), postponedReference);
  }

  @Override
  public void resolveInTemplateLater(@NotNull SNode outputNode, String role, SNodeReference sourceNode, String templateNodeId, String resolveInfo, TemplateContext context) {
    ReferenceInfo_Template refInfo = new ReferenceInfo_Template(
      outputNode,
      role,
      sourceNode,
      templateNodeId,
      resolveInfo,
      context);
    PostponedReference postponedReference = new PostponedReference(
      refInfo,
      generator
    );
    outputNode.setReference(postponedReference.getRole(), postponedReference);
  }

  @Override
  public void resolve(ReferenceResolver resolver, SNode outputNode, String role, TemplateContext context) {
    ReferenceInfo_Macro refInfo = new ReferenceInfo_MacroResolver(
      resolver, outputNode,
      role, context,
      reductionContext);
    PostponedReference postponedReference = new PostponedReference(
      refInfo,
      generator
    );
    outputNode.setReference(postponedReference.getRole(), postponedReference);
  }

  /*
  *  returns temporary node
  */
  @Override
  public SNode insertLater(@NotNull NodeMapper mapper, PostProcessor postProcessor, TemplateContext context) {
    SNode childToReplaceLater = SModelUtil_new.instantiateConceptDeclaration(mapper.getConceptFqName(), generator.getOutputModel(), generator.getScope(), false);
    getTracer().pushOutputNodeToReplaceLater(childToReplaceLater);
    generator.getDelayedChanges().addExecuteNodeMapper(mapper, postProcessor, childToReplaceLater, context, getQueryExecutor());
    return childToReplaceLater;
  }

  @Override
  public void postProcess(@NotNull PostProcessor processor, SNode outputNode, TemplateContext context) {
    generator.getDelayedChanges().addExecutePostProcessor(processor, outputNode, context, getQueryExecutor());
  }

  @Override
  public void weaveNode(SNode contextParentNode, String childRole, SNode outputNodeToWeave, SNodeReference templateNode, SNode inputNode) {
    if (outputNodeToWeave == null) {
      return;
    }

    fillOriginalNode(inputNode, outputNodeToWeave);

    // check child
    RoleValidator v = generator.getChildRoleValidator(contextParentNode, childRole);
    RoleValidationStatus status = v.validate(outputNodeToWeave);
    if (status != null) {
      status.reportProblem(false, contextParentNode, "",
        GeneratorUtil.describe(inputNode, "input"),
        GeneratorUtil.describe(templateNode.resolve(MPSModuleRepository.getInstance()), "template"));
    }

    // add
    SNode/*LinkDeclaration*/ childLinkDeclaration = SModelSearchUtil.findLinkDeclaration(((jetbrains.mps.smodel.SNode) contextParentNode).getConceptDeclarationNode(), childRole);
    if (childLinkDeclaration == null) {
      // there should have been warning about that
      contextParentNode.addChild(childRole, outputNodeToWeave);
    } else {
      if (SModelUtil.isMultipleLinkDeclaration(childLinkDeclaration)) {
        contextParentNode.addChild(childRole, outputNodeToWeave);
      } else {
        SNode oldChild = jetbrains.mps.util.SNodeOperations.getChild(contextParentNode, childRole);
        if (oldChild != null) {
          // if singular child then don't add more that 1 child
          contextParentNode.removeChild(oldChild);
        }
        contextParentNode.addChild(childRole, outputNodeToWeave);
      }
    }
  }

  private void fillOriginalNode(SNode inputNode, SNode outputNode) {
    TracingUtil.fillOriginalNode(inputNode, outputNode, inputNode.getModel() == getGenerator().getGeneratorSessionContext().getOriginalInputModel());
  }
}
