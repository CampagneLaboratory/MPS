<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:f8e2b09f-b9d8-4076-a472-4264b3fb6a47(jetbrains.mps.baseLanguage.regexp.dataFlow)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="7fa12e9c-b949-4976-b4fa-19accbc320b4(jetbrains.mps.lang.dataFlow)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="8" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.baseLanguage.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.lang.smodel.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590377(jetbrains.mps.lang.dataFlow.constraints)" version="4" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902db(jetbrains.mps.baseLanguage.blTypes.constraints)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590515(jetbrains.mps.baseLanguage.regexp.constraints)" version="3" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.collections.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903fe(jetbrains.mps.baseLanguage.strings.constraints)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)" version="17" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959033d(jetbrains.mps.lang.annotations.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959037d(jetbrains.mps.lang.dataFlow.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="0" />
  <devkit namespace="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590518(jetbrains.mps.baseLanguage.regexp.structure)" version="0" />
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222616427165">
    <link role="conceptDeclaration" targetNodeId="1.1174565027678" resolveInfo="MatchVariableReference" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222616427166">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222616427167">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" id="1222879118110">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222879121613">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222879120159" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222879130079">
              <link role="link" targetNodeId="1.1174565035929" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222878765427">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174564062919" resolveInfo="MatchParensRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222878765428">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222878765429">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitWriteStatement" id="1222878915218">
          <node role="variable" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222878919423" />
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222878928284">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222878933381">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222878932302" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222878934431">
              <link role="link" targetNodeId="1.1174564160889" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222878945495">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174482743037" resolveInfo="Regexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222878945496">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222878945497">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitNopStatement" id="1222878948576" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222879245754">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174909099093" resolveInfo="MatchVariableReferenceRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222879245755">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222879245756">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitReadStatement" id="1222879249100">
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222879252838">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222879251930" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222879254247">
              <link role="link" targetNodeId="1.1174909113141" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222880783870">
    <property name="package" value="Statements" />
    <link role="conceptDeclaration" targetNodeId="1.1174512414484" resolveInfo="MatchRegexpStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222880783871">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222880783872">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222880790732">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222880802595">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222880801250" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222880803801">
              <link role="link" targetNodeId="1.1174512569438" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222881621263">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222881624031">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222881622858" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222881624831">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitLabelStatement" id="1222881643896">
          <property name="name" value="begin" />
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222881658867">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222881661666">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222881660697" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222881662998">
              <link role="link" targetNodeId="1.1174512427594" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitIfJumpStatement" id="1222881667640">
          <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.LabelPosition" id="1222881694377">
            <link role="label" targetNodeId="1222881643896" resolveInfo="begin" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222881745113">
    <property name="package" value="Statements" />
    <link role="conceptDeclaration" targetNodeId="1.1175169009571" resolveInfo="FindMatchStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222881745114">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222881745115">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222881746241">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222881746242">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222881746243" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222881752881">
              <link role="link" targetNodeId="1.1175169023932" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222881746245">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222881746246">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222881746247" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222881746248">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitLabelStatement" id="1222881746249">
          <property name="name" value="begin" />
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222881746250">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222881746251">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222881746252" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222881754461">
              <link role="link" targetNodeId="1.1175169154112" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitIfJumpStatement" id="1222881746254">
          <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.LabelPosition" id="1222881746255">
            <link role="label" targetNodeId="1222881746249" resolveInfo="begin" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1222881765852">
    <property name="package" value="Statements" />
    <link role="conceptDeclaration" targetNodeId="1.1175154849582" resolveInfo="ForEachMatchStatement" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1222881765853">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1222881765854">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222882361050">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222882368867">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222882367850" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222882369620">
              <link role="link" targetNodeId="1.1175154880428" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222882858809">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222882864781">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222882863671" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222882866550">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitLabelStatement" id="1222882383625">
          <property name="name" value="condition" />
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitIfJumpStatement" id="1222882396959">
          <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.AfterPosition" id="1222882400947">
            <node role="relativeTo" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222882402340" />
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1222882635918">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1222882638249">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1222882637357" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1222882639549">
              <link role="link" targetNodeId="1.1175154946790" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitMayBeUnreachable" id="1222882685419">
          <node role="emitStatement" type="jetbrains.mps.lang.dataFlow.structure.EmitJumpStatement" id="1222882660146">
            <node role="jumpTo" type="jetbrains.mps.lang.dataFlow.structure.LabelPosition" id="1222882670651">
              <link role="label" targetNodeId="1222882383625" resolveInfo="condition" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223044979251">
    <property name="package" value="Operations" />
    <link role="conceptDeclaration" targetNodeId="1.1222260469397" resolveInfo="MatchRegexpOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223044979252">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223044979253">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223044982771">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223044984243">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223044984148" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223044990201">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223045071367">
    <link role="conceptDeclaration" targetNodeId="1.1174510540317" resolveInfo="InlineRegexpExpression" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223045071368">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223045071369">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223045077527">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223045078687">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223045078608" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223045082968">
              <link role="link" targetNodeId="1.1174510571016" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223045512026">
    <property name="package" value="Operations" />
    <link role="conceptDeclaration" targetNodeId="1.1222260556146" resolveInfo="ReplaceWithRegexpOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223045512027">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223045512028">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223045515326">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223045523958">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223045517453" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223045526680">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223045528760">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223045531404">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223045530403" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223045533704">
              <link role="link" targetNodeId="1.1222261033031" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223045543003">
    <property name="package" value="Operations" />
    <link role="conceptDeclaration" targetNodeId="1.1222256539755" resolveInfo="SplitOperation" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223045543004">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223045543005">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223045546115">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223046061316">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223046060471" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223046062975">
              <link role="link" targetNodeId="1.1174653387388" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223046603457">
    <link role="conceptDeclaration" targetNodeId="1.1174662351725" resolveInfo="Regexps" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223046603458">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223046603459">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1223047840936">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047840937">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047870258">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1223047872150">
                <link role="variableDeclaration" targetNodeId="1223047840940" resolveInfo="regexp" />
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047864515">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047863559" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1223047865551">
              <link role="link" targetNodeId="1.1174662369010" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1223047840940">
            <property name="name" value="regexp" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1223047848866">
              <link role="concept" targetNodeId="1.1174483125581" resolveInfo="RegexpDeclaration" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223046630436">
    <link role="conceptDeclaration" targetNodeId="1.1174919147781" resolveInfo="RegexpExpression" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223046630437">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223046630438">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitNopStatement" id="1223046634673" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223046876718">
    <link role="conceptDeclaration" targetNodeId="1.1174483125581" resolveInfo="RegexpDeclaration" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223046876719">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223046876720">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223046881550">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223046884240">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223046883364" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223046886103">
              <link role="link" targetNodeId="1.1174483133849" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047350586">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174485235885" resolveInfo="UnaryRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047350587">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047350588">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047353276">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047356232">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047355356" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047357376">
              <link role="link" targetNodeId="1.1174485243418" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047413847">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174554186090" resolveInfo="SymbolClassRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047413848">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047413849">
        <node role="statement" type="jetbrains.mps.baseLanguage.structure.ForeachStatement" id="1223047897807">
          <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047897808">
            <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047417241">
              <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.LocalVariableReference" id="1223047931131">
                <link role="variableDeclaration" targetNodeId="1223047897811" resolveInfo="part" />
              </node>
            </node>
          </node>
          <node role="iterable" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047915886">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047913648" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkListAccess" id="1223047919066">
              <link role="link" targetNodeId="1.1174557628217" />
            </node>
          </node>
          <node role="variable" type="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" id="1223047897811">
            <property name="name" value="part" />
            <node role="type" type="jetbrains.mps.lang.smodel.structure.SNodeType" id="1223047900143">
              <link role="concept" targetNodeId="1.1174557861378" resolveInfo="SymbolClassPart" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047488830">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174662605354" resolveInfo="RegexpDeclarationReferenceRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047488831">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047488832">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047537982">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047540313">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047539656" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047541363">
              <link role="link" targetNodeId="1.1174662628918" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047583396">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174906544517" resolveInfo="LookRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047583397">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047583398">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047588055">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047590355">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047589729" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047591343">
              <link role="link" targetNodeId="1.1174906566584" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047610860">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174491169200" resolveInfo="ParensRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047610861">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047610862">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047613347">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047615350">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047614677" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047623181">
              <link role="link" targetNodeId="1.1174491174779" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.lang.dataFlow.structure.DataFlowBuilderDeclaration" id="1223047727950">
    <property name="package" value="Regexps" />
    <link role="conceptDeclaration" targetNodeId="1.1174485167097" resolveInfo="BinaryRegexp" />
    <node role="builderBlock" type="jetbrains.mps.lang.dataFlow.structure.BuilderBlock" id="1223047727951">
      <node role="body" type="jetbrains.mps.baseLanguage.structure.StatementList" id="1223047727952">
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047733188">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047735159">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047734502" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047736162">
              <link role="link" targetNodeId="1.1174485176897" />
            </node>
          </node>
        </node>
        <node role="statement" type="jetbrains.mps.lang.dataFlow.structure.EmitCodeForStatement" id="1223047738086">
          <node role="codeFor" type="jetbrains.mps.baseLanguage.structure.DotExpression" id="1223047740027">
            <node role="operand" type="jetbrains.mps.lang.dataFlow.structure.NodeParameter" id="1223047739463" />
            <node role="operation" type="jetbrains.mps.lang.smodel.structure.SLinkAccess" id="1223047740983">
              <link role="link" targetNodeId="1.1174485181039" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

