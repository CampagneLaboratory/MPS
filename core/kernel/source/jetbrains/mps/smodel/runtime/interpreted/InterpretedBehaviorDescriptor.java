/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package jetbrains.mps.smodel.runtime.interpreted;

import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.kernel.model.SModelUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.runtime.base.BaseBehaviorDescriptor;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNode;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class InterpretedBehaviorDescriptor extends BaseBehaviorDescriptor {
  private final Map<String, Method> methods = new ConcurrentHashMap<String, Method>();

  public InterpretedBehaviorDescriptor(String fqName) {
    super(fqName);
  }

  @Override
  public Object invoke(@NotNull SNode node, String methodName, Object[] parameters) {
    return genericInvoke(node, methodName, parameters);
  }

  @Override
  public Object invokeStatic(@NotNull SAbstractConcept concept, String methodName, Object[] parameters) {
    return genericInvoke(concept, methodName, parameters);
  }

  private Object genericInvoke(@NotNull Object arg, String methodName, Object[] parameters) {
    Method method = methods.get(methodName);
    if (method == null) {
      method = findMethod(getConceptFqName(), methodName);
      if (method != null) {
        methods.put(methodName, method);
      } else {
        throw new RuntimeException(new NoSuchMethodException("No such method for " + methodName + " in " + getConceptFqName()));
      }
    }

    Object[] params = new Object[parameters.length + 1];
    params[0] = arg;
    System.arraycopy(parameters, 0, params, 1, parameters.length);

    try {
      return method.invoke(this, params);
    } catch (IllegalAccessException e) {
      throw new RuntimeException(e);
    } catch (InvocationTargetException e) {
      Throwable cause = e.getCause();
      if (cause instanceof RuntimeException) {
        throw (RuntimeException) cause;
      } else if (cause instanceof Error) {
        throw (Error) cause;
      }
      throw new RuntimeException(e);
    }
  }

  private static Method findMethod(final String conceptFqName, final String methodName) {
    // todo: use SConcept here
    return NodeReadAccessCasterInEditor.runReadTransparentAction(new Computable<Method>() {
      @Override
      public Method compute() {
        Map<String, Method> methods = new HashMap<String, Method>();

        String languageNamespace = NameUtil.namespaceFromConceptFQName(conceptFqName);
        final Language language = ModuleRepositoryFacade.getInstance().getModule(languageNamespace, Language.class);

        Set<SNode> processed = new HashSet<SNode>();

        List<SNode> concepts = Collections.singletonList(SConceptOperations.findConceptDeclaration(conceptFqName));
        while (!concepts.isEmpty()) {
          List<SNode> newFrontier = new ArrayList<SNode>();
          for (SNode currentConcept : concepts) {
            assert currentConcept != null;
            if (processed.contains(currentConcept)) {
              continue;
            }
            String fqName = NameUtil.nodeFQName(currentConcept);
            Class cls = getGeneratedClass(fqName, behaviorClassByConceptFqName(fqName));
            if (cls != null) {
              for (Method method : cls.getMethods()) {
                if (method.getName().equals(methodName)) {
                  return method;
                }
              }
            }

            if (SNodeUtil.isInstanceOfConceptDeclaration(currentConcept)) {
              for (SNode interfaceConcept : SNodeUtil.getConceptDeclaration_Implements(currentConcept)) {
                if (interfaceConcept == null || processed.contains(interfaceConcept)) continue;
                newFrontier.add(interfaceConcept);
              }
              SNode parentConcept = SNodeUtil.getConceptDeclaration_Extends(currentConcept);
              if (parentConcept != null && !processed.contains(parentConcept)) {
                newFrontier.add(parentConcept);
              }
            } else if (SNodeUtil.isInstanceOfInterfaceConceptDeclaration(currentConcept)) {
              for (SNode interfaceConcept : SNodeUtil.getInterfaceConceptDeclaration_Extends(currentConcept)) {
                if (interfaceConcept == null || processed.contains(interfaceConcept)) continue;
                newFrontier.add(interfaceConcept);
              }
            }
            processed.add(currentConcept);
          }

          SNode baseConcept = SNodeUtil.concept_BaseConcept.getDeclarationNode();
          if (newFrontier.size() == 0 && !processed.contains(baseConcept)) {
            newFrontier.add(baseConcept);
          }

          concepts = newFrontier;
        }

        return null;
      }
    });
  }
}
