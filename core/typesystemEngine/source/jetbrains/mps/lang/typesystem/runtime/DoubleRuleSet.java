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
package jetbrains.mps.lang.typesystem.runtime;

import jetbrains.mps.newTypesystem.rules.DoubleTermRules;
import jetbrains.mps.newTypesystem.rules.LanguageScope;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/*
 *   Synchronized.
 */
public class DoubleRuleSet<T extends IApplicableTo2Concepts> {

  private static final String TYPESYSTEM_SUFFIX = ".typesystem";

  ConcurrentMap<Pair<String, String>, Set<T>> myRules = new ConcurrentHashMap<Pair<String, String>, /* synchronized */ Set<T>>();

  private DoubleTermRules<T> myDoubleTermRules = new DoubleTermRules<T>() {
    @Override
    protected Iterable<String> allSuperConcepts(String conceptFQName) {
      ConceptDescriptor concept = ConceptRegistry.getInstance().getConceptDescriptor(conceptFQName);
      if (concept.isInterfaceConcept()) return Collections.emptyList();

      SConceptId sid = concept.getSuperConceptId();
      String sname = concept.getSuperConcept();

      List<String> res = new ArrayList<String>(2);
      while (sid != null) {
        SConcept superConcept = MetaAdapterFactory.getConcept(sid, sname);
        res.add(sname);

        ConceptDescriptor superDesc = ConceptRegistry.getInstance().getConceptDescriptor(superConcept);
        sid = superDesc.getSuperConceptId();
        sname = superDesc.getSuperConcept();
      }
      return res;
    }

    @Override
    protected Iterable<T> allForConceptPair(String leftConceptFQName, String rightConceptFQName, LanguageScope langScope) {
      return getAllApplicableTo(leftConceptFQName, rightConceptFQName, langScope);
    }
  };

  public void addRuleSetItem(Set<T> rules) {
    for (T rule : rules) {
      String concept1 = rule.getApplicableConceptFQName1();
      String concept2 = rule.getApplicableConceptFQName2();
      Pair<String, String> pair = new Pair<String, String>(concept1, concept2);
      Set<T> existingRules = myRules.get(pair);
      while (existingRules == null) {
        myRules.putIfAbsent(pair, Collections.synchronizedSet(new HashSet<T>(1)));
        existingRules = myRules.get(pair);
      }
      existingRules.add(rule);
    }
    myDoubleTermRules.purgeCache();
  }

  public Set<T> getRules(SNode leftTerm, SNode righTerm) {
    return myDoubleTermRules.lookupRules(leftTerm, righTerm);
  }

  private Iterable<T> getAllApplicableTo(String leftConceptFQName, String rightConceptFQName, LanguageScope scope) {
    Pair<String, String> conceptPair = new Pair<String, String>(leftConceptFQName, rightConceptFQName);
    if (!myRules.containsKey(conceptPair)) return Collections.emptyList();

    List<T> result = new ArrayList<T>(4);
    Set<T> rules = myRules.get(conceptPair);
    synchronized (rules) {
      for (T rule : rules) {
        if (scope.containsNamespace(getNamespace(rule))) {
          result.add(rule);
        }
      }
    }
    return Collections.unmodifiableList(result);
  }

  private String getNamespace(T rule) {
    String pkg = rule.getClass().getPackage().getName();
    if (pkg.endsWith(TYPESYSTEM_SUFFIX)) {
      return pkg.substring(0, pkg.length() - TYPESYSTEM_SUFFIX.length());
    }
    return pkg;
  }

  public void clear() {
    myRules.clear();
    myDoubleTermRules.purgeCache();
  }
}
