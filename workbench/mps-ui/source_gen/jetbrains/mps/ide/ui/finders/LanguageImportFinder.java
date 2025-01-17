package jetbrains.mps.ide.ui.finders;

/*Generated by MPS */

import jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.module.SearchScope;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.project.DevKit;

/**
 * Look up language uses in scope module's imports and their models. 
 * Name of the class might not be precise (yet - if we decide to split look up in imports and in models).
 * SeearchResult include both modules and models.
 * FIXME perhaps, shall either use LanguageUsageFinder for uses in models (i.e. build another scope from caller and pass to LUF), or
 * shall respect scope's models here (not only/in addition to models of scope modules). Note, LUF looks up nodes, while this shall stop at model's level.
 */
public class LanguageImportFinder implements IFinder {
  public LanguageImportFinder() {
  }
  @Override
  public SearchResults find(SearchQuery query, ProgressMonitor monitor) {
    SearchResults searchResults = new SearchResults();
    for (SLanguage lang : LanguageUsagesFinder.getLanguageToLookUp(query)) {
      searchResults.getSearchedNodes().add(lang);
      SearchScope scope = query.getScope();
      ModuleUsagesFinder moduleFinder = new ModuleUsagesFinder();
      for (SModule module : scope.getModules()) {
        if (monitor.isCanceled()) {
          return searchResults;
        }
        if (module instanceof Solution) {
          moduleFinder.collectUsagesInSolution(lang, (Solution) module, searchResults);
        }
        if (module instanceof Language) {
          moduleFinder.collectUsagesInLanguage(lang, (Language) module, searchResults);
          for (Generator g : ((Language) module).getGenerators()) {
            moduleFinder.collectUsagesInGenerator(lang, g, searchResults);
          }
        }
        if (module instanceof DevKit) {
          moduleFinder.collectUsagesInDevKit(lang, (DevKit) module, searchResults);
        }
      }
    }
    return searchResults;
  }
}
