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
package jetbrains.mps.smodel;

import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.util.Computable;
import com.intellij.openapi.application.ApplicationManager;
import org.jetbrains.annotations.NotNull;

import java.util.Set;
import java.util.Map;
import java.util.HashMap;
import java.util.HashSet;

import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.lang.structure.structure.ConceptDeclaration;
import jetbrains.mps.lang.structure.structure.InterfaceConceptReference;
import jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.nodeEditor.NodeReadAccessCaster;
import jetbrains.mps.project.GlobalScope;
import jetbrains.mps.smodel.event.SModelReferenceEvent;
import jetbrains.mps.smodel.event.SModelRootEvent;

public class LanguageHierarchyCache implements ApplicationComponent {
  public static LanguageHierarchyCache getInstance() {
    return ApplicationManager.getApplication().getComponent(LanguageHierarchyCache.class);
  }

  private Map<String, Set<String>> myAncestorsNamesMap = new HashMap<String, Set<String>>();
  private Map<String, Set<String>> myParentsNamesMap = new HashMap<String, Set<String>>();
  private Map<String, Set<String>> myDescendantsCache = new HashMap<String, Set<String>>();
  private boolean myDescendantsCachesAreValid = false;

  private SModelRepositoryAdapter myRepositoryListener = null;
  private SModelAdapter myModelListener = null;

  private SModelRepository mySModelRepository;
  private MPSModuleRepository myModuleRepository;

  public LanguageHierarchyCache(SModelRepository modelRepository, MPSModuleRepository moduleRepository) {
    mySModelRepository = modelRepository;
    myModuleRepository = moduleRepository;
  }

  @NotNull
  public String getComponentName() {
    return "Language Hierarchy Cache";
  }

  public void initComponent() {
    myRepositoryListener = new SModelRepositoryAdapter() {
      public void modelAdded(SModelDescriptor modelDescriptor) {
        modelDescriptor.addModelListener(myModelListener);
      }
    };

    myModelListener = new SModelAdapter() {
      public void modelChangedDramatically(SModel model) {
        myDescendantsCachesAreValid = false;
        invalidateCache();
      }
    };

    //for consistency
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (Language language : myModuleRepository.getAllLanguages()) {
          SModelDescriptor structureDescriptor = language.getStructureModelDescriptor();
          assert structureDescriptor != null;
          structureDescriptor.addModelListener(myModelListener);
        }

        mySModelRepository.addModelRepositoryListener(myRepositoryListener);
      }
    });
  }

  public void disposeComponent() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (Language language : myModuleRepository.getAllLanguages()) {
          SModelDescriptor structureDescriptor = language.getStructureModelDescriptor();
          structureDescriptor.removeModelListener(myModelListener);
        }

        mySModelRepository.removeModelRepositoryListener(myRepositoryListener);
      }
    });
  }

  public void invalidateCache() {
    myDescendantsCache.clear();
    myDescendantsCachesAreValid = false;

    myParentsNamesMap.clear();
    myAncestorsNamesMap.clear();
  }

  public Set<String> getParentsNames(String conceptFqName) {
    if (myParentsNamesMap.containsKey(conceptFqName)) {
      return new HashSet<String>(myParentsNamesMap.get(conceptFqName));
    }
    Set<String> result = new HashSet<String>();
    AbstractConceptDeclaration declaration = SModelUtil_new.findConceptDeclaration(conceptFqName, GlobalScope.getInstance());
    if (declaration == null) {
      return result;
    }
    if (declaration instanceof ConceptDeclaration) {
      ConceptDeclaration cd = (ConceptDeclaration) declaration;
      if (cd.getExtends() != null) {
        result.add(NameUtil.nodeFQName(cd.getExtends()));
      }
      for (InterfaceConceptReference icr : cd.getImplementses()) {
        result.add(NameUtil.nodeFQName(icr.getIntfc()));
      }
    }
    if (declaration instanceof InterfaceConceptDeclaration) {
      InterfaceConceptDeclaration icd = (InterfaceConceptDeclaration) declaration;
      for (InterfaceConceptReference icr : icd.getExtendses()) {
        result.add(NameUtil.nodeFQName(icr.getIntfc()));
      }
    }
    myParentsNamesMap.put(conceptFqName, result);
    return result;
  }

  public Set<String> getAncestorsNames(final String conceptFqName) {
    if (myAncestorsNamesMap.containsKey(conceptFqName)) {
      //return new HashSet<String>(myParentsNamesMap.get(conceptFqName));
      return myAncestorsNamesMap.get(conceptFqName);
    } else {
      return NodeReadAccessCaster.runReadTransparentAction(new Computable<Set<String>>() {
        public Set<String> compute() {
          Set<String> result = new HashSet<String>();
          AbstractConceptDeclaration declaration = SModelUtil_new.findConceptDeclaration(conceptFqName, GlobalScope.getInstance());
          Set<String> parents = new HashSet<String>();
          if (declaration == null) {
            return result;
          }

          result.add(conceptFqName);

          if (declaration instanceof ConceptDeclaration) {
            ConceptDeclaration cd = (ConceptDeclaration) declaration;
            ConceptDeclaration extendedConcept = cd.getExtends();
            if (extendedConcept != null) {
              String fqName = NameUtil.nodeFQName(extendedConcept);
              Language declaringLanguage = SModelUtil_new.getDeclaringLanguage(fqName, GlobalScope.getInstance());
              if (declaringLanguage != null) {
                parents.add(fqName);
                result.addAll(getAncestorsNames(fqName));
              }
            }

            for (InterfaceConceptReference icr : cd.getImplementses()) {
              InterfaceConceptDeclaration interfaceConcept = icr.getIntfc();
              if (interfaceConcept == null) continue;
              String fqName = NameUtil.nodeFQName(interfaceConcept);
              Language declaringLanguage = SModelUtil_new.getDeclaringLanguage(fqName, GlobalScope.getInstance());
              if (declaringLanguage == null) continue;
              parents.add(fqName);
              result.addAll(getAncestorsNames(fqName));
            }
          }

          if (declaration instanceof InterfaceConceptDeclaration) {
            InterfaceConceptDeclaration icd = (InterfaceConceptDeclaration) declaration;
            for (InterfaceConceptReference icr : icd.getExtendses()) {
              InterfaceConceptDeclaration interfaceConcept = icr.getIntfc();
              if (interfaceConcept == null) continue;
              String fqName = NameUtil.nodeFQName(interfaceConcept);
              Language declaringLanguage = SModelUtil_new.getDeclaringLanguage(fqName, GlobalScope.getInstance());
              if (declaringLanguage == null) continue;
              parents.add(fqName);
              result.addAll(getAncestorsNames(fqName));
            }
          }
          myParentsNamesMap.put(conceptFqName, parents);
          myAncestorsNamesMap.put(conceptFqName, result);
          return result;
        }
      });
    }
  }

  public Set<String> getDescendantsOfConcept(String congeptFQName) {
    if (!myDescendantsCachesAreValid) {
      rebuildCaches();
    }
    Set<String> children = myDescendantsCache.get(congeptFQName);
    if (children == null) return new HashSet<String>();
    return children;
  }

  private void addToCache(String nodeFQName) {
    for (String parentFQName : getParentsNames(nodeFQName)) {
      if (!myDescendantsCache.containsKey(parentFQName)) myDescendantsCache.put(parentFQName, new HashSet<String>());
      myDescendantsCache.get(parentFQName).add(nodeFQName);
    }
  }

  private void rebuildCaches() {
    myDescendantsCache.clear();
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        for (Language language : myModuleRepository.getAllLanguages()) {
          SModelDescriptor structureDescriptor = language.getStructureModelDescriptor();
          if (structureDescriptor != null) {
            for (SNode root : structureDescriptor.getSModel().getRoots()) {
              if (root.isInstanceOfConcept(AbstractConceptDeclaration.concept)) {
                addToCache(NameUtil.nodeFQName(root));
              }
            }
          }
        }
      }
    });
    myDescendantsCachesAreValid = true;
  }
}
