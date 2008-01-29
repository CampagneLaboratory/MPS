package jetbrains.mps.nodeEditor.nodeComparator;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SReference;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Kostik
 */
public class NodeComparator {
  private SNode myFirstNode;
  private SNode mySecondNode;

  private Map<SNode, SNode> myNodeMap = new HashMap<SNode, SNode>();

  public NodeComparator(SNode firstNode, SNode secondNode) {
    myFirstNode = firstNode;
    mySecondNode = secondNode;
  }

  public boolean compare() {
    if (!compareNodes(myFirstNode, mySecondNode)) {
      return false;
    }
    if (!compareReferences(myFirstNode, mySecondNode)) {
      return false;
    }
    return true;
  }

  private boolean compareNodes(SNode one, SNode another) {
    if (one.getClass() != another.getClass()) return false;
    if (!compareProperties(one, another)) return false;
    if (!compareChildren(one, another)) return false;
    myNodeMap.put(one, another);
    return true;
  }

  private boolean compareProperties(SNode one, SNode another) {
    if (one.getProperties().size() != another.getProperties().size()) return false;
    for (String key : one.getProperties().keySet()) {
      if (!one.getProperties().get(key).equals(another.getProperties().get(key))) {
        return false;
      }
    }
    return true;
  }

  private boolean compareChildren(SNode one, SNode another) {
    if (one.getChildren().size() != another.getChildren().size()) return false;

    for (int i = 0; i < one.getChildren().size(); i++) {
      if (!compareNodes(one.getChildren().get(i), another.getChildren().get(i))) {
        return false;
      }
    }
    return true;
  }

  private boolean compareReferences(SNode one, SNode another) {
    if (one.getReferences().size() != another.getReferences().size()) return false;

    for (int i = 0; i < one.getReferences().size(); i++) {
      SReference oneReference = one.getReferences().get(i);
      SReference anotherReference = another.getReferences().get(i);
      if (!compareTargets(oneReference.getTargetNode(), anotherReference.getTargetNode())) return false;
    }


    for (int i = 0; i < one.getChildren().size(); i++) {
      if (!compareReferences(one.getChildren().get(i), another.getChildren().get(i))) return false;
    }
    return true;
  }

  private boolean compareTargets(SNode one, SNode another) {
    if (one == another) return true;
    if (myNodeMap.get(one) == another) return true;
    return false;
  }
}
