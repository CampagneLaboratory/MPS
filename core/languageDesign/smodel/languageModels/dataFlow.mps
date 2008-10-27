<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895902fc(jetbrains.mps.lang.smodel.dataFlow)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7fa12e9c-b949-4976-b4fa-19accbc320b4(jetbrains.mps.lang.dataFlow)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590377(jetbrains.mps.lang.dataFlow.constraints)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" version="0" />
  <maxImportIndex value="7" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="8" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <import index="6" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <import index="7" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1210626395131">
    <property name="package" value="operation" />
    <link role="conceptDeclaration" targetNodeId="1.1138411891628" resolveInfo="SNodeOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1210626395132">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210626395133">
        <node role="statement" type="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" id="1210626400305">
          <node role="variable" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" id="1210626400306">
            <property name="name" value="expr" />
          </node>
          <node role="inputSequence" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1210626406328">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1210626404967" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" id="1210626411645">
              <node role="parameter" type="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" id="1210626411646">
                <node role="conceptArgument" type="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" id="1210626416977">
                  <link role="conceptDeclaration" targetNodeId="2.1068431790191" resolveInfo="Expression" />
                </node>
              </node>
            </node>
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1210626400308">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1210626429651">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" id="1210626432153">
                <link role="variable" targetNodeId="1210626400306" resolveInfo="expr" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1211992491528">
    <link role="conceptDeclaration" targetNodeId="1.1140137987495" resolveInfo="SNodeTypeCastExpression" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1211992491529">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1211992491530">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1211992496031">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1211992504644">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1211992500737" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1211992507741">
              <link role="link" targetNodeId="1.1140138123956" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1214495912999">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208782992286" resolveInfo="BaseExecuteCommandStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1214495913000">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1214495913001" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1216646466443">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208899702690" resolveInfo="CommandClosureLiteral" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1216646466444">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216646466445">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1216646468587">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1216646468588">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" id="1216646468589">
              <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1216646468590">
                <link role="variableDeclaration" targetNodeId="1216646468591" resolveInfo="var" />
              </node>
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1216646468591">
            <property name="name" value="var" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1216646468592">
              <link role="concept" targetNodeId="2.1068431474542" resolveInfo="VariableDeclaration" />
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216646468593">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1216646468594">
              <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1216646468596" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1216646468598">
                <link role="link" targetNodeId="7.1199569916463" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" id="1216646468599">
              <link role="conceptMethodDeclaration" targetNodeId="6.1214501165480" resolveInfo="getExternalVariablesDeclarations" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1220278792529">
    <link role="conceptDeclaration" targetNodeId="1.1145404486709" resolveInfo="SemanticDowncastExpression" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1220278792530">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1220278792531">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1220278795126">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1220278796425">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1220278796206" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1220278806442">
              <link role="link" targetNodeId="1.1145404616321" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223984264068">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1208783319895" resolveInfo="ExecuteLightweightCommandStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223984264069">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223984264070">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223984266586">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223984266587">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223984266588">
              <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223984266589" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223984266590">
                <link role="link" targetNodeId="1.1208941703859" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223984266591">
              <link role="link" targetNodeId="7.1199569916463" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1225118421176">
    <property name="package" value="command" />
    <link role="conceptDeclaration" targetNodeId="1.1212421857420" resolveInfo="ExecuteWriteActionStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1225118421177">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1225118421178">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1225118426679">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1225118441045">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1225118429900">
              <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1225118429446" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1225118440060">
                <link role="link" targetNodeId="1.1208941703859" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1225118445267">
              <link role="link" targetNodeId="7.1199569916463" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

