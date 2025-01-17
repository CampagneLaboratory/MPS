package jetbrains.mps.ide.migration;

/*Generated by MPS */

import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.lang.migration.runtime.base.RefactoringLogReference;
import jetbrains.mps.lang.migration.runtime.base.RefactoringLog;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.migration.component.util.MigrationsUtil;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.util.NameUtil;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;

public final class RefactoringLogApplied implements ScriptApplied {

  public static class RefactoringLogAppliedReference implements ScriptApplied.ScriptAppliedReference {
    private SModule myModule;
    private RefactoringLogReference myRefactoringLogReference;
    public RefactoringLogAppliedReference(RefactoringLogReference refactoringLogReference, SModule module) {
      myModule = module;
      myRefactoringLogReference = refactoringLogReference;
    }
    public SModule getModule() {
      return myModule;
    }
    public RefactoringLogReference getRefactoringLogReference() {
      return myRefactoringLogReference;
    }
    public RefactoringLogApplied resolve(MigrationComponent migrationComponent, boolean silently) {
      RefactoringLog fetchRefactoringLog = migrationComponent.fetchRefactoringLog(myRefactoringLogReference, silently);
      if (fetchRefactoringLog == null) {
        return null;
      }
      return new RefactoringLogApplied(fetchRefactoringLog, myModule);
    }
    public boolean isAlreadyDone() {
      return !(SetSequence.fromSet(MigrationsUtil.getModuleDependencies(myModule)).contains(myRefactoringLogReference.getModule())) || myRefactoringLogReference.getFromVersion() < ((AbstractModule) myModule).getDependencyVersion(myRefactoringLogReference.getModule());
    }
    public String getKindDescription(ScriptApplied resolved) {
      RefactoringLogApplied script = ((RefactoringLogApplied) resolved);
      String moduleNameShrinked = NameUtil.compactNamespace(myRefactoringLogReference.getModule().getModuleName());
      if (script == null) {
        return "<missing refactoring log>: module:" + moduleNameShrinked + ", version:" + myRefactoringLogReference.getFromVersion();
      }
      return script.getScript().getCaption() + "  [" + moduleNameShrinked + "]";
    }
  }

  private RefactoringLog myScript;
  private SModule myModule;
  public RefactoringLogApplied(RefactoringLog script, SModule module) {
    myScript = script;
    myModule = module;
  }
  public RefactoringLog getScript() {
    return myScript;
  }
  public SModule getModule() {
    return myModule;
  }
  public Iterable<ScriptApplied.ScriptAppliedReference> getDependencies() {
    List<ScriptApplied.ScriptAppliedReference> result = ListSequence.fromList(new ArrayList<ScriptApplied.ScriptAppliedReference>());
    ListSequence.fromList(result).addElement(new RefactoringLogApplied.RefactoringLogAppliedReference(new RefactoringLogReference(myScript.getDescriptor().getModule(), myScript.getDescriptor().getFromVersion() - 1), myModule));
    for (RefactoringLogReference script : Sequence.fromIterable(myScript.getExecuteAfter())) {
      ListSequence.fromList(result).addElement(new RefactoringLogApplied.RefactoringLogAppliedReference(script, myModule));
    }
    return result;
  }
  public boolean execute(MigrationComponent migrationComponent) {
    return migrationComponent.executeRefactoringLog(this);
  }
  public String getDescription() {
    return new RefactoringLogApplied.RefactoringLogAppliedReference(myScript.getDescriptor(), myModule).getKindDescription(this) + ": " + myModule.getModuleName();
  }
}
