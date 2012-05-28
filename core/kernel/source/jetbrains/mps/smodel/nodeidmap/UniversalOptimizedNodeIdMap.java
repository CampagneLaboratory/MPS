/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.smodel.nodeidmap;

import gnu.trove.THashMap;
import gnu.trove.TLongObjectHashMap;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.SNodeId.Foreign;
import jetbrains.mps.smodel.SNodeId.Regular;
import jetbrains.mps.util.iterable.MergeIterator;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class UniversalOptimizedNodeIdMap implements INodeIdToNodeMap {
  private final TLongObjectHashMap<SNode> myRegularMap = new TLongObjectHashMap<SNode>();
  private final THashMap<String, SNode> myForeignMap = new THashMap<String, SNode>();

  private final THashMap<SNodeId, SNode> myOtherMap = new THashMap<SNodeId, SNode>();

  public int size() {
    return myRegularMap.size() + myForeignMap.size() + myOtherMap.size();
  }

  public SNode get(SNodeId key) {
    if (key instanceof Regular) {
      return myRegularMap.get(((Regular) key).getId());
    } else if (key instanceof Foreign) {
      return myForeignMap.get(((Foreign) key).getId());
    } else {
      return myOtherMap.get(key);
    }
  }

  public SNode put(SNodeId key, SNode value) {
    if (key instanceof Regular) {
      return myRegularMap.put(((Regular) key).getId(), value);
    } else if (key instanceof Foreign) {
      return myForeignMap.put(((Foreign) key).getId(), value);
    } else {
      return myOtherMap.put(key, value);
    }
  }

  public boolean containsKey(SNodeId key) {
    if (key instanceof Regular) {
      return myRegularMap.containsKey(((Regular) key).getId());
    } else if (key instanceof Foreign) {
      return myForeignMap.containsKey(((Foreign) key).getId());
    } else {
      return myOtherMap.containsKey(key);
    }
  }

  public SNode remove(SNodeId key) {
    if (key instanceof Regular) {
      return myRegularMap.remove(((Regular) key).getId());
    } else if (key instanceof Foreign) {
      return myForeignMap.remove(((Foreign) key).getId());
    } else {
      return myOtherMap.remove(key);
    }
  }

  public Iterable<SNode> values() {
    Iterator<SNode> regular = Arrays.asList((SNode[]) myRegularMap.getValues()).iterator();
    Iterator<SNode> foreign = myForeignMap.values().iterator();
    Iterator<SNode> other = myOtherMap.values().iterator();
    return new MergeIterator<SNode>(regular, new MergeIterator<SNode>(foreign, other));
  }
}
