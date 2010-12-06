/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.generator;

import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModelRepository;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * Evgeny Gryaznov, 12/3/10
 */
public class TransientModelsComponent implements ProjectComponent {

  private final ConcurrentMap<IModule, TransientModelsModule> myModuleMap = new ConcurrentHashMap<IModule, TransientModelsModule>();
  private int myModelsToKeepMax = 0; /* unlimited */
  private Project myProject;
  private int myKeptModels;

  public TransientModelsComponent(Project project, MPSProject mpsProject) {
    myProject = project;
  }

  @Override
  public void projectOpened() {
  }

  @Override
  public void projectClosed() {
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Transient Models Component";
  }

  @Override
  public void initComponent() {
  }

  @Override
  public void disposeComponent() {
    clearAll();
  }

  public void removeAllTransient() {
    clearAll();
  }

  public Iterable<TransientModelsModule> getModules() {
    ModelAccess.assertLegalRead();

    List<TransientModelsModule> result = new ArrayList<TransientModelsModule>(myModuleMap.size());
    for(TransientModelsModule m : myModuleMap.values()) {
      if(m.hasPublished()) {
        result.add(m);
      }
    }

    return result;
  }

  public void startGeneration(int numberOfModelsToKeep) {
    clearAll();
    myKeptModels = 0;
    myModelsToKeepMax = numberOfModelsToKeep;
  }

  private void clearAll() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      public void run() {
        List<TransientModelsModule> toRemove = new ArrayList<TransientModelsModule>(myModuleMap.values());
        myModuleMap.clear();
        for(TransientModelsModule m : toRemove) {
          m.disposeModule();
        }
        SModelRepository.getInstance().removeUnusedDescriptors();
      }
    });
  }

  public synchronized void publishAll() {
    ModelAccess.instance().runWriteAction(new Runnable() {
      public void run() {
        for(TransientModelsModule m : myModuleMap.values()) {
          m.publishAll();
        }
      }
    });
  }

  public TransientModelsModule getModule(final IModule module) {
    return ModelAccess.instance().runWriteAction(new Computable<TransientModelsModule>() {
      @Override
      public TransientModelsModule compute() {
        TransientModelsModule transientModelsModule = myModuleMap.get(module);
        if(transientModelsModule != null) {
          return transientModelsModule;
        }

        transientModelsModule = new TransientModelsModule(module, TransientModelsComponent.this);
        transientModelsModule.initModule();
        myModuleMap.put(module, transientModelsModule);
        return transientModelsModule;
      }
    });
  }

  public boolean canKeepOneMore() {
    if(myModelsToKeepMax <= 0) {
      return true;
    }
    return myKeptModels++ < myModelsToKeepMax;
  }
}
