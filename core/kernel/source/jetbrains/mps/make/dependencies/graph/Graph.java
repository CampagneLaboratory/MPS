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
package jetbrains.mps.make.dependencies.graph;

import jetbrains.mps.logging.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.*;

public class Graph<V extends IVertex> {
  private static final Logger LOG = Logger.getLogger(Graph.class);
  private final Set<V> myData = new LinkedHashSet<V>();

  public Graph() {
  }

  public void add(@NotNull V vertex) {
    myData.add(vertex);
    for (IVertex next : vertex.getNexts()) {
      if (next == null) {
        LOG.error("Next of vertex " + vertex + " is null.");
      } else if (!myData.contains(next)) {
        add((V) next);
      }
    }
  }

  public int getNVertexes() {
    return myData.size();
  }

  public Set<V> getData() {
    return Collections.unmodifiableSet(myData);
  }

  /**
   * This dfs works slow - O( (V+E)*logV )
   *
   * @param walker - walker handling search events.
   */
  public void dfsValk(IDFSWalker<V> walker) {
    TreeSet<V> vertexes = new TreeSet<V>(walker.getVertexComparator());
    vertexes.addAll(myData);

    while (!vertexes.isEmpty()) {
      V v = vertexes.first();
      walker.enterTree(v);

      dfs(v, vertexes, walker);

      walker.leaveTree(v);
    }
  }

  private void dfs(V v, TreeSet<V> vertexes, IDFSWalker<V> walker) {
    vertexes.remove(v);

    walker.enter(v);

    for (IVertex next : v.getNexts()) {
      if (vertexes.contains(next)) {
        dfs((V) next, vertexes, walker);
      }
    }

    walker.leave(v);
  }

  public static interface IDFSWalker<V extends IVertex> {
    /**
     * Create comparator defining order in which to take new vertex.
     *
     * @return comparator defining order in which to take new vertex.
     */
    @Nullable
    Comparator<V> getVertexComparator();

    /**
     * Entering new DFS-tree.
     *
     * @param v - root vertex of the tree.
     */
    void enterTree(@NotNull V v);

    /**
     * Leaving DFS-tree.
     *
     * @param v - root vertex of the tree.
     */
    void leaveTree(@NotNull V v);

    /**
     * Entering vertex.
     *
     * @param v - vertex.
     */
    void enter(@NotNull V v);

    /**
     * Leaving vertex.
     *
     * @param v - vertex.
     */
    void leave(@NotNull V v);
  }

  public static class EmptyDFSWalker<V extends IVertex> implements IDFSWalker<V> {
    public Comparator<V> getVertexComparator() {
      return null;
    }

    public void enterTree(@NotNull V v) {
    }

    public void leaveTree(@NotNull V v) {
    }

    public void enter(@NotNull V v) {
    }

    public void leave(@NotNull V v) {
    }
  }

  @Override
  public String toString() {
    StringBuffer sb = new StringBuffer();

    for (V vertex : myData) {
      sb.append(vertex);
      sb.append(" -> ");
      int j = 0;
      Set<? extends IVertex> nexts = vertex.getNexts();
      for (IVertex next : nexts) {
        sb.append(next);
        if (j < nexts.size() - 1) {
          sb.append(", ");
        }
        j++;
      }
      sb.append("\n");
    }

    return sb.toString();
  }

}
