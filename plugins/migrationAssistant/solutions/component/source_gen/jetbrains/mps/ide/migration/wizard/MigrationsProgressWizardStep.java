package jetbrains.mps.ide.migration.wizard;

/*Generated by MPS */

import jetbrains.mps.ide.migration.MigrationManager;
import com.intellij.ui.components.JBList;
import com.intellij.openapi.progress.Task;
import com.intellij.openapi.wm.impl.status.InlineProgressIndicator;
import java.util.Set;
import java.util.HashSet;
import com.intellij.openapi.project.Project;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.progress.ProgressIndicator;
import jetbrains.mps.persistence.PersistenceRegistry;
import org.apache.log4j.Level;
import javax.swing.JComponent;
import javax.swing.DefaultListModel;
import java.util.Collections;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.BorderFactory;
import com.intellij.ui.components.JBScrollPane;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.progress.ProgressManager;
import java.util.Map;
import jetbrains.mps.ide.migration.ProgressEstimation;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.ide.migration.ScriptApplied;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.migration.component.util.MigrationsUtil;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.migration.check.MigrationCheckUtil;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import com.intellij.openapi.application.ModalityState;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.lang.migration.runtime.base.Problem;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.ide.migration.MigrationScriptApplied;
import jetbrains.mps.lang.migration.runtime.base.MigrationScriptReference;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.ide.migration.check.MissingMigrationProblem;
import jetbrains.mps.ide.migration.RefactoringLogApplied;
import jetbrains.mps.lang.migration.runtime.base.RefactoringLogReference;
import jetbrains.mps.project.AbstractModule;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class MigrationsProgressWizardStep extends MigrationWizardStep {
  public static final String ID = "progress";
  private MigrationManager myManager;
  private JBList myList;
  private Task myTask;
  private InlineProgressIndicator myProgress;
  private Set<String> myExecuted = new HashSet<String>();
  private MigrationErrorContainer myErrorContainer;
  private volatile boolean myIsComplete = false;

  public MigrationsProgressWizardStep(Project project, MigrationManager manager, MigrationErrorContainer errorContainer) {
    super(project, "Migration In Progress", ID);
    myManager = manager;
    myErrorContainer = errorContainer;
    this.myTask = new Task.Modal(project, "Migration progress", false) {
      public void run(@NotNull ProgressIndicator progress) {
        PersistenceRegistry.getInstance().disableFastFindUsages();
        try {
          doRun(progress);
        } catch (Throwable t) {
          addElementToMigrationList("Finished with exception");
          if (LOG.isEnabledFor(Level.ERROR)) {
            LOG.error("exception occured on migration", t);
          }
        } finally {
          myIsComplete = true;
          setFraction(progress, 1.0);
          myProgress.setText("Finished");
          PersistenceRegistry.getInstance().enableFastFindUsages();
        }
      }
    };
  }

  @Override
  protected final void doCreateComponent(JComponent mainPanel) {
    myList = new JBList(new DefaultListModel());
    myList.setCellRenderer(new MigrationsListRenderer(myExecuted, Collections.emptySet()));
    JPanel listPanel = new JPanel(new BorderLayout(5, 5));
    listPanel.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createEmptyBorder(0, 0, 2, 0), BorderFactory.createEtchedBorder()));
    listPanel.add(new JBScrollPane(myList), BorderLayout.CENTER);
    myProgress = new InlineProgressIndicator(true, myTask) {
      @Override
      protected boolean isFinished() {
        return myIsComplete;
      }
    };
    myProgress.setIndeterminate(false);
    mainPanel.add(listPanel, BorderLayout.CENTER);
    mainPanel.add(myProgress.getComponent(), BorderLayout.SOUTH);
  }

  @Override
  public void autostart(final _FunctionTypes._void_P0_E0 later) {
    // this is needed to fully show the step before first migration is started 
    ApplicationManager.getApplication().invokeLater(new Runnable() {
      public void run() {
        ApplicationManager.getApplication().executeOnPooledThread(new Runnable() {
          public void run() {
            ProgressManager.getInstance().runProcess(new Runnable() {
              public void run() {
                myTask.run(myProgress);
                later.invoke();
              }
            }, myProgress);

          }
        });

      }
    });
  }

  private void doRun(final ProgressIndicator progress) {
    Map<String, Object> options = InitialStep.getOptions();
    setFraction(progress, ProgressEstimation.initial());

    boolean cleanNotification = false;
    List<MigrationManager.MigrationStep> cleanupMigrations = ListSequence.fromList(new ArrayList<MigrationManager.MigrationStep>());
    int cleanupStepsCount = myManager.projectStepsCount(true);
    int stepNum = 0;
    while (true) {
      MigrationManager.MigrationStep step = myManager.nextProjectStep(options, true);
      if (step == null) {
        break;
      }

      ListSequence.fromList(cleanupMigrations).addElement(step);
      if (!(executeSingleStep(step))) {
        break;
      }

      if (!(cleanNotification)) {
        cleanNotification = true;
        addElementToMigrationList("Cleaning project... Please wait.");
      }

      stepNum++;
      setFraction(progress, ProgressEstimation.cleanupMigrations(1.0 * stepNum / cleanupStepsCount));
    }

    addElementToMigrationList("Checking migrations consistency... Please wait.");
    List<ScriptApplied.ScriptAppliedReference> missingMigrations = myManager.getMissingMigrations();
    setFraction(progress, ProgressEstimation.migrationsCheck(1.0));
    if (ListSequence.fromList(missingMigrations).isNotEmpty()) {
      myErrorContainer.setErrorDescriptor(new MigrationsProgressWizardStep.MigrationsMissingError(missingMigrations));
      addElementToMigrationList("Some migrations are missing. Press 'Next' to continue.");
      return;
    }

    addElementToMigrationList("Checking models... Please wait.");
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Iterable<SModule> modules = MigrationsUtil.getMigrateableModulesFromProject(ProjectHelper.toMPSProject(myProject));
        if (MigrationCheckUtil.haveProblems(modules, new _FunctionTypes._void_P1_E0<Double>() {
          public void invoke(Double fraction) {
            setFraction(progress, ProgressEstimation.preCheck(fraction));
          }
        })) {
          myErrorContainer.setErrorDescriptor(new MigrationsProgressWizardStep.PreCheckError());
        }
      }
    });
    if (myErrorContainer.getErrorDescriptor() != null) {
      // start cleanup migrations next time migration is started 
      for (MigrationManager.MigrationStep cleanupMigration : ListSequence.fromList(cleanupMigrations)) {
        cleanupMigration.forceExecutionNextTime();
      }
      addElementToMigrationList("Can't start migration: errors detected. Press 'Next' to continue.");
      return;
    }

    int projectStepsCount = myManager.projectStepsCount(false);
    stepNum = 0;
    while (executeSingleStep(myManager.nextProjectStep(options, false))) {
      stepNum++;
      setFraction(progress, ProgressEstimation.projectMigrations(1.0 * stepNum / projectStepsCount));
    }
    if (myErrorContainer.getErrorDescriptor() != null) {
      addElementToMigrationList("Exception while running migration. Press 'Next' to continue.");
      return;
    }

    int languageStepsCount = myManager.moduleStepsCount();
    stepNum = 0;
    while (executeSingleStep(myManager.nextModuleStep())) {
      stepNum++;
      setFraction(progress, ProgressEstimation.languageMigrations(1.0 * stepNum / languageStepsCount));
    }
    if (myErrorContainer.getErrorDescriptor() != null) {
      addElementToMigrationList("Exception while running migration. Press 'Next' to continue.");
      return;
    }

    addElementToMigrationList("Saving changed models... Please wait.");
    ModelAccess.instance().runWriteInEDT(new Runnable() {
      public void run() {
        MPSModuleRepository.getInstance().saveAll();
      }
    });
    setFraction(progress, ProgressEstimation.saving(1.0));

    addElementToMigrationList("Checking models... Please wait.");
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        Iterable<SModule> modules = MigrationsUtil.getMigrateableModulesFromProject(ProjectHelper.toMPSProject(myProject));
        final Wrappers._int moduleNum = new Wrappers._int(0);
        if (MigrationCheckUtil.haveProblems(modules, new _FunctionTypes._void_P1_E0<Double>() {
          public void invoke(Double fraction) {
            moduleNum.value++;
            setFraction(progress, ProgressEstimation.postCheck(fraction));
          }
        })) {
          myErrorContainer.setErrorDescriptor(new MigrationsProgressWizardStep.PostCheckError());
        }
      }
    });
    if (myErrorContainer.getErrorDescriptor() != null) {
      addElementToMigrationList("Errors are detected in project after executing migrations. Press 'Next' to continue.");
      return;
    }

    addElementToMigrationList("Done!");
  }

  public void setFraction(final ProgressIndicator p, final double fraction) {
    ApplicationManager.getApplication().invokeLater(new Runnable() {
      public void run() {
        p.setFraction(fraction);
      }
    }, ModalityState.any());
  }

  private void addElementToMigrationList(final String step) {
    final DefaultListModel model = (DefaultListModel) myList.getModel();
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        model.addElement(step);
        myList.ensureIndexIsVisible(model.lastIndexOf(step));
        myList.repaint();
      }
    });
  }

  private boolean executeSingleStep(final MigrationManager.MigrationStep result) {
    if (result == null) {
      return false;
    }

    final String step = ((MigrationManager.MigrationStep) result).getDescription();
    addElementToMigrationList(step);

    final Wrappers._boolean noException = new Wrappers._boolean();
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        noException.value = ((MigrationManager.MigrationStep) result).execute();
      }
    });

    if (!(noException.value)) {
      myErrorContainer.setErrorDescriptor(new MigrationsProgressWizardStep.MigrationExceptionError());
    }

    return noException.value;
  }

  @Override
  public Object getNextStepId() {
    if (!(isComplete())) {
      return null;
    }
    if (myErrorContainer.getErrorDescriptor() == null) {
      return null;
    }

    return MigrationErrorWizardStep.ID;
  }

  @Override
  public Object getPreviousStepId() {
    return null;
  }

  @Override
  public boolean isComplete() {
    return myIsComplete;
  }

  @Override
  public boolean canBeCancelled() {
    return false;
  }

  private class PreCheckError extends MigrationErrorDescriptor {
    public PreCheckError() {
    }
    public String getMessage() {
      return "Migration Assistant found that some problems that prevent this project from being migrated.<br><br>" + "Try running migrations after correcting your project and/or adding necessary libraries.<br>" + "Migration Assistant will be started again on next project opening or it can be started " + "manually by choosing Tools->Run Migration Assistant from the main menu.<br><br>" + "Problems will be shown in Model Checker tool when the project is loaded.";
    }
    public Iterable<Problem> getProblems() {
      jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(myProject);
      Iterable<SModule> modules = MigrationsUtil.getMigrateableModulesFromProject(mpsProject);
      return MigrationCheckUtil.getProblems(modules, null, 100);
    }
  }

  private class PostCheckError extends MigrationErrorDescriptor {
    public PostCheckError() {
    }
    public String getMessage() {
      return "Migration Assistant was unable to migrate some nodes in this project.<br><br>" + "Problem nodes will be shown in Model Checker tool after the project is loaded.<br>" + "Please correct them manually.";
    }
    public Iterable<Problem> getProblems() {
      jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(myProject);
      Iterable<SModule> modules = MigrationsUtil.getMigrateableModulesFromProject(mpsProject);
      return MigrationCheckUtil.getProblems(modules, null, 100);
    }
  }
  private class MigrationExceptionError extends MigrationErrorDescriptor {
    public MigrationExceptionError() {
    }
    public String getMessage() {
      return "Exception while running migration. See error log for details.";
    }
    public Iterable<Problem> getProblems() {
      return Collections.<Problem>emptyList();
    }
  }
  private class MigrationsMissingError extends MigrationErrorDescriptor {
    private List<ScriptApplied.ScriptAppliedReference> errors;
    public MigrationsMissingError(List<ScriptApplied.ScriptAppliedReference> errors) {
      this.errors = errors;
    }
    public String getMessage() {
      return "Migration was not completed.<br>" + "Some migration scripts are missing or finished with errors.<br><br>" + "Problems will be shown in Model Checker tool after the project is loaded.<br>" + "You can try to continue migrations manually or execute Migration Assistant later by selecting Tools->Run Migration Assistant from the main menu.";
    }
    public Iterable<Problem> getProblems() {
      final List<SModule> modules = ListSequence.fromList(errors).select(new ISelector<ScriptApplied.ScriptAppliedReference, SModule>() {
        public SModule select(ScriptApplied.ScriptAppliedReference it) {
          return it.getModule();
        }
      }).toListSequence();
      return ListSequence.fromList(errors).ofType(MigrationScriptApplied.MigrationScriptAppliedReference.class).select(new ISelector<MigrationScriptApplied.MigrationScriptAppliedReference, MigrationScriptReference>() {
        public MigrationScriptReference select(MigrationScriptApplied.MigrationScriptAppliedReference it) {
          return it.getMigrationSciptReference();
        }
      }).distinct().select(new ISelector<MigrationScriptReference, Problem>() {
        public Problem select(final MigrationScriptReference it) {
          List<SModule> languageUsages = ListSequence.fromList(modules).where(new IWhereFilter<SModule>() {
            public boolean accept(SModule module) {
              return SetSequence.fromSet(MigrationsUtil.getUsedLanguages(module)).contains(it.getLanguage());
            }
          }).toListSequence();
          return (Problem) new MissingMigrationProblem.MissingMigrationScriptProblem(it, Collections.min(ListSequence.fromList(languageUsages).select(new ISelector<SModule, Integer>() {
            public Integer select(SModule module) {
              return module.getUsedLanguageVersion(it.getLanguage());
            }
          }).toListSequence()));
        }
      }).concat(ListSequence.fromList(errors).ofType(RefactoringLogApplied.RefactoringLogAppliedReference.class).select(new ISelector<RefactoringLogApplied.RefactoringLogAppliedReference, RefactoringLogReference>() {
        public RefactoringLogReference select(RefactoringLogApplied.RefactoringLogAppliedReference it) {
          return it.getRefactoringLogReference();
        }
      }).distinct().select(new ISelector<RefactoringLogReference, Problem>() {
        public Problem select(final RefactoringLogReference it) {
          List<SModule> languageUsages = ListSequence.fromList(modules).where(new IWhereFilter<SModule>() {
            public boolean accept(SModule module) {
              return SetSequence.fromSet(MigrationsUtil.getModuleDependencies(module)).contains(it.getModule());
            }
          }).toListSequence();
          return (Problem) new MissingMigrationProblem.MissingRefactoringLogProblem(it, Collections.min(ListSequence.fromList(languageUsages).select(new ISelector<SModule, Integer>() {
            public Integer select(SModule module) {
              return ((AbstractModule) module).getDependencyVersion(it.getModule());
            }
          }).toListSequence()));
        }
      }));
    }
  }
  protected static Logger LOG = LogManager.getLogger(MigrationsProgressWizardStep.class);
}
