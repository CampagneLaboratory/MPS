package jetbrains.mps.traceInfo.testWeavingGenerated.data.generator.template.main;

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
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.smodel.SReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import java.util.Collection;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templateweave__ChildConceptWeave extends TemplateDeclarationBase {
  public Templateweave__ChildConceptWeave() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:592e27b6-d258-4bf2-9e32-25019862e1f1(jetbrains.mps.traceInfo.testWeavingGenerated.data.generator.template.main@generator)", "6186432342008522510");
  }
  protected SNode applyPart0(@NotNull final TemplateContext context) throws GenerationException {
    final TemplateExecutionEnvironment environment = context.getEnvironment();
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008522549");
      SNodeAccessUtil.setProperty(tnode1, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_6186432342008522555(new PropertyMacroContext(context, "method", propertyMacro_asyc93_c0a0c0b0c0c))));
      TemplateContext context1 = context.subContext();
      {
        final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"));
        try {
          environment.nodeCopied(context1, tnode2, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008522550");
        } finally {
        }
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"), tnode2);
        }
        // TODO validate child 
      }
      {
        final SNode tnode3 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af9581ff1L, "jetbrains.mps.baseLanguage.structure.PublicVisibility"));
        try {
          environment.nodeCopied(context1, tnode3, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008522551");
        } finally {
        }
        if (tnode3 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL, 0x112670d886aL, "visibility"), tnode3);
        }
        // TODO validate child 
      }
      {
        final SNode tnode4 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
        try {
          environment.nodeCopied(context1, tnode4, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008522552");
          TemplateContext context4 = context1.subContext();
          {
            final SNode tnode5 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
            try {
              environment.nodeCopied(context4, tnode5, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526300");
              TemplateContext context5 = context4.subContext();
              {
                final SNode tnode6 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"));
                try {
                  environment.nodeCopied(context5, tnode6, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526301");
                  TemplateContext context6 = context5.subContext();
                  {
                    final SNode tnode7 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, "jetbrains.mps.baseLanguage.structure.StaticFieldReference"));
                    try {
                      environment.nodeCopied(context6, tnode7, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526302");
                      tnode7.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier"), tnode7, PersistenceFacade.getInstance().createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), PersistenceFacade.getInstance().createNodeId("~System")));
                      tnode7.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), tnode7, PersistenceFacade.getInstance().createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), PersistenceFacade.getInstance().createNodeId("~System.out")));
                    } finally {
                    }
                    if (tnode7 != null) {
                      tnode6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), tnode7);
                    }
                    // TODO validate child 
                  }
                  {
                    final SNode tnode8 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"));
                    try {
                      environment.nodeCopied(context6, tnode8, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526303");
                      tnode8.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), tnode8, PersistenceFacade.getInstance().createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io()"), PersistenceFacade.getInstance().createNodeId("~PrintStream.println(java.lang.String):void")));
                      TemplateContext context8 = context6.subContext();
                      {
                        final SNode tnode9 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7fbL, "jetbrains.mps.baseLanguage.structure.PlusExpression"));
                        try {
                          environment.nodeCopied(context8, tnode9, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526310");
                          TemplateContext context9 = context8.subContext();
                          {
                            final SNode tnode10 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"));
                            try {
                              environment.nodeCopied(context9, tnode10, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526314");
                              SNodeAccessUtil.setProperty(tnode10, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_6186432342008526320(new PropertyMacroContext(context9, "name", propertyMacro_asyc93_c0a0c0b0b0c0b0d0b0d0b0c0b0c0b0f0c0c))));
                            } finally {
                            }
                            if (tnode10 != null) {
                              tnode9.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11bL, "rightExpression"), tnode10);
                            }
                            // TODO validate child 
                          }
                          {
                            final SNode tnode11 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"));
                            try {
                              environment.nodeCopied(context9, tnode11, "tpl/r:592e27b6-d258-4bf2-9e32-25019862e1f1/6186432342008526304");
                              SNodeAccessUtil.setProperty(tnode11, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), "I'm");
                            } finally {
                            }
                            if (tnode11 != null) {
                              tnode9.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11cL, "leftExpression"), tnode11);
                            }
                            // TODO validate child 
                          }
                        } finally {
                        }
                        if (tnode9 != null) {
                          tnode8.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), tnode9);
                        }
                        // TODO validate child 
                      }
                    } finally {
                    }
                    if (tnode8 != null) {
                      tnode6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), tnode8);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode6 != null) {
                  tnode5.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode6);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode5 != null) {
              tnode4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode5);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode4 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body"), tnode4);
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
    weaveSupport.weaveNode(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"), tnodepart0);
    return TemplateUtil.singletonList(tnodepart0);
  }
  private static SNodePointer propertyMacro_asyc93_c0a0c0b0c0c = new SNodePointer("r:592e27b6-d258-4bf2-9e32-25019862e1f1(jetbrains.mps.traceInfo.testWeavingGenerated.data.generator.template.main@generator)", "6186432342008522554");
  private static SNodePointer propertyMacro_asyc93_c0a0c0b0b0c0b0d0b0d0b0c0b0c0b0f0c0c = new SNodePointer("r:592e27b6-d258-4bf2-9e32-25019862e1f1(jetbrains.mps.traceInfo.testWeavingGenerated.data.generator.template.main@generator)", "6186432342008526317");
}
