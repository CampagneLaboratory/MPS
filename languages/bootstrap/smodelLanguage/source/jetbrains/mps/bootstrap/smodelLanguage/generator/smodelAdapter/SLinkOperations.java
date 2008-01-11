package jetbrains.mps.bootstrap.smodelLanguage.generator.smodelAdapter;

import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.action.NodeFactoryManager;

import java.util.Collections;
import java.util.List;
import java.util.ArrayList;

/**
 * Igor Alshannikov
 * Apr 26, 2006
 */
public class SLinkOperations {
  public static SNode getTarget(SNode node, String role, boolean child) {
    if (node != null) {
      if (child) {
        return node.getChild(role);
      }
      return node.getReferent(role);
    }
    return null;
  }

  public static void setTarget(SNode node, String role, SNode targetNode, boolean child) {
    if (node != null) {
      if (child) {
        if (targetNode == null) {
          node.setChild(role, null);
        } else {
          SNode targetParent = targetNode.getParent();
          if (targetParent != node) {
            if (targetParent != null) {
              targetParent.removeChild(targetNode);
            }
            node.setChild(role, targetNode);
          }
        }
      } else {
        node.setReferent(role, targetNode);
      }
    }
  }

  public static SNode setNewChild(SNode node, String role, String childConceptFQName) {
    if (node != null) {
      GlobalScope scope = GlobalScope.getInstance();
      SNode prototypeNode = node.getChild(role);
      SNode newChild = NodeFactoryManager.createNode(childConceptFQName, prototypeNode, node, node.getModel(), scope);
      node.setChild(role, newChild);
      return newChild;
    }
    return null;
  }

  /**
   * @todo MPS doesn't support multiple references with the same role
   */
  public static List<SNode> getTargets(SNode node, String role, boolean child) {
    if (node != null) {
      if (child) {
        return node.getChildren(role);
      }
      List<SNode> list = new ArrayList<SNode>(1);
      list.add(node.getReferent(role));
      return list;
    }
    return Collections.EMPTY_LIST;
  }

  public static SNode addNewChild(SNode node, String role, String childConceptFQName) {
    if (node != null) {
      GlobalScope scope = GlobalScope.getInstance();
      SNode newChild = NodeFactoryManager.createNode(childConceptFQName, null, node, node.getModel(), scope);
      node.addChild(role, newChild);
      return newChild;
    }
    return null;
  }

  public static void addChild(SNode parent, String role, SNode child) {
    if (parent != null && child != null) {
      SNode childParent = child.getParent();
      if (childParent != null) {
        childParent.removeChild(child);
      }
      parent.addChild(role, child);
    }
  }

  public static void addAll(SNode parent, String role, List<SNode> nodeList) {
    for (SNode node : nodeList) {
      addChild(parent, role, node);
    }
  }

  public static void insertChildFirst(SNode parent, String role, SNode child) {
    if (parent != null && child != null) {
      SNode childParent = child.getParent();
      if (childParent != null) {
        childParent.removeChild(child);
      }
      parent.insertChild(null, role, child);
    }
  }

  public static void deleteChild(SNode parent, String role) {
    if (parent != null) {
      SNode child = parent.getChild(role);
      if (child != null) {
        child.delete();
      }
    }
  }

  public static int getCount(SNode parent, String role) {
    if (parent != null) {
      return parent.getChildCount(role);
    }
    return 0;
  }

  public static List<SNode> getConceptLinkTargets(SNode node, String linkName) {
    if (node == null) return new ArrayList<SNode>();
    return node.getAdapter().getConceptLinkTargets(linkName, true);
  }

}
