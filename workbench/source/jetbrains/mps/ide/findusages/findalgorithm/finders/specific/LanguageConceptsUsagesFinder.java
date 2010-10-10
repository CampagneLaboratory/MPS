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
package jetbrains.mps.ide.findusages.findalgorithm.finders.specific;

import com.intellij.openapi.progress.ProgressIndicator;
import jetbrains.mps.ide.findusages.findalgorithm.finders.IFinder;
import jetbrains.mps.ide.findusages.model.SearchQuery;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.findusages.model.holders.IHolder;
import jetbrains.mps.ide.findusages.model.holders.ModuleHolder;
import jetbrains.mps.ide.findusages.view.FindUtils;
import jetbrains.mps.lang.structure.findUsages.NodeUsages_Finder;
import jetbrains.mps.project.GlobalScopeMinusTransient;
import jetbrains.mps.project.IModule;
import jetbrains.mps.smodel.*;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class LanguageConceptsUsagesFinder implements IFinder {
  public SearchResults find(SearchQuery query, ProgressIndicator indicator) {
    SearchResults<SNode> searchResults = new SearchResults<SNode>();
    IHolder holder = query.getObjectHolder();
    assert holder instanceof ModuleHolder;
    IModule module = ((ModuleHolder) holder).getObject();
    assert module instanceof Language;
    Language language = (Language) module;

    SModelDescriptor structureModel = language.getStructureModelDescriptor();
    if (structureModel == null) return searchResults;
    SModel sModel = structureModel.getSModel();
    if (sModel == null) return searchResults;
    if (sModel.rootsCount() == 0) return searchResults;

    List<SNode> roots = new LinkedList<SNode>();
    for (SNode root:sModel.roots()){
      roots.add(root);
    }

    searchResults.getSearchedNodes().addAll(roots);

    SearchResults<SModel> modelResults = FindUtils.getSearchResults(indicator, new SearchQuery(sModel, GlobalScopeMinusTransient.getInstance()), new ModelUsagesFinder());
    List<SModelDescriptor> models = new ArrayList<SModelDescriptor>();

    for (SearchResult<SModel> sModelSearchResult : modelResults.getSearchResults()) {
      models.add(sModelSearchResult.getObject().getModelDescriptor());
    }

    IScope scope = new ModelsScope(models.toArray(new SModelDescriptor[models.size()]));

    SearchResults results = FindUtils.getSearchResults(indicator, roots, scope, new NodeUsages_Finder());
    searchResults.getSearchResults().addAll(results.getSearchResults());

    return searchResults;
  }
}
