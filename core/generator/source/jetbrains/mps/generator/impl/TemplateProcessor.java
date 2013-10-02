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
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.GenerationTracerUtil;
import jetbrains.mps.generator.IGenerationTracer;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.impl.AbstractTemplateGenerator.RoleValidationStatus;
import jetbrains.mps.generator.impl.AbstractTemplateGenerator.RoleValidator;
import jetbrains.mps.generator.impl.interpreted.TemplateWeavingRuleInterpreted;
import jetbrains.mps.generator.impl.reference.PostponedReference;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_CopiedInputNode;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_Macro;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_MacroNode;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_Template;
import jetbrains.mps.generator.impl.template.InputQueryUtil;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.generator.template.TracingUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.smodel.CopyUtil;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.NodeReadEventsCaster;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.performance.IPerformanceTracer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Applies template to input node.
 */
public final class TemplateProcessor {
  private final TemplateGenerator myGenerator;
  private final TemplateExecutionEnvironment myEnv;
  private final SModel myOutputModel;
  private final IGenerationTracer myTracer;
  private final Map<String, MacroImpl> macroImplMap = new HashMap<String, MacroImpl>();

  public TemplateProcessor(@NotNull TemplateExecutionEnvironment env) {
    myGenerator = env.getGenerator();
    myEnv = env;
    myOutputModel = myGenerator.getOutputModel();
    myTracer = env.getTracer();
    initMacroMap();
  }

  @NotNull
  public List<SNode> apply(String mappingName, SNode templateNode, @NotNull TemplateContext context)
      throws DismissTopMappingRuleException, TemplateProcessingFailureException, GenerationFailureException, GenerationCanceledException {
    IGeneratorLogger logger = myGenerator.getLogger();
    if (myGenerator.isIncremental()) {
      // turn off tracing
      NodeReadEventsCaster.setNodesReadListener(null);
    }
    try {
      if (myGenerator.getProgressMonitor().isCanceled()) {
        if (myTracer.isTracing() && logger.needsInfo()) {
          logger.info("generation canceled when processing branch:");
          GeneratorUtil.logCurrentGenerationBranch(logger, myTracer, false);
        }
        throw new GenerationCanceledException();
      }

      try {
        return applyTemplate(mappingName, templateNode, context.subContext(mappingName), null);
      } catch (StackOverflowError e) {
        // this is critical
        logger.error("generation thread run out of stack space :(");
        if (myTracer.isTracing()) {
          logger.error("failed branch was:");
          GeneratorUtil.logCurrentGenerationBranch(logger, myTracer, true);
        } else {
          logger.error("try to increase JVM stack size (-Xss option)");
          logger.error("to get more diagnostic generate model with the 'save transient models' option");
        }
        myGenerator.showErrorMessage(context.getInput(), templateNode, "couldn't process template");
        throw new GenerationFailureException(e);
      }
    } finally {
      if (myGenerator.isIncremental()) {
        // restore tracing
        NodeReadEventsCaster.removeNodesReadListener();
      }
    }
  }

  private SNode nextMacro(SNode templateNode, SNode prevMacro) {
    if (prevMacro == null) {
      for (SNode attrNode : templateNode.getChildren(GeneratorUtilEx.link_BaseConcept_attrs)) {
        if (RuleUtil.isNodeMacro(attrNode)) {
          return attrNode;
        }
      }
    } else {
      SNode attrNode = prevMacro;
      assert prevMacro.getParent() == templateNode;
      while ((attrNode = attrNode.getNextSibling()) != null) {
        if (RuleUtil.isNodeMacro(attrNode)) {
          return attrNode;
        }
      }
    }
    return null;
  }

  @Nullable
  List<SNode> applyTemplate(String mappingName,
      SNode templateNode,
      @NotNull TemplateContext context,
      SNode prevMacro)
      throws DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {

    assert mappingName == null || mappingName.equals(context.getInputName());

    // templateNode has unprocessed node-macros?
    SNode nextMacro = nextMacro(templateNode, prevMacro);
    if (nextMacro != null) {
      myTracer.pushMacro(new jetbrains.mps.smodel.SNodePointer(nextMacro));
      try {
        String macroConceptFQName = nextMacro.getConcept().getQualifiedName();
        MacroImpl macroImpl = macroImplMap.get(macroConceptFQName);
        if (macroImpl == null) {
          macroImpl = new NoMacro(this);
        }
        return macroImpl.apply(nextMacro, templateNode, context, GeneratorUtilEx.getMappingName_NodeMacro(nextMacro, mappingName));
      } finally {
        myTracer.closeMacro(new jetbrains.mps.smodel.SNodePointer(nextMacro));
      }
    }

    myGenerator.getPerformanceTracer().push("templateNode:create copy",  false);
    // templateNode has no unprocessed node-macros - create output instance for the template node
    final SNodePointer templateNodeReference = new SNodePointer(templateNode);
    myTracer.pushTemplateNode(templateNodeReference);
    jetbrains.mps.smodel.SNode outputNode = new jetbrains.mps.smodel.SNode(templateNode.getConcept().getQualifiedName());

    // use same env method as reduce_TemplateNode does
    myEnv.nodeCopied(context, outputNode, GeneratorUtil.getTemplateNodeId(templateNode));
    myGenerator.registerMappingLabel(context.getInput(), mappingName, outputNode); // XXX reduce_TemplateNode doesn't do that

    jetbrains.mps.util.SNodeOperations.copyProperties(templateNode, outputNode);
    myGenerator.getPerformanceTracer().pop();

    myGenerator.getPerformanceTracer().push("templateNode.references",  false);
    SModel templateModel = templateNode.getModel();
    for (SReference reference : templateNode.getReferences()) {
      if (AttributeOperations.getLinkAttribute(templateNode, "referenceMacro", reference.getRole()) != null) {
        continue;
      }

      if (reference instanceof StaticReference) {
        SModelReference targetModelReference = reference.getTargetSModelReference();
        if (targetModelReference != null && !(templateModel.getReference().equals(targetModelReference))) {
          // optimization for external static references (do not resolve them)
          SReference newReference = new StaticReference(
              reference.getRole(),
              outputNode,
              targetModelReference,
              reference.getTargetNodeId(),
              ((StaticReference) reference).getResolveInfo());
          outputNode.setReference(reference.getRole(), newReference);
          continue;
        }
      }

      SNode templateReferentNode = reference.getTargetNode();
      if (templateReferentNode == null) {
        myGenerator.getLogger().error(templateNode,
            "cannot resolve reference in template model; role: " + reference.getRole() + " in " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(
                templateNode));
        continue;
      }
      if (templateReferentNode.getModel() == templateModel) { // internal reference
        // XXX same code is in TEEI.resolveInTemplateLater, needs refactoring
        ReferenceInfo_Template refInfo = new ReferenceInfo_Template(
            outputNode, reference.getRole(),
            templateNodeReference,
            GeneratorUtil.getTemplateNodeId(templateReferentNode),
            jetbrains.mps.util.SNodeOperations.getResolveInfo(templateReferentNode),
            context);
        PostponedReference postponedReference = new PostponedReference(
            refInfo,
            myGenerator
        );
        outputNode.setReference(postponedReference.getRole(), postponedReference);
      } else {
        outputNode.setReferenceTarget(reference.getRole(), templateReferentNode);
      }
    }
    myGenerator.getPerformanceTracer().pop();

    myGenerator.getPerformanceTracer().push("children:collect", false);
    // process property and reference macros
    List<SNode> templateChildNodes = new ArrayList<SNode>();
    for (SNode templateChildNode : templateNode.getChildren()) {
      if (GeneratorUtilEx.isTemplateLanguageElement(templateChildNode)) {
        String templateChildNodeConcept = templateChildNode.getConcept().getQualifiedName();
        if (templateChildNodeConcept.equals(RuleUtil.concept_PropertyMacro)) {
          myEnv.getQueryExecutor().expandPropertyMacro(templateChildNode, context.getInput(), templateNode, outputNode, context);
        } else if (templateChildNodeConcept.equals(RuleUtil.concept_ReferenceMacro)) {
          ReferenceInfo_Macro refInfo = new ReferenceInfo_MacroNode(
              outputNode, templateChildNode,
              templateNode,
              context, myEnv.getQueryExecutor()
          );
          PostponedReference postponedReference = new PostponedReference(
              refInfo,
              myGenerator
          );
          outputNode.setReference(postponedReference.getRole(), postponedReference);
        }
      } else {
        templateChildNodes.add(templateChildNode);
      }
    }
    myGenerator.getPerformanceTracer().pop();

    // process children
    try {
      for (SNode templateChildNode : templateChildNodes) {
        List<SNode> outputChildNodes = applyTemplate(null, templateChildNode, context, null);
        if (outputChildNodes != null) {
          myGenerator.getPerformanceTracer().push("validateChild", false);
          SConcept originalConcept = templateChildNode.getConcept();
          String role = templateChildNode.getRoleInParent();
          RoleValidator validator = myGenerator.getChildRoleValidator(outputNode, role);
          for (SNode outputChildNode : outputChildNodes) {
            // returned node is subconcept of template node => fine
            final boolean notSubConcept = !(outputChildNode.getConcept().isSubConceptOf(originalConcept));
            if (notSubConcept) {
              // check child
              RoleValidationStatus status = validator.validate(outputChildNode);
              if (status != null) {
                status.reportProblem(false, outputNode, "",
                    GeneratorUtil.describe(context.getInput(), "input"),
                    GeneratorUtil.describe(templateNode, "parent in template"),
                    GeneratorUtil.describe(templateChildNode, "child in template"));
              }
            }
            outputNode.addChild(role, outputChildNode);
          }
          myGenerator.getPerformanceTracer().pop();
        }
      }
    } finally {
      myTracer.pushOutputNode(GenerationTracerUtil.getSNodePointer(myOutputModel, outputNode));
      myTracer.closeTemplateNode(templateNodeReference);
    }
    return Collections.singletonList(((SNode) outputNode));
  }

  private void validateReferences(SNode node, final SNode inputNode) {
    for (SReference ref : node.getReferences()) {
      // reference to input model - illegal
      if (myGenerator.getInputModel().getReference().equals(ref.getTargetSModelReference())) {
        // replace
        ReferenceInfo_CopiedInputNode refInfo = new ReferenceInfo_CopiedInputNode(
            ref.getRole(),
            ref.getSourceNode(),
            inputNode,
            ref.getTargetNode());
        PostponedReference postponedReference = new PostponedReference(
            refInfo,
            myGenerator);
        ref.getSourceNode().setReference(ref.getRole(), postponedReference);
      }
    }

    for (org.jetbrains.mps.openapi.model.SNode child : jetbrains.mps.util.SNodeOperations.getChildren(node)) {
      validateReferences(child, inputNode);
    }
  }

  private void weaveMacro(SNode template, SNode outputContextNode, @NotNull TemplateContext context, SNode macro)
      throws GenerationFailureException, GenerationCanceledException {

    if (template == null) {
      myGenerator.showErrorMessage(context.getInput(), macro, "couldn't evaluate weave macro: no template");
      return;
    }

    List<SNode> templateFragments = GeneratorUtilEx.getTemplateFragments(template);
    if (templateFragments.isEmpty()) {
      myGenerator.showErrorMessage(context.getInput(), template, macro, "nothing to weave: no template fragments found in template");
      return;
    }

    // check fragments: all fragments with <default context> should have the same parent
    TemplateWeavingRuleInterpreted.checkTemplateFragmentsForWeaving(template, templateFragments, myGenerator.getLogger());

    // for each template fragment create output nodes
    TemplateProcessor templateProcessor = new TemplateProcessor(myEnv);
    for (SNode templateFragment : templateFragments) {
      SNode templateFragmentNode = templateFragment.getParent();
      SNode contextParentNode = null;
      try {
        contextParentNode = myEnv.getQueryExecutor().getContextNodeForTemplateFragment(templateFragmentNode, outputContextNode, context);
      } catch (Exception e) {
        myGenerator.getLogger().handleException(e);
      }
      if (contextParentNode != null) {
        try {
          List<SNode> outputNodesToWeave = templateProcessor.apply(
              GeneratorUtilEx.getMappingName(templateFragment, null),
              templateFragmentNode, context);
          String childRole = templateFragmentNode.getRoleInParent();

          for (SNode outputNodeToWeave : outputNodesToWeave) {
            myEnv.weaveNode(contextParentNode, childRole, outputNodeToWeave, new jetbrains.mps.smodel.SNodePointer(templateFragment),
                context.getInput());
          }
        } catch (DismissTopMappingRuleException e) {
          myGenerator.showErrorMessage(context.getInput(), templateFragment, macro, "wrong template: dismission in weave macro is not supported");
        } catch (TemplateProcessingFailureException e) {
          // FIXME
          myGenerator.showErrorMessage(context.getInput(), templateFragment, macro, "error processing template fragment");
          myGenerator.getLogger().info(contextParentNode, " -- was output context node:");
        }
      } else {
        myGenerator.showErrorMessage(context.getInput(), templateFragment, macro, "couldn't define 'context' for template fragment");
      }
    }
  }

  public static class TemplateProcessingFailureException extends GenerationException {
  }


  private void initMacroMap() {
    macroImplMap.put(RuleUtil.concept_LoopMacro, new LoopMacro(this));
    CopySrcMacros m1 = new CopySrcMacros(this);
    macroImplMap.put(RuleUtil.concept_CopySrcNodeMacro, m1);
    macroImplMap.put(RuleUtil.concept_CopySrcListMacro, m1);
    macroImplMap.put(RuleUtil.concept_InsertMacro, new InsertMacro(this));
    macroImplMap.put(RuleUtil.concept_WeaveMacro,new WeaveMacro(this));
    macroImplMap.put(RuleUtil.concept_LabelMacro, new LabelMacro(this));
    macroImplMap.put(RuleUtil.concept_VarMacro, new VarMacro(this));
    macroImplMap.put(RuleUtil.concept_IfMacro, new IfMacro(this));
    MapSrcMacros m2 = new MapSrcMacros(this);
    macroImplMap.put(RuleUtil.concept_MapSrcNodeMacro, m2);
    macroImplMap.put(RuleUtil.concept_MapSrcListMacro, m2);
    macroImplMap.put(RuleUtil.concept_SwitchMacro, new SwitchMacro(this));
    macroImplMap.put(RuleUtil.concept_TemplateSwitchMacro, new SwitchWithArgMacro(this));
    macroImplMap.put(RuleUtil.concept_IncludeMacro, new IncludeMacro(this));
    macroImplMap.put(RuleUtil.concept_TemplateCallMacro, new CallMacro(this));
    macroImplMap.put(RuleUtil.concept_TraceMacro, new TraceMacro(this));
    macroImplMap.put(RuleUtil.concept_NodeMacro, new NoMacro(this));
  }

  private static abstract class MacroImpl {
    protected final TemplateProcessor myTemplateProcessor;
    protected final IGenerationTracer myTracer;

    protected MacroImpl(TemplateProcessor templateProcessor) {
      myTemplateProcessor = templateProcessor;
      myTracer = myTemplateProcessor.myTracer;
    }

    protected final SNode getNewInputNode(SNode nodeMacro, @NotNull TemplateContext context) throws GenerationFailureException {
      return InputQueryUtil.getNewInputNode(nodeMacro, context, myTemplateProcessor.myEnv);
    }

    protected final List<SNode> getNewInputNodes(SNode nodeMacro, @NotNull TemplateContext context) throws GenerationFailureException {
      return InputQueryUtil.getNewInputNodes(nodeMacro, context, myTemplateProcessor.myEnv);
    }

    protected final IPerformanceTracer getPerformanceTracer() {
      return getGenerator().getPerformanceTracer();
    }
    protected final QueryExecutionContext getQueryExecutor() {
      return myTemplateProcessor.myEnv.getQueryExecutor();
    }
    protected final GenerationSessionContext getGeneratorSessionContext() {
      return getGenerator().getGeneratorSessionContext();
    }
    protected final IGeneratorLogger getLogger() {
      return getGenerator().getLogger();
    }
    protected final void showErrorMessage(SNode inputNode, SNode templateNode, SNode ruleNode, String message) {
      getGenerator().showErrorMessage(inputNode, templateNode, ruleNode, message);
    }
    protected final TemplateGenerator getGenerator() {
      return myTemplateProcessor.myGenerator;
    }
    public abstract List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException;
  }

  private static class LoopMacro extends MacroImpl {
    LoopMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $LOOP$
      List<SNode> newInputNodes = getNewInputNodes(macro, templateContext);
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      ArrayList<SNode> outputNodes = new ArrayList<SNode>();
      for (SNode newInputNode : newInputNodes) {
        boolean inputChanged = (newInputNode != templateContext.getInput());
        if (inputChanged) {
          myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
        }
        try {
          List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName, newInputNode),
              macro);
          assert _outputNodes != null;
          if (_outputNodes != null) outputNodes.addAll(_outputNodes);
        } finally {
          if (inputChanged) {
            myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
          }
        }
      }
      return outputNodes;
    }
  }
  private static class CopySrcMacros extends MacroImpl {
    protected CopySrcMacros(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $COPY-SRC$ / $COPY-SRCL$
      List<SNode> newInputNodes = getNewInputNodes(macro, templateContext);
      SNodeReference templateNodeRef = templateNode == null ? null : new jetbrains.mps.smodel.SNodePointer(templateNode);
      final Collection<SNode> _outputNodes = myTemplateProcessor.myEnv.copyNodes(newInputNodes, templateNodeRef, null, mappingName, templateContext);
      return new ArrayList<SNode>(_outputNodes);
    }
  }
  private static class InsertMacro extends MacroImpl {
    protected InsertMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $INSERT$
      SNode child = InputQueryUtil.getNodeToInsert(macro, templateContext.subContext(mappingName), myTemplateProcessor.myEnv);
      if (child != null) {
        // check node languages : prevent 'insert' query from returning node, which language was not counted when
        // planning the generation steps.
        Language childLang = jetbrains.mps.util.SNodeOperations.getLanguage(child);
        if (!getGeneratorSessionContext().getGenerationPlan().isCountedLanguage(childLang)) {
          if (!childLang.getGenerators().isEmpty()) {
            getLogger().error(child,
                "language of output node is '" + childLang.getModuleName() + "' - this language did not show up when computing generation steps!",
                GeneratorUtil.describe(macro, "template"),
                GeneratorUtil.describe(templateContext.getInput(), "input"),
                new ProblemDescription(null,
                    "workaround: add the language '" + childLang.getModuleName() + "' to list of 'Languages Engaged On Generation' in model '" + getGeneratorSessionContext().getOriginalInputModel().getReference().getModelName() + "'"));
          }
        }

        if (child.getModel() != null) {
          // must be "in air"
          child = CopyUtil.copy(child);
        }
        // replace references back to input model
        myTemplateProcessor.validateReferences(child, templateContext.getInput());

        // label
        getGenerator().registerMappingLabel(templateContext.getInput(), mappingName, child);
        return Collections.singletonList(child);
      }
      return Collections.emptyList();

    }
  }
  private static class WeaveMacro extends MacroImpl {

    protected WeaveMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $WEAVE$
      List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName), macro);
      assert _outputNodes != null;
      if (_outputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      if (_outputNodes.size() == 1) {
        SNode contextNode = _outputNodes.get(0);

        List<SNode> nodesToWeave = getNewInputNodes(macro, templateContext);
        for (SNode node : nodesToWeave) {
          try {
            myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(node));
            myTracer.pushRuleConsequence(new jetbrains.mps.smodel.SNodePointer(macro));
            SNode consequence = RuleUtil.getWeaveMacro_Consequence(macro);
            if (consequence == null) {
              showErrorMessage(templateContext.getInput(), null, macro, "couldn't evaluate weave macro: no consequence");
              break;
            }

            SNode template = RuleUtil.getTemplateDeclarationReference_Template(consequence);
            myTemplateProcessor.weaveMacro(template, contextNode, templateContext.subContext(null, node), macro);
          } finally {
            myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(node));
          }
        }

      } else {
        getLogger().error(templateContext.getInput(), "cannot apply $WEAVE$ to a list of nodes",
            GeneratorUtil.describe(macro, "template"),
            GeneratorUtil.describe(templateContext.getInput(), "input"));
      }
      return _outputNodes;
    }
  }
  private static class LabelMacro extends MacroImpl {

    protected LabelMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $LABEL$
      return myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName), macro);
    }
  }
  private static class VarMacro extends MacroImpl {

    protected VarMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $VAR$
      String varName = RuleUtil.getVarMacro_Name(macro);
      Object varValue = getQueryExecutor().evaluateVariableQuery(templateContext.getInput(), RuleUtil.getVarMacro_Query(macro),
          templateContext);
      TemplateContext newContext = templateContext.subContext(Collections.singletonMap(varName, varValue));

      List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, newContext.subContext(mappingName), macro);
      return _outputNodes;
    }
  }

  private static class IfMacro extends MacroImpl {

    protected IfMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $IF$
      if (getQueryExecutor().checkConditionForIfMacro(templateContext.getInput(), macro, templateContext)) {
        return myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName), macro);
      } else {
        // alternative consequence
        SNode altConsequence = RuleUtil.getIfMacro_AlternativeConsequence(macro);
        if (altConsequence != null) {
          ArrayList<SNode> outputNodes = new ArrayList<SNode>();
          try {
            List<Pair<SNode, String>> nodeAndMappingNamePairs = GeneratorUtilEx.getTemplateNodesFromRuleConsequence(altConsequence,
                templateContext, macro, myTemplateProcessor.myEnv);
            if (nodeAndMappingNamePairs == null) {
              showErrorMessage(templateContext.getInput(), null, macro, "error processing $IF$/alternative");
              throw new TemplateProcessingFailureException();
            }
            for (Pair<SNode, String> nodeAndMappingNamePair : nodeAndMappingNamePairs) {
              SNode altTemplateNode = nodeAndMappingNamePair.o1;
              String innerMappingName = nodeAndMappingNamePair.o2 != null ? nodeAndMappingNamePair.o2 : mappingName;
              List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(innerMappingName, altTemplateNode,
                  templateContext.subContext(innerMappingName), null);
              if (_outputNodes != null) {
                outputNodes.addAll(_outputNodes);
              }
            }
          } catch (AbandonRuleInputException e) {
            // it's ok. just ignore
          }
          return outputNodes;
        }
      }
      return Collections.emptyList();
    }
  }

  private static class MapSrcMacros extends MacroImpl {

    protected MapSrcMacros(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $MAP-SRC$ or $MAP-SRCL$
      SNode macro_mapperFunction = RuleUtil.getMapSrc_MapperFunction(macro);
      List<SNode> newInputNodes = getNewInputNodes(macro, templateContext);
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      ArrayList<SNode> outputNodes = new ArrayList<SNode>(newInputNodes.size());
      for (SNode newInputNode : newInputNodes) {
        boolean inputChanged = (newInputNode != templateContext.getInput());
        if (inputChanged) {
          myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
        }
        try {
          TemplateContext newcontext = templateContext.subContext(mappingName, newInputNode);
          if (macro_mapperFunction != null) {
            SNode childToReplaceLater = new jetbrains.mps.smodel.SNode(templateNode.getConcept().getQualifiedName());
            myTracer.pushOutputNodeToReplaceLater(childToReplaceLater);
            outputNodes.add(childToReplaceLater);
            // execute the 'mapper' function later
            getGenerator().getDelayedChanges().addExecuteMapSrcNodeMacroChange(macro, childToReplaceLater, newcontext, getQueryExecutor());
          } else {
            List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, newcontext, macro);
            assert _outputNodes != null;
            outputNodes.addAll(_outputNodes);
            // do post-processing here (it's not really a post-processing because model is not completed yet - output nodes are not added to parent node).
            for (SNode outputNode : _outputNodes) {
              getGenerator().getDelayedChanges().addExecuteMapSrcNodeMacroPostProcChange(macro, outputNode, newcontext, getQueryExecutor());
            }
          }
        } finally {
          if (inputChanged) {
            myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
          }
        }
      }
      return outputNodes;
    }
  }

  private static class SwitchMacro extends MacroImpl {

    protected SwitchMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    protected SNode getTemplateSwitch(SNode macro) {
      return RuleUtil.getSwitchMacro_TemplateSwitch(macro);
    }
    protected TemplateContext prepareContext(SNode macro, String mappingName, TemplateContext templateContext, SNode newInputNode) {
      return templateContext.subContext(mappingName, newInputNode);
    }
    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $SWITCH-OLD$ without arguments and $SWITCH$ that allows arguments
      SNode templateSwitch = getTemplateSwitch(macro);
      if (templateSwitch == null) {
        showErrorMessage(templateContext.getInput(), null, macro, "error processing $SWITCH$ - bad TemplateSwitch reference");
        throw new TemplateProcessingFailureException();
      }
      final SNodeReference switchPtr = new jetbrains.mps.smodel.SNodePointer(templateSwitch);
      SNode newInputNode = getNewInputNode(macro, templateContext);
      if (newInputNode == null) {
        TemplateSwitchMapping tswitch = getGenerator().getSwitch(switchPtr);
        if (tswitch != null) {
          tswitch.processNull(myTemplateProcessor.myEnv, switchPtr, templateContext);
        }
        return Collections.emptyList(); // skip template
      }

      boolean inputChanged = (newInputNode != templateContext.getInput());
      if (inputChanged) {
        myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
      }
      myTracer.pushSwitch(new jetbrains.mps.smodel.SNodePointer(templateSwitch));
      try {
        final TemplateContext switchContext = prepareContext(macro, mappingName, templateContext, newInputNode);

        Collection<SNode> collection = null;
        try {
          collection = myTemplateProcessor.myEnv.trySwitch(switchPtr, mappingName, switchContext);
        } catch (GenerationCanceledException e) {
          throw e;
        } catch (GenerationFailureException e) {
          throw e;
        } catch (DismissTopMappingRuleException e) {
          throw e;
        } catch (GenerationException e) {
          showErrorMessage(null, switchPtr.resolve(MPSModuleRepository.getInstance()), macro,
              "internal error in switch.applyDefault: " + e.toString());
        }
        if (collection == null) {
          // no switch-case found for the inputNode - continue with templateNode under the $switch$
          collection = myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName, newInputNode), macro);
        }
        return new ArrayList<SNode>(collection);
      } finally {
        if (inputChanged) {
          myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
        }
      }
    }
  }
  private static class SwitchWithArgMacro extends SwitchMacro {
    protected SwitchWithArgMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    protected SNode getTemplateSwitch(SNode macro) {
      // new $SWITCH$, with args
      return RuleUtil.getTemplateSwitchMacro_TemplateSwitch(macro);
    }

    @Override
    protected TemplateContext prepareContext(SNode macro, String mappingName, TemplateContext templateContext, SNode newInputNode) {
      final TemplateContext newcontext = GeneratorUtil.createTemplateCallContext(templateContext.getInput(), templateContext, myTemplateProcessor.myEnv, macro, newInputNode);
      return newcontext.subContext(mappingName);
    }
  }

  private static abstract class InvokeTemplateMacro extends MacroImpl {
    private String myName;

    protected InvokeTemplateMacro(TemplateProcessor templateProcessor, String macroName) {
      super(templateProcessor);
      myName = macroName;
    }

    protected abstract SNode getInvokedTemplate(SNode macro);
    protected abstract TemplateContext prepareContext(SNode macro, SNode invokedTemplate, String mappingName, TemplateContext templateContext,
        SNode newInputNode);

    @Override
    public final List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {

      SNode newInputNode = getNewInputNode(macro, templateContext);
      if (newInputNode == null) {
        return Collections.emptyList(); // skip template
      }

      SNode invokedTemplate = getInvokedTemplate(macro);
      if (invokedTemplate == null) {
        showErrorMessage(newInputNode, null, macro, String.format("error processing %s : no template to invoke", myName));
        throw new TemplateProcessingFailureException();
      }

      TemplateContext newcontext = prepareContext(macro, invokedTemplate, mappingName, templateContext, newInputNode);
      if (newcontext == null) {
        throw new TemplateProcessingFailureException();
      }

      List<SNode> fragments = GeneratorUtilEx.getTemplateFragments(invokedTemplate);

      if (!GeneratorUtilEx.checkIfOneOrMaryAdjacentFragments(fragments, invokedTemplate, newInputNode, macro, getGenerator())) {
        showErrorMessage(newInputNode, null, macro, String.format("error processing %s"));
        throw new TemplateProcessingFailureException();
      }

      boolean inputChanged = (newInputNode != templateContext.getInput());
      if (inputChanged) {
        myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
      }
      myTracer.pushTemplateNode(new jetbrains.mps.smodel.SNodePointer(invokedTemplate));

      ArrayList<SNode> outputNodes = new ArrayList<SNode>();
      try {
        for (SNode fragment : fragments) {
          SNode templateForInclude = fragment.getParent();
          mappingName = GeneratorUtilEx.getMappingName_TemplateFragment(fragment, mappingName);
          List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateForInclude, newcontext.subContext(mappingName), null);
          if (_outputNodes != null) outputNodes.addAll(_outputNodes);
        }
      } finally {
        if (inputChanged) {
          myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
        }
      }
      return outputNodes;
    }
  }

  // $INCLUDE$
  private static class IncludeMacro extends InvokeTemplateMacro {

    protected IncludeMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor, "$INCLUDE$");
    }

    @Override
    protected SNode getInvokedTemplate(SNode macro) {
      return RuleUtil.getIncludeMacro_Template(macro);
    }

    @Override
    protected TemplateContext prepareContext(SNode macro, SNode invokedTemplate, String mappingName, TemplateContext templateContext, SNode newInputNode) {
      final String[] parameterNames = RuleUtil.getTemplateDeclarationParameterNames(invokedTemplate);
      if (parameterNames == null) {
        showErrorMessage(newInputNode, null, macro, "error processing $INCLUDE$: target template is broken");
        return null;
      }

      for (String name : parameterNames) {
        if (!templateContext.hasVariable(name)) {
          showErrorMessage(newInputNode, null, macro, "error processing $INCLUDE$: parameter `" + name + "' is missing");
        }
      }
      return templateContext.subContext(mappingName, newInputNode);
    }
  }

  // $CALL$
  private static class CallMacro extends InvokeTemplateMacro {

    protected CallMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor, "$CALL$");
    }

    @Override
    protected SNode getInvokedTemplate(SNode macro) {
      return RuleUtil.getCallMacro_Template(macro);
    }

    @Override
    protected TemplateContext prepareContext(SNode macro, SNode invokedTemplate, String mappingName, TemplateContext templateContext, SNode newInputNode) {
      return GeneratorUtil.createTemplateCallContext(templateContext.getInput(), templateContext, myTemplateProcessor.myEnv, macro, newInputNode);
    }
  }

  private static class TraceMacro extends MacroImpl {

    protected TraceMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {
      // $TRACE$
      List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName), macro);
      assert _outputNodes != null;
      if (!_outputNodes.isEmpty()) {
        SNode inputNode = getNewInputNode(macro, templateContext);
        if (inputNode != null) {
          final boolean originalInput = getGeneratorSessionContext().getOriginalInputModel() == inputNode.getModel();
          for (SNode outputNode : _outputNodes) {
            TracingUtil.fillOriginalNode(inputNode, outputNode, originalInput);
          }
        }
      }
      return _outputNodes;
    }
  }

  private static class NoMacro extends MacroImpl {

    protected NoMacro(TemplateProcessor templateProcessor) {
      super(templateProcessor);
    }

    @Override
    public List<SNode> apply(SNode macro, SNode templateNode, @NotNull TemplateContext templateContext, String mappingName) throws
        DismissTopMappingRuleException, GenerationFailureException, GenerationCanceledException, TemplateProcessingFailureException {

      // $$
      List<SNode> newInputNodes = getNewInputNodes(macro, templateContext);
      if (newInputNodes.isEmpty()) {
        return Collections.emptyList();
      }
      ArrayList<SNode> outputNodes = new ArrayList<SNode>();
      for (SNode newInputNode : newInputNodes) {
        boolean inputChanged = (newInputNode != templateContext.getInput());
        if (inputChanged) {
          myTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
        }
        try {
          List<SNode> _outputNodes = myTemplateProcessor.applyTemplate(mappingName, templateNode, templateContext.subContext(mappingName, newInputNode), macro);
          assert _outputNodes != null;
          outputNodes.addAll(_outputNodes);
        } finally {
          if (inputChanged) {
            myTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(newInputNode));
          }
        }
      }
      return outputNodes;
    }
  }
}