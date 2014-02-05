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
package jetbrains.mps.project;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.smodel.BaseScope;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.SModelRepository;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;

public class GlobalScope extends BaseScope implements CoreComponent {
  private static GlobalScope INSTANCE;

  public static GlobalScope getInstance() {
    return INSTANCE;
  }

  protected final MPSModuleRepository myMPSModuleRepository;
  protected final SModelRepository myModelRepository;

  public GlobalScope(MPSModuleRepository moduleRepository, SModelRepository repository) {
    myMPSModuleRepository = moduleRepository;
    myModelRepository = repository;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
  }

  @Override
  public void dispose() {
    INSTANCE = null;
  }

  public String toString() {
    return "global scope";
  }

  @Override
  public Iterable<SModule> getModules() {
    return myMPSModuleRepository.getModules();
  }

  @Override
  public Iterable<SModel> getModels() {
    return new ArrayList<SModel>(myModelRepository.getModelDescriptors());
  }

  @Override
  public SModule resolve(SModuleReference reference) {
    return myMPSModuleRepository.getModule(reference.getModuleId());
  }

  @Override
  public SModel resolve(SModelReference reference) {
    return myModelRepository.getModelDescriptor(reference.getModelId());
  }
}
