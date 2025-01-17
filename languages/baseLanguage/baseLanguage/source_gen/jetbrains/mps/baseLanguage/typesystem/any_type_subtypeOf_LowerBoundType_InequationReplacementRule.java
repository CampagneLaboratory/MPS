package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInequationReplacementRule_Runtime;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.typesystem.runtime.IsApplicable2Status;
import jetbrains.mps.lang.pattern.util.MatchingUtil;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.lang.pattern.runtime.PatternUtil;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class any_type_subtypeOf_LowerBoundType_InequationReplacementRule extends AbstractInequationReplacementRule_Runtime {
  /*package*/ GeneratedMatchingPattern myMatchingPattern2;
  public any_type_subtypeOf_LowerBoundType_InequationReplacementRule() {
  }
  public boolean isApplicableCustom(SNode subtype, SNode supertype, IsApplicable2Status status) {
    return MatchingUtil.matchNodes(((SNode) status.getPattern2().getFieldValue("patternVar_TYPE")), _quotation_createNode_w2c88q_a0a0a2()) || MatchingUtil.matchNodes(subtype, ((SNode) status.getPattern2().getFieldValue("patternVar_TYPE")));
  }
  public void processInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, final TypeCheckingContext typeCheckingContext, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
    // 'nuff said 
  }
  public boolean checkInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
    boolean result_14532009 = true;
    // 'nuff said 
    return result_14532009;
  }
  public boolean isWeak() {
    return true;
  }
  public IsApplicableStatus isApplicableSubtypeAndPattern(SNode node) {
    return new IsApplicableStatus(node.getConcept().isSubConceptOf(getApplicableSubtypeConcept()), null);
  }
  public IsApplicableStatus isApplicableSupertypeAndPattern(SNode node) {
    {
      GeneratedMatchingPattern pattern = new any_type_subtypeOf_LowerBoundType_InequationReplacementRule.Pattern_w2c88q_a0a0a0a7();
      this.myMatchingPattern2 = pattern;
      boolean b = pattern.match(node);
      return new IsApplicableStatus(b, pattern);
    }
  }

  public SAbstractConcept getApplicableSubtypeConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type");
  }
  public SAbstractConcept getApplicableSupertypeConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110dae9d53dL, "jetbrains.mps.baseLanguage.structure.LowerBoundType");
  }
  public static class Pattern_w2c88q_a0a0a0a7 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ SNode patternVar_TYPE;
    public Pattern_w2c88q_a0a0a0a7() {
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110dae9d53dL, "jetbrains.mps.baseLanguage.structure.LowerBoundType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_y0gkvf_a0a = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110dae9d53dL, "jetbrains.mps.baseLanguage.structure.LowerBoundType").equals(nodeToMatch_y0gkvf_a0a.getConcept()))) {
          return false;
        }
        {
          SContainmentLink childRole_y0gkvf_ = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x110dae9d53dL, 0x110dae9f25bL, "bound");
          if (!(PatternUtil.hasNChildren(nodeToMatch_y0gkvf_a0a, childRole_y0gkvf_, 1))) {
            return false;
          }
          {
            SNode childVar_y0gkvf_a0a0 = IterableUtil.get(nodeToMatch_y0gkvf_a0a.getChildren(childRole_y0gkvf_), 0);
            this.patternVar_TYPE = childVar_y0gkvf_a0a0;
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return false;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_TYPE = (SNode) pattern.getFieldValue("patternVar_TYPE");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_TYPE".equals(fieldName)) {
        return patternVar_TYPE;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
  private static SNode _quotation_createNode_w2c88q_a0a0a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
}
