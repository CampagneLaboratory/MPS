<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:2ca63f28-9d3e-4a14-8ffa-4a524cb41743(jetbrains.mps.ui.swt.generator.template.helper)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:8999af71-8d74-463c-91cf-52b8c2875292(jetbrains.mps.ui.swt.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:4bcef4e7-5bde-4076-8e02-73a0681ac6a3(jetbrains.mps.ui.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <node type="jetbrains.mps.baseLanguage.structure.EnumClass:3" id="873604604380664433">
    <property name="name:3" value="SWTTransientValues" />
    <node role="enumConstant:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration:3" id="873604604380664434">
      <property name="name:3" value="ITEM" />
      <link role="baseMethodDeclaration:3" targetNodeId="873604604380664508" resolveInfo="SwingTransientValues" />
      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="873604604380664435">
        <property name="value:3" value="item" />
      </node>
    </node>
    <node role="enumConstant:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration:3" id="873604604380664436">
      <property name="name:3" value="THIS" />
      <link role="baseMethodDeclaration:3" targetNodeId="873604604380664508" resolveInfo="SwingTransientValues" />
      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="873604604380664437">
        <property name="value:3" value="this" />
      </node>
    </node>
    <node role="enumConstant:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration:3" id="873604604380878956">
      <property name="name:3" value="FORMDATA" />
      <link role="baseMethodDeclaration:3" targetNodeId="873604604380664508" resolveInfo="SWTTransientValues" />
      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="873604604380878957">
        <property name="value:3" value="formData" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="873604604380664440">
      <property name="name:3" value="put" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664441">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="873604604380664442">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664443">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="873604604380664444">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="873604604380664445">
                <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664446">
                  <link role="variableDeclaration:3" targetNodeId="873604604380664467" resolveInfo="value" />
                </node>
                <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664447">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664448">
                    <link role="variableDeclaration:3" targetNodeId="873604604380664463" resolveInfo="genContext" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess:0" id="873604604380664449">
                    <node role="userKey:0" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="873604604380664450">
                      <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664451">
                        <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="873604604380664452">
                          <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664453">
                            <link role="variableDeclaration:3" targetNodeId="873604604380664465" resolveInfo="node" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="873604604380664454">
                          <link role="baseMethodDeclaration:3" targetNodeId="1.~SNode.getId():java.lang.String" resolveInfo="getId" />
                        </node>
                      </node>
                      <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664455">
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="873604604380664456">
                          <link role="fieldDeclaration:3" targetNodeId="873604604380664504" resolveInfo="name" />
                        </node>
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="873604604380664457" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="873604604380664458">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="873604604380664459" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664460">
              <link role="variableDeclaration:3" targetNodeId="873604604380664465" resolveInfo="node" />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="873604604380664461" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="873604604380664462" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664463">
        <property name="name:3" value="genContext" />
        <node role="type:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType:0" id="873604604380664464" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664465">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="873604604380664466" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664467">
        <property name="name:3" value="value" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="873604604380664468" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="873604604380664469">
      <property name="name:3" value="get" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664470">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="873604604380664471">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664472">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="873604604380664473">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="873604604380664474" />
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="873604604380664475">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="873604604380664476" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664477">
              <link role="variableDeclaration:3" targetNodeId="873604604380664496" resolveInfo="node" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="873604604380664478">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.CastExpression:3" id="873604604380664479">
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="873604604380664480" />
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664481">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664482">
                <link role="variableDeclaration:3" targetNodeId="873604604380664494" resolveInfo="genContext" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_TransientObjectAccess:0" id="873604604380664483">
                <node role="userKey:0" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="873604604380664484">
                  <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664485">
                    <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="873604604380664486">
                      <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664487">
                        <link role="variableDeclaration:3" targetNodeId="873604604380664496" resolveInfo="node" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="873604604380664488">
                      <link role="baseMethodDeclaration:3" targetNodeId="1.~SNode.getId():java.lang.String" resolveInfo="getId" />
                    </node>
                  </node>
                  <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664489">
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="873604604380664490">
                      <link role="fieldDeclaration:3" targetNodeId="873604604380664504" resolveInfo="name" />
                    </node>
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="873604604380664491" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="873604604380664492" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="873604604380664493" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664494">
        <property name="name:3" value="genContext" />
        <node role="type:3" type="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextType:0" id="873604604380664495" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664496">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="873604604380664497" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="873604604380664498">
      <property name="name:3" value="prefix" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="873604604380664499" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="873604604380664500" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664501">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="873604604380664502">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="873604604380664503">
            <property name="value:3" value="jetbrains.mps.ui.swing.values." />
          </node>
        </node>
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="873604604380664504">
      <property name="name:3" value="name" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="873604604380664505" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="873604604380664506" />
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="873604604380664507" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="873604604380664508">
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="873604604380664509" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="873604604380664510" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="873604604380664511">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="873604604380664512">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="873604604380664513">
            <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="873604604380664514">
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="873604604380664515">
                <link role="variableDeclaration:3" targetNodeId="873604604380664522" resolveInfo="name" />
              </node>
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664516">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="873604604380664517">
                  <link role="baseMethodDeclaration:3" targetNodeId="873604604380664498" resolveInfo="prefix" />
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="873604604380664518" />
              </node>
            </node>
            <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="873604604380664519">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="873604604380664520" />
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="873604604380664521">
                <link role="fieldDeclaration:3" targetNodeId="873604604380664504" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="873604604380664522">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="873604604380664523" />
      </node>
    </node>
  </node>
</model>

