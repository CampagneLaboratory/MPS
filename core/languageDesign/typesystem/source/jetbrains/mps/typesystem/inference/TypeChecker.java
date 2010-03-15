/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
import jetbrains.mps.nodeEditor.IErrorReporter;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.IModelRootManager;
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
import com.intellij.openapi.util.Computable;

public class TypeChecker implements ApplicationComponent {
  private static final Logger LOG = Logger.getLogger(TypeChecker.class);

  private static final String RUNTIME_TYPES = "$runtimeTypes$";
  private static final String TYPES_MODEL_NAME = "typesModel";
  private static final SModelFqName TYPES_MODEL_UID = new SModelFqName(TYPES_MODEL_NAME, RUNTIME_TYPES);
  private static final ModelOwner RUNTIME_TYPES_MODEL_OWNER = new ModelOwner() {};

  private SubtypingManager mySubtypingManager;
  private RuntimeSupport myRuntimeSupport;
  private RulesManager myRulesManager;

  private TypesReadListener myTypesReadListener = null;

  private SubtypingCache mySubtypingCache = null;
  private SubtypingCache myGlobalSubtypingCache = null;

  private Map<SNode, SNode> myComputedTypesForCompletion = null;

  private ClassLoaderManager myClassLoaderManager;

  private boolean myIsGeneration = false;

  private List<TypeRecalculatedListener> myTypeRecalculatedListeners = new ArrayList<TypeRecalculatedListener>(5);

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

  public SubtypingManager getSubtypingManager() {
    return mySubtypingManager;
  }

  public RuntimeSupport getRuntimeSupport() {
    return myRuntimeSupport;
  }

  public SubtypingCache getSubtypingCache() {
    return mySubtypingCache;
  }

  public SubtypingCache getGlobalSubtypingCache() {
    return myGlobalSubtypingCache;
  }

  public void enableGlobalSubtypingCache() {
    myGlobalSubtypingCache = new SubtypingCache();
  }

  public void clearGlobalSubtypingCache() {
    myGlobalSubtypingCache = null;
  }

  public RulesManager getRulesManager() {
    return myRulesManager;
  }

  public void clearForReload() {
    myRulesManager.clear();
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
    return isCheckedRoot(node, true);
  }

  public boolean isCheckedRoot(SNode node, boolean considerNonTypesystemRules) {
    TypeCheckingContext context = NodeTypesComponentsRepository.getInstance().getTypeCheckingContext(node);
    if (context == null) {
      return false;
    }
    NodeTypesComponent baseNodeTypesComponent = context.getBaseNodeTypesComponent();
    return baseNodeTypesComponent.isChecked(considerNonTypesystemRules);
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
    NodeTypesComponent component = NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(node);
    if (slicer != null) {
      component.setSlicer(slicer);
    }
    component.computeTypes(refreshTypes);
    component.setChecked();
  }

  private SNode getTypeOf_generationMode(final SNode node) {
    if (node == null || node.isDisposed()) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;
    NodeTypesComponent component = NodeTypesComponentsRepository.getInstance().
      getNodeTypesComponent(node.getContainingRoot());
    if (!isCheckedRoot(containingRoot, false) || component == null) {
      final NodeTypesComponent component1 = NodeTypesComponentsRepository.getInstance().createNodeTypesComponent(containingRoot);
      SNode computedType = component1.computeTypesForNodeDuringGeneration(node);
      return computedType;
    }
    SNode resultType = getTypeDontCheck(node);
    return resultType;
  }

  public InequationSystem getInequationsForHole(SNode hole, boolean holeIsAType) {
    TypeCheckingContext typeCheckingContext = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(hole.getContainingRoot());
    final NodeTypesComponent temporaryComponent;
    temporaryComponent = typeCheckingContext.createTemporaryTypesComponent();
    try {
      return temporaryComponent.computeInequationsForHole(hole, holeIsAType);
    } finally {
      temporaryComponent.dispose(); //in order to prevent memory leaks.
      typeCheckingContext.popTemporaryTypesComponent();
    }
  }

  private SNode getTypeOf_resolveMode(final SNode node) {
    if (node == null) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;
    if (myComputedTypesForCompletion != null && myComputedTypesForCompletion.containsKey(node)) {
      return myComputedTypesForCompletion.get(node);
    }
    TypeCheckingContext typeCheckingContext = NodeTypesComponentsRepository.getInstance().getTypeCheckingContext(node.getContainingRoot());
    typeCheckingContext = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(containingRoot);
    SNode resultType = typeCheckingContext.computeTypeForResolve(node);
    if (myComputedTypesForCompletion != null) {
      myComputedTypesForCompletion.put(node, resultType);
    }
    return resultType;
  }

  public SNode getInferredTypeOf(final SNode node) {
    if (node == null) return null;
    SNode containingRoot = node.getContainingRoot();
    if (containingRoot == null) return null;
    TypeCheckingContext typeCheckingContext =
      NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(containingRoot);
    SNode resultType = typeCheckingContext.computeTypeInferenceMode(node);
    return resultType;
  }

  @Nullable
  public synchronized SNode getTypeOf(SNode node) {
    if (node == null) return null;
    if (myTypesReadListener != null) {
      myTypesReadListener.nodeTypeAccessed(node);
    }
    TypeCheckingContext context = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(node);
    if (context != null && context.isInEditorQueries()) {
      return getTypeOf_resolveMode(node);
    } else if (myIsGeneration && TypesystemPreferencesComponent.getInstance().isGenerationOptimizationEnabled()) {
      return getTypeOf_generationMode(node);
    } else {
      return getTypeOf_normalMode(node);
    }
  }

  @Nullable
  private SNode getTypeOf_normalMode(SNode node) {
    if (node == null) return null;
    if (!checkIfNotChecked(node, false)) return null;
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
    if (!isCheckedRoot(containingRoot, useNonTypesystemRules) || component == null) {
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
        @Override
        protected SModel loadModel() {
          SModel result = new SModel(getSModelReference());
          result.setLoading(true);
          return result;
        }

        public void save() {
          //do-nothing
        }
      };
      SModelRepository.getInstance().registerModelDescriptor(modelDescriptor, RUNTIME_TYPES_MODEL_OWNER);
    }

    return modelDescriptor.getSModel();
  }

  @NotNull
  public List<IErrorReporter> getTypeMessagesDontCheck(SNode node) {
    SNode root = node.getContainingRoot();
    if (root == null) return new ArrayList<IErrorReporter>();
    TypeCheckingContext context = NodeTypesComponentsRepository.getInstance().createTypeCheckingContext(root);
    if (context == null) return new ArrayList<IErrorReporter>();
    return context.getBaseNodeTypesComponent().getErrors(node);
  }

  //returns the most serious error for node (warning if no errors, info if no warnings and errors)
  public IErrorReporter getTypeMessageDontCheck(SNode node) {  //todo use method above in generated actions
    List<IErrorReporter> messages = getTypeMessagesDontCheck(node);
    if (messages.isEmpty()) {
      return null;
    }
    Collections.sort(messages, new Comparator<IErrorReporter>() {
      public int compare(IErrorReporter o1, IErrorReporter o2) {
        return o2.getMessageStatus().compareTo(o1.getMessageStatus());
      }
    });
    return messages.get(0);
  }

  public boolean isGlobalIncrementalMode() {
    return !isGenerationMode();
  }

  public boolean isGenerationMode() {
    return myIsGeneration;
  }

  public void setTypesReadListener(TypesReadListener typesReadListener) {
    myTypesReadListener = typesReadListener;
  }

  public void removeTypesReadListener() {
    myTypesReadListener = null;
  }

  public void removeTypeRecalculatedListener(TypeRecalculatedListener typeRecalculatedListener) {
    myTypeRecalculatedListeners.remove(typeRecalculatedListener);
  }

  public void addTypeRecalculatedListener(TypeRecalculatedListener typeRecalculatedListener) {
    if (!myTypeRecalculatedListeners.contains(typeRecalculatedListener)) {
      myTypeRecalculatedListeners.add(typeRecalculatedListener);
    }
  }

  public void fireTypeWillBeRecalculatedForTerm(SNode term) {
    for (TypeRecalculatedListener typeRecalculatedListener : myTypeRecalculatedListeners) {
      typeRecalculatedListener.typeWillBeRecalculatedForTerm(term);
    }
  }
}
