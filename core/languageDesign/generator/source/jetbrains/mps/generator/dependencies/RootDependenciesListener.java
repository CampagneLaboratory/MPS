package jetbrains.mps.generator.dependencies;

import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * Evgeny Gryaznov, May 11, 2010
 */
public class RootDependenciesListener implements DependenciesReadListener {

  private final SNode myOriginalRoot;
  private final DefaultDependenciesBuilder myBuilder;
  private final String myHash;
  private boolean isUnchanged;

  private boolean dependsOnConditionals = false;
  private Set<SNode> dependsOn = new HashSet<SNode>();
  private Set<SModelDescriptor> dependsOnModels = new HashSet<SModelDescriptor>();
  private GenerationRootDependencies mySavedDependencies;

  public RootDependenciesListener(@Nullable SNode originalRoot, @NotNull DefaultDependenciesBuilder builder, @Nullable String hash) {
    myOriginalRoot = originalRoot;
    myBuilder = builder;
    myHash = hash;
    isUnchanged = false;
  }

  private void addNodeAccess(SNode node) {
    SNode root = myBuilder.currentToOriginalMap.get(node);
    if(root == null) {
      dependsOnConditionals = true;
      return;
    }
    if(root == myOriginalRoot) {
      return;
    }
    dependsOn.add(root);      
  }

  private void addOutputNodeAccess(SNode node) {
    if(myBuilder.nextStepToOriginalMap == null || myBuilder.currentOutputModel == null) {
      return;
    }
    SNode root = myBuilder.nextStepToOriginalMap.get(node);
    if(root == null) {
      dependsOnConditionals = true;
      return;
    }
    if(root == myOriginalRoot) {
      return;
    }
    dependsOn.add(root);      
  }

  private void addModelAccess(SModel model) {
    if(model == null || model.isTransient() || model == myBuilder.currentInputModel) {
      return;
    }
    dependsOnModels.add(model.getModelDescriptor());
  }

  @Override
  public void readNode(SNode node) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void nodeChildReadAccess(SNode node, String childRole, SNode child) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void nodePropertyReadAccess(SNode node, String propertyName, String value) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void propertyExistenceAccess(SNode node, String propertyName) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void propertyDirtyReadAccess(SNode node, String propertyName) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void propertyCleanReadAccess(SNode node, String propertyName) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Override
  public void nodeReferentReadAccess(SNode node, String referentRole, SNode referent) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
    
    // FIXME read referent?
  }

  @Override
  public void nodeUnclassifiedReadAccess(SNode node) {
    if(node.isRegistered()) {
      if(node.getModel() == myBuilder.currentInputModel) {
        addNodeAccess(node.getTopParent());
      } else if(node.getModel() == myBuilder.currentOutputModel) {
        addOutputNodeAccess(node.getTopParent());
      } else {
        addModelAccess(node.getModel());
      }
    }
  }

  @Nullable
  public SNode getOriginalRoot() {
    return myOriginalRoot;
  }

  public String getHash() {
    return myHash;
  }

  public Collection<SNode> getDependsOn() {
    return Collections.unmodifiableSet(dependsOn);
  }

  public Collection<SModelDescriptor> getDependsOnModels() {
    return Collections.unmodifiableSet(dependsOnModels);
  }

  public boolean isDependsOnConditionals() {
    return dependsOnConditionals && myOriginalRoot != null;
  }

  public boolean isUnchanged() {
    return isUnchanged;
  }

  public void loadDependencies(GenerationRootDependencies previous) {
    mySavedDependencies = previous;
    isUnchanged = true;
  }

  public GenerationRootDependencies getSavedDependencies() {
    return mySavedDependencies;
  }
}
