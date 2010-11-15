<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895903d7(jetbrains.mps.baseLanguage.dates.generator.baseLanguage.template.main@generator)">
  <persistence version="7" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="aee9cad2-acd4-4608-aef2-0004f6a1cdbd(jetbrains.mps.lang.actions)" />
  <language namespace="cccc689c-f365-4862-a8b6-34ecddf8ee26(jetbrains.mps.baseLanguage.dates)" />
  <language namespace="1991585e-225e-4371-977a-68a7888adae2(jetbrains.mps.baseLanguage.datesInternal)" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <import index="yvl0" modelUID="r:00000000-0000-4000-0000-011c895903d5(jetbrains.mps.baseLanguage.dates.structure)" version="1" />
  <import index="yvor" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="3" />
  <import index="yvnu" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="977b" modelUID="f:java_stub#org.joda.time.format(org.joda.time.format@java_stub)" version="-1" />
  <import index="yjwb" modelUID="f:java_stub#java.util(java.util@java_stub)" version="-1" />
  <import index="vhgx" modelUID="f:java_stub#java.lang(java.lang@java_stub)" version="-1" />
  <import index="yvky" modelUID="r:00000000-0000-4000-0000-011c895903d8(jetbrains.mps.baseLanguage.dates.generator.baseLanguage.template.util)" version="-1" />
  <import index="yjvv" modelUID="f:java_stub#org.joda.time(org.joda.time@java_stub)" version="-1" />
  <import index="i9z8" modelUID="f:java_stub#org.joda.time.base(org.joda.time.base@java_stub)" version="-1" />
  <import index="yvl4" modelUID="r:00000000-0000-4000-0000-011c895903cd(jetbrains.mps.baseLanguage.dates.actions)" version="-1" />
  <import index="yvkw" modelUID="r:00000000-0000-4000-0000-011c895903dd(jetbrains.mps.baseLanguage.datesInternal.structure)" version="3" />
  <import index="yvl5" modelUID="r:00000000-0000-4000-0000-011c895903ce(jetbrains.mps.baseLanguage.dates.behavior)" version="-1" />
  <import index="yvou" modelUID="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" version="-1" />
  <import index="x4kc" modelUID="f:java_stub#jetbrains.mps.baseLanguage.dates.runtime(jetbrains.mps.baseLanguage.dates.runtime@java_stub)" version="-1" />
  <import index="57kc" modelUID="f:java_stub#jetbrains.mps.baseLanguage.dates.runtime.table(jetbrains.mps.baseLanguage.dates.runtime.table@java_stub)" version="-1" />
  <import index="8n6q" modelUID="f:java_stub#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="yvkz" modelUID="r:00000000-0000-4000-0000-011c895903da(jetbrains.mps.baseLanguage.datesInternal.behavior)" version="-1" />
  <import index="yvp6" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <import index="yvim" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="yvix" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="yviq" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="yvp3" modelUID="r:00000000-0000-4000-0000-011c895902f3(jetbrains.mps.lang.generator.generationContext.structure)" version="0" implicit="yes" />
  <import index="yvko" modelUID="r:00000000-0000-4000-0000-011c895903ac(jetbrains.mps.baseLanguageInternal.structure)" version="1" implicit="yes" />
  <import index="yvo4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="yvl1" modelUID="r:00000000-0000-4000-0000-011c895903d7(jetbrains.mps.baseLanguage.dates.generator.baseLanguage.template.main@generator)" version="-1" implicit="yes" />
  <roots>
    <node type="yvp6.MappingConfiguration" typeId="yvp6.1095416546421:2" id="1169550125892">
      <property name="name" nameId="yvnu.1169194664001:0" value="main" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1169550327580">
      <property name="name" nameId="yvnu.1169194664001:0" value="FormatTable" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169551475383">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateFormat" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169487448949:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169553961768">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_LiteralFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169495318439:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169558091454">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_FormatExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169557513226:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169630265920">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_NowExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169630122569:1" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1169638264524">
      <property name="name" nameId="yvnu.1169194664001:0" value="ConditionalDateTimePrinterImpl" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169646919575">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ReferenceFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169563273551:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1169647821783">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConditionalFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169562965517:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172068095799">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeType" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1171902375079:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172145375222">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeCompareOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172074800504:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172326347243">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_RoundDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.round" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172324086632:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172327129404">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_FloorDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.round" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172325083904:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172327149445">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_CeilingDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.round" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172325617850:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172332406179">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeWithPropertyOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172331114860:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172489369985">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodType" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172487727591:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172492017024">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172489559047:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172499604795">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PlusExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.arithmetic" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvor.1068581242875:3" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172501993121">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_MinusExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.arithmetic" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvor.1068581242869:3" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1172684437748">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_FixedLocaleFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1172679701720:1" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="1173885209754">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_IDateFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1173885253101">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateFormat_IDateFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1169487448949:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1173885363705">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PredefinedDateFormat_IDateFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvkw.1173883503931:3" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1173967707012">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimePropertyFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1173959836330:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1174045772633">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_InlineFormatExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1174039789930:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1174322757200">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeOffsetFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1174317913525:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1174322924465">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DurationTypeReference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.token" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1174320869813:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1174385195181">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeMinusOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1174386108135:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1174390375904">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_AbsDateTimeMinusOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1174387394067:1" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1207144894043">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimePlusPeriodOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1207143297026:1" resolveInfo="DateTimePlusPeriodOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1207223181393">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeMinusPeriodOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1207222873197:1" resolveInfo="DateTimeMinusPeriodOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037407602">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_NullOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209036143519:1" resolveInfo="NullOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037432960">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_NotNullOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209036122468:1" resolveInfo="NotNullOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037487736">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConvertToDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209035204722:1" resolveInfo="ConvertToDateTimeOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037512244">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConvertToJavaCalendarOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209036309347:1" resolveInfo="ConvertToJavaCalendarOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037539138">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConvertToJavaDateOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209036325551:1" resolveInfo="ConvertToJavaDateOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209037556127">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConvertToJodaDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209036336317:1" resolveInfo="ConvertToJodaDateTimeOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1209039909796">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimePropetyReferenceOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1209039739631:1" resolveInfo="DateTimePropetyReferenceOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238088433863">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_NeverExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238088288461:1" resolveInfo="NeverExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238249953442">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_MathDateTimeOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.math" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238248029297:1" resolveInfo="MathDateTimeOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238513572309">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeZoneType" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238513516532:1" resolveInfo="TimeZoneType" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238514665489">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_UTCTimeZoneConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238514476665:1" resolveInfo="UTCTimeZoneConstant" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238514756824">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DefaultTimeZoneConstant" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238514419896:1" resolveInfo="DefaultTimeZoneConstant" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1238857203188">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeZoneCreator" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1238855581199:1" resolveInfo="DateTimeZoneCreator" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1239804357845">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_WithPropertyCompareExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1239193939163:1" resolveInfo="WithPropertyCompareExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1239804842313">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodInPropertyOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1239036439524:1" resolveInfo="PeriodInPropertyOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="4396211440736525363">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_BinaryCompareOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvor.1081773326031:3" resolveInfo="BinaryOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="2583319411283203429">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ParseExpression" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1892577441204578414:1" resolveInfo="ParseExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="7517433918793153488">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeZoneIDExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.4555537781927648369:1" resolveInfo="TimeZoneIDExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="8625920436392689293">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeZoneOffsetExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5473692278135631085:1" resolveInfo="TimeZoneOffsetExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1195930031035447618">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DateTimeWithTZType" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1195930031035447613:1" resolveInfo="DateTimeWithTZType" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="6626410111396109619">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_InTimezoneExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.2639623922402691276:1" resolveInfo="InTimezoneExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5969170299421360921">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodCompareOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvor.1081773326031:3" resolveInfo="BinaryOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="4389880778953638912">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ParseDateTimeExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.4389880778953634893:1" resolveInfo="ParseDateTimeExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5034322243092302197">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_FormatDateTimeExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5034322243092296606:1" resolveInfo="FormatDateTimeExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="194163770812053449">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_InlineFormatDateTimeExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5034322243093083314:1" resolveInfo="InlineFormatDateTimeExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="3931616304474644672">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DurationType" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.3931616304474644667:1" resolveInfo="DurationType" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5372916090361183394">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ConvertToDurationOperation" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5372916090361181333:1" resolveInfo="ConvertToDurationOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="8253375325060753917">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DurationCompareOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.compare" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvor.1081773326031:3" resolveInfo="BinaryOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="276836602888578412">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodInPropertyExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.276836602888578296:1" resolveInfo="PeriodInPropertyExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1548440323223124156">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DurationInPropertyOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="deprecated" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1239036439524:1" resolveInfo="PeriodInPropertyOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="3627207017677900774">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_DurationInPropertyExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.276836602888578296:1" resolveInfo="PeriodInPropertyExpression" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="3394771273339689767">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_ScheduleLiteral" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.1194003500823:1" resolveInfo="ScheduleLiteral" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="779372288056195858">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeConstant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.779372288056193783:1" resolveInfo="TimeConstant" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="34521615669576970">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_FormatPeriodExpression" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.34521615669572115:1" resolveInfo="FormatPeriodExpression" />
    </node>
    <node type="yvp6.TemplateSwitch" typeId="yvp6.1112730859144:2" id="1379098806890585667">
      <property name="name" nameId="yvnu.1169194664001:0" value="switch_IPeriodFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="1379098806890585748">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PredefinedPeriodFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvkw.34521615669325565:3" resolveInfo="PredefinedPeriodFormat" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="48671598477581907">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodLiteralFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.48671598477581889:1" resolveInfo="PeriodLiteralFormatToken" />
    </node>
    <node type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="48671598477852545">
      <property name="name" nameId="yvnu.1169194664001:0" value="PeriodFormatTable" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="48671598477852583">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodFormat" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5074955036991702210">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodFormat_IPeriodFormat_reference" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="7249953535157218364">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodReferenceFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.7249953535157212421:1" resolveInfo="PeriodReferenceFormatToken" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="7249953535157223315">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodPropertyFormatToken" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.7249953535157196261:1" resolveInfo="PeriodPropertyFormatToken" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5581663871702930719">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_PeriodSeparatorFormatToken" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5581663871702358898:1" resolveInfo="PeriodSeparatorFormatToken" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5293902215864075092">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeZoneIdOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5293902215864051658:1" resolveInfo="TimeZoneIdOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5293902215864689842">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_TimeZoneNameOperation" />
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5293902215864689835:1" resolveInfo="TimeZoneNameOperation" />
    </node>
    <node type="yvp6.TemplateDeclaration" typeId="yvp6.1092059087312:2" id="5293902215865431555">
      <property name="name" nameId="yvnu.1169194664001:0" value="reduce_AllTimeZonesConstant" />
      <link role="applicableConcept" roleId="yvp6.1168285871518:2" targetNodeId="yvl0.5293902215865424196:1" resolveInfo="AllTimeZonesConstant" />
    </node>
  </roots>
  <root id="1169550125892">
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1169550186237">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169481390637:1" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1169550327580" resolveInfo="FormatTable" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475877847" resolveInfo="FormatTableClass" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="48671598477864248">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.48671598477850406:1" resolveInfo="PeriodFormatsTable" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="48671598477852545" resolveInfo="PeriodFormatTable" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="48671598477864249" resolveInfo="PeriodFormatTableClass" />
    </node>
    <node role="rootMappingRule" roleId="yvp6.1167514678247:2" type="yvp6.Root_MappingRule" typeId="yvp6.1167514355419:2" id="1169638626487">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169562965517:1" />
      <link role="template" roleId="yvp6.1167514355421:2" targetNodeId="1169638264524" resolveInfo="ConditionalDateTimePrinterImpl" />
      <link role="labelDeclaration" roleId="yvp6.1200917515464:2" targetNodeId="1215475953144" resolveInfo="ConditionalDateTimePrinterImpl" />
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1174390403741">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1174387394067:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1174390411618">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1174390375904" resolveInfo="reduce_AbsDateTimeMinusOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172327176299">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172325617850:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172327185506">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172327149445" resolveInfo="reduce_CeilingDateTimeOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169648032397">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169562965517:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193303">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169647821783" resolveInfo="reduce_ConditionalFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169553931860">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169487448949:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193304">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169551475383" resolveInfo="reduce_DateFormat" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172157950348">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172074800504:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172157960381">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172145375222" resolveInfo="reduce_DateTimeCompareOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1174390416713">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1174386108135:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1174390435637">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1174385195181" resolveInfo="reduce_DateTimeMinusOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1174323011326">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1174317913525:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1174323027703">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1174322757200" resolveInfo="reduce_DateTimeOffsetFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1173968024159">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1173959836330:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1173968036489">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1173967707012" resolveInfo="reduce_DateTimePropertyFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209039938581">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209039739631:1" resolveInfo="DateTimePropetyReferenceOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209039942636">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209039909796" resolveInfo="reduce_DateTimePropetyReferenceOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1239805107284">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1239036439524:1" resolveInfo="PeriodInPropertyOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineSwitch_RuleConsequence" typeId="yvp6.1195158154974:2" id="1548440323223124132">
        <node role="defaultConsequence" roleId="yvp6.1195158241124:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1548440323223124155">
          <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1239804842313" resolveInfo="reduce_PeriodInPropertyOperation" />
        </node>
        <node role="case" roleId="yvp6.1195158408710:2" type="yvp6.InlineSwitch_Case" typeId="yvp6.1195158388553:2" id="1548440323223124134">
          <node role="conditionFunction" roleId="yvp6.1195158608805:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1548440323223124135">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124136">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124138">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="1548440323223275426">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1548440323223275429" />
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvo4.CoerceStrongExpression" typeId="yvo4.1178871491133:3" id="1548440323223124139">
                    <node role="pattern" roleId="yvo4.1178870894644:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="1548440323223124153">
                      <property name="name" nameId="yvnu.1169194664001:0" value="durationType" />
                      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.3931616304474644667:1" resolveInfo="DurationType" />
                    </node>
                    <node role="nodeToCoerce" roleId="yvo4.1178870894645:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124148">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124143">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1548440323223124142" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223124147">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvo4.Node_TypeOperation" typeId="yvo4.1176544042499:3" id="1548440323223124152" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="caseConsequence" roleId="yvp6.1195158637244:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1548440323223124206">
            <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1548440323223124156" resolveInfo="reduce_DurationInPropertyOperation" />
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="276836602888578409">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.276836602888578296:1" resolveInfo="PeriodInPropertyExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineSwitch_RuleConsequence" typeId="yvp6.1195158154974:2" id="3627207017677899542">
        <node role="defaultConsequence" roleId="yvp6.1195158241124:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="3627207017677899544">
          <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="276836602888578412" resolveInfo="reduce_PeriodInPropertyExpression" />
        </node>
        <node role="case" roleId="yvp6.1195158408710:2" type="yvp6.InlineSwitch_Case" typeId="yvp6.1195158388553:2" id="3627207017677899545">
          <node role="conditionFunction" roleId="yvp6.1195158608805:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="3627207017677899546">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017677899547">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017677899549">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotEqualsExpression" typeId="yvor.1073239437375:3" id="3627207017677900835">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="3627207017677900838" />
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvo4.CoerceStrongExpression" typeId="yvo4.1178871491133:3" id="3627207017677899550">
                    <node role="pattern" roleId="yvo4.1178870894644:3" type="yvo4.ConceptReference" typeId="yvo4.1174642788531:3" id="3627207017677900773">
                      <property name="name" nameId="yvnu.1169194664001:0" value="durationType" />
                      <link role="concept" roleId="yvo4.1174642800329:3" targetNodeId="yvl0.3931616304474644667:1" resolveInfo="DurationType" />
                    </node>
                    <node role="nodeToCoerce" roleId="yvo4.1178870894645:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900768">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677899554">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017677899553" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900767">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578300:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvo4.Node_TypeOperation" typeId="yvo4.1176544042499:3" id="3627207017677900772" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="caseConsequence" roleId="yvp6.1195158637244:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="3627207017677900834">
            <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="3627207017677900774" resolveInfo="reduce_DurationInPropertyExpression" />
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1239804634734">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1239193939163:1" resolveInfo="WithPropertyCompareExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1239804642158">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1239804357845" resolveInfo="reduce_WithPropertyCompareExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172332503768">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172331114860:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172332516222">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172332406179" resolveInfo="reduce_DateTimeWithPropertyOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209036443944">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1197027756228:3" resolveInfo="DotExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1209036472562">
        <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1209036479776">
          <property name="value" nameId="yvor.1070475926801:3" value="operation" />
          <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209036487953">
            <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209036487954">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209036487955">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209036493235">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209036494567">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209036493236" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209036497255">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1197027833540:3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1209036456845">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209036456846">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1209039964796">
            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1209039964797">
              <property name="name" nameId="yvnu.1169194664001:0" value="result" />
              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.BooleanType" typeId="yvor.1070534644030:3" id="1209039964798" />
              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039964799">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039964800">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209039964801" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209039964802">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1197027833540:3" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="1209039964803">
                  <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1209039964804">
                    <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.1209035760903:1" resolveInfo="DateTimeOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209036460210">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1209039970924">
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1209039970925">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039970926">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039970927">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209039970928" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209039970929">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1197027833540:3" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="1209039970930">
                    <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1209039970931">
                      <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.1209035204722:1" resolveInfo="ConvertToDateTimeOperation" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209039970932">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
                </node>
              </node>
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209039972922">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209039975228">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1209039975229">
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1209039975230">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039975231">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039975232">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209039975233" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209039975234">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1197027833540:3" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="1209039975235">
                    <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1209039983377">
                      <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.1209039739631:1" resolveInfo="DateTimePropetyReferenceOperation" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209039975237">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
                </node>
              </node>
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209039975238">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060635540">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="8253375325060635542">
              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="8253375325060635546">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8253375325060636758">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8253375325060635550">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060635549" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8253375325060636757">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1197027833540:3" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsInstanceOfOperation" typeId="yvim.1139621453865:16" id="8253375325060636762">
                    <node role="conceptArgument" roleId="yvim.1177027386292:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="8253375325060636764">
                      <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.5372916090361181333:1" resolveInfo="ConvertToDurationOperation" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8253375325060635545">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
                </node>
              </node>
              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="8253375325060635541">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209039988643">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209039988644">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209039964797" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238250105763">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238248029297:1" resolveInfo="MathDateTimeOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238250177344">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238249953442" resolveInfo="reduce_MathDateTimeOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1174322992557">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1174320869813:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1174323001622">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1174322924465" resolveInfo="reduce_DurationTypeReference" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172684687695">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172679701720:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172684696275">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172684437748" resolveInfo="reduce_FixedLocaleFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1174047532748">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1174039789930:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1174047541327">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1174045772633" resolveInfo="reduce_InlineFormatExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037371220">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209036143519:1" resolveInfo="NullOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037454404">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037407602" resolveInfo="reduce_NullOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037458938">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209036122468:1" resolveInfo="NotNullOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037466231">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037432960" resolveInfo="reduce_NotNullOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="4396211440736525361">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="4396211440736525471">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="4396211440736525363" resolveInfo="reduce_BinaryCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="4396211440736617751">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4396211440736617752">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4396211440736619838">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="796336488935607846">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935609982">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="796336488935609987">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935609991">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935609993">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935609992" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935609997">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935609973">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935609975">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935609974" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935609979">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935607844">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="4396211440736620935">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4396211440736620939">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4396211440736620941">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4396211440736620940" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4396211440736620945">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4396211440736619840">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4396211440736619842">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4396211440736619841" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4396211440736620934">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="4396211440736688433">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1068580123152:3" resolveInfo="EqualsExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="4396211440736690520">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="4396211440736525363" resolveInfo="reduce_BinaryCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="4396211440736691617">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4396211440736691618">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421360877">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="5969170299421360878">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="5969170299421360879">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5969170299421360880">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360881">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360882">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360883" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360884">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360885">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360886">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360887" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360888">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="5969170299421360889">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5969170299421360890">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360891">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360892">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360893" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360894">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360895">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360896">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360897" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360898">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="4396211440736688435">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1073239437375:3" resolveInfo="NotEqualsExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="4396211440736690521">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="4396211440736525363" resolveInfo="reduce_BinaryCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="4396211440736691629">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4396211440736691630">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421360899">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="5969170299421360900">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="5969170299421360901">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5969170299421360902">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360903">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360904">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360905" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360906">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360907">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360908">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360909" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360910">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="5969170299421360911">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5969170299421360912">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360913">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360914">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360915" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360916">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421360917">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421360918">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421360919" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421360920">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172503862970">
      <property name="applyToConceptInheritors" nameId="yvp6.1167272244852:2" value="true" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5969170299421364317">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5969170299421360921" resolveInfo="reduce_PeriodCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1172503862972">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172503862973">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1175770353881">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172503862975">
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" />
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175770638027" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172503862977" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172503849917">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1073239437375:3" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5969170299421364322">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5969170299421360921" resolveInfo="reduce_PeriodCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1172503849919">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172503849920">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1175770350364">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172503849922">
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" />
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175770638027" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1175770770140" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172503772650">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1068580123152:3" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5969170299421364321">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5969170299421360921" resolveInfo="reduce_PeriodCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1172503815482">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172503815483">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1175770345018">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172503838940">
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" />
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175770638027" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172503841769" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8253375325060749422">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1239448985469:3" resolveInfo="BinaryCompareOperation" />
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="8253375325060751596">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060751597">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060751598">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325060753915">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.8253375325060752624" resolveInfo="isInstanceOfDurationCompare" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060753916" />
            </node>
          </node>
        </node>
      </node>
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8253375325060753919">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8253375325060753917" resolveInfo="reduce_DurationCompareOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8253375325061002871">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1068580123152:3" resolveInfo="EqualsExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8253375325061005050">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8253375325060753917" resolveInfo="reduce_DurationCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="8253375325061005045">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325061005046">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325061005047">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325061005048">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.8253375325060752624" resolveInfo="isInstanceOfDurationCompare" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325061005049" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8253375325061005051">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1073239437375:3" resolveInfo="NotEqualsExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8253375325061005058">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8253375325060753917" resolveInfo="reduce_DurationCompareOperation" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="8253375325061005053">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325061005054">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325061005055">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325061005056">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.8253375325060752624" resolveInfo="isInstanceOfDurationCompare" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325061005057" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172327191540">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172325083904:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172327199809">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172327129404" resolveInfo="reduce_FloorDateTimeOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169558634212">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169557513226:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193305">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169558091454" resolveInfo="reduce_FormatExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="2583319411283315500">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1892577441204578414:1" resolveInfo="ParseExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="2583319411283315502">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="2583319411283203429" resolveInfo="reduce_ParseExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169554290182">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169495318439:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193307">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169553961768" resolveInfo="reduce_LiteralFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172068221448">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1171902375079:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172068234715">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172068095799" resolveInfo="reduce_DateTimeType" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238513646678">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238513516532:1" resolveInfo="TimeZoneType" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238513655445">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238513572309" resolveInfo="reduce_TimeZoneType" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238857546423">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238855581199:1" resolveInfo="DateTimeZoneCreator" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238857562894">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238857203188" resolveInfo="reduce_DateTimeZoneCreator" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1239016262751">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1239015860192:1" resolveInfo="ConstantTimeZoneRef" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1239016276371">
        <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239803847618">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dforID(java%dlang%dString)%corg%djoda%dtime%dDateTimeZone" resolveInfo="forID" />
          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1239803853134">
            <property name="value" nameId="yvor.1070475926801:3" value="null" />
            <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1239803858260">
              <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1239803858261">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239803858262">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239803860872">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239803867670">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239803861531">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239803860873" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239803866373">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015906660:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239803870768">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvkz.1239362726615" resolveInfo="getID" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1239019388951">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1239019022206:1" resolveInfo="TimeZoneFromString" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1239019403065">
        <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239019420231">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dforID(java%dlang%dString)%corg%djoda%dtime%dDateTimeZone" resolveInfo="forID" />
          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239019423842">
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239019427640">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239019427641">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239019427642">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239019430362">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239019430677">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239019430363" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239019432993">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239019204488:1" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172502148294">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1068581242869:3" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1241180849295">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172501993121" resolveInfo="reduce_MinusPeriodExpression" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1172502299366">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172502299367">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1241184059452">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1241184059453">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1241184110348">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1241184112741">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1241184126853">
              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="2890840340813213057">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="2890840340813215184">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2890840340813215186">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2890840340813215185" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2890840340813216393">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="5372916090360668566">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5372916090360670742">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5372916090360668547" resolveInfo="isInstanceOfDuration" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360670744">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360670743" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360670748">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1241184126854">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1241184126855">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1172502164823" resolveInfo="isInstanceOfPeriod" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1241184126856">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1241184126857" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1241184126858">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1241184137377">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1241184137378">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1241184137379" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1241184147339">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1241184131457">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1241184131458">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1241184131459">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1241184131460">
                  <property name="value" nameId="yvor.1068580123138:3" value="false" />
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1241184131461">
              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="2890840340813216394">
                <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="2890840340813216398">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2890840340813216400">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2890840340813216399" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="2890840340813216404">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="5372916090360670752">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5372916090360670756">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5372916090360668547" resolveInfo="isInstanceOfDuration" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360670758">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360670757" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360670762">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="1241184131462">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1241184131463">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1172502164823" resolveInfo="isInstanceOfPeriod" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1241184131464">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1241184131465" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1241184151199">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1241184141522">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1241184141523">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1241184141524" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1241184141525">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1241183184668">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1548440323223652830">
              <property name="value" nameId="yvor.1068580123138:3" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169630301108">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169630122569:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193308">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169630265920" resolveInfo="reduce_NowExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238088657574">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238088288461:1" resolveInfo="NeverExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238088664060">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238088433863" resolveInfo="reduce_NeverExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238514737070">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238514476665:1" resolveInfo="UTCTimeZoneConstant" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238514745588">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238514665489" resolveInfo="reduce_UTCTimeZoneConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1238514810443">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1238514419896:1" resolveInfo="DefaultTimeZoneConstant" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1238514819680">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1238514756824" resolveInfo="reduce_DefaultTimeZoneConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172493734522">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172489559047:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172493747175">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172492017024" resolveInfo="reduce_PeriodConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172489440635">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172487727591:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172489449137">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172489369985" resolveInfo="reduce_PeriodType" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1169647534451">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169563273551:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1169834193309">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1169646919575" resolveInfo="reduce_ReferenceFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172502056591">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvor.1068581242875:3" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172502068251">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172499604795" resolveInfo="reduce_PlusPeriodExpression" />
      </node>
      <node role="conditionFunction" roleId="yvp6.1167169362365:2" type="yvp6.BaseMappingRule_Condition" typeId="yvp6.1167168920554:2" id="1172502062514">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172502062515">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1175770388001">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="796336488935541753">
              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935545092">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="796336488935545094">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935545105">
                    <node role="expression" roleId="yvor.1079359253376:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="796336488935545107">
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545098">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545100">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545099" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545104">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545112">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545114">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545113" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545118">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935543880">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1172502164823" resolveInfo="isInstanceOfPeriod" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935543882">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935543881" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545089">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935545119">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="796336488935545120">
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="796336488935545121">
                    <node role="expression" roleId="yvor.1079359253376:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="796336488935545122">
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545123">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.5351757338848079613" resolveInfo="isInstanceOfDatetimeWithTZ" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545124">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545125" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545126">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                          </node>
                        </node>
                      </node>
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.OrExpression" typeId="yvor.1080223426719:3" id="796336488935545127">
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545128">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1172502164823" resolveInfo="isInstanceOfPeriod" />
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545129">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545130" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545131">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                            </node>
                          </node>
                        </node>
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545132">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1175769966456" resolveInfo="isInstanceOfDatetime" />
                          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545133">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545134" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545135">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="796336488935545136">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl4.1172502164823" resolveInfo="isInstanceOfPeriod" />
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvl4.1171978333109" resolveInfo="DateTypeUtil" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="796336488935545137">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="796336488935545138" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="796336488935545139">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
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
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1207144839927">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1207143297026:1" resolveInfo="DateTimePlusPeriodOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1207145546873">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1207144894043" resolveInfo="reduce_DateTimePlusPeriodOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1207224074841">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1207222873197:1" resolveInfo="DateTimeMinusPeriodOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1207224105425">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1207223181393" resolveInfo="reduce_DateTimeMinusPeriodOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1172327205796">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1172324086632:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1172327218300">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1172326347243" resolveInfo="reduce_RoundDateTimeOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037590171">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209036309347:1" resolveInfo="ConvertToJavaCalendarOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037597324">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037512244" resolveInfo="reduce_ConvertToJavaCalendarOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037600805">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209036325551:1" resolveInfo="ConvertToJavaDateOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037607292">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037539138" resolveInfo="reduce_ConvertToJavaDateOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037610312">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209036336317:1" resolveInfo="ConvertToJodaDateTimeOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037616507">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037556127" resolveInfo="reduce_ConvertToJodaDateTimeOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1209037621307">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1209035204722:1" resolveInfo="ConvertToDateTimeOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1209037627527">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1209037487736" resolveInfo="reduce_ConvertToDateTimeOperation" />
      </node>
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215471145996">
      <property name="name" nameId="yvnu.1169194664001:0" value="nm_datetimeConfiguration" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215475877847">
      <property name="name" nameId="yvnu.1169194664001:0" value="FormatTableClass" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvor.1068390468198:3" resolveInfo="ClassConcept" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="48671598477864249">
      <property name="name" nameId="yvnu.1169194664001:0" value="PeriodFormatTableClass" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvor.1068390468198:3" resolveInfo="ClassConcept" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="1215475953144">
      <property name="name" nameId="yvnu.1169194664001:0" value="ConditionalDateTimePrinterImpl" />
    </node>
    <node role="mappingLabel" roleId="yvp6.1200911492601:2" type="yvp6.MappingLabelDeclaration" typeId="yvp6.1200911316486:2" id="930215626861298776">
      <property name="name" nameId="yvnu.1169194664001:0" value="FormatTableName" />
      <link role="targetConcept" roleId="yvp6.1200913004646:2" targetNodeId="yvor.1070462154015:3" resolveInfo="StaticFieldDeclaration" />
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7517433918793153490">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant.timezone" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.4555537781927648369:1" resolveInfo="TimeZoneIDExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7517433918793153491">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="7517433918793153488" resolveInfo="reduce_TimeZoneIDExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="8625920436392689295">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.constant.timezone" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5473692278135631085:1" resolveInfo="TimeZoneOffsetExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="8625920436392689296">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="8625920436392689293" resolveInfo="reduce_TimeZoneOffsetExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1195930031035447615">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1195930031035447613:1" resolveInfo="DateTimeWithTZType" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1195930031035447617">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1195930031035447618" resolveInfo="reduce_DateTimeWithTZType" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="6626410111396109616">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.2639623922402691276:1" resolveInfo="InTimezoneExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="6626410111396109618">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="6626410111396109619" resolveInfo="reduce_InTimezoneExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="4389880778953638909">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.4389880778953634893:1" resolveInfo="ParseDateTimeExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="4389880778953638911">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="4389880778953638912" resolveInfo="reduce_ParseDateTimeExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5034322243092302194">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5034322243092296606:1" resolveInfo="FormatDateTimeExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5034322243092302196">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5034322243092302197" resolveInfo="reduce_FormatDateTimeExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="194163770812053446">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5034322243093083314:1" resolveInfo="InlineFormatDateTimeExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="194163770812053448">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="194163770812053449" resolveInfo="reduce_InlineFormatDateTimeExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="3931616304474644669">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.3931616304474644667:1" resolveInfo="DurationType" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="3931616304474644671">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="3931616304474644672" resolveInfo="reduce_DurationType" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5372916090361183391">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.convert" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5372916090361181333:1" resolveInfo="ConvertToDurationOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5372916090361183393">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5372916090361183394" resolveInfo="reduce_ConvertToDurationOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="3394771273339689764">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant.schedule" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1194003500823:1" resolveInfo="ScheduleLiteral" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="3394771273339689766">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="3394771273339689767" resolveInfo="reduce_ScheduleLiteral" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="779372288056195855">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.779372288056193783:1" resolveInfo="TimeConstant" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="779372288056195857">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="779372288056195858" resolveInfo="reduce_TimeConstant" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="34521615669576967">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.34521615669572115:1" resolveInfo="FormatPeriodExpression" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="34521615669576969">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="34521615669576970" resolveInfo="reduce_FormatPeriodExpression" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="48671598477581904">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.48671598477581889:1" resolveInfo="PeriodLiteralFormatToken" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="48671598477581906">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="48671598477581907" resolveInfo="reduce_PeriodLiteralFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="48671598477852580">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="48671598477852582">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="48671598477852583" resolveInfo="reduce_PeriodFormat" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7249953535157218361">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.7249953535157212421:1" resolveInfo="PeriodReferenceFormatToken" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7249953535157218363">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="7249953535157218364" resolveInfo="reduce_PeriodReferenceFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="7249953535157223312">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.7249953535157196261:1" resolveInfo="PeriodPropertyFormatToken" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="7249953535157223314">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="7249953535157223315" resolveInfo="reduce_PeriodPropertyFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5581663871702930716">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="format.period" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5581663871702358898:1" resolveInfo="PeriodSeparatorFormatToken" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5581663871702930718">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5581663871702930719" resolveInfo="reduce_PeriodSeparatorFormatToken" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5293902215864075089">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5293902215864051658:1" resolveInfo="TimeZoneIdOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5293902215864075091">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5293902215864075092" resolveInfo="reduce_TimeZoneIdOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5293902215864689839">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="operation.property" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5293902215864689835:1" resolveInfo="TimeZoneNameOperation" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5293902215864689841">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5293902215864689842" resolveInfo="reduce_TimeZoneNameOperation" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167328349397:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="5293902215865431552">
      <property name="virtualPackage" nameId="yvnu.1193676396447:0" value="constant" />
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.5293902215865424196:1" resolveInfo="AllTimeZonesConstant" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="5293902215865431554">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5293902215865431555" resolveInfo="reduce_AllTimeZonesConstant" />
      </node>
    </node>
  </root>
  <root id="1169550327580">
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1075917115050079124">
      <property name="name" nameId="yvnu.1169194664001:0" value="INSTANCE" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1075917115050079129" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1075917115050079146">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="1169550327580" resolveInfo="FormatTable" />
      </node>
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1075917115050079131">
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1075917115050079132">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1224665078151" resolveInfo="FormatTable" />
          <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1075917115050079133">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1075917115050079134">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1075917115050079135">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1075917115050215461">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1075917115050215463">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1075917115050215462" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1075917115050215467">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1173786856077">
      <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173786862535">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatter" resolveInfo="DateTimeFormatter" />
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173786856079">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173786885582">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1173786885583">
            <property name="value" nameId="yvor.1070475926801:3" value="Create datetime formatter" />
          </node>
          <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1173786885584">
            <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1173786885585">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173786885586">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173786885587">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227878639">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173786885589" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1173786885590">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1169488417691:1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1173786885591">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1173786885592" />
        </node>
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1173786874942">
        <property name="name" nameId="yvnu.1169194664001:0" value="formatterName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225195485686" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546169698" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1169550327612">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvl0.1169481390637:1" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1169551307708">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169551307709">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169551307710">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169551312112">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227943428">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169551315094" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169551389871">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173785761399">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="57kc.~BaseFormatTable" resolveInfo="BaseFormatTable" />
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550126785" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1224665078151">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="1224665078152" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1224665078153" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224665078154" />
    </node>
  </root>
  <root id="1169551475383">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="1169551499178">
      <property name="name" nameId="yvnu.1169194664001:0" value="FormatTable" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1173784630567">
        <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173784652511">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatter" resolveInfo="DateTimeFormatter" />
        </node>
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173784630569">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1173784640358">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173784640359">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173784640360">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173784640361">
                  <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173784640362">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888413928">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888413930">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%d&lt;init&gt;()" resolveInfo="DateTimeFormatterBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173784640364">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574293">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173784640366">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173784640361" resolveInfo="builder" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574294">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappendPattern(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="appendPattern" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1173784640367">
                      <property name="value" nameId="yvor.1070475926801:3" value="yyyy" />
                    </node>
                  </node>
                </node>
                <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1173784640368">
                  <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1173784640369">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173784640370">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1173784640371">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227880617">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173784640373" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1208987590780">
                            <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1169487470543:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1173784640375">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574518">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173784640377">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173784640361" resolveInfo="builder" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574519">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dtoFormatter()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="toFormatter" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987575017">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1173784640379">
                <property name="value" nameId="yvor.1070475926801:3" value="formatterName" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1173784640380">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1173784640381">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173784640382">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173784640383">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227912769">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173784640385" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1173784640386">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987575018">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1173784667389">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173784661856" resolveInfo="formatterName" />
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1173784640388" />
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1173784640389">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1173784640390" />
          </node>
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1173784661856">
          <property name="name" nameId="yvnu.1169194664001:0" value="formatterName" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225195480109" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546169000" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173784614934">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="57kc.~BaseFormatTable" resolveInfo="BaseFormatTable" />
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550127427" />
    </node>
  </root>
  <root id="1169553961768">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169553982848">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169553982849">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169553995835">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169553995836">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1169553995837">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169554005356">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987576285">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169554005357">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169553995836" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987576286">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappendLiteral(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="appendLiteral" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1169554014611">
                <property name="value" nameId="yvor.1070475926801:3" value="some text" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1169554039164">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169554039165">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169554039166">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169554051433">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227928840">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169554053122" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1169554057718">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1169495350409:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1169554031241" />
        </node>
      </node>
    </node>
  </root>
  <root id="1169558091454">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169558145347">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169558145348">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169558248103">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169558248104">
            <property name="name" nameId="yvnu.1169194664001:0" value="dateTime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172145061464">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173786398171">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1238663921384">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dprint(java%dlang%dLong,org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale,org%djoda%dtime%dDateTimeZone)%cjava%dlang%dString" resolveInfo="print" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238663921385">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169558248104" resolveInfo="dateTime" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1238663921386">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238663921387">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663921388">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1238663921389">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663921390">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663921391" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663921392">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169557612323:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1238663921393">
              <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="1238663921394">
                <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238663921395">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663921396">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663921397">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663921398">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663921399" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663921400">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169557643590:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1238663921401">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1238663921402">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1238663921403">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663921404">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663921405">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663921406">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663921407">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663921408" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663921409">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238661857677:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1238663921410" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1238663921411">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1238663921412" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1238663921413">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238663921414">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663921415">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663921416">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663945917">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663921417">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663921418" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663921419">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238661857677:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663949328">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239017349765">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1239017349766">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1239017349767">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239017349768">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239017349769">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017349770">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017349771">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239017349772" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239017349773">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015930559:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1239017349774" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1239017349775">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239017349776" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239017349777">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239017349778">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239017349779">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239017349780">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017349781">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239017349782" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239017349783">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015930559:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1238663921439" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1169630265920">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172145088010">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~System%dcurrentTimeMillis()%clong" resolveInfo="currentTimeMillis" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~System" resolveInfo="System" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172145090526" />
    </node>
  </root>
  <root id="1169638264524">
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="1169638511242">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.Type" typeId="yvor.1068431790189:3" id="1169638511243" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169638511244" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178546171015" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1169640015979">
      <property name="name" nameId="yvnu.1169194664001:0" value="getPrinterIndex" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169640015980">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169641764872">
          <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169641764873">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169643611354">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1169643611355">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169640039186" resolveInfo="dateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1169643618263">
                <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1169643618264">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169643622549">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169643622550">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169643622551">
                        <property name="name" nameId="yvnu.1169194664001:0" value="statements" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1169643622552">
                          <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123157:3" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227848726">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227939342">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227909656">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169643622556" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1169643625820">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169563469176:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1169643622558">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1137022507850:3" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1208987590827">
                            <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1068581517665:3" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169643622560">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169643622561">
                        <property name="name" nameId="yvnu.1169194664001:0" value="s" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1169643622562">
                          <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123157:3" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1169643622563">
                          <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeListCreator" typeId="yvim.1145567426890:16" id="1169643622564">
                            <node role="createdType" roleId="yvim.1145567471833:16" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1169643622565">
                              <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123157:3" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169643622566">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579170">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622568">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622561" resolveInfo="s" />
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddAllElementsOperation" typeId="yvix.1160666733551:7" id="1169643622569">
                          <node role="argument" roleId="yvix.1160666822012:7" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622570">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622551" resolveInfo="statements" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1169643622571">
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1169643622572">
                        <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579412">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622574">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622561" resolveInfo="s" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsEmptyOperation" typeId="yvix.1165530316231:7" id="1169643622575" />
                        </node>
                      </node>
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169643622576">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169643622577">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579299">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622579">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622561" resolveInfo="s" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.RemoveElementOperation" typeId="yvix.1167380149909:7" id="1169643622580">
                              <node role="argument" roleId="yvix.1167380149910:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579477">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622582">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622561" resolveInfo="s" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetLastOperation" typeId="yvix.1165595910856:7" id="1169643622583" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169643622584">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169643622585">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169643622561" resolveInfo="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1169643636322">
              <node role="condition" roleId="yvor.1068580123160:3" type="yvor.BooleanConstant" typeId="yvor.1068580123137:3" id="1169643642856">
                <property name="value" nameId="yvor.1068580123138:3" value="true" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1169643653530">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1169643653531">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169643653532">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169644696161">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169644696162">
                          <property name="name" nameId="yvnu.1169194664001:0" value="statements" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeListType" typeId="yvim.1145383075378:16" id="1169644696164">
                            <link role="elementConcept" roleId="yvim.1145383142433:16" targetNodeId="yvor.1068580123157:3" />
                          </node>
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227924821">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227888032">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227845998">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169644631219" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1169644639128">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169563469176:1" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1169644640927">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1137022507850:3" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1208987590891">
                              <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1068581517665:3" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169644620948">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169644620949">
                          <property name="name" nameId="yvnu.1169194664001:0" value="e" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1169644620950">
                            <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1068431790191:3" />
                          </node>
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1169644709325" />
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1169644711389">
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1169644730729">
                          <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579234">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169644730731">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169644696162" resolveInfo="statements" />
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.IsEmptyOperation" typeId="yvix.1165530316231:7" id="1169644730732" />
                          </node>
                        </node>
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169644711391">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169644735749">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1169644739204">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169644735750">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169644620949" resolveInfo="e" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227849968">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1169644745865">
                                  <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvor.1068580123155:3" />
                                  <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579606">
                                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169644742580">
                                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169644696162" resolveInfo="statements" />
                                    </node>
                                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetLastOperation" typeId="yvix.1165595910856:7" id="1169644745176" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1169644755758">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1068580123156:3" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="ifFalseStatement" roleId="yvor.1082485599094:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169644760573">
                          <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169644760574">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169644763153">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217973249292">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1217973249294" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_ShowErrorMessage" typeId="yvp3.1217960179967:0" id="1217973249295">
                                  <node role="referenceNode" roleId="yvp3.1217960407512:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169644779139" />
                                  <node role="messageText" roleId="yvp3.1217960314448:0" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1169644782313">
                                    <property name="value" nameId="yvor.1070475926801:3" value="Condition is empty" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169644803226">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169644804759">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169644620949" resolveInfo="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169643636324">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169643656955">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1169643660113">
                    <property name="value" nameId="yvor.1068580320021:3" value="0" />
                    <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1169643667098">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169643667099">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169643667100">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204412036721">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204412058526">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1204412058118" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetIndexInParentOperation" typeId="yvim.1179168000618:16" id="1204412059671" />
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
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1169641843254">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1169641843255">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169641843256">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204412005654">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227933567">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169641849399" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1204412006645">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1169563619049:1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169641767813">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1169641770299">
            <property name="value" nameId="yvor.1068580320021:3" value="-1" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1169640026342" />
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="1169640039186">
        <property name="name" nameId="yvnu.1169194664001:0" value="datetimeToFormat" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1204411722859">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.ProtectedVisibility" typeId="yvor.1146644641414:3" id="1204411701917" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1169639780784">
      <property name="name" nameId="yvnu.1169194664001:0" value="createPrinters" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169639780785">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="2010713081064661653">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="2010713081064661654">
            <property name="name" nameId="yvnu.1169194664001:0" value="printers" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="2010713081064661655">
              <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="2010713081064661656">
                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimePrinter" resolveInfo="DateTimePrinter" />
              </node>
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="2010713081064661657">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="2010713081064663764">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~ArrayList%d&lt;init&gt;(int)" resolveInfo="ArrayList" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="2010713081064663768">
                  <property name="value" nameId="yvor.1068580320021:3" value="2" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="2010713081064663769">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="2010713081064663770">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2010713081064663771">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2010713081064663772">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2010713081064663773">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2010713081064663774">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2010713081064663775" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="2010713081064663776">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1169563619049:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetSizeOperation" typeId="yvix.1162935959151:7" id="2010713081064663777" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="typeParameter" roleId="yvor.1212687122400:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="2010713081064663766">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimePrinter" resolveInfo="DateTimePrinter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173786119508">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204413958652">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1204411917329">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2010713081064661654" resolveInfo="printers" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AddElementOperation" typeId="yvix.1160612413312:7" id="1239016445414">
              <node role="argument" roleId="yvix.1160612519549:7" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239016445415">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1239016445416">
                  <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="1239016445417">
                    <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                    <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239016445418">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239016445419">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239016445420">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239016445421">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239016445422" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239016445423">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169563482193:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1239016445424">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatter%d&lt;init&gt;(org%djoda%dtime%dformat%dDateTimePrinter,org%djoda%dtime%dformat%dDateTimeParser)" resolveInfo="DateTimeFormatter" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239016445425" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239016445426" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1239016445427">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatter%dgetPrinter()%corg%djoda%dtime%dformat%dDateTimePrinter" resolveInfo="getPrinter" />
                </node>
              </node>
            </node>
          </node>
          <node role="nodeMacro$attribute" type="yvp6.LoopMacro" typeId="yvp6.1118786554307:2" id="1173786119534">
            <node role="sourceNodesQuery" roleId="yvp6.1167952069335:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1173786119535">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173786119536">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1204411987020">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227897234">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173786119539" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1204411988364">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1169563619049:1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1204411960616">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1204413956084">
            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2010713081064661654" resolveInfo="printers" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvix.ListType" typeId="yvix.1151688443754:7" id="1239016406711">
        <node role="elementType" roleId="yvix.1151688676805:7" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1239016406712">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimePrinter" resolveInfo="DateTimePrinter" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.ProtectedVisibility" typeId="yvor.1146644641414:3" id="1204411865139" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="1169638277572">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvl0.1169562965517:1" />
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1223457800485">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="x4kc.~ConditionalDateTimePrinter" resolveInfo="ConditionalDateTimePrinter" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1169834230469">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1169834230470">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169834230471">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1075917115049847115">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1075917115049868809">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1075917115049868808" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1075917115049868813">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl5.1075917115049868779" resolveInfo="getClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1178550126660" />
  </root>
  <root id="1169646919575">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169646993416">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169646993417">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169646993418">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169646993419">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1169646993420">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173785798597">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574792">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173785798599">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169646993419" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574793">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappend(org%djoda%dtime%dformat%dDateTimeFormatter)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="append" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1173885683698">
                <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="1173885689637">
                  <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                  <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1173885694529">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173885694530">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173885696687">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227865938">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173885696688" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173885700222">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1169563300146:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1173785798620" />
        </node>
      </node>
    </node>
  </root>
  <root id="1169647821783">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1169647867072">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169647867073">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169647867074">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169647867075">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1169647867076">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1169647867077">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987576556">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169647867079">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169647867075" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987576557">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappend(org%djoda%dtime%dformat%dDateTimePrinter)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="append" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888381186">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888381203">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="1169638511242" resolveInfo="ConditionalDateTimePrinterImpl" />
                  <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1169648061914">
                    <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1169648061915">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1169648061916">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1169648096420">
                          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1169648096421">
                            <property name="name" nameId="yvnu.1169194664001:0" value="cc" />
                            <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1169648096422">
                              <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1068390468198:3" />
                            </node>
                            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1216847348289">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp3.TemplateFunctionParameter_generationContext" typeId="yvp3.1216860049635:0" id="1216867024218" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvp3.GenerationContextOp_GetOutputByLabelAndInput" typeId="yvp3.1216860049627:0" id="1216867011924">
                                <link role="label" roleId="yvp3.1216860049628:0" targetNodeId="1215475953144" resolveInfo="ConditionalDateTimePrinterImpl" />
                                <node role="inputNode" roleId="yvp3.1216860049632:0" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1169648086900" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1169648161253">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987579105">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227943306">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1169648163912">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1169648096421" resolveInfo="cc" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1208987590954">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvor.1068390468201:3" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvix.GetFirstOperation" typeId="yvix.1165525191778:7" id="1169648183527" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1169647867088" />
        </node>
      </node>
    </node>
  </root>
  <root id="1172068095799">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172068210681">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172069544623" />
    </node>
  </root>
  <root id="1172145375222">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1172145395036">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172145395037">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1172155366161">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1172155366162">
            <property name="name" nameId="yvnu.1169194664001:0" value="op1" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172155366163">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1172155369477">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1172155369478">
            <property name="name" nameId="yvnu.1169194664001:0" value="op2" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172155369479">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1172155414907">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1172155414908">
            <property name="name" nameId="yvnu.1169194664001:0" value="cmpType" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172155414909">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1172155447583">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1172155447584">
            <property name="name" nameId="yvnu.1169194664001:0" value="fieldType" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172155447585">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1172155356500">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172155360190">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dcompare(java%dlang%dLong,jetbrains%dmps%dbaseLanguage%ddates%druntime%dCompareType,java%dlang%dLong,org%djoda%dtime%dDateTimeFieldType)%cboolean" resolveInfo="compare" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1172155459446">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1172155366162" resolveInfo="op1" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1172155499707">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1172155499708">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172155499709">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172155507929">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227895337">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172155510196" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172155514354">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172074898284:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.EnumValueOfExpression" typeId="yvor.1224575136086:3" id="1224583025413">
              <link role="enumClass" roleId="yvor.1224575174120:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
              <node role="value" roleId="yvor.1224575157853:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026306">
                <property name="value" nameId="yvor.1070475926801:3" value="==" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1224583026307">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1224583026308">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026309">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1224583026310">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1224583026311">
                          <property name="name" nameId="yvnu.1169194664001:0" value="result" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225195487002" />
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1224583026313" />
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026314">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026315">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026316">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026317">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026318">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026319">
                                <property name="value" nameId="yvor.1070475926801:3" value="EQ" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026320">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026321">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026322" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026323">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026324">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026325">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075151845:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026326">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026327">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026328">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026329">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026330">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026331">
                                <property name="value" nameId="yvor.1070475926801:3" value="NE" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026332">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026333">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026334" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026335">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026336">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026337">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075185460:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026338">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026339">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026340">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026341">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026342">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026343">
                                <property name="value" nameId="yvor.1070475926801:3" value="GT" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026344">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026345">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026346" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026347">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026348">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026349">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075218062:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026350">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026351">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026352">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026353">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026354">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026355">
                                <property name="value" nameId="yvor.1070475926801:3" value="LT" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026356">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026357">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026358" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026359">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026360">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026361">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075265977:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026362">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026363">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026364">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026365">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026366">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026367">
                                <property name="value" nameId="yvor.1070475926801:3" value="GE" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026368">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026369">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026370" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026371">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026372">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026373">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075248796:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1224583026374">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224583026375">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1224583026376">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="1224583026377">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026378">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1224583026379">
                                <property name="value" nameId="yvor.1070475926801:3" value="LE" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026380">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224583026381">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224583026382" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1224583026383">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1172075381034:1" resolveInfo="compareType" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1224583026384">
                            <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1224583026385">
                              <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1172075272162:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1224583026386">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1224583026387">
                          <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224583026311" resolveInfo="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1172155476278">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1172155369478" resolveInfo="op2" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1172155523419">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1172155523420">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172155523421">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172155527188">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227881511">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172155531518" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172155536741">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172074912819:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172157816026">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1172157829949">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1172157829950">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172157829951">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172157849062">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227904654">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227935316">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172157852298" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1179419284219">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl5.1213877526399" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1178373093052">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172155491673" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1172326347243">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4389880778953523254">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dround(org%djoda%dtime%dDateTime,org%djoda%dtime%dDateTimeFieldType)%corg%djoda%dtime%dDateTime" resolveInfo="round" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4389880778953523255">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4389880778953523256">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4389880778953523257">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953523258">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4389880778953523259">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523260">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4389880778953523261" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523262">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4389880778953523263">
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
        <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="4389880778953523264">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="4389880778953523265">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953523266">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4389880778953523267">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523268">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523269">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4389880778953523270" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523271">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172324147302:1" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523272">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="4389880778953523273" />
    </node>
  </root>
  <root id="1172327129404">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4389880778953523201">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%droundFloor(org%djoda%dtime%dDateTime,org%djoda%dtime%dDateTimeFieldType)%corg%djoda%dtime%dDateTime" resolveInfo="roundFloor" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4389880778953523202">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4389880778953523203">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4389880778953523204">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953523205">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4389880778953523206">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523207">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4389880778953523208" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523209">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4389880778953523210">
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
        <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="4389880778953523211">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="4389880778953523212">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953523213">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="4389880778953523214">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523215">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953523216">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4389880778953523217" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523218">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172324147302:1" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523219">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="4389880778953523220" />
    </node>
  </root>
  <root id="1172327149445">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172327149446">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%droundCeiling(org%djoda%dtime%dDateTime,org%djoda%dtime%dDateTimeFieldType)%corg%djoda%dtime%dDateTime" resolveInfo="roundCeiling" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4389880778953521953">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4389880778953521955">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4389880778953521956">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953521957">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4389880778953521958">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4389880778953521960">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4389880778953521959" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4389880778953523167">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172327149455">
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
        <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1172327149456">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1172327149457">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172327149458">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172327149459">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227922524">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227919702">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172327149462" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172327149463">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172324147302:1" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172327149464">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172327149465" />
    </node>
  </root>
  <root id="1172332406179">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172332443647">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dwith(java%dlang%dLong,org%djoda%dtime%dDateTimeFieldType,int)%cjava%dlang%dLong" resolveInfo="with" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1172332443648">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1172332443649">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1172332443650">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172332443651">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172332443652">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227939442">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172332443654" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172332443655">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172332443656">
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
        <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1172332443657">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1172332443658">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172332443659">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172332443660">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227894116">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227957290">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172332443663" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1219438693009">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172331207547:1" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172332443665">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1172332463807">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1172332469028">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1172332469029">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172332469030">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172332475186">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227960246">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172332477626" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172332487799">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172331281757:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172332443666" />
    </node>
  </root>
  <root id="1172489369985">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172489402883">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~Period" resolveInfo="Period" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172489425259" />
    </node>
  </root>
  <root id="1172492017024">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1172493019541">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%dmillis(int)%corg%djoda%dtime%dPeriod" resolveInfo="millis" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~Period" resolveInfo="Period" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1172493024573">
        <property name="value" nameId="yvor.1068580320021:3" value="21" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1172493034262">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1172493034263">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172493034264">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172493039140">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227934068">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172493041907" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172493047581">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172491543832:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172493027886" />
      <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1172493087610">
        <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1172493087611">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172493087612">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1172493093285">
              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227932769">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227916433">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1172493095193" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172493103819">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172489570282:1" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1172493189764">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1172499604795">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5372916090360435511">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeArithmetics" resolveInfo="DateTimeArithmetics" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeArithmetics%dplus(java%dlang%dLong,org%djoda%dtime%dPeriod)%cjava%dlang%dLong" resolveInfo="plus" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="5372916090360435512">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5372916090360435513">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5372916090360435514">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360435515">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360435516">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360435517">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360435518" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360435519">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5372916090360435520">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5372916090360435521">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5372916090360435522">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360435523">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360435524">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360435525">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360435526" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360435527">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5372916090360435528">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5372916090360435529" />
    </node>
  </root>
  <root id="1172501993121">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5372916090360435530">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeArithmetics" resolveInfo="DateTimeArithmetics" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeArithmetics%dminus(java%dlang%dLong,org%djoda%dtime%dPeriod)%cjava%dlang%dLong" resolveInfo="minus" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="5372916090360435531">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5372916090360435532">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5372916090360435533">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360435534">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360435535">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360435536">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360435537" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360435538">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5372916090360435539">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5372916090360435540">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5372916090360435541">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090360435542">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5372916090360435543">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5372916090360435544">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5372916090360435545" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5372916090360435546">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5372916090360435547">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5372916090360435548" />
    </node>
  </root>
  <root id="1172684437748">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1172684437749">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172684437750">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1172684437751">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1172684437752">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1172684437753">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1172685652687">
          <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1172685652688">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173786607714">
              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173786607715">
                <property name="name" nameId="yvnu.1169194664001:0" value="formatter" />
                <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173786607716">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="x4kc.~FixedLocaleDateTimeFormatter" resolveInfo="FixedLocaleDateTimeFormatter" />
                </node>
                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888429602">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888429604">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~FixedLocaleDateTimeFormatter%d&lt;init&gt;(org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale)" resolveInfo="FixedLocaleDateTimeFormatter" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1173885736583">
                      <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="1173885741929">
                        <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                        <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1173885746977">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173885746978">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173885749463">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227907257">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173885749464" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173885752998">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172683726790:1" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1173786607738">
                      <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dUS" resolveInfo="US" />
                      <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1173786607739">
                        <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1173786607740">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173786607741">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1173786607742">
                              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227935478">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227937965">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173786607745" />
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173786607746">
                                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1172679863969:1" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173786607747">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
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
            </node>
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1172685658868">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987576156">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1172685658870">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1172684437752" resolveInfo="builder" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987576157">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappend(org%djoda%dtime%dformat%dDateTimePrinter,org%djoda%dtime%dformat%dDateTimeParser)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="append" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173786666921">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173786607715" resolveInfo="formatter" />
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173786668688">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173786607715" resolveInfo="formatter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1172685706549" />
        </node>
      </node>
    </node>
  </root>
  <root id="1173885209754">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1173885231740">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.1169487448949:1" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1173885357923">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1173885253101" resolveInfo="reduce_DateFormat_IDateFormat_reference" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1173885242365">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvkw.1173883503931:3" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1173885438422">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1173885363705" resolveInfo="reduce_PredefinedDateFormat_IDateFormat_reference" />
      </node>
    </node>
  </root>
  <root id="1173885253101">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574952">
      <node role="operand" roleId="yvor.1197027771414:3" type="yvko.InternalStaticFieldReference" typeId="yvko.1173995204289:1" id="1224666033561">
        <property name="fieldName" nameId="yvko.1173995466678:1" value="INSTANCE" />
        <property name="fqClassName" nameId="yvko.1173995448817:1" value="x.y.z.DateFormatTable" />
        <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1224666133130">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1224666133131">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1224666133132">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1224666238383">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1224666238384">
                  <property name="name" nameId="yvnu.1169194664001:0" value="table" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1224666238385">
                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvl0.1169481390637:1" resolveInfo="DateFormatsTable" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1224666241809">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1224666241730" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1224666244030">
                      <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1224666244031">
                        <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1224666248048">
                          <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.1169481390637:1" resolveInfo="DateFormatsTable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1224666264498">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4965148520114092678">
                  <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520113969396">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4965148520113969395">
                      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224666238384" resolveInfo="table" />
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4965148520113990753">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                    </node>
                  </node>
                  <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4965148520114092959">
                    <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520114092701">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="4965148520114092699">
                        <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520114092694">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4965148520114092693">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1224666238384" resolveInfo="table" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetModelOperation" typeId="yvim.1143234257716:16" id="4965148520114092698" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4965148520114092958">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetLongName()%cjava%dlang%dString" resolveInfo="getLongName" />
                      </node>
                    </node>
                    <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4965148520114092962">
                      <property name="value" nameId="yvor.1070475926801:3" value="." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574953">
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="57kc.~BaseFormatTable%dgetFormatter(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="getFormatter" />
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1173885304924">
          <property name="value" nameId="yvor.1070475926801:3" value="formatterName" />
          <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1173885304925">
            <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1173885304926">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173885304927">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173885304928">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227959404">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173885335607" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1173885337687">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1173885316527" />
    </node>
  </root>
  <root id="1173885363705">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1173885399395">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="977b.~DateTimeFormat" resolveInfo="DateTimeFormat" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormat%dfullDateTime()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="fullDateTime" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1173885414053" />
      <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1173885417696">
        <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1173885417697">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173885417698">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173885422480">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227956789">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173885422481" />
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173885425686">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1173883503932:3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1173967707012">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1173967740878">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173967740879">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173967740880">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173967740881">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173967740882">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173967740883">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574888">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967740885">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967740881" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574889">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappendPattern(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="appendPattern" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1173967740886">
                <property name="value" nameId="yvor.1070475926801:3" value="yyyy" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="1173967740887">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="1173967740888">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173967740889">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173967759629">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173967759630">
                          <property name="name" nameId="yvnu.1169194664001:0" value="b" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1173967759631">
                            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~StringBuilder" resolveInfo="StringBuilder" />
                          </node>
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888401095">
                            <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888401112">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~StringBuilder%d&lt;init&gt;()" resolveInfo="StringBuilder" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173967876453">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173967876454">
                          <property name="name" nameId="yvnu.1169194664001:0" value="n" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1173967876455" />
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227916963">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227849706">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227915475">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173967816088" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173967857042">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1173959975857:1" />
                                </node>
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173967862278">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1173953763712:3" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1173967867014">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvkw.1173953810654:3" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1173967969299">
                        <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173967969300">
                          <property name="name" nameId="yvnu.1169194664001:0" value="letter" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="1225195480908" />
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227896191">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227927574">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1173967974897" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1173967980586">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1173959975857:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1173967983307">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvkw.1173953689128:3" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ForStatement" typeId="yvor.1144231330558:3" id="1173967774343">
                        <node role="variable" roleId="yvor.1144230900587:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1173967774344">
                          <property name="name" nameId="yvnu.1169194664001:0" value="i" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.IntegerType" typeId="yvor.1070534370425:3" id="1173967775690" />
                          <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1173967785598">
                            <property name="value" nameId="yvor.1068580320021:3" value="0" />
                          </node>
                        </node>
                        <node role="body" roleId="yvor.1154032183016:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1173967774346">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173967954763">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574583">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967954764">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967759630" resolveInfo="b" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574584">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~StringBuilder%dappend(java%dlang%dString)%cjava%dlang%dStringBuilder" resolveInfo="append" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967986964">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967969300" resolveInfo="letter" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1144231399730:3" type="yvor.LessThanExpression" typeId="yvor.1081506773034:3" id="1173967804631">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967876456">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967876454" resolveInfo="n" />
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967807493">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967774344" resolveInfo="i" />
                          </node>
                        </node>
                        <node role="iteration" roleId="yvor.1144231408325:3" type="yvor.PostfixIncrementExpression" typeId="yvor.1214918800624:3" id="1238145922872">
                          <node role="expression" roleId="yvor.1239714902950:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238145922873">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967774344" resolveInfo="i" />
                          </node>
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1173967990201">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987574454">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1173967992656">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1173967759630" resolveInfo="b" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987574455">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~StringBuilder%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1173967740894" />
        </node>
      </node>
    </node>
  </root>
  <root id="1174045772633">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1174046783087">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174046783088">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174046783089">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174046783090">
            <property name="name" nameId="yvnu.1169194664001:0" value="dateTime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174046783091">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174046783092">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1238663967236">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dprint(java%dlang%dLong,org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale,org%djoda%dtime%dDateTimeZone)%cjava%dlang%dString" resolveInfo="print" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238663967237">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174046783090" resolveInfo="dateTime" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1238663967238">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238663967239">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663967240">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663967241">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663967242">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663967243" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238663967244">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1171964003156:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663967245">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1238663967246">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1238663967247">
                  <node role="expression" roleId="yvor.1070534934092:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1238663967248">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.AnonymousClassCreator" typeId="yvor.1182160077978:3" id="1238663967249">
                      <node role="cls" roleId="yvor.1182160096073:3" type="yvor.AnonymousClass" typeId="yvor.1170345865475:3" id="1238663967250">
                        <link role="classifier" roleId="yvor.1170346070688:3" targetNodeId="x4kc.~InlineDateFormatter" resolveInfo="InlineDateFormatter" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~InlineDateFormatter%d&lt;init&gt;()" resolveInfo="InlineDateFormatter" />
                        <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="1238663967251">
                          <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
                          <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238663967252">
                            <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatter" resolveInfo="DateTimeFormatter" />
                          </node>
                          <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663967253">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1238663967254">
                              <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1238663967255">
                                <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
                                <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238663967256">
                                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
                                </node>
                                <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1238663967257">
                                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1238663967258">
                                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%d&lt;init&gt;()" resolveInfo="DateTimeFormatterBuilder" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663967259">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663967260">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238663967261">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238663967255" resolveInfo="builder" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238663967262">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappendPattern(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="appendPattern" />
                                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1238663967263">
                                    <property name="value" nameId="yvor.1070475926801:3" value="yyyy" />
                                  </node>
                                </node>
                              </node>
                              <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1238663967264">
                                <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1238663967265">
                                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238663967266">
                                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238663967267">
                                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663967268">
                                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238663967269" />
                                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1238663967270">
                                          <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1174039888135:1" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1238663967271">
                              <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238663967272">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1238663967273">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1238663967255" resolveInfo="builder" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238663967274">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dtoFormatter()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="toFormatter" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1238663967275" />
                        </node>
                        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="1238663967276" />
                      </node>
                    </node>
                  </node>
                  <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1238663967277">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="x4kc.~InlineDateFormatter" resolveInfo="InlineDateFormatter" />
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1238663967278">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~InlineDateFormatter%dcreateFormatter()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="createFormatter" />
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1238663967279">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dUS" resolveInfo="US" />
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1238664043049">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1238664043050">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238664043051">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238664046396">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238664048575">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238664046742">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238664046397" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238664048090">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174045884375:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1238664049985" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1238664063811">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1238664067689" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1238664040031">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238664040032">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238664040033">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238664054658">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238664056837">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238664054926">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238664054659" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238664056430">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174045884375:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238664058747">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239017367001">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1239017367002">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1239017367003">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239017367004">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239017367005">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017367006">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017367007">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239017367008" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239017367009">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015930559:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1239017367010" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1239017367011">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1239017367012" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239017367013">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239017367014">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239017367015">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239017367016">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239017367017">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239017367018" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239017367019">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239015930559:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1238663967301" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1174322757200">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1174322808905">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174322808906">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174322808907">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174322808908">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174322808909">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174322808910">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1208987575097">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1174322808912">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174322808908" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1208987575098">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappend(org%djoda%dtime%dformat%dDateTimePrinter)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="append" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888384431">
                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888384433">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~OffsetDateTimePrinter%d&lt;init&gt;(org%djoda%dtime%dDateTime,org%djoda%dtime%dDurationFieldType%d%d%d)" resolveInfo="OffsetDateTimePrinter" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="6173552745501645601">
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="6173552745501645603">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="6173552745501645604">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="6173552745501645605">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="6173552745501645606">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="6173552745501645608">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="6173552745501645607" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="6173552745501645612">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.779372288057192089:1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1174322862873">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ArrayCreatorWithInitializer" typeId="yvor.1154542696413:3" id="1174322865641">
                      <node role="componentType" roleId="yvor.1154542793668:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174322871065">
                        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DurationFieldType" resolveInfo="DurationFieldType" />
                      </node>
                    </node>
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="1174322880567">
                      <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="1174322880568">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174322880569">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174322889492">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227884568">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174322889493" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="1174322898807">
                                <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.1174321263884:1" />
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
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1174322808921" />
        </node>
      </node>
    </node>
  </root>
  <root id="1174322924465">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1174322948530">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DurationFieldType" resolveInfo="DurationFieldType" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DurationFieldType%dminutes()%corg%djoda%dtime%dDurationFieldType" resolveInfo="minutes" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1174322955640" />
      <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1174322960939">
        <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1174322960940">
          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174322960941">
            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174322965770">
              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227852587">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227935623">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174322965771" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174322971039">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174320881454:1" />
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174322974306">
                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1174320729117:3" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1174385195181">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1174388893509">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174388893510">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174388917565">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174388917566">
            <property name="name" nameId="yvnu.1169194664001:0" value="leftExpression" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174388917567">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174388924600">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174388924601">
            <property name="name" nameId="yvnu.1169194664001:0" value="rightExpression" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174388924602">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174388910123">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1174388914047">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dminus(java%dlang%dLong,java%dlang%dLong,org%djoda%dtime%dPeriodType)%corg%djoda%dtime%dPeriod" resolveInfo="minus" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1174388947072">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174388917566" resolveInfo="leftExpression" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1174389296584">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1174389296585">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174389296586">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174390197820">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227845810">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174390197821" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174390255620">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386153808:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1174388950137">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174388924601" resolveInfo="rightExpression" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1174389302448">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1174389302449">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174389302450">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174390263481">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227891793">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174390263482" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174390265171">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386164996:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1174388973405">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1174391507996">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1174391507997">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174391507998">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174391544162">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227910620">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227895611">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174391544163" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174391549556">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386223029:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174391558152">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1174389286910" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1174390375904">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1174390375905">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174390375906">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174390375907">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174390375908">
            <property name="name" nameId="yvnu.1169194664001:0" value="leftExpression" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174390375909">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1174390375910">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1174390375911">
            <property name="name" nameId="yvnu.1169194664001:0" value="rightExpression" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1174390375912">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174390375913">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1174390375914">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dabsMinus(java%dlang%dLong,java%dlang%dLong,org%djoda%dtime%dPeriodType)%corg%djoda%dtime%dPeriod" resolveInfo="absMinus" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1174390375915">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174390375908" resolveInfo="leftExpression" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1174390375916">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1174390375917">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174390375918">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174390375919">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227906733">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174390375921" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174390375922">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386153808:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1174390375923">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1174390375911" resolveInfo="rightExpression" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1174390375924">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1174390375925">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174390375926">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174390375927">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227916120">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174390375929" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174390375930">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386164996:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1174390375931">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1174391572575">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1174391572576">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1174391572577">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1174391577593">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227879078">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1204227895387">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1174391577594" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174391580721">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1174386223029:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1174391584458">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1174390375941" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1207144894043">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1207144970599">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dplus(java%dlang%dLong,org%djoda%dtime%dPeriod)%cjava%dlang%dLong" resolveInfo="plus" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1207144970600">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1207144970601">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1207144970602">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1207144970603">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1207144970604">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1207144970605">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1207144970606" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1207144976903">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207143609180:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888350588">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1217888350590">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1217888350591">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217888350592">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1217888350593">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217888350594">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217888350595" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1217888350596">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207143609181:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888350597">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1207144970616" />
    </node>
  </root>
  <root id="1207223181393">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1207223181394">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dminus(java%dlang%dLong,org%djoda%dtime%dPeriod)%cjava%dlang%dLong" resolveInfo="minus" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1207223181395">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1207223181396">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1207223181397">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1207223181398">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1207223181399">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1207223181400">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1207223181401" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1207223219727">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207222904240:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888380489">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1217888380491">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1217888380492">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1217888380493">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1217888380494">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1217888380495">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1217888380496" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1217888380497">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1207222904241:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888380498">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1207223181411" />
    </node>
  </root>
  <root id="1209037407602">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1209037407603">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%disNull(java%dlang%dLong)%cboolean" resolveInfo="isNull" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1209037407604">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037407605">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037407606">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037407607">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037407608">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037422526">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037407610" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037425119">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1209037407612" />
    </node>
  </root>
  <root id="1209037432960">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1209037432961">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%disNotNull(long)%cboolean" resolveInfo="isNotNull" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1209037432962">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037432963">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037432964">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037432965">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037432966">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037432967">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037432968" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037445107">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1209037432970" />
    </node>
  </root>
  <root id="1209037487736">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1209037487737">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037487738">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1209037487739">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1209037487740">
            <property name="name" nameId="yvnu.1169194664001:0" value="c" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1209037487741">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Calendar" resolveInfo="Calendar" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037487742">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1209037487743">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dconvert(java%dutil%dCalendar)%cjava%dlang%dLong" resolveInfo="convert" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209037487744">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209037487740" resolveInfo="c" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037487745">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037487746">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037487747">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037502946">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037487749">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037487750" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037505395">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1209037487752" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1209037512244">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1209037512245">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037512246">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1209037512247">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1209037512248">
            <property name="name" nameId="yvnu.1169194664001:0" value="mpsDateTime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1209037512249">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037512250">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037512251">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888334521">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888334538">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;(long)" resolveInfo="DateTime" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209037512253">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209037512248" resolveInfo="mpsDateTime" />
                  <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037512254">
                    <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037512255">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037512256">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037527137">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037512258">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037512259" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037532731">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1209037512261">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="i9z8.~AbstractDateTime%dtoCalendar(java%dutil%dLocale)%cjava%dutil%dCalendar" resolveInfo="toCalendar" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1209037512262" />
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1209037512263" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1209037539138">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1209037539139">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037539140">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1209037539142">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1209037539143">
            <property name="name" nameId="yvnu.1169194664001:0" value="datetime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1209037539144">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037539145">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888347755">
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1217888347772" />
            <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888347773">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjwb.~Date%d&lt;init&gt;(long)" resolveInfo="Date" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209037539147">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209037539143" resolveInfo="datetime" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037539148">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037539149">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037539150">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037550183">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037539152">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037539153" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037552742">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
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
      </node>
    </node>
  </root>
  <root id="1209037556127">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1209037556128">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037556129">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1209037556130">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1209037556131">
            <property name="name" nameId="yvnu.1169194664001:0" value="datetime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1209037556132">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037556133">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1217888419767">
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1217888419769" />
            <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1217888419770">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;(long)" resolveInfo="DateTime" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1209037556135">
                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1209037556131" resolveInfo="datetime" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209037556136">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209037556137">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209037556138">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209037565848">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209037556140">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209037556141" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209037568170">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
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
      </node>
    </node>
  </root>
  <root id="1209039909796">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1209039909797">
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dget(java%dlang%dLong,org%djoda%dtime%dDateTimeFieldType)%cjava%dlang%dInteger" resolveInfo="get" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1209039909798">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1209039909799">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1209039909800">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209039909801">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209039918835">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039909803">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209039909804" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1209039922276">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1209039909806">
        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
        <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1209039909807">
          <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1209039909808">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1209039909809">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1209039927640">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039909811">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1209039909812">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1209039909813" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209039931244">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1209039739637:1" />
                    </node>
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1209039934356">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1209039909816" />
    </node>
  </root>
  <root id="1238088433863">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4396211440736371346">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dnever()%cjava%dlang%dLong" resolveInfo="never" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="4396211440736371348" />
    </node>
  </root>
  <root id="1238249953442">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="2644539331224593481">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2644539331224593482">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8678577827671008618">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="3627207017676753916">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeArithmetics%dmax(org%djoda%dtime%dDateTime,org%djoda%dtime%dDateTime)%corg%djoda%dtime%dDateTime" resolveInfo="max" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeArithmetics" resolveInfo="DateTimeArithmetics" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017676753917">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017676753918">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;()" resolveInfo="DateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017676753919">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017676753920">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017676753921">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017676753922">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017676753923">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017676753924" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017676753925">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060720:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017676753926">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017676753927">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;()" resolveInfo="DateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017676753928">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017676753929">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017676753930">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017676753931">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017676753932">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017676753933" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017676753934">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238248060893:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="3627207017676753935" />
            <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="3627207017676753936">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="3627207017676753937">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017676753938">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017676753939">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017676753940">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017676753941" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SConceptPropertyAccess" typeId="yvim.1145994841052:16" id="3627207017676753942">
                        <link role="conceptProperty" roleId="yvim.1145994841055:16" targetNodeId="yvnu.1137473891462:0" resolveInfo="alias" />
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
  </root>
  <root id="1238513572309">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="2370912077505106518">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="2370912077505106519" />
    </node>
  </root>
  <root id="1238514665489">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1238514695203">
      <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjvv.~DateTimeZone%dUTC" resolveInfo="UTC" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1238514721897" />
    </node>
  </root>
  <root id="1238514756824">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1238514786390">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetDefault()%corg%djoda%dtime%dDateTimeZone" resolveInfo="getDefault" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1238514789079" />
    </node>
  </root>
  <root id="1238857203188">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1238857259572">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dforID(java%dlang%dString)%corg%djoda%dtime%dDateTimeZone" resolveInfo="forID" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="1238857425983">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1238857482127">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1238857482128">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1238857482129">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1238857492147">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1238857492524">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1238857492148" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1238857495215">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1238855978597:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1238857487396" />
    </node>
  </root>
  <root id="1239804357845">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1239804391088">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239804391089">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239804391090">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239804391091">
            <property name="name" nameId="yvnu.1169194664001:0" value="op1" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1239804391092">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1239804391093">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1239804391094">
            <property name="name" nameId="yvnu.1169194664001:0" value="op2" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1239804391095">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239804391102">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239804391103">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dcompare(java%dlang%dLong,jetbrains%dmps%dbaseLanguage%ddates%druntime%dCompareType,java%dlang%dLong,org%djoda%dtime%dDateTimeFieldType)%cboolean" resolveInfo="compare" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239804391104">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239804391091" resolveInfo="op1" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239804391105">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239804391106">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239804391107">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239804391108">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804427273">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804391109">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239804391110" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239804426787">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239198287872:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239804431089">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="5969170299421933546">
              <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="x4kc.~CompareType%dEQ" resolveInfo="EQ" />
              <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
              <node role="referenceMacro$link_attribute$enumConstantDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="5969170299421933547">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="5969170299421933548">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421933549">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421933550">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421933552">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvky.4396211440736522074" resolveInfo="getCompareType" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvky.1169555993608" resolveInfo="DatesQueriesUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421933554">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421933553" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421934761">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239198287872:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1239804391195">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1239804391094" resolveInfo="op2" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1239804391196">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1239804391197">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239804391198">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239804391199">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804448185">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804391200">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239804391201" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239804447840">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239198287872:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239804449814">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239804391203">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1239804391204">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1239804391205">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239804391206">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1239804391207">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804391208">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804391209">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239804488724" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="1239804491694">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl5.1239206693907" resolveInfo="getDatetimeProperty" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1239804494461">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172155646667:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1239804391213" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1239804842313">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1239804857882">
      <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1239804884792">
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;(long,org%djoda%dtime%dPeriodType)" resolveInfo="Period" />
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="1548440323223110749">
          <node role="type" roleId="yvor.1070534934091:3" type="yvor.LongType" typeId="yvor.1068581242867:3" id="1548440323223110813" />
          <node role="expression" roleId="yvor.1070534934092:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="1548440323223124027">
            <node role="expression" roleId="yvor.1079359253376:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1548440323223124029">
              <property name="value" nameId="yvor.1068580320021:3" value="0" />
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1548440323223124031">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1548440323223124032">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124033">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124034">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1548440323223124035">
                        <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124038">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1548440323223124037" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1548440323223124042">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1239037593439:1" resolveInfo="absolute" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="1548440323223124054">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1548440323223124057">
                    <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Math" resolveInfo="Math" />
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Math%dabs(int)%cint" resolveInfo="abs" />
                    <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="1548440323223124058">
                      <property name="value" nameId="yvor.1068580320021:3" value="0" />
                      <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1548440323223124060">
                        <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1548440323223124061">
                          <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124062">
                            <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124063">
                              <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124083">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SNodeTypeCastExpression" typeId="yvim.1140137987495:16" id="1548440323223124077">
                                  <link role="concept" roleId="yvim.1140138128738:16" targetNodeId="yvl0.1239036439524:1" resolveInfo="PeriodInPropertyOperation" />
                                  <node role="leftExpression" roleId="yvim.1140138123956:16" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1548440323223124064" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223124090">
                                  <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
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
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1548440323223124044">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1548440323223124045">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124046">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124047">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124049">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1548440323223124048" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223124053">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1239804901186">
          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
          <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1239804901187">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1239804901188">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1239804901189">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1239804901190">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804901191">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1239804901192">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1239804901193" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223108544">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239036706289:1" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223108545">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1239804905806" />
    </node>
  </root>
  <root id="4396211440736525363">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="5969170299421642554">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="5969170299421642555" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="5969170299421642556" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421642557">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5969170299421642558">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5969170299421642559">
            <property name="name" nameId="yvnu.1169194664001:0" value="op1" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5969170299421642560">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5969170299421642561">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5969170299421642562">
            <property name="name" nameId="yvnu.1169194664001:0" value="op2" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5969170299421642563">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Long" resolveInfo="Long" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421642564">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421642565">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dcompare(java%dlang%dLong,jetbrains%dmps%dbaseLanguage%ddates%druntime%dCompareType,java%dlang%dLong,org%djoda%dtime%dDateTimeFieldType)%cboolean" resolveInfo="compare" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5969170299421642566">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5969170299421642559" resolveInfo="op1" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421642567">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421642568">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421642569">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5969170299421642570">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421642571">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421642572" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421642573">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="5969170299421642574">
              <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
              <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="x4kc.~CompareType%dEQ" resolveInfo="EQ" />
              <node role="referenceMacro$link_attribute$enumConstantDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="5969170299421642575">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="5969170299421642576">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421642577">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421642578">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421642579">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvky.1169555993608" resolveInfo="DatesQueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvky.4396211440736522074" resolveInfo="getCompareType" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421642580" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5969170299421642581">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5969170299421642562" resolveInfo="op2" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421642582">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421642583">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421642584">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5969170299421642585">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421642586">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421642587" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421642588">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421642589">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeFieldType%dmillisOfSecond()%corg%djoda%dtime%dDateTimeFieldType" resolveInfo="millisOfSecond" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeFieldType" resolveInfo="DateTimeFieldType" />
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5969170299421642590" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="2583319411283203429">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="2583319411283203430">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2583319411283203431">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="2583319411283203432">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="2583319411283203433">
            <property name="name" nameId="yvnu.1169194664001:0" value="dateTime" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="4887793210801096635" />
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2583319411283203435">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7678715681280134988">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dparse(java%dlang%dString,org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale,org%djoda%dtime%dDateTimeZone,java%dlang%dLong)%cjava%dlang%dLong" resolveInfo="parse" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7678715681280134989">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2583319411283203433" resolveInfo="dateTime" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="7678715681280134990">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7678715681280134991">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280134992">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="7678715681280134993">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280134994">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280134995" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280134996">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1892577441204578449:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280134997">
              <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="7678715681280134998">
                <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7678715681280134999">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135000">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135001">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135002">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135003" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135004">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1892577441204578966:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135005">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="7678715681280135006">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="7678715681280135007">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135008">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135009">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135010">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135011">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135012" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135013">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2583319411283206774:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="7678715681280135014" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="7678715681280135015">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135016" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="7678715681280135017">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7678715681280135018">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135019">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135020">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135021">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135022">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135023" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135024">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2583319411283206774:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135025">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135026">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="7678715681280135027">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="7678715681280135028">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135029">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135030">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135031">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135032">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135033" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135034">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2583319411283206775:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="7678715681280135035" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="7678715681280135036">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135037" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="7678715681280135038">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7678715681280135039">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135040">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135041">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135042">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135043" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135044">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2583319411283206775:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135045">
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="7678715681280135046">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="7678715681280135047">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135048">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135049">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135050">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135051">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135052" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135053">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.7678715681280019206:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="7678715681280135054" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="7678715681280135055">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7678715681280135056" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="7678715681280135057">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7678715681280135058">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7678715681280135059">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7678715681280135060">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7678715681280135061">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7678715681280135062" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7678715681280135063">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.7678715681280019206:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="7678715681280135064" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="7517433918793153488">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="7517433918793156369">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dforID(java%dlang%dString)%corg%djoda%dtime%dDateTimeZone" resolveInfo="forID" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="7517433918793156373">
        <property name="value" nameId="yvor.1070475926801:3" value="UTC" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="7517433918793156374">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="7517433918793156375">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7517433918793156376">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7517433918793156377">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7517433918793156379">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7517433918793156378" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="7517433918793157495">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.4555537781927678418:1" resolveInfo="timezone_id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="7517433918793156370" />
    </node>
  </root>
  <root id="8625920436392689293">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8625920436392690050">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dforOffsetMillis(int)%corg%djoda%dtime%dDateTimeZone" resolveInfo="forOffsetMillis" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="8625920436392690059" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="8625920436392692181">
        <property name="value" nameId="yvor.1068580320021:3" value="0" />
        <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="8625920436392692182">
          <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="8625920436392692183">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8625920436392692184">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8625920436392692185">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8625920436392692187">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8625920436392692186" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="8625920436392693303">
                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5473692278135819455:1" resolveInfo="offsetmillis" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1195930031035447618">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1195930031035451948">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DateTime" resolveInfo="DateTime" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1195930031035451949" />
    </node>
  </root>
  <root id="6626410111396109619">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421234299">
      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dconvert(java%dlang%dLong,org%djoda%dtime%dDateTimeZone)%corg%djoda%dtime%dDateTime" resolveInfo="convert" />
      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5969170299421234300">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421234301">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421234302">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421234303">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421234304">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421234305">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421234306" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421234307">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2639623922402691278:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5969170299421234308">
        <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421234309">
          <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421234310">
            <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421234311">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421234312">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421234313">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421234314" />
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421234315">
                    <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.2639623922402691641:1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5969170299421234316" />
    </node>
  </root>
  <root id="5969170299421360921">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="5969170299421363046">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="5969170299421363047" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="5969170299421363048" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421363049">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5969170299421363050">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5969170299421363051">
            <property name="name" nameId="yvnu.1169194664001:0" value="op1" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5969170299421363067">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~Period" resolveInfo="Period" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5969170299421363054">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5969170299421363055">
            <property name="name" nameId="yvnu.1169194664001:0" value="op2" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5969170299421363068">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~Period" resolveInfo="Period" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.Statement" typeId="yvor.1068580123157:3" id="5969170299421363061" />
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421533097">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421533098">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dcompare(org%djoda%dtime%dPeriod,jetbrains%dmps%dbaseLanguage%ddates%druntime%dCompareType,org%djoda%dtime%dPeriod)%cboolean" resolveInfo="compare" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5969170299421533099">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5969170299421363051" resolveInfo="op1" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421533100">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421533101">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421533102">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421533103">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421533104">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421533105" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421533106">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="5969170299421533107">
              <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
              <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="x4kc.~CompareType%dEQ" resolveInfo="EQ" />
              <node role="referenceMacro$link_attribute$enumConstantDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="5969170299421533108">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="5969170299421533109">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421533110">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421533111">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5969170299421533112">
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvky.4396211440736522074" resolveInfo="getCompareType" />
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvky.1169555993608" resolveInfo="DatesQueriesUtil" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421533113" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5969170299421533114">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5969170299421363055" resolveInfo="op2" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5969170299421533115">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5969170299421533116">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5969170299421533117">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5969170299421533118">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5969170299421533119">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5969170299421533120" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5969170299421533121">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5969170299421535245" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="4389880778953638912">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="4389880778953638914">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4389880778953641042">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.Statement" typeId="yvor.1068580123157:3" id="4389880778953641051" />
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4389880778953641043">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="4251945201431272142">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dparseDateTime(java%dlang%dString,org%djoda%dtime%dformat%dDateTimeFormatter,org%djoda%dtime%dDateTimeZone,java%dutil%dLocale,org%djoda%dtime%dDateTime)%corg%djoda%dtime%dDateTime" resolveInfo="parseDateTime" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4251945201431272143">
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4251945201431279744">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4251945201431279745">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431279746">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431279747">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431279749">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431279748" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431279753">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634894:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4251945201431274268">
              <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="4251945201431426072">
                <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4251945201431426073">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431426074">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431428199">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431428201">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431428200" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431429408">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634897:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4251945201431274270">
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4251945201431279766">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4251945201431279767">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431279768">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431279769">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431279771">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431279770" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431279775">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634895:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="4251945201431291578">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dENGLISH" resolveInfo="ENGLISH" />
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="4251945201431291580">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="4251945201431291581">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431291582">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431291584">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291591">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291586">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431291585" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431291590">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634898:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="4251945201431291595" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="4251945201431291596">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4251945201431291598" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4251945201431291599">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4251945201431291600">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431291601">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431291602">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="670620798052560809">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291604">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431291603" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431291608">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634898:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="670620798052560813">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="4251945201431279776">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="4251945201431291534">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;()" resolveInfo="DateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="4251945201431291546">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="4251945201431291547">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431291548">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431291560">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291567">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291562">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431291561" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431291566">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634896:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="4251945201431291571" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="4251945201431291574">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="4251945201431291577" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="4251945201431291550">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="4251945201431291551">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="4251945201431291552">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="4251945201431291553">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4251945201431291555">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="4251945201431291554" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4251945201431291559">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.4389880778953634896:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="4251945201431279742" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="5034322243092302197">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5034322243092302199">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092302200">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5034322243092304324">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5034322243092304326">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dprint(org%djoda%dtime%dDateTime,org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale)%cjava%dlang%dString" resolveInfo="print" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5034322243092304327">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5034322243092314708">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;()" resolveInfo="DateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5034322243092314728">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5034322243092314729">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092314730">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5034322243092314731">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314733">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5034322243092314732" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092314737">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243092298623:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5034322243092314710">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="5034322243092314711">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatter%d&lt;init&gt;(org%djoda%dtime%dformat%dDateTimePrinter,org%djoda%dtime%dformat%dDateTimeParser)" resolveInfo="DateTimeFormatter" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5034322243092314712" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5034322243092314714" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="5034322243092314739">
                <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1173885209754" resolveInfo="switch_IDateFormat_reference" />
                <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5034322243092314740">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092314741">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5034322243092314742">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314744">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5034322243092314743" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092314748">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243092298627:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="5034322243092314721">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dUS" resolveInfo="US" />
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="5034322243092314750">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="5034322243092314751">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092314752">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5034322243092314769">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314776">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314771">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5034322243092314770" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092314775">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243092298628:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="5034322243092314780" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="5034322243092314781">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5034322243092314783" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5034322243092314754">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5034322243092314755">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5034322243092314756">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5034322243092314757">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314764">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5034322243092314759">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5034322243092314758" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092314763">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243092298628:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5034322243092314768">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5034322243092314726" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="194163770812053449">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="194163770812053451">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812053452">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812055576">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="194163770812055578">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dprint(org%djoda%dtime%dDateTime,org%djoda%dtime%dformat%dDateTimeFormatter,java%dutil%dLocale)%cjava%dlang%dString" resolveInfo="print" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="194163770812055579">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="194163770812065569">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;()" resolveInfo="DateTime" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="194163770812065707">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="194163770812065708">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065709">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812065710">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065712">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="194163770812065711" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="194163770812065716">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243093093769:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065788">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="194163770812065717">
                <node role="expression" roleId="yvor.1079359253376:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="194163770812065794">
                  <node role="creator" roleId="yvor.1145553007750:3" type="yvor.AnonymousClassCreator" typeId="yvor.1182160077978:3" id="194163770812065795">
                    <node role="cls" roleId="yvor.1182160096073:3" type="yvor.AnonymousClass" typeId="yvor.1170345865475:3" id="194163770812065796">
                      <property name="nonStatic" nameId="yvor.521412098689998745:3" value="true" />
                      <link role="classifier" roleId="yvor.1170346070688:3" targetNodeId="x4kc.~InlineDateFormatter" resolveInfo="InlineDateFormatter" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~InlineDateFormatter%d&lt;init&gt;()" resolveInfo="InlineDateFormatter" />
                      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="194163770812065797" />
                      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="194163770812065798">
                        <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
                        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="194163770812065799">
                          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatter" resolveInfo="DateTimeFormatter" />
                        </node>
                        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="194163770812065800" />
                        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065801">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="194163770812065802">
                            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="194163770812065803">
                              <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
                              <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="194163770812065804">
                                <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~DateTimeFormatterBuilder" resolveInfo="DateTimeFormatterBuilder" />
                              </node>
                              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="194163770812065805">
                                <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="194163770812065806">
                                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%d&lt;init&gt;()" resolveInfo="DateTimeFormatterBuilder" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812065807">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065808">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="194163770812065809">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="194163770812065803" resolveInfo="builder" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="194163770812065810">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dappendPattern(java%dlang%dString)%corg%djoda%dtime%dformat%dDateTimeFormatterBuilder" resolveInfo="appendPattern" />
                                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="194163770812065811">
                                  <property name="value" nameId="yvor.1070475926801:3" value="yyyy" />
                                </node>
                              </node>
                            </node>
                            <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="194163770812065812">
                              <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="194163770812065813">
                                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065814">
                                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812065815">
                                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065816">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="194163770812065817" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="194163770812065818">
                                        <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.5034322243093093770:1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="194163770812065819">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065820">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="194163770812065821">
                                <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="194163770812065803" resolveInfo="builder" />
                              </node>
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="194163770812065822">
                                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~DateTimeFormatterBuilder%dtoFormatter()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="toFormatter" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="194163770812065792">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~InlineDateFormatter%dcreateFormatter()%corg%djoda%dtime%dformat%dDateTimeFormatter" resolveInfo="createFormatter" />
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="194163770812065604">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dUS" resolveInfo="US" />
              <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="194163770812065824">
                <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="194163770812065825">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065826">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812065838">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065845">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065840">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="194163770812065839" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="194163770812065844">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243093093771:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="194163770812065849" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="194163770812065850">
                  <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="194163770812065852" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="194163770812065828">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="194163770812065829">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="194163770812065830">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="194163770812065831">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4858741172755502701">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="194163770812065833">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="194163770812065832" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="194163770812065837">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5034322243093093771:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="4858741172755502705">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="194163770812065705" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="3931616304474644672">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="3931616304474646847">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~Duration" resolveInfo="Duration" />
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="3931616304474646848" />
    </node>
  </root>
  <root id="5372916090361183394">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5372916090361183396">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5372916090361183397">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060054251">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325060054253">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dtoDuration(org%djoda%dtime%dPeriod)%corg%djoda%dtime%dDuration" resolveInfo="toDuration" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8253375325060126990">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8253375325060141193">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="8253375325060141197">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="8253375325060141198">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060141199">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060141200">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8253375325060141202">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060141201" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="8253375325060141206">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvou.1213877410070" resolveInfo="getOperand" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="8253375325060141194" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="8253375325060753917">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="8253375325060753921">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060753926">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060753927">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325060753929">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dcompare(org%djoda%dtime%dDuration,jetbrains%dmps%dbaseLanguage%ddates%druntime%dCompareType,org%djoda%dtime%dDuration)%cboolean" resolveInfo="compare" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8253375325060753931">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8253375325060766931">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Duration%d&lt;init&gt;(long)" resolveInfo="Duration" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="8253375325060766932">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="8253375325060806895">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="8253375325060806896">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060806897">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060811099">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8253375325060811101">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060811100" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8253375325060812308">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367580:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.EnumConstantReference" typeId="yvor.1083260308424:3" id="8253375325060766935">
              <link role="enumConstantDeclaration" roleId="yvor.1083260308426:3" targetNodeId="x4kc.~CompareType%dEQ" resolveInfo="EQ" />
              <link role="enumClass" roleId="yvor.1144432896254:3" targetNodeId="x4kc.~CompareType" resolveInfo="CompareType" />
              <node role="referenceMacro$link_attribute$enumConstantDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="8253375325060806903">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="8253375325060806904">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060806905">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060806906">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="8253375325060806907">
                        <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yvky.1169555993608" resolveInfo="DatesQueriesUtil" />
                        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvky.4396211440736522074" resolveInfo="getCompareType" />
                        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060806908" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="8253375325060766937">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="8253375325060766939">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Duration%d&lt;init&gt;(long)" resolveInfo="Duration" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="8253375325060766940">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                </node>
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="8253375325060806899">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="8253375325060806900">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="8253375325060806901">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="8253375325060812309">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8253375325060812311">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="8253375325060812310" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="8253375325060812315">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvor.1081773367579:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="8253375325060766941" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="276836602888578412">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578414">
      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="276836602888578415">
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="276836602888578416">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;(java%dlang%dObject,org%djoda%dtime%dPeriodType)" resolveInfo="Period" />
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="3627207017677900840">
            <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="3627207017677900841">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~Period" resolveInfo="Period" />
            </node>
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017677900842">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017677900843">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017677900844">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017677900845">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017677900846">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017677900847">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900848">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017677900849" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900850">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578300:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="276836602888578450">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
            <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="276836602888578451">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="276836602888578452">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="276836602888578453">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="276836602888578454">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578455">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578456">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="276836602888578457" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="276836602888579803">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578302:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="276836602888579804">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="276836602888578460">
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="i9z8.~AbstractPeriod%dget(org%djoda%dtime%dDurationFieldType)%cint" resolveInfo="get" />
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="276836602888578461">
          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DurationFieldType" resolveInfo="DurationFieldType" />
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DurationFieldType%dmillis()%corg%djoda%dtime%dDurationFieldType" resolveInfo="millis" />
          <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="276836602888578462">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="276836602888578463">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="276836602888578464">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="276836602888578465">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578466">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="276836602888578467">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="276836602888578468" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="276836602888579805">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578302:1" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="276836602888579806">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.5372916090360849425:3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="3627207017678066907" />
    </node>
  </root>
  <root id="1548440323223124156">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1548440323223124158">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124159">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124160">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1548440323223124161">
            <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1548440323223124162">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;(long,org%djoda%dtime%dPeriodType)" resolveInfo="Period" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017678269479">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="3627207017678255452">
                  <node role="expression" roleId="yvor.1079359253376:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017678255454">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017678269473">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Duration%d&lt;init&gt;(long)" resolveInfo="Duration" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="3627207017678269474">
                        <property name="value" nameId="yvor.1068580320021:3" value="0" />
                      </node>
                    </node>
                    <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017678269485">
                      <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017678269486">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017678269487">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017678269488">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017678269490">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017678269489" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017678269494">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="3627207017678269483">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="i9z8.~BaseDuration%dgetMillis()%clong" resolveInfo="getMillis" />
                </node>
                <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="3627207017678269496">
                  <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="3627207017678269497">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017678269498">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017678269499">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="3627207017678269500">
                          <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017678269503">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017678269502" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="3627207017678269507">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1239037593439:1" resolveInfo="absolute" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="3627207017678269508">
                    <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="3627207017678269522">
                      <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Math" resolveInfo="Math" />
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Math%dabs(long)%clong" resolveInfo="abs" />
                      <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017678269523">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="3627207017678269524">
                          <node role="expression" roleId="yvor.1079359253376:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017678269525">
                            <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017678269526">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Duration%d&lt;init&gt;(long)" resolveInfo="Duration" />
                              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="3627207017678269527">
                                <property name="value" nameId="yvor.1068580320021:3" value="0" />
                              </node>
                            </node>
                            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017678269530">
                              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017678269531">
                                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017678269532">
                                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017678269533">
                                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017678269535">
                                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017678269534" />
                                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017678269539">
                                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239209522682:1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="3627207017678269528">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="i9z8.~BaseDuration%dgetMillis()%clong" resolveInfo="getMillis" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1548440323223124193">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
                <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
                <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1548440323223124194">
                  <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1548440323223124195">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1548440323223124196">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1548440323223124197">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124198">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1548440323223124199">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1548440323223124200" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223124234">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.1239036706289:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1548440323223124202">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1548440323223124203" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="3627207017677900774">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900776">
      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="3627207017677900777">
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="3627207017677900778">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;(long,org%djoda%dtime%dPeriodType)" resolveInfo="Period" />
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="3627207017677900919">
            <node role="expression" roleId="yvor.1070534934092:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="3627207017677900923">
              <property name="value" nameId="yvor.1068580320021:3" value="0" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="3627207017677900925">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="3627207017677900926">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017677900927">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017677900928">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900930">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017677900929" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900934">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578300:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="type" roleId="yvor.1070534934091:3" type="yvor.LongType" typeId="yvor.1068581242867:3" id="3627207017677900922" />
          </node>
          <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="3627207017677900812">
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~PeriodType%dminutes()%corg%djoda%dtime%dPeriodType" resolveInfo="minutes" />
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~PeriodType" resolveInfo="PeriodType" />
            <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="3627207017677900813">
              <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="3627207017677900814">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017677900815">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3627207017677900816">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900817">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900818">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017677900819" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900820">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578302:1" />
                        </node>
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900821">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172492673219:3" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="3627207017677900822">
        <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="i9z8.~AbstractPeriod%dget(org%djoda%dtime%dDurationFieldType)%cint" resolveInfo="get" />
        <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="3627207017677900823">
          <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DurationFieldType" resolveInfo="DurationFieldType" />
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DurationFieldType%dmillis()%corg%djoda%dtime%dDurationFieldType" resolveInfo="millis" />
          <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="3627207017677900824">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="3627207017677900825">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3627207017677900826">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="3627207017677900827">
                  <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900828">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3627207017677900829">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3627207017677900830" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900831">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.276836602888578302:1" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="3627207017677900832">
                      <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.5372916090360849425:3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="3627207017677900833" />
    </node>
  </root>
  <root id="3394771273339689767">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="3394771273339689769">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3394771273339689770">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="3394771273339691101">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="3394771273339691104">
            <property name="name" nameId="yvnu.1169194664001:0" value="s" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="3394771273339691106" />
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="3394771273339691108">
              <property name="value" nameId="yvor.1070475926801:3" value="" />
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="3394771273339691109" />
              <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="3394771273339691134">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="3394771273339691135">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="3394771273339691136">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="3394771273339691137">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="3394771273339691139">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="3394771273339691138" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_ConceptMethodCall" typeId="yvim.1179409122411:16" id="3394771273339691143">
                          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yvl5.1213877270167" resolveInfo="toCronExpression" />
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
    </node>
  </root>
  <root id="779372288056195858">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="779372288056195860">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056195861">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="779372288056195862">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="779372288056195863">
            <property name="name" nameId="yvnu.1169194664001:0" value="dt" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="779372288056195864">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjvv.~DateTime" resolveInfo="DateTime" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="779372288056195866">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="779372288056195867">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTime%d&lt;init&gt;(int,int,int,int,int,int,int,org%djoda%dtime%dChronology)" resolveInfo="DateTime" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197844">
                  <property name="value" nameId="yvor.1068580320021:3" value="1970" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056197860">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056197861">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056197862">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056197863">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056197865">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056197864" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056199094">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.779372288056193788:1" resolveInfo="year" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197846">
                  <property name="value" nameId="yvor.1068580320021:3" value="1" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056199095">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056199096">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056199097">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056199098">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056199105">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056199100">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056199099" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="779372288056199104">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.779372288056193789:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056434607">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvkw.779372288056199109:3" resolveInfo="number" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197848">
                  <property name="value" nameId="yvor.1068580320021:3" value="1" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056434608">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056434609">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056434610">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056437588">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="779372288056451705">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056451707">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056451706" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056451711">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.779372288056193787:1" resolveInfo="day" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197850">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056438820">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056438821">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056451690">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056451694">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="779372288056451696">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056451698">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056451697" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056451702">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.779372288056193786:1" resolveInfo="hour" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197852">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056451712">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056451713">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056451714">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056451715">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="779372288056451717">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056451719">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056451718" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056451723">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.779372288056193785:1" resolveInfo="minute" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197854">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                  <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="779372288056451724">
                    <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="779372288056451725">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056451726">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056451727">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="779372288056451728">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056451729">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056451730" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="779372288056451732">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.779372288056193784:1" resolveInfo="second" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="779372288056197856">
                  <property name="value" nameId="yvor.1068580320021:3" value="0" />
                </node>
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="779372288056197858">
                  <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="779372288056451734">
                    <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="779372288056451735">
                      <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="779372288056451736">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="779372288056451737">
                          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="779372288056451739">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="779372288056451738" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="779372288056451743">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.779372288056193790:1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="779372288056197859" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="34521615669576970">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="34521615669576972">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="34521615669576973">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806889710405">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1379098806889710407">
            <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="x4kc.~DateTimeOperations" resolveInfo="DateTimeOperations" />
            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="x4kc.~DateTimeOperations%dprint(org%djoda%dtime%dPeriod,org%djoda%dtime%dformat%dPeriodFormatter,java%dutil%dLocale)%cjava%dlang%dString" resolveInfo="print" />
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1379098806889710408">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1379098806889724495">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~Period%d&lt;init&gt;()" resolveInfo="Period" />
              </node>
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1379098806889724509">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1379098806889724510">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1379098806889724511">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806889724512">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806889724514">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1379098806889724513" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806889724518">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.34521615669572118:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="1379098806889724501">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormat%dgetDefault()%corg%djoda%dtime%dformat%dPeriodFormatter" resolveInfo="getDefault" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="977b.~PeriodFormat" resolveInfo="PeriodFormat" />
              <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="1379098806890584432">
                <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1379098806890585667" resolveInfo="switch_IPeriodFormat_reference" />
                <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1379098806890584433">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1379098806890584434">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806890584435">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806890584437">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1379098806890584436" />
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806890585666">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.34521615669572119:1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StaticFieldReference" typeId="yvor.1070533707846:3" id="1379098806889724506">
              <link role="classifier" roleId="yvor.1144433057691:3" targetNodeId="yjwb.~Locale" resolveInfo="Locale" />
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="yjwb.~Locale%dUS" resolveInfo="US" />
              <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1379098806889724520">
                <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1379098806889724521">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1379098806889724522">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806889724523">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.TernaryOperatorExpression" typeId="yvor.1163668896201:3" id="1379098806889724535">
                        <node role="ifTrue" roleId="yvor.1163668922816:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806889724545">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806889724540">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1379098806889724539" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806889724544">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.34521615669572120:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806889724549">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                          </node>
                        </node>
                        <node role="ifFalse" roleId="yvor.1163668934364:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1379098806889724550">
                          <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="1379098806889724552">
                            <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1379098806889724553">
                              <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070534058343:3" resolveInfo="NullLiteral" />
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1163668914799:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806889724530">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806889724525">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1379098806889724524" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806889724529">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.34521615669572120:1" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="1379098806889724534" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1379098806889724507" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="1379098806890585667">
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="930215626860410238">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="930215626860410240">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="5074955036991702210" resolveInfo="reduce_PeriodFormat_IPeriodFormat_reference" />
      </node>
    </node>
    <node role="reductionMappingRule" roleId="yvp6.1167340453568:2" type="yvp6.Reduction_MappingRule" typeId="yvp6.1167327847730:2" id="1379098806890585668">
      <link role="applicableConcept" roleId="yvp6.1167169349424:2" targetNodeId="yvkw.34521615669325565:3" resolveInfo="PredefinedPeriodFormat" />
      <node role="ruleConsequence" roleId="yvp6.1169672767469:2" type="yvp6.TemplateDeclarationReference" typeId="yvp6.1168559333462:2" id="1379098806890585750">
        <link role="template" roleId="yvp6.1722980698497626483:2" targetNodeId="1379098806890585748" resolveInfo="reduce_PredefinedPeriodFormat_reference" />
      </node>
    </node>
  </root>
  <root id="1379098806890585748">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="1379098806890585751">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1379098806890585752">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806890854756">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806890866340">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1379098806890854757">
              <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1379098806890866339">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%d&lt;init&gt;()" resolveInfo="PeriodFormatterBuilder" />
              </node>
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1379098806890866344">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dtoFormatter()%corg%djoda%dtime%dformat%dPeriodFormatter" resolveInfo="toFormatter" />
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1379098806890866345" />
            <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="1379098806890866347">
              <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="1379098806890866348">
                <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1379098806890866349">
                  <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1379098806890866350">
                    <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1379098806890866352">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1379098806890866351" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="1379098806890866356">
                        <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.34521615669325568:3" />
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
  </root>
  <root id="48671598477581907">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="48671598477581909">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477581910">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="48671598477581911">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="48671598477581912">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="48671598477581913">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatterBuilder" resolveInfo="PeriodFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="48671598477581915">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477581917">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="48671598477581916">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="48671598477581912" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="48671598477581921">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendLiteral(java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendLiteral" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="48671598477581922">
                <property name="value" nameId="yvor.1070475926801:3" value="text" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="48671598477581928">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="48671598477581929">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477581930">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="48671598477581931">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477581933">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="48671598477581932" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="48671598477581937">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.48671598477581894:1" resolveInfo="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="48671598477581925" />
        </node>
      </node>
    </node>
  </root>
  <root id="48671598477852545">
    <node role="staticField" roleId="yvor.1128555889557:3" type="yvor.StaticFieldDeclaration" typeId="yvor.1070462154015:3" id="1075917115050192304">
      <property name="name" nameId="yvnu.1169194664001:0" value="INSTANCE" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="4965148520114300797" />
      <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="1075917115050194072">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="48671598477852545" resolveInfo="PeriodFormatTable" />
      </node>
      <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="1075917115050194056">
        <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="1075917115050194057">
          <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="48671598477852547" resolveInfo="PeriodFormatTable" />
          <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1075917115050194058">
            <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1075917115050194059">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1075917115050194060">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1075917115050194061">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1075917115050194102">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1075917115050194101" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1075917115050215459">
                      <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="48671598477852546" />
    <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="48671598477852547">
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="48671598477852548" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="48671598477852549" />
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852550" />
    </node>
    <node role="rootTemplateAnnotation$attribute" type="yvp6.RootTemplateAnnotation" typeId="yvp6.1168619357332:2" id="48671598477852551">
      <link role="applicableConcept" roleId="yvp6.1168619429071:2" targetNodeId="yvl0.48671598477850406:1" resolveInfo="PeriodFormatsTable" />
    </node>
    <node role="propertyMacro$property_attribute$name" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="48671598477852570">
      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="48671598477852571">
        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852572">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="48671598477852573">
            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852575">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="48671598477852574" />
              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="48671598477852579">
                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="930215626860597324">
      <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="57kc.~BasePeriodFormatTable" resolveInfo="BasePeriodFormatTable" />
    </node>
    <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="930215626860597326">
      <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="930215626860597347" />
      <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="930215626860597328">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatter" resolveInfo="PeriodFormatter" />
      </node>
      <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="930215626860597329">
        <property name="name" nameId="yvnu.1169194664001:0" value="formatterName" />
        <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="930215626860597330">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~String" resolveInfo="String" />
        </node>
      </node>
      <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="930215626860597331">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="930215626860597338">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="930215626860597339">
            <property name="value" nameId="yvor.1070475926801:3" value="Create period formatter" />
          </node>
          <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="930215626860597340">
            <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="930215626860597341">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="930215626860597342">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="930215626860597343">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="930215626860597344">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="930215626860597345" />
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="930215626860597346">
                      <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.48671598477850408:1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="930215626860597336">
          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="930215626860597333" />
        </node>
      </node>
      <node role="annotation" roleId="yvor.1188208488637:3" type="yvor.AnnotationInstance" typeId="yvor.1188207840427:3" id="930215626860597335">
        <link role="annotation" roleId="yvor.1188208074048:3" targetNodeId="vhgx.~Override" resolveInfo="Override" />
      </node>
    </node>
  </root>
  <root id="48671598477852583">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.ClassConcept" typeId="yvor.1068390468198:3" id="48671598477852628">
      <property name="name" nameId="yvnu.1169194664001:0" value="PeriodFormatTable" />
      <node role="method" roleId="yvor.1107880067339:3" type="yvor.InstanceMethodDeclaration" typeId="yvor.1068580123165:3" id="48671598477852635">
        <property name="name" nameId="yvnu.1169194664001:0" value="createFormatter" />
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="48671598477864224">
          <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatter" resolveInfo="PeriodFormatter" />
        </node>
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852637">
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="48671598477852654">
            <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852655">
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="48671598477852656">
                <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="48671598477852657">
                  <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
                  <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="48671598477852689">
                    <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatterBuilder" resolveInfo="PeriodFormatterBuilder" />
                  </node>
                  <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="48671598477852659">
                    <node role="creator" roleId="yvor.1145553007750:3" type="yvor.ClassCreator" typeId="yvor.1212685548494:3" id="48671598477864220">
                      <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%d&lt;init&gt;()" resolveInfo="PeriodFormatterBuilder" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="48671598477852661">
                <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852662">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="48671598477852663">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="48671598477852657" resolveInfo="builder" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="48671598477852664">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendDays()%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendDays" />
                  </node>
                </node>
                <node role="nodeMacro$attribute" type="yvp6.CopySrcListMacro" typeId="yvp6.1114729360583:2" id="48671598477852666">
                  <node role="sourceNodesQuery" roleId="yvp6.1168278589236:2" type="yvp6.SourceSubstituteMacro_SourceNodesQuery" typeId="yvp6.1167951910403:2" id="48671598477852667">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852668">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="48671598477852669">
                        <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852670">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="48671598477852671" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkListAccess" typeId="yvim.1138056282393:16" id="48671598477864225">
                            <link role="link" roleId="yvim.1138056546658:16" targetNodeId="yvl0.48671598477578849:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="48671598477852673">
                <node role="expression" roleId="yvor.1068581517676:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852674">
                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="48671598477852675">
                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="48671598477852657" resolveInfo="builder" />
                  </node>
                  <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="48671598477864221">
                    <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dtoFormatter()%corg%djoda%dtime%dformat%dPeriodFormatter" resolveInfo="toFormatter" />
                  </node>
                </node>
              </node>
            </node>
            <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852677">
              <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="48671598477852678">
                <property name="value" nameId="yvor.1070475926801:3" value="formatterName" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="48671598477852679">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="48671598477852680">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852681">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="48671598477852682">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="48671598477852683">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="48671598477852684" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="48671598477852685">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="48671598477852686">
                <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="48671598477852687">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="48671598477852649" resolveInfo="formatterName" />
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="48671598477852688" />
          </node>
          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="48671598477852647">
            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="48671598477852648" />
          </node>
        </node>
        <node role="parameter" roleId="yvor.1068580123134:3" type="yvor.ParameterDeclaration" typeId="yvor.1068498886292:3" id="48671598477852649">
          <property name="name" nameId="yvnu.1169194664001:0" value="formatterName" />
          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="48671598477852650" />
        </node>
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="48671598477852651" />
        <node role="annotation" roleId="yvor.1188208488637:3" type="yvor.AnnotationInstance" typeId="yvor.1188207840427:3" id="930215626859979185">
          <link role="annotation" roleId="yvor.1188208074048:3" targetNodeId="vhgx.~Override" resolveInfo="Override" />
        </node>
      </node>
      <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="48671598477852629" />
      <node role="constructor" roleId="yvor.1068390468201:3" type="yvor.ConstructorDeclaration" typeId="yvor.1068580123140:3" id="48671598477852630">
        <node role="returnType" roleId="yvor.1068580123133:3" type="yvor.VoidType" typeId="yvor.1068581517677:3" id="48671598477852631" />
        <node role="visibility" roleId="yvor.1178549979242:3" type="yvor.PublicVisibility" typeId="yvor.1146644602865:3" id="48671598477852632" />
        <node role="body" roleId="yvor.1068580123135:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="48671598477852633" />
      </node>
      <node role="superclass" roleId="yvor.1165602531693:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="930215626859979184">
        <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="57kc.~BasePeriodFormatTable" resolveInfo="BasePeriodFormatTable" />
      </node>
    </node>
  </root>
  <root id="5074955036991702210">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5074955036991704390">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5074955036991704391">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5074955036991715094">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5074955036991715095">
            <property name="name" nameId="yvnu.1169194664001:0" value="i" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5074955036991715096">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="vhgx.~Integer" resolveInfo="Integer" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5074955036991704398">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5074955036991715098">
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="930215626859988857">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="57kc.~BasePeriodFormatTable%dgetFormatter(java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatter" resolveInfo="getFormatter" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="930215626859988858">
                <property name="value" nameId="yvor.1070475926801:3" value="default" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="930215626859988900">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="930215626859988901">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="930215626859988902">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="930215626859988903">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="930215626859988905">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="930215626859988904" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="930215626859988909">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="operand" roleId="yvor.1197027771414:3" type="yvko.InternalStaticFieldReference" typeId="yvko.1173995204289:1" id="930215626859988862">
              <property name="fieldName" nameId="yvko.1173995466678:1" value="INSTANCE" />
              <property name="fqClassName" nameId="yvko.1173995448817:1" value="x.y.z.PeriodFormatTable" />
              <node role="propertyMacro$property_attribute$fqClassName" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="930215626859988863">
                <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="930215626859988864">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="930215626859988865">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="930215626859988866">
                      <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="930215626859988867">
                        <property name="name" nameId="yvnu.1169194664001:0" value="table" />
                        <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="930215626859988868">
                          <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvl0.48671598477850406:1" resolveInfo="PeriodFormatsTable" />
                        </node>
                        <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="930215626859988869">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="930215626859988870" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="930215626859988871">
                            <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="930215626859988872">
                              <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="930215626859988885">
                                <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.48671598477850406:1" resolveInfo="PeriodFormatsTable" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="930215626859988874">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4965148520114071309">
                        <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520113990756">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4965148520113990755">
                            <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="930215626859988867" resolveInfo="table" />
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="4965148520113990760">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvnu.1169194664001:0" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.PlusExpression" typeId="yvor.1068581242875:3" id="4965148520114092963">
                          <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="4965148520114092966">
                            <property name="value" nameId="yvor.1070475926801:3" value="." />
                          </node>
                          <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520114092673">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvim.SemanticDowncastExpression" typeId="yvim.1145404486709:16" id="4965148520114092671">
                              <node role="leftExpression" roleId="yvim.1145404616321:16" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="4965148520114071313">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="4965148520114071312">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="930215626859988867" resolveInfo="table" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetModelOperation" typeId="yvim.1143234257716:16" id="4965148520114092670" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="4965148520114092677">
                              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="8n6q.~SModel%dgetLongName()%cjava%dlang%dString" resolveInfo="getLongName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="930215626859988886" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="7249953535157218364">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="7249953535157223235">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7249953535157223236">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7249953535157223237">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7249953535157223238">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7249953535157223239">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatterBuilder" resolveInfo="PeriodFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7249953535157223240">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7249953535157223241">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7249953535157223242">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223238" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7249953535157223243">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappend(org%djoda%dtime%dformat%dPeriodFormatter)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="append" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="7249953535157223253">
                <node role="nodeMacro$attribute" type="yvp6.SwitchMacro" typeId="yvp6.1112731569622:2" id="7249953535157223255">
                  <link role="templateSwitch" roleId="yvp6.1112731629154:2" targetNodeId="1379098806890585667" resolveInfo="switch_IPeriodFormat_reference" />
                  <node role="sourceNodeQuery" roleId="yvp6.1168380395224:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="7249953535157223256">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7249953535157223257">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7249953535157223258">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7249953535157223260">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7249953535157223259" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7249953535157223264">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.7249953535157212422:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="7249953535157223252" />
        </node>
      </node>
    </node>
  </root>
  <root id="7249953535157223315">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="7249953535157223318">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7249953535157223319">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="7249953535157223320">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="7249953535157223321">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="7249953535157223322">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatterBuilder" resolveInfo="PeriodFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484871">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484873">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476484872">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223321" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2872438607476484877">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendPrefix(java%dlang%dString,java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendPrefix" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="2872438607476484882">
                <property name="value" nameId="yvor.1070475926801:3" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="2872438607476486223">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="2872438607476486224">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476486225">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476486226">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476486228">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476486227" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476486232">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912302:1" resolveInfo="prefix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="2872438607476702405">
                <property name="value" nameId="yvor.1070475926801:3" value="" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="2872438607476702407">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="2872438607476702408">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476702409">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="2872438607476702411">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476702412">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="2872438607476702413">
                            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="2872438607476702414">
                              <property name="name" nameId="yvnu.1169194664001:0" value="literal" />
                              <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="2872438607476702415">
                                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070475926800:3" resolveInfo="StringLiteral" />
                              </node>
                              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="2872438607476702416">
                                <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="2872438607476702417">
                                  <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="2872438607476702418">
                                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070475926800:3" resolveInfo="StringLiteral" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476702419">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="2872438607476702420">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476702421">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476702422">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607476702414" resolveInfo="literal" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476702423">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1070475926801:3" resolveInfo="value" />
                                </node>
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476702424">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476702425" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476702438">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912303:1" resolveInfo="prefixPlural" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="2872438607476702427">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476702428">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607476702414" resolveInfo="literal" />
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476702429">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476702430">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476702431" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476702439">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912303:1" resolveInfo="prefixPlural" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="2872438607476702433" />
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476702436">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="2872438607476702437" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="2872438607476484878" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="2872438607476486234">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="2872438607476486235">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476486236">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476486237">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476486244">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476486239">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476486238" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476486243">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912302:1" resolveInfo="prefix" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="2872438607476486248" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476942786">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476942800">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476942788">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223321" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2872438607476942804">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dminimumPrintedDigits(int)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="minimumPrintedDigits" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="2872438607476942805">
                <property name="value" nameId="yvor.1068580320021:3" value="1" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="2872438607476942806">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="2872438607476942807">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476942808">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476942809">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.TernaryOperatorExpression" typeId="yvor.1163668896201:3" id="2872438607477349702">
                          <node role="ifTrue" roleId="yvor.1163668922816:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607477349707">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607477349706" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607477349711">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912306:1" resolveInfo="minDigits" />
                            </node>
                          </node>
                          <node role="ifFalse" roleId="yvor.1163668934364:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="2872438607477349712">
                            <property name="value" nameId="yvor.1068580320021:3" value="1" />
                          </node>
                          <node role="condition" roleId="yvor.1163668914799:3" type="yvor.GreaterThanExpression" typeId="yvor.1081506762703:3" id="2872438607477349697">
                            <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476942811">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476942810" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476942815">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912306:1" resolveInfo="minDigits" />
                              </node>
                            </node>
                            <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="2872438607477349701">
                              <property name="value" nameId="yvor.1068580320021:3" value="0" />
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
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="2872438607476942799" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="2872438607477349714">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="2872438607477349715">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607477349716">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="2872438607477349729">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="2872438607477349730">
                    <property name="name" nameId="yvnu.1169194664001:0" value="container" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="2872438607477349731">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607477349733">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607477349734" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="2872438607477349735">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="2872438607477349736">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="2872438607477349737">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
                          </node>
                        </node>
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Inclusion" typeId="yvim.1144100932627:16" id="2872438607477349739" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607477349852">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607477349863">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607477349854">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607477349853">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607477349730" resolveInfo="container" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="2872438607477349858">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="2872438607477349859">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="2872438607477349862">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.7249953535157196261:1" resolveInfo="PeriodPropertyFormatToken" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AnyOperation" typeId="yvix.1235566554328:7" id="2872438607477349867">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="2872438607477349868">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607477349869">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607477349875">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.GreaterThanExpression" typeId="yvor.1081506762703:3" id="2872438607477349896">
                              <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607477349879">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="2872438607477349876">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607477349870" resolveInfo="it" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607477349890">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912306:1" resolveInfo="minDigits" />
                                </node>
                              </node>
                              <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="2872438607477349904">
                                <property name="value" nameId="yvor.1068580320021:3" value="1" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="2872438607477349870">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="2872438607477349871" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1778677549314164547">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164604">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1778677549314164549">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223321" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="1778677549314164608">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dprintZeroNever()%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="printZeroNever" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="1778677549314164609">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="1778677549314164610">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164611">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1778677549314164616">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164617">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1778677549314164632">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1778677549314164634">
                            <property name="value" nameId="yvor.1070475926801:3" value="printZeroAlways" />
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164626">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164621">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1778677549314164620" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1778677549314164625">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1778677549314158601:1" resolveInfo="zeroHandling" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1778677549314164630">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1778677549314164631">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1778677549314158596:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1778677549314164636">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164637">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1778677549314164638">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1778677549314164639">
                            <property name="value" nameId="yvor.1070475926801:3" value="printZeroIfSupported" />
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164640">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164641">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1778677549314164642" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1778677549314164643">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1778677549314158601:1" resolveInfo="zeroHandling" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1778677549314164644">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1778677549314164645">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1778677549314158597:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1778677549314164647">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164648">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1778677549314164649">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1778677549314164650">
                            <property name="value" nameId="yvor.1070475926801:3" value="printZeroRarelyFirst" />
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164651">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164652">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1778677549314164653" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1778677549314164654">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1778677549314158601:1" resolveInfo="zeroHandling" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1778677549314164655">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1778677549314164656">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1778677549314158599:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="1778677549314164658">
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164659">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1778677549314164660">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1778677549314164661">
                            <property name="value" nameId="yvor.1070475926801:3" value="printZeroRarelyLast" />
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164662">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164663">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1778677549314164664" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1778677549314164665">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1778677549314158601:1" resolveInfo="zeroHandling" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1778677549314164666">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1778677549314164667">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1778677549314158600:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="1778677549314164612">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="1778677549314164614">
                        <property name="value" nameId="yvor.1070475926801:3" value="printZeroNever" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="1778677549314164566" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="1778677549314164567">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="1778677549314164568">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164569">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="1778677549314164570">
                  <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="1778677549314164571">
                    <property name="name" nameId="yvnu.1169194664001:0" value="container" />
                    <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="1778677549314164572">
                      <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
                    </node>
                    <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164573">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="1778677549314164574" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetAncestorOperation" typeId="yvim.1171407110247:16" id="1778677549314164575">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1778677549314164576">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1778677549314164577">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.48671598477573965:1" resolveInfo="PeriodFormat" />
                          </node>
                        </node>
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Inclusion" typeId="yvim.1144100932627:16" id="1778677549314164578" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1778677549314164579">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164580">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164581">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="1778677549314164582">
                        <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1778677549314164571" resolveInfo="container" />
                      </node>
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_GetDescendantsOperation" typeId="yvim.1171305280644:16" id="1778677549314164583">
                        <node role="parameter" roleId="yvim.1144104376918:16" type="yvim.OperationParm_Concept" typeId="yvim.1144101972840:16" id="1778677549314164584">
                          <node role="conceptArgument" roleId="yvim.1207343664468:16" type="yvim.RefConcept_Reference" typeId="yvim.1177026924588:16" id="1778677549314164585">
                            <link role="conceptDeclaration" roleId="yvim.1177026940964:16" targetNodeId="yvl0.7249953535157196261:1" resolveInfo="PeriodPropertyFormatToken" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvix.AnyOperation" typeId="yvix.1235566554328:7" id="1778677549314164586">
                      <node role="closure" roleId="yvix.1204796294226:7" type="yviq.ClosureLiteral" typeId="yviq.1199569711397:3" id="1778677549314164587">
                        <node role="body" roleId="yviq.1199569916463:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="1778677549314164588">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="1778677549314164589">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="1778677549314164975">
                              <node role="expression" roleId="yvor.1081516765348:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164943">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="1778677549314164782">
                                  <node role="operand" roleId="yvor.1197027771414:3" type="yvor.ParameterReference" typeId="yvor.1068581242874:3" id="1778677549314164592">
                                    <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="1778677549314164595" resolveInfo="it" />
                                  </node>
                                  <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="1778677549314164792">
                                    <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.1778677549314158601:1" resolveInfo="zeroHandling" />
                                  </node>
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="1778677549314164952">
                                  <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="1778677549314164953">
                                    <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.1778677549314158598:1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="parameter" roleId="yviq.1199569906740:3" type="yvix.SmartClosureParameterDeclaration" typeId="yvix.1203518072036:7" id="1778677549314164595">
                          <property name="name" nameId="yvnu.1169194664001:0" value="it" />
                          <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.WildCardType" typeId="yvor.1171903607971:3" id="1778677549314164596" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7249953535157223323">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7249953535157223336">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="7249953535157223325">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223321" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="7249953535157223340">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendDays()%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendDays" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="7249953535157223341">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="7249953535157223342">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="7249953535157223343">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="7249953535157223344">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7249953535157223351">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="7249953535157223346">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="7249953535157223345" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7249953535157223350">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.7249953535157223265:1" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="7249953535157223355">
                          <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.48671598476606809:3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="2872438607476484879" />
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484863">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484865">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476484864">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="7249953535157223321" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="2872438607476484869">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendSuffix(java%dlang%dString,java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendSuffix" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="2872438607476484881">
                <property name="value" nameId="yvor.1070475926801:3" value="" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="2872438607476484899">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="2872438607476484900">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476484901">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484902">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484904">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476484903" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476484908">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912304:1" resolveInfo="suffix" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="2872438607476484910">
                <property name="value" nameId="yvor.1070475926801:3" value="" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="2872438607476484912">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="2872438607476484913">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476484914">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="2872438607476484938">
                        <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476484939">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="2872438607476484947">
                            <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="2872438607476484948">
                              <property name="name" nameId="yvnu.1169194664001:0" value="literal" />
                              <node role="type" roleId="yvor.5680397130376446158:3" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="2872438607476484949">
                                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070475926800:3" resolveInfo="StringLiteral" />
                              </node>
                              <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="2872438607476484951">
                                <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="2872438607476484952">
                                  <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="2872438607476484953">
                                    <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070475926800:3" resolveInfo="StringLiteral" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484955">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.AssignmentExpression" typeId="yvor.1068498886294:3" id="2872438607476486204">
                              <node role="lValue" roleId="yvor.1068498886295:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484957">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476484956">
                                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607476484948" resolveInfo="literal" />
                                </node>
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476486203">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvor.1070475926801:3" resolveInfo="value" />
                                </node>
                              </node>
                              <node role="rValue" roleId="yvor.1068498886297:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476486208">
                                <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476486207" />
                                <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476486212">
                                  <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912305:1" resolveInfo="suffixPlural" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="2872438607476486219">
                            <node role="expression" roleId="yvor.1068581517676:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="2872438607476486222">
                              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="2872438607476484948" resolveInfo="literal" />
                            </node>
                          </node>
                        </node>
                        <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484942">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484943">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476484944" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476484945">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912305:1" resolveInfo="suffixPlural" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="2872438607476484946" />
                        </node>
                      </node>
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484915">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="2872438607476484936" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="2872438607476484880" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="2872438607476484884">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="2872438607476484885">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="2872438607476484886">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="2872438607476484887">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484894">
                    <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="2872438607476484889">
                      <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="2872438607476484888" />
                      <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="2872438607476484893">
                        <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871703912304:1" resolveInfo="suffix" />
                      </node>
                    </node>
                    <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="2872438607476484898" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="5581663871702930719">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5581663871702930721">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871702930722">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5581663871702930723">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5581663871702930724">
            <property name="name" nameId="yvnu.1169194664001:0" value="builder" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5581663871702930725">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="977b.~PeriodFormatterBuilder" resolveInfo="PeriodFormatterBuilder" />
            </node>
          </node>
        </node>
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5581663871702930726">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871702930727">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5581663871702930728">
              <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5581663871702930724" resolveInfo="builder" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5581663871702930729">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendSeparator(java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendSeparator" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871702930730">
                <property name="value" nameId="yvor.1070475926801:3" value="text" />
                <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="5581663871702930731">
                  <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="5581663871702930732">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871702930733">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5581663871702930734">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871702930735">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871702930736" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871702931549">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358899:1" resolveInfo="text" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="5581663871703143295">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="5581663871703143296">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143297">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="5581663871703143301">
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143310">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143305">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143304" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143309">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358907:1" resolveInfo="kind" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="5581663871703143314">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="5581663871703143315">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.5581663871702358905:1" />
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143303">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5581663871703143316">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871703143318">
                            <property name="value" nameId="yvor.1070475926801:3" value="appendSeparatorIfFieldsBefore" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.IfStatement" typeId="yvor.1068580123159:3" id="5581663871703143320">
                      <node role="condition" roleId="yvor.1068580123160:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143321">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143322">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143323" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143324">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358907:1" resolveInfo="kind" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="5581663871703143325">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="5581663871703143326">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.5581663871702358906:1" />
                          </node>
                        </node>
                      </node>
                      <node role="ifTrue" roleId="yvor.1068580123161:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143327">
                        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5581663871703143328">
                          <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871703143329">
                            <property name="value" nameId="yvor.1070475926801:3" value="appendSeparatorIfFieldsAfter" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ReturnStatement" typeId="yvor.1068581242878:3" id="5581663871703143331">
                      <node role="expression" roleId="yvor.1068581517676:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871703143334">
                        <property name="value" nameId="yvor.1070475926801:3" value="appendSeparator" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5581663871702930738" />
          <node role="nodeMacro$attribute" type="yvp6.IfMacro" typeId="yvp6.1118773211870:2" id="5581663871703143194">
            <node role="conditionFunction" roleId="yvp6.1167945861827:2" type="yvp6.IfMacro_Condition" typeId="yvp6.1167945743726:2" id="5581663871703143195">
              <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143196">
                <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5581663871703143266">
                  <node role="expression" roleId="yvor.1068580123156:3" type="yvor.NotExpression" typeId="yvor.1081516740877:3" id="5581663871703143267">
                    <node role="expression" roleId="yvor.1081516765348:3" type="yvor.AndExpression" typeId="yvor.1080120340718:3" id="5581663871703143281">
                      <node role="leftExpression" roleId="yvor.1081773367580:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143275">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143270">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143269" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143274">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358907:1" resolveInfo="kind" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Property_HasValue_Enum" typeId="yvim.1146171026731:16" id="5581663871703143279">
                          <node role="value" roleId="yvim.1146171026732:16" type="yvim.EnumMemberReference" typeId="yvim.1138676077309:16" id="5581663871703143280">
                            <link role="enumMember" roleId="yvim.1138676095763:16" targetNodeId="yvl0.5581663871702358902:1" />
                          </node>
                        </node>
                      </node>
                      <node role="rightExpression" roleId="yvor.1081773367579:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143290">
                        <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143285">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143284" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143289">
                            <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358900:1" resolveInfo="lastText" />
                          </node>
                        </node>
                        <node role="operation" roleId="yvor.1197027833540:3" type="yvor.IsNotEmptyOperation" typeId="yvor.1225271408483:3" id="5581663871703143294" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="alternativeConsequence" roleId="yvp6.1194989344771:2" type="yvp6.InlineTemplate_RuleConsequence" typeId="yvp6.1177093525992:2" id="5581663871703143197">
              <node role="templateNode" roleId="yvp6.1177093586806:2" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143247">
                <node role="operand" roleId="yvor.1197027771414:3" type="yvor.LocalVariableReference" typeId="yvor.1068581242866:3" id="5581663871703143248">
                  <link role="variableDeclaration" roleId="yvor.1068581517664:3" targetNodeId="5581663871702930724" resolveInfo="builder" />
                </node>
                <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5581663871703143249">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="977b.~PeriodFormatterBuilder%dappendSeparator(java%dlang%dString,java%dlang%dString)%corg%djoda%dtime%dformat%dPeriodFormatterBuilder" resolveInfo="appendSeparator" />
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871703143250">
                    <property name="value" nameId="yvor.1070475926801:3" value="text" />
                    <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="5581663871703143251">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="5581663871703143252">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143253">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5581663871703143254">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143255">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143256" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143257">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358899:1" resolveInfo="text" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5581663871703143258">
                    <node role="propertyMacro$property_attribute$value" type="yvp6.PropertyMacro" typeId="yvp6.1087833241328:2" id="5581663871703143259">
                      <node role="propertyValueFunction" roleId="yvp6.1167756362303:2" type="yvp6.PropertyMacro_GetPropertyValue" typeId="yvp6.1167756080639:2" id="5581663871703143260">
                        <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5581663871703143261">
                          <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5581663871703143262">
                            <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5581663871703143263">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5581663871703143264" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5581663871703143265">
                                <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5581663871702358900:1" resolveInfo="lastText" />
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
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="5293902215864075092">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5293902215864075095">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864102182">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5293902215864102183">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864102929">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5293902215864102928">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetDefault()%corg%djoda%dtime%dDateTimeZone" resolveInfo="getDefault" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5293902215864102933">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetID()%cjava%dlang%dString" resolveInfo="getID" />
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5293902215864102934" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root id="5293902215864689842">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5293902215864689844">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864689845">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5293902215864697812">
          <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864698558">
            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5293902215864698557">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetDefault()%corg%djoda%dtime%dDateTimeZone" resolveInfo="getDefault" />
              <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
            </node>
            <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="5293902215864698562">
              <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetName(long,java%dutil%dLocale)%cjava%dlang%dString" resolveInfo="getName" />
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.IntegerConstant" typeId="yvor.1068580320020:3" id="5293902215864721342">
                <property name="value" nameId="yvor.1068580320021:3" value="0" />
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5293902215864721347">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5293902215864721348">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864721349">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5293902215864721350">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864721352">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5293902215864721351" />
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215864721356">
                            <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5293902215864698564:1" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.NullLiteral" typeId="yvor.1070534058343:3" id="5293902215864721344">
                <node role="nodeMacro$attribute" type="yvp6.CopySrcNodeMacro" typeId="yvp6.1114706874351:2" id="5293902215864721358">
                  <node role="sourceNodeQuery" roleId="yvp6.1168024447342:2" type="yvp6.SourceSubstituteMacro_SourceNodeQuery" typeId="yvp6.1168024337012:2" id="5293902215864721359">
                    <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864721360">
                      <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5293902215864721361">
                        <node role="expression" roleId="yvor.1068580123156:3" type="yvor.TernaryOperatorExpression" typeId="yvor.1163668896201:3" id="5293902215864721373">
                          <node role="ifTrue" roleId="yvor.1163668922816:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864942489">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864721378">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5293902215864721377" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215864942488">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5293902215864942486:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215864942493">
                              <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvkw.1172681540798:3" />
                            </node>
                          </node>
                          <node role="ifFalse" roleId="yvor.1163668934364:3" type="yvor.GenericNewExpression" typeId="yvor.1145552977093:3" id="5293902215864721383">
                            <node role="creator" roleId="yvor.1145553007750:3" type="yvim.SNodeCreator" typeId="yvim.1180636770613:16" id="5293902215864743803">
                              <node role="createdType" roleId="yvim.1180636770616:16" type="yvim.SNodeType" typeId="yvim.1138055754698:16" id="5293902215864743804">
                                <link role="concept" roleId="yvim.1138405853777:16" targetNodeId="yvor.1070534058343:3" resolveInfo="NullLiteral" />
                              </node>
                            </node>
                          </node>
                          <node role="condition" roleId="yvor.1163668914799:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864721368">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864721363">
                              <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5293902215864721362" />
                              <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SLinkAccess" typeId="yvim.1138056143562:16" id="5293902215864942487">
                                <link role="link" roleId="yvim.1138056516764:16" targetNodeId="yvl0.5293902215864942486:1" />
                              </node>
                            </node>
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.Node_IsNotNullOperation" typeId="yvim.1172008320231:16" id="5293902215864721372" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5293902215864721345" />
              <node role="referenceMacro$link_attribute$baseMethodDeclaration" type="yvp6.ReferenceMacro" typeId="yvp6.1088761943574:2" id="5293902215864743805">
                <node role="referentFunction" roleId="yvp6.1167770376702:2" type="yvp6.ReferenceMacro_GetReferent" typeId="yvp6.1167770111131:2" id="5293902215864743806">
                  <node role="body" roleId="yvor.1137022507850:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215864743807">
                    <node role="statement" roleId="yvor.1068581517665:3" type="yvor.ExpressionStatement" typeId="yvor.1068580123155:3" id="5293902215864743808">
                      <node role="expression" roleId="yvor.1068580123156:3" type="yvor.TernaryOperatorExpression" typeId="yvor.1163668896201:3" id="5293902215864743815">
                        <node role="ifTrue" roleId="yvor.1163668922816:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5293902215864743819">
                          <property name="value" nameId="yvor.1070475926801:3" value="getName" />
                        </node>
                        <node role="ifFalse" roleId="yvor.1163668934364:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="5293902215864743820">
                          <property name="value" nameId="yvor.1070475926801:3" value="getShortName" />
                        </node>
                        <node role="condition" roleId="yvor.1163668914799:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="8736588939155081540">
                          <node role="operand" roleId="yvor.1197027771414:3" type="yvor.DotExpression" typeId="yvor.1197027756228:3" id="5293902215864743810">
                            <node role="operand" roleId="yvor.1197027771414:3" type="yvp6.TemplateFunctionParameter_sourceNode" typeId="yvp6.1167169188348:2" id="5293902215864743809" />
                            <node role="operation" roleId="yvor.1197027833540:3" type="yvim.SPropertyAccess" typeId="yvim.1138056022639:16" id="5293902215864743814">
                              <link role="property" roleId="yvim.1138056395725:16" targetNodeId="yvl0.5293902215864689837:1" resolveInfo="isShort" />
                            </node>
                          </node>
                          <node role="operation" roleId="yvor.1197027833540:3" type="yvor.InstanceMethodCallOperation" typeId="yvor.1202948039474:3" id="8736588939155081544">
                            <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="vhgx.~String%dequals(java%dlang%dObject)%cboolean" resolveInfo="equals" />
                            <node role="actualArgument" roleId="yvor.1068499141038:3" type="yvor.StringLiteral" typeId="yvor.1070475926800:3" id="8736588939155086658">
                              <property name="value" nameId="yvor.1070475926801:3" value="name" />
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
        </node>
      </node>
    </node>
  </root>
  <root id="5293902215865431555">
    <node role="contentNode" roleId="yvp6.1092060348987:2" type="yvor.BlockStatement" typeId="yvor.1082485599095:3" id="5293902215865431557">
      <node role="statements" roleId="yvor.1082485599096:3" type="yvor.StatementList" typeId="yvor.1068580123136:3" id="5293902215865431558">
        <node role="statement" roleId="yvor.1068581517665:3" type="yvor.LocalVariableDeclarationStatement" typeId="yvor.1068581242864:3" id="5293902215865652331">
          <node role="localVariableDeclaration" roleId="yvor.1068581242865:3" type="yvor.LocalVariableDeclaration" typeId="yvor.1068581242863:3" id="5293902215865652332">
            <property name="name" nameId="yvnu.1169194664001:0" value="ss" />
            <node role="type" roleId="yvor.5680397130376446158:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5293902215865652333">
              <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Set" resolveInfo="Set" />
              <node role="parameter" roleId="yvor.1109201940907:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215865652335" />
            </node>
            <node role="initializer" roleId="yvor.1068431790190:3" type="yvor.ParenthesizedExpression" typeId="yvor.1079359253375:3" id="5293902215865652337">
              <node role="expression" roleId="yvor.1079359253376:3" type="yvor.CastExpression" typeId="yvor.1070534934090:3" id="5293902215865652338">
                <node role="expression" roleId="yvor.1070534934092:3" type="yvor.StaticMethodCall" typeId="yvor.1081236700937:3" id="5293902215865652339">
                  <link role="baseMethodDeclaration" roleId="yvor.1068499141037:3" targetNodeId="yjvv.~DateTimeZone%dgetAvailableIDs()%cjava%dutil%dSet" resolveInfo="getAvailableIDs" />
                  <link role="classConcept" roleId="yvor.1144433194310:3" targetNodeId="yjvv.~DateTimeZone" resolveInfo="DateTimeZone" />
                </node>
                <node role="type" roleId="yvor.1070534934091:3" type="yvor.ClassifierType" typeId="yvor.1107535904670:3" id="5293902215865652340">
                  <link role="classifier" roleId="yvor.1107535924139:3" targetNodeId="yjwb.~Set" resolveInfo="Set" />
                  <node role="parameter" roleId="yvor.1109201940907:3" type="yvor.StringType" typeId="yvor.1225271177708:3" id="5293902215865652341" />
                </node>
              </node>
              <node role="templateFragment$attribute" type="yvp6.TemplateFragment" typeId="yvp6.1095672379244:2" id="5293902215865652342" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

