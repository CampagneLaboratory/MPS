<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590576(jetbrains.mps.gtext.generator.baseLanguage.template.main@generator)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <language namespace="a83c3bd0-2f7e-4ba1-8373-12d49e99f57e(jetbrains.mps.gtext)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590576(jetbrains.mps.gtext.generator.baseLanguage.template.main@generator)" version="-1" />
  <maxImportIndex value="18" />
  <import index="4" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <import index="8" modelUID="r:00000000-0000-4000-0000-011c89590575(jetbrains.mps.gtext.structure)" version="0" />
  <import index="11" modelUID="r:00000000-0000-4000-0000-011c89590577(jetbrains.mps.gtext.generator.baseLanguage.template.util)" version="-1" />
  <import index="13" modelUID="f:java_stub#jetbrains.mps.gtext.runtime(jetbrains.mps.gtext.runtime@java_stub)" version="-1" />
  <import index="17" modelUID="r:00000000-0000-4000-0000-011c89590570(jetbrains.mps.gtext.behavior)" version="-1" />
  <import index="18" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <node type="jetbrains.mps.lang.generator.structure.MappingConfiguration:2" id="1164413908130">
    <property name="name:2" value="mc_convertToBL" />
    <property name="virtualPackage:2" value="toBL" />
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1173357916125">
      <property name="applyToConceptInheritors:2" value="true" />
      <link role="applicableConcept:2" targetNodeId="8.1181754781153:0" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1195217445340">
        <link role="template:2" targetNodeId="1195217368293" resolveInfo="reduce_BuilderContextRef_old" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="1167335643264">
      <link role="applicableConcept:2" targetNodeId="8.1164488352732:0" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="1170775690629">
        <link role="template:2" targetNodeId="1164488726779" resolveInfo="reduce_GItemStatement" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489778380">
      <property name="applyToConceptInheritors:2" value="true" />
      <link role="applicableConcept:2" targetNodeId="8.1164412935041:0" resolveInfo="GItem" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489780479">
        <node role="templateNode:2" type="jetbrains.mps.gtext.structure.GText:0" id="4246810654489780482">
          <property name="text:0" value="abc" />
          <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.SwitchMacro:2" id="4246810654489780484">
            <link role="templateSwitch:2" targetNodeId="4246810654489778220" resolveInfo="convertToBL" />
          </node>
        </node>
      </node>
      <node role="conditionFunction:2" type="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition:2" id="4246810654489780485">
        <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489780486">
          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780487">
            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780489">
              <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489780488" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall:16" id="4246810654489780493">
                <link role="baseMethodDeclaration:16" targetNodeId="17.1213877310935" resolveInfo="shouldBeReduced" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1164488726779">
    <property name="name:2" value="reduce_GItemStatement" />
    <property name="virtualPackage:2" value="toBL" />
    <link role="applicableConcept:2" targetNodeId="8.1164488352732:0" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4246810654489789694">
      <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789695">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789697">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="4246810654489789698" />
          <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.LoopMacro:2" id="4246810654489789700">
            <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="4246810654489789701">
              <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789702">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789703">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789705">
                    <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789704" />
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="4246810654489789709">
                      <link role="link:16" targetNodeId="8.1164488382452:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.SwitchMacro:2" id="4246810654489789712">
            <link role="templateSwitch:2" targetNodeId="4246810654489778220" resolveInfo="convertToBL" />
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="4246810654489789696" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1165584777191">
    <property name="name:2" value="reduce_GStatementItem" />
    <property name="virtualPackage:2" value="toBL" />
    <link role="applicableConcept:2" targetNodeId="8.1165582968644:0" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1165584814116">
      <property name="value:3" value="statementList" />
      <node role="templateFragment$attribute:3" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1165584816617" />
      <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcListMacro:2" id="1174866012479">
        <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="1174866012480">
          <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1174866012481">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1174866019770">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227907714">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227894120">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1174866019771" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1217631029778">
                    <link role="link:16" targetNodeId="8.1174865533071:0" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1217631028438">
                  <link role="link:16" targetNodeId="4.1068581517665:3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1166926684100">
    <property name="name:2" value="reduce_GLine" />
    <property name="virtualPackage:2" value="rewrite" />
    <link role="applicableConcept:2" targetNodeId="8.1166926309597:0" />
    <node role="contentNode:2" type="jetbrains.mps.gtext.structure.GItemList:0" id="1166926755246">
      <node role="templateFragment$attribute:0" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1166926756794" />
      <node role="item:0" type="jetbrains.mps.gtext.structure.GIndent:0" id="1166934155694" />
      <node role="item:0" type="jetbrains.mps.gtext.structure.GText:0" id="1166926761717">
        <property name="text:0" value="items" />
        <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.CopySrcListMacro:2" id="1166928903020">
          <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="1168408260665">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1168408260666">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1173361161123">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227895166">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1168408264232" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1217631028405">
                    <link role="link:16" targetNodeId="8.1166928665191:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="item:0" type="jetbrains.mps.gtext.structure.GNewLine:0" id="1166926814299" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1179110448984">
    <property name="name:2" value="reduce_GConditionalLine" />
    <property name="virtualPackage:2" value="rewrite" />
    <link role="applicableConcept:2" targetNodeId="8.1179109169620:0" />
    <node role="contentNode:2" type="jetbrains.mps.gtext.structure.GItemList:0" id="1179110460581">
      <node role="item:0" type="jetbrains.mps.gtext.structure.GIndent:0" id="1179110476865">
        <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.IfMacro:2" id="1179110492072">
          <node role="conditionFunction:2" type="jetbrains.mps.lang.generator.structure.IfMacro_Condition:2" id="1179110492073">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1179110492074">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1179110502281">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227901514">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1179110502282" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1179110511165">
                    <link role="property:16" targetNodeId="8.1179109261107:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="item:0" type="jetbrains.mps.gtext.structure.GText:0" id="1179110532402">
        <property name="text:0" value="items" />
        <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.CopySrcListMacro:2" id="1179110537686">
          <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="1179110537687">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1179110537688">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1179110542010">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227893789">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1179110542011" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1217631029002">
                    <link role="link:16" targetNodeId="8.1179109231418:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="item:0" type="jetbrains.mps.gtext.structure.GNewLine:0" id="1179110515285">
        <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.IfMacro:2" id="1179110518295">
          <node role="conditionFunction:2" type="jetbrains.mps.lang.generator.structure.IfMacro_Condition:2" id="1179110518296">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1179110518297">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1179110521570">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227936009">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1179110521571" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1179110524712">
                    <link role="property:16" targetNodeId="8.1179109261107:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute:0" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1179110461801" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1195217368293">
    <property name="name:2" value="reduce_BuilderContextRef" />
    <property name="virtualPackage:2" value="toBL" />
    <link role="applicableConcept:2" targetNodeId="8.1181754781153:0" resolveInfo="BuilderContextRef" />
    <node role="contentNode:2" type="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference:1" id="1195217974647">
      <property name="name:1" value="builderContext" />
      <node role="type:1" type="jetbrains.mps.baseLanguage.structure.ClassifierType:3" id="1207733994541">
        <link role="classifier:3" targetNodeId="13.~TBaseBuilderContext" resolveInfo="TBaseBuilderContext" />
      </node>
      <node role="templateFragment$attribute:1" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1195217985710" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.MappingScript:2" id="1196149742906">
    <property name="name:2" value="script_Optimization" />
    <property name="scriptKind:2" value="post_processing" />
    <property name="modifiesModel:2" value="true" />
    <property name="virtualPackage:2" value="rewrite" />
    <node role="codeBlock:2" type="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock:2" id="1196149742907">
      <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1196149742908">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1196164419159">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall:3" id="1196164420367">
            <link role="baseMethodDeclaration:3" targetNodeId="11.1196158527655" resolveInfo="optimize" />
            <link role="classConcept:3" targetNodeId="11.1196157277388" resolveInfo="GTextUtil" />
            <node role="actualArgument:3" type="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model:0" id="1196164423210" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateDeclaration:2" id="1211915472272">
    <property name="name:2" value="reduce_GSeparatorItemList" />
    <property name="virtualPackage:2" value="rewrite" />
    <link role="applicableConcept:2" targetNodeId="8.1188509198390:0" resolveInfo="GSeparatorItemList" />
    <node role="contentNode:2" type="jetbrains.mps.gtext.structure.GItemList:0" id="1211917853731">
      <node role="item:0" type="jetbrains.mps.gtext.structure.GItemList:0" id="1211917863257">
        <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.LoopMacro:2" id="1211917873283">
          <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="1211917873284">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1211917873285">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1211917885310">
                <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211917886149">
                  <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1211917885311" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1211919350509">
                    <link role="link:16" targetNodeId="8.1211919312449:0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="item:0" type="jetbrains.mps.gtext.structure.GText:0" id="1211917892792">
          <property name="text:0" value="separator" />
          <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.IfMacro:2" id="1211917979368">
            <node role="conditionFunction:2" type="jetbrains.mps.lang.generator.structure.IfMacro_Condition:2" id="1211917979369">
              <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1211917979370">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1211917982639">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211917988811">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211917985077">
                      <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1211917982640" />
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetPrevSiblingOperation:16" id="1211917986493" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="1211917990876" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1211917963708">
            <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1211917963709">
              <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1211917963710">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1211917971781">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211917971782">
                    <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="1211917971783">
                      <link role="concept:16" targetNodeId="8.1188509198390:0" resolveInfo="GSeparatorItemList" />
                      <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1211917971784">
                        <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1211917971785" />
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation:16" id="1211917971786" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1211917971787">
                      <link role="link:16" targetNodeId="8.1211914934108:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="item:0" type="jetbrains.mps.gtext.structure.GText:0" id="1211917906181">
          <property name="text:0" value="item" />
          <node role="nodeMacro$attribute:0" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="1211917909486">
            <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="1211917909487">
              <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1211917909488">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1211917913093">
                  <node role="expression:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="1211917913094" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute:0" type="jetbrains.mps.lang.generator.structure.TemplateFragment:2" id="1211917869864" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.MappingConfiguration:2" id="4246810654489660286">
    <property name="name:2" value="mc_rewrite" />
    <property name="virtualPackage:2" value="rewrite" />
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489760986">
      <link role="applicableConcept:2" targetNodeId="8.1179109169620:0" resolveInfo="GConditionalLine" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="4246810654489760987">
        <link role="template:2" targetNodeId="1179110448984" resolveInfo="reduce_GConditionalLine" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489760998">
      <link role="applicableConcept:2" targetNodeId="8.1166926309597:0" resolveInfo="GLine" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="4246810654489760999">
        <link role="template:2" targetNodeId="1166926684100" resolveInfo="reduce_GLine" />
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489761009">
      <link role="applicableConcept:2" targetNodeId="8.1188509198390:0" resolveInfo="GSeparatorItemList" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference:2" id="4246810654489761010">
        <link role="template:2" targetNodeId="1211915472272" resolveInfo="reduce_GSeparatorItemList" />
      </node>
    </node>
    <node role="postMappingScript:2" type="jetbrains.mps.lang.generator.structure.MappingScriptReference:2" id="4246810654489760985">
      <link role="mappingScript:2" targetNodeId="1196149742906" resolveInfo="script_Optimization" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.generator.structure.TemplateSwitch:2" id="4246810654489778220">
    <property name="name:2" value="convertToBL" />
    <property name="virtualPackage:2" value="toBL" />
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489778221">
      <link role="applicableConcept:2" targetNodeId="8.1164497519485:0" resolveInfo="GExpressionItem" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489780494">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780496">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780497">
            <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489780498" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489780499">
              <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.append(java.lang.String):void" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4246810654489780500">
                <property name="value:3" value="expression" />
                <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="4246810654489780501">
                  <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="4246810654489780502">
                    <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489780503">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780504">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780505">
                          <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489780506" />
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4246810654489780507">
                            <link role="link:16" targetNodeId="8.1164497557065:0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489780509">
      <link role="applicableConcept:2" targetNodeId="8.1164413214326:0" resolveInfo="GIndent" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489780511">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780513">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780515">
            <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489780516" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489780517">
              <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.appendIndent():void" resolveInfo="appendIndent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789604">
      <link role="applicableConcept:2" targetNodeId="8.1164413172275:0" resolveInfo="GNewLine" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789606">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789608">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789610">
            <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489789611" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489789612">
              <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.appendNewLine():void" resolveInfo="appendNewLine" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789613">
      <link role="applicableConcept:2" targetNodeId="8.1164412789837:0" resolveInfo="GText" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789615">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789617">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789618">
            <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489789619" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489789620">
              <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.append(java.lang.String):void" resolveInfo="append" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4246810654489789621">
                <property name="value:3" value="text" />
                <node role="propertyMacro$property_attribute$value:3" type="jetbrains.mps.lang.generator.structure.PropertyMacro:2" id="4246810654489789622">
                  <node role="propertyValueFunction:2" type="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue:2" id="4246810654489789623">
                    <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789624">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789625">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789626">
                          <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789627" />
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="4246810654489789628">
                            <link role="property:16" targetNodeId="8.1164413036326:0" resolveInfo="text" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789583">
      <link role="applicableConcept:2" targetNodeId="8.1164412982980:0" resolveInfo="GItemList" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789585">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4246810654489789587">
          <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789588">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789589">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="4246810654489789590" />
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.LoopMacro:2" id="4246810654489789592">
                <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="4246810654489789593">
                  <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789594">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789595">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789597">
                        <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789596" />
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="4246810654489789601">
                          <link role="link:16" targetNodeId="8.1164413016466:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.SwitchMacro:2" id="4246810654490083677">
                <link role="templateSwitch:2" targetNodeId="4246810654489778220" resolveInfo="convertToBL" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789630">
      <link role="applicableConcept:2" targetNodeId="8.1211920428461:0" resolveInfo="GContentPlaceholder" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789632">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789634">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789635">
            <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489789636" />
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489789637">
              <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.addContentPlaceholder(java.lang.String):void" resolveInfo="addContentPlaceholder" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4246810654489789638">
                <property name="value:3" value="name" />
                <node role="propertyMacro$property_attribute$value:3" type="jetbrains.mps.lang.generator.structure.PropertyMacro:2" id="4246810654489789639">
                  <node role="propertyValueFunction:2" type="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue:2" id="4246810654489789640">
                    <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789641">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789642">
                        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789643">
                          <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789644" />
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="4246810654489789645">
                            <link role="property:16" targetNodeId="18.1169194664001:0" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489780518">
      <link role="applicableConcept:2" targetNodeId="8.1164416446950:0" resolveInfo="GIndentBlock" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489780520">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4246810654489780522">
          <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489780523">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780524">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780525">
                <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489780526" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489780527">
                  <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.increaseIndent():void" resolveInfo="increaseIndent" />
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780528">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4246810654489780529">
                <property name="value:3" value="itemList" />
              </node>
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.SwitchMacro:2" id="4246810654489780542">
                <link role="templateSwitch:2" targetNodeId="4246810654489778220" resolveInfo="convertToBL" />
                <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="4246810654489780543">
                  <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489780544">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780545">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780547">
                        <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489780546" />
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4246810654489780551">
                          <link role="link:16" targetNodeId="8.1166926910409:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489780537">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489780538">
                <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489780539" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489780540">
                  <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.decreaseIndent():void" resolveInfo="decreaseIndent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789647">
      <link role="applicableConcept:2" targetNodeId="8.1211920502338:0" resolveInfo="GContentBlock" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789649">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4246810654489789651">
          <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789652">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789653">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789654">
                <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489789655" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489789656">
                  <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.startContentBlock(java.lang.String):void" resolveInfo="startContentBlock" />
                  <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="4246810654489789657">
                    <property name="value:3" value="name" />
                    <node role="propertyMacro$property_attribute$value:3" type="jetbrains.mps.lang.generator.structure.PropertyMacro:2" id="4246810654489789658">
                      <node role="propertyValueFunction:2" type="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue:2" id="4246810654489789659">
                        <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789660">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789661">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789662">
                              <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789663" />
                              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="4246810654489789664">
                                <link role="property:16" targetNodeId="18.1169194664001:0" resolveInfo="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789679">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="4246810654489789680" />
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.LoopMacro:2" id="4246810654489789682">
                <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="4246810654489789683">
                  <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789684">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789685">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789687">
                        <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789686" />
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="4246810654489789691">
                          <link role="link:16" targetNodeId="8.1211920572264:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.SwitchMacro:2" id="4246810654489789693">
                <link role="templateSwitch:2" targetNodeId="4246810654489778220" resolveInfo="convertToBL" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789674">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789675">
                <node role="operand:3" type="jetbrains.mps.gtext.structure.BuilderContextRef:0" id="4246810654489789676" />
                <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="4246810654489789677">
                  <link role="baseMethodDeclaration:3" targetNodeId="13.~TBaseBuilderContext.endContentBlock():void" resolveInfo="endContentBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule:2" type="jetbrains.mps.lang.generator.structure.Reduction_MappingRule:2" id="4246810654489789713">
      <link role="applicableConcept:2" targetNodeId="8.1165582968644:0" resolveInfo="GStatementItem" />
      <node role="ruleConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="4246810654489789715">
        <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="4246810654489789717">
          <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789718">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789719">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="4246810654489789720" />
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.LoopMacro:2" id="4246810654489789722">
                <node role="sourceNodesQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery:2" id="4246810654489789723">
                  <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789724">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489789729">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789736">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4246810654489789731">
                          <node role="operand:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489789730" />
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="4246810654489789735">
                            <link role="link:16" targetNodeId="8.1174865533071:0" />
                          </node>
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="4246810654489789740">
                          <link role="link:16" targetNodeId="4.1068581517665:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="4246810654489789726">
                <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="4246810654489789727">
                  <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4246810654489789728">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="4246810654489793047">
                      <node role="expression:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="4246810654489793048" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="defaultConsequence:2" type="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence:2" id="44154448046322295">
      <node role="templateNode:2" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="44154448046322297">
        <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.IntegerConstant:3" id="44154448046322299">
          <property name="value:3" value="23" />
        </node>
        <node role="nodeMacro$attribute:3" type="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro:2" id="44154448046322301">
          <node role="sourceNodeQuery:2" type="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery:2" id="44154448046322302">
            <node role="body:2" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="44154448046322303">
              <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="44154448046322304">
                <node role="expression:3" type="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode:2" id="44154448046322305" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

