<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590385(jetbrains.mps.lang.test.typesystem)">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tp5g" modelUID="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" version="15" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" />
  <import index="tpeh" modelUID="r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="9a8" modelUID="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" version="-1" />
  <import index="srng" modelUID="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" version="-1" />
  <import index="vsqj" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" version="-1" />
  <import index="tpe5" modelUID="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" version="-1" />
  <import index="ec5l" modelUID="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" version="-1" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="tpe3" modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1210676511811" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_TestNodeReference" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1210676511812" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1210677002368" nodeInfo="nn">
        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1210677002369" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="concept" />
          <node role="type" roleId="tpee.5680397130376446158" type="tp25.SConceptType" typeId="tp25.1172420572800" id="1210677002370" nodeInfo="in" />
          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1210677027012" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1210677027013" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1210677027014" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1210677027015" nodeInfo="nn">
                  <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1210676511813" resolveInfo="nodeToCheck" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1210677027016" nodeInfo="nn">
                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tp5g.1210674534086" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="1210677027017" nodeInfo="nn" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetConceptOperation" typeId="tp25.1172323065820" id="1210677027018" nodeInfo="nn" />
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1210676536754" nodeInfo="nn">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1210676540289" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1210676830240" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1210676924332" nodeInfo="in">
              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.ReferenceAntiquotation" typeId="tp3r.1196350785117" id="1210676927552" nodeInfo="ng">
                <property name="linkRole" nameId="tpck.1757699476691236116" value="concept" />
                <node role="expression" roleId="tp3r.1196350785111" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1210677031238" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1210677002369" resolveInfo="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1210676536757" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1210676530830" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1210676533831" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1210676511813" resolveInfo="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1210676511813" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="nodeToCheck" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1210674524691" resolveInfo="TestNodeReference" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1211980347427" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_AssertMatch" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1211980347428" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="1211980450434" nodeInfo="nn">
        <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="1211980450435" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="node" />
        </node>
        <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1211980457534" nodeInfo="nn">
          <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1211980456079" nodeInfo="nn">
            <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1211980347429" resolveInfo="nodeToCheck" />
          </node>
          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="1211980458070" nodeInfo="nn">
            <link role="link" roleId="tp25.1138056546658" targetNodeId="tp5g.1211979305365" />
          </node>
        </node>
        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1211980450437" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="1211982433132" nodeInfo="nn">
            <property name="inequationPriority" nameId="tpd4.1212056105818" value="0" />
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1211982433133" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1211982433134" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1211982433135" nodeInfo="nn">
                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="1211980450435" resolveInfo="node" />
                </node>
              </node>
            </node>
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1211982433136" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1211982433137" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1211982433138" nodeInfo="in" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="1211981351109" nodeInfo="nn">
        <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="1211981351110" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="node" />
        </node>
        <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1211981351111" nodeInfo="nn">
          <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1211981351112" nodeInfo="nn">
            <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1211980347429" resolveInfo="nodeToCheck" />
          </node>
          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="1211981362625" nodeInfo="nn">
            <link role="link" roleId="tp25.1138056546658" targetNodeId="tp5g.1211979322383" />
          </node>
        </node>
        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1211981351114" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="1211982429078" nodeInfo="nn">
            <property name="inequationPriority" nameId="tpd4.1212056105818" value="0" />
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1211982429079" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1211982429080" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="1211982429081" nodeInfo="nn">
                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="1211981351110" resolveInfo="node" />
                </node>
              </node>
            </node>
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1211982429082" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1211982429083" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1211982429084" nodeInfo="in" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.MultipleForeachLoop" typeId="tpd4.1176547808367" id="1214922451305" nodeInfo="nn">
        <node role="loopVariable" roleId="tpd4.1176547942567" type="tpd4.MultipleForeachLoopVariable" typeId="tpd4.1176547843728" id="1214922451306" nodeInfo="ng">
          <node role="variable" roleId="tpd4.1176547881822" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1214922451307" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="nodeBefore" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1214922459124" nodeInfo="in">
              <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
          <node role="iterable" roleId="tpd4.1176547896901" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1214922612583" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1214922610410" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1211980347429" resolveInfo="nodeToCheck" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="1214922613185" nodeInfo="nn">
              <link role="link" roleId="tp25.1138056546658" targetNodeId="tp5g.1211979305365" />
            </node>
          </node>
        </node>
        <node role="loopVariable" roleId="tpd4.1176547942567" type="tpd4.MultipleForeachLoopVariable" typeId="tpd4.1176547843728" id="1214922621327" nodeInfo="ng">
          <node role="variable" roleId="tpd4.1176547881822" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1214922621328" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="nodeAfter" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1214922623753" nodeInfo="in">
              <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
            </node>
          </node>
          <node role="iterable" roleId="tpd4.1176547896901" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1214922641475" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1214922638787" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1211980347429" resolveInfo="nodeToCheck" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="1214922642453" nodeInfo="nn">
              <link role="link" roleId="tp25.1138056546658" targetNodeId="tp5g.1211979322383" />
            </node>
          </node>
        </node>
        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="1214922451310" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1214922658994" nodeInfo="nn">
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1214922660623" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1214922660624" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1214922665814" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1214922621328" resolveInfo="nodeAfter" />
                </node>
              </node>
            </node>
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1214922658997" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1214922647143" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="1214922649426" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1214922451307" resolveInfo="nodeBefore" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1211980347429" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="nodeToCheck" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1211979288880" resolveInfo="AssertMatch" />
    </node>
  </root>
  <root type="tpd4.NonTypesystemRule" typeId="tpd4.1195214364922" id="1217855694003" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="CheckTestMethodDataflow" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1217855694004" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1223643137089" nodeInfo="nn">
        <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8249991444799099534" nodeInfo="nn">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpeh.8249991444799099355" resolveInfo="checkDataFlow" />
          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="tpeh.1223640197349" resolveInfo="DataFlowUtil" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8249991444799099535" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="8249991444799099536" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1217855714267" resolveInfo="nodesTestMethod" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="8249991444799099537" nodeInfo="nn">
              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068580123135" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1217855714267" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="nodesTestMethod" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1216913689992" resolveInfo="NodesTestMethod" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1225984593084" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_EditorExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="expression" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1225984593085" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1225984944721" nodeInfo="nn">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1225984949366" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1225985126098" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4576065551632684279" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="srng.~Editor" resolveInfo="Editor" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1225984944724" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1225984938031" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1225984942330" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1225984593086" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1225984593086" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="expression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1225983109083" resolveInfo="EditorExpression" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1228148619872" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_ModelExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="expression" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1228148619873" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateStrongLessThanInequationStatement" typeId="tpd4.1179832490862" id="1228148726945" nodeInfo="nn">
        <property name="inequationPriority" nameId="tpd4.1212056105818" value="0" />
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1228148731339" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1228148731340" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1228148784687" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="ec5l.~SModel" resolveInfo="SModel" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1228148726948" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1228148720926" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1228148723459" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1228148619874" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1228148619874" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="expression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1225469856668" resolveInfo="ModelExpression" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1228148844375" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_ProjectExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="expression" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1228148844376" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1229343523390" nodeInfo="nn">
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1229343523391" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1229343523392" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1229343523393" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1228148844377" resolveInfo="expression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1229343523394" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1229343523395" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5711926616362077853" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="vsqj.~Project" resolveInfo="Project" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1228148844377" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="expression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.1225467090849" resolveInfo="ProjectExpression" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="5773579205430173663" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_EditorComponentExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="expression" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="5773579205430173664" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="5773579205430190112" nodeInfo="nn">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5773579205430190113" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="5773579205430190114" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="5773579205430193252" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="9a8.~EditorComponent" resolveInfo="EditorComponent" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5773579205430190116" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="5773579205430190117" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="5773579205430190118" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="5773579205430173665" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="5773579205430173665" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="expression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tp5g.5773579205429866751" resolveInfo="EditorComponentExpression" />
    </node>
  </root>
  <root type="tpd4.NonTypesystemRule" typeId="tpd4.1195214364922" id="1558359368029368063" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="check_ITestCase_And_TestInfo" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1558359368029368064" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="1558359368029335913" nodeInfo="nn">
        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="1558359368029335915" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.WarningStatement" typeId="tpd4.1207055528241" id="1558359368029368278" nodeInfo="nn">
            <node role="warningText" roleId="tpd4.1207055552304" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="1558359368029368281" nodeInfo="nn">
              <property name="value" nameId="tpee.1070475926801" value="TestInfo root pointing the the test project should be created in the model to properly code in all environments" />
            </node>
            <node role="nodeToReport" roleId="tpd4.1227096802790" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1558359368029368282" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1558359368029368065" resolveInfo="iTestCase" />
            </node>
          </node>
        </node>
        <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="1558359368029368005" nodeInfo="nn">
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1558359368029368254" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1558359368029368056" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1558359368029368029" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1558359368029368201" nodeInfo="nn">
                  <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1558359368029368065" resolveInfo="iTestCase" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetModelOperation" typeId="tp25.1143234257716" id="1558359368029368034" nodeInfo="nn" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_RootsOperation" typeId="tp25.1171315804604" id="1558359368029368062" nodeInfo="nn">
                <link role="concept" roleId="tp25.1171315804605" targetNodeId="tp5g.5097124989038916362" resolveInfo="TestInfo" />
              </node>
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.IsEmptyOperation" typeId="tp2q.1165530316231" id="3403446150498815761" nodeInfo="nn" />
          </node>
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1558359368029335937" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1558359368029368200" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1558359368029368065" resolveInfo="iTestCase" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="1558359368029367930" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpe5.3310779261129403089" resolveInfo="isMpsStartRequired" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1558359368029368065" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="iTestCase" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="tpe3.1216130694486" resolveInfo="ITestCase" />
    </node>
  </root>
</model>

