<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895903d1(jetbrains.mps.baseLanguage.dates.typesystem)">
  <persistence version="7" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="cccc689c-f365-4862-a8b6-34ecddf8ee26(jetbrains.mps.baseLanguage.dates)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="d4615e3b-d671-4ba9-af01-2b78369b0ba7(jetbrains.mps.lang.pattern)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="1991585e-225e-4371-977a-68a7888adae2(jetbrains.mps.baseLanguage.datesInternal)" />
  <import index="yvl0" modelUID="r:00000000-0000-4000-0000-011c895903d5(jetbrains.mps.baseLanguage.dates.structure)" version="1" />
  <import index="yvor" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <import index="vhgx" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="yjvv" modelUID="f:java_stub#org.joda.time(org.joda.time@java_stub)" version="-1" />
  <import index="yjwb" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="yvou" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <import index="yvim" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="yvnu" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="yvjf" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="yvjg" modelUID="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" version="0" implicit="yes" />
  <import index="yvo4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="yvl2" modelUID="r:00000000-0000-4000-0000-011c895903d1(jetbrains.mps.baseLanguage.dates.typesystem)" version="-1" implicit="yes" />
  <roots>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371373855">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_NowExpression" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371373914">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_UnaryDateTimeOperation" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371373937">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_FormatExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371373956">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimeCompareOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371373988">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimeWithPropertyOperation" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1178371374002">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_PeriodConstant" />
    </node>
    <node type="yvo4.SubtypingRule" typeId="yvo4.1175147670730:3" id="1179578314643">
      <property name="isWeak" nameId="yvo4.1175607673137:3" value="true" />
      <property name="name" nameId="yvnu.1169194664001:0" value="DateTimeType_unboxing" />
    </node>
    <node type="yvo4.SubtypingRule" typeId="yvo4.1175147670730:3" id="1179578410931">
      <property name="isWeak" nameId="yvo4.1175607673137:3" value="true" />
      <property name="name" nameId="yvnu.1169194664001:0" value="DateTimeType_boxing" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1209035586427">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConvertToDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1213195050820">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimeMinusPeriodOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1213195662838">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimePlusPeriodOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1213195722620">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimeMinusOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.OverloadedOpRulesContainer" typeId="yvo4.1236165709895:3" id="1236774161156">
      <property name="name" nameId="yvnu.1169194664001:0" value="DateTimeOperations" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1238088373181">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_NeverExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1238249028992">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_MathDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.math" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1238513806587">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_TimeZoneConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1238856102342">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimeZoneCreator" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1239015873752">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConstantTimeZone" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="timezone" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1239018206164">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_InlineFormatExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1239019312803">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_TimeZoneFromString" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="timezone" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1239808411566">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_PeriodInPropertyOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1239808490255">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_WithPropertyCompareExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="1892577441204759551">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ParseExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="2639623922402551149">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_RoundDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.round" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="2639623922402698218">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_InTimezone" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="4389880778953638809">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ParseDateTimeExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="5034322243092302132">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_FormatDateTimeExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="194163770812065853">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_InlineFormatDateTimeExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999047">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConvertToJavaCalendarOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999063">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConvertToJavaDateOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999079">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConvertToJodaDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999095">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_DateTimePropetyReferenceOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999115">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_NotNullOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="670620798051999130">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_NullOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
    </node>
    <node type="yvo4.SubtypingRule" typeId="yvo4.1175147670730:3" id="5372916090360672780">
      <property name="name" nameId="yvnu.1169194664001:0" value="DurationType_boxing" />
      <property name="isWeak" nameId="yvo4.1175607673137:3" value="true" />
    </node>
    <node type="yvo4.SubtypingRule" typeId="yvo4.1175147670730:3" id="5372916090360672796">
      <property name="name" nameId="yvnu.1169194664001:0" value="DurationType_unboxing" />
      <property name="isWeak" nameId="yvo4.1175607673137:3" value="true" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="5372916090361181343">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ConvertToDurationOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="276836602888578318">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_PeriodInPropertyExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="3394771273339689749">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_ScheduleLiteral" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant.schedule" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="779372288056193824">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_TimeConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="34521615669576830">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_FormatPeriodExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="5293902215864051661">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_TimeZoneIdOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="5293902215864913134">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_TimeZoneNameOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
    </node>
    <node type="yvo4.InferenceRule" typeId="yvo4.1174643105530:3" id="5293902215865434336">
      <property name="name" nameId="yvnu.1169194664001:0" value="typeof_AllTimeZonesConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
    </node>
  </roots>
  <root id="1178371373855">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371373856">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1204416432298">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416432299">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1204416432300">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1178371373860">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373843" resolveInfo="nowExpression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416432302">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953242">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1196777953243" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373843">
      <property name="name" nameId="yvnu.1169194664001:0" value="nowExpression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1169630122569:1" />
    </node>
  </root>
  <root id="1178371373914">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371373915">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1186142458707">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186142462210">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238418626296">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="1238418628329">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1238418633111" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="194163770812164119" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1238418641911" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="4689684025425723821" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186142458709">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1186142450296">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227946024">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1186142454268">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373846" resolveInfo="unaryDateTimeOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1186142454269">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="errorString" roleId="yvo4.1180447237840:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1186142474322">
          <property name="value" nameId="yvor.1070475926801:3" value="datetime was expected" />
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882418" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373846">
      <property name="name" nameId="yvnu.1169194664001:0" value="unaryDateTimeOperation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1171963068132:1" />
    </node>
  </root>
  <root id="1178371373937">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371373938">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1204416365410">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416365411">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1204416365412">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1178371373955">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373847" resolveInfo="formatExpression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416365413">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953287">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225195481707" />
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1186143081061">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143084610">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953285">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="1238413983143">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1238413989894" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1238414007287" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143081063">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1186143074652">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204416376116">
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204416376117">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169557612323:1" />
              </node>
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1204416376118">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373847" resolveInfo="formatExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="errorString" roleId="yvo4.1180447237840:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1186143097957">
          <property name="value" nameId="yvor.1070475926801:3" value="datetime was expected" />
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882482" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238516615256">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238516617244">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238681155697">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1238681158761" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238516615259">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238516610064">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238516610065">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238516610066">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373847" resolveInfo="formatExpression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239018178817">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015930559:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373847">
      <property name="name" nameId="yvnu.1169194664001:0" value="formatExpression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1169557513226:1" />
    </node>
  </root>
  <root id="1178371373956">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371373957">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1204416331816">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416331817">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1204416331818">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1178371373985">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373849" resolveInfo="op" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416331819">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953293">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1196777953294" />
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1186143156664">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143160682">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953289">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1196777953290" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143156666">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1186143134737">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227879800">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1186143136817">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373849" resolveInfo="op" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1186143141868">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172074898284:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="errorString" roleId="yvo4.1180447237840:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1186143190715">
          <property name="value" nameId="yvor.1070475926801:3" value="datetime was expected" />
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882685" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1186143177194">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143180493">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953291">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1196777953292" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1186143177196">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1186143166188">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227879110">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1186143168408">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373849" resolveInfo="op" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1186143171959">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172074912819:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="errorString" roleId="yvo4.1180447237840:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1186143193122">
          <property name="value" nameId="yvor.1070475926801:3" value="datetime was expected" />
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882845" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373849">
      <property name="name" nameId="yvnu.1169194664001:0" value="op" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1172074800504:1" />
    </node>
  </root>
  <root id="1178371373988">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371373989">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1204416302428">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416305994">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1204416305995">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1204416308217" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1204416302433">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1204416290893">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204416292967">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1204416292467">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373850" resolveInfo="op" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1204416294768">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172331281757:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882786" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2639623922402551110">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551113">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402551102">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402551104">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373850" resolveInfo="op" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551122">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402551123">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2639623922402551126">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402551125">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373850" resolveInfo="op" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2639623922402551130">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="3986031709810158442">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3986031709810158450">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3986031709810158451">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="3986031709810158453" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3986031709810158445">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="3986031709810154698">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3986031709810157228">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="3986031709810157227">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373850" resolveInfo="op" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3986031709810158441">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882809" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373850">
      <property name="name" nameId="yvnu.1169194664001:0" value="op" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1172331114860:1" />
    </node>
  </root>
  <root id="1178371374002">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1178371374003">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1178371374004">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1185805557208">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1178371374005">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227925024">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1178371374007">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373851" resolveInfo="periodConstant" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1178371374008">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172491543832:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1185805557209">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953297">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.LongType" typeId="yvor.1068581242867:3" id="1196777953298" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882817" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1178371374011">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1185805557210">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1178371374012">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1178371374013">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1178371373851" resolveInfo="periodConstant" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1185805557211">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953299">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1196777953300" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1178371373851">
      <property name="name" nameId="yvnu.1169194664001:0" value="periodConstant" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1172489559047:1" />
    </node>
  </root>
  <root id="1179578314643">
    <node role="body" roleId="yvo4.1175147624276:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1179578314644">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1179578358787">
        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953343">
          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1196777953344">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1179578338130">
      <property name="name" nameId="yvnu.1169194664001:0" value="dateTimeType" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1171902375079:1" />
    </node>
  </root>
  <root id="1179578410931">
    <node role="body" roleId="yvo4.1175147624276:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1179578410932">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1179578443561">
        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1196777953345">
          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1196777953346" />
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.PatternCondition" typeId="yvo4.1174642900584:3" id="1179578422683">
      <property name="name" nameId="yvnu.1169194664001:0" value="longClassifier" />
      <node role="pattern" roleId="yvo4.1174642936809:3" type="yvjg.PatternExpression" typeId="yvjg.1136720037777:0" id="1179578422684">
        <node role="patternNode" roleId="yvjg.1136720037778:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1179578430451">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
        </node>
      </node>
    </node>
  </root>
  <root id="1209035586427">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209035586428">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1209035609175">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1209035610723">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1209035610724">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1209035616519" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1209035609180">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1209035604566">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1209035606528">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1209035586429" resolveInfo="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1209035586429">
      <property name="name" nameId="yvnu.1169194664001:0" value="nodeToCheck" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209035204722:1" resolveInfo="ConvertToDateTimeOperation" />
    </node>
  </root>
  <root id="1213195050820">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1213195050821">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1213195065950">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195071969">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195071970">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195077302" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195065953">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195057321">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195061948">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195050822" resolveInfo="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195255704">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195272159">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195272160">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195290823" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195255707">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195083305">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195242719">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195239796">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195050822" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195247343">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207222904240:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882693" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195267655">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195274803">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195274804">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1213195296559" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195267658">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195260554">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195263745">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195262337">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195050822" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195264388">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207222904241:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882772" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1213195050822">
      <property name="name" nameId="yvnu.1169194664001:0" value="nodeToCheck" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1207222873197:1" resolveInfo="DateTimeMinusPeriodOperation" />
    </node>
  </root>
  <root id="1213195662838">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1213195662839">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1213195666497">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666498">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195666499">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195666500" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666501">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195666502">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195666503">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195662840" resolveInfo="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195666504">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666505">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195666506">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195666507" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666508">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195666509">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195666510">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195666511">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195662840" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195668835">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207143609180:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882578" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195666513">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666514">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195666515">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1213195666516" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195666517">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195666518">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195666519">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195666520">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195662840" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195670148">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207143609181:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882426" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1213195662840">
      <property name="name" nameId="yvnu.1169194664001:0" value="nodeToCheck" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1207143297026:1" resolveInfo="DateTimePlusPeriodOperation" />
    </node>
  </root>
  <root id="1213195722620">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1213195722621">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1213195725467">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725468">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195725469">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1213195736962" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725471">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195725472">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195725473">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195722622" resolveInfo="nodeToCheck" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195725474">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725475">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195725476">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195725477" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725478">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195725479">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195725480">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195725481">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195722622" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195743010">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386153808:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882698" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1213195725483">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725484">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1213195725485">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1213195732726" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1213195725487">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1213195725488">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1213195725489">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1213195725490">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1213195722622" resolveInfo="nodeToCheck" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1213195744214">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386164996:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882749" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1213195722622">
      <property name="name" nameId="yvnu.1169194664001:0" value="nodeToCheck" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1174386108135:1" resolveInfo="DateTimeMinusOperation" />
    </node>
  </root>
  <root id="1236774161156">
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1236774170246">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1236774177722">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774197347">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236774205858" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1236774170250">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1236774170251">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1236774216329">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774221997">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="5372916090360672779" />
            </node>
          </node>
        </node>
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774208887">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236774208888" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="796336488935602027">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602034">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935602036" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602037">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935602042" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="796336488935602033">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="796336488935602031">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="796336488935602032">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="796336488935602043">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602045">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="796336488935602048" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1236774229935">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1236774239699">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1236774229939">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1236774229940">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1236774246770">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774294247">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236774294248" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774299193">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236774299194" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236774302315">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236774302316" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1020883432867574619">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576641">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="1020883432867576644" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576645">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="1020883432867576648" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1020883432867574625">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1020883432867574623">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1020883432867574624">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1020883432867576649">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576651">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="1020883432867576654" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1050935010099830680">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1050935010099830681">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1050935010099830682">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1050935010099830683">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1050935010099830684">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1050935010099830685">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1050935010099830686" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1050935010099830687">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1050935010099830688" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1050935010099830689">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1050935010099830690" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1020883432867576659">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1020883432867576665">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1020883432867576663">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1020883432867576664">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1020883432867576678">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576680">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1020883432867576683" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576674">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1020883432867576677" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1020883432867576671">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="1020883432867576672" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="796336488935602005">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602012">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935602014" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602015">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="796336488935602017" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="796336488935602011">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242869:3" resolveInfo="MinusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="796336488935602009">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="796336488935602010">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="796336488935602018">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935602020">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935602022" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1236775898876">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1236775904168">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1236775898880">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1236775898881">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1236775921334">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236775922346">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236775922347" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236775910636">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236775910637" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236775911985">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236775911986" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="3931616304474648900">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648907">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="3931616304474648910" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648911">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="3931616304474648914" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="3931616304474648906">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="3931616304474648904">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3931616304474648905">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="3931616304474648915">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648917">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="3931616304474648920" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1236786743816">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1236786743817">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1236786743818">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1236786743819">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1236786743820">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786750939">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236786750940" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786743823">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236786743824" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786748490">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236786748491" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1236786725857">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1236786725858">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1236786725859">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1236786725860">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1236786725861">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786740029">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236786740030" />
            </node>
          </node>
        </node>
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786725866">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1236786725867" />
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1236786736052">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1236786736053" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="4471175979081541866">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543888">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="4471175979081543891" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="4471175979081541872">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="4471175979081541870">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4471175979081541871">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4471175979081543899">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543901">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="4471175979081543904" />
            </node>
          </node>
        </node>
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543895">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="4471175979081543898" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="4471175979081543909">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="4471175979081543915">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="4471175979081543913">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4471175979081543914">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4471175979081543920">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543922">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="4471175979081543923" />
            </node>
          </node>
        </node>
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543916">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="4471175979081543917" />
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4471175979081543918">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="4471175979081543919" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="796336488935601983">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601990">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="796336488935601992" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601993">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935601995" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="796336488935601989">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="796336488935601987">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="796336488935601988">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="796336488935601996">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601998">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935602000" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="5351757338848143538">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5351757338848143562">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="5351757338848143564" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="5351757338848143544">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1068581242875:3" resolveInfo="PlusExpression" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="5351757338848143542">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5351757338848143543">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5351757338848143565">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5351757338848143566">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5351757338848143568" />
            </node>
          </node>
        </node>
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5351757338848143559">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5351757338848143561" />
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="796336488935601961">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601968">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935601970" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601971">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="796336488935601973" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="796336488935601967">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="796336488935601965">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="796336488935601966">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="796336488935601974">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="796336488935601976">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="796336488935601978" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1239808217240">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1239808225840">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808239035">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1239808242428" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808244460">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1239808246181" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1239808217244">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239808217245">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239808248994">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808251918">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1239808254717" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="1239808229122">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="1239808232722">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      </node>
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808259656">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1239808263783" />
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808265659">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1239808268161" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="1239808229126">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239808229127">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239808270771">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808273961">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1239808276838" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="rule" roleId="yvo4.1236165725858:3" type="yvo4.OverloadedOperatorTypeRule" typeId="yvo4.1236083041311:3" id="3931616304474646858">
      <property name="leftIsExact" nameId="yvo4.1236771579180:3" value="true" />
      <property name="rightIsExact" nameId="yvo4.1236771585835:3" value="true" />
      <node role="leftOperandType" roleId="yvo4.1236083115043:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648880">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="3931616304474648883" />
      </node>
      <node role="operationConcept" roleId="yvo4.8124453027370845341:3" type="yvim.ConceptReference" typeId="yvim.1154546950173:16" id="3931616304474646864">
        <link role="concept" roleId="yvim.1154546997487:16" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      </node>
      <node role="function" roleId="yvo4.8124453027370845343:3" type="yvo4.OverloadedOperatorTypeFunction" typeId="yvo4.1236083146670:3" id="3931616304474646862">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3931616304474646863">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="3931616304474648892">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648894">
              <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="3931616304474648895" />
            </node>
          </node>
        </node>
      </node>
      <node role="rightOperandType" roleId="yvo4.1236083115200:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3931616304474648886">
        <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="3931616304474648887" />
      </node>
    </node>
  </root>
  <root id="1238088373181">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238088373182">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238088382562">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238088386754">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238088404011">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1238088404012" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238088382565">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238088376856">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238088380468">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238088373183" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1238088373183">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1238088288461:1" resolveInfo="NeverExpression" />
    </node>
  </root>
  <root id="1238249028992">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238249028993">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="2644539331224368530">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224368531">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2644539331224368532">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2644539331224368533">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2644539331224368534">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2644539331224368535">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060720:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224368536">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="2644539331224368537">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="2644539331224368538">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="2644539331224368539" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="2644539331224368540" />
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882744" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="2644539331224421752">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224421753">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2644539331224421754">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2644539331224421755">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2644539331224421756">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2644539331224422966">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060893:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224421758">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="2644539331224421759">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="2644539331224421760">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="2644539331224421761" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="2644539331224421762" />
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882593" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2644539331224424992">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224424996">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2644539331224424997">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2644539331224425000">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2644539331224424999">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2644539331224425004">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060893:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224424995">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2644539331224424984">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2644539331224424987">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2644539331224424986">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2644539331224424991">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060720:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238249548697">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2644539331224306336">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2644539331224306337">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2644539331224306340">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2644539331224306339">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2644539331224306344">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060720:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238249548700">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238249542975">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238249545211">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238249028994" resolveInfo="mathOperation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1238249028994">
      <property name="name" nameId="yvnu.1169194664001:0" value="mathOperation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1238248029297:1" resolveInfo="MathDateTimeOperation" />
    </node>
  </root>
  <root id="1238513806587">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238513806588">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238513939851">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238513942965">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238685880223">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1238685891194" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238513939854">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238513936802">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238513936803">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238513806589" resolveInfo="constant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1238513806589">
      <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1238513709008:1" resolveInfo="TimeZoneConstant" />
    </node>
  </root>
  <root id="1238856102342">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238856102343">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238856137733">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238856141331">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238856141332">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1238856152694" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238856137736">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238856132700">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238856132701">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238856102344" resolveInfo="creator" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1238856174336">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238856178168">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1238856178169">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1238856182702" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1238856174339">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1238856167221">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238856167222">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1238856167223">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1238856102344" resolveInfo="creator" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238856167224">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238855978597:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1238856102344">
      <property name="name" nameId="yvnu.1169194664001:0" value="creator" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1238855581199:1" resolveInfo="DateTimeZoneCreator" />
    </node>
  </root>
  <root id="1239015873752">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239015873753">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1239015890612">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239015893510">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239015893511">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1239015901831" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239015890615">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1239015883864">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1239015883865">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239015873754" resolveInfo="zone" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1239015873754">
      <property name="name" nameId="yvnu.1169194664001:0" value="zone" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1239015860192:1" resolveInfo="ConstantTimeZone" />
    </node>
  </root>
  <root id="1239018206164">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239018206165">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1239018223435">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239018225314">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239018225315">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1239018229318" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239018223438">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1239018219290">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239018219291">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1239018219292">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239018206166" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239018219293">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239016087043:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2639623922402551140">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551143">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402551137">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402551139">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239018206166" resolveInfo="expression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551144">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="2639623922402551145">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="2639623922402551148" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1239018206166">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1174039789930:1" resolveInfo="InlineFormatExpression" />
    </node>
  </root>
  <root id="1239019312803">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239019312804">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1239019330217">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239019330220">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1239019325417">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1239019328247">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239019312805" resolveInfo="timeZone" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239019335146">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239019335147">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="1239019341868" />
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5293902215864271026">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="false" />
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864271027">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215864271028">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864271029">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215864271030">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239019312805" resolveInfo="timeZone" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215864271031">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239019204488:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864271032">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215864271033">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215864271034" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5293902215864271035" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1239019312805">
      <property name="name" nameId="yvnu.1169194664001:0" value="timeZone" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1239019022206:1" resolveInfo="TimeZoneFromString" />
    </node>
  </root>
  <root id="1239808411566">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239808411567">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1239808418667">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239808420327">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808420328">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="1239808423205" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239808418670">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1239808414992">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1239808416963">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239808411568" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1548440323223477055">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1548440323223477056">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1548440323223477057">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223477058">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1548440323223477059">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239808411568" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223477060">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1548440323223477061">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1548440323223477062">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="1548440323223477063">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1548440323223477064" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="1548440323223477065" />
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882402" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1239808411568">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1239036439524:1" resolveInfo="PeriodInPropertyOperation" />
    </node>
  </root>
  <root id="1239808490255">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239808490256">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1239808508190">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239808509709">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1239808509710">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1239808512259" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1239808508193">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1239808503999">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1239808506064">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239808490257" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5600029375248457527">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5600029375248457528">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5600029375248457529">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5600029375248457530">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5600029375248457531">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5600029375248457532">
                  <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239808490257" resolveInfo="expression" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5600029375248457533">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239198287872:1" />
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5600029375248457534">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5600029375248457535">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5600029375248457536">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5600029375248457537" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882511" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5600029375248457538">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5600029375248457539">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5600029375248457540">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5600029375248457541">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5600029375248457542">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5600029375248457543">
                  <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1239808490257" resolveInfo="expression" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5600029375248457544">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239198287872:1" />
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5600029375248457545">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5600029375248457546">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5600029375248457547">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5600029375248457548" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882781" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1239808490257">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1239193939163:1" resolveInfo="WithPropertyCompareExpression" />
    </node>
  </root>
  <root id="1892577441204759551">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1892577441204759552">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="1892577441204768359">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1892577441204768363">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1892577441204768364">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1892577441204768368" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1892577441204768362">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1892577441204767239">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1892577441204767242">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1892577441204767241">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1892577441204759553" resolveInfo="pe" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1892577441204768358">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1892577441204578449:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882424" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="7678715681280022236">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="7678715681280022240">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="7678715681280022241">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="7678715681280022243" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="7678715681280022239">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="7678715681280021116">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280021119">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="7678715681280021118">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1892577441204759553" resolveInfo="pe" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280022235">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.7678715681280019206:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882398" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="1892577441204768374">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1892577441204768378">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="1892577441204768379">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="1892577441204768381" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="1892577441204768377">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="1892577441204768371">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="1892577441204768373">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="1892577441204759553" resolveInfo="pe" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1892577441204759553">
      <property name="name" nameId="yvnu.1169194664001:0" value="pe" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1892577441204578414:1" resolveInfo="ParseExpression" />
    </node>
  </root>
  <root id="2639623922402551149">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2639623922402551150">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2639623922402551156">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551160">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402551161">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2639623922402551168">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402551163">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402551151" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2639623922402551172">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402551159">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402551153">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402551155">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402551151" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5488841840788546541">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5488841840788546550">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5488841840788546551">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5488841840788546553" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5488841840788546544">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5488841840788545324">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5488841840788545327">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5488841840788545326">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402551151" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5488841840788546540">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882713" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="2639623922402551151">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1172324086632:1" resolveInfo="RoundDateTimeOperation" />
    </node>
  </root>
  <root id="2639623922402698218">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2639623922402698219">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2639623922402700252">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402700256">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="2639623922402700257">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="2639623922402700261" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402700255">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402700237">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402700239">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402698220" resolveInfo="timezone" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="3986031709811403925">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3986031709811403926">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="3986031709811403927">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3986031709811403928">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="3986031709811403929">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402698220" resolveInfo="timezone" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3986031709811403930">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2639623922402691278:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3986031709811403931">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3986031709811403932">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="3986031709811403933" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882396" />
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="2639623922402701501">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402701505">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="2639623922402701506">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="2639623922402701512" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="2639623922402701504">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="2639623922402701493">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2639623922402701496">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="2639623922402701495">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="2639623922402698220" resolveInfo="timezone" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2639623922402701500">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2639623922402691641:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="2639623922402698220">
      <property name="name" nameId="yvnu.1169194664001:0" value="timezone" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.2639623922402691276:1" resolveInfo="InTimezone" />
    </node>
  </root>
  <root id="4389880778953638809">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953638810">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="4389880778953638816">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638820">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4389880778953638821">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="4389880778953638824" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638819">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="4389880778953638813">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="4389880778953638815">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="4389880778953638811" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="4389880778953638858">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638862">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4389880778953638863">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="4389880778953638866" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638861">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="4389880778953638850">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953638853">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="4389880778953638852">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="4389880778953638811" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953638857">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634896:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="4389880778953638868">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638869">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4389880778953638870">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="4389880778953638871" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4389880778953638872">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="4389880778953638873">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953638874">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="4389880778953638875">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="4389880778953638811" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953638876">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634894:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="7499037524191428205">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="7499037524191428209">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="7499037524191428210">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="7499037524191428213" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="7499037524191428208">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="7499037524191428197">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7499037524191428200">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="7499037524191428199">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="4389880778953638811" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7499037524191428204">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634895:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="4389880778953638811">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.4389880778953634893:1" resolveInfo="ParseDateTimeExpression" />
    </node>
  </root>
  <root id="5034322243092302132">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092302133">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5034322243092302139">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5034322243092302143">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5034322243092302144">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5034322243092302146" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5034322243092302142">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5034322243092302136">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5034322243092302138">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5034322243092302134" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5034322243092302157">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5034322243092302161">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5034322243092302162">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="5034322243092302164" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5034322243092302160">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5034322243092302149">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092302152">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5034322243092302151">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5034322243092302134" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092302156">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243092298623:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5034322243092302134">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5034322243092296606:1" resolveInfo="FormatDateTimeExpression" />
    </node>
  </root>
  <root id="194163770812065853">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065854">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="194163770812065865">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="194163770812065869">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="194163770812065870">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="194163770812065872" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="194163770812065868">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="194163770812065857">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065860">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="194163770812065859">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="194163770812065855" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="194163770812065864">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243093093769:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="194163770812164125">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="194163770812164133">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="194163770812164134">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="194163770812164136" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="194163770812164128">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="194163770812164122">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="194163770812164124">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="194163770812065855" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="194163770812065855">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5034322243093083314:1" resolveInfo="InlineFormatDateTimeExpression" />
    </node>
  </root>
  <root id="670620798051999047">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999048">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999054">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999058">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999059">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="670620798051999062">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Calendar" resolveInfo="Calendar" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999057">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999051">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999053">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999049" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999049">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209036309347:1" resolveInfo="ConvertToJavaCalendarOperation" />
    </node>
  </root>
  <root id="670620798051999063">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999064">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999070">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999074">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999075">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="670620798051999078">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Date" resolveInfo="Date" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999073">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999067">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999069">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999065" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999065">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209036325551:1" resolveInfo="ConvertToJavaDateOperation" />
    </node>
  </root>
  <root id="670620798051999079">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999080">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999086">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999090">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999091">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="670620798051999094">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DateTime" resolveInfo="DateTime" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999089">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999083">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999085">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999081" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999081">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209036336317:1" resolveInfo="ConvertToJodaDateTimeOperation" />
    </node>
  </root>
  <root id="670620798051999095">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999096">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999102">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999110">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999111">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="670620798051999114">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999105">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999099">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999101">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999097" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="4858741172755310220">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="true" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4858741172755310224">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="4858741172755310225">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="4858741172755310227" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="4858741172755310223">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="4858741172755310212">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4858741172755310215">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="4858741172755310214">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999097" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="4858741172755310219">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
              </node>
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882553" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999097">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209039739631:1" resolveInfo="DateTimePropetyReferenceOperation" />
    </node>
  </root>
  <root id="670620798051999115">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999116">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999122">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999126">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999127">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="670620798051999129" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999125">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999119">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999121">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999117" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999117">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209036122468:1" resolveInfo="NotNullOperation" />
    </node>
  </root>
  <root id="670620798051999130">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="670620798051999131">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="670620798051999137">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999141">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="670620798051999142">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="670620798051999144" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="670620798051999140">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="670620798051999134">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="670620798051999136">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="670620798051999132" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="670620798051999132">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1209036143519:1" resolveInfo="NullOperation" />
    </node>
  </root>
  <root id="5372916090360672780">
    <node role="body" roleId="yvo4.1175147624276:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360672781">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360672795">
        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5372916090360672788">
          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="5372916090360672794" />
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.PatternCondition" typeId="yvo4.1174642900584:3" id="5372916090360672783">
      <property name="name" nameId="yvnu.1169194664001:0" value="longClassifier" />
      <node role="pattern" roleId="yvo4.1174642936809:3" type="yvjg.PatternExpression" typeId="yvjg.1136720037777:0" id="5372916090360672784">
        <node role="patternNode" roleId="yvjg.1136720037778:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5372916090360672786">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
        </node>
      </node>
    </node>
  </root>
  <root id="5372916090360672796">
    <node role="body" roleId="yvo4.1175147624276:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360672797">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360672802">
        <node role="expression" roleId="yvor.1068581517676:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5372916090360672804">
          <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5372916090360672807">
            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5372916090360672801">
      <property name="name" nameId="yvnu.1169194664001:0" value="durationType" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.3931616304474644667:1" resolveInfo="DurationType" />
    </node>
  </root>
  <root id="5372916090361181343">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090361181344">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5372916090361183365">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5372916090361183369">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5372916090361183370">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="5372916090361183372" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5372916090361183368">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5372916090361183362">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5372916090361183364">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5372916090361181345" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5372916090361183383">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5372916090361183387">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5372916090361183388">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="5372916090361183390" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5372916090361183386">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5372916090361183375">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090361183378">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5372916090361183377">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5372916090361181345" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="5372916090361183382">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5372916090361181345">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5372916090361181333:1" resolveInfo="ConvertToDurationOperation" />
    </node>
  </root>
  <root id="276836602888578318">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="276836602888578319">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="276836602888578323">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="276836602888578324">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="276836602888578325">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="276836602888578326" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="276836602888578327">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="276836602888578328">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="276836602888578329">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="276836602888578320" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="276836602888578331">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="276836602888578332">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="276836602888578333">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578334">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="276836602888578335">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="276836602888578320" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="276836602888578342">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578300:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="276836602888578337">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="276836602888578338">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvo4.JoinType" typeId="yvo4.1179479408386:3" id="276836602888578339">
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="276836602888578340" />
              <node role="argument" roleId="yvo4.1179479418730:3" type="yvl0.DurationType" typeId="yvl0.3931616304474644667:1" id="276836602888578341" />
            </node>
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5970100369440882838" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="276836602888578320">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.276836602888578296:1" resolveInfo="PeriodInPropertyExpression" />
    </node>
  </root>
  <root id="3394771273339689749">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3394771273339689750">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="3394771273339689756">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3394771273339689760">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="3394771273339689761">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="3394771273339689763" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="3394771273339689759">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="3394771273339689753">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="3394771273339689755">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="3394771273339689751" resolveInfo="literal" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="3394771273339689751">
      <property name="name" nameId="yvnu.1169194664001:0" value="literal" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.1194003500823:1" resolveInfo="ScheduleLiteral" />
    </node>
  </root>
  <root id="779372288056193824">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056193825">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="779372288056195846">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="779372288056195850">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="779372288056195851">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeWithTZType" typeId="yvl0.1195930031035447613:1" id="779372288056195854" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="779372288056195849">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="779372288056195843">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="779372288056195845">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="779372288056193826" resolveInfo="constant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="779372288056193826">
      <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.779372288056193783:1" resolveInfo="TimeConstant" />
    </node>
  </root>
  <root id="34521615669576830">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="34521615669576831">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="34521615669576837">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="34521615669576841">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="34521615669576842">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="34521615669576844" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="34521615669576840">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="34521615669576834">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="34521615669576836">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="34521615669576832" resolveInfo="expression" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="34521615669576855">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="34521615669576859">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="34521615669576860">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.PeriodType" typeId="yvl0.1172487727591:1" id="34521615669576862" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="34521615669576858">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="34521615669576847">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="34521615669576850">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="34521615669576849">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="34521615669576832" resolveInfo="expression" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="34521615669576854">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.34521615669572118:1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="34521615669576832">
      <property name="name" nameId="yvnu.1169194664001:0" value="expression" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.34521615669572115:1" resolveInfo="FormatPeriodExpression" />
    </node>
  </root>
  <root id="5293902215864051661">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864051662">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5293902215864053698">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864053702">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215864053703">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215864053705" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864053701">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215864053695">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215864053697">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215864051663" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5293902215864075068">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="false" />
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5293902215864075069" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864075073">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215864075074">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="5293902215864075077" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864075072">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215864053708">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864053711">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215864053710">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215864051663" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="5293902215864075067">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5293902215864051663">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5293902215864051658:1" resolveInfo="TimeZoneIdOperation" />
    </node>
  </root>
  <root id="5293902215864913134">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864913135">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5293902215864921105">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864921109">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215864921110">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215864921112" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864921108">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215864915168">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215864921104">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215864913136" resolveInfo="operation" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5293902215864942475">
        <property name="checkOnly" nameId="yvo4.1206359757216:3" value="false" />
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5293902215864942476" />
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864942480">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215864942481">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeZoneType" typeId="yvl0.1238513516532:1" id="5293902215864942484" />
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215864942479">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215864921115">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864921118">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215864921117">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215864913136" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="5293902215864942474">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateLessThanInequationStatement" typeId="yvo4.1174663118805:3" id="5293902215865919094">
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215865919095">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215865919096">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215865919097">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215865919098">
                <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215864913136" resolveInfo="operation" />
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215865919099">
                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5293902215864698564:1" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215865919100">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215865919101">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvl0.DateTimeType" typeId="yvl0.1171902375079:1" id="5293902215865919102" />
          </node>
        </node>
        <node role="inequationGroup" roleId="yvo4.1320713984677695199:3" type="yvo4.DefaultGroupReference" typeId="yvo4.1320713984677695202:3" id="5293902215865919103" />
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5293902215864913136">
      <property name="name" nameId="yvnu.1169194664001:0" value="operation" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5293902215864689835:1" resolveInfo="TimeZoneNameOperation" />
    </node>
  </root>
  <root id="5293902215865434336">
    <node role="body" roleId="yvo4.1195213635060:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215865434337">
      <node role="statement" roleId="yvor.1068581517665:3" type="yvo4.CreateEquationStatement" typeId="yvo4.1174658326157:3" id="5293902215865434343">
        <node role="rightExpression" roleId="yvo4.1174660783414:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215865434347">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvjf.Quotation" typeId="yvjf.1196350785113:0" id="5293902215865434348">
            <node role="quotedNode" roleId="yvjf.1196350785114:0" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5293902215866340987">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Set" resolveInfo="Set" />
              <node role="parameter" roleId="yvor.1109201940907:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215866340989" />
            </node>
          </node>
        </node>
        <node role="leftExpression" roleId="yvo4.1174660783413:3" type="yvo4.NormalTypeClause" typeId="yvo4.1185788614172:3" id="5293902215865434346">
          <node role="normalType" roleId="yvo4.1185788644032:3" type="yvo4.TypeOfExpression" typeId="yvo4.1174657487114:3" id="5293902215865434340">
            <node role="term" roleId="yvo4.1174657509053:3" type="yvo4.ApplicableNodeReference" typeId="yvo4.1174650418652:3" id="5293902215865434342">
              <link role="applicableNode" roleId="yvo4.1174650432090:3" targetNodeId="5293902215865434338" resolveInfo="constant" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="yvo4.1174648101952:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="5293902215865434338">
      <property name="name" nameId="yvnu.1169194664001:0" value="constant" />
      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.5293902215865424196:1" resolveInfo="AllTimeZonesConstant" />
    </node>
  </root>
</model>

