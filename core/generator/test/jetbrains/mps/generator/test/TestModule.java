/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.generator.test;

import jetbrains.mps.extapi.model.PersistenceProblem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.smodel.BaseSpecialModelDescriptor;
import jetbrains.mps.smodel.InvalidSModel;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.vfs.IFile;
import org.jdom.Document;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModel.Problem;
import org.jetbrains.mps.openapi.model.SModel.Problem.Kind;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Evgeny Gryaznov, 10/18/10
 */
public class TestModule extends AbstractModule {

  private SModule myPeer;
  private Map<String, SModel> myModels = new ConcurrentHashMap<String, SModel>();

  public TestModule(String namespace, String moduleId, SModule peer) {
    myPeer = peer;
    SModuleReference reference = new jetbrains.mps.project.structure.modules.ModuleReference(namespace, moduleId);
    setModuleReference(reference);
  }

  @Override
  public void dispose() {
    clearAll();
    super.dispose();
  }

  @Override
  public IFile getOutputPath() {
    return ((AbstractModule) myPeer).getOutputPath();
  }

  private void clearAll() {
    myPeer = null;
    myModels.clear();
    dependenciesChanged();
  }

  private boolean isValidName(String modelName) {
    return SModelRepository.getInstance().getModelDescriptor(modelName) == null
        && !myModels.containsKey(modelName);
  }

  public SModel createModel(SModel originalModel) {
    String originalLong = SNodeOperations.getModelLongName(originalModel);
    String newModelName = originalLong + "@999";
    while (!isValidName(newModelName)) {
      newModelName += "_";
    }

    SModel result = new TestSModelDescriptor(newModelName, originalModel);

    myModels.put(result.getReference().getModelName(), result);
    return result;
  }

  public void publish(SModel descr) {
    registerModel((SModelBase) descr);
  }

  public String toString() {
    return getName() + " [test transient module]";
  }

  @Override
  public ModuleDescriptor getModuleDescriptor() {
    // todo: is it ok?
    return ((AbstractModule) myPeer).getModuleDescriptor();
  }

  @Override
  public SModel resolveInDependencies(SModelId reference) {
    boolean own = reference.getModelName() != null && myModels.keySet().contains(SModelStereotype.withoutStereotype(reference.getModelName()));
    if (!own) return super.resolveInDependencies(reference);
    return myModels.get(reference.getModelName());
  }

  @Override
  public Iterable<SDependency> getDeclaredDependencies() {
    return myPeer.getDeclaredDependencies();
  }

  @Override
  public Set<SLanguage> getUsedLanguages() {
    return myPeer.getUsedLanguages();
  }

  class TestSModelDescriptor extends BaseSpecialModelDescriptor {
    private final String myLongName;
    private final SModel myToCopy;

    private TestSModelDescriptor(String modelName, SModel toCopy) {
      super(PersistenceFacade.getInstance().createModelReference(null, jetbrains.mps.smodel.SModelId.generate(), modelName));
      myLongName = SModelStereotype.withoutStereotype(modelName);
      myToCopy = toCopy;
    }

    @Override
    public jetbrains.mps.smodel.SModel createModel() {
      if (!myToCopy.isLoaded()) {
        // we are going to access internal/implementation model which might be in a partially-loaded
        // state (only public API guarantees proper loading). With partial model, we could face odd
        // issues (e.g. incomplete set of implicit imports as implementation node's concepts are not considered)
        myToCopy.load();
      }
      Document document = ModelPersistence.saveModel(((SModelBase) myToCopy).getSModel());
      Element rootElement = document.getRootElement();
      rootElement.setAttribute(ModelPersistence.REF, getReference().toString());
      String modelContent = JDOMUtil.asString(document);
      try {
        return ModelPersistence.readModel(modelContent, false);
      } catch (ModelReadException e) {
        return new StubModel(PersistenceFacade.getInstance().createModelReference(myLongName), e);
      }
    }
  }

  private static class StubModel extends jetbrains.mps.smodel.SModel implements InvalidSModel {
    private ModelReadException myCause;

    public StubModel(@NotNull SModelReference modelReference, @Nullable ModelReadException cause) {
      super(modelReference);
      myCause = cause;
    }

    @NotNull
    @Override
    public Iterable<Problem> getProblems() {
      return Collections.<Problem>singleton(
          new PersistenceProblem(Kind.Load, myCause == null ? "Couldn't read model." : myCause.getMessageEx(), null, true));
    }
  }
}
