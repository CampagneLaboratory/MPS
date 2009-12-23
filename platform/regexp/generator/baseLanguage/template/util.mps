<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c8959051b(jetbrains.mps.baseLanguage.regexp.generator.baseLanguage.template.util)">
  <persistence version="4" />
  <refactoringHistory />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e2(jetbrains.mps.lang.generator.constraints)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ba(jetbrains.mps.lang.sharedConcepts.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590515(jetbrains.mps.baseLanguage.regexp.constraints)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590307(jetbrains.mps.lang.constraints.constraints)" version="9" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <import index="4" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="5" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <visible index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  <node type="jetbrains.mps.baseLanguage.structure.ClassConcept:3" id="1174922445389">
    <property name="name:3" value="GeneratorUtil" />
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1174923515098">
      <property name="name:3" value="findRegexpUsingConstructionFor" />
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1174923516836">
        <link role="concept:16" targetNodeId="1.1174653354106:0" />
      </node>
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1174923515100">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1174923539415">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1174923539416">
            <property name="name:3" value="parens" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1174923539417">
              <link role="concept:16" targetNodeId="1.1174564062919:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227959940">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1174923539419">
                <link role="variableDeclaration:3" targetNodeId="1174923529962" resolveInfo="ref" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1174923539420">
                <link role="link:16" targetNodeId="1.1174565035929:0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="1174923539421">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1174923539422">
            <property name="name:3" value="ruc" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1174923539423">
              <link role="concept:16" targetNodeId="1.1174653354106:0" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1204227884281">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1174923539425">
                <link role="variableDeclaration:3" targetNodeId="1174923539416" resolveInfo="parens" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="1174923539426">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="1174923539427">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1210020438441">
                    <link role="conceptDeclaration:16" targetNodeId="1.1174653354106:0" resolveInfo="RegexpUsingConstruction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1174923539428">
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1174923539429">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1174923539430" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1174923539431">
              <link role="variableDeclaration:3" targetNodeId="1174923539422" resolveInfo="ruc" />
            </node>
          </node>
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1174923539432">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1174923539433">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1174923545761">
                <link role="variableDeclaration:3" targetNodeId="1174923539422" resolveInfo="ruc" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="2588298302278050901" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2588298302278050823">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278050824">
            <property name="name:3" value="dcl" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278050825">
              <link role="concept:16" targetNodeId="1.1174483125581:0" resolveInfo="RegexpDeclaration" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278050826">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278050827">
                <link role="variableDeclaration:3" targetNodeId="1174923539416" resolveInfo="parens" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="2588298302278050828">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278050829">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278050830">
                    <link role="conceptDeclaration:16" targetNodeId="1.1174483125581:0" resolveInfo="RegexpDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2588298302278069944">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069945">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069955">
              <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069956">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278069957">
                  <link role="variableDeclaration:3" targetNodeId="1174923529962" resolveInfo="ref" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278069958">
                  <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278069959">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278069960">
                      <link role="conceptDeclaration:16" targetNodeId="1.1174653354106:0" resolveInfo="RegexpUsingConstruction" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069961">
                <property name="name:3" value="parentRuc" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069962">
                  <link role="concept:16" targetNodeId="1.1174653354106:0" resolveInfo="RegexpUsingConstruction" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069963">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069964">
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069965">
                    <property name="name:3" value="regref" />
                    <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069966">
                      <link role="concept:16" targetNodeId="1.1174662605354:0" resolveInfo="RegexpDeclarationReferenceRegexp" />
                    </node>
                  </node>
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069967">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2588298302278069968">
                      <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.EqualsExpression:3" id="2588298302278069969">
                        <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069970">
                          <link role="variableDeclaration:3" targetNodeId="2588298302278050824" resolveInfo="dcl" />
                        </node>
                        <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069971">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069972">
                            <link role="variableDeclaration:3" targetNodeId="2588298302278069965" resolveInfo="regref" />
                          </node>
                          <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278069973">
                            <link role="link:16" targetNodeId="1.1174662628918:0" />
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069974">
                        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2588298302278069975">
                          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069976">
                            <link role="variableDeclaration:3" targetNodeId="2588298302278069961" resolveInfo="parentRuc" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069977">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069978">
                      <link role="variableDeclaration:3" targetNodeId="2588298302278069961" resolveInfo="parentRuc" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation:16" id="2588298302278069979">
                      <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278069980">
                        <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278069981">
                          <link role="conceptDeclaration:16" targetNodeId="1.1174662605354:0" resolveInfo="RegexpDeclarationReferenceRegexp" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="2588298302278069949">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2588298302278069952" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069948">
              <link role="variableDeclaration:3" targetNodeId="2588298302278050824" resolveInfo="dcl" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="2588298302278069988" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278050858">
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278050859">
            <property name="name:3" value="ifst" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278050860">
              <link role="concept:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278050861">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278050862">
              <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278050863">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278050864">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278050865">
                    <link role="variableDeclaration:3" targetNodeId="2588298302278050859" resolveInfo="ifst" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278050866">
                    <link role="link:16" targetNodeId="2v.1068580123160:3" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation:16" id="2588298302278050867">
                  <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278050868">
                    <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278050869">
                      <link role="conceptDeclaration:16" targetNodeId="1.6129327962763158517:0" resolveInfo="FindMatchExpression" />
                    </node>
                  </node>
                  <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278050870" />
                </node>
              </node>
              <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278050871">
                <property name="name:3" value="expr" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278050872">
                  <link role="concept:16" targetNodeId="1.6129327962763158517:0" resolveInfo="FindMatchExpression" />
                </node>
              </node>
              <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278050873">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1767845709140813441">
                  <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140813442">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1767845709140813465">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140813467">
                        <link role="variableDeclaration:3" targetNodeId="2588298302278050871" resolveInfo="expr" />
                      </node>
                    </node>
                  </node>
                  <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140813447">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="1767845709140813445">
                      <link role="baseMethodDeclaration:3" targetNodeId="8022472963611388894" resolveInfo="collectNamedParentheses" />
                      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140813446">
                        <link role="variableDeclaration:3" targetNodeId="2588298302278050871" resolveInfo="expr" />
                      </node>
                    </node>
                    <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation:7" id="1767845709140813451">
                      <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140813458">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813456">
                          <link role="variableDeclaration:3" targetNodeId="1174923529962" resolveInfo="ref" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1767845709140813463">
                          <link role="link:16" targetNodeId="1.1174565035929:0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278050881">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278050882">
              <link role="variableDeclaration:3" targetNodeId="1174923529962" resolveInfo="ref" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278050883">
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278050884">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278050885">
                  <link role="conceptDeclaration:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
                </node>
              </node>
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278050886" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2588298302278050887">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2588298302278050888" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1174923529962">
        <property name="name:3" value="ref" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1174923529963">
          <link role="concept:16" targetNodeId="1.1174565027678:0" />
        </node>
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178546096763" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="4276824325038550479">
      <property name="name:3" value="getRegexpIfContainer" />
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4276824325038550483">
        <link role="concept:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="4276824325038550481" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4276824325038550482">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="4276824325038550488">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="4276824325038550489">
            <property name="name:3" value="container" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4276824325038550490">
              <link role="concept:16" targetNodeId="2v.1068580123157:3" resolveInfo="Statement" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550491">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="4276824325038550526">
                <link role="variableDeclaration:3" targetNodeId="4276824325038550484" resolveInfo="n" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation:16" id="4276824325038550493">
                <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="4276824325038550494">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="4276824325038550495">
                    <link role="conceptDeclaration:16" targetNodeId="2v.1068580123157:3" resolveInfo="Statement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="4276824325038550496">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="4276824325038550497">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="4276824325038550527">
              <node role="expression:3" type="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression:16" id="4276824325038550535">
                <link role="concept:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
                <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4276824325038550534">
                  <link role="variableDeclaration:3" targetNodeId="4276824325038550489" resolveInfo="container" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="4276824325038550505">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550506">
              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4276824325038550507">
                <link role="variableDeclaration:3" targetNodeId="4276824325038550489" resolveInfo="container" />
              </node>
              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="4276824325038550508">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="4276824325038550509">
                  <link role="conceptDeclaration:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
                </node>
              </node>
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="4276824325038550510">
              <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.AndExpression:3" id="4276824325038550511">
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550512">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4276824325038550513">
                    <link role="variableDeclaration:3" targetNodeId="4276824325038550489" resolveInfo="container" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="4276824325038550514" />
                </node>
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550515">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550516">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4276824325038550517">
                      <link role="variableDeclaration:3" targetNodeId="4276824325038550489" resolveInfo="container" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation:16" id="4276824325038550518" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation:16" id="4276824325038550519" />
                </node>
              </node>
              <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550520">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="4276824325038550521">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="4276824325038550522">
                    <link role="variableDeclaration:3" targetNodeId="4276824325038550489" resolveInfo="container" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation:16" id="4276824325038550523" />
                </node>
                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation:16" id="4276824325038550524">
                  <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="4276824325038550525">
                    <link role="conceptDeclaration:16" targetNodeId="2v.1068580123136:3" resolveInfo="StatementList" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="4276824325038550531">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="4276824325038550533" />
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="4276824325038550484">
        <property name="name:3" value="n" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="4276824325038550485">
          <link role="concept:16" targetNodeId="1.6129327962763158517:0" resolveInfo="FindMatchExpression" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="8022472963611388894">
      <property name="name:3" value="collectNamedParentheses" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="8022472963611388897">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="8022472963611388962">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="8022472963611388963">
            <property name="name:3" value="res" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="8022472963611388964">
              <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="8022472963611388967">
              <node role="creator:3" type="jetbrains.mps.lang.smodel.structure.SNodeListCreator:16" id="8022472963611395155">
                <node role="createdType:16" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="8022472963611395156">
                  <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1767845709140806876">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="1767845709140806877">
            <link role="baseMethodDeclaration:3" targetNodeId="1767845709140806677" resolveInfo="collectNamedParentheseInternal" />
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140806892">
              <link role="variableDeclaration:3" targetNodeId="8022472963611395167" resolveInfo="node" />
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="1767845709140806922">
              <node role="creator:3" type="jetbrains.mps.lang.smodel.structure.SNodeListCreator:16" id="1767845709140813108">
                <node role="createdType:16" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="1767845709140813109" />
              </node>
            </node>
            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140813139">
              <link role="variableDeclaration:3" targetNodeId="8022472963611388963" resolveInfo="res" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="8022472963611395164">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="8022472963611395166">
            <link role="variableDeclaration:3" targetNodeId="8022472963611388963" resolveInfo="res" />
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="8022472963611388965">
        <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="8022472963611395167">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="8022472963611395168" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1767845709140806590" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="1767845709140806677">
      <property name="name:3" value="collectNamedParenthesesInternal" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="1767845709140813429" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140806680">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1767845709140806803">
          <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140806804">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="1767845709140806805" />
          </node>
          <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140806809">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140806810">
              <link role="variableDeclaration:3" targetNodeId="1767845709140806684" resolveInfo="seen" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation:7" id="1767845709140806811">
              <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140806812">
                <link role="variableDeclaration:3" targetNodeId="1767845709140806682" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1767845709140813169">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140813185">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813170">
              <link role="variableDeclaration:3" targetNodeId="1767845709140806684" resolveInfo="seen" />
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="1767845709140813203">
              <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813221">
                <link role="variableDeclaration:3" targetNodeId="1767845709140806682" resolveInfo="node" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.Statement:3" id="1767845709140806802" />
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1767845709140806749">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140806750">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140806751">
              <link role="variableDeclaration:3" targetNodeId="1767845709140806682" resolveInfo="node" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation:16" id="1767845709140806752">
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="1767845709140806753">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1767845709140806754">
                  <link role="conceptDeclaration:16" targetNodeId="1.1174662605354:0" resolveInfo="RegexpDeclarationReferenceRegexp" />
                </node>
              </node>
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1767845709140806755">
            <property name="name:3" value="ref" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1767845709140806756">
              <link role="concept:16" targetNodeId="1.1174662605354:0" resolveInfo="RegexpDeclarationReferenceRegexp" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140806757">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="1767845709140806758">
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="1767845709140806759">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="1767845709140806760" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140806761">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140806762">
                    <link role="variableDeclaration:3" targetNodeId="1767845709140806755" resolveInfo="ref" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1767845709140806763">
                    <link role="link:16" targetNodeId="1.1174662628918:0" />
                  </node>
                </node>
              </node>
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140806764">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1767845709140813292">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="1767845709140813293">
                    <link role="baseMethodDeclaration:3" targetNodeId="1767845709140806677" resolveInfo="collectNamedParentheseInternal" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140813305">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140813304">
                        <link role="variableDeclaration:3" targetNodeId="1767845709140806755" resolveInfo="ref" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="1767845709140813319">
                        <link role="link:16" targetNodeId="1.1174662628918:0" />
                      </node>
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813352">
                      <link role="variableDeclaration:3" targetNodeId="1767845709140806684" resolveInfo="seen" />
                    </node>
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813374">
                      <link role="variableDeclaration:3" targetNodeId="1767845709140806825" resolveInfo="found" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="1767845709140806771">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140806772">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140806773">
              <link role="variableDeclaration:3" targetNodeId="1767845709140806682" resolveInfo="node" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation:16" id="1767845709140806774">
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="1767845709140806775">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="1767845709140806776">
                  <link role="conceptDeclaration:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
                </node>
              </node>
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="1767845709140806777">
            <property name="name:3" value="mpe" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1767845709140806778">
              <link role="concept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="1767845709140806779">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="1767845709140806780">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="1767845709140806781">
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation:7" id="1767845709140806783">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="1767845709140806784">
                    <link role="variableDeclaration:3" targetNodeId="1767845709140806777" resolveInfo="mpe" />
                  </node>
                </node>
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="1767845709140813396">
                  <link role="variableDeclaration:3" targetNodeId="1767845709140806825" resolveInfo="found" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="1767845709140806817" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1767845709140806682">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="1767845709140806683" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1767845709140806684">
        <property name="name:3" value="seen" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="1767845709140806719" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="1767845709140806825">
        <property name="name:3" value="found" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="1767845709140806827">
          <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
        </node>
      </node>
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="2588298302278069715">
      <property name="name:3" value="collectMatchReferences" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="2588298302278069717" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069718">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2588298302278069722">
          <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069723">
            <property name="name:3" value="matches" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="2588298302278069724">
              <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
            </node>
            <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.GenericNewExpression:3" id="2588298302278069725">
              <node role="creator:3" type="jetbrains.mps.lang.smodel.structure.SNodeListCreator:16" id="2588298302278069726">
                <node role="createdType:16" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="2588298302278069727">
                  <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069728">
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069729">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278069842">
              <link role="variableDeclaration:3" targetNodeId="2588298302278069720" resolveInfo="encl" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278069731">
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278069732">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278069733">
                  <link role="conceptDeclaration:16" targetNodeId="1.1174653354106:0" resolveInfo="RegexpUsingConstruction" />
                </node>
              </node>
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278370915" />
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069734">
            <property name="name:3" value="ruc" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069735">
              <link role="concept:16" targetNodeId="1.1174653354106:0" resolveInfo="RegexpUsingConstruction" />
            </node>
          </node>
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069736">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2588298302278069737">
              <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069738">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069739">
                  <link role="variableDeclaration:3" targetNodeId="2588298302278069723" resolveInfo="matches" />
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation:7" id="2588298302278069740">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="2588298302278069880">
                    <link role="baseMethodDeclaration:3" targetNodeId="8022472963611388894" resolveInfo="collectNamedParentheses" />
                    <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069742">
                      <link role="variableDeclaration:3" targetNodeId="2588298302278069734" resolveInfo="ruc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069743">
          <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069744">
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement:3" id="2588298302278069745">
              <node role="localVariableDeclaration:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069746">
                <property name="name:3" value="toCollect" />
                <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069747" />
                <node role="initializer:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2588298302278069748" />
              </node>
            </node>
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2588298302278069749">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069750">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2588298302278069751">
                  <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2588298302278069752">
                    <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069753">
                      <link role="variableDeclaration:3" targetNodeId="2588298302278069746" resolveInfo="toCollect" />
                    </node>
                    <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069754">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069755">
                        <link role="variableDeclaration:3" targetNodeId="2588298302278069814" resolveInfo="ifst" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278069756">
                        <link role="link:16" targetNodeId="2v.1068580123160:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069757">
                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069758">
                  <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278069857">
                    <link role="variableDeclaration:3" targetNodeId="2588298302278069720" resolveInfo="encl" />
                  </node>
                  <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278370886">
                    <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278370890" />
                  </node>
                </node>
                <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation:7" id="2588298302278069761">
                  <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069762">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069763">
                      <link role="variableDeclaration:3" targetNodeId="2588298302278069814" resolveInfo="ifst" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278069764">
                      <link role="link:16" targetNodeId="2v.1068580123161:3" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifFalseStatement:3" type="jetbrains.mps.baseLanguage.structure.BlockStatement:3" id="2588298302278069765">
                <node role="statements:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069766">
                  <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069767">
                    <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069768">
                      <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069769">
                        <link role="variableDeclaration:3" targetNodeId="2588298302278069814" resolveInfo="ifst" />
                      </node>
                      <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess:16" id="2588298302278069770">
                        <link role="link:16" targetNodeId="2v.1206060520071:3" />
                      </node>
                    </node>
                    <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069771">
                      <property name="name:3" value="elseif" />
                      <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069772">
                        <link role="concept:16" targetNodeId="2v.1206060495898:3" resolveInfo="ElsifClause" />
                      </node>
                    </node>
                    <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069773">
                      <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2588298302278069774">
                        <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069775">
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2588298302278069776">
                            <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.AssignmentExpression:3" id="2588298302278069777">
                              <node role="lValue:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069778">
                                <link role="variableDeclaration:3" targetNodeId="2588298302278069746" resolveInfo="toCollect" />
                              </node>
                              <node role="rValue:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069779">
                                <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069780">
                                  <link role="variableDeclaration:3" targetNodeId="2588298302278069771" resolveInfo="elseif" />
                                </node>
                                <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278069781">
                                  <link role="link:16" targetNodeId="2v.1206060619838:3" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.BreakStatement:3" id="2588298302278069942" />
                        </node>
                        <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069782">
                          <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069783">
                            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278069855">
                              <link role="variableDeclaration:3" targetNodeId="2588298302278069720" resolveInfo="encl" />
                            </node>
                            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278370892">
                              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278370904" />
                            </node>
                          </node>
                          <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation:7" id="2588298302278069786">
                            <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069787">
                              <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069788">
                                <link role="variableDeclaration:3" targetNodeId="2588298302278069771" resolveInfo="elseif" />
                              </node>
                              <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.SLinkAccess:16" id="2588298302278069789">
                                <link role="link:16" targetNodeId="2v.1206060644605:3" />
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
            <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.IfStatement:3" id="2588298302278069888">
              <node role="ifTrue:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069889">
                <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ForeachStatement:3" id="2588298302278069897">
                  <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="2588298302278069898">
                    <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="2588298302278069899">
                      <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069900">
                        <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069901">
                          <link role="variableDeclaration:3" targetNodeId="2588298302278069723" resolveInfo="matches" />
                        </node>
                        <node role="operation:3" type="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation:7" id="2588298302278069902">
                          <node role="argument:7" type="jetbrains.mps.baseLanguage.structure.LocalStaticMethodCall:3" id="2588298302278069903">
                            <link role="baseMethodDeclaration:3" targetNodeId="8022472963611388894" resolveInfo="collectNamedParentheses" />
                            <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069904">
                              <link role="variableDeclaration:3" targetNodeId="2588298302278069913" resolveInfo="expr" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069905">
                    <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069932">
                      <link role="variableDeclaration:3" targetNodeId="2588298302278069746" resolveInfo="toCollect" />
                    </node>
                    <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation:16" id="2588298302278069909">
                      <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278069910">
                        <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278069911">
                          <link role="conceptDeclaration:16" targetNodeId="1.6129327962763158517:0" resolveInfo="FindMatchExpression" />
                        </node>
                      </node>
                      <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278069912" />
                    </node>
                  </node>
                  <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069913">
                    <property name="name:3" value="expr" />
                    <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069914">
                      <link role="concept:16" targetNodeId="1.6129327962763158517:0" resolveInfo="FindMatchExpression" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="2588298302278069893">
                <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="2588298302278069896" />
                <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069892">
                  <link role="variableDeclaration:3" targetNodeId="2588298302278069746" resolveInfo="toCollect" />
                </node>
              </node>
            </node>
          </node>
          <node role="iterable:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="2588298302278069808">
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="2588298302278069851">
              <link role="variableDeclaration:3" targetNodeId="2588298302278069720" resolveInfo="encl" />
            </node>
            <node role="operation:3" type="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation:16" id="2588298302278069810">
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept:16" id="2588298302278069811">
                <node role="conceptArgument:16" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference:16" id="2588298302278069812">
                  <link role="conceptDeclaration:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
                </node>
              </node>
              <node role="parameter:16" type="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion:16" id="2588298302278069813" />
            </node>
          </node>
          <node role="variable:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration:3" id="2588298302278069814">
            <property name="name:3" value="ifst" />
            <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069815">
              <link role="concept:16" targetNodeId="2v.1068580123159:3" resolveInfo="IfStatement" />
            </node>
          </node>
        </node>
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ReturnStatement:3" id="2588298302278069816">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference:3" id="2588298302278069817">
            <link role="variableDeclaration:3" targetNodeId="2588298302278069723" resolveInfo="matches" />
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.lang.smodel.structure.SNodeListType:16" id="2588298302278069719">
        <link role="elementConcept:16" targetNodeId="1.1174564062919:0" resolveInfo="MatchParensRegexp" />
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="2588298302278069720">
        <property name="name:3" value="enclosingNode" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="2588298302278069721" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="1178550081257" />
  </node>
  <node type="jetbrains.mps.baseLanguage.structure.EnumClass:3" id="7048923897762709721">
    <property name="name:3" value="Flags" />
    <node role="enumConstant:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration:3" id="7048923897763033401">
      <property name="name:3" value="ADD_VARS" />
      <link role="baseMethodDeclaration:3" targetNodeId="7048923897762709723" resolveInfo="Flags" />
      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7048923897763033402">
        <property name="value:3" value="add_vars" />
      </node>
    </node>
    <node role="enumConstant:3" type="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration:3" id="8022472963610889555">
      <property name="name:3" value="REGEXP_NEED_VAR" />
      <link role="baseMethodDeclaration:3" targetNodeId="7048923897762709723" resolveInfo="Flags" />
      <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="8022472963610889556">
        <property name="value:3" value="needvar" />
      </node>
    </node>
    <node role="field:3" type="jetbrains.mps.baseLanguage.structure.FieldDeclaration:3" id="7048923897762709793">
      <property name="name:3" value="name" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7048923897762709794" />
      <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7048923897762709795" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7048923897762709743">
      <property name="name:3" value="flag" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7048923897762709744">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="7048923897762709745" />
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7048923897762709746" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709747" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709748">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7048923897762709749">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7048923897762709750">
            <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="7048923897762709751">
              <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7048923897762709752">
                <link role="variableDeclaration:3" targetNodeId="7048923897762709744" resolveInfo="node" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7048923897762709753">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolveInfo="putUserObject" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7048923897762709754" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.BooleanConstant:3" id="7048923897762709805">
                <property name="value:3" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7048923897762709756">
      <property name="name:3" value="clear" />
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7048923897762709757" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709758" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709759">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7048923897762709760">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7048923897762709761">
            <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="7048923897762709762">
              <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7048923897762709763">
                <link role="variableDeclaration:3" targetNodeId="7048923897762709767" resolveInfo="node" />
              </node>
            </node>
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7048923897762709764">
              <link role="baseMethodDeclaration:3" targetNodeId="4.~SNode.putUserObject(java.lang.Object,java.lang.Object):void" resolveInfo="putUserObject" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7048923897762709765" />
              <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7048923897762709766" />
            </node>
          </node>
        </node>
      </node>
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7048923897762709767">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="7048923897762709768" />
      </node>
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7048923897762709769">
      <property name="name:3" value="isFlagged" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7048923897762709770">
        <property name="name:3" value="node" />
        <node role="type:3" type="jetbrains.mps.lang.smodel.structure.SNodeType:16" id="7048923897762709771" />
      </node>
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709772" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709773">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7048923897762709774">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.NotEqualsExpression:3" id="7048923897762709775">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.NullLiteral:3" id="7048923897762709776" />
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7048923897762709777">
              <node role="operand:3" type="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression:16" id="7048923897762709778">
                <node role="leftExpression:16" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7048923897762709779">
                  <link role="variableDeclaration:3" targetNodeId="7048923897762709770" resolveInfo="node" />
                </node>
              </node>
              <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation:3" id="7048923897762709780">
                <link role="baseMethodDeclaration:3" targetNodeId="4.~SNode.getUserObject(java.lang.Object):java.lang.Object" resolveInfo="getUserObject" />
                <node role="actualArgument:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7048923897762709781" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.BooleanType:3" id="7048923897762709782" />
    </node>
    <node role="method:3" type="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration:3" id="7048923897762709783">
      <property name="name:3" value="toString" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709784" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709785">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7048923897762709786">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.DotExpression:3" id="7048923897762709787">
            <node role="operation:3" type="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation:3" id="7048923897762709796">
              <link role="fieldDeclaration:3" targetNodeId="7048923897762709793" resolveInfo="name" />
            </node>
            <node role="operand:3" type="jetbrains.mps.baseLanguage.structure.ThisExpression:3" id="7048923897762709789" />
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7048923897762709790" />
    </node>
    <node role="staticMethod:3" type="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration:3" id="7048923897762709730">
      <property name="name:3" value="PREFIX" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PrivateVisibility:3" id="7048923897762709731" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709732">
        <node role="statement:3" type="jetbrains.mps.baseLanguage.structure.ExpressionStatement:3" id="7048923897762709733">
          <node role="expression:3" type="jetbrains.mps.baseLanguage.structure.PlusExpression:3" id="7048923897762709734">
            <node role="rightExpression:3" type="jetbrains.mps.baseLanguage.structure.ParameterReference:3" id="7048923897762709735">
              <link role="variableDeclaration:3" targetNodeId="7048923897762709738" resolveInfo="str" />
            </node>
            <node role="leftExpression:3" type="jetbrains.mps.baseLanguage.structure.StringLiteral:3" id="7048923897762709736">
              <property name="value:3" value="jetbrains.mps.baselanguage.regexp.generator." />
            </node>
          </node>
        </node>
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7048923897762709737" />
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7048923897762709738">
        <property name="name:3" value="str" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7048923897762709739" />
      </node>
    </node>
    <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709722" />
    <node role="constructor:3" type="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration:3" id="7048923897762709723">
      <node role="parameter:3" type="jetbrains.mps.baseLanguage.structure.ParameterDeclaration:3" id="7048923897762709727">
        <property name="name:3" value="name" />
        <node role="type:3" type="jetbrains.mps.baseLanguage.structure.StringType:3" id="7048923897762709728" />
      </node>
      <node role="returnType:3" type="jetbrains.mps.baseLanguage.structure.VoidType:3" id="7048923897762709724" />
      <node role="visibility:3" type="jetbrains.mps.baseLanguage.structure.PublicVisibility:3" id="7048923897762709725" />
      <node role="body:3" type="jetbrains.mps.baseLanguage.structure.StatementList:3" id="7048923897762709726" />
    </node>
  </node>
</model>

