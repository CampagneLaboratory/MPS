package jetbrains.mps.ide.findusages.view;

import com.intellij.openapi.progress.ProgressIndicator;
import jetbrains.mps.ide.findusages.findalgorithm.finders.BaseFinder;
import jetbrains.mps.ide.findusages.findalgorithm.finders.GeneratedFinder;
import jetbrains.mps.ide.findusages.findalgorithm.resultproviders.treenodes.BaseLeaf;
import jetbrains.mps.ide.findusages.findalgorithm.resultproviders.treenodes.BaseNode;
import jetbrains.mps.ide.findusages.findalgorithm.resultproviders.treenodes.FinderNode;
import jetbrains.mps.ide.findusages.findalgorithm.resultproviders.treenodes.UnionNode;
import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.IScope;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNode;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class FindUtils {
  private static Logger LOG = Logger.getLogger(FindUtils.class);

  public static SearchResults getSearchResults(@Nullable final ProgressIndicator indicator, final Collection<SNode> nodes, final IScope scope, final BaseFinder... finders) {
    final SearchResults[] results = new SearchResults[1];
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        SearchResults result = new SearchResults();
        for (SNode node : nodes) {
          if (indicator!=null && indicator.isCanceled()) break;
          SearchResults singleRes = makeProvider(finders).getResults(new SearchQuery(node, scope), indicator);
          result.getSearchedNodes().addAll(singleRes.getSearchedNodes());
          result.getSearchResults().addAll(singleRes.getSearchResults());
          result.removeDuplicates();
        }
        results[0] = result;
      }
    });
    return results[0];
  }

  public static SearchResults getSearchResults(@Nullable final ProgressIndicator indicator, final SNode node, final IScope scope, final String... finderClassNames) {
    List<GeneratedFinder> finders = new ArrayList<GeneratedFinder>(finderClassNames.length);
    for (String finderClassName : finderClassNames) {
      GeneratedFinder finder = getFinderByClassName(finderClassName);
      if (finder != null) finders.add(finder);
    }

    return getSearchResults(indicator, node, scope, finders.toArray(new GeneratedFinder[0]));
  }

  public static SearchResults getSearchResults(@Nullable final ProgressIndicator indicator, final SNode node, final IScope scope, final BaseFinder... finders) {
    return getSearchResults(indicator, new SearchQuery(node, scope), makeProvider(finders));
  }

  public static SearchResults getSearchResults(@Nullable final ProgressIndicator indicator, final SearchQuery query, final BaseFinder... finders) {
    return getSearchResults(indicator, query, makeProvider(finders));
  }

  public static SearchResults getSearchResults(@Nullable final ProgressIndicator indicator, final SearchQuery query, final IResultProvider provider) {
    final SearchResults[] results = new SearchResults[1];
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        results[0] = provider.getResults(query, indicator);
      }
    });
    return results[0];
  }

  public static List<SNode> executeFinder(String className, SNode node, IScope scope, ProgressIndicator indicator) {
    List<SNode> result = new ArrayList<SNode>();
    GeneratedFinder finder = getFinderByClassName(className);
    if (finder == null) return result;
    for (SearchResult<SNode> searchResult : finder.find(new SearchQuery(node, scope), indicator).getSearchResults()) {
      result.add(searchResult.getObject());
    }
    return result;
  }

  @Nullable
  public static GeneratedFinder getFinderByClassName(String className) {
    try {
      GeneratedFinder finder = (GeneratedFinder) Class.forName(className).newInstance();
      return finder;
    } catch (Throwable t) {
      LOG.error("Error instantiating finder \"" + className + "\". Returning empty results.  Message:" + t.getMessage(), t);
      return null;
    }
  }

  public static IResultProvider makeProvider(Collection<BaseFinder> finders) {
    UnionNode unionNode = new UnionNode();
    for (BaseFinder finder : finders) {
      addChild(unionNode, new FinderNode(finder));
    }
    return unionNode;
  }

  public static IResultProvider makeProvider(BaseFinder... finders) {
    return makeProvider(Arrays.asList(finders));
  }

  private static void addChild(BaseNode parent, BaseNode child) {
    parent.addChild(child);
    child.setParent(parent);
  }

  private static void removeChild(BaseNode parent, BaseLeaf child) {
    parent.removeChild(child);
    child.setParent(null);
  }
}
