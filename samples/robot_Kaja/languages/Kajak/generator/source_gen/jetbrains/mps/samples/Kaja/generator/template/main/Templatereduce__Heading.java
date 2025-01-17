package jetbrains.mps.samples.Kaja.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collection;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templatereduce__Heading extends TemplateDeclarationBase {
  public Templatereduce__Heading() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683664");
  }
  protected SNode applyPart0(@NotNull final TemplateContext context) throws GenerationException {
    final TemplateExecutionEnvironment environment = context.getEnvironment();
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185/4923130412073305297");
      environment.resolveInTemplateLater(tnode1, "baseMethodDeclaration", templateNode_tax5tt_c0a1a2a2, "tpl/r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185/3308300503039683754", "heading", context);
      TemplateContext context1 = context.subContext();
      {
        Collection<SNode> tlist2 = null;
        final SNode copySrcInput2 = QueriesGenerated.sourceNodeQuery_3308300503039683770(new SourceSubstituteMacroNodeContext(context1, copySrcMacro_tax5tt_b0a0c0d0c0c));
        tlist2 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput2), copySrcMacro_tax5tt_b0a0c0d0c0c, "tpl/r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185/3308300503039683764", context1);
        for (SNode child3 : TemplateUtil.asNotNull(tlist2)) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), child3);
        }
        // TODO validate child 
      }
    } finally {
    }
    return tnode1;
  }
  @Override
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    return TemplateUtil.singletonList(applyPart0(context));
  }

  @Override
  public Collection<SNode> weave(@NotNull NodeWeaveFacility.WeaveContext weaveContext, @NotNull NodeWeaveFacility weaveSupport) throws GenerationException {
    final TemplateContext templateContext = weaveSupport.getTemplateContext();
    SNode tnodepart0 = applyPart0(templateContext);
    weaveSupport.weaveNode(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition"), tnodepart0);
    return TemplateUtil.singletonList(tnodepart0);
  }
  private static SNodePointer templateNode_tax5tt_c0a1a2a2 = new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "4923130412073305297");
  private static SNodePointer copySrcMacro_tax5tt_b0a0c0d0c0c = new SNodePointer("r:3ab3501c-2f4b-48e6-9b6c-e31ff8ef3185(jetbrains.mps.samples.Kaja.generator.template.main@generator)", "3308300503039683767");
}
