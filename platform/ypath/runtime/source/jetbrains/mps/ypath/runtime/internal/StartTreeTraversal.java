/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.ypath.runtime.internal;

import java.util.Collections;
import java.util.Iterator;

import jetbrains.mps.ypath.runtime.ITreePath;
import jetbrains.mps.ypath.runtime.ITreeTraversal;



/**
 * @author fyodor
 */
public class StartTreeTraversal<T> extends AbstractTreeTraversal<T> implements ITreeTraversal<T>{
    
    private ITreePath<T> treePath;
    private T startingNode;
    private Iterable<T> startingIterable;
    
    public StartTreeTraversal (ITreePath<T> treePath, T startingNode) {
        this.treePath = treePath;
        this.startingNode  = startingNode;
    }
    
    public StartTreeTraversal (ITreePath<T> treePath, Iterable<T> startingIterable) {
        this.treePath = treePath;
        this.startingIterable = startingIterable;
    }

    public ITreePath<T> getTreePath() {
        return treePath;
    }
    
    public Iterator<T> iterator() {
        if (startingIterable != null) {
            return startingIterable.iterator();
        }
        return Collections.singletonList(startingNode).iterator();
    }
    
}
