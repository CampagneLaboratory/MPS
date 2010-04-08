package jetbrains.mps.generator.template;

import jetbrains.mps.generator.GenerationFailureException;
import jetbrains.mps.generator.impl.TemplateContext;
import jetbrains.mps.lang.generator.structure.*;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNode;
import org.jetbrains.annotations.NotNull;

import java.util.List;

/**
 * Evgeny Gryaznov, Feb 24, 2010
 */
public interface IQueryExecutor {

  boolean checkCondition(BaseMappingRule_Condition condition, boolean required, SNode inputNode, SNode ruleNode) throws GenerationFailureException;

  GeneratedMatchingPattern checkIfApplicable(PatternReduction_MappingRule patternRule, SNode inputNode) throws GenerationFailureException;

  boolean checkCondition(CreateRootRule createRootRule) throws GenerationFailureException;

  boolean checkCondition(DropRootRule_Condition condition, SNode inputRootNode, SNode ruleNode) throws GenerationFailureException;

  boolean checkConditionForIfMacro(SNode inputNode, IfMacro ifMacro, @NotNull TemplateContext context) throws GenerationFailureException;

  void executeMappingScript(MappingScript mappingScript, SModel model) throws GenerationFailureException;

  SNode executeMapSrcNodeMacro(SNode inputNode, SNode mapSrcNodeOrListMacro, SNode parentOutputNode, @NotNull TemplateContext context) throws GenerationFailureException;

  void executeMapSrcNodeMacro_PostProc(SNode inputNode, SNode mapSrcNodeOrListMacro, SNode outputNode, @NotNull TemplateContext context) throws GenerationFailureException;

  void expandPropertyMacro(PropertyMacro propertyMacro, SNode inputNode, SNode templateNode, SNode outputNode, @NotNull TemplateContext context) throws GenerationFailureException;

  SNode evaluateSourceNodeQuery(SNode inputNode, SNode macroNode, SourceSubstituteMacro_SourceNodeQuery query, @NotNull TemplateContext context);
  
  Object evaluateArgumentQuery(SNode inputNode, TemplateArgumentQuery query, TemplateContext context);

  List<SNode> evaluateSourceNodesQuery(SNode inputNode, SNode ruleNode, SNode macroNode, SourceSubstituteMacro_SourceNodesQuery query, TemplateContext context);

  SNode getContextNodeForTemplateFragment(SNode inputNode, SNode templateFragmentNode, SNode mainContextNode);

  SNode getContextNodeForWeavingingRule(SNode inputNode, Weaving_MappingRule rule);

  Object getReferentTarget(SNode node, SNode outputNode, ReferenceMacro refMacro, TemplateContext context);
}
