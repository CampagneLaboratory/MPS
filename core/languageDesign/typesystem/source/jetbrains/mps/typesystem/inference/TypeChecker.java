/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.typesystem.inference;

import jetbrains.mps.lang.typesystem.runtime.RuntimeSupport;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.NodeReadAccessCaster;
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
import jetbrains.mps.smodel.event.*;
import jetbrains.mps.util.WeakSet;
import jetbrains.mps.util.annotation.ForDebug;
import jetbrains.mps.typesystem.integration.TypesystemPreferencesComponent;
import jetbrains.mps.typesystem.inference.util.SubtypingCache;
import jetbrains.mps.typesystem.debug.ISlicer;
import jetbrains.mps.typesystem.debug.SlicerImpl;
import jetbrains.mps.typesystem.debug.NullSlicer;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.reloading.ReloadAdapter;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import java.util.*;

import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.util.Computable;

public class TypeChecker implements ApplicationComponent {
  private static final Logger LOG = Logger.getLogger(TypeChecker.class);

  private static final String RUNTIME_TYPES = "$runtimeTypes$";
  private static final String TYPES_MODEL_NAME = "typesModel";
  private static final SModelFqName TYPES_MODEL_UID = new SModelFqName(TYPES_MODEL_NAME, RUNTIME_TYPES);
  private static final ModelOwner RUNTIME_TYPES_MODEL_OWNER = new ModelOwner() {};

  private Set<SNode> myCheckedRoots = new WeakSet<SNode>();

  private Map<SNode, WeakSet<SNode>> myNodesToDependentRoots = new WeakHashMap<SNode, WeakSet<SNode>>();

  private MySModelCommandListener myListener = new MySModelCommandListener();

  private SubtypingManager mySubtypingManager;
  private RuntimeSupport myRuntimeSupport;
  private RulesManager myRulesManager;

  private SubtypingCache mySubtypingCache = null;

  private Map<SNode, SNode> myComputedTypesForCompletion = null;

  @ForDebug
  private Set<SNode> myResolveModeNodesBeingChecked = new HashSet<SNode>();
  @ForDebug
  private boolean myResolveModeInProgress;
  @ForDebug
  private Object myResolveModeStartedFrame;


  private ClassLoaderManager myClassLoaderManager;

  private boolean myIsGeneration = false;

  public TypeChecker(ClassLoaderManager manager) {
    myClassLoaderManager = manager;

    mySubtypingManager = new SubtypingManager(this);
    myRuntimeSupport = new RuntimeSupport(this);
    myRulesManager = new RulesManager(this);
  }

  public void initComponent() {
    myClassLoaderManager.addReloadHandler(new ReloadAdapter() {
      public void onReload() {
        clearForReload();
      }
    });
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Type Checker";
  }

  public void disposeComponent() {
  }

  public static TypeChecker getInstance() {
    return ApplicationManager.getApplication().getComponent(TypeChecker.class);
  }

  @ForDebug
  public void startResolveMode(Object frame, SNode nodeToCheck) {
    if (myResolveModeInProgress) {
      return;
    } else {
      myResolveModeInProgress = true;
      myResolveModeStartedFrame = frame;
      myResolveModeNodesBeingChecked.add(nodeToCheck);
    }
  }

  @ForDebug
  public void finishResolveMode(Object frame) {
    if (!myResolveModeInProgress) {
      return;
    }
    if (frame != myResolveModeStartedFrame) {
      return;
    }
    myResolveModeStartedFrame = null;
    myResolveModeInProgress = false;
    myResolveModeNodesBeingChecked.clear();
  }

  public boolean isNodeBeingCheckedInResolveMode(SNode node) {
    return myResolveModeNodesBeingChecked.contains(node);
  }

  public SubtypingManager getSubtypingManager() {
    return mySubtypingManager;
  }

  public RuntimeSupport getRuntimeSupport() {
    return myRuntimeSupport;
  }

  public SubtypingCache getSubtypingCache() {
    return mySubtypingCache;
  }

  public RulesManager getRulesManager() {
    return myRulesManager;
  }

  public void clearForReload() {
    myNodesToDependentRoots.clear();
    myRulesManager.clear();
    myCheckedRoots.clear();
  }

  public void enableTypesComputingForCompletion() {
    myComputedTypesForCompletion = new HashMap<SNode, SNode>();
    if (mySubtypingCache == null) {
      mySubtypingCache = new SubtypingCache();
    }
  }

  public void clearTypesComputedForCompletion() {
    myComputedTypesForCompletion = null;
    if (!isGenerationMode()) {
      mySubtypingCache = null;
    }
  }

  public void setIsGeneration(boolean isGeneration) {
    myIsGeneration = isGeneration;
    if (isGeneration) {
      mySubtypingCache = new SubtypingCache();
    } else {
      mySubtypingCache = null;
    }
  }

  public static SNode asType(Object o) {
    if (o instanceof SNode) {
      return (SNode) o;
    }
    if (o instanceof BaseAdapter) {
      return ((BaseAdapter)o).getNode();
    }
    return null;
  }

  public boolean isCheckedRoot(SNode node) {
    return myCheckedRoots.contains(node);
  }

  public void checkRoot(SNode node) {
    checkRoot(node, false, null);
  }

  public ISlicer debugRoot(final SNode node) {
    if (node == null) return new NullSlicer();
    assert node.isRoot();
    ISlicer slicer = new SlicerImpl(NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(node));
    checkRoot(node, true, slicer);
    return slicer;
  }

  public void checkRoot(final SNode node, final boolean refreshTypes) {
    checkRoot(node, refreshTypes, null);
  }

  private void checkRoot(final SNode node, final boolean refreshTypes, final ISlicer slicer) {
    if (node == null) return;
    assert node.isRoot();
    checkWithinRoot(node, new Runnable() {
      public void run() {
        NodeTypesComponent component = NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(node);
        if (slicer != null) {
          component.setSlicer(slicer);
        }
        component.computeTypes(refreshTypes);
        myCheckedRoots.add(node);
      }
    });
  }

  public void checkWithinRoot(SNode node, Runnable checkingAction) {

    try {
      MyReadAccessListener listener = new MyReadAccessListener();
      NodeReadAccessCaster.setNodeAccessListener(listener);
      checkingAction.run();

      for (SNode nodeToDependOn : listener.getNodesToDependOn()) {
        WeakSet<SNode> dependentRoots = myNodesToDependentRoots.get(nodeToDependOn);
        if (dependentRoots == null) {
          dependentRoots = new WeakSet<SNode>(1);
          myNodesToDependentRoots.put(nodeToDependOn, dependentRoots);
        }
        dependentRoots.add(node.getContainingRoot());
      }

      SModel model = node.getModel();
      model.removeModelCommandListener(myListener);
      model.removeModelListener(myListener);
      model.addModelCommandListener(myListener);
      model.addWeakSModelListener(myListener);
    } finally {
      NodeReadAccessCaster.removeNodeAccessListener();
    }
  }

  private SNode getTypeOf_generationMode(final SNode node) {
    if (node == null) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;

    //  System.err.println("getting type of " + node + node.getId() + " in a root " + containingRoot + " in a model " + node.getModel().getModelDescriptor().getSModelFqName());

    NodeTypesComponent component = NodeTypesComponentsRepository.getInstance().
      getNodeTypesComponent(node.getContainingRoot());
    if (!myCheckedRoots.contains(containingRoot) || component == null) {
      final SNode[] result = new SNode[1];
      final NodeTypesComponent component1 = NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(containingRoot);
      checkWithinRoot(node, new Runnable() {
        public void run() {
          result[0] = component1.computeTypesForNodeDuringGeneration(node, new Runnable() {
            public void run() {
              myCheckedRoots.add(node);
            }
          });
        }
      });
      SNode resultt_type = result[0];
      //   System.err.println("type is " + resultt_type);
      return resultt_type;
    }
    SNode resultType = getTypeDontCheck(node);
    //  System.err.println("type is " + resultType);
    return resultType;
  }

  public InequationSystem getInequationsForHole(SNode hole) {
    TypeCheckingContext typeCheckingContext = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(hole.getContainingRoot());
    final NodeTypesComponent temporaryComponent;
    temporaryComponent = typeCheckingContext.createTemporaryTypesComponent();
    try {
      return temporaryComponent.computeInequationsForHole(hole);
    } finally {
      temporaryComponent.clearListeners(); //in order to prevent memory leaks.
      typeCheckingContext.popTemporaryTypesComponent();
    }
  }

  private SNode getTypeOf_resolveMode(final SNode node, boolean nodeIsNotChecked) {
    if (node == null) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;
    if (myComputedTypesForCompletion != null && myComputedTypesForCompletion.containsKey(node)) {
      return myComputedTypesForCompletion.get(node);
    }
    TypeCheckingContext typeCheckingContext = NodeTypesComponentsRepository.getInstance().getTypeCheckingContext(node.getContainingRoot());
    if (nodeIsNotChecked || !myCheckedRoots.contains(containingRoot) || typeCheckingContext == null) {
      final SNode[] result = new SNode[1];
      typeCheckingContext = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(containingRoot);
      final NodeTypesComponent component = typeCheckingContext.getNodeTypesComponent();
      SNode computedType = component.getType(node);
      if (computedType != null) {
        if (myComputedTypesForCompletion != null) {
          myComputedTypesForCompletion.put(node, computedType);
        }
        return computedType;
      }
      final NodeTypesComponent temporaryComponent;
      temporaryComponent = typeCheckingContext.createTemporaryTypesComponent();
      try {
        checkWithinRoot(node, new Runnable() {
          public void run() {
            result[0] = temporaryComponent.computeTypesForNodeDuringResolving(node, new Runnable() {
              public void run() {
                myCheckedRoots.add(node);
              }
            });
          }
        });
      } finally {
        temporaryComponent.clearListeners(); //I added it in order to fix memory leak. (Kostik)
        typeCheckingContext.popTemporaryTypesComponent();
      }
      SNode resultType = result[0];
      if (myComputedTypesForCompletion != null) {
        myComputedTypesForCompletion.put(node, resultType);
      }
      return resultType;
    }
    SNode resultType = getTypeDontCheck(node);
    if (myComputedTypesForCompletion != null) {
      myComputedTypesForCompletion.put(node, resultType);
    }
    return resultType;
  }

  public void markAsChecked(SNode node) {
    if (node == null) return;
    myCheckedRoots.add(node);
  }

  @Nullable
  public SNode getTypeOf(SNode node) {
    if (node == null) return null;
    if (NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(node).isInEditorQueries()) {
      return getTypeOf_resolveMode(node, true);
    } else if (myIsGeneration && TypesystemPreferencesComponent.getInstance().isGenerationOptimizationEnabled()) {
      return getTypeOf_generationMode(node);
    } else {
      return getTypeOf_normalMode(node);
    }
  }

  @Nullable
  private SNode getTypeOf_normalMode(SNode node) {
    if (node == null) return null;
    if (!checkIfNotChecked(node, true)) return null;
    return getTypeDontCheck(node);
  }

  public boolean checkIfNotChecked(SNode node) {
    return checkIfNotChecked(node, true);
  }

  public boolean checkIfNotChecked(SNode node, boolean useNonTypesystemRules) {
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return false;
    NodeTypesComponent component = NodeTypesComponentsRepository.getInstance().
      getNodeTypesComponent(node.getContainingRoot());
    if (!myCheckedRoots.contains(containingRoot) || component == null) {
      component = NodeTypesComponentsRepository.getInstance().
        createNodeTypesComponent(node.getContainingRoot());
      checkRoot(containingRoot);

      if (useNonTypesystemRules) {
        component.applyNonTypesystemRulesToRoot(null);
      }
    }
    return true;
  }

  @Nullable
  public SNode getTypeDontCheck(final SNode node) {
    if (node == null) return null;
    NodeTypesComponent nodeTypesComponent = ModelAccess.instance().runReadAction(new Computable<NodeTypesComponent>() {
      public NodeTypesComponent compute() {
        return NodeTypesComponentsRepository.getInstance().getNodeTypesComponent(node.getContainingRoot());
      }
    });


    if (nodeTypesComponent == null) return null;
    return nodeTypesComponent.getType(node);
  }


  public SModelFqName getRuntimeTypesModelUID() {
    return TYPES_MODEL_UID;
  }

  public SModel getRuntimeTypesModel() {
    SModelFqName fqName = getRuntimeTypesModelUID();
    SModelDescriptor modelDescriptor = (SModelRepository.getInstance().getModelDescriptor(fqName));

    if (modelDescriptor == null) { // then create and register model descriptor
      modelDescriptor = new DefaultSModelDescriptor(IModelRootManager.NULL_MANAGER, null, new SModelReference(fqName, SModelId.generate())) {
        {
          mySModel = new SModel(getSModelReference());
          mySModel.setLoading(true);
        }

        public void save() {
          //do-nothing
        }
      };
      SModelRepository.getInstance().registerModelDescriptor(modelDescriptor, RUNTIME_TYPES_MODEL_OWNER);
    }

    return modelDescriptor.getSModel();
  }

  public IErrorReporter getTypeErrorDontCheck(SNode node) {
    SNode root = node.getContainingRoot();
    if (root == null) return null;
    return NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(root).getError(node);
  }

  public boolean isGlobalIncrementalMode() {
    return !isGenerationMode();
  }

  public boolean isGenerationMode() {
    return myIsGeneration;
  }

  private static class MyReadAccessListener implements INodeReadAccessListener {
    protected HashSet<SNode> myNodesToDependOn = new HashSet<SNode>();
    private final Object myLock = new Object();

    public void readAccess(SNode node) {
      synchronized(myLock) {
        myNodesToDependOn.add(node);
      }
    }

    public Set<SNode> getNodesToDependOn() {
      synchronized(myLock) {
        return new HashSet<SNode>(myNodesToDependOn);
      }
    }
  }

  private class MySModelCommandListener extends SModelAdapter implements SModelCommandListener {
    private SModelEventVisitor myVisitor = new SModelEventVisitorAdapter() {
      public void visitRootEvent(SModelRootEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getRoot());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getRoot());
      }

      public void visitChildEvent(SModelChildEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getParent());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getParent().getContainingRoot());
      }

      public void visitPropertyEvent(SModelPropertyEvent event) {
        /*  Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getNode());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getNode().getContainingRoot());*/
      }

      public void visitReferenceEvent(SModelReferenceEvent event) {
        Set<SNode> dependentRoots = myNodesToDependentRoots.get(event.getReference().getSourceNode());
        if (dependentRoots != null) {
          myCheckedRoots.removeAll(dependentRoots);
        }
        myCheckedRoots.remove(event.getReference().getSourceNode().getContainingRoot());
      }
    };

    public void eventsHappenedInCommand(List<SModelEvent> events) {
      for (SModelEvent event : events) {
        event.accept(myVisitor);
      }
    }

    public void eventFired(SModelEvent event) {
      if (CommandProcessor.getInstance().getCurrentCommand() != null) return;
      event.accept(myVisitor);
    }
  }

}
