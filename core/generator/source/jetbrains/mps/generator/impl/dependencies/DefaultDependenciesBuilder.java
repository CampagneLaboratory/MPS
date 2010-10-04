package jetbrains.mps.generator.impl.dependencies;

import jetbrains.mps.generator.ModelDigestHelper;
import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.impl.GeneratorMappings;
import jetbrains.mps.generator.impl.cache.IntermediateModelsCache;
import jetbrains.mps.generator.impl.cache.PersistableMappings;
import jetbrains.mps.generator.impl.cache.TransientModelWithMetainfo;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeId;
import org.jetbrains.annotations.Nullable;

import java.util.*;

/**
 * Dependencies collector. Created once per model generation.
 * <p/>
 * Evgeny Gryaznov, May 11, 2010
 */
public class DefaultDependenciesBuilder implements DependenciesBuilder {

  private static final Logger LOG = Logger.getLogger(DefaultDependenciesBuilder.class);

  /* generation data */
  private final Map<SNode, RootDependenciesBuilder> myRootBuilders = new HashMap<SNode, RootDependenciesBuilder>();
  private final String myModelHash;
  private final IntermediateModelsCache myCache;
  private RootDependenciesBuilder myConditionalsBuilder;
  private RootDependenciesBuilder[] myAllBuilders;

  /* next step input -> original */
  Map<SNode, SNode> nextStepToOriginalMap;

  /* current step data */
  Map<SNode, SNode> currentToOriginalMap;
  SModel currentInputModel;
  SModel currentOutputModel;
  private TransientModelWithMetainfo myCachedModel;
  private int myMajorStep = -1;
  private int myMinorStep = -1;

  /* make data */
  private Map<String, SNode> myUnchangedSet;
  private Map<String, SNode> myRequiredSet;

  public DefaultDependenciesBuilder(SModel originalInputModel, @Nullable Map<String, String> generationHashes,
                                    IntermediateModelsCache cache) {
    currentInputModel = originalInputModel;
    myCache = cache;
    currentOutputModel = null;
    myModelHash = generationHashes == null ? null : generationHashes.get(ModelDigestHelper.FILE);
    initData(getRoots(originalInputModel), generationHashes);
  }

  private void initData(SNode[] roots, Map<String, String> generationHashes) {
    myConditionalsBuilder = new RootDependenciesBuilder(null, this, generationHashes != null ? generationHashes.get(ModelDigestHelper.HEADER) : "");
    currentToOriginalMap = new HashMap<SNode, SNode>(roots.length * 3 / 2);
    myAllBuilders = new RootDependenciesBuilder[roots.length + 1];
    int e = 0;
    myAllBuilders[e++] = myConditionalsBuilder;
    for (SNode root : roots) {
      myAllBuilders[e] = new RootDependenciesBuilder(root, this, generationHashes != null ? generationHashes.get(root.getId()) : null);
      myRootBuilders.put(root, myAllBuilders[e++]);
      currentToOriginalMap.put(root, root);
    }
  }

  public void propagateDependencies(Set<SNode> unchangedRoots, Set<SNode> requiredRoots, boolean conditionalsUnchanged, boolean conditionalsRequired, GenerationDependencies saved) {
    myUnchangedSet = new HashMap<String, SNode>(unchangedRoots.size() + 1);
    myRequiredSet = new HashMap<String, SNode>(requiredRoots.size() + 1);
    for (SNode root : unchangedRoots) {
      propagateDependencies(getRootBuilder(root), saved.getDependenciesFor(root.getId()), false);
    }
    for (SNode root : requiredRoots) {
      propagateDependencies(getRootBuilder(root), saved.getDependenciesFor(root.getId()), true);
    }
    if (conditionalsUnchanged || conditionalsRequired) {
      propagateDependencies(getRootBuilder(null), saved.getDependenciesFor(ModelDigestHelper.HEADER), conditionalsRequired);
    }
  }

  private void propagateDependencies(RootDependenciesBuilder builder, GenerationRootDependencies deps, boolean isRequired) {
    assert deps.getHash().equals(builder.getHash());
    builder.loadDependencies(deps);
    SNode root = builder.getOriginalRoot();
    (isRequired ? myRequiredSet : myUnchangedSet).put(root != null ? root.getId() : TransientModelWithMetainfo.CONDITIONALS_ID, root);
  }

  private static SNode[] getRoots(SModel model) {
    List<SNode> roots = model.getRoots();
    return roots.toArray(new SNode[roots.size()]);
  }

  @Override
  public void scriptApplied(SModel newmodel) {
    Map<SNodeId, SNode> oldidsToOriginal = new HashMap<SNodeId, SNode>();
    for (Map.Entry<SNode, SNode> entry : currentToOriginalMap.entrySet()) {
      oldidsToOriginal.put(entry.getKey().getSNodeId(), entry.getValue());
    }
    currentToOriginalMap = new HashMap<SNode, SNode>();
    for (SNode root : newmodel.getRoots()) {
      SNodeId id = root.getSNodeId();
      SNode original = oldidsToOriginal.get(id);
      currentToOriginalMap.put(root, original);
    }
    currentInputModel = newmodel;
    currentOutputModel = null;
  }

  @Override
  public void registerRoot(SNode outputRoot, SNode inputNode) {
    if (nextStepToOriginalMap == null) {
      nextStepToOriginalMap = new HashMap<SNode, SNode>();
    }
    if (inputNode == null) {
      nextStepToOriginalMap.put(outputRoot, null);
      return;
    }
    SNode originalRoot = currentToOriginalMap.get(inputNode.getTopmostAncestor());
    nextStepToOriginalMap.put(outputRoot, originalRoot);
  }

  @Override
  public void updateModel(SModel newInputModel) {
    if (nextStepToOriginalMap != null) {
      currentToOriginalMap = nextStepToOriginalMap;
      nextStepToOriginalMap = null;
    } else {
      currentToOriginalMap = new HashMap<SNode, SNode>();
    }
    currentInputModel = newInputModel;
    currentOutputModel = null;
  }

  @Override
  public void dropModel() {
    nextStepToOriginalMap = null;
    currentOutputModel = null;
  }

  public void setOutputModel(SModel model, int majorStep, int minorStep) {
    currentOutputModel = model;
    myMajorStep = majorStep;
    myMinorStep = minorStep;
    myCachedModel = null;
  }

  public SNode getOriginalForOutput(SNode outputNode) {
    if (nextStepToOriginalMap == null) {
      return null;
    }
    return nextStepToOriginalMap.get(outputNode);
  }

  @Override
  public SNode getOriginalForInput(SNode inputNode) {
    if (currentToOriginalMap == null) {
      return null;
    }
    return currentToOriginalMap.get(inputNode);
  }

  @Override
  public RootDependenciesBuilder getRootBuilder(SNode inputNode) {
    if (inputNode == null || !inputNode.isRegistered()) {
      return myConditionalsBuilder;
    }
    inputNode = inputNode.getTopmostAncestor();
    SNode originalRoot = currentToOriginalMap.get(inputNode);
    if (originalRoot != null) {
      return myRootBuilders.get(originalRoot);
    } else if (currentToOriginalMap.containsKey(inputNode)) {
      return myConditionalsBuilder;
    }
    // shouldn't happen
    LOG.error("consistency problem in dependencies map");
    return null;
  }

  @Override
  public GenerationDependencies getResult(IOperationContext operationContext) {
    return GenerationDependencies.fromData(currentToOriginalMap, myAllBuilders, myModelHash, operationContext);
  }

  /* working with cache */

  private void loadCachedModel() throws GenerationFailureException {
    // TODO if(myMinorStep >= stepCount) copy from current input model
    int stepsCount = myCache.getMinorCount(myMajorStep);
    TransientModelWithMetainfo model = myCache.load(myMajorStep, myMinorStep >= stepsCount ? stepsCount - 1 : myMinorStep, currentOutputModel.getSModelReference());
    if (model == null) {
      throw new GenerationFailureException("Cannot load required data from cache. Try to regenerate model.");
    }
    myCachedModel = model;
  }

  @Override
  public void reloadRequired(GeneratorMappings mappings) throws GenerationFailureException {
    if(myRequiredSet.isEmpty()) {
      assert myRequiredSet.isEmpty();
      return;
    }

    loadCachedModel();

    List<SNode> toCopy = new ArrayList<SNode>(myRequiredSet.size()*2 + 16);
    List<PersistableMappings> toImport = new ArrayList<PersistableMappings>(myRequiredSet.size()*2);

    for (SNode root : myCachedModel.getRoots()) {
      String originalId = myCachedModel.getOriginal(root);
      if(myRequiredSet.containsKey(originalId)) {
        SNode originalRoot = myRequiredSet.get(originalId);
        if (nextStepToOriginalMap == null) {
          nextStepToOriginalMap = new HashMap<SNode, SNode>();
        }
        nextStepToOriginalMap.put(root, originalRoot);
        toCopy.add(root);
        PersistableMappings val = myCachedModel.getMappings(originalId);
        if(val != null) {
          toImport.add(val);
        }
      }
    }

    for (SNode node : toCopy) {
      currentOutputModel.addRoot(node);
    }
    for (PersistableMappings val : toImport) {
      mappings.importPersisted(val, currentInputModel, currentOutputModel);
    }
  }

  @Override
  public void updateUnchanged(TransientModelWithMetainfo model) throws GenerationFailureException {
    if (myCache == null || myUnchangedSet.isEmpty()) {
      return;
    }

    if (myCachedModel == null) {
      loadCachedModel();
    }

    for (SNode root : myCachedModel.getRoots()) {
      String originalId = myCachedModel.getOriginal(root);
      if(myUnchangedSet.containsKey(originalId)) {
        model.getRoots().add(root);
        model.setOriginal(root.getSNodeId(), originalId);
        PersistableMappings mappings = myCachedModel.getMappings(originalId);
        if(mappings != null) {
          model.updateMappings(originalId, mappings);
        }
      }
    }
  }
}
