package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCacheContainer;
import jetbrains.mps.generator.GenerationCacheContainer.ModelCacheContainer;
import jetbrains.mps.generator.GenerationOptions;
import jetbrains.mps.generator.IncrementalGenerationStrategy;
import jetbrains.mps.generator.ModelDigestHelper;
import jetbrains.mps.generator.impl.cache.IntermediateModelsCache;
import jetbrains.mps.generator.impl.dependencies.DefaultDependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.DependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.DependenciesBuilder.NullDependenciesBuilder;
import jetbrains.mps.generator.impl.dependencies.GenerationDependencies;
import jetbrains.mps.generator.impl.dependencies.GenerationRootDependencies;
import jetbrains.mps.generator.impl.plan.ConnectedComponentPartitioner;
import jetbrains.mps.generator.impl.plan.ConnectedComponentPartitioner.Component;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.util.textdiff.TextDiffBuilder;
import org.jetbrains.annotations.NotNull;

import java.util.*;
import java.util.Map.Entry;

/**
 * Evgeny Gryaznov, Jun 3, 2010
 */
public class GenerationFilter {

  private static final Logger LOG = Logger.getLogger(GenerationFilter.class);

  private static final String CONDITIONALS_ID = "";

  private SModelDescriptor myModel;
  private GenerationOptions myGenerationOptions;
  private IOperationContext myOperationContext;
  private final String myPlanSignature;
  private final IncrementalReporter myTracer;
  private Set<SNode> myUnchangedRoots;
  private Set<SNode> myRequiredRoots;
  private boolean myConditionalsUnchanged;
  private boolean myConditionalsRequired;
  private int myRootsCount;
  private Map<String, String> myGenerationHashes;
  private GenerationDependencies mySavedDependencies;
  private IntermediateModelsCache myCache;

  public GenerationFilter(SModelDescriptor model, IOperationContext operationContext, GenerationOptions options, String planSignature, IncrementalReporter tracer) {
    myModel = model;
    myGenerationOptions = options;
    myOperationContext = operationContext;
    myPlanSignature = planSignature;
    myTracer = tracer;
    myUnchangedRoots = Collections.emptySet();
    myRequiredRoots = Collections.emptySet();
    myConditionalsUnchanged = false;
    myConditionalsRequired = false;
    init();
  }

  private void init() {
    IncrementalGenerationStrategy incrementalStrategy = myGenerationOptions.getIncrementalStrategy();
    if (incrementalStrategy == null) {
      return;
    }

    myGenerationHashes = incrementalStrategy.getModelHashes(myModel, myOperationContext);

    if (myGenerationOptions.isRebuildAll()) {
      return;
    }

    GenerationDependencies dependencies = incrementalStrategy.getDependencies(myModel);
    if (dependencies == null || myGenerationHashes == null) {
      if(myTracer != null) {
        if(dependencies == null) {
          myTracer.report("No dependencies data found");
        }
        if(myGenerationHashes == null) {
          myTracer.report("No caches data for input model");
        }
      }
      return;
    }

    loadCaches(dependencies);
    if(myCache == null && incrementalStrategy.getContainer() != null) {
      // if we are creating a new cache without the previous one => rebuild all
      return;
    }

    // trying to optimize
    analyzeDependencies(dependencies);
    if (canOptimize()) {
      mySavedDependencies = dependencies;
    }
  }

  public IntermediateModelsCache createNewCache() {
    IncrementalGenerationStrategy incrementalStrategy = myGenerationOptions.getIncrementalStrategy();
    if (incrementalStrategy == null || myGenerationHashes == null) {
      return null;
    }

    GenerationCacheContainer incrementalCacheContainer = incrementalStrategy.getContainer();
    if(incrementalCacheContainer == null) {
      return null;
    }

    String currentHash = myGenerationHashes.get(ModelDigestHelper.FILE);
    ModelCacheContainer cacheContainer = incrementalCacheContainer.getCache(myModel, currentHash, true);
    if(cacheContainer == null) {
      LOG.error("cannot create cache for " + currentHash + ", " + myModel.getSModelReference().toString());
      return null;
    }

    return new IntermediateModelsCache(cacheContainer, myPlanSignature);
  }

  private void loadCaches(GenerationDependencies dependencies) {
    GenerationCacheContainer incrementalCacheContainer = myGenerationOptions.getIncrementalStrategy().getContainer();
    if(incrementalCacheContainer == null) {
      if(myTracer != null) myTracer.report("No container for incremental caches.");
      return;
    }

    String oldHash = dependencies.getModelHash();
    ModelCacheContainer cacheContainer = incrementalCacheContainer.getCache(myModel, oldHash, false);
    if(cacheContainer == null) {
      if(myTracer != null) myTracer.report("No cache for " + myModel.getSModelReference().toString() + " (" + oldHash + ")");
      return;
    }

    IntermediateModelsCache c = IntermediateModelsCache.load(cacheContainer);
    if(c != null && myPlanSignature.equals(c.getSignature())) {
      myCache = c;
    } else if(myTracer != null) {
      if(c == null) {
        myTracer.report("Caches are corrupted for " + oldHash);
      } else {
        myTracer.report("Plan differs:");
        TextDiffBuilder tbuilder = new TextDiffBuilder(c.getSignature().split("\n|\r\n"), myPlanSignature.split("\n|\r\n"));
        tbuilder.compare();
        if (tbuilder.hasDifference()) {
          for (String s : tbuilder.getResult()) {
            myTracer.report(s);
          }
        }
      }
    }
  }

  public boolean canOptimize() {
    return !myUnchangedRoots.isEmpty() || myConditionalsUnchanged ||
      !myRequiredRoots.isEmpty() || myConditionalsRequired;
  }

  public Set<SNode> getIgnoredRoots() {
    return Collections.unmodifiableSet(myUnchangedRoots);
  }

  public Set<SNode> getRequiredRoots() {
    return Collections.unmodifiableSet(myRequiredRoots);
  }

  public boolean canIgnoreConditionals() {
    return myConditionalsUnchanged;
  }

  public boolean requireConditionals() {
    return myConditionalsRequired;
  }

  public int getRootsCount() {
    return myRootsCount;
  }

  private void analyzeDependencies(@NotNull GenerationDependencies oldDependencies) {

    GenerationRootDependencies commonDeps = oldDependencies.getDependenciesFor(ModelDigestHelper.HEADER);
    if (commonDeps == null) {
      if(myTracer != null) myTracer.report("Dependencies are incomplete. No info about header.");
      return;
    }

    // check model header, rebuild all if changed
    {
      String oldHash = commonDeps.getHash();
      String newHash = myGenerationHashes.get(ModelDigestHelper.HEADER);
      if (oldHash == null || newHash == null || !newHash.equals(oldHash)) {
        if(myTracer != null) myTracer.report("Changes in model header, regenerating.");
        return;
      }
    }

    // collect changed models
    Set<String> changedModels = new HashSet<String>();
    Map<String, String> externalHashes = oldDependencies.getExternalHashes();
    for (Entry<String, String> entry : externalHashes.entrySet()) {
      String modelReference = entry.getKey();
      SModelDescriptor sm = SModelRepository.getInstance().getModelDescriptor(SModelReference.fromString(modelReference));
      if (sm == null) {
        changedModels.add(modelReference);
        continue;
      }
      String oldHash = entry.getValue();
      if (oldHash == null) {
        // TODO hash for packaged models
        if ((sm instanceof EditableSModelDescriptor) && !((EditableSModelDescriptor) sm).isPackaged()) {
          changedModels.add(modelReference);
        }
        continue;
      }
      Map<String, String> map = myGenerationOptions.getIncrementalStrategy().getModelHashes(sm, myOperationContext);
      String newHash = map != null ? map.get(ModelDigestHelper.FILE) : null;
      if (newHash == null || !oldHash.equals(newHash)) {
        changedModels.add(modelReference);
      }
    }

    // collect unchanged roots (same hash; external dependencies are unchanged)
    SModel smodel = myModel.getSModel();
    myRootsCount = smodel.rootsCount();

    myUnchangedRoots = new HashSet<SNode>();
    for (SNode root : smodel.roots()) {
      String id = root.getId();
      GenerationRootDependencies rd = oldDependencies.getDependenciesFor(id);
      String oldHash;
      if (rd == null || (oldHash = rd.getHash()) == null) continue;

      String newHash = myGenerationHashes.get(id);
      if (newHash == null || !newHash.equals(oldHash)) continue;
      
      boolean isDirty = false;
      for (String m : rd.getExternal()) {
        if (changedModels.contains(m)) {
          isDirty = true;
          break;
        }
      }
      if (!isDirty) {
        myUnchangedRoots.add(root);
      }
    }

    // all roots are dirty? rebuild all
    if (myUnchangedRoots.isEmpty()) {
      if(myTracer != null) myTracer.report("All roots are dirty.");
      return;
    }

    // calculate which unchanged roots should be re-generated according with
    // saved dependencies and references between roots

    myConditionalsUnchanged = true;

    Map<String, Set<String>> savedDep = getDependencies(oldDependencies, myUnchangedRoots);
    ConnectedComponentPartitioner partitioner = null;
    boolean changed;

    ArrayList<SNode> roots = new ArrayList<SNode>();
    for (SNode root : smodel.roots()) {
      roots.add(root);
    }

    // Phase 1: build closure using strongly connected components (only if we have cache)
    if(myCache != null) {
      closureUsingSavedDependencies(savedDep);

      if (myUnchangedRoots.isEmpty() && !myConditionalsUnchanged) {
        return;
      }

      partitioner = new ConnectedComponentPartitioner(roots);
      Component[] strongComponents = partitioner.partitionStrong();
      changed = closureUsingStrongComponents(strongComponents, savedDep);

      // repeat
      while (changed) {
        if (myUnchangedRoots.isEmpty() && !myConditionalsUnchanged) {
          return;
        }
        changed = closureUsingSavedDependencies(savedDep);
        if (changed) {
          changed = closureUsingStrongComponents(strongComponents, savedDep);
        }
      }

      // at this point dirty component can depend on "clean" component: we need to
      // load "clean" component roots from cache
      myRequiredRoots = new HashSet<SNode>(myUnchangedRoots);
      myConditionalsRequired = myConditionalsUnchanged;
    }


    // Phase 2: build closure using connected components
    addIncomingDependencies(oldDependencies, savedDep);
    closureUsingSavedDependencies(savedDep);

    if (myUnchangedRoots.isEmpty() && !myConditionalsUnchanged) {
      return;
    }

    // closure using current dependencies
    if(partitioner == null) {
      partitioner = new ConnectedComponentPartitioner(roots);
    }
    List<SNode[]> components = partitioner.partition();
    changed = closureUsingReferences(components, savedDep);

    // repeat
    while (changed) {
      if (myUnchangedRoots.isEmpty() && !myConditionalsUnchanged) {
        return;
      }
      changed = closureUsingSavedDependencies(savedDep);
      if (changed) {
        changed = closureUsingReferences(components, savedDep);
      }
    }

    // at this point unchanged roots can be excluded from generation at all (there is no
    // references/dependency between them and dirty roots)

    if(!myRequiredRoots.isEmpty()) {
      myRequiredRoots.removeAll(myUnchangedRoots);
      if(myConditionalsUnchanged) {
        myConditionalsRequired = false;
      }
    }
  }

  /*
   *
   */
  private boolean closureUsingReferences(List<SNode[]> components, Map<String, Set<String>> dep) {
    boolean result = false;
    for (SNode[] component : components) {
      boolean hasUnchanged = false;
      boolean hasChanged = false;
      for (SNode n : component) {
        if (myUnchangedRoots.contains(n)) {
          hasUnchanged = true;
        } else {
          hasChanged = true;
        }
      }
      if (hasUnchanged && hasChanged) {
        for (SNode n : component) {
          myUnchangedRoots.remove(n);
          dep.remove(n.getId());
          result = true;
        }
      }
    }
    return result;
  }

  /*
   *  1. all roots in a single component should have the same dirty state
   *  2. unchanged component which has dependency on dirty component is marked as dirty
   *
   *  components array is topologically sorted
   */
  private boolean closureUsingStrongComponents(Component[] components, Map<String, Set<String>> dep) {
    boolean result = false;
    for(int i = 0; i < components.length; i++) {
      Component component = components[i];
      boolean hasUnchanged = false;
      boolean hasChanged = false;
      for (SNode n : component.getRoots()) {
        if (myUnchangedRoots.contains(n)) {
          hasUnchanged = true;
        } else {
          hasChanged = true;
        }
      }
      for(Component c : component.getDependsOn()) {
        if(c.isDirty()) {
          hasChanged = true;
        }
      }
      if (hasUnchanged && hasChanged) {
        for (SNode n : component.getRoots()) {
          if(myUnchangedRoots.remove(n)) {
            dep.remove(n.getId());
            result = true;
          }
        }
      }
      component.setDirty(hasChanged);
    }
    return result;
  }

  /*
   *  unchanged root which has dependency on dirty root is marked as dirty
   */
  private boolean closureUsingSavedDependencies(Map<String, Set<String>> dep) {
    boolean result = false;
    boolean changed = true;
    while (changed) {
      changed = false;
      Iterator<SNode> it = myUnchangedRoots.iterator();
      while (it.hasNext()) {
        SNode root = it.next();
        Set<String> rootDeps = dep.get(root.getId());
        boolean dirty = false;
        for (String localRootId : rootDeps) {
          if (!dep.containsKey(localRootId)) {
            dirty = true;
            break;
          }
        }
        if (dirty) {
          it.remove();
          dep.remove(root.getId());
          changed = true;
        }
      }
      if (myConditionalsUnchanged) {
        Set<String> conditionalsDeps = dep.get(CONDITIONALS_ID);
        for (String localRootId : conditionalsDeps) {
          if (!dep.containsKey(localRootId)) {
            dep.remove(CONDITIONALS_ID);
            myConditionalsUnchanged = false;
            changed = true;
            break;
          }
        }
      }
      result |= changed;
    }
    return result;
  }

  private static void addIncomingDependencies(GenerationDependencies dependencies, Map<String, Set<String>> graph) {
    for (GenerationRootDependencies rd : dependencies.getRootDependencies()) {
      String id = rd.getRootId();
      if (id == null) {
        id = CONDITIONALS_ID;
      }
      // reversed
      if (rd.isDependsOnConditionals()) {
        graph.get(CONDITIONALS_ID).add(id);
      }
      for (String s : rd.getLocal()) {
        Set<String> r = graph.get(s);
        if (r != null) {
          r.add(id);
        }
      }
    }
  }

  private static Map<String, Set<String>> getDependencies(GenerationDependencies dependencies, Set<SNode> selectedRoots) {
    Map<String, Set<String>> graph = new HashMap<String, Set<String>>();
    for (SNode n : selectedRoots) {
      graph.put(n.getId(), new HashSet<String>());
    }
    graph.put(CONDITIONALS_ID, new HashSet<String>());
    for (GenerationRootDependencies rd : dependencies.getRootDependencies()) {
      String id = rd.getRootId();
      if (id == null) {
        id = CONDITIONALS_ID;
      }
      Set<String> currentDeps = graph.get(id);
      if (currentDeps != null) {
        currentDeps.addAll(rd.getLocal());
        if (rd.isDependsOnConditionals()) {
          currentDeps.add(CONDITIONALS_ID);
        }
      }
    }
    return graph;
  }

  public SModelDescriptor getModel() {
    return myModel;
  }

  public DependenciesBuilder createDependenciesBuilder() {
    if (myGenerationOptions.getIncrementalStrategy() == null) {
      return new NullDependenciesBuilder();
    }

    DefaultDependenciesBuilder result = new DefaultDependenciesBuilder(myModel.getSModel(), myGenerationHashes, myCache);
    result.propagateDependencies(myUnchangedRoots, myRequiredRoots, myConditionalsUnchanged, myConditionalsRequired, mySavedDependencies);
    return result;
  }

  public interface IncrementalReporter {
    void report(String message);
  }
}
