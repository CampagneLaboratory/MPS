package jetbrains.mps.smodel;

import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.descriptor.EditableSModelDescriptor;
import jetbrains.mps.smodel.descriptor.source.ModelDataSource;
import jetbrains.mps.smodel.descriptor.source.RegularModelDataSource;
import jetbrains.mps.util.NameUtil;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ModelFindOperations {
  private SModelDescriptor myModelDescriptor;
  private RegularModelDataSource myDataSource;
  private boolean myNeedSearchForStrings;

  public ModelFindOperations(SModelDescriptor descriptor) {
    myModelDescriptor = descriptor;
    ModelDataSource source = descriptor instanceof BaseSModelDescriptorWithSource ? ((BaseSModelDescriptorWithSource) myModelDescriptor).getSource() : null;
    myDataSource = source instanceof RegularModelDataSource ? (RegularModelDataSource) source : null;
    myNeedSearchForStrings = myModelDescriptor.getLoadingState() != ModelLoadingState.FULLY_LOADED;
    if (!myNeedSearchForStrings && myModelDescriptor instanceof EditableSModelDescriptor) {
      myNeedSearchForStrings = !((EditableSModelDescriptor) myModelDescriptor).isChanged();
    }
  }

  public Set<SReference> findUsages(Set<SNode> nodes) {
    if (myDataSource == null) return Collections.emptySet();

    if (myNeedSearchForStrings) {
      Set<String> strings = new HashSet<String>();
      for (SNode node : nodes) {
        strings.add(quoteSpecialXMLCharacters(node.getId()));
      }
      if (!myDataSource.containsSomeString(myModelDescriptor, strings)) return Collections.emptySet();
    }

    SModel model = myModelDescriptor.getSModel();
    if (model == null) return Collections.emptySet();

    Set<SReference> result = new HashSet<SReference>();
    for (SNode root : model.roots()) {
      addUsages(root, nodes, result);
    }
    return result;
  }

  public Set<SReference> findUsages(SNode node) {
    return findUsages(Collections.singleton(node));
  }

  public boolean hasUsages(Set<SModelReference> models) {
    if (myDataSource == null) return false;

    if (myNeedSearchForStrings) {
      Set<String> strings = new HashSet<String>();
      for (SModelReference model : models) {
        strings.add(quoteSpecialXMLCharacters(model.toString()));
      }
      if (!myDataSource.containsSomeString(myModelDescriptor, strings)) return false;
    }

    SModel model = myModelDescriptor.getSModel();
    if (model == null) return false;

    for (SModelDescriptor modelDescriptor : SModelOperations.allImportedModels(model, GlobalScope.getInstance())) {
      if (models.contains(modelDescriptor.getSModelReference())) {
        return true;
      }
    }
    return false;
  }

  private static String quoteSpecialXMLCharacters(String s) {
    return s.replaceAll("<", "&lt;").replaceAll(">", "&gt;");
  }

  public boolean hasImportedModel(SModelDescriptor modelDescriptor) {
    if (myDataSource == null) return false;
    if (myNeedSearchForStrings && !myDataSource.containsString(myModelDescriptor, modelDescriptor.toString()))
      return false;

    SModel model = myModelDescriptor.getSModel();
    if (model == null) return false;

    return SModelOperations.getImportElement(model, modelDescriptor.getSModelReference()) != null;
  }

  public Set<SNode> findDescendants(SNode node, Set<SNode> descendantsKnownInModel) {
    if (myDataSource == null) return new HashSet<SNode>();
    boolean changed = false;
    if (myModelDescriptor instanceof EditableSModelDescriptor) {
      changed = ((EditableSModelDescriptor) myModelDescriptor).isChanged();
    }
    boolean atLeastRootsLoaded = myModelDescriptor.getLoadingState().compareTo(ModelLoadingState.ROOTS_LOADED) >= 0;
    if (atLeastRootsLoaded && !changed && !descendantsKnownInModel.isEmpty())
      return descendantsKnownInModel;
    if (myNeedSearchForStrings && !myDataSource.containsString(myModelDescriptor, node.getId()))
      return descendantsKnownInModel;

    SModel model = myModelDescriptor.getSModel();
    Set<SNode> result = new HashSet<SNode>();
    if (model != null) {
      for (SNode root : model.roots()) {
        addDescendants(root, node, result);
      }
    }
    descendantsKnownInModel.clear();
    descendantsKnownInModel.addAll(result);
    return descendantsKnownInModel;
  }

  private void addUsages(SNode current, Set<SNode> nodes, Set<SReference> result) {
    for (SReference ref : current.getReferences()) {
      if (nodes.contains(ref.getTargetNode())) {
        result.add(ref);
      }
    }
    for (SNode child : current.getChildren()) {
      addUsages(child, nodes, result);
    }
  }

  private void addDescendants(SNode current, SNode node, Set<SNode> result) {
    if (SNodeUtil.isInstanceOfConceptDeclaration(current)) {
      for (SNode interfaceConcept : SNodeUtil.getConceptDeclaration_Implements(current)) {
        if (interfaceConcept != null && interfaceConcept == node) {
          result.add(current);
          break;
        }
      }
      if (SNodeUtil.getConceptDeclaration_Extends(current) == node) {
        result.add(current);
      }
    } else if (SNodeUtil.isInstanceOfInterfaceConceptDeclaration(current)) {
      for (SNode interfaceConcept : SNodeUtil.getInterfaceConceptDeclaration_Extends(current)) {
        if (interfaceConcept != null && interfaceConcept == node) {
          result.add(interfaceConcept);
          break;
        }
      }
    }

    for (SNode child : current.getChildren()) {  // are there any "inner" concepts?
      addDescendants(child, node, result);
    }
  }

  public Set<SNode> findInstances(SNode concept, IScope scope) {
    if (myDataSource == null) return Collections.emptySet();

    SModel model = myModelDescriptor.getSModel();
    if (model == null) return Collections.emptySet();

    Set<SNode> result = new HashSet<SNode>();
    for (SNode root : model.roots()) {
      addInstances(root, concept, result, scope);
    }
    return result;
  }

  public Set<SNode> findExactInstances(SNode concept, IScope scope) {
    if (myDataSource == null) return Collections.emptySet();

    SModel model = myModelDescriptor.getSModel();
    if (model == null) return Collections.emptySet();

    Set<SNode> result = new HashSet<SNode>();
    for (SNode root : model.roots()) {
      addExactInstances(root, concept, result, scope);
    }
    return result;
  }

  private void addInstances(SNode current, SNode concept, Set<SNode> result, IScope scope) {
    if (current.isInstanceOfConcept(NameUtil.nodeFQName(concept))) result.add(current);
    for (SNode child : current.getChildren()) {
      addInstances(child, concept, result, scope);
    }
  }

  private void addExactInstances(SNode current, SNode concept, Set<SNode> result, IScope scope) {
    if (current.getConceptFqName().equals(NameUtil.nodeFQName(concept))) {
      result.add(current);
    }
    for (SNode child : current.getChildren()) {
      addExactInstances(child, concept, result, scope);
    }
  }
}
