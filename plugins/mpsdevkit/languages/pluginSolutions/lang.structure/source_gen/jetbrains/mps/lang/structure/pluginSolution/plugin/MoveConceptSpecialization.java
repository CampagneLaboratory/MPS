package jetbrains.mps.lang.structure.pluginSolution.plugin;

/*Generated by MPS */

import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.smodel.Language;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import java.util.Collection;
import org.jetbrains.mps.openapi.module.SearchScope;
import jetbrains.mps.lang.smodel.query.runtime.CommandUtil;
import jetbrains.mps.lang.smodel.query.runtime.QueryExecutionContext;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.structure.plugin.RefactoringRuntime;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

public class MoveConceptSpecialization extends StructureSpecializationBase<SConcept> {
  public Tuples._2<Language, SConcept> fetchState(SNode movingNode) {
    if (SNodeOperations.isInstanceOf(movingNode, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, "jetbrains.mps.lang.structure.structure.ConceptDeclaration")) && SNodeOperations.getModel(movingNode).getModule() instanceof Language) {
      return MultiTuple.<Language,SConcept>from((Language) SNodeOperations.getModel(movingNode).getModule(), MetaAdapterByDeclaration.getInstanceConcept(movingNode));
    } else {
      return null;
    }
  }
  public void confirm(Tuples._2<Language, SConcept> initialState, Tuples._2<Language, SConcept> finalState, LanguageStructureMigrationParticipant.MigrationBuilder migrationBuilder) {
    SNode from = SNodeOperations.cast(initialState._1().getDeclarationNode(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, "jetbrains.mps.lang.structure.structure.ConceptDeclaration"));
    SNode to = SNodeOperations.cast(finalState._1().getDeclarationNode(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979ba0450L, "jetbrains.mps.lang.structure.structure.ConceptDeclaration"));
    SPropertyOperations.set(from, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), SPropertyOperations.getString_def(from, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "") + "_old");
    AttributeOperations.setAttribute(from, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x11d0a70ae54L, "jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation")), createDeprecatedNodeAnnotation_kdm6vl_a0d0b("The concept was moved to language \"" + SNodeOperations.getModel(to).getModule().getModuleName() + "\""));
    migrationBuilder.addPart(initialState._1().getDeclarationNode(), finalState._1().getDeclarationNode(), createMoveConcept_kdm6vl_c0a4a1());
  }
  public Collection<SNode> findInstances(final SConcept concept, SearchScope searchScope) {
    {
      final SearchScope scope = CommandUtil.createScope(searchScope);
      QueryExecutionContext context = new QueryExecutionContext() {
        public SearchScope getDefaultSearchScope() {
          return scope;
        }
      };
      return CollectionSequence.fromCollection(CommandUtil.instances(CommandUtil.createConsoleScope(null, false, context), SNodeOperations.asSConcept(concept))).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SConceptOperations.isExactly(SNodeOperations.asSConcept(SNodeOperations.getConcept(it)), SNodeOperations.asSConcept(concept));
        }
      }).toListSequence();
    }
  }
  public void doReplaceInstance(SNode instance, SConcept oldConcept, SConcept newConcept) {
    RefactoringRuntime.replaceWithNewConcept(instance, newConcept);
  }
  private static SNode createDeprecatedNodeAnnotation_kdm6vl_a0d0b(Object p0) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x11d0a70ae54L, "jetbrains.mps.lang.structure.structure.DeprecatedNodeAnnotation"), null, null, false);
    n1.setProperty(MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x11d0a70ae54L, 0x11d3ec760e8L, "comment"), p0 + "");
    return n1;
  }
  private static SNode createMoveConcept_kdm6vl_c0a4a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x2b3f57492c1741b6L, "jetbrains.mps.lang.migration.structure.MoveConcept"), null, null, false);
    return n1;
  }
}
