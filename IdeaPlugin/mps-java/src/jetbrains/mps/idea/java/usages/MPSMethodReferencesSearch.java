package jetbrains.mps.idea.java.usages;

import com.intellij.openapi.application.QueryExecutorBase;
import com.intellij.openapi.progress.ProcessCanceledException;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiMethod;
import com.intellij.psi.PsiReference;
import com.intellij.psi.search.GlobalSearchScope;
import com.intellij.psi.search.searches.MethodReferencesSearch.SearchParameters;
import com.intellij.util.Processor;
import jetbrains.mps.ide.findusages.findalgorithm.finders.GeneratedFinder;
import jetbrains.mps.ide.findusages.findalgorithm.finders.ModuleClassReference;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.idea.core.psi.impl.MPSPsiNode;
import jetbrains.mps.idea.core.psi.impl.MPSPsiProvider;
import jetbrains.mps.idea.core.psi.impl.MPSPsiRef;
import jetbrains.mps.idea.core.usages.IdeaSearchScope;
import jetbrains.mps.project.structure.modules.ModuleReference;
import jetbrains.mps.smodel.ModelAccess;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SConceptRepository;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SReference;

import java.util.logging.Logger;

/**
 * danilla 3/6/13
 */

public class MPSMethodReferencesSearch extends QueryExecutorBase<PsiReference, SearchParameters> {

  private static Logger LOG = Logger.getLogger(MPSMethodReferencesSearch.class.getName());

  @Override
  public void processQuery(@NotNull final SearchParameters queryParameters, @NotNull final Processor<PsiReference> consumer) {

    if (!(queryParameters.getScope() instanceof GlobalSearchScope)) {
      // ??
      return;
    }
    final GlobalSearchScope scope = (GlobalSearchScope) queryParameters.getScope();

    final PsiMethod method = queryParameters.getMethod();
    final GeneratedFinder finder = method.isConstructor() ?
      FindUtils.getFinderByClass(new ModuleClassReference<GeneratedFinder>(new ModuleReference("jetbrains.mps.baseLanguage"), "jetbrains.mps.baseLanguage.findUsages.ConstructorUsages_Finder")) :
      FindUtils.getFinderByClass(new ModuleClassReference<GeneratedFinder>(new ModuleReference("jetbrains.mps.baseLanguage"), "jetbrains.mps.baseLanguage.findUsages.BaseMethodUsages_Finder"));

    if (finder == null) {
      LOG.warning("MPS finder not found; MethodReferenceSearch will not work");
      return;
    }

    ModelAccess.instance().runReadAction(new Runnable() {
      @Override
      public void run() {

        final SNode methodNode = MPSReferenceSearch.getNodeForElement(method);
        if (methodNode == null) {
          return;
        }

        SearchQuery query = new SearchQuery(methodNode, new IdeaSearchScope(scope));

        SearchResults<SNode> results;
        try {
          results = FindUtils.makeProvider(finder).getResults(query, null);
        }
        // Q: is it nedeed now? it used to be very slow due to a bug, but now...
        catch (ProcessCanceledException e) {
          return;
        }
        for (SearchResult<SNode> result : results.getSearchResults()) {
          SNode usageNode = result.getObject();
          // it's a shame we get nodes and not SReferences
          // doing a hack
          for (SReference sref : usageNode.getReferences()) {
            SNode refTarget = sref.getTargetNode();
            if (refTarget == null) continue;
            if (refTarget.getConcept().isSubConceptOf(SConceptRepository.getInstance().getConcept("jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"))) {
              // supposedly our reference
              String role = sref.getRole();

              PsiElement usagePsiElement = MPSPsiProvider.getInstance(method.getProject()).getPsi(usageNode);
              if (!(usagePsiElement instanceof MPSPsiNode)) continue;
              for (PsiElement e : usagePsiElement.getChildren()) {
                if (!(e instanceof MPSPsiRef)) continue;
                if (role.equals(((MPSPsiRef) e).getRole())) {
                  consumer.process(e.getReference());
                }
              }
            }
          }
        }
      }
    });

  }
}
