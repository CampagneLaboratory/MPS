package jetbrains.mps.util;

import jetbrains.mps.smodel.SNode;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 28.02.2006
 * Time: 12:09:26
 * To change this template use File | Settings | File Templates.
 */
public class NodesParetoFrontier {

  public static class NodeBox implements Iterable<NodeBox> {
    private SNode myNode;
    private NodeBox myNext;
    private int myNumber;
    public NodeBox(SNode node) {
      myNode = node;
    }
    public NodeBox(SNode node, int number) {
      myNode = node;
      myNumber = number;
    }
    public void setNext(NodeBox next) {
      myNext = next;
    }
    public NodeBox getNext() {
      return myNext;
    }
    public SNode getNode() {
      return myNode;
    }
    public int getNumber() {
      return myNumber;
    }
    public NodeBox last() {
      NodeBox last = this;
      while (last.getNext() != null) last = last.getNext();
      return last;
    }
    public Iterator<NodeBox> iterator() {
      return new Iterator<NodeBox>() {
        private NodeBox myCurrent = NodeBox.this;
        public boolean hasNext() {
          return myCurrent != null;
        }

        public NodeBox next() {
          if (!hasNext()) throw new NoSuchElementException();
          NodeBox result = myCurrent;
          myCurrent = myCurrent.getNext();
          return result;
        }

        public void remove() {
         throw new UnsupportedOperationException();
        }
      };
    }

    public boolean equals(Object obj) {
      if (obj instanceof SNode) return myNode.equals(obj);
      if (obj instanceof NodeBox) return myNode.equals(((NodeBox)obj).myNode);
      return false;
    }

    public int hashCode() {
      return myNode.hashCode();
    }
  }

  // splits nodes into groups having a maximum, each group is an descending-ordered chain of NodeBoxes
  // where the partial order is the following:
  // nodeBox1 > nodeBox2 <=> nodeBox1.getNode() is ancestor of nodeBox2.getNode() in an aggregation tree
  // i.e. the first element in a chain is an ancestor of the others
  //
  // order of groups in the result list
  // respects the order of groups' first elements in the source list.
  public static List<NodeBox> findParetoFrontier(List<SNode> nodes) {
    //init
    Map<SNode, NodeBox> initialMap = new HashMap<SNode,NodeBox>();
    for (SNode node : nodes) {
      initialMap.put(node, new NodeBox(node));
    }

    //loop
    for (SNode node : nodes) {
      if (!initialMap.containsKey(node)) continue;
      NodeBox nodeBox = initialMap.get(node);
      SNode parent = node.getParent();
      NodeBox currentNodeBox = nodeBox;
      while (parent != null) {
        if (initialMap.containsKey(parent)) {
          NodeBox newNodeBox = initialMap.get(parent);
          newNodeBox.last().setNext(currentNodeBox);
          initialMap.remove(currentNodeBox.getNode());
          currentNodeBox = newNodeBox;
        }
        parent = parent.getParent();
      }
    }

    List<NodeBox> result = new ArrayList<NodeBox>();
    for (SNode node : nodes) {
      if (initialMap.containsKey(node)) {
        result.add(initialMap.get(node));
      }
    }

    return result;
  }

}
