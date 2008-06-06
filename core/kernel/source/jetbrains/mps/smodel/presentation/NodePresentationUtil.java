package jetbrains.mps.smodel.presentation;

import jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration;
import jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration;
import jetbrains.mps.smodel.BaseAdapter;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.INodeAdapter;
import jetbrains.mps.smodel.search.IReferenceInfoResolver;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.core.structure.BaseConcept;
import jetbrains.mps.core.structure.NamedConcept;
import jetbrains.mps.core.structure.INamedConcept;
import jetbrains.mps.core.structure.IResolveInfo;
import jetbrains.mps.ide.icons.IconManager;

import javax.swing.Icon;

public class NodePresentationUtil {
  public static Icon getIcon(SNode node, boolean referent_presentation) {
    return getIcon(node.getAdapter(), referent_presentation);
  }

  public static Icon getIcon(INodeAdapter nodeAdapter, boolean referent_presentation) {
    if (nodeAdapter instanceof ConceptDeclaration && !referent_presentation) {
      return IconManager.getIconFor((ConceptDeclaration) nodeAdapter);
    }
    return IconManager.getIconFor(nodeAdapter.getNode());
  }

  public static String matchingText(SNode node) {
    return matchingText(node, false);
  }

  public static String matchingText(SNode node, boolean referent_presentation) {
    return matchingText(node.getAdapter(), referent_presentation);
  }

  public static String matchingText(INodeAdapter nodeAdapter, boolean referent_presentation) {
    return matchingText(nodeAdapter, referent_presentation, true);
  }

  public static String matchingText(INodeAdapter nodeAdapter, boolean referent_presentation, boolean debug) {
    // concept declaration : return either 'alias' or 'name'
    if (debug) {
      if ("AbstractEquationStatement".equals(matchingText(nodeAdapter, referent_presentation, false))) {
        System.err.println("");
      }
    }

    // handle concept declarations is a special way.
    if (nodeAdapter instanceof ConceptDeclaration) {
      if (!referent_presentation) {
        String alias = nodeAdapter.getConceptProperty("alias");
        if (alias != null) {
          return alias;
        }
      }
      return nodeAdapter.getName();
    }

    return nodeAdapter.getNode().getPresentation();
  }

  public static String descriptionText(SNode node) {
    return descriptionText(node, false);
  }

  public static String descriptionText(SNode node, boolean referent_presentation) {
    return descriptionText(node.getAdapter(), referent_presentation);
  }

  public static String descriptionText(INodeAdapter nodeAdapter, boolean referent_presentation) {
    if (nodeAdapter instanceof ConceptDeclaration && !referent_presentation) {
      String description = nodeAdapter.getConceptProperty("short_description");
      if (description != null) {
        return description;
      }

      ConceptDeclaration anExtends = ((ConceptDeclaration) nodeAdapter).getExtends();
      if (anExtends != null) {
        String namespace = NameUtil.namespaceFromConcept((ConceptDeclaration) nodeAdapter);
        namespace = NameUtil.compactNamespace(namespace);
        return "(" + anExtends.getName() + " in " + namespace + ")";
      }
      return "";
    }

    return descriptionText_internal(nodeAdapter);
  }

  private static String descriptionText_internal(INodeAdapter nodeAdapter) {
    if (nodeAdapter == null) {
      return "";
    }

    if (nodeAdapter instanceof BaseConcept) {
      BaseConcept bc = (BaseConcept) nodeAdapter;
      String shortDescription = bc.getShortDescription();
      if (shortDescription != null) {
        return shortDescription;
      }
    }

    if (nodeAdapter.isRoot()) {
      return NameUtil.shortNameFromLongName(nodeAdapter.getClass().getName()) + " (" + nodeAdapter.getModel().getUID().getCompactPresentation() + ")";
    }

    return nodeAdapter.getRole_() + " (" + NameUtil.compactNodeFQName(nodeAdapter.getContainingRoot()) + ")";
  }

  public static String getAliasOrConceptName(SNode node) {
    String alias = node.getConceptProperty("alias");
    if (alias != null) {
      return alias;
    }

    return node.getConceptShortName();
  }

  public static String getRoleInParentOrConceptName(SNode node) {
    String role = node.getRole_();
    if (role != null) {
      return role;
    }
    if (node.getAdapter() instanceof ConceptDeclaration && node.getName() != null) {
      return node.getName();
    }
    return NameUtil.shortNameFromLongName(node.getClass().getName());
  }

  public static String getPathToRoot(SNode node) {
    if (node.isRoot()) return node.getName();
    return getPathToRoot(node.getParent()) + " > " + node.getName();
  }
}
