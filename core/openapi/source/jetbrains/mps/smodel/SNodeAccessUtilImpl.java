/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

import jetbrains.mps.MPSCore;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.illegal.IllegalReferenceConstraintsDescriptor;
import jetbrains.mps.util.Pair;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.*;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.HashSet;
import java.util.Set;

public class SNodeAccessUtilImpl extends SNodeAccessUtil {
  private static Logger LOG = LogManager.getLogger(SNodeAccessUtil.class);

  private final ThreadLocal<Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>>> ourPropertySettersInProgress = new InProgressThreadLocal();
  private final ThreadLocal<Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>>> ourPropertyGettersInProgress = new InProgressThreadLocal();
  private final ThreadLocal<Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>>> ourSetReferentEventHandlersInProgress = new InProgressThreadLocal();

  protected  boolean hasPropertyImpl(org.jetbrains.mps.openapi.model.SNode node, String name){
    node.hasProperty(name); //todo this is to invoke corresponding read access. try to remove it by merging 2 types of access
    String property_internal = node.getProperty(name);
    return !SModelUtil_new.isEmptyPropertyValue(property_internal);
  }

  public String getPropertyImpl(org.jetbrains.mps.openapi.model.SNode node, String name) {
    if (MPSCore.getInstance().isMergeDriverMode()) return node.getProperty(name);

    Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>> getters = ourPropertyGettersInProgress.get();
    Pair<org.jetbrains.mps.openapi.model.SNode, String> current = new Pair<org.jetbrains.mps.openapi.model.SNode, String>(node, name);
    if (getters.contains(current)) return node.getProperty(name);

    getters.add(current);
    try {
      PropertyConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(node.getConcept().getId()).getProperty(name);
      Object getterValue = descriptor.getValue(node, GlobalScope.getInstance());
      return getterValue == null ? null : String.valueOf(getterValue);
    } catch (Throwable t) {
      LOG.error(t);
      return null;
    } finally {
      getters.remove(current);
    }
  }

  public void setPropertyImpl(org.jetbrains.mps.openapi.model.SNode node, String propertyName, String propertyValue) {
    Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>> threadSet = ourPropertySettersInProgress.get();
    Pair<org.jetbrains.mps.openapi.model.SNode, String> pair = new Pair<org.jetbrains.mps.openapi.model.SNode, String>(node, propertyName);

    //todo try to remove
    if (threadSet.contains(pair)) {
      node.setProperty(propertyName, propertyValue);
      return;
    }

    PropertyConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(node.getConcept().getId()).getProperty(propertyName);
    threadSet.add(pair);
    try {
      descriptor.setValue(node, propertyValue, GlobalScope.getInstance());
    } catch (Exception t) {
      LOG.error(t);
    } finally {
      threadSet.remove(pair);
    }
  }

  public void setReferenceTargetImpl(org.jetbrains.mps.openapi.model.SNode node, String role, @Nullable org.jetbrains.mps.openapi.model.SNode target) {
    org.jetbrains.mps.openapi.model.SModel model = node.getModel();
    if (model == null || !((jetbrains.mps.smodel.SModelInternal) model).canFireEvent()) {
      //todo[Mihail Muhin]: why?
      node.setReferenceTarget(role, target);
      return;
    }

    // invoke custom referent set event handler
    Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>> threadSet = ourSetReferentEventHandlersInProgress.get();
    Pair<org.jetbrains.mps.openapi.model.SNode, String> pair = new Pair<org.jetbrains.mps.openapi.model.SNode, String>(node, role);
    if (threadSet.contains(pair)) {
      node.setReferenceTarget(role, target);
      return;
    }

    ReferenceConstraintsDescriptor descriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(node.getConcept().getId()).getReference(role);

    if (descriptor instanceof IllegalReferenceConstraintsDescriptor) {
      node.setReferenceTarget(role, target);
      return;
    }

    threadSet.add(pair);

    try {
      org.jetbrains.mps.openapi.model.SNode oldReferent = node.getReferenceTarget(role);
      if (descriptor.validate(node, oldReferent, target, GlobalScope.getInstance())) {
        node.setReferenceTarget(role, target);
        descriptor.onReferenceSet(node, oldReferent, target, GlobalScope.getInstance());
      }
    } finally {
      threadSet.remove(pair);
    }
  }


  public void setReferenceImpl(org.jetbrains.mps.openapi.model.SNode node, String role, @Nullable org.jetbrains.mps.openapi.model.SReference reference) {
    //todo for symmetry.Not yet used
    node.setReference(role, reference);
  }

  private class InProgressThreadLocal extends ThreadLocal<Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>>> {
    @Override
    protected Set<Pair<org.jetbrains.mps.openapi.model.SNode, String>> initialValue() {
      return new HashSet<Pair<SNode, String>>();
    }
  }
}
