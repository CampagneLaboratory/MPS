<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:b90ae0cf-6b91-458a-92d0-e5bf2ada7de4(jetbrains.mps.make.script.typesystem)">
  <persistence version="7" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="95f8a3e6-f994-4ca0-a65e-763c9bae2d3b(jetbrains.mps.make.script)" />
  <language namespace="d4615e3b-d671-4ba9-af01-2b78369b0ba7(jetbrains.mps.lang.pattern)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <import index="q9ra" modelUID="r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)" version="-1" />
  <import index="yo81" modelUID="r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)" version="-1" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp3t" modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="gyzi" modelUID="r:b90ae0cf-6b91-458a-92d0-e5bf2ada7de4(jetbrains.mps.make.script.typesystem)" version="-1" implicit="yes" />
  <roots>
    <node type="tpd4.ComparisonRule" typeId="tpd4.1188811367543" id="2360002718792535571">
      <property name="name" nameId="tpck.1169194664001" value="ResourceType_comparableWith_IResource" />
      <property name="isWeak" nameId="tpd4.1175607673137" value="true" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="job" />
    </node>
    <node type="tpd4.SubtypingRule" typeId="tpd4.1175147670730" id="2360002718792583537">
      <property name="name" nameId="tpck.1169194664001" value="ResourceType_subtypeOf_IResource" />
      <property name="isWeak" nameId="tpd4.1175607673137" value="true" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="job" />
    </node>
    <node type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="2360002718792622204">
      <property name="name" nameId="tpck.1169194664001" value="typeof_OutputResources" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="job" />
    </node>
    <node type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="505095865854557931">
      <property name="name" nameId="tpck.1169194664001" value="typeof_OptionExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="query" />
    </node>
    <node type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1977954644795311537">
      <property name="name" nameId="tpck.1169194664001" value="typeof_RelayQueryExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="query" />
    </node>
  </roots>
  <root id="2360002718792535571">
    <node role="anotherNode" roleId="tpd4.1188820750135" type="tpd4.PatternCondition" typeId="tpd4.1174642900584" id="2360002718792535575">
      <property name="name" nameId="tpck.1169194664001" value="res" />
      <node role="pattern" roleId="tpd4.1174642936809" type="tp3t.PatternExpression" typeId="tp3t.1136720037777" id="2360002718792535576">
        <node role="patternNode" roleId="tp3t.1136720037778" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2360002718792536832">
          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="yo81.6168415856807657256" resolveInfo="IResource" />
        </node>
      </node>
    </node>
    <node role="body" roleId="tpd4.1175147624276" type="tpee.StatementList" typeId="tpee.1068580123136" id="2360002718792535573">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2360002718792583534">
        <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2360002718792583536">
          <property name="value" nameId="tpee.1068580123138" value="true" />
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="2360002718792535574">
      <property name="name" nameId="tpck.1169194664001" value="rt" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="q9ra.2360002718792446594" resolveInfo="ResourceType" />
    </node>
  </root>
  <root id="2360002718792583537">
    <node role="body" roleId="tpd4.1175147624276" type="tpee.StatementList" typeId="tpee.1068580123136" id="2360002718792583538">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2360002718792583542">
        <node role="expression" roleId="tpee.1068581517676" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2360002718792583544">
          <node role="creator" roleId="tpee.1145553007750" type="tp2q.ListCreatorWithInit" typeId="tp2q.1160600644654" id="2360002718792614833">
            <node role="elementType" roleId="tp2q.1237721435807" type="tp25.SNodeType" typeId="tp25.1138055754698" id="2360002718792614836" />
            <node role="initValue" roleId="tp2q.1237721435808" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="2360002718792614838">
              <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2360002718792614841">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="yo81.6168415856807657256" resolveInfo="IResource" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="2360002718792583539">
      <property name="name" nameId="tpck.1169194664001" value="rt" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="q9ra.2360002718792446594" resolveInfo="ResourceType" />
    </node>
  </root>
  <root id="2360002718792622204">
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="2360002718792622205">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="2360002718792622216">
        <node role="inequationGroup" roleId="tpd4.1320713984677695199" type="tpd4.DefaultGroupReference" typeId="tpd4.1320713984677695202" id="2360002718792622217" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="2360002718792622220">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="2360002718792622208">
            <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2360002718792622211">
              <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="2360002718792622210">
                <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="2360002718792622206" resolveInfo="or" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2360002718792622215">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="q9ra.2360002718792622193" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="2360002718792622221">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="2360002718792622222">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="2360002718792622224">
              <node role="argument" roleId="tpd4.1179479418730" type="q9ra.ResourceType" typeId="q9ra.2360002718792446594" id="2360002718792622226" />
              <node role="argument" roleId="tpd4.1179479418730" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="2360002718792622228">
                <node role="elementType" roleId="tp2q.1151689745422" type="q9ra.ResourceType" typeId="q9ra.2360002718792446594" id="2360002718792622231" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="2360002718792622206">
      <property name="name" nameId="tpck.1169194664001" value="or" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="q9ra.2360002718792622184" resolveInfo="OutputResources" />
    </node>
  </root>
  <root id="505095865854557931">
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="505095865854557932">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="505095865854557938">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="505095865854557943">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="505095865854557944">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="q9ra.OptionType" typeId="q9ra.505095865854384053" id="505095865854557946">
              <node role="referenceAntiquotation$link_attribute$expectedOption" type="tp3r.ReferenceAntiquotation" typeId="tp3r.1196350785117" id="505095865854557947">
                <node role="expression" roleId="tp3r.1196350785111" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="505095865854557960">
                  <link role="concept" roleId="tp25.1140138128738" targetNodeId="q9ra.505095865854384059" resolveInfo="ExpectedOption" />
                  <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="505095865854557955">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="505095865854557950">
                      <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="505095865854557949">
                        <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="505095865854557933" resolveInfo="oe" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="505095865854557954">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="q9ra.505095865854384051" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="505095865854557959" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="505095865854557941">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="505095865854557935">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="505095865854557937">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="505095865854557933" resolveInfo="oe" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="505095865854557933">
      <property name="name" nameId="tpck.1169194664001" value="oe" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="q9ra.505095865854384050" resolveInfo="OptionExpression" />
    </node>
  </root>
  <root id="1977954644795311537">
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1977954644795311538">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1977954644795311540">
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1977954644795311541">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1977954644795311542">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="q9ra.OptionType" typeId="q9ra.505095865854384053" id="1977954644795311543">
              <node role="referenceAntiquotation$link_attribute$expectedOption" type="tp3r.ReferenceAntiquotation" typeId="tp3r.1196350785117" id="1977954644795311544">
                <node role="expression" roleId="tp3r.1196350785111" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="1977954644795311545">
                  <property name="asCast" nameId="tp25.1238684351431" value="true" />
                  <link role="concept" roleId="tp25.1140138128738" targetNodeId="q9ra.505095865854384059" resolveInfo="ExpectedOption" />
                  <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1977954644795311546">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1977954644795311547">
                      <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1977954644795311548">
                        <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1977954644795311539" resolveInfo="rqo" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1977954644795311554">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="q9ra.1977954644795311522" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1977954644795311550">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="q9ra.505095865854384068" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1977954644795311551">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1977954644795311552">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1977954644795311553">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1977954644795311539" resolveInfo="rqo" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1977954644795311539">
      <property name="name" nameId="tpck.1169194664001" value="rqe" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="q9ra.1977954644795311519" resolveInfo="RelayQueryExpression" />
    </node>
  </root>
</model>

