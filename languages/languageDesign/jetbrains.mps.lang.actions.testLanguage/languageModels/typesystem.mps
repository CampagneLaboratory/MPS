<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:13c5fcf5-111d-4ae9-b9c9-6a7deeb8dce9(jetbrains.mps.lang.actions.testLanguage.typesystem)" version="0">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="kxd5" modelUID="r:4d38763d-a252-449a-a228-c5edf22068a3(jetbrains.mps.lang.actions.testLanguage.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="5750432610478621621" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_ActionTestContainer" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="5750432610478621622" nodeInfo="nn">
      <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="5750432610478655947" nodeInfo="nn">
        <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5750432610478656353" nodeInfo="nn">
          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="5750432610478661146" nodeInfo="nn">
            <link role="link" roleId="tp25.1138056546658" targetNodeId="kxd5.3286607483605022921" />
          </node>
          <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="5750432610478655982" nodeInfo="nn">
            <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="5750432610478621624" resolveInfo="node" />
          </node>
        </node>
        <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="5750432610478655953" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="parameterizedSubstNode" />
        </node>
        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5750432610478655965" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateStrongLessThanInequationStatement" typeId="tpd4.1179832490862" id="5750432610478685704" nodeInfo="nn">
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5750432610478693961" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="5750432610478693957" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5750432610478693995" nodeInfo="in">
                  <link role="concept" roleId="tp25.1138405853777" targetNodeId="kxd5.2550657305103411658" resolveInfo="ActionTestAbstractChild" />
                </node>
              </node>
            </node>
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5750432610478685706" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="5750432610478685707" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="5750432610478685708" nodeInfo="nn">
                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="5750432610478655953" resolveInfo="parameterizedSubstNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="5164819300891447929" nodeInfo="nn">
        <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5164819300891447930" nodeInfo="nn">
          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="5164819300891492162" nodeInfo="nn">
            <link role="link" roleId="tp25.1138056546658" targetNodeId="kxd5.2534942168331159850" />
          </node>
          <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="5164819300891447932" nodeInfo="nn">
            <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="5750432610478621624" resolveInfo="node" />
          </node>
        </node>
        <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="5164819300891447933" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="simpleSubstNode" />
        </node>
        <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5164819300891447934" nodeInfo="nn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateStrongLessThanInequationStatement" typeId="tpd4.1179832490862" id="5164819300891447935" nodeInfo="nn">
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5164819300891447936" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="5164819300891447937" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5164819300891447938" nodeInfo="in">
                  <link role="concept" roleId="tp25.1138405853777" targetNodeId="kxd5.2550657305103442169" resolveInfo="ActionTestChild1" />
                </node>
              </node>
            </node>
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="5164819300891447939" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="5164819300891447940" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="5164819300891447941" nodeInfo="nn">
                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="5164819300891447933" resolveInfo="simpleSubstNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5164819300891447859" nodeInfo="nn" />
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="5750432610478621624" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="node" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="kxd5.2550657305103395183" resolveInfo="ActionTestContainer" />
    </node>
  </root>
</model>

