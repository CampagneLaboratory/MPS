/*
 * Created by IntelliJ IDEA.
 * User: alshan
 * Date: Jul 9, 2004
 * Time: 7:07:36 PM
 */
package jetbrains.mps.generator.template;

import jetbrains.mps.bootstrap.sharedConcepts.structure.Options_DefaultTrue;
import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.core.structure.BaseConcept;
import jetbrains.mps.core.structure.INamedConcept;
import jetbrains.mps.generator.GenerationFailedException;
import jetbrains.mps.generator.GenerationFailueInfo;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.*;
import jetbrains.mps.transformation.TLBase.generator.baseLanguage.template.TemplateFunctionMethodName;
import jetbrains.mps.transformation.TLBase.structure.*;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.QueryMethodGenerated;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


public class GeneratorUtil {
  private static final Logger LOG = Logger.getLogger(GeneratorUtil.class);

  public static boolean isTemplateLanguageElement(INodeAdapter n) {
    return n instanceof NodeMacro ||
      n instanceof ReferenceMacro ||
      n instanceof PropertyMacro ||
      n instanceof TemplateFragment ||
      n instanceof RootTemplateAnnotation;
  }

  public static String getMappingName(INodeAdapter node, String defaultValue) {
    String mappingName = null;
    if (node instanceof CreateRootRule) {
      MappingLabelDeclaration mappingLabel = ((CreateRootRule) node).getLabel();
      if (mappingLabel != null) {
        mappingName = mappingLabel.getName();
      } else {
        mappingName = node.getName();
      }
    } else if (node instanceof BaseMappingRule) {
      MappingLabelDeclaration mappingLabel = ((BaseMappingRule) node).getLabelDeclaration();
      if (mappingLabel != null) {
        mappingName = mappingLabel.getName();
      } else {
        mappingName = node.getName();
      }
    } else if (node instanceof TemplateFragment) {
      MappingLabelDeclaration mappingLabel = ((TemplateFragment) node).getLabelDeclaration();
      if (mappingLabel != null) {
        mappingName = mappingLabel.getName();
      } else {
        mappingName = node.getName();
      }
    } else if (node instanceof NodeMacro) {
      MappingLabelDeclaration mappingLabel = ((NodeMacro) node).getMappingLabel();
      if (mappingLabel != null) {
        mappingName = mappingLabel.getName();
      } else {
        mappingName = ((NodeMacro) node).getMappingId();
      }
    } else {
      LOG.errorWithTrace("unexpected input " + node.getDebugText());
    }

    if (mappingName == null) {
      return defaultValue;
    }
    return mappingName;
  }

  public static boolean checkPremiseForBaseMappingRule(SNode inputNode, ConceptDeclaration sourceNodeConcept, BaseMappingRule rule, ITemplateGenerator generator) {
    AbstractConceptDeclaration applicableConcept = rule.getApplicableConcept();
    if (applicableConcept != null) {
      if (rule.getApplyToConceptInheritors()) {
        if (!SModelUtil_new.isAssignableConcept(sourceNodeConcept, applicableConcept)) return false;
      } else {
        if (sourceNodeConcept != applicableConcept) return false;
      }
    }
    return checkCondition(rule.getConditionFunction(), false, inputNode, rule.getNode(), generator);
  }

  public static boolean checkCondition(BaseMappingRule_Condition condition, boolean required, SNode inputNode, SNode ruleNode, ITemplateGenerator generator) {
    if (condition == null) {
      if (required) {
        generator.showErrorMessage(inputNode, null, ruleNode, "rule condition required");
        return false;
      }
      return true;
    }

    String methodName = TemplateFunctionMethodName.baseMappingRule_Condition(condition.getNode());
    long startTime = System.currentTimeMillis();
    boolean res = false;
    try {
      res = (Boolean) QueryMethodGenerated.invoke(
        methodName,
        generator.getGeneratorSessionContext(),
        new BaseMappingRuleContext(inputNode, generator.getInputModel(), generator),
        ruleNode.getModel());
      return res;
    } catch (NoSuchMethodException e) {
      generator.showWarningMessage(ruleNode, "condition query method '" + methodName + "' not found. evaluate to FALSE");
      return false;
    } catch (Exception e) {
      generator.showErrorMessage(inputNode, null, ruleNode, "couldn't evaluate rule condition");
      LOG.error(e);
      return false;
    } finally {
      Statistics.getStatistic(Statistics.TPL).add(ruleNode.getModel(), methodName, startTime, res);
    }
  }

  public static void executeMappingScript(MappingScript mappingScript, SModel model, ITemplateGenerator generator) {
    MappingScript_CodeBlock codeBlock = mappingScript.getCodeBlock();
    if (codeBlock == null) {
      generator.showWarningMessage(mappingScript.getNode(), "couldn't run script '" + mappingScript.getName() + "' : no code-block");
      return;
    }

    String methodName = TemplateFunctionMethodName.mappingScript_CodeBlock(codeBlock.getNode());
    long startTime = System.currentTimeMillis();
    try {
      QueryMethodGenerated.invoke(
        methodName,
        generator.getGeneratorSessionContext(),
        new MappingScriptContext(model, generator),
        mappingScript.getModel());
    } catch (GenerationFailedException gfe) {
      generator.showErrorMessage(codeBlock.getNode(), "error executing script '" + mappingScript.getName() + "'");
      throw gfe;
    } catch (IllegalModelChangeError imce) {
      generator.showErrorMessage(codeBlock.getNode(), "error executing script '" + mappingScript.getName() + "'");
      throw imce;
    } catch (Throwable t) {
      generator.showErrorMessage(codeBlock.getNode(), "error executing script '" + mappingScript.getName() + "'");
      GenerationFailueInfo failueInfo = new GenerationFailueInfo("?", null, null, mappingScript.getNode(), generator.getGeneratorSessionContext());
      throw new GenerationFailedException(failueInfo, t);
    }

    finally {
      Statistics.getStatistic(Statistics.TPL).add(mappingScript.getModel(), methodName, startTime);
    }
  }

  public static List<SNode> evaluateSourceNodesQuery(SNode inputNode, SourceSubstituteMacro_SourceNodesQuery query, ITemplateGenerator generator) {
    String methodName = TemplateFunctionMethodName.sourceSubstituteMacro_SourceNodesQuery(query.getNode());
    long startTime = System.currentTimeMillis();
    try {
      List<SNode> result = (List<SNode>) QueryMethodGenerated.invoke(
        methodName,
        generator.getGeneratorSessionContext(),
        new SourceSubstituteMacroNodesContext(inputNode, generator.getInputModel(), generator),
        query.getModel());
      return result;
    } catch (Exception e) {
      generator.showErrorMessage(inputNode, query.getNode(), "couldn't evaluate query");
      LOG.error(e);
      return new LinkedList<SNode>();
    } finally {
      Statistics.getStatistic(Statistics.TPL).add(query.getModel(), methodName, startTime);
    }
  }

  public static SNode evaluateSourceNodeQuery(SNode inputNode, SourceSubstituteMacro_SourceNodeQuery query, ITemplateGenerator generator) {
    String methodName = TemplateFunctionMethodName.sourceSubstituteMacro_SourceNodeQuery(query.getNode());
    long startTime = System.currentTimeMillis();
    try {
      return (SNode) QueryMethodGenerated.invoke(
        methodName,
        generator.getGeneratorSessionContext(),
        new SourceSubstituteMacroNodeContext(inputNode, generator.getInputModel(), generator),
        query.getModel());
    } catch (Exception e) {
      generator.showErrorMessage(inputNode, query.getNode(), "couldn't evaluate query");
      LOG.error(e);
      return null;
    } finally {
      Statistics.getStatistic(Statistics.TPL).add(query.getModel(), methodName, startTime);
    }
  }


  public static void applyCreateRootRule(CreateRootRule createRootRule, TemplateGenerator generator) {
    if (checkCondition(createRootRule, generator)) {
      INamedConcept templateNode = createRootRule.getTemplateNode();
      if (templateNode == null) {
        generator.showErrorMessage(null, null, createRootRule.getNode(), "'create root' rule has no template");
      } else {
        generator.getGeneratorSessionContext().getGenerationTracer().pushRule(createRootRule.getNode());
        boolean wasChanged = generator.isChanged();
        try {
          createRootNodeFromTemplate(
            getMappingName(createRootRule, null),
            BaseAdapter.fromAdapter(templateNode), null, generator);
        } catch (DismissTopMappingRuleException e) {
          // it's ok, just continue
          generator.setChanged(wasChanged);
        } finally {
          generator.getGeneratorSessionContext().getGenerationTracer().closeRule(createRootRule.getNode());
        }
      }
    }
  }

  private static boolean checkCondition(CreateRootRule createRootRule, ITemplateGenerator generator) {
    CreateRootRule_Condition conditionFunction = createRootRule.getConditionFunction();
    if (conditionFunction == null) {
      return true;
    }
    String methodName = TemplateFunctionMethodName.createRootRule_Condition(conditionFunction.getNode());
    try {
      return (Boolean) QueryMethodGenerated.invoke(
        methodName,
        generator.getGeneratorSessionContext(),
        new CreateRootRuleContext(generator.getInputModel(), generator),
        createRootRule.getModel());
    } catch (Exception e) {
      generator.showErrorMessage(null, null, BaseAdapter.fromAdapter(createRootRule), "couldn't evaluate rule condition");
      LOG.error(e);
      return false;
    }
  }

  public static void applyRoot_MappingRule(Root_MappingRule rule, TemplateGenerator generator) {
    AbstractConceptDeclaration applicableConcept = rule.getApplicableConcept();
    if (applicableConcept == null) {
      generator.showErrorMessage(null, null, BaseAdapter.fromAdapter(rule), "rule has no applicable concept defined");
      return;
    }
    boolean includeInheritors = rule.getApplyToConceptInheritors();
    List<SNode> inputNodes = generator.getInputModel().getModelDescriptor().getFastNodeFinder().getNodes(applicableConcept, includeInheritors);
    for (SNode inputNode : inputNodes) {
      // do not apply root mapping if root node has been copied from input model on previous micro-step
      // because some roots can be already mapped and copied as well (if some rule has 'keep root' = true)
      if (generator.getGeneratorSessionContext().isCopiedRoot(inputNode)) {
        continue;
      }

      if (checkCondition(rule.getConditionFunction(), false, inputNode, rule.getNode(), generator)) {
        generator.getGeneratorSessionContext().getGenerationTracer().pushInputNode(inputNode);
        generator.getGeneratorSessionContext().getGenerationTracer().pushRule(rule.getNode());
        boolean wasChanged = generator.isChanged();
        try {
          generator.setChanged(true);
          SNode templateNode = BaseAdapter.fromAdapter(rule.getTemplate());
          if (templateNode != null) {
            createRootNodeFromTemplate(getMappingName(rule, null), templateNode, inputNode, generator);
          } else {
            generator.showErrorMessage(BaseAdapter.fromAdapter(rule), "no template is defined for the rule");
          }
          if (inputNode.isRoot() && rule.getKeepSourceRoot() == Options_DefaultTrue.default_) {
            generator.addRootNotToCopy(inputNode);
          }
        } catch (DismissTopMappingRuleException e) {
          // it's ok, just continue
          generator.setChanged(wasChanged);
        } finally {
          generator.getGeneratorSessionContext().getGenerationTracer().closeInputNode(inputNode);
        }
      }
    }
  }

  private static void createRootNodeFromTemplate(String mappingName, SNode templateNode, SNode inputNode, TemplateGenerator generator) throws DismissTopMappingRuleException {
    try {
      List<SNode> outputNodes = TemplateProcessor.createOutputNodesForTemplateNode(mappingName, templateNode, inputNode, generator);
      for (SNode outputNode : outputNodes) {
        generator.getOutputModel().addRoot(outputNode);
      }
    } catch (TemplateProcessingFailureException e) {
      generator.showErrorMessage(inputNode, templateNode, "couldn't create root node");
    }
  }

  private static SNode getContextNodeForWeavingingRule(SNode inputNode, Weaving_MappingRule rule, ITemplateGenerator generator) {
    Weaving_MappingRule_ContextNodeQuery query = rule.getContextNodeQuery();
    if (query != null) {
      String methodName = TemplateFunctionMethodName.weaving_MappingRule_ContextNodeQuery(query.getNode());
      try {
        return (SNode) QueryMethodGenerated.invoke(
          methodName,
          generator.getGeneratorSessionContext(),
          new WeavingMappingRuleContext(inputNode, generator),
          query.getModel());
      } catch (Exception e) {
        generator.showErrorMessage(inputNode, null, rule.getNode(), "couldn't evaluate rule context query");
        LOG.error(e);
      }
    }
    return null;
  }

  private static void weaveTemplateDeclaration(SNode inputNode, TemplateDeclaration template, SNode outputContextNode, Weaving_MappingRule rule, TemplateGenerator generator) {
    generator.getGeneratorSessionContext().getGenerationTracer().pushInputNode(inputNode);
    try {
      weaveTemplateDeclaration_intern(inputNode, template, outputContextNode, rule, generator);
    } finally {
      generator.getGeneratorSessionContext().getGenerationTracer().closeInputNode(inputNode);
    }
  }

  private static void weaveTemplateDeclaration_intern(SNode inputNode, TemplateDeclaration template, SNode outputContextNode, Weaving_MappingRule rule, TemplateGenerator generator) {
    if (template == null) {
      generator.showErrorMessage(inputNode, null, rule.getNode(), "couldn't evaluate weaving rule: no template");
      return;
    }

    List<TemplateFragment> templateFragments = getTemplateFragments(template);
    if (templateFragments.isEmpty()) {
      generator.showErrorMessage(inputNode, template.getNode(), rule.getNode(), "nothing to weave: no template fragments found in template");
      return;
    }

    // check fragments: all fragments with <default context> should have the same parent
    boolean allFragmentsWhichUseDefaultContextHaveSameParent = true;
    SNode defaultContext = null;
    for (TemplateFragment templateFragment : templateFragments) {
      if (templateFragment.getContextNodeQuery() == null) { // uses <default context>
        SNode fragmentContextNode = BaseAdapter.fromAdapter(templateFragment.getParent().getParent());
        if (defaultContext == null) {
          defaultContext = fragmentContextNode;
        } else if (defaultContext != fragmentContextNode) {
          allFragmentsWhichUseDefaultContextHaveSameParent = false;
          break;
        }
      }
    }
    if (!allFragmentsWhichUseDefaultContextHaveSameParent) {
      for (TemplateFragment templateFragment : templateFragments) {
        if (templateFragment.getContextNodeQuery() == null) { // uses <default context>
          generator.showErrorMessage(null, templateFragment.getNode(), null, "template fragment uses <default context>: conflicts with other fragments which use <default context>");
        }
      }
    }

    String ruleMappingName = getMappingName(rule, null);
    // for each template fragment create output nodes
    for (TemplateFragment templateFragment : templateFragments) {
      SNode templateFragmentNode = BaseAdapter.fromAdapter(templateFragment.getParent());
      SNode contextParentNode = null;
      try {
        contextParentNode = getContextNodeForTemplateFragment(inputNode, templateFragmentNode, outputContextNode, generator);
      } catch (Exception e) {
        LOG.error(e);
      }
      if (contextParentNode != null) {
        try {
          List<SNode> outputNodesToWeave = TemplateProcessor.createOutputNodesForTemplateNode(
            getMappingName(templateFragment, ruleMappingName),
            templateFragmentNode, inputNode, generator);
          String childRole = templateFragmentNode.getRole_();
          for (SNode outputNodeToWeave : outputNodesToWeave) {
            contextParentNode.addChild(childRole, outputNodeToWeave);
          }
        } catch (DismissTopMappingRuleException e) {
          generator.showErrorMessage(inputNode, templateFragment.getNode(), rule.getNode(), "dismission of weaving rule is not supported");
        } catch (TemplateProcessingFailureException e) {
          generator.showErrorMessage(inputNode, templateFragment.getNode(), rule.getNode(), "error pocessing template fragment");
          generator.showInformationMessage(contextParentNode, " -- was output context node:");
        }
      } else {
        generator.showErrorMessage(inputNode, templateFragment.getNode(), rule.getNode(), "couldn't define 'context' for template fragment");
      }
    }
  }

  private static List<TemplateFragment> getTemplateFragments(TemplateDeclaration template) {
    List<TemplateFragment> templateFragments = new ArrayList<TemplateFragment>(1);
    for (INodeAdapter subnode : template.getDescendants()) {
      if (subnode instanceof TemplateFragment) {
        templateFragments.add((TemplateFragment) subnode);
      }
    }
    return templateFragments;
  }

  /*package*/
  static TemplateFragment getFragmentFromTemplate(TemplateDeclaration template, SNode inputNode, SNode ruleNode, ITemplateGenerator generator) {
    List<TemplateFragment> templateFragments = getTemplateFragments(template);
    if (templateFragments.isEmpty()) {
      generator.showErrorMessage(inputNode, BaseAdapter.fromAdapter(template), ruleNode, "couldn't process template: no template fragments found");
      return null;
    }
    if (templateFragments.size() > 1) {
      generator.showErrorMessage(inputNode, BaseAdapter.fromAdapter(template), ruleNode, "couldn't process template: more than one (" + templateFragments.size() + ") fragments found");
      return null;
    }
    return templateFragments.get(0);
  }

  private static SNode getContextNodeForTemplateFragment(SNode inputNode, SNode templateFragmentNode, SNode mainContextNode, TemplateGenerator generator) {
    TemplateFragment fragment = TemplateFragment_AnnotationLink.getTemplateFragment((BaseConcept) templateFragmentNode.getAdapter());
    // has custom context builder provider?
    TemplateFragment_ContextNodeQuery query = fragment.getContextNodeQuery();
    if (query != null) {
      String methodName = TemplateFunctionMethodName.templateFragment_ContextNodeQuery(query.getNode());
      try {
        return (SNode) QueryMethodGenerated.invoke(
          methodName,
          generator.getGeneratorSessionContext(),
          new TemplateFragmentContext(inputNode, mainContextNode, generator),
          query.getModel());
      } catch (Exception e) {
        generator.showErrorMessage(inputNode, null, templateFragmentNode, "couldn't evaluate template fragment context query");
        LOG.error(e);
        return null;
      }
    }

    // ok, main context node by default
    return mainContextNode;
  }

  public static void applyWeaving_MappingRule(Weaving_MappingRule rule, TemplateGenerator generator) {
    AbstractConceptDeclaration applicableConcept = rule.getApplicableConcept();
    if (applicableConcept == null) {
      generator.showErrorMessage(null, rule.getNode(), "rule has no applicable concept defined");
      return;
    }
    boolean includeInheritors = rule.getApplyToConceptInheritors();
    List<SNode> nodes = generator.getInputModel().getModelDescriptor().getFastNodeFinder().getNodes(applicableConcept, includeInheritors);
    for (SNode applicableNode : nodes) {
      if (GeneratorUtil.checkCondition(rule.getConditionFunction(), false, applicableNode, rule.getNode(), generator)) {
        SNode outputContextNode = getContextNodeForWeavingingRule(applicableNode, rule, generator);
        if (outputContextNode == null) {
          generator.showErrorMessage(applicableNode, rule.getNode(), "couldn't find context node");
          continue;
        }
        generator.setChanged(true);

        boolean someOutputGenerated = true;
        generator.getGeneratorSessionContext().getGenerationTracer().pushInputNode(applicableNode);
        generator.getGeneratorSessionContext().getGenerationTracer().pushRule(rule.getNode());
        try {
          // old
          TemplateDeclaration template = rule.getTemplate();
          if (template != null) {
            weaveTemplateDeclaration(applicableNode, template, outputContextNode, rule, generator);
          } else {
            // new
            RuleConsequence ruleConsequence = rule.getRuleConsequence();
            if (ruleConsequence == null) {
              generator.showErrorMessage(applicableNode, null, rule.getNode(), "no rule consequence");
            } else {
              generator.getGeneratorSessionContext().getGenerationTracer().pushRuleConsequence(ruleConsequence.getNode());
              if (ruleConsequence instanceof TemplateDeclarationReference) {
                template = ((TemplateDeclarationReference) ruleConsequence).getTemplate();
                weaveTemplateDeclaration(applicableNode, template, outputContextNode, rule, generator);

              } else if (ruleConsequence instanceof WeaveEach_RuleConsequence) {
                WeaveEach_RuleConsequence weaveEach = (WeaveEach_RuleConsequence) ruleConsequence;
                SourceSubstituteMacro_SourceNodesQuery query = weaveEach.getSourceNodesQuery();
                if (query == null) {
                  generator.showErrorMessage(applicableNode, rule.getNode(), "couldn't create list of source nodes");
                  break;
                }
                template = weaveEach.getTemplate();
                List<SNode> queryNodes = evaluateSourceNodesQuery(applicableNode, query, generator);
                if (queryNodes.isEmpty()) {
                  someOutputGenerated = false;
                }
                for (SNode queryNode : queryNodes) {
                  weaveTemplateDeclaration(queryNode, template, outputContextNode, rule, generator);
                }
              } else {
                generator.showErrorMessage(applicableNode, null, ruleConsequence.getNode(), "unsapported rule consequence");
              }
            }
          } // RuleConsequence
        } finally {
          if (someOutputGenerated) {
            generator.getGeneratorSessionContext().getGenerationTracer().closeInputNode(applicableNode);
          } else {
            generator.getGeneratorSessionContext().getGenerationTracer().popInputNode(applicableNode);
          }
        }
      }
    }
  }


  @Nullable
  /*package*/ static Pair<SNode, String> getTemplateNodeFromRuleConsequence(RuleConsequence ruleConsequence, SNode inputNode, SNode ruleNode, ITemplateGenerator generator) throws DismissTopMappingRuleException, AbandonRuleInputException {
    if (ruleConsequence == null) {
      generator.showErrorMessage(inputNode, null, ruleNode, "no rule consequence");
      return null;
    }
    generator.getGeneratorSessionContext().getGenerationTracer().pushRuleConsequence(ruleConsequence.getNode());

    if (ruleConsequence instanceof DismissTopMappingRule) {
      GeneratorMessage message = ((DismissTopMappingRule) ruleConsequence).getGeneratorMessage();
      if (message != null) {
        String text = message.getMessageText();
        if (message.getMessageType() == GeneratorMessageType.error) {
          generator.showErrorMessage(inputNode, null, ruleNode, text);
        } else if (message.getMessageType() == GeneratorMessageType.warning) {
          generator.showWarningMessage(inputNode, text);
        } else {
          generator.showInformationMessage(inputNode, text);
        }
      } else {
//        generator.showInformationMessage(inputNode, "Top rule dismissed with no message");
      }
      throw new DismissTopMappingRuleException();

    } else if (ruleConsequence instanceof AbandonInput_RuleConsequence) {
      throw new AbandonRuleInputException();

    } else if (ruleConsequence instanceof TemplateDeclarationReference) {
      TemplateDeclaration template = ((TemplateDeclarationReference) ruleConsequence).getTemplate();
      TemplateFragment fragment = GeneratorUtil.getFragmentFromTemplate(template, inputNode, ruleNode, generator);
      if (fragment != null) {
        return new Pair<SNode, String>(fragment.getParent().getNode(), fragment.getName());
      }

    } else if (ruleConsequence instanceof InlineTemplate_RuleConsequence) {
      BaseConcept templateNode = ((InlineTemplate_RuleConsequence) ruleConsequence).getTemplateNode();
      if (templateNode != null) {
        return new Pair<SNode, String>(templateNode.getNode(), null);
      } else {
        generator.showErrorMessage(inputNode, null, ruleConsequence.getNode(), "no template node");
      }

    } else if (ruleConsequence instanceof InlineSwitch_RuleConsequence) {
      InlineSwitch_RuleConsequence inlineSwitch = (InlineSwitch_RuleConsequence) ruleConsequence;
      for (InlineSwitch_Case switchCase : inlineSwitch.getCases()) {
        if (GeneratorUtil.checkCondition(switchCase.getConditionFunction(), true, inputNode, switchCase.getNode(), generator)) {
          return getTemplateNodeFromRuleConsequence(switchCase.getCaseConsequence(), inputNode, switchCase.getNode(), generator);
        }
      }
      RuleConsequence defaultConsequence = inlineSwitch.getDefaultConsequence();
      if (defaultConsequence == null) {
        generator.showErrorMessage(inputNode, null, inlineSwitch.getNode(), "no default consequence in switch");
      } else {
        return getTemplateNodeFromRuleConsequence(defaultConsequence, inputNode, defaultConsequence.getNode(), generator);
      }

    } else {
      generator.showErrorMessage(inputNode, null, ruleConsequence.getNode(), "unsupported rule consequence");
    }

    return null;
  }

  public static List<SNode> applyReductionRule(SNode inputNode, Reduction_MappingRule rule, TemplateGenerator generator) throws DismissTopMappingRuleException {
    generator.getGeneratorSessionContext().getGenerationTracer().pushRule(rule.getNode());
    try {
      return applyReductionRule_internal(inputNode, rule, generator);
    } catch (AbandonRuleInputException e) {
      return new ArrayList<SNode>(1);
    } finally {
      generator.getGeneratorSessionContext().getGenerationTracer().closeRule(rule.getNode());
    }
  }

  private static List<SNode> applyReductionRule_internal(SNode inputNode, Reduction_MappingRule rule, TemplateGenerator generator) throws DismissTopMappingRuleException, AbandonRuleInputException {
    SNode reductionTemplateNode = null;
    String ruleMappingName = getMappingName(rule, null);
    String mappingName = null;
    RuleConsequence ruleConsequence = rule.getRuleConsequence();
    if (ruleConsequence != null) {
      Pair<SNode, String> nodeAndMappingName = getTemplateNodeFromRuleConsequence(ruleConsequence, inputNode, rule.getNode(), generator);
      if (nodeAndMappingName == null) {
        generator.showErrorMessage(inputNode, null, ruleConsequence.getNode(), "error processing reduction rule consequence");
        return null;
      }
      reductionTemplateNode = nodeAndMappingName.o1;
      mappingName = nodeAndMappingName.o2 != null ? nodeAndMappingName.o2 : ruleMappingName;
    } else {
      // old
      TemplateDeclaration template = rule.getTemplate();
      if (template == null) {
        generator.showErrorMessage(inputNode, null, rule.getNode(), "error processing reduction rule: no template");
        return null;
      }

      TemplateFragment fragment = getFragmentFromTemplate(template, inputNode, rule.getNode(), generator);
      if (fragment != null) {
        reductionTemplateNode = fragment.getParent().getNode();
        mappingName = getMappingName(fragment, ruleMappingName);
      }
    }

    if (reductionTemplateNode == null) {
      generator.showErrorMessage(inputNode, null, rule.getNode(), "error processing reduction rule");
      return new ArrayList<SNode>();
    }

    try {
      return TemplateProcessor.createOutputNodesForTemplateNode(mappingName, reductionTemplateNode, inputNode, generator);
    } catch (DismissTopMappingRuleException e) {
      throw e;
    } catch (TemplateProcessingFailureException e) {
      generator.showErrorMessage(inputNode, reductionTemplateNode, rule.getNode(), "error processing reduction rule");
    } catch (Throwable t) {
      LOG.error(t, BaseAdapter.fromNode(reductionTemplateNode));
      generator.showErrorMessage(inputNode, reductionTemplateNode, rule.getNode(), "error processing reduction rule");
    }
    return new ArrayList<SNode>(1);
  }
}