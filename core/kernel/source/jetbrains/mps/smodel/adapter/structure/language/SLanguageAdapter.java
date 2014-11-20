package jetbrains.mps.smodel.adapter.structure.language;

import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.project.dependency.modules.LanguageDependenciesManager;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.smodel.language.LanguageRuntime;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SDependency;
import org.jetbrains.mps.openapi.module.SDependencyScope;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public abstract class SLanguageAdapter implements SLanguage {
  protected String myLanguageFqName;

  public SLanguageAdapter(@NotNull String language) {
    this.myLanguageFqName = language;
  }

  @Nullable
  public abstract LanguageRuntime getLanguageDescriptor();

  @Override
  @Nullable
  public abstract Language getSourceModule();

  @Override
  public String getQualifiedName() {
    return myLanguageFqName;
  }

  @Override
  public Iterable<SAbstractConcept> getConcepts() {
    LanguageRuntime runtime = getLanguageDescriptor();
    if (runtime == null) {
      return Collections.<SAbstractConcept>emptySet();
    }

    // TODO rewrite using LanguageRuntime
    ArrayList<SAbstractConcept> result = new ArrayList<SAbstractConcept>();
    for (SNode root : LanguageAspect.STRUCTURE.get(getSourceModule()).getRootNodes()) {
      result.add(MetaAdapterByDeclaration.getConcept(((jetbrains.mps.smodel.SNode) root)));
    }
    return result;
  }

  @Override
  public Iterable<SModuleReference> getLanguageRuntimes() {
    Set<SModuleReference> runtimes = new HashSet<SModuleReference>();
    Language sourceModule = getSourceModule();
    assert sourceModule != null;
    for (Language language : SetSequence.fromSet(LanguageDependenciesManager.getAllExtendedLanguages(sourceModule))) {
      runtimes.addAll(language.getRuntimeModulesReferences());
      for (SDependency dep : language.getDeclaredDependencies()) {
        if (dep.getScope() == SDependencyScope.GENERATES_INTO) {
          Object o = dep.getTarget();
          Language generatesIntoLang = (Language.class.isInstance(o) ? (Language) o : null);
          runtimes.addAll(generatesIntoLang.getRuntimeModulesReferences());
        }
      }
    }
    return runtimes;
  }

  public int getLanguageVersion() {
    return getSourceModule().getLanguageVersion();
  }

  @Override
  public String toString() {
    return myLanguageFqName;
  }

  @Override
  public int hashCode() {
    return 0;
  }
}
