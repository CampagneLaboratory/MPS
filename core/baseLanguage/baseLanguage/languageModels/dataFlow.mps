<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.baseLanguage.dataFlow">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.dataFlow" />
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <maxImportIndex value="3" />
  <import index="1" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="2" modelUID="jetbrains.mps.baseLanguage@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.project@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206453981840">
    <link role="conceptDeclaration" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206453981841">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206453981842">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitReadStatement" id="1206453985187">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987197560">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206453986127" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987203094">
              <link role="link" targetNodeId="1.1068581517664" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206454554507">
    <property name="package" value="if" />
    <link role="conceptDeclaration" targetNodeId="1.1068580123159" resolveInfo="IfStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206454554508">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206454554509">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206454560120">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454561919">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454561622" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454579242">
              <link role="link" targetNodeId="1.1068580123160" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206454704669">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206454704670">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206454713946">
              <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206454715791">
                <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454716637" />
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454707849">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454705893">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454705501" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454707582">
                <link role="link" targetNodeId="1.1082485599094" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNullOperation" id="1206454710632" />
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1206454717842">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206454717843">
              <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206454721345">
                <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206454741707">
                  <node role="relativeTo" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454746101">
                    <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454745787" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454747462">
                      <link role="link" targetNodeId="1.1082485599094" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206454592091">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454593782">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454593312" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454681179">
              <link role="link" targetNodeId="1.1068580123161" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206454760986">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206454760987">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206535917957">
              <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206454754199">
                <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206454755185">
                  <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454756171" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206454676454">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454678192">
                <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454677941" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454679835">
                  <link role="link" targetNodeId="1.1082485599094" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454766869">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206454762882">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206454762615" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206454766024">
                <link role="link" targetNodeId="1.1082485599094" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1206454768652" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1206545608969">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206545608970">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206545627317">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206545629445">
                <link role="variableDeclaration" targetNodeId="1206545608973" resolveInfo="elseIF" />
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206545624219">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206545618479" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206545625409">
              <link role="link" targetNodeId="1.1206060520071" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206545608973">
            <property name="name" value="elseIf" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206545612601">
              <link role="concept" targetNodeId="1.1206060495898" resolveInfo="ElsifClause" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206455216234">
    <link role="conceptDeclaration" targetNodeId="1.1076505808687" resolveInfo="WhileStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206455216235">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206455216236">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206455219940">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206455221380">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206455221114" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206455222507">
              <link role="link" targetNodeId="1.1076505808688" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206969572887">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206969572888">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206969625632">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206969625633">
                <property name="name" value="constant" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206969625634">
                  <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                </node>
                <node role="initializer" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206969647828">
                  <link role="concept" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206969645418">
                    <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206969644839" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206969647139">
                      <link role="link" targetNodeId="1.1076505808688" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206969653503">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206969653504">
                <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206969667905">
                  <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206969669282">
                    <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206969670550" />
                  </node>
                </node>
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.NotExpression" id="1206969664729">
                <node role="expression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206969664730">
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SPropertyAccess" id="1206969664731">
                    <link role="property" targetNodeId="1.1068580123138" resolveInfo="value" />
                  </node>
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206969664732">
                    <link role="variableDeclaration" targetNodeId="1206969625633" resolveInfo="constant" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206969592772">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206969590925">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206969574532" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206969592458">
                <link role="link" targetNodeId="1.1076505808688" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206969594227">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206969596681">
                <link role="conceptDeclaration" targetNodeId="1.1068580123137" resolveInfo="BooleanConstant" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1206969618254">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206969618255">
              <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206455229720">
                <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206539350917">
                  <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206539351779" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206455224916">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206455226294">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206455226027" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206455227171">
              <link role="link" targetNodeId="1.1154032183016" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206969769500">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206539361128">
            <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206539362692">
              <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206539363601" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206459382666">
    <link role="conceptDeclaration" targetNodeId="1.1068580123157" resolveInfo="Statement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206459382667">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206459382668">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206459387826" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206459403819">
    <link role="conceptDeclaration" targetNodeId="1.1068431790191" resolveInfo="Expression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206459403820">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206459403821">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206459406244" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206459413245">
    <link role="conceptDeclaration" targetNodeId="1.1068580123155" resolveInfo="ExpressionStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206459413246">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206459413247">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206459415607">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206459423001">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206459417750" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206459435403">
              <link role="link" targetNodeId="1.1068580123156" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206460142537">
    <link role="conceptDeclaration" targetNodeId="1.1082485599095" resolveInfo="BlockStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206460142538">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460142539">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460145524">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460188829">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460146807" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460202216">
              <link role="link" targetNodeId="1.1082485599096" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206460267925">
    <link role="conceptDeclaration" targetNodeId="1.1068580123136" resolveInfo="StatementList" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206460267926">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460267927">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206464445632" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1206460272131">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460278939">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460278734" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206460280254">
              <link role="link" targetNodeId="1.1068581517665" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206460272133">
            <property name="name" value="s" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206460274949">
              <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460272135">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460282100">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206460284133">
                <link role="variableDeclaration" targetNodeId="1206460272133" resolveInfo="s" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206563315886">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206563315887">
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" id="1206563394489">
              <node role="localVariableDeclaration" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206563394490">
                <property name="name" value="lastStatement" />
                <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206563394491">
                  <link role="concept" targetNodeId="1.1068580123157" resolveInfo="Statement" />
                </node>
                <node role="initializer" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206563409388">
                  <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206563407869">
                    <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206563407462" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206563408996">
                      <link role="link" targetNodeId="1.1068581517665" />
                    </node>
                  </node>
                  <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.GetLastOperation" id="1206563410405" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206563414221">
              <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206563414222">
                <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitRetStatement" id="1206563438458" />
              </node>
              <node role="condition" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206563418226">
                <link role="baseMethodDeclaration" targetNodeId="2.~LastStatementUtil.canMakeReturnStatement(jetbrains.mps.smodel.SNode,jetbrains.mps.smodel.IScope):boolean" resolveInfo="canMakeReturnStatement" />
                <link role="classConcept" targetNodeId="2.~LastStatementUtil" resolveInfo="LastStatementUtil" />
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206563419899">
                  <link role="variableDeclaration" targetNodeId="1206563394490" resolveInfo="lastStatement" />
                </node>
                <node role="actualArgument" type="jetbrains.mps.baseLanguage.structure.StaticMethodCall" id="1206563434770">
                  <link role="baseMethodDeclaration" targetNodeId="3.~GlobalScope.getInstance():jetbrains.mps.project.GlobalScope" resolveInfo="getInstance" />
                  <link role="classConcept" targetNodeId="3.~GlobalScope" resolveInfo="GlobalScope" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206563325303">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206563323238">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206563316858" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206563324333">
                <link role="link" targetNodeId="1.1068581517665" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.IsNotEmptyOperation" id="1206563335687" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206460339989">
    <link role="conceptDeclaration" targetNodeId="1.1068498886294" resolveInfo="AssignmentExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206460339990">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460339991">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460344649">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460346964">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460346651" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460670887">
              <link role="link" targetNodeId="1.1068498886297" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206460370422">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460370423">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitWriteStatement" id="1206460394593">
              <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987236212">
                <node role="operand" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeTypeCastExpression" id="1206987232924">
                  <link role="concept" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
                  <node role="leftExpression" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460394594">
                    <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460394595" />
                    <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460676155">
                      <link role="link" targetNodeId="1.1068498886295" />
                    </node>
                  </node>
                </node>
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987247692">
                  <link role="link" targetNodeId="1.1068581517664" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460374586">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460371864">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460371597" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460673232">
                <link role="link" targetNodeId="1.1068498886295" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsInstanceOfOperation" id="1206460376494">
              <node role="conceptArgument" type="jetbrains.mps.bootstrap.smodelLanguage.structure.RefConcept_Reference" id="1206460382092">
                <link role="conceptDeclaration" targetNodeId="1.1068498886296" resolveInfo="VariableReference" />
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1207060738396">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060738397">
              <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207060739945">
                <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060741183">
                  <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207060740838" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207060747646">
                    <link role="link" targetNodeId="1.1068498886295" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206460471601">
    <link role="conceptDeclaration" targetNodeId="1.1070534934090" resolveInfo="CastExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206460471602">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460471603">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460474026">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460475467">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460475137" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460477633">
              <link role="link" targetNodeId="1.1070534934092" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206460508525">
    <link role="conceptDeclaration" targetNodeId="1.1081773326031" resolveInfo="BinaryOperation" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206460508526">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206460508527">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460510810">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460511844">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460511609" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460514362">
              <link role="link" targetNodeId="1.1081773367580" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206460516489">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206460518242">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206460517991" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206460519400">
              <link role="link" targetNodeId="1.1081773367579" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206463017323">
    <link role="conceptDeclaration" targetNodeId="1.1068581242878" resolveInfo="ReturnStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206463017324">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206463017325">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206464701776">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206464703185">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206464702606" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206464729524">
              <link role="link" targetNodeId="1.1068581517676" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitRetStatement" id="1206463375273" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206463694662">
    <link role="conceptDeclaration" targetNodeId="1.1144231330558" resolveInfo="ForStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206463694663">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206463694664">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206987770209">
          <property name="value" value="todo hack" />
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206987765749">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987767799">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987767564" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987768660">
              <link role="link" targetNodeId="1.1144230900587" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitLabelStatement" id="1207063213423">
          <property name="name" value="start" />
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463701665">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463703543">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463703214" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463705185">
              <link role="link" targetNodeId="1.1144231399730" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463711757">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463713088">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463712775" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463714090">
              <link role="link" targetNodeId="1.1154032183016" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206536501766">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463706563">
            <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463707941">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463707596" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463709349">
                <link role="link" targetNodeId="1.1144231408325" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206536503347">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206463783421">
            <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.LabelPosition" id="1207063218095">
              <link role="label" targetNodeId="1207063213423" resolveInfo="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206463758605">
    <link role="conceptDeclaration" targetNodeId="1.1144226303539" resolveInfo="ForeachStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206463758606">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206463758607">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.RemarkStatement" id="1206987755705">
          <property name="value" value="todo hack" />
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463763783">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463765067">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463764769" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463772194">
              <link role="link" targetNodeId="1.1144226360166" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitWriteStatement" id="1206989539741">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206989541729">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206989541243" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206989542371">
              <link role="link" targetNodeId="1.1144230900587" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463774571">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463778090">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463776479" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463779201">
              <link role="link" targetNodeId="1.1154032183016" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206536188858">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206463791646">
            <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206463792413">
              <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463793493" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206463818823">
    <link role="conceptDeclaration" targetNodeId="1.1177666668936" resolveInfo="DoWhileStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206463818824">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206463818825">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463821248">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463822391">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463822140" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463823378">
              <link role="link" targetNodeId="1.1154032183016" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206536360279">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463825458">
            <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463826617">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463826319" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463827869">
                <link role="link" targetNodeId="1.1177666688034" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitMayBeUnreachable" id="1206536361593">
          <node role="emitStatement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206463830028">
            <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206463831139">
              <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463832203" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206463895940">
    <link role="conceptDeclaration" targetNodeId="1.1160998861373" resolveInfo="AssertStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206463895941">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206463895942">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206463898365">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206463899524">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206463899148" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206463907307">
              <link role="link" targetNodeId="1.1160998896846" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206464650340">
    <link role="conceptDeclaration" targetNodeId="1.1164991038168" resolveInfo="ThrowStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206464650341">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206464650342">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitRetStatement" id="1206464652781" />
      </node>
    </node>
  </node>
  <visible index="2" modelUID="jetbrains.mps.baseLanguage.constraints" />
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206465225322">
    <link role="conceptDeclaration" targetNodeId="1.1081855346303" resolveInfo="BreakStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206465225323">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465225324">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206465235169">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465247864">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465245032">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206465244469" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1206465246425">
                <link role="conceptMethodDeclaration" targetNodeId="2v.1206464967689" resolveInfo="getLoop" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1206465250069" />
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465235171">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206465263853">
              <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206465267496">
                <node role="relativeTo" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465268811">
                  <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206465268404" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1206465270141">
                    <link role="conceptMethodDeclaration" targetNodeId="2v.1206464967689" resolveInfo="getLoop" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1206465381083">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465381084">
              <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206465252024" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206465285674">
    <link role="conceptDeclaration" targetNodeId="1.1082113931046" resolveInfo="ContinueStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206465285675">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465285676">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206465288364">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465288365">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465288366">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206465288367" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1206465288368">
                <link role="conceptMethodDeclaration" targetNodeId="2v.1206465092861" resolveInfo="getLoop" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1206465288369" />
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465288370">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206465288371">
              <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206465292987">
                <node role="relativeTo" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206465294959">
                  <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206465294583" />
                  <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1206465296336">
                    <link role="conceptMethodDeclaration" targetNodeId="2v.1206465092861" resolveInfo="getLoop" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="ifFalseStatement" type="jetbrains.mps.baseLanguage.structure.BlockStatement" id="1206465386572">
            <node role="statements" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206465386573">
              <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206465288376" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206536652080">
    <property name="package" value="if" />
    <link role="conceptDeclaration" targetNodeId="1.1206060495898" resolveInfo="ElsifClause" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206536652081">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206536652082">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206536662948">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206536664373">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536664122" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206536667094">
              <link role="link" targetNodeId="1.1206060619838" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206536669330">
          <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206536670363">
            <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536671271" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206536674289">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206536675885">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536675619" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206536681919">
              <link role="link" targetNodeId="1.1206060644605" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206536821605">
          <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206536822576">
            <node role="relativeTo" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206536824173">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536823734" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_ConceptMethodCall" id="1206536825378">
                <link role="conceptMethodDeclaration" targetNodeId="2v.1206536734450" resolveInfo="getIfStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206536952487">
    <link role="conceptDeclaration" targetNodeId="1.1068431474542" resolveInfo="VariableDeclaration" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206536952488">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206536952489">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitWriteStatement" id="1206536954552">
          <node role="variable" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536959273" />
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206536962025">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206536963262">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206536962917" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206536979511">
              <link role="link" targetNodeId="1.1068431790190" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206537015271">
    <link role="conceptDeclaration" targetNodeId="1.1163668896201" resolveInfo="TernaryOperatorExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206537015272">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206537015273">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206537021102">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206537022370">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537022057" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206537024756">
              <link role="link" targetNodeId="1.1163668914799" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitIfJumpStatement" id="1206537031480">
          <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.BeforePosition" id="1206563644181">
            <node role="relativeTo" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206563647469">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206563646750" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206563655037">
                <link role="link" targetNodeId="1.1163668934364" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206537043333">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206537044695">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537044428" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206537046634">
              <link role="link" targetNodeId="1.1163668922816" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitJumpStatement" id="1206537049402">
          <node role="jumpTo" type="jetbrains.mps.bootstrap.dataFlow.structure.AfterPosition" id="1206537050466">
            <node role="relativeTo" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537051328" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206537052299">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206537053614">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537053363" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206537054616">
              <link role="link" targetNodeId="1.1163668934364" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206537062960">
    <link role="conceptDeclaration" targetNodeId="1.1170075670744" resolveInfo="SynchronizedStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206537062961">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206537062962">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206537064620">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206537066826">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537066606" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206537068031">
              <link role="link" targetNodeId="1.1170075728144" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206537069939">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206537070973">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206537070753" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206537075084">
              <link role="link" targetNodeId="1.1170075736412" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206542922860">
    <link role="conceptDeclaration" targetNodeId="1.1153952380246" resolveInfo="TryStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206542922861">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206542922862">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitTryFinallyStatement" id="1206957590308">
          <node role="tryPart" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206957590309">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206957593483">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206957593484">
                <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206957593485" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206957593486">
                  <link role="link" targetNodeId="1.1153952416686" />
                </node>
              </node>
            </node>
          </node>
          <node role="finallyPart" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206957590310">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206957595628">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206957595629">
                <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206957595630" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206957595631">
                  <link role="link" targetNodeId="1.1153952429843" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206542990054">
    <link role="conceptDeclaration" targetNodeId="1.1164879751025" resolveInfo="TryCatchStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206542990055">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206542990056">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206542992135">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206542993154">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206542992887" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206543009840">
              <link role="link" targetNodeId="1.1164879758292" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206543144792">
    <link role="conceptDeclaration" targetNodeId="1.1079359253375" resolveInfo="ParenthesizedExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206543144793">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206543144794">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206543147046">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206543148220">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206543147985" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206543151863">
              <link role="link" targetNodeId="1.1079359253376" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206543200622">
    <property name="package" value="dotExpression" />
    <link role="conceptDeclaration" targetNodeId="1.1197027756228" resolveInfo="DotExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206543200623">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206543200624">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206543202625">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206543203956">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206543203674" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206543220346">
              <link role="link" targetNodeId="1.1197027771414" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206543222067">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206543223148">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206543222928" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206543224618">
              <link role="link" targetNodeId="1.1197027833540" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206543641005">
    <property name="package" value="method" />
    <link role="conceptDeclaration" targetNodeId="1.1204053956946" resolveInfo="IMethodCall" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206543641006">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206543641007">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1206543643055">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206543655005">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206543649204" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206543658055">
              <link role="link" targetNodeId="1.1068499141038" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206543643057">
            <property name="name" value="arg" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206543644310">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206543643059">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206543659213">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1206543660403">
                <link role="variableDeclaration" targetNodeId="1206543643057" resolveInfo="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206544616802">
    <link role="conceptDeclaration" targetNodeId="1.1173175405605" resolveInfo="ArrayAccessExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206544616803">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206544616804">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206544621945">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206544623839">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206544623572" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206544626872">
              <link role="link" targetNodeId="1.1173175577737" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206544629749">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206544631190">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206544630845" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206544632786">
              <link role="link" targetNodeId="1.1173175590490" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206544649897">
    <link role="conceptDeclaration" targetNodeId="1.1188220165133" resolveInfo="ArrayLiteral" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206544649898">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206544649899">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1206544652759">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206544657034">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206544656750" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1206544657990">
              <link role="link" targetNodeId="1.1188220173759" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1206544652761">
            <property name="name" value="item" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1206544653670" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206544652763">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206544659289">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207048030563">
                <link role="variableDeclaration" targetNodeId="1206544652761" resolveInfo="item" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206544689883">
    <link role="conceptDeclaration" targetNodeId="1.1184952934362" resolveInfo="DimensionExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206544689884">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206544689885">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206544722702">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206544724127">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206544723923" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206544724895">
              <link role="link" targetNodeId="1.1184953288404" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206544778849">
    <link role="conceptDeclaration" targetNodeId="1.1081256982272" resolveInfo="InstanceOfExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206544778850">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206544778851">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206544781508">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206544783090">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206544782870" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206544784451">
              <link role="link" targetNodeId="1.1081256993304" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206987106933">
    <link role="conceptDeclaration" targetNodeId="1.1068581242864" resolveInfo="LocalVariableDeclarationStatement" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206987106934">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206987106935">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206987122881">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987123977">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987123711" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987124714">
              <link role="link" targetNodeId="1.1068581242865" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206987156907">
    <link role="conceptDeclaration" targetNodeId="1.1068581242863" resolveInfo="LocalVariableDeclaration" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206987156908">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206987156909">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitNopStatement" id="1206990208534" />
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1206987165525">
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987168157">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987166544">
              <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987166247" />
              <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987167375">
                <link role="link" targetNodeId="1.1068431790190" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.Node_IsNotNullOperation" id="1206987169299" />
          </node>
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206987165527">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206987174847">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987176147">
                <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987175865" />
                <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987176759">
                  <link role="link" targetNodeId="1.1068431790190" />
                </node>
              </node>
            </node>
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitWriteStatement" id="1206987180651">
              <node role="variable" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987184622" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1206987602762">
    <property name="package" value="method" />
    <link role="conceptDeclaration" targetNodeId="1.1068580123132" resolveInfo="BaseMethodDeclaration" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1206987602763">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1206987602764">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1206987605109">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1206987606487">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1206987606267" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1206987607724">
              <link role="link" targetNodeId="1.1068580123135" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207060130328">
    <property name="package" value="dotExpression_old" />
    <link role="conceptDeclaration" targetNodeId="1.1173176849460" resolveInfo="ArrayLengthExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207060130329">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060130330">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207060141020">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060142320">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207060142069" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207060144462">
              <link role="link" targetNodeId="1.1173176867072" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207060493473">
    <property name="package" value="staticMethod" />
    <link role="conceptDeclaration" targetNodeId="1.1081236700937" resolveInfo="StaticMethodCall" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207060493474">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060493475">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1207060495936">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060508111">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207060502179" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1207060509692">
              <link role="link" targetNodeId="1.1068499141038" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207060495938">
            <property name="name" value="arg" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207060497348">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060495940">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207060514928">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207060516164">
                <link role="variableDeclaration" targetNodeId="1207060495938" resolveInfo="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207060617578">
    <property name="package" value="method" />
    <link role="conceptDeclaration" targetNodeId="1.1068499141036" resolveInfo="BaseMethodCall" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207060617579">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060617580">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1207060619402">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060631091">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207060625331" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1207060631922">
              <link role="link" targetNodeId="1.1068499141038" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207060619404">
            <property name="name" value="arg" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207060620157">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060619406">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207060633502">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207060634786">
                <link role="variableDeclaration" targetNodeId="1207060619404" resolveInfo="arg" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207061421586">
    <property name="package" value="conceptFunction" />
    <link role="conceptDeclaration" targetNodeId="1.1137021947720" resolveInfo="ConceptFunction" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207061421587">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207061421588" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207075974495">
    <link role="conceptDeclaration" targetNodeId="1.1081516740877" resolveInfo="NotExpression" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207075974496">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207075974497">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207075977498">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207075979126">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207075978766" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207075980112">
              <link role="link" targetNodeId="1.1081516765348" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207078525107">
    <property name="package" value="dotExpression_old" />
    <link role="conceptDeclaration" targetNodeId="1.1068580123163" resolveInfo="InstanceMethodCall" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207078525108">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207078525109">
        <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207078527539">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207078529198">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207078528853" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkAccess" id="1207078530528">
              <link role="link" targetNodeId="1.1068580123164" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1207078533030">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207078533031">
            <node role="statement" type="jetbrains.mps.bootstrap.dataFlow.structure.EmitCodeForStatement" id="1207078542062">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207078543126">
                <link role="variableDeclaration" targetNodeId="1207078533034" resolveInfo="arg" />
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207078538511">
            <node role="operand" type="jetbrains.mps.bootstrap.dataFlow.structure.NodeParameter" id="1207078538181" />
            <node role="operation" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SLinkListAccess" id="1207078540780">
              <link role="link" targetNodeId="1.1068499141038" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207078533034">
            <property name="name" value="arg" />
            <node role="type" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1207078534303">
              <link role="concept" targetNodeId="1.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.dataFlow.structure.DataFlowBuilderDeclaration" id="1207125045369">
    <link role="conceptDeclaration" targetNodeId="1.1152728232947" resolveInfo="Closure" />
    <node role="builderBlock" type="jetbrains.mps.bootstrap.dataFlow.structure.BuilderBlock" id="1207125045370">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207125045371" />
    </node>
  </node>
</model>

