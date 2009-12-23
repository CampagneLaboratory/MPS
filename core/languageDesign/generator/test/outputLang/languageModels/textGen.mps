<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:dc2197ed-ff7a-4789-9556-7ee196b8feae(jetbrains.mps.transformation.test.outputLang.textGen)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="b83431fe-5c8f-40bc-8a36-65e25f4dd253(jetbrains.mps.lang.textGen)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:de0d3c0c-d049-41cf-bbf9-a920ba513cd3(jetbrains.mps.lang.textGen.structure)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590605(jetbrains.mps.transformation.test.outputLang.structure)" version="-1" />
  <node type="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration:11" id="1236704181256">
    <link role="conceptDeclaration:11" targetNodeId="1.1195165132070" resolveInfo="OutputNode" />
    <node role="textGenBlock:11" type="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration:11" id="1236704181257">
      <node role="body:11" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704181258">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1237467854990">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237467854991">
            <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237467872316">
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NodeAppendPart:11" id="1237467873834">
                <node role="value:11" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237467876540">
                  <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1237467875680" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1237467877310">
                    <link role="property:16" targetNodeId="1.1195170441111" resolveInfo="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1237467868094">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1237467869081" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1237467865823">
              <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1237467865369" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1237467867077">
                <link role="property:16" targetNodeId="1.1195170441111" resolveInfo="text" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="1237467882233">
            <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1237467882234">
              <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237467884469">
                <node role="part:11" type="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart:11" id="1237467886362">
                  <property name="value:11" value="!no text!" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1236704266065">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704266066">
            <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237463992348">
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart:11" id="1237463992350">
                <property name="value:11" value=" children:{" />
              </node>
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.CollectionAppendPart:11" id="1237463992351">
                <property name="withSeparator:11" value="false" />
                <property name="separator:11" value="" />
                <node role="list:11" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704250075">
                  <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704249745" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1237985714372">
                    <link role="link:16" targetNodeId="1.1202327114879" />
                  </node>
                </node>
              </node>
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart:11" id="1237463992352">
                <property name="value:11" value="}" />
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704273091">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704267336">
              <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704267054" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1236704272106">
                <link role="link:16" targetNodeId="1.1202327114879" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation:7" id="1236704274251" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  <node type="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration:11" id="1236704302588">
    <link role="conceptDeclaration:11" targetNodeId="1.1195164668463" resolveInfo="OutputRoot" />
    <node role="textGenBlock:11" type="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration:11" id="1236704302589">
      <node role="body:11" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704302590">
        <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237463992181">
          <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NodeAppendPart:11" id="1237463992183">
            <node role="value:11" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1236704315671">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1236704370854">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1236704371889" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704368037">
                  <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704367708" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1236704369416">
                    <link role="property:16" targetNodeId="2v.1169194664001:0" resolveInfo="name" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1236704374202">
                <property name="value:3" value="&lt;no name&gt;" />
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704381892">
                <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704381547" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1236704382911">
                  <link role="property:16" targetNodeId="2v.1169194664001:0" resolveInfo="name" />
                </node>
              </node>
            </node>
          </node>
          <node role="part:11" type="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart:11" id="1237463992184">
            <property name="value:11" value=" : " />
          </node>
          <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NodeAppendPart:11" id="1237463992185">
            <node role="value:11" type="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression:3" id="1236704411042">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="1236704411043">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1236704411044" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704411061">
                  <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704411062" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1236704419583">
                    <link role="property:16" targetNodeId="1.1195164732401" resolveInfo="text" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="1236704411064">
                <property name="value:3" value="&lt;no text&gt;" />
              </node>
              <node role="ifFalse:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704411065">
                <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704411066" />
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SPropertyAccess:16" id="1236704439507">
                  <link role="property:16" targetNodeId="1.1195164732401" resolveInfo="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1236704451853">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704451854">
            <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237463991656">
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NewLineAppendPart:11" id="1237463991658" />
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NodeAppendPart:11" id="1237463991659">
                <node role="value:11" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704475639">
                  <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704475325" />
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1236704477471">
                    <link role="link:16" targetNodeId="1.1218735665292" />
                  </node>
                </node>
              </node>
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NewLineAppendPart:11" id="1237463991660" />
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704462550">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704458951">
              <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704458638" />
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1236704461393">
                <link role="link:16" targetNodeId="1.1218735665292" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="1236704464039" />
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1236704486741">
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704486742">
            <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237463993148">
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NewLineAppendPart:11" id="1237463993150" />
              <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NewLineAppendPart:11" id="1237463993151" />
            </node>
            <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.WithIndentOperation:11" id="1236704522133">
              <node role="list:11" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1236704522134">
                <node role="statement:3" type="jetbrains.mps.lang.textGen.structure.AppendOperation:11" id="1237463992697">
                  <node role="part:11" type="jetbrains.mps.lang.textGen.structure.NodeAppendPart:11" id="1237463992699">
                    <node role="value:11" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1236704529059">
                      <link role="variableDeclaration:3" targetNodeId="1236704486745" resolveInfo="out" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1236704504290">
            <node role="operand:3" type="jetbrains.mps.lang.textGen.structure.NodeParameter:11" id="1236704503926" />
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="1236704507218">
              <link role="link:16" targetNodeId="1.1195169631818" />
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1236704486745">
            <property name="name:3" value="output" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1236704489092">
              <link role="concept:16" targetNodeId="1.1195165132070" resolveInfo="OutputNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

