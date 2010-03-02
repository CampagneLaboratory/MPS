<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b7e75e21-5f04-43f4-94cb-24c612b5504a(jetbrains.mps.lang.quotation.generator.baseLanguage.template.util)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="0" />
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
  <visible index="3" modelUID="f:java_stub#java.lang(java.lang@java_stub)" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="7502385099314243444">
    <property name="name:3" value="QuotationUtil" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7502385099314243450">
      <property name="name:3" value="genQuotationNodeId" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7502385099314243452" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7502385099314243453">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7502385099314243457">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7502385099314243458">
            <property name="name:3" value="quotation" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="7502385099314243459">
              <link role="concept:16" targetNodeId="2v.1196350785113:0" resolveInfo="Quotation" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7502385099314243462">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7502385099314243461">
                <link role="variableDeclaration:3" targetNodeId="7502385099314243455" resolveInfo="node" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="7502385099314243466">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="7502385099314243467">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="7502385099314243470">
                    <link role="conceptDeclaration:16" targetNodeId="2v.1196350785113:0" resolveInfo="Quotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="7502385099314244160">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="7502385099314244163">
            <property name="name:3" value="id" />
            <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7502385099314244164">
              <link role="classifier:3" targetNodeId="3v.~Integer" resolveInfo="Integer" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="7502385099314244171">
              <node role="type:3" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="7502385099314244174">
                <link role="classifier:3" targetNodeId="3v.~Integer" resolveInfo="Integer" />
              </node>
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7502385099314244166">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7502385099314244167">
                  <link role="variableDeclaration:3" targetNodeId="7502385099314243480" resolveInfo="genContext" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess:0" id="7502385099314244168">
                  <node role="userKey:0" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314244169">
                    <link role="variableDeclaration:3" targetNodeId="7502385099314243458" resolveInfo="quotation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="7502385099314244176">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7502385099314244177">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7502385099314244185">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7502385099314244187">
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314244186">
                  <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
                </node>
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7502385099314244191">
                  <property name="value:3" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="7502385099314244181">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7502385099314244184" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314244180">
              <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="7067169270832925649">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7067169270832925650">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7067169270832925651">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7067169270832925653">
                  <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7067169270832925657">
                    <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="7067169270832925660">
                      <property name="value:3" value="1" />
                    </node>
                    <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7067169270832925656">
                      <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
                    </node>
                  </node>
                  <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7067169270832925652">
                    <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7502385099314244192">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="7502385099314244201">
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7502385099314244194">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7502385099314244193">
                <link role="variableDeclaration:3" targetNodeId="7502385099314243480" resolveInfo="genContext" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess:0" id="7502385099314244198">
                <node role="userKey:0" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314244200">
                  <link role="variableDeclaration:3" targetNodeId="7502385099314243458" resolveInfo="quotation" />
                </node>
              </node>
            </node>
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314244204">
              <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7502385099314245107">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7502385099314245109">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="7502385099314245108">
              <link role="variableDeclaration:3" targetNodeId="7502385099314244163" resolveInfo="id" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7502385099314245113">
              <link role="baseMethodDeclaration:3" targetNodeId="3v.~Integer.toString():java.lang.String" resolveInfo="toString" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7502385099314243480">
        <property name="name:3" value="genContext" />
        <node role="type:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType:0" id="7502385099314243482" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7502385099314243455">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="7502385099314243456" />
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7502385099314245105" />
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7502385099314243445" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7502385099314243446">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7502385099314243447" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7502385099314243448" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7502385099314243449" />
    </node>
  </node>
</model>

