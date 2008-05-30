package jetbrains.mps.smodel.search;

import jetbrains.mps.bootstrap.structureLanguage.structure.*;
import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Condition;
import org.jetbrains.annotations.NotNull;

import java.util.*;

/**
 * Igor Alshannikov
 * Jan 19, 2006
 */
public class SModelSearchUtil {

  public static ISearchScope createModelAndImportedModelsScope(SModel model, IScope scope) {
    return createModelAndImportedModelsScope(model, false, scope);
  }

  public static ISearchScope createModelAndImportedModelsScope(SModel model, boolean rootsOnly, IScope scope) {
    return new ModelAndImportedModelsScope(model, rootsOnly, scope);
  }

  public static ISearchScope createConceptsFromModelLanguagesScope(SModel model, IScope scope) {
    return new SModelSearchUtil._ConceptsFromModelLanguagesScope(model, false, scope);
  }

  public static ISearchScope createConceptsFromModelLanguagesScope(SModel model, boolean rootsOnly, IScope scope) {
    return new SModelSearchUtil._ConceptsFromModelLanguagesScope(model, rootsOnly, scope);
  }

  public static List<LinkDeclaration> getLinkDeclarationsExcludingOverridden(AbstractConceptDeclaration concept) {
    return new ConceptAndSuperConceptsScope(concept).getLinkDeclarationsExcludingOverridden();
  }

  public static List<LinkDeclaration> getAggregationLinkDeclarationsExcludingOverridden(AbstractConceptDeclaration concept) {
    List<LinkDeclaration> list = new ConceptAndSuperConceptsScope(concept).getLinkDeclarationsExcludingOverridden();
    List<LinkDeclaration> result = new ArrayList<LinkDeclaration>();
    for (LinkDeclaration link : list) {
      if (link.getMetaClass() == LinkMetaclass.aggregation) {
        result.add(link);
      }
    }
    return result;
  }

  public static List<LinkDeclaration> getReferenceLinkDeclarationsExcludingOverridden(AbstractConceptDeclaration concept) {
    List<LinkDeclaration> list = new ConceptAndSuperConceptsScope(concept).getLinkDeclarationsExcludingOverridden();
    List<LinkDeclaration> result = new ArrayList<LinkDeclaration>();
    for (LinkDeclaration link : list) {
      if (link.getMetaClass() == LinkMetaclass.reference) {
        result.add(link);
      }
    }
    return result;
  }

  public static List<PropertyDeclaration> getPropertyDeclarations(AbstractConceptDeclaration concept) {
    return new ConceptAndSuperConceptsScope(concept).getPropertyDeclarations();
  }

  public static PropertyDeclaration findPropertyDeclaration(AbstractConceptDeclaration concept, String propertyName) {
    if (concept == null || propertyName == null) return null;
    return new ConceptAndSuperConceptsScope(concept).getPropertyDeclarationByName(propertyName);
  }

  public static List<ConceptPropertyDeclaration> getConceptPropertyDeclarations(AbstractConceptDeclaration concept) {
    List<ConceptPropertyDeclaration> result = new ArrayList<ConceptPropertyDeclaration>();
    List<AbstractConceptDeclaration> concepts = new ConceptAndSuperConceptsScope(concept).getConcepts();
    for (AbstractConceptDeclaration c : concepts) {
      result.addAll(c.getConceptPropertyDeclarations());
    }
    return result;
  }

  public static ConceptProperty findConceptProperty(AbstractConceptDeclaration concept, String propertyName) {
    // concept properties are not inherited - don't look-up concept hierarchy
    if (concept == null) return null;
    for (ConceptProperty conceptProperty : concept.getConceptPropertys()) {
      ConceptPropertyDeclaration declaration = conceptProperty.getConceptPropertyDeclaration();
      if (declaration != null && propertyName.equals(declaration.getName())) {
        return conceptProperty;
      }
    }
    return null;
  }

  public static List<ConceptLinkDeclaration> getConceptLinkDeclarations(AbstractConceptDeclaration concept) {
    List<ConceptLinkDeclaration> result = new ArrayList<ConceptLinkDeclaration>();
    List<AbstractConceptDeclaration> concepts = new ConceptAndSuperConceptsScope(concept).getConcepts();
    for (AbstractConceptDeclaration c : concepts) {
      result.addAll(c.getConceptLinkDeclarations());
    }
    return result;
  }


  private static class _ConceptsFromModelLanguagesScope extends AbstractSearchScope {
    private SModel myModel;
    private boolean myRootsOnly;
    private IScope myScope;
    private List<ConceptDeclaration> myConcepts;

    public _ConceptsFromModelLanguagesScope(SModel model, boolean rootsOnly, IScope scope) {
      myModel = model;
      myRootsOnly = rootsOnly;
      myScope = scope;
    }

    @NotNull
    public List<SNode> getNodes(Condition<SNode> condition) {
      if (myConcepts == null) {
        myConcepts = new ArrayList<ConceptDeclaration>();
        List<Language> languages = myModel.getLanguages(myScope);
        for (Language language : languages) {
          if (myRootsOnly) {
            SModel structureModel = language.getStructureModelDescriptor().getSModel();
            myConcepts.addAll(structureModel.getRootsAdapters(ConceptDeclaration.class));
          } else {
            myConcepts.addAll(language.getConceptDeclarations());
          }
        }
      }

      List<SNode> concepts = new ArrayList<SNode>();
      for (ConceptDeclaration concept : myConcepts) {
        if (condition.met(concept.getNode())) {
          concepts.add(concept.getNode());
        }
      }

      return concepts;
    }
  }

}
