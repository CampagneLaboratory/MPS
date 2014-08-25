/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.util;

import jetbrains.mps.util.iterable.DistinctIterator;
import jetbrains.mps.util.iterable.MergeIterator;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class IterableUtil {

  public static <T> Iterable<T> distinct(Iterable<T> t) {
    return new DistinctIterator<T>(t);
  }

  public static <T> Iterable<T> merge(@NotNull Iterable<T>... its) {
    if (its.length == 1) {
      return its[0];
    } else if (its.length == 2) {
      return new MergeIterator<T>(its[0], its[1]);
    }
    return new FlattenIterable<T>(Arrays.asList(its));
  }

  public static <T> Set<T> asSet(Iterable<? extends T> iter) {
    if (iter instanceof Set) return (Set<T>) iter;
    Set<T> result = new HashSet<T>();
    for (T o : iter)
      result.add(o);
    return result;
  }

  public static <T> Collection<T> asCollection(Iterable<? extends T> iter) {
    if (iter instanceof Collection) return (Collection<T>) iter;
    return asList(iter);
  }

  public static <T> List<T> asList(Iterable<? extends T> iter) {
    if (iter instanceof List) return (List<T>) iter;
    return copyToList(iter);
  }

  public static <T> List<T> copyToList(Iterable<? extends T> iter) {
    List<T> result = new ArrayList<T>();
    for (T o : iter) {
      result.add(o);
    }
    return result;
  }

  public static <T> Iterable<T> asIterable(final Iterator<T> i) {
    return new Iterable<T>() {
      @Override
      public Iterator<T> iterator() {
        return i;
      }
    };
  }

  public static <T> T get(Iterable<T> data, int index){
    Iterator<T> it = data.iterator();
    for (int i = 0;i<index;i++){
      it.next();
    }
    return it.next();
  }
}
