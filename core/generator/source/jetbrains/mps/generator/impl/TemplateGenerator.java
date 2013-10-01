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
import jetbrains.mps.generator.GenerationOptions;
import jetbrains.mps.generator.GenerationSessionContext;
import jetbrains.mps.generator.GenerationTracerUtil;
import jetbrains.mps.generator.IGenerationTracer;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.impl.FastRuleFinder.BlockedReductionsData;
import jetbrains.mps.generator.impl.TemplateProcessor.TemplateProcessingFailureException;
import jetbrains.mps.generator.impl.dependencies.DependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.DependenciesReadListener;
import jetbrains.mps.generator.impl.dependencies.IncrementalDependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.RootDependenciesBuilder;
import jetbrains.mps.generator.impl.reference.PostponedReference;
import jetbrains.mps.generator.impl.reference.ReferenceInfo_CopiedInputNode;
import jetbrains.mps.generator.impl.template.DeltaBuilder;
import jetbrains.mps.generator.impl.template.QueryExecutionContextWithDependencyRecording;
import jetbrains.mps.generator.impl.template.QueryExecutionContextWithTracing;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateCreateRootRule;
import jetbrains.mps.generator.runtime.TemplateDropRootRule;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import jetbrains.mps.generator.runtime.TemplateWeavingRule;
import jetbrains.mps.generator.template.DefaultQueryExecutionContext;
import jetbrains.mps.generator.template.QueryExecutionContext;
import jetbrains.mps.generator.template.TracingUtil;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import jetbrains.mps.smodel.CopyUtil;
import jetbrains.mps.smodel.DynamicReference;
import jetbrains.mps.smodel.MPSModuleRepository;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.smodel.StaticReference;
import jetbrains.mps.util.performance.IPerformanceTracer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeReference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by: Sergey Dmitriev
 * Date: Jan 23, 2007
 * <p/>
 * Created once per micro-step.
 */
public class TemplateGenerator extends AbstractTemplateGenerator {

  private boolean myChanged = false;
  private final RuleManager myRuleManager;
  private final DelayedChanges myDelayedChanges;
  private final Map<SNode, SNode> myNewToOldRoot = new HashMap<SNode, SNode>();
  private final Map<SNode, Object> myAdditionalInputNodes = new ConcurrentHashMap<SNode, Object>();
  protected final List<SNode> myOutputRoots;

  private final QueryExecutionContext myExecutionContext;
  private Map<DependenciesReadListener, QueryExecutionContext> myExecutionContextMap;

  private final boolean myIsStrict;
  private boolean myAreMappingsReady = false;

  /* cached session data */
  private BlockedReductionsData myReductionData;

  private final IGenerationTracer myGenerationTracer;
  private final IPerformanceTracer ttrace;
  private final DependenciesBuilder myDependenciesBuilder;

  private DeltaBuilder myDeltaBuilder;

  public TemplateGenerator(GenerationSessionContext operationContext, ProgressMonitor progressMonitor,
                           IGeneratorLogger logger, RuleManager ruleManager,
                           SModel inputModel, SModel outputModel, GenerationOptions options,
                           DependenciesBuilder dependenciesBuilder, IPerformanceTracer performanceTracer) {

    super(operationContext, progressMonitor, logger, inputModel, outputModel, options.isShowBadChildWarning());
    myRuleManager = ruleManager;
    myGenerationTracer = getGeneratorSessionContext().getGenerationTracer();
    myIsStrict = options.isStrictMode();
    myDelayedChanges = new DelayedChanges(this);
    myDependenciesBuilder = dependenciesBuilder;
    ttrace = performanceTracer;
    myOutputRoots = new ArrayList<SNode>();
    myExecutionContext = options.getTracingMode() >= GenerationOptions.TRACE_LANGS
      ? new QueryExecutionContextWithTracing(new DefaultQueryExecutionContext(this), performanceTracer)
      : new DefaultQueryExecutionContext(this);

  }

  public boolean apply(boolean isPrimary) throws GenerationFailureException, GenerationCanceledException {
    checkMonitorCanceled();
    myAreMappingsReady = false;

    ttrace.push("reductions", false);
    applyReductions(isPrimary);
    ttrace.pop();

    if (myDeltaBuilder != null) {
      myDeltaBuilder.dump();
      myDeltaBuilder = null;
    }

    myAreMappingsReady = true;
    myChanged |= myDependenciesBuilder.isStepRequired(); // TODO optimize: if step is required, it should be the last step

    // optimization: no changes? quit
    if (!isPrimary && !myChanged && myDelayedChanges.isEmpty() && !myRuleManager.hasWeavings()) {
      return false;
    }

    // publish roots
    for (SNode outputRoot : myOutputRoots) {
      myOutputModel.addRootNode(outputRoot);
    }

    // reload "required" roots from cache
    ttrace.push("reloading roots from cache", false);
    myDependenciesBuilder.reloadRequired(getMappings());
    ttrace.pop();

    // weaving
    ttrace.push("weavings", false);
    applyWeaving_MappingRules();
    ttrace.pop();

    // optimization: no changes? quit
    if (!isPrimary && !myChanged && myDelayedChanges.isEmpty()) {
      return false;
    }

    // execute mapper in all $MAP_SRC$/$MAP_SRCL$
    ttrace.push("delayed mappings", false);
    myDelayedChanges.doAllChanges();
    ttrace.pop();

    if (myChanged || isPrimary) {
      // new unresolved references could appear after applying reduction rules (all delayed changes should be done before this, like replacing children)
      ttrace.push("restoring references", false);
      revalidateAllReferences();
      ttrace.pop();
      checkMonitorCanceled();

      // advance blocked reduction data
      getBlockedReductionsData().advanceStep();
    }
    return myChanged;
  }

  protected void applyReductions(boolean isPrimary) throws GenerationCanceledException, GenerationFailureException {
    // create all roots
    if (isPrimary) {
      ttrace.push("create roots", false);

      final QueryExecutionContext executionContext = getExecutionContext(null);
      if (executionContext != null) {
        TemplateExecutionEnvironment environment = new TemplateExecutionEnvironmentImpl(this, executionContext, new ReductionContext());
        for (TemplateCreateRootRule rule : myRuleManager.getCreateRootRules()) {
          checkMonitorCanceled();
          applyCreateRoot(rule, environment);
        }
      }
      ttrace.pop();
    }

    // root mapping rules
    ttrace.push("root mappings", false);
    ArrayList<SNode> rootsConsumed = new ArrayList<SNode>();
    for (TemplateRootMappingRule rule : myRuleManager.getRoot_MappingRules()) {
      checkMonitorCanceled();
      applyRootRule(rule, rootsConsumed);
    }
    ArrayList<SNode> rootsToCopy = new ArrayList<SNode>();
    for (SNode root : myInputModel.getRootNodes()) {
      rootsToCopy.add(root);
    }
    rootsToCopy.removeAll(rootsConsumed);
    ttrace.pop();

    if (!isPrimary && !myChanged && !isIncremental() && Boolean.FALSE.booleanValue()) {
      myDeltaBuilder = new DeltaBuilder();
    }
    // copy roots
    checkMonitorCanceled();
    getGeneratorSessionContext().clearCopiedRootsSet();
    for (SNode rootToCopy : rootsToCopy) {
      QueryExecutionContext context = getExecutionContext(rootToCopy);
      if (context != null) {
        TemplateExecutionEnvironmentImpl rootenv = new TemplateExecutionEnvironmentImpl(this, context, new ReductionContext());
        copyRootInputNode(rootToCopy, rootenv);
      }
    }
  }

  private void applyCreateRoot(TemplateCreateRootRule rule, TemplateExecutionEnvironment environment) throws GenerationFailureException, GenerationCanceledException {
    try {
      if (environment.getQueryExecutor().isApplicable(rule, environment, null)) {
        myGenerationTracer.pushRule(rule.getRuleNode());
        try {
          createRootNodeByRule(rule, environment);
        } finally {
          myGenerationTracer.closeRule(rule.getRuleNode());
        }
      }
    } catch (GenerationException e) {
      if (e instanceof GenerationCanceledException) throw (GenerationCanceledException) e;
      if (e instanceof GenerationFailureException) throw (GenerationFailureException) e;
      showErrorMessage(null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "internal error: " + e.toString());
    }
  }

  private void applyRootRule(TemplateRootMappingRule rule, List<SNode> rootsConsumed) throws GenerationFailureException, GenerationCanceledException {
    String applicableConcept = rule.getApplicableConcept();
    if (applicableConcept == null) {
      showErrorMessage(null, null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "rule has no applicable concept defined");
      return;
    }
    boolean includeInheritors = rule.applyToInheritors();
    Iterable<SNode> inputNodes = ((jetbrains.mps.smodel.SModelInternal) myInputModel).getFastNodeFinder().getNodes(applicableConcept, includeInheritors);
    for (SNode inputNode : inputNodes) {
      // do not apply root mapping if root node has been copied from input model on previous micro-step
      // because some roots can be already mapped and copied as well (if some rule has 'keep root' = true)
      if (getGeneratorSessionContext().isCopiedRoot(inputNode)) continue;

      final QueryExecutionContext executionContext = getExecutionContext(inputNode);
      if (executionContext != null) {
        TemplateExecutionEnvironment environment = new TemplateExecutionEnvironmentImpl(this, executionContext);
        try {
          if (executionContext.isApplicable(rule, environment, new DefaultTemplateContext(inputNode))) {
            myGenerationTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(inputNode));
            myGenerationTracer.pushRule(rule.getRuleNode());
            try {
              boolean copyRootOnFailure = false;
              if (inputNode.getModel() != null && inputNode.getParent() == null && !rule.keepSourceRoot()) {
                rootsConsumed.add(inputNode);
                copyRootOnFailure = true;
              }
              createRootNodeByRule(rule, inputNode, copyRootOnFailure, environment);
            } finally {
              myGenerationTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(inputNode));
            }
          }
        } catch (GenerationException e) {
          if (e instanceof GenerationCanceledException) throw (GenerationCanceledException) e;
          if (e instanceof GenerationFailureException) throw (GenerationFailureException) e;
          showErrorMessage(null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "internal error: " + e.toString());
        }
      }
    }
  }

  protected void createRootNodeByRule(TemplateCreateRootRule rule, TemplateExecutionEnvironment environment) throws GenerationCanceledException, GenerationFailureException {
    try {
      Collection<SNode> outputNodes = environment.getQueryExecutor().applyRule(rule, environment);
      if (outputNodes == null) {
        return;
      }

      for (SNode outputNode : outputNodes) {
        registerRoot(outputNode, null, rule.getRuleNode(), false);
        setChanged();
      }
    } catch (DismissTopMappingRuleException ex) {
      // it's ok, just continue
    } catch (TemplateProcessingFailureException e) {
      showErrorMessage(null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "couldn't create root node");
    } catch (GenerationException e) {
      if (e instanceof GenerationCanceledException) throw (GenerationCanceledException) e;
      if (e instanceof GenerationFailureException) throw (GenerationFailureException) e;
      showErrorMessage(null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "internal error: " + e.toString());
    }
  }

  protected void createRootNodeByRule(TemplateRootMappingRule rule, SNode inputNode, boolean copyRootOnFailure, TemplateExecutionEnvironment environment)
    throws GenerationCanceledException, GenerationFailureException {
    try {
      Collection<SNode> outputNodes = environment.getQueryExecutor().applyRule(rule, environment, new DefaultTemplateContext(inputNode));
      if (outputNodes == null) {
        return;
      }

      for (SNode outputNode : outputNodes) {
        registerRoot(outputNode, inputNode, rule.getRuleNode(), false);
        setChanged();
        // we copy user objects in reduction rules, root mapping rules are no different
        jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, outputNode);
      }

      if (inputNode.getModel() == getGeneratorSessionContext().getOriginalInputModel()) {
        for (SNode outputNode : outputNodes) {
          TracingUtil.putInputNode(outputNode, inputNode);
        }
      }

    } catch (DismissTopMappingRuleException e) {
      // it's ok, just continue
      if (copyRootOnFailure && inputNode.getModel() != null && inputNode.getParent() == null) {
        final FullCopyFacility copyFacility = new FullCopyFacility(this, environment);
        copyFacility.copyRootInputNode(inputNode);
        if (copyFacility.hasChanges()) {
          setChanged();
        }
      }
    } catch (TemplateProcessingFailureException e) {
      showErrorMessage(inputNode, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "couldn't create root node");
    } catch (GenerationException e) {
      if (e instanceof GenerationCanceledException) throw (GenerationCanceledException) e;
      if (e instanceof GenerationFailureException) throw (GenerationFailureException) e;
      showErrorMessage(inputNode, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "internal error: " + e.toString());
    }
  }

  protected void copyRootInputNode(@NotNull SNode inputRootNode, @NotNull TemplateExecutionEnvironment environment) throws GenerationFailureException, GenerationCanceledException {
    NodeCopyFacility copyProcessor;
    if (myDeltaBuilder == null) {
      copyProcessor = new FullCopyFacility(this, environment);
    } else {
      copyProcessor = new PartialCopyFacility(this, environment, myDeltaBuilder);
    }
    // check if can drop
    if (copyProcessor.checkDropRules(inputRootNode, myRuleManager.getDropRootRules())) {
      // FIXME apparently, dropping a root constitutes a change, however,
      // present MPS state doesn't handle these drops as model changes well.
      // E.g. generator templates have DropRootRule
//      setChanged();
      return;
    }
    copyProcessor.copyRootInputNode(inputRootNode);
    if(copyProcessor.hasChanges()) {
      setChanged();
    }
  }

  private void applyWeaving_MappingRules() throws GenerationFailureException, GenerationCanceledException {
    WeavingProcessor wp = new WeavingProcessor(this);
    for (TemplateWeavingRule rule : myRuleManager.getWeaving_MappingRules()) {
      checkMonitorCanceled();
      wp.apply(rule);
    }
  }


  @Override
  public boolean isDirty(SNode node) {
    RootDependenciesBuilder builder = myDependenciesBuilder.getRootBuilder(node);
    if (builder != null && builder.isUnchanged()) {
      return false;
    }
    return true;
  }

  @Override
  public SModel getOutputModel() {
    if (myDeltaBuilder != null) {
      return getInputModel();
    }
    return super.getOutputModel();
  }

  /*
     * Unsynchronized
     */
  @Nullable
  protected QueryExecutionContext getExecutionContext(SNode inputNode) {
    RootDependenciesBuilder builder = myDependenciesBuilder.getRootBuilder(inputNode);
    if (builder != null) {
      if (builder.isUnchanged()) {
        return null;
      }

      QueryExecutionContext value;
      if (myExecutionContextMap == null) {
        myExecutionContextMap = new HashMap<DependenciesReadListener, QueryExecutionContext>();
        value = null;
      } else {
        value = myExecutionContextMap.get(builder);
      }
      if (value == null) {
        value = new QueryExecutionContextWithDependencyRecording(myExecutionContext, builder);
        myExecutionContextMap.put(builder, value);
      }
      return value;
    }
    return getDefaultExecutionContext(inputNode);
  }

  protected QueryExecutionContext getDefaultExecutionContext(SNode inputNode) {
    return myExecutionContext;
  }

  @Nullable
  Collection<SNode> tryToReduce(SNode inputNode, @NotNull TemplateExecutionEnvironment env) throws GenerationFailureException, GenerationCanceledException {
    FastRuleFinder rf = myRuleManager.getRuleFinder();
    Collection<SNode> outputNodes = tryToReduce(rf, new DefaultTemplateContext(inputNode), env);
    if (outputNodes != null) {
      if (outputNodes.size() == 1) {
        // [artem] I have no idea why same mappings are not done for switch, but it's the way it goes from rev d552b27
        SNode reducedNode = outputNodes.iterator().next();
        // output node should be accessible via 'findCopiedNode'
        addCopiedOutputNodeForInputNode(inputNode, reducedNode);
        // preserve user objects
        if (TracingUtil.getInput(reducedNode) == null) {
          jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, reducedNode);
        }
        // keep track of 'original input node'
        if (inputNode.getModel() == getGeneratorSessionContext().getOriginalInputModel()) {
          TracingUtil.putInputNode(reducedNode, inputNode);
        }
      }
      return outputNodes;
    }
    return null;
  }

  @Nullable
  Collection<SNode> tryToReduce(@NotNull SNodeReference templateSwitch, TemplateContext context, String mappingName, @NotNull TemplateExecutionEnvironment env) throws GenerationFailureException, GenerationCanceledException {
    FastRuleFinder rf = myRuleManager.getRuleFinder(templateSwitch);
    Collection<SNode> outputNodes = tryToReduce(rf, context, env);
    if (outputNodes != null) {
      if (outputNodes.size() == 1) {
        SNode reducedNode = outputNodes.iterator().next();
        // register copied node
        registerMappingLabel(context.getInput(), mappingName, reducedNode);
      }
      return outputNodes;
    }
    return null;
  }

  /*
   * returns null if no reductions found
   */
  @Nullable
  private Collection<SNode> tryToReduce(FastRuleFinder ruleFinder, TemplateContext context, @NotNull TemplateExecutionEnvironment env) throws GenerationFailureException, GenerationCanceledException {
    assert this == env.getGenerator();
    SNode inputNode = context.getInput();
    TemplateReductionRule reductionRule = null;
    checkGenerationCanceledFast();
    // find rule
    TemplateReductionRule[] conceptRules = ruleFinder.findReductionRules(inputNode);
    if (conceptRules == null) {
      return null;
    }
    try {
      for (TemplateReductionRule rule : conceptRules) {
        reductionRule = rule;
        if (!getBlockedReductionsData().isReductionBlocked(inputNode, rule, env.getReductionContext())) {
          Collection<SNode> outputNodes = env.getQueryExecutor().tryToApply(rule, env, context);
          if (outputNodes != null) {
            return outputNodes;
          }
        }
      }

    } catch (DismissTopMappingRuleException ex) {
      // it's ok, just continue
      if (ex.isLoggingNeeded() && reductionRule != null) {
        SNode ruleNode = reductionRule.getRuleNode().resolve(MPSModuleRepository.getInstance());
        String messageText = "-- dismissed reduction rule: " + (ruleNode != null ? org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(ruleNode) : "unknown");
        if (ex.isInfo()) {
          myLogger.info(ruleNode, messageText);
        } else if (ex.isWarning()) {
          myLogger.warning(ruleNode, messageText);
        } else {
          myLogger.error(ruleNode, messageText);
        }
      }
    } catch (GenerationFailureException ex) {
      throw ex;
    } catch (GenerationCanceledException ex) {
      throw ex;
    } catch (GenerationException ex) {
      // ignore
    }
    return null;
  }

  protected void checkGenerationCanceledFast() throws GenerationCanceledException {
  }

  /**
   * @return never null
   */
  Collection<SNode> copySrc(String mappingName, @NotNull String templateNodeId, SNode inputNode, TemplateExecutionEnvironment env) throws GenerationFailureException, GenerationCanceledException {
    assert this == env.getGenerator();
    if (inputNode.getModel() != getInputModel() || inputNode.getModel() == null) {

      // adapt external node
      if (inputNode.getModel() != null) {
        // TODO fail in strict mode
        inputNode = CopyUtil.copy(inputNode);
        // TODO inputNode.changeModel();
      }

      synchronized (myAdditionalInputNodes) {
        if (!myAdditionalInputNodes.containsKey(inputNode)) {
          myAdditionalInputNodes.put(inputNode, Boolean.TRUE);
          for (SNode n : jetbrains.mps.util.SNodeOperations.getDescendants(inputNode, null)) {
            myAdditionalInputNodes.put(n, Boolean.TRUE);
          }
        }
      }
    }

    if (myDeltaBuilder != null) {
      myDeltaBuilder.enterNestedCopySrc(inputNode);
    }
    myGenerationTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(inputNode));
    try {
      Collection<SNode> outputNodes = tryToReduce(inputNode, env);
      if (outputNodes != null) {
        if (mappingName != null && outputNodes.size() == 1) {
          registerMappingLabel(inputNode, mappingName, outputNodes.iterator().next());
        }
        return outputNodes;
      }
      FullCopyFacility copyFacility = new FullCopyFacility(this, env, new HashSet<SNode>(myAdditionalInputNodes.keySet()));
      SNode copiedNode = copyFacility.copyInputNode(inputNode);
      addOutputNodeByInputAndTemplateNode(inputNode, templateNodeId, copiedNode);
      registerMappingLabel(inputNode, mappingName, copiedNode);
      return Collections.singletonList(copiedNode);
    } finally {
      myGenerationTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(inputNode));
      if (myDeltaBuilder != null) {
        myDeltaBuilder.leaveNestedCopySrc(inputNode);
      }
    }
  }

  private void revalidateAllReferences() throws GenerationCanceledException {
    // replace all postponed references
    for (SNode root : myOutputModel.getRootNodes()) {
      checkMonitorCanceled();
      revalidateAllReferences(root);
    }
  }

  private void revalidateAllReferences(SNode node) throws GenerationCanceledException {
    for (SReference ref : node.getReferences()) {
      if (!(ref instanceof PostponedReference)) continue;
      ((PostponedReference) ref).validateAndReplace();
    }

    for (org.jetbrains.mps.openapi.model.SNode child : jetbrains.mps.util.SNodeOperations.getChildren(node)) {
      revalidateAllReferences(child);
    }
  }

  /**
   * prevents applying of reduction rules which have already been applied to the input node.
   */
  void blockReductionsForCopiedNode(SNode inputNode, SNode outputNode, ReductionContext reductionContext) {
    getBlockedReductionsData().blockReductionsForCopiedNode(inputNode, outputNode, reductionContext);
  }

  BlockedReductionsData getBlockedReductionsData() {
    if (myReductionData == null) {
      Object blockedReductions = getGeneratorSessionContext().getStepObject(BlockedReductionsData.KEY);
      if (blockedReductions == null) {
        blockedReductions = new BlockedReductionsData();
        getGeneratorSessionContext().putStepObject(BlockedReductionsData.KEY, blockedReductions);
      }
      myReductionData = (BlockedReductionsData) blockedReductions;
    }
    return myReductionData;
  }

  IGenerationTracer getGenerationTracer() {
    return myGenerationTracer;
  }

  DelayedChanges getDelayedChanges() {
    return myDelayedChanges;
  }

  RuleManager getRuleManager() {
    return myRuleManager;
  }

  public TemplateSwitchMapping getSwitch(SNodeReference switch_) {
    return myRuleManager.getSwitch(switch_);
  }

  @Override
  public boolean areMappingsAvailable() {
    return myIsStrict ? myAreMappingsReady : true;
  }

  @Override
  public boolean isStrict() {
    return myIsStrict;
  }

  void setChanged() {
    myChanged = true;
  }

  protected void registerRoot(@NotNull SNode outputRoot, SNode inputNode, SNodeReference templateNode, boolean isCopied) {
    myOutputRoots.add(outputRoot);
    myNewToOldRoot.put(outputRoot, inputNode);
    myDependenciesBuilder.registerRoot(outputRoot, inputNode);
    if (isCopied) {
      getGeneratorSessionContext().registerCopiedRoot(outputRoot);
    }
  }

  void rootReplaced(SNode old, SNode new_) {
    myDependenciesBuilder.rootReplaced(old, new_);
  }

  public SNode getOriginalRootByGenerated(SNode root) {
    SNode node = myNewToOldRoot.get(root);
    if (node == null) return null;
    if (node.getModel() == null) return null;
    if (node.getParent() == null) return node;
    return node.getContainingRoot();
  }

  public boolean isIncremental() {
    return myDependenciesBuilder instanceof IncrementalDependenciesBuilder;
  }

  public IPerformanceTracer getPerformanceTracer() {
    return ttrace;
  }

  private abstract static class NodeCopyFacility {
    protected boolean myIsChanged = false;
    protected final TemplateExecutionEnvironment myEnvironment;

    protected NodeCopyFacility(TemplateExecutionEnvironment environment) {
      myEnvironment = environment;
    }
    public final IGeneratorLogger getLogger() {
      return myEnvironment.getLogger();
    }
    public final boolean hasChanges() {
      return myIsChanged;
    }

    /**
     * @return true if one of drop rules matched
     */
    public final boolean checkDropRules(SNode inputRootNode, Iterable<TemplateDropRootRule> rules) throws GenerationFailureException {
      for (TemplateDropRootRule dropRootRule : rules) {
        if (isApplicableDropRootRule(inputRootNode, dropRootRule)) {
          drop(inputRootNode, dropRootRule);
          return true;
        }
      }
      return false;
    }

    protected abstract void drop(SNode inputRootNode, TemplateDropRootRule rule);

    public abstract void copyRootInputNode(SNode inputRoot) throws GenerationFailureException, GenerationCanceledException;

    private boolean isApplicableDropRootRule(SNode inputRootNode, TemplateDropRootRule rule) throws GenerationFailureException {
      String applicableConcept = rule.getApplicableConcept();
      if (applicableConcept == null) {
        myEnvironment.getGenerator().showErrorMessage(null, null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "rule has no applicable concept defined");
        return false;
      }

      try {
        if (inputRootNode.getConcept().isSubConceptOf(SConceptRepository.getInstance().getConcept(applicableConcept))) {
          return myEnvironment.getQueryExecutor().isApplicable(rule, myEnvironment, new DefaultTemplateContext(inputRootNode));
        }
      } catch (GenerationFailureException ex) {
        throw ex;
      } catch (GenerationException e) {
        myEnvironment.getGenerator().showErrorMessage(null, rule.getRuleNode().resolve(MPSModuleRepository.getInstance()), "internal error: " + e.toString());
      }
      return false;
    }
  }

  private class PartialCopyFacility extends  NodeCopyFacility {
    private final TemplateGenerator myGenerator;
    private final DeltaBuilder myDeltaBuilder;

    public PartialCopyFacility(TemplateGenerator generator, TemplateExecutionEnvironment environment, @NotNull DeltaBuilder deltaBuilder) {
      super(environment);
      myGenerator = generator;
      myDeltaBuilder = deltaBuilder;
    }

    @Override
    protected void drop(SNode inputRootNode, TemplateDropRootRule rule) {
      myDeltaBuilder.enterInputRoot(inputRootNode);
      myDeltaBuilder.deleteInputRoot(inputRootNode);
      myDeltaBuilder.leaveInputRoot(inputRootNode);
    }

    @Override
    public void copyRootInputNode(SNode inputRootNode) throws GenerationFailureException, GenerationCanceledException {
      myDeltaBuilder.enterInputRoot(inputRootNode);
      try {
        visitInputNode(inputRootNode);
      } finally {
        myDeltaBuilder.leaveInputRoot(inputRootNode);
      }
    }

    private void visitInputNode(SNode inputNode) throws GenerationFailureException, GenerationCanceledException {
      for (SNode inputChildNode : inputNode.getChildren()) {
        String childRole = inputChildNode.getRoleInParent();
        assert childRole != null;
        Collection<SNode> outputChildNodes = myGenerator.tryToReduce(inputChildNode, myEnvironment);
        if (outputChildNodes != null) {
          myDeltaBuilder.registerSubTree(inputNode, childRole, outputChildNodes);
          myIsChanged = true;
        }
      }
    }
  }

  private static class FullCopyFacility extends NodeCopyFacility {
    private final TemplateGenerator myGenerator;
    private final IGenerationTracer myGenerationTracer;
    private final Set<SNode> myAdditionalInputNodes;
    private final SModel myInputModel;
    private final SModelReference myOutputModelRef;

    public FullCopyFacility(TemplateGenerator generator, TemplateExecutionEnvironment environment) {
      this(generator, environment, Collections.<SNode>emptySet());
    }
    public FullCopyFacility(TemplateGenerator generator, TemplateExecutionEnvironment environment, Set<SNode> additionalInputs) {
      super(environment);
      myGenerator = generator;
      myAdditionalInputNodes = additionalInputs;
      myGenerationTracer = environment.getTracer();
      myInputModel = generator.getInputModel();
      myOutputModelRef = generator.getOutputModel().getReference();
    }

    @Override
    protected void drop(SNode inputRootNode, TemplateDropRootRule rule) {
      myGenerationTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(inputRootNode));
      myGenerationTracer.pushRule(rule.getRuleNode());
      myGenerationTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(inputRootNode));
    }

    @Override
    public void copyRootInputNode(SNode inputRootNode) throws GenerationFailureException, GenerationCanceledException {
      // copy
      myGenerationTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(inputRootNode));
      try {
        SNode root = copyInputNode(inputRootNode);
        myGenerator.registerRoot(root, inputRootNode, null, true);
      } finally {
        myGenerationTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(inputRootNode));
      }
    }

    public SNode copyInputNode(SNode inputNode) throws GenerationFailureException, GenerationCanceledException {
      // no reduction found - do node copying
      myGenerationTracer.pushCopyOperation();
      jetbrains.mps.smodel.SNode outputNode = new jetbrains.mps.smodel.SNode(inputNode.getConcept().getQualifiedName());
      if (inputNode.getNodeId() != null && inputNode.getModel() != null) {
        outputNode.setId(inputNode.getNodeId());
      }
      myGenerator.blockReductionsForCopiedNode(inputNode, outputNode, myEnvironment.getReductionContext()); // prevent infinite applying of the same reduction to the 'same' node.

      // output node should be accessible via 'findCopiedNode'
      myGenerator.addCopiedOutputNodeForInputNode(inputNode, outputNode);

      jetbrains.mps.util.SNodeOperations.copyProperties(inputNode, outputNode);
      jetbrains.mps.util.SNodeOperations.copyUserObjects(inputNode, outputNode);
      // keep track of 'original input node'
      if (inputNode.getModel() == myGenerator.getGeneratorSessionContext().getOriginalInputModel()) {
        TracingUtil.putInputNode(outputNode, inputNode);
      }
      for (SReference inputReference : inputNode.getReferences()) {
        if (inputNode.getModel() != null) {
          boolean external = true;
          if (inputReference instanceof PostponedReference){
            external = false;
          } else if (inputNode.getModel().getReference().equals(inputReference.getTargetSModelReference())){
            external = false;
          }
          if (inputReference instanceof DynamicReference || external) {
            // dynamic & external references don't need validation => replace input model with output
            SModelReference targetModelReference = external ? inputReference.getTargetSModelReference() : myOutputModelRef;
            if (inputReference instanceof StaticReference) {
              if (targetModelReference == null) {
                getLogger().error(inputNode,
                    "broken reference '" + inputReference.getRole() + "' in " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(inputNode) +
                        " (target model is null)",
                    GeneratorUtil.describeIfExists(inputNode, "input node"));
                continue;
              }

              SReference reference = new StaticReference(
                  inputReference.getRole(),
                  outputNode,
                  targetModelReference,
                  inputReference.getTargetNodeId(),
                  ((StaticReference) inputReference).getResolveInfo());
              outputNode.setReference(reference.getRole(), reference);
            } else if (inputReference instanceof DynamicReference) {
              DynamicReference outputReference = new DynamicReference(
                  inputReference.getRole(),
                  outputNode,
                  targetModelReference,
                  ((DynamicReference) inputReference).getResolveInfo());
              outputReference.setOrigin(((DynamicReference) inputReference).getOrigin());
              outputNode.setReference(outputReference.getRole(), outputReference);
            } else {
              getLogger().error(inputNode, "internal error: can't clone reference '" + inputReference.getRole() + "' in " +
                  org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(inputNode),
                  new ProblemDescription(inputNode, " -- was reference class: " + inputReference.getClass().getName()));
            }
            continue;
          }
        }

        SNode inputTargetNode = jetbrains.mps.util.SNodeOperations.getTargetNodeSilently(inputReference);
        if (inputTargetNode == null) {
          getLogger().error(inputNode,
              "broken reference '" + inputReference.getRole() + "' in " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(inputNode),
              GeneratorUtil.describeIfExists(inputNode, "input node"));
          continue;
        }

        if (inputTargetNode.getModel() != null && inputTargetNode.getModel().equals(myInputModel) || myAdditionalInputNodes.contains(inputTargetNode)) {
          ReferenceInfo_CopiedInputNode refInfo = new ReferenceInfo_CopiedInputNode(
              inputReference.getRole(),
              outputNode,
              inputReference.getSourceNode(),
              inputTargetNode);
          PostponedReference reference = new PostponedReference(refInfo, myGenerator);
          outputNode.setReference(reference.getRole(), reference);
        } else if (inputTargetNode.getModel() != null) {
          SNodeAccessUtil.setReferenceTarget(outputNode, inputReference.getRole(), inputTargetNode);
        } else {
          getLogger().error(inputNode,
              "broken reference '" + inputReference.getRole() + "' in " + org.jetbrains.mps.openapi.model.SNodeUtil.getDebugText(inputNode) +
                  " (unregistered target node)",
              GeneratorUtil.describeIfExists(inputNode, "input node"));
        }
      }

      for (SNode inputChildNode : inputNode.getChildren()) {
        String childRole = inputChildNode.getRoleInParent();
        assert childRole != null;
        myGenerationTracer.pushInputNode(GenerationTracerUtil.getSNodePointer(inputChildNode));
        try {
          Collection<SNode> outputChildNodes = myGenerator.tryToReduce(inputChildNode, myEnvironment);
          if (outputChildNodes != null) {
            myIsChanged = true;
            RoleValidator rv = myGenerator.getChildRoleValidator(outputNode, childRole);
            for (SNode outputChildNode : outputChildNodes) {
              // check child
              RoleValidationStatus status = rv.validate(outputChildNode);
              if (status != null) {
                status.reportProblem(false, outputNode, "", GeneratorUtil.describe(inputNode, "input"));
              }
              outputNode.addChild(childRole, outputChildNode);
            }
          } else {
            outputNode.addChild(childRole, copyInputNode(inputChildNode));
          }
        } finally {
          myGenerationTracer.closeInputNode(GenerationTracerUtil.getSNodePointer(inputChildNode));
        }
      }

      myGenerationTracer.pushOutputNode(new SNodePointer(myOutputModelRef, outputNode.getNodeId()));
      return outputNode;
    }
  }

}
