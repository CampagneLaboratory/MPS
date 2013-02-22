<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895903d5(jetbrains.mps.baseLanguage.dates.structure)" version="1">
  <persistence version="7" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="cccc689c-f365-4862-a8b6-34ecddf8ee26(jetbrains.mps.baseLanguage.dates)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tp6p" modelUID="r:00000000-0000-4000-0000-011c895903dd(jetbrains.mps.baseLanguage.datesInternal.structure)" version="3" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" />
  <import index="tp6y" modelUID="r:00000000-0000-4000-0000-011c895903d6(jetbrains.mps.baseLanguage.dates.accessories)" version="-1" />
  <import index="tp6x" modelUID="r:00000000-0000-4000-0000-011c895903d5(jetbrains.mps.baseLanguage.dates.structure)" version="1" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tp76" modelUID="r:00000000-0000-4000-0000-011c895903ce(jetbrains.mps.baseLanguage.dates.behavior)" version="-1" implicit="yes" />
  <roots>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169481390637">
      <property name="rootable" nameId="tpce.1096454100552" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="DateFormatsTable" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169487448949">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateFormat" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="date format" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169495318439">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="custom text" />
      <property name="name" nameId="tpck.1169194664001" value="LiteralFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="'" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169495337236">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="FormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169557513226">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Format instant using predefined formatter" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="FormatExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169562965517">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="conditional token" />
      <property name="name" nameId="tpck.1169194664001" value="ConditionalFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="switch" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169563273551">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="insert date format" />
      <property name="name" nameId="tpck.1169194664001" value="ReferenceFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;&lt;{dateFormat}&gt;&gt;" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169563444535">
      <property name="name" nameId="tpck.1169194664001" value="TokenConditionalPair" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169630122569">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="NowExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="now" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1169631506005">
      <property name="name" nameId="tpck.1169194664001" value="TokenCondition" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171902375079">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeType" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="instant" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171963068132">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="UnaryDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172074800504">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Compare datetimes" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeCompareOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="compare dates by &lt;{datetimeProperty}&gt;" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1172075151844">
      <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="custom" />
      <property name="name" nameId="tpck.1169194664001" value="CompareType" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172324086632">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Round datetime to the nearest" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="RoundDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.round" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="round to" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1171963068132" resolveInfo="UnaryDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172325083904">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Round datetime to the nearest that is less than" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="FloorDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.round" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="round down to" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1172324086632" resolveInfo="RoundDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172325617850">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Round datetime to the nearest that is greater than" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="CeilingDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.round" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="round up to" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1172324086632" resolveInfo="RoundDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172331114860">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="same datetime but with property set to" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeWithPropertyOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.property" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="with" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1171963068132" resolveInfo="UnaryDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172487727591">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodType" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="period" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1164118113764" resolveInfo="PrimitiveType" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172489559047">
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172679701720">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="FixedLocaleFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="with locale" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1173959836330">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="datetime property" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimePropertyFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{&lt;{dateTimePropertyFormatConfiguration}&gt;}" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1173975646059">
      <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="custom" />
      <property name="name" nameId="tpck.1169194664001" value="DateFormatVisibility" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1173975646060" resolveInfo="PUBLIC" />
      <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174039789930">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Format instant using inline formatter" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="InlineFormatExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;datetime&gt;#{&lt;format&gt;}" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1171963068132" resolveInfo="UnaryDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174317913525">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeOffsetFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{time} ago" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174320869813">
      <property name="name" nameId="tpck.1169194664001" value="DurationTypeReference" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174386108135">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Period from right value to left value" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeMinusOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="-" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1174387394067">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Positive period from one value to another" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AbsDateTimeMinusOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="-" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1174386108135" resolveInfo="DateTimeMinusOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1194003500823">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="ScheduleLiteral" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant.schedule" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;{schedulePeriod}&gt;" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1194004752522">
      <property name="name" nameId="tpck.1169194664001" value="ZeroSixtyInteger" />
      <property name="constraint" nameId="tpce.1083066089218" value="[012345]\\d|[0-9]" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant.schedule" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1194004947075">
      <property name="name" nameId="tpck.1169194664001" value="ZeroTwentyFourInteger" />
      <property name="constraint" nameId="tpce.1083066089218" value="([01]\\d)|(2[0-3])|[0-9]" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant.schedule" />
    </node>
    <node type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1194005227362">
      <property name="name" nameId="tpck.1169194664001" value="DayOfWeek" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant.schedule" />
      <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1194005562740">
      <property name="name" nameId="tpck.1169194664001" value="OneThirtyOneInteger" />
      <property name="constraint" nameId="tpce.1083066089218" value="([123456789])|([12]\\d)|(3[01])" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant.schedule" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1207143297026">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="datetime + period" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimePlusPeriodOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="+" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1207222873197">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="datetime - period" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeMinusPeriodOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="-" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209035204722">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Convert to instant" />
      <property name="name" nameId="tpck.1169194664001" value="ConvertToDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.convert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="instant" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209035760903">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;datetime operation&gt;" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209036122468">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Check if datetime is not null" />
      <property name="name" nameId="tpck.1169194664001" value="NotNullOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.compare" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="isNotNull" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209036143519">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Check if datetime is null" />
      <property name="name" nameId="tpck.1169194664001" value="NullOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.compare" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="isNull" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209036309347">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Convert to java.util.Calendar" />
      <property name="name" nameId="tpck.1169194664001" value="ConvertToJavaCalendarOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="javaCalendar" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209036325551">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Convert to java.util.Date" />
      <property name="name" nameId="tpck.1169194664001" value="ConvertToJavaDateOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.convert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="javaDate" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209036336317">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Convert to org.joda.time.DateTime" />
      <property name="name" nameId="tpck.1169194664001" value="ConvertToJodaDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="jodaDateTime" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1209039739631">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Get integer value of datetime property" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimePropetyReferenceOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.property" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt;{dateTimeProperty}&gt;" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1209035760903" resolveInfo="DateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238088288461">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="NeverExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="never" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238248029297">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="MathDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.math" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238248680491">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="MinDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.math" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="min" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1238248029297" resolveInfo="MathDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238248707649">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="MaxDateTimeOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.math" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="max" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1238248029297" resolveInfo="MathDateTimeOperation" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238513516532">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeZoneType" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238513709008">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238514419896">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="DefaultTimeZoneConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="default timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1238513709008" resolveInfo="TimeZoneConstant" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238514476665">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="UTCTimeZoneConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="UTC timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="1238513709008" resolveInfo="TimeZoneConstant" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1238855581199">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeZoneCreator" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1145552809883" resolveInfo="AbstractCreator" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239015860192">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="ConstantTimeZoneRef" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="constant timezone" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239019022206">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="get timezone by id" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneFromString" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="timezone(id)" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239036439524">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="period in days/months/years" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodInPropertyOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="in" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239193939163">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="by property" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="WithPropertyCompareExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.compare" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="by" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1892577441204578414">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="parse string as an instant" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="ParseExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecated" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parse instant as" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4555537781927648369">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="timezone with ID" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneIDExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="timezone_ID" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5473692278135631085">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneOffsetExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="timezone" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="timezone_offset" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1195930031035447613">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DateTimeWithTZType" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="datetime" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2639623922402691276">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="convert to DateTime with Timezone" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="InTimezoneExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.convert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="in" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4389880778953634893">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="parse string as datetime" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="ParseDateTimeExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="parse as" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5034322243092296606">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Format datetime using predefined formatter" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="FormatDateTimeExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5034322243093083314">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Format datetime using inline formatter" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="InlineFormatDateTimeExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#{&lt;format&gt;}" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3931616304474644667">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="DurationType" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="duration" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790189" resolveInfo="Type" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5372916090361181333">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="convert to Duration" />
      <property name="name" nameId="tpck.1169194664001" value="ConvertToDurationOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.convert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="toDuration" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="276836602888578296">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="number of full hours/days/months in period" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodInPropertyExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.property" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="in" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="779372288056193783">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="DD-MM-YEAR HH24:MM:SS" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TimeConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="time constant" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="34521615669572115">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="Format period using predefined formatter" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="FormatPeriodExpression" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="#" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="48671598477573965">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodFormat" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="period format" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="48671598477578848">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="48671598477581889">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="custom text" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodLiteralFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="'" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="48671598477578848" resolveInfo="PeriodFormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="48671598477850406">
      <property name="rootable" nameId="tpce.1096454100552" value="true" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodFormatsTable" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7249953535157196261">
      <property name="name" nameId="tpck.1169194664001" value="PeriodPropertyFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="48671598477578848" resolveInfo="PeriodFormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7249953535157212421">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="insert period format" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodReferenceFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="48671598477578848" resolveInfo="PeriodFormatToken" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5581663871702358898">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="printed only with field around" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodSeparatorFormatToken" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="separator" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="48671598477578848" resolveInfo="PeriodFormatToken" />
    </node>
    <node type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="5581663871702358901">
      <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="custom" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodSeparatorKind" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
      <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="5581663871702358902" />
    </node>
    <node type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1778677549314158595">
      <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="custom" />
      <property name="name" nameId="tpck.1169194664001" value="PeriodZeroHandlingKind" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.period" />
      <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
      <link role="defaultMember" roleId="tpce.1083241965437" targetNodeId="1778677549314158598" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5293902215864051658">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="timezone string id" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneIdOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.property" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="id" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5293902215864689835">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="TimeZoneNameOperation" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="operation.property" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="name" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5293902215865424196">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="gets all the available IDs" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AllTimeZonesConstant" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="constant" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="allTimeZoneIDs" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2226821765371868198">
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="TokenCondition_datetimeToFormat" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="format.date" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="datetimeToFormat" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1107135704075" resolveInfo="ConceptFunctionParameter" />
    </node>
  </roots>
  <root id="1169481390637">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169488417691">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169487448949" resolveInfo="DateFormat" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1219697389577">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root id="1169487448949">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169487470543">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="token" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1173882390903">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1173975856624">
      <property name="name" nameId="tpck.1169194664001" value="dateFormatVisibility" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1173975646059" resolveInfo="DateFormatVisibility" />
    </node>
  </root>
  <root id="1169495318439">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1169495350409">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root id="1169495337236" />
  <root id="1169557513226">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169557612323">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="dateExpression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239015930559">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="zone" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169557643590">
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1238661857677">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4555537781928182636">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="2890840340813345706" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647319">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1169562965517">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169563619049">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="conditionPair" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169563444535" resolveInfo="TokenConditionalPair" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1075917115049836851">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root id="1169563273551">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169563300146">
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
  </root>
  <root id="1169563444535">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169563469176">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="condition" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169631506005" resolveInfo="TokenCondition" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1169563482193">
      <property name="role" nameId="tpce.1071599776563" value="format" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
  </root>
  <root id="1169630122569" />
  <root id="1169631506005">
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="1172162329997">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" roleId="tpce.1105736901241" type="tpee.BooleanType" typeId="tpee.1070534644030" id="1172162332013" />
    </node>
  </root>
  <root id="1171902375079" />
  <root id="1171963068132">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1171964003156">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="1172074800504">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1172075381034">
      <property name="name" nameId="tpck.1169194664001" value="compareType" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1172075151844" resolveInfo="CompareType" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172074898284">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="op1" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172074912819">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="op2" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172074844144">
      <property name="role" nameId="tpce.1071599776563" value="datetimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="conceptLinkDeclaration" roleId="tpce.1137532086877" type="tpce.ReferenceConceptLinkDeclaration" typeId="tpce.1105741578420" id="1178372678354">
      <property name="name" nameId="tpck.1169194664001" value="defaultDatetimeProperty" />
      <link role="targetType" roleId="tpce.1105736621938" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="3044950653914717064" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.MigratedToMethodAnnotation" typeId="tpce.8080932314785812236" id="3044950653914717063">
        <link role="method" roleId="tpce.8080932314785812847" targetNodeId="tp76.3044950653914717067" resolveInfo="getDefaultDatetimeProperty" />
      </node>
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239040117109" />
  </root>
  <root id="1172075151844">
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075151845">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime equals" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="EQUALS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="==" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075185460">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime not equals" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="NOT_EQUALS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="!=" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075218062">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime greater" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="GREATER" />
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075248796">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime greater or equals" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="GREATER_OR_EQUALS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="&gt;=" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075265977">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime less" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="LESS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="&lt;" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1172075272162">
      <property name="internalValue" nameId="tpce.1083923523171" value="datetime less or equals" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="LESS_OR_EQUALS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="&lt;=" />
    </node>
  </root>
  <root id="1172324086632">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172324147302">
      <property name="role" nameId="tpce.1071599776563" value="precision" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741642742">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1172325083904">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741702970">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1172325617850">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647410">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1172331114860">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172331207547">
      <property name="role" nameId="tpce.1071599776563" value="dateTimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172331281757">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741639275">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1172487727591" />
  <root id="1172489559047">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172491543832">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="count" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172489570282">
      <property name="role" nameId="tpce.1071599776563" value="dateTimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
  </root>
  <root id="1172679701720">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172679863969">
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172683726790">
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
  </root>
  <root id="1173959836330">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1173966637440">
      <property name="role" nameId="tpce.1071599776563" value="dateTimePropertyFormatConfiguration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1174042847309" resolveInfo="DateTimePropertyConfiguration" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1173959975857">
      <property name="role" nameId="tpce.1071599776563" value="dateTimePropertyFormatType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173953623139" resolveInfo="DateTimePropertyFormatType" />
    </node>
  </root>
  <root id="1173975646059">
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1173975646060">
      <property name="internalValue" nameId="tpce.1083923523171" value="public" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="PUBLIC" />
      <property name="externalValue" nameId="tpce.1083923523172" value="public" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1173975646061">
      <property name="internalValue" nameId="tpce.1083923523171" value="private" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="PRIVATE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="private" />
    </node>
  </root>
  <root id="1174039789930">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1174046000278">
      <property name="name" nameId="tpck.1169194664001" value="withLocale" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174039888135">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="formatToken" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239016087043">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="zone" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174045884375">
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="2890840340813345707" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741647181">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1174317913525">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174321263884">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="durationTypeReference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1174320869813" resolveInfo="DurationTypeReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="779372288057192089">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="referenceTime" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="1174320869813">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174320881454">
      <property name="role" nameId="tpce.1071599776563" value="durationType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1174320693350" resolveInfo="DurationType" />
    </node>
  </root>
  <root id="1174386108135">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174386153808">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="leftValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174386164996">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rightValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1174386223029">
      <property name="role" nameId="tpce.1071599776563" value="datetimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239036310502" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741717395">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1174387394067">
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239036315987" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703573">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1194003500823">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1194007702067">
      <property name="role" nameId="tpce.1071599776563" value="schedulePeriod" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1194006427224" resolveInfo="SchedulePeriod" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1194007893424">
      <property name="role" nameId="tpce.1071599776563" value="month" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1194005944850" resolveInfo="Month" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1194007836084">
      <property name="name" nameId="tpck.1169194664001" value="second" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004752522" resolveInfo="ZeroSixtyInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1194007839276">
      <property name="name" nameId="tpck.1169194664001" value="minute" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004752522" resolveInfo="ZeroSixtyInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1194007847131">
      <property name="name" nameId="tpck.1169194664001" value="hour" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004947075" resolveInfo="ZeroTwentyFourInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1194007857175">
      <property name="name" nameId="tpck.1169194664001" value="dayOfWeek" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194005227362" resolveInfo="DayOfWeek" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1194007870973">
      <property name="name" nameId="tpck.1169194664001" value="dayOfMonth" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194005562740" resolveInfo="OneThirtyOneInteger" />
    </node>
  </root>
  <root id="1194004752522" />
  <root id="1194004947075" />
  <root id="1194005227362">
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005227363">
      <property name="internalValue" nameId="tpce.1083923523171" value="SUN" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Sunday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005250369">
      <property name="internalValue" nameId="tpce.1083923523171" value="MON" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Monday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005256642">
      <property name="internalValue" nameId="tpce.1083923523171" value="TUE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Tuesday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005260323">
      <property name="internalValue" nameId="tpce.1083923523171" value="THU" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Thursday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005264365">
      <property name="internalValue" nameId="tpce.1083923523171" value="WED" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Wednesday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005273661">
      <property name="internalValue" nameId="tpce.1083923523171" value="FRI" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Friday" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1194005281470">
      <property name="internalValue" nameId="tpce.1083923523171" value="SAT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Saturday" />
    </node>
  </root>
  <root id="1194005562740" />
  <root id="1207143297026">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1207143609180">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="leftValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1207143609181">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rightValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239027476054" />
  </root>
  <root id="1207222873197">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1207222904240">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="leftValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1207222904241">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rightValue" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1239027481476" />
  </root>
  <root id="1209035204722">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1209035280779">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
  </root>
  <root id="1209035760903">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1209035773277">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
  </root>
  <root id="1209036122468" />
  <root id="1209036143519" />
  <root id="1209036309347">
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="3931616304474476229" />
  </root>
  <root id="1209036325551" />
  <root id="1209036336317">
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="3931616304474476228" />
  </root>
  <root id="1209039739631">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1209039739637">
      <property name="role" nameId="tpce.1071599776563" value="dateTimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
  </root>
  <root id="1238088288461" />
  <root id="1238248029297">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1238248060720">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="leftExpression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1238248060893">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rightExpression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="1238248680491" />
  <root id="1238248707649" />
  <root id="1238513516532" />
  <root id="1238513709008" />
  <root id="1238514419896" />
  <root id="1238514476665" />
  <root id="1238855581199">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1238855978597">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="string" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="1195930031035471008" />
  </root>
  <root id="1239015860192">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239015906660">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="zone" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1238668259228" resolveInfo="DateTimeZone" />
    </node>
  </root>
  <root id="1239019022206">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239019204488">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="string" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="1239036439524">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239209522682">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239036706289">
      <property name="role" nameId="tpce.1071599776563" value="datetimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239037593439">
      <property name="name" nameId="tpck.1169194664001" value="absolute" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="276836602888578295" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741646595">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1239193939163">
    <node role="conceptLinkDeclaration" roleId="tpce.1137532086877" type="tpce.ReferenceConceptLinkDeclaration" typeId="tpce.1105741578420" id="1239206707675">
      <property name="name" nameId="tpck.1169194664001" value="defaultDatetimeProperty" />
      <link role="targetType" roleId="tpce.1105736621938" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="3044950653914717021" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.MigratedToMethodAnnotation" typeId="tpce.8080932314785812236" id="3044950653914717020">
        <link role="method" roleId="tpce.8080932314785812847" targetNodeId="tp76.3044950653914717024" resolveInfo="getDefaultDatetimeProperty" />
      </node>
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239198287872">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="operation" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1081773326031" resolveInfo="BinaryOperation" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239193967166">
      <property name="role" nameId="tpce.1071599776563" value="datetimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
  </root>
  <root id="1892577441204578414">
    <node role="conceptPropertyDeclaration" roleId="tpce.1137467167200" type="tpce.StringConceptPropertyDeclaration" typeId="tpce.1105725281956" id="7678715681280028185">
      <property name="name" nameId="tpck.1169194664001" value="defaultKeyword" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="4694041203278846461" />
      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.MigratedToMethodAnnotation" typeId="tpce.8080932314785812236" id="4694041203278846460">
        <link role="method" roleId="tpce.8080932314785812847" targetNodeId="tp76.1262430001741498121" resolveInfo="getDefaultKeyword" />
      </node>
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1892577441204578966">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2583319411283206774">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1892577441204578449">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="source" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2583319411283206775">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="zone" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7678715681280019206">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="default" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="tpce.1224240836180" id="3394771273339504217" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703286">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="4555537781927648369">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4555537781927678418">
      <property name="name" nameId="tpck.1169194664001" value="timezone_id" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741646651">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="5473692278135631085">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5473692278135819455">
      <property name="name" nameId="tpck.1169194664001" value="offsetmillis" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741717271">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="1195930031035447613" />
  <root id="2639623922402691276">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2639623922402691278">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2639623922402691641">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="timezone" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="6626410111395870949">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
  </root>
  <root id="4389880778953634893">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4389880778953634897">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4389880778953634898">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4389880778953634894">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="source" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4389880778953634895">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="zone" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4389880778953634896">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="default" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7499037524191428324">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
  </root>
  <root id="5034322243092296606">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243092298627">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="dateFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1173884671039" resolveInfo="IDateFormat" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243092298628">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243092298623">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5034322243092301678">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
  </root>
  <root id="5034322243093083314">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243093093771">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243093093769">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5034322243093093770">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="formatToken" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1169495337236" resolveInfo="FormatToken" />
    </node>
  </root>
  <root id="3931616304474644667" />
  <root id="5372916090361181333">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5372916090361181335">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
  </root>
  <root id="276836602888578296">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="276836602888578302">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="datetimeProperty" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="276836602888578300">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="datetime" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="779372288056193783">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="779372288056193790">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="timezone" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="779372288056193789">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="month" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1194005944850" resolveInfo="Month" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="779372288056193784">
      <property name="name" nameId="tpck.1169194664001" value="second" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004752522" resolveInfo="ZeroSixtyInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="779372288056193785">
      <property name="name" nameId="tpck.1169194664001" value="minute" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004752522" resolveInfo="ZeroSixtyInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="779372288056193786">
      <property name="name" nameId="tpck.1169194664001" value="hour" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194004947075" resolveInfo="ZeroTwentyFourInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="779372288056193787">
      <property name="name" nameId="tpck.1169194664001" value="day" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1194005562740" resolveInfo="OneThirtyOneInteger" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="779372288056193788">
      <property name="name" nameId="tpck.1169194664001" value="year" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="779372288056821938">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
  </root>
  <root id="34521615669572115">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="34521615669572119">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="format" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.34521615669325562" resolveInfo="IPeriodFormat" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="34521615669572120">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="34521615669572118">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="period" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="34521615669572117">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1201183863028" resolveInfo="TypeDerivable" />
    </node>
  </root>
  <root id="48671598477573965">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="48671598477578849">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="token" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="48671598477578848" resolveInfo="PeriodFormatToken" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="48671598477578846">
      <property name="name" nameId="tpck.1169194664001" value="visibility" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1173975646059" resolveInfo="DateFormatVisibility" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="48671598477573977">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tp6p.34521615669325562" resolveInfo="IPeriodFormat" />
    </node>
  </root>
  <root id="48671598477578848" />
  <root id="48671598477581889">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="48671598477581894">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root id="48671598477850406">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="48671598477850408">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="periodFormat" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="48671598477573965" resolveInfo="PeriodFormat" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="48671598477850407">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root id="7249953535157196261">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871703912302">
      <property name="name" nameId="tpck.1169194664001" value="prefix" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871703912303">
      <property name="name" nameId="tpck.1169194664001" value="prefixPlural" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871703912304">
      <property name="name" nameId="tpck.1169194664001" value="suffix" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871703912305">
      <property name="name" nameId="tpck.1169194664001" value="suffixPlural" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871703912306">
      <property name="name" nameId="tpck.1169194664001" value="minDigits" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1778677549314158601">
      <property name="name" nameId="tpck.1169194664001" value="zeroHandling" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1778677549314158595" resolveInfo="PeriodZeroHandlingKind" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7249953535157223265">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="property" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172074318583" resolveInfo="DateTimeProperty" />
    </node>
  </root>
  <root id="7249953535157212421">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7249953535157212422">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="format" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.34521615669325562" resolveInfo="IPeriodFormat" />
    </node>
  </root>
  <root id="5581663871702358898">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871702358907">
      <property name="name" nameId="tpck.1169194664001" value="kind" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="5581663871702358901" resolveInfo="PeriodSeparatorKind" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871702358899">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5581663871702358900">
      <property name="name" nameId="tpck.1169194664001" value="lastText" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root id="5581663871702358901">
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="5581663871702358902">
      <property name="internalValue" nameId="tpce.1083923523171" value="default" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="DEFAULT" />
      <property name="externalValue" nameId="tpce.1083923523172" value="both" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="5581663871702358905">
      <property name="internalValue" nameId="tpce.1083923523171" value="ifBefore" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="IFBEFORE" />
      <property name="externalValue" nameId="tpce.1083923523172" value="left" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="5581663871702358906">
      <property name="internalValue" nameId="tpce.1083923523171" value="ifAfter" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="IFAFTER" />
      <property name="externalValue" nameId="tpce.1083923523172" value="right" />
    </node>
  </root>
  <root id="1778677549314158595">
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1778677549314158596">
      <property name="internalValue" nameId="tpce.1083923523171" value="always" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="ALWAYS" />
      <property name="externalValue" nameId="tpce.1083923523172" value="always" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1778677549314158597">
      <property name="internalValue" nameId="tpce.1083923523171" value="ifSupported" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="IFSUPPORTED" />
      <property name="externalValue" nameId="tpce.1083923523172" value="if supported" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1778677549314158598">
      <property name="internalValue" nameId="tpce.1083923523171" value="never" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="NEVER" />
      <property name="externalValue" nameId="tpce.1083923523172" value="never" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1778677549314158599">
      <property name="internalValue" nameId="tpce.1083923523171" value="rarelyFirst" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="RARELY_FIRST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="rarely first" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1778677549314158600">
      <property name="internalValue" nameId="tpce.1083923523171" value="rarelyLast" />
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="RARELY_LAST" />
      <property name="externalValue" nameId="tpce.1083923523172" value="rarely last" />
    </node>
  </root>
  <root id="5293902215864051658">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5293902215864051659">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
  </root>
  <root id="5293902215864689835">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5293902215864942486">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="locale" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tp6p.1172680728258" resolveInfo="Locale" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5293902215864698564">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="instant" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5293902215864689837">
      <property name="name" nameId="tpck.1169194664001" value="property" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5293902215864689836">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpee.1197027803184" resolveInfo="IOperation" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1262430001741703173">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root id="5293902215865424196" />
  <root id="2226821765371868198">
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="2226821765371874715">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" roleId="tpce.1105736901241" type="tp6x.DateTimeType" typeId="1171902375079" id="2226821765371874716" />
    </node>
  </root>
</model>

