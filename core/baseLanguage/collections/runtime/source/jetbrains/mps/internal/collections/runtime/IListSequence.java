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
package jetbrains.mps.internal.collections.runtime;

import java.util.List;

/**
 * @author fyodor
 */
public interface IListSequence<T> extends ISequence<T>, List<T> {

    T addElement (T t);
    
    T removeElement (T t);
    
    T removeElementAt (int idx);
    
    T removeLastElement ();
    
    T insertElement (int idx, T t);
    
    T getElement (int idx);

    T setElement (int idx, T t);

    IListSequence<T> addSequence(ISequence<T> seq);

    IListSequence<T> removeSequence(ISequence<T> seq);

    IListSequence<T> reversedList ();

    IListSequence<T> distinctList ();
    
    List<T> toList();

    T[] toGenericArray();

    T[] toGenericArray(Class<T> runtimeClass);
}
