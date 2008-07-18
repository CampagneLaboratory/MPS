package jetbrains.mps.util.graph;

import jetbrains.mps.util.Pair;

import java.util.*;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 07.07.2006
 * Time: 19:51:21
 * To change this template use File | Settings | File Templates.
 */
public class Graph implements IGraph {
  Set<IEdge> myEdges = new HashSet<IEdge>();
  Set<IVertex> myVertices = new HashSet<IVertex>();
  Map<Pair<IVertex, IVertex>, IEdge> myVerticesToConnectingEdges = new HashMap<Pair<IVertex, IVertex>, IEdge>();

  public Set<IEdge> getEdges() {
    return new HashSet<IEdge>(myEdges);
  }

  public Set<IVertex> getVertices() {
    return new HashSet<IVertex>(myVertices);
  }

  public void addVertex(IVertex vertex) {
    myVertices.add(vertex);
  }

  public boolean connect(IVertex vertex1, IVertex vertex2) {
    if (!myVertices.contains(vertex1)) return false;
    if (!myVertices.contains(vertex2)) return false;
    boolean connected = isConnected(vertex1, vertex2);
    IEdge connectingEdge;
    if (connected) return false;
    connectingEdge = new Edge(vertex1, vertex2);
    myEdges.add(connectingEdge);
    myVerticesToConnectingEdges.put(new Pair<IVertex, IVertex>(vertex1, vertex2), connectingEdge);
    myVerticesToConnectingEdges.put(new Pair<IVertex, IVertex>(vertex2, vertex1), connectingEdge);
    return true;
  }

  public boolean isConnected(IVertex vertex1, IVertex vertex2) {
    IEdge connectingEdge = myVerticesToConnectingEdges.get(new Pair<IVertex, IVertex>(vertex1, vertex2));
    return connectingEdge != null;
  }


  public Pair<Integer, Integer> getBaricenter() {
    double x = 0;
    double y = 0;
    for (IVertex vertex : myVertices) {
      x = x + vertex.getX();
      y = y + vertex.getY();
    }
    int bcx = (int) x / myVertices.size();
    int bcy = (int) y / myVertices.size();
    return new Pair<Integer, Integer>(bcx,bcy);
  }

  public int getVerticesCount() {
    return myVertices.size();
  }

  public int getEdgesCount() {
    return myEdges.size();
  }
}
