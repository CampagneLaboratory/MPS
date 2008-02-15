package jetbrains.mps.bootstrap.smodelLanguage.generator.smodelAdapter;

import jetbrains.mps.bootstrap.structureLanguage.structure.AbstractConceptDeclaration;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.util.Condition;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * User: Igor Alshannikov
 * Feb 10, 2006
 */
public class SModelOperations {
  public static List<SNode> getRoots(SModel model, String conceptFqName) {
    if (model == null) return new ArrayList<SNode>();
    if (conceptFqName == null) {
      return model.getRoots();
    }
    GlobalScope scope = GlobalScope.getInstance();
    AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(conceptFqName, scope);
    if (concept == null) return new ArrayList<SNode>();

    List<SNode> list = new ArrayList<SNode>();
    for (SNode node : model.getRoots()) {
      if (node.isInstanceOfConcept(concept)) {
        list.add(node);
      }
    }
    return list;
  }

  public static List<SNode> getRootsIncludingImported(SModel model, IScope scope, String conceptFqName) {
    if (model == null) return Collections.EMPTY_LIST;

    if (conceptFqName == null) {
      return model.allRootsIncludingImported(scope);
    }

    AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(conceptFqName, scope);
    if (concept == null) return Collections.EMPTY_LIST;

    List<SNode> list = new ArrayList<SNode>();
    for (SNode node : model.allRootsIncludingImported(scope)) {
      if (node.isInstanceOfConcept(concept)) {
        list.add(node);
      }
    }
    return list;
  }

  public static List<SNode> getNodesIncludingImported(SModel model, IScope scope, String conceptFqName) {
    if (model == null) return Collections.EMPTY_LIST;

    if (conceptFqName == null) {
      return model.allNodesIncludingImported(scope, new Condition<SNode>() {
        public boolean met(SNode n) {
          return true;
        }
      });
    }

    final AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(conceptFqName, scope);
    if (concept == null) return Collections.EMPTY_LIST;

    return model.allNodesIncludingImported(scope, new Condition<SNode>() {
      public boolean met(SNode n) {
        return n.isInstanceOfConcept(concept);                    
      }
    });
  }

  public static List<SNode> getNodes(SModel model, String conceptFqName) {
    if (model == null) return new ArrayList<SNode>();
    if (conceptFqName == null) {
      return (List<SNode>) model.allNodes();
    }
    final AbstractConceptDeclaration concept = SModelUtil_new.findConceptDeclaration(conceptFqName, GlobalScope.getInstance());
    if (concept == null) return new ArrayList<SNode>();

    return model.allNodes(new Condition<SNode>() {
      public boolean met(SNode node) {
        return node.isInstanceOfConcept(concept);
      }
    });
  }


  /**
   * @deprecated
   */
  public static SNode createNewNode(SModel model, String conceptFqName) {
    return createNewNode(model, conceptFqName, null);
  }

  public static SNode createNewNode(SModel model, String conceptFqName, SNode prototypeNode) {
    SNode enclosingNode = null;
    if (prototypeNode != null) {
      enclosingNode = prototypeNode.getParent();
    }

    return NodeFactoryManager.createNode(conceptFqName, prototypeNode, enclosingNode, model, GlobalScope.getInstance());
  }

  public static SNode createNewRootNode(SModel model, String conceptFqName, SNode prototypeNode) {
    SNode newNode = NodeFactoryManager.createNode(conceptFqName, prototypeNode, null, model, GlobalScope.getInstance());
    model.addRoot(newNode);
    return newNode;
  }

  public static void addRootNode(SModel model, SNode node) {
    if (model == null) return;
    if (node == null) return;
    model.addRoot(node);
  }
}
