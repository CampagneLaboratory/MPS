<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590329(jetbrains.mps.baseLanguage.collections.dataFlow)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="7fa12e9c-b949-4976-b4fa-19accbc320b4(jetbrains.mps.lang.dataFlow)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590377(jetbrains.mps.lang.dataFlow.constraints)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590402(jetbrains.mps.baseLanguage.strings.structure)" version="9" />
  <maxImportIndex value="3" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="4" />
  <import index="2" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <import index="3" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207060282352">
    <link role="conceptDeclaration" targetNodeId="1.1153943597977" resolveInfo="ForEachStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207060282353">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207060282354">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207060299994">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060301247">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207060301012" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207060324597">
              <link role="link" targetNodeId="1.1153944424730" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitLabelStatement" id="1207323166495">
          <property name="name" value="condition" />
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitIfJumpStatement" id="1207323191691">
          <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.AfterPosition" id="1207323193584">
            <node role="relativeTo" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323194757" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitWriteStatement" id="1207323178465">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323181375">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323180983" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323182876">
              <link role="link" targetNodeId="1.1153944400369" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207060341794">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207060346797">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207060346546" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207060347377">
              <link role="link" targetNodeId="2.1154032183016" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitMayBeUnreachable" id="1207323226795">
          <node role="emitStatement" type="jetbrains.mps.lang.dataFlow.structure.EmitJumpStatement" id="1207323226796">
            <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.LabelPosition" id="1207323226797">
              <link role="label" targetNodeId="1207323166495" resolveInfo="condition" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207061041902">
    <link role="conceptDeclaration" targetNodeId="1.1153760737019" resolveInfo="WhereOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207061041903">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207061041904">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207061043639">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207061044970">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207061044688" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207061046285">
              <link role="link" targetNodeId="1.1153760925150" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207062862628">
    <link role="conceptDeclaration" targetNodeId="1.1160666733551" resolveInfo="AddAllElementsOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207062862629">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207062862630">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207062865350">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207062866540">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207062866289" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207062870198">
              <link role="link" targetNodeId="1.1160666822012" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207074632097">
    <property name="package" value="mapType" />
    <link role="conceptDeclaration" targetNodeId="1.1197932370469" resolveInfo="MapElement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207074632098">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207074632099">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207074635460">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207074636760">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207074636399" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207074638520">
              <link role="link" targetNodeId="1.1197932505799" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207074640225">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207074641384">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207074641149" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207075089598">
              <link role="link" targetNodeId="1.1197932525128" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207076989596">
    <link role="conceptDeclaration" targetNodeId="1.1172254888721" resolveInfo="ContainsOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207076989597">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207076989598">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207076994724">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207076996195">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207076995835" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207077006885">
              <link role="link" targetNodeId="1.1172256416782" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207317001867">
    <link role="conceptDeclaration" targetNodeId="1.1171391069720" resolveInfo="GetIndexOfOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207317001868">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207317001869">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207317005683">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207317008405">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207317006904" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207317024313">
              <link role="link" targetNodeId="1.1171391518575" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207322983535">
    <link role="conceptDeclaration" targetNodeId="1.1176906603202" resolveInfo="BinaryOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207322983536">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207322983537">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207322985991">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207322989182">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207322988368" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207322989965">
              <link role="link" targetNodeId="1.1176906787974" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323271095">
    <link role="conceptDeclaration" targetNodeId="1.1153944233411" resolveInfo="ForEachVariableReference" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323271096">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323271097">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" id="1207323273739">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323275726">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323274866" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323280400">
              <link role="link" targetNodeId="1.1153944258490" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323343604">
    <link role="conceptDeclaration" targetNodeId="1.1160600644654" resolveInfo="ListCreatorWithInit" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323343605">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323343606">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1207323347622">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323358989">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323358128" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1207323374538">
              <link role="link" targetNodeId="1.1160600765292" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1207323347624">
            <property name="name" value="expression" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1207323351690" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323347626">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323393758">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1207323398775">
                <link role="variableDeclaration" targetNodeId="1207323347624" resolveInfo="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323670544">
    <link role="conceptDeclaration" targetNodeId="1.1172667724288" resolveInfo="PageOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323670545">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323670546">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323673500">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323679612">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323678846" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323680271">
              <link role="link" targetNodeId="1.1172667737868" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323682210">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323684526">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323683587" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323685200">
              <link role="link" targetNodeId="1.1172667748353" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323745154">
    <link role="conceptDeclaration" targetNodeId="1.1173946412755" resolveInfo="RemoveAllElementsOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323745155">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323745156">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323758787">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323762712">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323761836" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323764339">
              <link role="link" targetNodeId="1.1173946412756" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323786137">
    <link role="conceptDeclaration" targetNodeId="1.1167380149909" resolveInfo="RemoveElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323786138">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323786139">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323788296">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323790471">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323789736" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323793145">
              <link role="link" targetNodeId="1.1167380149910" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323906741">
    <link role="conceptDeclaration" targetNodeId="1.1172650591544" resolveInfo="SkipOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323906742">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323906743">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323909978">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323912091">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323911184" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323913109">
              <link role="link" targetNodeId="1.1172658456740" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207323967032">
    <link role="conceptDeclaration" targetNodeId="1.1172664342967" resolveInfo="TakeOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207323967033">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207323967034">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207323970113">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207323977929">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207323977116" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207323979228">
              <link role="link" targetNodeId="1.1172664372046" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207324044355">
    <link role="conceptDeclaration" targetNodeId="1.1160612413312" resolveInfo="AddElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207324044356">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207324044357">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207324046624">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207324049299">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207324048282" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207324049926">
              <link role="link" targetNodeId="1.1160612519549" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1207324132959">
    <link role="conceptDeclaration" targetNodeId="1.1162934736510" resolveInfo="GetElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1207324132960">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1207324132961">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1207324135744">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1207324138325">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1207324137511" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1207324139030">
              <link role="link" targetNodeId="1.1162934736511" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1225200397608">
    <property name="package" value="internal" />
    <link role="conceptDeclaration" targetNodeId="1.1204796164442" resolveInfo="InternalSequenceOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1225200397609">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1225200397610">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1225200401470">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1225200423302">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1225200422566" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1225200424867">
              <link role="link" targetNodeId="1.1204796294226" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1226516371416">
    <link role="conceptDeclaration" targetNodeId="1.1226516258405" resolveInfo="HashSetCreator" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1226516371417">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226516371418">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1226516372634">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1226516372635">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1226516372636" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1226516376279">
              <link role="link" targetNodeId="1.1226516282446" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1226516372638">
            <property name="name" value="expression" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1226516372639" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226516372640">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1226516372641">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1226516372642">
                <link role="variableDeclaration" targetNodeId="1226516372638" resolveInfo="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1226567762875">
    <property name="package" value="set" />
    <link role="conceptDeclaration" targetNodeId="1.1226566855640" resolveInfo="AddSetElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1226567762876">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226567762877">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1226567767237">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1226567768458">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1226567768421" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1226567770016">
              <link role="link" targetNodeId="1.1226567214363" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1226591528105">
    <property name="package" value="set" />
    <link role="conceptDeclaration" targetNodeId="1.1226591481394" resolveInfo="RemoveSetElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1226591528106">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226591528107">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1226591529876">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1226591529877">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1226591529878" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1226591531596">
              <link role="link" targetNodeId="1.1226591501988" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1226592668185">
    <property name="package" value="set" />
    <link role="conceptDeclaration" targetNodeId="1.1226592602759" resolveInfo="AddAllSetElementsOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1226592668186">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226592668187">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1226592670035">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1226592670036">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1226592670037" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1226592672890">
              <link role="link" targetNodeId="1.1226592623721" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1226594122909">
    <property name="package" value="set" />
    <link role="conceptDeclaration" targetNodeId="1.1226593880804" resolveInfo="RemoveAllSetElementsOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1226594122910">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1226594122911">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1226594124720">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1226594124721">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1226594124722" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1226594129094">
              <link role="link" targetNodeId="1.1226593903142" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1227008964394">
    <property name="package" value="list" />
    <link role="conceptDeclaration" targetNodeId="1.1227008614712" resolveInfo="LinkedListCreator" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1227008964395">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227008964396">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1227008965761">
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1227008965762">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1227008965763" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1227008969156">
              <link role="link" targetNodeId="1.1227008641547" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1227008965765">
            <property name="name" value="expression" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1227008965766" />
          </node>
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227008965767">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1227008965768">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1227008965769">
                <link role="variableDeclaration" targetNodeId="1227008965765" resolveInfo="expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1227022509407">
    <property name="package" value="list" />
    <link role="conceptDeclaration" targetNodeId="1.1227022196108" resolveInfo="RemoveAtElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1227022509408">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227022509409">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1227022512167">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1227022514017">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1227022513984" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1227022516594">
              <link role="link" targetNodeId="1.1227022274197" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1227022729874">
    <property name="package" value="list" />
    <link role="conceptDeclaration" targetNodeId="1.1227022179634" resolveInfo="AddLastElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1227022729875">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227022729876">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1227022732230">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1227022733965">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1227022733936" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1227022735252">
              <link role="link" targetNodeId="1.1227022698412" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1227022740613">
    <property name="package" value="list" />
    <link role="conceptDeclaration" targetNodeId="1.1227022159410" resolveInfo="AddFirstElementOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1227022740614">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1227022740615">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1227022742593">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1227022743952">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1227022743923" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1227022744543">
              <link role="link" targetNodeId="1.1227022622978" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1228409375651">
    <link role="conceptDeclaration" targetNodeId="1.1228228912534" resolveInfo="DowncastExpression" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1228409375652">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1228409375653">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1228409378599">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1228409380920">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1228409380848" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1228409383903">
              <link role="link" targetNodeId="1.1228228959951" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1228857986522">
    <link role="conceptDeclaration" targetNodeId="1.1224414427926" resolveInfo="SequenceCreator" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1228857986523">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1228857986524">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.IfStatement" id="1228858053855">
          <node role="ifTrue" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1228858053856">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1228858041912">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1228858044699">
                <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1228858044575" />
                <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1228858045594">
                  <link role="link" targetNodeId="1.1224414466839" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1228858060072">
            <node role="operand" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1228858054810">
              <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1228858054748" />
              <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1228858059546">
                <link role="link" targetNodeId="1.1224414466839" />
              </node>
            </node>
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" id="1228858060978" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

