package jetbrains.mps.smodel;

import com.intellij.ide.DataManager;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task.Modal;
import com.intellij.openapi.project.Project;
import jetbrains.mps.generator.GeneratorManager;
import jetbrains.mps.generator.IGenerationType;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.messages.DefaultMessageHandler;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.IModule;
import jetbrains.mps.project.ModuleContext;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.refactoring.LoggableRefactoringViewAction;
import jetbrains.mps.refactoring.NewRefactoringView;
import jetbrains.mps.refactoring.framework.ILoggableRefactoring;
import jetbrains.mps.refactoring.framework.RefactoringContext;
import jetbrains.mps.refactoring.framework.RefactoringHistory;
import jetbrains.mps.refactoring.framework.RefactoringNodeMembersAccessModifier;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.editors.MPSEditorOpener;
import org.jetbrains.annotations.NotNull;

import javax.swing.JOptionPane;
import javax.swing.SwingUtilities;
import java.util.*;

public class RefactoringProcessor {
  private static final Logger LOG = Logger.getLogger(RefactoringProcessor.class);

  public void execute(final ILoggableRefactoring refactoring, final RefactoringContext refactoringContext) {
    refactoringContext.setRefactoring(refactoring);

    boolean success = refactoring.askForInfo(refactoringContext);
    if (!success) return;

    ModelAccess.instance().runWriteActionInCommand(new Runnable() {
      public void run() {
        if (refactoring.showsAffectedNodes()) {
          Thread thread = new Thread() {
            public void run() {
              final boolean toReturn[] = new boolean[]{false};
              ThreadUtils.runInUIThreadAndWait(new Runnable() {
                public void run() {
                  final boolean[] wasError = new boolean[]{false};
                  ProgressManager.getInstance().run(new Modal(refactoringContext.getCurrentOperationContext().getComponent(Project.class), "Finding usages...", false) {
                    public void run(@NotNull ProgressIndicator indicator) {
                      indicator.setIndeterminate(true);
                      ModelAccess.instance().runReadAction(new Runnable() {
                        public void run() {
                          try {
                            refactoringContext.setCurrentOperationContext(new ProjectOperationContext(refactoringContext.getSelectedMPSProject()));
                            refactoringContext.setUsages(refactoring.getAffectedNodes(refactoringContext));
                          } catch (Throwable t) {
                            LOG.error(t);
                            wasError[0] = true;
                          }
                        }
                      });
                    }
                  });
                  if (wasError[0]) {
                    int promptResult = JOptionPane.showConfirmDialog(MPSDataKeys.FRAME.getData(DataManager.getInstance().getDataContext()),
                      "An exception occurred during searching affected nodes. Do you want to continue anyway?", "Exception", JOptionPane.YES_NO_OPTION);
                    toReturn[0] = promptResult == JOptionPane.NO_OPTION;
                  }
                }
              });
              if (toReturn[0]) return;
              SearchResults usages = refactoringContext.getUsages();
              if (usages == null || (refactoring.refactorImmediatelyIfNoUsages() && usages.getSearchResults().isEmpty())) {
                doExecuteInThread(refactoringContext);
              } else {
                ThreadUtils.runInUIThreadNoWait(new Runnable() {
                  public void run() {
                    ModelAccess.instance().runReadAction(new Runnable() {
                      public void run() {
                        refactoringContext.getCurrentOperationContext().getComponent(NewRefactoringView.class).showRefactoringView(new LoggableRefactoringViewAction(refactoringContext), refactoringContext.getUsages());
                      }
                    });
                  }
                });
              }
            }
          };
          thread.start();
        } else {
          doExecuteInThread(refactoringContext);
        }
      }
    });
  }

  public Thread doExecuteInThread(final @NotNull RefactoringContext refactoringContext) {
    Thread result = new Thread() {
      public void run() {
        doExecute(refactoringContext, null);
      }
    };
    result.start();
    return result;
  }

  public void doExecuteInTest(RefactoringContext refactoringContext, Runnable continuation) {
    doExecute(refactoringContext, continuation);
  }

  private void doExecute(final @NotNull RefactoringContext refactoringContext, final Runnable continuation) {
    Thread t = Thread.currentThread();
    System.err.println("current thread is " + t);

    final ILoggableRefactoring refactoring = refactoringContext.getRefactoring();
    Runnable runnable = new Runnable() {
      public void run() {
        ModelAccess.instance().runWriteActionInCommand(new Runnable() {
          public void run() {
            SModelDescriptor modelDescriptor = refactoringContext.getSelectedModel();
            SModelUID initialModelUID = modelDescriptor.getModelUID();
            refactoring.doRefactor(refactoringContext);
            final List<SNode> nodesToOpen = refactoring.getNodesToOpen(refactoringContext);
            if (!nodesToOpen.isEmpty()) {
              ApplicationManager.getApplication().invokeLater(new Runnable() {
                public void run() {
                  for (SNode nodeToOpen : nodesToOpen) {
                    // we can't open node outside of EDT
                    refactoringContext.getCurrentOperationContext().getComponent(MPSEditorOpener.class).openNode(nodeToOpen);
                  }
                }
              });
            }
            SModel model = modelDescriptor.getSModel();
            refactoringContext.computeCaches();
            SearchResults usages = refactoringContext.getUsages();
            final Map<IModule, List<SModel>> moduleToModelsMap = refactoring.getModelsToGenerate(refactoringContext);
            List<SModel> modelsToUpdate = refactoring.getModelsToUpdate(refactoringContext);
            if (!refactoringContext.isLocal()) {
              if (refactoring.doesUpdateModel()) {
                writeInLogAndUpdateModels(initialModelUID, model, refactoringContext);
              }
            } else {
              if (refactoring.doesUpdateModel()) {
                Set<SModel> modelsToProcess = new LinkedHashSet<SModel>();
                if (usages != null) {
                  modelsToProcess.addAll(usages.getModelsWithResults());
                }
                modelsToProcess.addAll(modelsToUpdate);

                for (SModel anotherModel : modelsToProcess) {
                  processModel(anotherModel, model, refactoringContext);
                }
              }
            }
            SwingUtilities.invokeLater(new Runnable() {
              public void run() {
                if (moduleToModelsMap != null && !moduleToModelsMap.isEmpty()) {
                  ProgressManager.getInstance().run(new Modal(refactoringContext.getCurrentOperationContext().getComponent(Project.class), "Generation", true) {
                    public void run(@NotNull ProgressIndicator progress) {
                      generateModels(moduleToModelsMap, refactoringContext, progress);
                    }
                  });
                  if (continuation != null) {
                    continuation.run();
                  }
                }
              }
            });
          }
        });
      }
    };
    ThreadUtils.runInUIThreadNoWait(runnable);
  }

  public void writeInLogAndUpdateModels(SModelUID initialModelUID, SModel model, RefactoringContext refactoringContext) {
    writeIntoLog(model, refactoringContext);
    for (SModelDescriptor anotherDescriptor : SModelRepository.getInstance().getModelDescriptors()) {
      if (!SModelStereotype.isUserModel(anotherDescriptor)) {
        continue;
      }
      if (!anotherDescriptor.isInitialized()) continue;
      SModel anotherModel = anotherDescriptor.getSModel();

      Set<SModelUID> dependenciesModels = anotherModel.getDependenciesModelUIDs();
      if (model != anotherModel
        && !dependenciesModels.contains(initialModelUID)) continue;
      processModel(anotherModel, model, refactoringContext);
    }
  }

  private void generateModels(final Map<IModule, List<SModel>> sourceModels, final RefactoringContext refactoringContext, final ProgressIndicator progressIndicator) {
    if (!refactoringContext.getDoesGenerateModels()) {
      return;
    }
    final RefactoringNodeMembersAccessModifier modifier = new RefactoringNodeMembersAccessModifier();
    for (final IModule sourceModule : sourceModels.keySet()) {
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          try {
            refactoringContext.setUpMembersAccessModifier(modifier);
            IOperationContext operationContext = new ModuleContext(sourceModule, refactoringContext.getSelectedMPSProject());
            final List<SModel> models = sourceModels.get(sourceModule);
            modifier.addModelsToModify(models);
            SNode.setNodeMemeberAccessModifier(modifier);

            List<SModelDescriptor> descriptors = new ArrayList<SModelDescriptor>();
            for (SModel model : models) {
              descriptors.add(model.getModelDescriptor());
            }

            new GeneratorManager(operationContext.getComponent(Project.class)).generateModels(descriptors,
              operationContext,
              IGenerationType.FILES,
              progressIndicator,
              new DefaultMessageHandler(operationContext.getMPSProject())
            );
          } finally {
            SNode.setNodeMemeberAccessModifier(null);
          }
        }
      });
    }
  }

  private void processModel(SModel model, SModel usedModel, RefactoringContext refactoringContext) {
    refactoringContext.getRefactoring().updateModel(model, refactoringContext);
    model.updateImportedModelUsedVersion(usedModel.getUID(), usedModel.getVersion());
  }

  private void writeIntoLog(SModel model, RefactoringContext refactoringContext) {
    if (refactoringContext.isLocal()) return;
    RefactoringHistory refactoringHistory = model.getRefactoringHistory();
    refactoringHistory.addRefactoringContext(refactoringContext);
    model.increaseVersion();
    refactoringContext.setModelVersion(model.getVersion());
  }
}
