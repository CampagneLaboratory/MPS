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

package jetbrains.mps.idea.core.psi.impl;

import com.intellij.openapi.actionSystem.LangDataKeys;
import com.intellij.openapi.components.AbstractProjectComponent;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.fileEditor.FileEditorDataProvider;
import com.intellij.openapi.fileEditor.FileEditorDataProviderManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiManager;
import com.intellij.psi.PsiTreeChangeEvent;
import com.intellij.psi.impl.PsiManagerEx;
import com.intellij.psi.impl.PsiManagerImpl;
import com.intellij.psi.impl.PsiModificationTrackerImpl;
import com.intellij.psi.impl.PsiTreeChangeEventImpl;
import com.intellij.psi.impl.file.impl.FileManager;
import jetbrains.mps.idea.core.psi.MPS2PsiMapperUtil;
import jetbrains.mps.idea.core.psi.MPSPsiNodeFactory;
import jetbrains.mps.idea.core.psi.impl.events.SModelEventProcessor;
import jetbrains.mps.idea.core.psi.impl.events.SModelEventProcessor.ModelProvider;
import jetbrains.mps.idea.core.psi.impl.events.SModelEventProcessor.ReloadableModel;
import jetbrains.mps.smodel.GlobalSModelEventsManager;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.util.Computable;
import jetbrains.mps.workbench.nodesFs.MPSNodeVirtualFile;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleAdapter;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/**
 * evgeny, 1/25/13
 */
public class MPSPsiProvider extends AbstractProjectComponent {

  // TODO softReference..
  private final ConcurrentMap<SModelReference, MPSPsiModel> models = new ConcurrentHashMap<SModelReference, MPSPsiModel>();
  private final PsiModificationTrackerImpl myModificationTracker;

  public static MPSPsiProvider getInstance(@NotNull Project project) {
    return project.getComponent(MPSPsiProvider.class);
  }

  private SModelEventProcessor myEventProcessor;

  private SModelCommandListener myListener = new SModelCommandListener() {
    public void eventsHappenedInCommand(List<SModelEvent> events) {
      myEventProcessor.process(events);


      // TODO PsiModificationTrackerImpl.incCounter/incOutOfCodeBlockModificationCounter (see JavaCodeBlockModificationListener)
      // TODO notify ANY_PSI_CHANGE_TOPIC
    }
  };

  protected MPSPsiProvider(Project project) {
    super(project);
    myEventProcessor = createEventProcessor();
    PsiManager psiManager = PsiManagerEx.getInstance(project);
    this.myModificationTracker = (PsiModificationTrackerImpl) psiManager.getModificationTracker();
  }

  public void initComponent() {
    GlobalSModelEventsManager.getInstance().addGlobalCommandListener(myListener);
    FileEditorDataProviderManager.getInstance(myProject).registerDataProvider(new PsiFileEditorDataProvider(), null);
  }

  public void disposeComponent() {
    GlobalSModelEventsManager.getInstance().removeGlobalCommandListener(myListener);
  }

  public PsiElement getPsi(SNodeReference nodeRef) {
    if (nodeRef == null) return null;

    final SNode node = nodeRef.resolve(MPSModuleRepository.getInstance());
    if (node == null) return null;
    return getPsi(node);
  }

  public PsiElement getPsi(SNode node) {
    if (node == null) return null;

    // give chance to other to tell us what the PSI element is
    PsiElement source = MPS2PsiMapperUtil.getPsiElement(node, myProject);
    if (source != null) {
      return source;
    }

    final SModel containingModel = node.getModel();
    if (containingModel == null) return null;

    MPSPsiModel psiModel = getPsi(containingModel);
    if (psiModel == null) return null;

    return psiModel.lookupNode(node.getNodeId());
  }

  public MPSPsiModel getPsi(SModel model) {
    // TODO check GlobalSearchScope.projectScope(myProject).contains(modelFile)

    final SModelReference modelRef = model.getReference();
    MPSPsiModel cached = models.get(modelRef);
    if (cached != null) return cached;

    return getMPSPsiModel(model, modelRef);
  }

  public MPSPsiModel getPsi(SModelReference modelRef) {
    MPSPsiModel cached = models.get(modelRef);
    if (cached != null) return cached;

    SModel model = modelRef.resolve(MPSModuleRepository.getInstance());

    // TODO check if the model is valid

    return getMPSPsiModel(model, modelRef);
  }

  public MPSPsiNode create(SNodeId id, SConcept concept, String containingRole) {
    for (MPSPsiNodeFactory factory : MPSPsiNodeFactory.EP_NAME.getExtensions()) {
      final MPSPsiNode psiNode = factory.create(id, concept, containingRole, PsiManager.getInstance(myProject));
      if (psiNode != null) {
        return psiNode;
      }
    }
    return new MPSPsiNode(id, concept.getQualifiedName(), containingRole, PsiManager.getInstance(myProject));
  }

  public MPSPsiRef createReferenceNode(String role, SAbstractConcept linkTargetConcept, SModelReference targetModel, SNodeId targetId) {
    if (linkTargetConcept != null) {
      for (MPSPsiNodeFactory factory : MPSPsiNodeFactory.EP_NAME.getExtensions()) {
        final MPSPsiRef psiRefNode = factory.createReferenceNode(role, linkTargetConcept, targetModel, targetId, PsiManager.getInstance(myProject));
        if (psiRefNode != null) {
          return psiRefNode;
        }
      }
    }
    return new MPSPsiRef(role, targetModel, targetId, PsiManager.getInstance(myProject));
  }

  public MPSPsiRef createReferenceNode(String role, SAbstractConcept linkTargetConcept, String referenceText) {
    if (linkTargetConcept != null) {
      for (MPSPsiNodeFactory factory : MPSPsiNodeFactory.EP_NAME.getExtensions()) {
        final MPSPsiRef psiRefNode = factory.createReferenceNode(role, linkTargetConcept, referenceText, PsiManager.getInstance(myProject));
        if (psiRefNode != null) {
          return psiRefNode;
        }
      }
    }
    return new MPSPsiRef(role, referenceText, PsiManager.getInstance(myProject));
  }

  private MPSPsiModel getMPSPsiModel(final SModel model, final SModelReference modelRef) {
    if (MPS2PsiMapperUtil.hasCorrespondingPsi(model)) return null;

    // synchronizing be model:
    // we guard MPSPsiModel.reload() exactly by model,
    // on the other hand, the key in models is modelRef, but different models in one repo seem to always have
    // different modelRefs
    synchronized (model) {
      MPSPsiModel result = models.get(modelRef);
      if (result == null) {
        result = new MPSPsiModel(modelRef, PsiManager.getInstance(myProject));
        // since some time ago we have to guard MPSPsiModel in this way:
        // MPSPsiModel.reload() should not happen for different instances, which are connected
        // to one SModel, because root nodes are re-used in case of file-per-root persistence.
        // I.e. those root nodes cannot be added as children to a model when they are already children of another
        result.reload(model);
        models.put(modelRef, result);
        model.getModule().addModuleListener(new SModuleAdapter() {
          @Override
          public void beforeModelRenamed(SModule module, SModel model, SModelReference newRef) {
            models.remove(model.getReference());
          }

          @Override
          public void beforeModelRemoved(SModule module, SModel removedModel) {
            if (removedModel != model) return;
            models.remove(modelRef);
          }
        });
        model.addModelListener(myProject.getComponent(PsiModelReloadListener.class));
      }
      return result;
    }
  }

  private SModelEventProcessor createEventProcessor() {
    return new SModelEventProcessor(new ModelProvider() {
      @Override
      public ReloadableModel lookupModel(SModelReference modelReference) {
        // must be alright concurrency-wise, because ConcurrentHashMap creates a memory barrier
        final MPSPsiModel psiModel = models.get(modelReference);
        if (psiModel == null) return null;

        return new ReloadableModel() {
          @Override
          public void reload(SNodeId sNodeId) {
            MPSPsiNode psiNode = psiModel.reload(sNodeId);
            notifyPsiChanged(psiModel, psiNode);
          }

          @Override
          public void reloadAll() {
            psiModel.reloadAll();
            notifyPsiChanged(psiModel, null);
          }
        };
      }
    });
  }

  void notifyPsiChanged(MPSPsiModel model, MPSPsiNodeBase node) {

    if (!model.isValid()) return;

    PsiManager manager = model.getManager();
    if (manager == null || !(manager instanceof PsiManagerImpl)) return;

    myModificationTracker.incCounter();

    // TODO: this is a dumb straightforward solution, better use beforeChage*. Or not?
    manager.dropResolveCaches();

    PsiTreeChangeEventImpl event = new PsiTreeChangeEventImpl(manager);
    event.setParent(node != null ? node : model);
    event.setGenericChange(false);

    ((PsiManagerImpl) manager).childrenChanged(event);
  }

  void notifyModelRenamed(MPSPsiModel model, String oldName, String newName) {
    PsiManager manager = model.getManager();
    if (manager == null || !(manager instanceof PsiManagerImpl)) return;

    myModificationTracker.incCounter();

    // TODO: this is a dumb straightforward solution, better use beforeChage*. Or not?
    manager.dropResolveCaches();

    PsiTreeChangeEventImpl event = new PsiTreeChangeEventImpl(manager);
    event.setElement(model);
    event.setPropertyName(PsiTreeChangeEvent.PROP_FILE_NAME);
    event.setOldValue(oldName);
    event.setNewValue(newName);
    ((PsiManagerImpl) manager).propertyChanged(event);
  }

  private class PsiFileEditorDataProvider implements FileEditorDataProvider {

    @Nullable
    @Override
    public Object getData(String dataId, FileEditor e, VirtualFile file) {
      if (!file.isValid()) return null;

//      if (LangDataKeys.PSI_FILE.is(dataId)) {
//        return getPsiFile(file);
//      }

      if (LangDataKeys.PSI_ELEMENT.is(dataId)) {
        return getPsiPsiElement(file);
      }

      return null;
    }

    private PsiElement getPsiPsiElement(VirtualFile snodeVFile) {
      if (snodeVFile instanceof MPSNodeVirtualFile) {
        final MPSNodeVirtualFile mpsFile = (MPSNodeVirtualFile) snodeVFile;

        final SNodeReference sNodePointer = mpsFile.getSNodePointer();

        MPSPsiModel psiModel = models.get(sNodePointer.getModelReference());
        if (psiModel == null) return null;

        PsiElement psiElement = ModelAccess.instance().runReadAction(new Computable<PsiElement>() {
          @Override
          public PsiElement compute() {
            return getPsi(sNodePointer);
          }
        });
        if (psiElement != null) return psiElement;

        for (MPSPsiRootNode rootNode : psiModel.getChildren(MPSPsiRootNode.class)) {
          if (rootNode.getSNodeReference().equals(mpsFile.getSNodePointer())) {
            return rootNode;
          }
        }

        // TODO not cached node
      }
      return null;
    }

    private PsiFile getPsiFile(VirtualFile snodeVFile) {
      if (snodeVFile instanceof MPSNodeVirtualFile) {
        final MPSNodeVirtualFile mpsFile = (MPSNodeVirtualFile) snodeVFile;
        SNodeReference sNodePointer = mpsFile.getSNodePointer();
        MPSPsiModel mpsPsiModel = models.get(sNodePointer.getModelReference());
        if (mpsPsiModel == null) return null;
        VirtualFile sourceVFile = mpsPsiModel.getSourceVirtualFile();

        FileManager fileManager = ((PsiManagerEx) PsiManagerEx.getInstance(myProject)).getFileManager();
        return fileManager.findFile(sourceVFile);


        // TODO not cached node
      }
      return null;
    }
  }
}
