/*
 * Copyright 2003-2009 JetBrains s.r.o.
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

import java.util.Arrays;
import java.util.Comparator;

import jetbrains.mps.internal.collections.runtime.impl.BasicSequence;
import jetbrains.mps.internal.collections.runtime.impl.ComparingSequence;
import jetbrains.mps.internal.collections.runtime.impl.ConcatingSequence;
import jetbrains.mps.internal.collections.runtime.impl.FilteringSequence;
import jetbrains.mps.internal.collections.runtime.impl.LimitedCardinalitySequence;
import jetbrains.mps.internal.collections.runtime.impl.NullSequence;
import jetbrains.mps.internal.collections.runtime.impl.NullSetSequence;
import jetbrains.mps.internal.collections.runtime.impl.PagingSequence;
import jetbrains.mps.internal.collections.runtime.impl.SelectingSequence;
import jetbrains.mps.internal.collections.runtime.impl.SortingSequence;
import jetbrains.mps.internal.collections.runtime.impl.TranslatingSequence;
import jetbrains.mps.internal.collections.runtime.impl.TranslatorAdapter;


/**
 * @author fyodor
 */
public abstract class Sequence<T> implements ISequence<T>, Iterable<T> {
    
    /**
     * <p>
     * This constant controls whether the framework applies relaxed rules to <code>null</code> values
     * passed as parameters to <code>from* ()</code> methods of class <code>Sequence</code> and its subclasses,
     * and all methods that accept <code>ISequence</code> and its subclasses.
     * </p>
     * <p>
     * If relaxed rules are applied, the <code>NullPointerException<code> will not be thrown, and the method
     * is guaranteed to return non-null object.  
     * </p>
     */
    public static final boolean USE_NULL_SEQUENCE = true;

    /**
     * <p>
     * This constant controls whether <code>null</code> values in containers are ignored. In particular, 
     * <code>ITranslator.translate ()</code> and <code>ISelector.select ()</code> methods are allowed
     * to return null values, which will be ignored, instead of being appended to the results of 
     * <code>translate ()</code> or <code>select ()</code>, respectively. 
     * </p>
     */
    public static final boolean IGNORE_NULL_VALUES = true;    

    /**
     * <p>
     * This constant tells the framework to return <code>null</code> from methods that return values from 
     * a sequence, instead of throwing <code>IndexOutOfBoundsException</code> or 
     * <code>NoSuchElementException</code>, if the underlying sequence if empty.
     * </p>
     */
    public static final boolean NULL_WHEN_EMPTY = true;
    
    public static <U> ISequence<U> emptySequence () {
    	return NullSetSequence.instance();
    }
    
    public static <U> ISequence<U> fromArray (U...array) {
        return new BasicSequence<U> (Arrays.asList(array));
    }    
    
    public static <U> ISequence<U> fromClosure (ISequenceClosure<U> cls) {
        return Sequence.fromIterable(cls.iterable());
    }
    
    public static <U> ISequence<U> fromIterable (Iterable<U> iterable) {
        if (USE_NULL_SEQUENCE) {
            if (iterable == null) {
                return NullSequence.instance();
            }
        }
        if (iterable instanceof ISequence) {
            return (ISequence<U>) iterable;
        }
        return new BasicSequence<U> (iterable);
    }
    
    // public Sequence<T,T> where (IWhereFilter<? super T> filter)
    public ISequence<T> where (IWhereFilter<T> filter) {
        return new FilteringSequence<T> (this, filter);
    }
    
    public T findFirst(IWhereFilter<T> filter) {
    	return where (filter).first();
    }
    
    public T findLast(IWhereFilter<T> filter) {
		return where(filter).last();
    }
    
    // public <U> Sequence<T,U> map (IMapper<? super T,U> mapper)
    public <U> ISequence<U> translate (ITranslator<T,U> translator) {
        return new TranslatingSequence<T,U> (this, translator);
    }
    
    public <U> ISequence<U> translate(ITranslator2<T, U> translator) {
    	return translate(new TranslatorAdapter<T, U> (translator));
    }
    
    // public <U> Sequence<T,U> select (ISelector<? super T,U> selector)
    public <U> ISequence<U> select (ISelector<T,U> selector){
        return new SelectingSequence<T,U> (this, selector);
    }
    
    public ISequence<T> sort (ISelector<T, Comparable<?>> selector, boolean ascending){
        return new SortingSequence<T> (this, new SelectComparator<T> (selector), ascending);
    }
    
    public ISequence<T> sort(Comparator<T> comparator, boolean ascending) {
        return new SortingSequence<T> (this, comparator, ascending);
    }
    
    public ISequence<T> distinct () {
        return new LimitedCardinalitySequence<T> (this, 1);
    }

    public void visitAll (IVisitor<T> visitor) {
        IterableUtils.visitAll(toIterable(), visitor);
    }

    public ISequence<T> take (int length) {
        return new PagingSequence<T> (this, PagingSequence.Page.TAKE, length);
    }
    
    public ISequence<T> skip (int length) {
        return new PagingSequence<T> (this, PagingSequence.Page.SKIP, length);
    }
    
    public ISequence<T> cut (int length) {
        return new PagingSequence<T> (this, PagingSequence.Page.CUT, length);
    }
    
    public ISequence<T> tail (int length) {
        return new PagingSequence<T> (this, PagingSequence.Page.TAIL, length);
    }

    // curse the page operation
    public ISequence<T> page (int skip, int skipplustake) {
        int take = skipplustake-skip;
        return skip (skip).take (take);
    }

    public ISequence<T> concat (ISequence<T> that) {
        if (USE_NULL_SEQUENCE) {
            if (that == null) {
                return this;
            }
        }
        return new ConcatingSequence<T> (this, that);
    }
    
    public ISequence<T> intersect (ISequence<T> that) {
        if (USE_NULL_SEQUENCE) {
            if (that == null) {
                return NullSequence.instance();
            }
        }        
        return new ComparingSequence<T> (this, that, ComparingSequence.Kind.INTERSECTION);
    }
    
    public ISequence<T> subtract (ISequence<T> that) {
        if (USE_NULL_SEQUENCE) {
            if (that == null) {
                return this;
            }
        }
        return new ComparingSequence<T> (this, that, ComparingSequence.Kind.SUBSTRACTION);        
    }
    
    public ISequence<T> union (ISequence<T> that) {
        if (USE_NULL_SEQUENCE) {
            if (that == null) {
                return this;
            }
        }
        return new ComparingSequence<T> (this, that, ComparingSequence.Kind.UNION);
    }
    
    public ISequence<T> disjunction (ISequence<T> that) {
        if (USE_NULL_SEQUENCE) {
            if (that == null) {
                return this;
            }
        }
        return new ComparingSequence<T> (this, that, ComparingSequence.Kind.DISJUNCTION);
    }

    public boolean contains (T t) {
        return IterableUtils.contains(toIterable(), t);
    }
    
    public int indexOf (T t) {
        return IterableUtils.indexOf(toIterable(), t);
    }
    
    public int count () {
        return IterableUtils.count(toIterable());
    }

    public boolean isEmpty () {
        return IterableUtils.isEmpty(toIterable());
    }

    public boolean isNotEmpty () {
        return IterableUtils.isNotEmpty(toIterable());
    }    

    public T first () {
        return IterableUtils.first(toIterable());
    }
    
    public T last () {
        return IterableUtils.last(toIterable());
    }
    
    public Iterable<T> toIterable () {
        return this;
    }
    
    public IListSequence<T> toListSequence() {
        return ListSequence.fromIterable(toIterable());
    }
    
}
