<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:57faf072-5a23-4c30-9cf6-da73f0e0a8ad(jetbrains.mps.vcspersistence)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
  </languages>
  <imports>
    <import index="ajxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#org.apache.log4j(MPS.Core/org.apache.log4j@java_stub)" />
    <import index="fo6t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.persistence.def.v9(MPS.Core/jetbrains.mps.smodel.persistence.def.v9@java_stub)" />
    <import index="zofw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.persistence.def(MPS.Core/jetbrains.mps.smodel.persistence.def@java_stub)" />
    <import index="msyo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="fmpa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#org.xml.sax(JDK/org.xml.sax@java_stub)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="cu2c" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="gznm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.loading(MPS.Core/jetbrains.mps.smodel.loading@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="vsqj" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="59et" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" />
    <import index="7a2w" ref="r:10bf3684-5fb2-4fa0-9dd9-1d05589df2e9(jetbrains.mps.util.xml)" />
    <import index="qx6n" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/org.jetbrains.mps.openapi.persistence@java_stub)" />
    <import index="gtvp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#org.xml.sax.helpers(JDK/org.xml.sax.helpers@java_stub)" />
    <import index="zwkq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#org.jdom(MPS.Core/org.jdom@java_stub)" />
    <import index="1rjq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.persistence.lines(MPS.Core/jetbrains.mps.smodel.persistence.lines@java_stub)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="9yi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.xml.parsers(JDK/javax.xml.parsers@java_stub)" />
    <import index="ep0o" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.persistence(MPS.Core/jetbrains.mps.extapi.persistence@java_stub)" />
    <import index="as9o" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="llmc" ref="r:8276e029-a527-420e-8e0f-72df2934554c(jetbrains.mps.smodel.persistence.def.v4)" />
    <import index="t77w" ref="r:2cdd9596-2ed5-4152-b387-8144a1963c4c(jetbrains.mps.smodel.persistence.def.v5)" />
    <import index="nh62" ref="r:83748538-cbc9-4e2d-b0e1-e282b3d0c13d(jetbrains.mps.smodel.persistence.def.v6)" />
    <import index="zzst" ref="r:b11ed8aa-3bfd-4e32-9f42-fbe92f0be58c(jetbrains.mps.smodel.persistence.def.v7)" />
    <import index="d2v5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.persistence(MPS.Core/jetbrains.mps.persistence@java_stub)" />
    <import index="51te" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.model(MPS.Core/jetbrains.mps.extapi.model@java_stub)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4BapoMDjgzV">
    <property role="TrG5h" value="VCSPersistenceSupport" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="4BapoMDjgA$" role="jymVt">
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgA_" role="1tU5fm">
        <ref role="3uigEE" to="ajxo:~Logger" resolve="Logger" />
      </node>
      <node concept="2YIFZM" id="4BapoMDjjff" role="33vP2m">
        <ref role="1Pybhc" to="ajxo:~LogManager" resolve="LogManager" />
        <ref role="37wK5l" to="ajxo:~LogManager.getLogger(java.lang.Class):org.apache.log4j.Logger" resolve="getLogger" />
        <node concept="3VsKOn" id="4BapoMDjgAC" role="37wK5m">
          <ref role="3VsUkX" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4BapoMDjgAD" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgAE" role="jymVt">
      <property role="TrG5h" value="TARGET_NODE_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgAF" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgAG" role="33vP2m">
        <property role="Xl_RC" value="targetNodeId" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgAH" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgAI" role="jymVt">
      <property role="TrG5h" value="LINK" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgAJ" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgAK" role="33vP2m">
        <property role="Xl_RC" value="link" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgAL" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgAM" role="jymVt">
      <property role="TrG5h" value="ROLE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgAN" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgAO" role="33vP2m">
        <property role="Xl_RC" value="role" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgAP" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgAU" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgAV" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgAW" role="33vP2m">
        <property role="Xl_RC" value="name" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgAX" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgB2" role="jymVt">
      <property role="TrG5h" value="NAMESPACE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgB3" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgB4" role="33vP2m">
        <property role="Xl_RC" value="namespace" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgB5" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgB6" role="jymVt">
      <property role="TrG5h" value="NODE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgB7" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgB8" role="33vP2m">
        <property role="Xl_RC" value="node" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgB9" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBa" role="jymVt">
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBb" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBc" role="33vP2m">
        <property role="Xl_RC" value="type" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBd" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBm" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBn" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBo" role="33vP2m">
        <property role="Xl_RC" value="id" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBp" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBq" role="jymVt">
      <property role="TrG5h" value="RESOLVE_INFO" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBr" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBs" role="33vP2m">
        <property role="Xl_RC" value="resolveInfo" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBt" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBu" role="jymVt">
      <property role="TrG5h" value="MODEL" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBv" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBw" role="33vP2m">
        <property role="Xl_RC" value="model" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBx" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBy" role="jymVt">
      <property role="TrG5h" value="PROPERTY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBz" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgB$" role="33vP2m">
        <property role="Xl_RC" value="property" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgB_" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBA" role="jymVt">
      <property role="TrG5h" value="VALUE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBB" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBC" role="33vP2m">
        <property role="Xl_RC" value="value" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBD" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBE" role="jymVt">
      <property role="TrG5h" value="IMPORT_ELEMENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBF" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBG" role="33vP2m">
        <property role="Xl_RC" value="import" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBH" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBI" role="jymVt">
      <property role="TrG5h" value="VISIBLE_ELEMENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBJ" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBK" role="33vP2m">
        <property role="Xl_RC" value="visible" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBL" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBM" role="jymVt">
      <property role="TrG5h" value="MODEL_IMPORT_INDEX" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBN" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBO" role="33vP2m">
        <property role="Xl_RC" value="index" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBP" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBU" role="jymVt">
      <property role="TrG5h" value="LANGUAGE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBV" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgBW" role="33vP2m">
        <property role="Xl_RC" value="language" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgBX" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgBY" role="jymVt">
      <property role="TrG5h" value="LANGUAGE_ASPECT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgBZ" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgC0" role="33vP2m">
        <property role="Xl_RC" value="languageAspect" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgC1" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgC2" role="jymVt">
      <property role="TrG5h" value="LANGUAGE_ENGAGED_ON_GENERATION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgC3" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgC4" role="33vP2m">
        <property role="Xl_RC" value="language-engaged-on-generation" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgC5" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgC6" role="jymVt">
      <property role="TrG5h" value="DEVKIT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgC7" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgC8" role="33vP2m">
        <property role="Xl_RC" value="devkit" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgC9" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCa" role="jymVt">
      <property role="TrG5h" value="MODEL_UID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCb" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCc" role="33vP2m">
        <property role="Xl_RC" value="modelUID" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCd" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCi" role="jymVt">
      <property role="TrG5h" value="VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCj" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCk" role="33vP2m">
        <property role="Xl_RC" value="version" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCl" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCm" role="jymVt">
      <property role="TrG5h" value="IMPLICIT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCn" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCo" role="33vP2m">
        <property role="Xl_RC" value="implicit" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCp" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCu" role="jymVt">
      <property role="TrG5h" value="ROOTS" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCv" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCw" role="33vP2m">
        <property role="Xl_RC" value="roots" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCx" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCy" role="jymVt">
      <property role="TrG5h" value="ROOT_CONTENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCz" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgC$" role="33vP2m">
        <property role="Xl_RC" value="root" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgC_" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCF" role="jymVt">
      <property role="TrG5h" value="PERSISTENCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCG" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCH" role="33vP2m">
        <property role="Xl_RC" value="persistence" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCI" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4BapoMDjgCJ" role="jymVt">
      <property role="TrG5h" value="PERSISTENCE_VERSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4BapoMDjgCK" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="4BapoMDjgCL" role="33vP2m">
        <property role="Xl_RC" value="version" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgCM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4BapoMDmImi" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDmOc_" role="jymVt">
      <property role="TrG5h" value="getPersistence" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDmOcA" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4BapoMDmOcB" role="3clF46">
        <property role="TrG5h" value="version" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="4BapoMDmOcC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4BapoMDmOcD" role="3clF47">
        <node concept="1gVbGN" id="4BapoMDmYnF" role="3cqZAp">
          <node concept="2d3UOw" id="4BapoMDmYIX" role="1gVkn0">
            <node concept="3cmrfG" id="4BapoMDmYJF" role="3uHU7w">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="37vLTw" id="4BapoMDmYpN" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDmYlG" role="3cqZAp" />
        <node concept="3clFbJ" id="4BapoMDmPhd" role="3cqZAp">
          <node concept="3clFbS" id="4BapoMDmPhf" role="3clFbx">
            <node concept="3cpWs6" id="4BapoMDmPCd" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDmPDd" role="3cqZAk">
                <node concept="HV5vD" id="4BapoMDmV4_" role="2ShVmc">
                  <ref role="HV5vE" to="llmc:p9Lm3R6FZH" resolve="ModelPersistence4" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4BapoMDmPBb" role="3clFbw">
            <node concept="3cmrfG" id="4BapoMDmPBC" role="3uHU7w">
              <property role="3cmrfH" value="4" />
            </node>
            <node concept="37vLTw" id="4BapoMDmPii" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDmV5v" role="3cqZAp">
          <node concept="3clFbS" id="4BapoMDmV5w" role="3clFbx">
            <node concept="3cpWs6" id="4BapoMDmV5x" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDmV5y" role="3cqZAk">
                <node concept="HV5vD" id="4BapoMDmVMx" role="2ShVmc">
                  <ref role="HV5vE" to="t77w:p9Lm3R6FXR" resolve="ModelPersistence5" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4BapoMDmV5$" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDmV5A" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
            <node concept="3cmrfG" id="4BapoMDmVdg" role="3uHU7w">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDmV7h" role="3cqZAp">
          <node concept="3clFbS" id="4BapoMDmV7i" role="3clFbx">
            <node concept="3cpWs6" id="4BapoMDmV7j" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDmV7k" role="3cqZAk">
                <node concept="HV5vD" id="4BapoMDmW3g" role="2ShVmc">
                  <ref role="HV5vE" to="nh62:p9Lm3R6B_U" resolve="ModelPersistence6" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4BapoMDmV7m" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDmV7o" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
            <node concept="3cmrfG" id="4BapoMDmVei" role="3uHU7w">
              <property role="3cmrfH" value="6" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDmV9k" role="3cqZAp">
          <node concept="3clFbS" id="4BapoMDmV9l" role="3clFbx">
            <node concept="3cpWs6" id="4BapoMDmV9m" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDmV9n" role="3cqZAk">
                <node concept="HV5vD" id="4BapoMDmYjR" role="2ShVmc">
                  <ref role="HV5vE" to="zzst:p9Lm3R6x5Z" resolve="ModelPersistence7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4BapoMDmV9p" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDmV9r" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
            <node concept="3cmrfG" id="4BapoMDmVfk" role="3uHU7w">
              <property role="3cmrfH" value="7" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDmVhK" role="3cqZAp" />
        <node concept="3SKdUt" id="1NiMOxiwTOj" role="3cqZAp">
          <node concept="3SKdUq" id="1NiMOxiwUbl" role="3SKWNk">
            <property role="3SKdUp" value="todo remove this after removing usages of VCSPersistenceSupport from everywhere except VCSPersistenceUtil" />
          </node>
        </node>
        <node concept="3cpWs6" id="4BapoMDmVoc" role="3cqZAp">
          <node concept="2YIFZM" id="4BapoMDmVtm" role="3cqZAk">
            <ref role="37wK5l" to="zofw:~ModelPersistence.getPersistence(int):jetbrains.mps.smodel.persistence.def.IModelPersistence" resolve="getPersistence" />
            <ref role="1Pybhc" to="zofw:~ModelPersistence" resolve="ModelPersistence" />
            <node concept="37vLTw" id="4BapoMDmVv9" role="37wK5m">
              <ref role="3cqZAo" node="4BapoMDmOcB" resolve="version" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDmOcV" role="3clF45">
        <ref role="3uigEE" to="zofw:~IModelPersistence" resolve="IModelPersistence" />
      </node>
      <node concept="3Tm6S6" id="4BapoMDsKdZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4BapoMDmJ3q" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgDP" role="jymVt">
      <property role="TrG5h" value="loadDescriptor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4BapoMDjgDQ" role="3clF46">
        <property role="TrG5h" value="result" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgDR" role="1tU5fm">
          <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgDS" role="3clF46">
        <property role="TrG5h" value="dataSource" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgDT" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgDU" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgDV" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgDX" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgDW" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="in" />
            <node concept="3uibUv" id="4BapoMDjgDY" role="1tU5fm">
              <ref role="3uigEE" to="fxg7:~InputStream" resolve="InputStream" />
            </node>
            <node concept="10Nm6u" id="4BapoMDjgDZ" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="4BapoMDjgE_" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgEA" role="TEXxN">
            <node concept="3clFbS" id="4BapoMDjgEq" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgE$" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjjXV" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjjXW" role="2ShVmc">
                    <ref role="37wK5l" to="zofw:~ModelReadException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="ModelReadException" />
                    <node concept="3cpWs3" id="4BapoMDjgEs" role="37wK5m">
                      <node concept="3cpWs3" id="4BapoMDjgEt" role="3uHU7B">
                        <node concept="3cpWs3" id="4BapoMDjgEu" role="3uHU7B">
                          <node concept="Xl_RD" id="4BapoMDjgEv" role="3uHU7B">
                            <property role="Xl_RC" value="Couldn't read descriptor from " />
                          </node>
                          <node concept="2OqwBi" id="4BapoMDjjY0" role="3uHU7w">
                            <node concept="37vLTw" id="4BapoMDjjXZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4BapoMDjgDS" resolve="dataSource" />
                            </node>
                            <node concept="liA8E" id="4BapoMDjjY1" role="2OqNvi">
                              <ref role="37wK5l" to="qx6n:~DataSource.getLocation():java.lang.String" resolve="getLocation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4BapoMDjgEx" role="3uHU7w">
                          <property role="Xl_RC" value=": " />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjjY5" role="3uHU7w">
                        <node concept="37vLTw" id="4BapoMDjjY4" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjgEm" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjjY6" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgEz" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgEm" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgEm" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgEo" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgEi" role="2GVbov">
            <node concept="3clFbF" id="4BapoMDjgEj" role="3cqZAp">
              <node concept="2YIFZM" id="4BapoMDjl3h" role="3clFbG">
                <ref role="1Pybhc" to="msyo:~FileUtil" resolve="FileUtil" />
                <ref role="37wK5l" to="msyo:~FileUtil.closeFileSafe(java.io.Closeable):void" resolve="closeFileSafe" />
                <node concept="37vLTw" id="4BapoMDjgEl" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgDW" resolve="in" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgE1" role="2GV8ay">
            <node concept="3clFbF" id="4BapoMDjgE2" role="3cqZAp">
              <node concept="37vLTI" id="4BapoMDjgE3" role="3clFbG">
                <node concept="37vLTw" id="4BapoMDjgE4" role="37vLTJ">
                  <ref role="3cqZAo" node="4BapoMDjgDW" resolve="in" />
                </node>
                <node concept="2OqwBi" id="4BapoMDjl3l" role="37vLTx">
                  <node concept="37vLTw" id="4BapoMDjl3k" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgDS" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjl3m" role="2OqNvi">
                    <ref role="37wK5l" to="qx6n:~StreamDataSource.openInputStream():java.io.InputStream" resolve="openInputStream" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4BapoMDjgE7" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgE6" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="4BapoMDjgE8" role="1tU5fm">
                  <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
                </node>
                <node concept="2ShNRf" id="4BapoMDjl3n" role="33vP2m">
                  <node concept="1pGfFk" id="4BapoMDjl3G" role="2ShVmc">
                    <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                    <node concept="2ShNRf" id="4BapoMDjl3H" role="37wK5m">
                      <node concept="1pGfFk" id="4BapoMDjlcx" role="2ShVmc">
                        <ref role="37wK5l" to="fxg7:~InputStreamReader.&lt;init&gt;(java.io.InputStream,java.nio.charset.Charset)" resolve="InputStreamReader" />
                        <node concept="37vLTw" id="4BapoMDjgEb" role="37wK5m">
                          <ref role="3cqZAo" node="4BapoMDjgDW" resolve="in" />
                        </node>
                        <node concept="10M0yZ" id="4BapoMDjGtE" role="37wK5m">
                          <ref role="1PxDUh" to="msyo:~FileUtil" resolve="FileUtil" />
                          <ref role="3cqZAo" to="msyo:~FileUtil.DEFAULT_CHARSET" resolve="DEFAULT_CHARSET" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4BapoMDsKEd" role="3cqZAp">
              <node concept="1rXfSq" id="4BapoMDsKEe" role="3clFbG">
                <ref role="37wK5l" node="4BapoMDjgQK" resolve="parseAndHandleExceptions" />
                <node concept="37vLTw" id="4BapoMDsKEk" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgE6" resolve="source" />
                </node>
                <node concept="2ShNRf" id="4BapoMDsKEg" role="37wK5m">
                  <node concept="1pGfFk" id="4BapoMDsKEh" role="2ShVmc">
                    <ref role="37wK5l" node="4BapoMDjg$6" resolve="VCSPersistenceSupport.MyDescriptorHandler" />
                    <node concept="37vLTw" id="4BapoMDsKEl" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgDQ" resolve="result" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="4BapoMDsKEj" role="37wK5m">
                  <property role="Xl_RC" value="model descriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4BapoMDjgEB" role="1B3o_S" />
      <node concept="3cqZAl" id="4BapoMDjgEC" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4BapoMDnhWs" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgER" role="jymVt">
      <property role="TrG5h" value="loadDescriptor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgES" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgET" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgEU" role="1tU5fm">
          <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgEV" role="Sfmx6">
        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgEW" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgEY" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgEX" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4BapoMDjgEZ" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
            </node>
            <node concept="2ShNRf" id="4BapoMDjlcB" role="33vP2m">
              <node concept="1pGfFk" id="4BapoMDjlcC" role="2ShVmc">
                <ref role="37wK5l" to="cu2c:~SModelHeader.&lt;init&gt;()" resolve="SModelHeader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4BapoMDsKE3" role="3cqZAp">
          <node concept="1rXfSq" id="4BapoMDsKE4" role="3clFbG">
            <ref role="37wK5l" node="4BapoMDjgQK" resolve="parseAndHandleExceptions" />
            <node concept="37vLTw" id="4BapoMDsKEa" role="37wK5m">
              <ref role="3cqZAo" node="4BapoMDjgET" resolve="source" />
            </node>
            <node concept="2ShNRf" id="4BapoMDsKE6" role="37wK5m">
              <node concept="1pGfFk" id="4BapoMDsKE7" role="2ShVmc">
                <ref role="37wK5l" node="4BapoMDjg$6" resolve="VCSPersistenceSupport.MyDescriptorHandler" />
                <node concept="37vLTw" id="4BapoMDsKEb" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgEX" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="4BapoMDsKE9" role="37wK5m">
              <property role="Xl_RC" value="model descriptor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4BapoMDjgF5" role="3cqZAp">
          <node concept="37vLTw" id="4BapoMDjgF6" role="3cqZAk">
            <ref role="3cqZAo" node="4BapoMDjgEX" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgF7" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgF8" role="3clF45">
        <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnhaQ" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgF9" role="jymVt">
      <property role="TrG5h" value="loadDescriptor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgFa" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgFb" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgFc" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgFd" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgFe" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgFg" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgFf" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4BapoMDjgFh" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
            </node>
            <node concept="2ShNRf" id="4BapoMDjlcD" role="33vP2m">
              <node concept="1pGfFk" id="4BapoMDjlcE" role="2ShVmc">
                <ref role="37wK5l" to="cu2c:~SModelHeader.&lt;init&gt;()" resolve="SModelHeader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4BapoMDjgFj" role="3cqZAp">
          <node concept="1rXfSq" id="4BapoMDjgFk" role="3clFbG">
            <ref role="37wK5l" node="4BapoMDjgDP" resolve="loadDescriptor" />
            <node concept="37vLTw" id="4BapoMDjgFl" role="37wK5m">
              <ref role="3cqZAo" node="4BapoMDjgFf" resolve="result" />
            </node>
            <node concept="37vLTw" id="4BapoMDjgFm" role="37wK5m">
              <ref role="3cqZAo" node="4BapoMDjgFb" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4BapoMDjgTr" role="3cqZAp">
          <node concept="3SKdUq" id="4BapoMDjgTq" role="3SKWNk">
            <property role="3SKdUp" value="for old persistences try to load header from metadata" />
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgFn" role="3cqZAp">
          <node concept="1Wc70l" id="4BapoMDjgFo" role="3clFbw">
            <node concept="3eOVzh" id="4BapoMDjgFp" role="3uHU7B">
              <node concept="2OqwBi" id="4BapoMDjlcI" role="3uHU7B">
                <node concept="37vLTw" id="4BapoMDjlcH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4BapoMDjgFf" resolve="result" />
                </node>
                <node concept="liA8E" id="4BapoMDjlcJ" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SModelHeader.getPersistenceVersion():int" resolve="getPersistenceVersion" />
                </node>
              </node>
              <node concept="3cmrfG" id="4BapoMDjgFr" role="3uHU7w">
                <property role="3cmrfH" value="7" />
              </node>
            </node>
            <node concept="2ZW3vV" id="4BapoMDjgFu" role="3uHU7w">
              <node concept="37vLTw" id="4BapoMDjgFs" role="2ZW6bz">
                <ref role="3cqZAo" node="4BapoMDjgFb" resolve="source" />
              </node>
              <node concept="3uibUv" id="4BapoMDjgFt" role="2ZW6by">
                <ref role="3uigEE" to="ep0o:~FileDataSource" resolve="FileDataSource" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgFw" role="3clFbx">
            <node concept="3cpWs8" id="4BapoMDjgFy" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgFx" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="metadata" />
                <node concept="3uibUv" id="4BapoMDjgFz" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
                  <node concept="3uibUv" id="4BapoMDjgF$" role="11_B2D">
                    <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                  </node>
                  <node concept="3uibUv" id="4BapoMDjgF_" role="11_B2D">
                    <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                  </node>
                </node>
                <node concept="1rXfSq" id="4BapoMDjgFA" role="33vP2m">
                  <ref role="37wK5l" node="4BapoMDjgPZ" resolve="loadMetadata" />
                  <node concept="2OqwBi" id="4BapoMDjgFB" role="37wK5m">
                    <node concept="1eOMI4" id="4BapoMDjgFF" role="2Oq$k0">
                      <node concept="10QFUN" id="4BapoMDjgFC" role="1eOMHV">
                        <node concept="37vLTw" id="4BapoMDjgFD" role="10QFUP">
                          <ref role="3cqZAo" node="4BapoMDjgFb" resolve="source" />
                        </node>
                        <node concept="3uibUv" id="4BapoMDjgFE" role="10QFUM">
                          <ref role="3uigEE" to="ep0o:~FileDataSource" resolve="FileDataSource" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4BapoMDjgFG" role="2OqNvi">
                      <ref role="37wK5l" to="ep0o:~FileDataSource.getFile():jetbrains.mps.vfs.IFile" resolve="getFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4BapoMDjgFH" role="3cqZAp">
              <node concept="3y3z36" id="4BapoMDjgFI" role="3clFbw">
                <node concept="37vLTw" id="4BapoMDjgFJ" role="3uHU7B">
                  <ref role="3cqZAo" node="4BapoMDjgFx" resolve="metadata" />
                </node>
                <node concept="10Nm6u" id="4BapoMDjgFK" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="4BapoMDjgFM" role="3clFbx">
                <node concept="3clFbJ" id="4BapoMDjgFN" role="3cqZAp">
                  <node concept="2OqwBi" id="4BapoMDjlcN" role="3clFbw">
                    <node concept="37vLTw" id="4BapoMDjlcM" role="2Oq$k0">
                      <ref role="3cqZAo" node="4BapoMDjgFx" resolve="metadata" />
                    </node>
                    <node concept="liA8E" id="4BapoMDjlcO" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                      <node concept="10M0yZ" id="4BapoMDjGtF" role="37wK5m">
                        <ref role="1PxDUh" to="cu2c:~SModelHeader" resolve="SModelHeader" />
                        <ref role="3cqZAo" to="cu2c:~SModelHeader.DO_NOT_GENERATE" resolve="DO_NOT_GENERATE" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4BapoMDjgFR" role="3clFbx">
                    <node concept="3clFbF" id="4BapoMDjgFS" role="3cqZAp">
                      <node concept="2OqwBi" id="4BapoMDjlcV" role="3clFbG">
                        <node concept="37vLTw" id="4BapoMDjlcU" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjgFf" resolve="result" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjlcW" role="2OqNvi">
                          <ref role="37wK5l" to="cu2c:~SModelHeader.setDoNotGenerate(boolean):void" resolve="setDoNotGenerate" />
                          <node concept="2YIFZM" id="4BapoMDjlcZ" role="37wK5m">
                            <ref role="1Pybhc" to="e2lb:~Boolean" resolve="Boolean" />
                            <ref role="37wK5l" to="e2lb:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
                            <node concept="2OqwBi" id="4BapoMDjld3" role="37wK5m">
                              <node concept="37vLTw" id="4BapoMDjld2" role="2Oq$k0">
                                <ref role="3cqZAo" node="4BapoMDjgFx" resolve="metadata" />
                              </node>
                              <node concept="liA8E" id="4BapoMDjld4" role="2OqNvi">
                                <ref role="37wK5l" to="k7g3:~Map.remove(java.lang.Object):java.lang.Object" resolve="remove" />
                                <node concept="10M0yZ" id="4BapoMDjGtG" role="37wK5m">
                                  <ref role="1PxDUh" to="cu2c:~SModelHeader" resolve="SModelHeader" />
                                  <ref role="3cqZAo" to="cu2c:~SModelHeader.DO_NOT_GENERATE" resolve="DO_NOT_GENERATE" />
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
        <node concept="3cpWs6" id="4BapoMDjgFX" role="3cqZAp">
          <node concept="37vLTw" id="4BapoMDjgFY" role="3cqZAk">
            <ref role="3cqZAo" node="4BapoMDjgFf" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgFZ" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgG0" role="3clF45">
        <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDniQw" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgG1" role="jymVt">
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4BapoMDjgG2" role="3clF46">
        <property role="TrG5h" value="header" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgG3" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgG4" role="1tU5fm">
          <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgG5" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgG6" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgG7" role="1tU5fm">
          <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgG8" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgG9" role="1tU5fm">
          <ref role="3uigEE" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgGa" role="Sfmx6">
        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="4BapoMDjgGb" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgGc" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgGe" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgGd" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="mp" />
            <node concept="3uibUv" id="4BapoMDsRQ6" role="1tU5fm">
              <ref role="3uigEE" to="zofw:~IModelPersistence" resolve="IModelPersistence" />
            </node>
            <node concept="1rXfSq" id="4BapoMDjgGg" role="33vP2m">
              <ref role="37wK5l" node="4BapoMDmOc_" resolve="getPersistence" />
              <node concept="2OqwBi" id="4BapoMDjldb" role="37wK5m">
                <node concept="37vLTw" id="4BapoMDjlda" role="2Oq$k0">
                  <ref role="3cqZAo" node="4BapoMDjgG2" resolve="header" />
                </node>
                <node concept="liA8E" id="4BapoMDjldc" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SModelHeader.getPersistenceVersion():int" resolve="getPersistenceVersion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgGi" role="3cqZAp">
          <node concept="3eOVzh" id="4BapoMDjgGj" role="3clFbw">
            <node concept="2OqwBi" id="4BapoMDjldg" role="3uHU7B">
              <node concept="37vLTw" id="4BapoMDjldf" role="2Oq$k0">
                <ref role="3cqZAo" node="4BapoMDjgG2" resolve="header" />
              </node>
              <node concept="liA8E" id="4BapoMDjldh" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~SModelHeader.getPersistenceVersion():int" resolve="getPersistenceVersion" />
              </node>
            </node>
            <node concept="3cmrfG" id="4BapoMDjgGl" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgGn" role="3clFbx">
            <node concept="YS8fn" id="4BapoMDjgGr" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDjldi" role="YScLw">
                <node concept="1pGfFk" id="4BapoMDjldj" role="2ShVmc">
                  <ref role="37wK5l" to="zofw:~ModelReadException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="ModelReadException" />
                  <node concept="Xl_RD" id="4BapoMDjgGp" role="37wK5m">
                    <property role="Xl_RC" value="Couldn't read model because of unknown persistence version" />
                  </node>
                  <node concept="10Nm6u" id="4BapoMDjgGq" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDn9W0" role="3cqZAp" />
        <node concept="3cpWs8" id="4BapoMDjgHi" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgHh" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="m" />
            <node concept="3uibUv" id="4BapoMDjgHj" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="4BapoMDnbk3" role="33vP2m">
              <node concept="3cpWs3" id="4BapoMDnc2v" role="3uHU7B">
                <node concept="Xl_RD" id="4BapoMDnbk9" role="3uHU7B">
                  <property role="Xl_RC" value="Can not find appropriate persistence version for model " />
                </node>
                <node concept="2OqwBi" id="4BapoMDjle0" role="3uHU7w">
                  <node concept="37vLTw" id="4BapoMDjldZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgG2" resolve="header" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjle1" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~SModelHeader.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4BapoMDnbkb" role="3uHU7w">
                <property role="Xl_RC" value="\n Use newer version of JetBrains MPS to load this model." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgGs" role="3cqZAp">
          <node concept="3clFbC" id="4BapoMDn95Y" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDjgGu" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDjgGd" resolve="mp" />
            </node>
            <node concept="10Nm6u" id="4BapoMDjgGv" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4BapoMDn963" role="3clFbx">
            <node concept="YS8fn" id="4BapoMDjgHp" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDjldS" role="YScLw">
                <node concept="1pGfFk" id="4BapoMDjldT" role="2ShVmc">
                  <ref role="37wK5l" to="zofw:~PersistenceVersionNotFoundException.&lt;init&gt;(java.lang.String)" resolve="PersistenceVersionNotFoundException" />
                  <node concept="37vLTw" id="4BapoMDnchs" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjgHh" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDnd7p" role="3cqZAp" />
        <node concept="3SKdUt" id="4BapoMDjgTt" role="3cqZAp">
          <node concept="3SKdUq" id="4BapoMDjgTs" role="3SKWNk">
            <property role="3SKdUp" value="first try to use SAX parser" />
          </node>
        </node>
        <node concept="3cpWs8" id="4BapoMDjgGz" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgGy" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="handler" />
            <node concept="3uibUv" id="4BapoMDjgG$" role="1tU5fm">
              <ref role="3uigEE" to="7a2w:1NGcDawKVyN" resolve="XMLSAXHandler" />
              <node concept="3uibUv" id="4BapoMDjgG_" role="11_B2D">
                <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
              </node>
            </node>
            <node concept="2OqwBi" id="4BapoMDjldn" role="33vP2m">
              <node concept="37vLTw" id="4BapoMDjldm" role="2Oq$k0">
                <ref role="3cqZAo" node="4BapoMDjgGd" resolve="mp" />
              </node>
              <node concept="liA8E" id="4BapoMDjldo" role="2OqNvi">
                <ref role="37wK5l" to="zofw:~IModelPersistence.getModelReaderHandler(jetbrains.mps.smodel.loading.ModelLoadingState,jetbrains.mps.smodel.SModelHeader):jetbrains.mps.util.xml.XMLSAXHandler" resolve="getModelReaderHandler" />
                <node concept="37vLTw" id="4BapoMDjgGB" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgG8" resolve="state" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgGC" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgG2" resolve="header" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgGD" role="3cqZAp">
          <node concept="3y3z36" id="4BapoMDjgGE" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDjgGF" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDjgGy" resolve="handler" />
            </node>
            <node concept="10Nm6u" id="4BapoMDjgGG" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4BapoMDjgGI" role="3clFbx">
            <node concept="3clFbF" id="4BapoMDjgGJ" role="3cqZAp">
              <node concept="1rXfSq" id="4BapoMDjgGK" role="3clFbG">
                <ref role="37wK5l" node="4BapoMDjgQK" resolve="parseAndHandleExceptions" />
                <node concept="37vLTw" id="4BapoMDjgGL" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgG5" resolve="source" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgGM" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgGy" resolve="handler" />
                </node>
                <node concept="Xl_RD" id="4BapoMDjgGN" role="37wK5m">
                  <property role="Xl_RC" value="model" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4BapoMDjgGP" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgGO" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="result" />
                <node concept="3uibUv" id="4BapoMDjgGQ" role="1tU5fm">
                  <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
                </node>
                <node concept="2OqwBi" id="4BapoMDjlds" role="33vP2m">
                  <node concept="37vLTw" id="4BapoMDjldr" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgGy" resolve="handler" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjldt" role="2OqNvi">
                    <ref role="37wK5l" to="7a2w:1NGcDawKWcC" resolve="getResult" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4BapoMDjgTv" role="3cqZAp">
              <node concept="3SKdUq" id="4BapoMDjgTu" role="3SKWNk">
                <property role="3SKdUp" value="in case persistence version could change during IModelPersistence activities, might need to update header:" />
              </node>
            </node>
            <node concept="3SKdUt" id="4BapoMDjgTx" role="3cqZAp">
              <node concept="3SKdUq" id="4BapoMDjgTw" role="3SKWNk">
                <property role="3SKdUp" value="header.setPersistenceVersion(mp.getVersion());" />
              </node>
            </node>
            <node concept="3cpWs6" id="4BapoMDjgGS" role="3cqZAp">
              <node concept="37vLTw" id="4BapoMDjgGT" role="3cqZAk">
                <ref role="3cqZAo" node="4BapoMDjgGO" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDndMm" role="3cqZAp" />
        <node concept="3SKdUt" id="4BapoMDjgTz" role="3cqZAp">
          <node concept="3SKdUq" id="4BapoMDjgTy" role="3SKWNk">
            <property role="3SKdUp" value="then try to use DOM reader" />
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDsTdg" role="3cqZAp">
          <node concept="3clFbS" id="4BapoMDsTdi" role="3clFbx">
            <node concept="YS8fn" id="4BapoMDsUx1" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDsUx2" role="YScLw">
                <node concept="1pGfFk" id="4BapoMDsUx3" role="2ShVmc">
                  <ref role="37wK5l" to="zofw:~PersistenceVersionNotFoundException.&lt;init&gt;(java.lang.String)" resolve="PersistenceVersionNotFoundException" />
                  <node concept="37vLTw" id="4BapoMDsUx4" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjgHh" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4BapoMDsUb8" role="3clFbw">
            <node concept="2ZW3vV" id="4BapoMDsUb9" role="3fr31v">
              <node concept="3uibUv" id="4BapoMDsUv6" role="2ZW6by">
                <ref role="3uigEE" to="llmc:4BapoMDsMz7" resolve="IPersistenceWithReader" />
              </node>
              <node concept="37vLTw" id="4BapoMDsUbb" role="2ZW6bz">
                <ref role="3cqZAo" node="4BapoMDjgGd" resolve="mp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BapoMDjgGV" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgGU" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="reader" />
            <node concept="3uibUv" id="4BapoMDjgGW" role="1tU5fm">
              <ref role="3uigEE" to="llmc:4BapoMDsvXG" resolve="IModelReader" />
            </node>
            <node concept="2OqwBi" id="4BapoMDjldx" role="33vP2m">
              <node concept="1eOMI4" id="4BapoMDsVhN" role="2Oq$k0">
                <node concept="10QFUN" id="4BapoMDsVhO" role="1eOMHV">
                  <node concept="37vLTw" id="4BapoMDsVhM" role="10QFUP">
                    <ref role="3cqZAo" node="4BapoMDjgGd" resolve="mp" />
                  </node>
                  <node concept="3uibUv" id="4BapoMDsV_S" role="10QFUM">
                    <ref role="3uigEE" to="llmc:4BapoMDsMz7" resolve="IPersistenceWithReader" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4BapoMDjldy" role="2OqNvi">
                <ref role="37wK5l" to="llmc:4BapoMDsMzA" resolve="getModelReader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgGY" role="3cqZAp">
          <node concept="3clFbC" id="4BapoMDne6C" role="3clFbw">
            <node concept="37vLTw" id="4BapoMDjgH0" role="3uHU7B">
              <ref role="3cqZAo" node="4BapoMDjgGU" resolve="reader" />
            </node>
            <node concept="10Nm6u" id="4BapoMDjgH1" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4BapoMDne6H" role="3clFbx">
            <node concept="YS8fn" id="4BapoMDneqn" role="3cqZAp">
              <node concept="2ShNRf" id="4BapoMDneqo" role="YScLw">
                <node concept="1pGfFk" id="4BapoMDneqp" role="2ShVmc">
                  <ref role="37wK5l" to="zofw:~PersistenceVersionNotFoundException.&lt;init&gt;(java.lang.String)" resolve="PersistenceVersionNotFoundException" />
                  <node concept="37vLTw" id="4BapoMDneqq" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjgHh" resolve="m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDneYB" role="3cqZAp" />
        <node concept="3cpWs8" id="4BapoMDjgH5" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgH4" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="document" />
            <node concept="3uibUv" id="4BapoMDjgH6" role="1tU5fm">
              <ref role="3uigEE" to="zwkq:~Document" resolve="Document" />
            </node>
            <node concept="1rXfSq" id="4BapoMDjgH7" role="33vP2m">
              <ref role="37wK5l" node="4BapoMDjgMQ" resolve="loadModelDocument" />
              <node concept="37vLTw" id="4BapoMDjgH8" role="37wK5m">
                <ref role="3cqZAo" node="4BapoMDjgG5" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4BapoMDjgH9" role="3cqZAp">
          <node concept="2ShNRf" id="4BapoMDjldz" role="3cqZAk">
            <node concept="1pGfFk" id="4BapoMDjldJ" role="2ShVmc">
              <ref role="37wK5l" to="gznm:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.smodel.SModel,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
              <node concept="10QFUN" id="4BapoMDjgHb" role="37wK5m">
                <node concept="2OqwBi" id="4BapoMDjldN" role="10QFUP">
                  <node concept="37vLTw" id="4BapoMDjldM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgGU" resolve="reader" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjldO" role="2OqNvi">
                    <ref role="37wK5l" to="llmc:4BapoMDsvXJ" resolve="readModel" />
                    <node concept="37vLTw" id="4BapoMDjgHd" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgH4" resolve="document" />
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgHe" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgG2" resolve="header" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4BapoMDjgHf" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="Rm8GO" id="4BapoMDjldR" role="37wK5m">
                <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                <ref role="Rm8GQ" to="gznm:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4BapoMDjgHq" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgHr" role="3clF45">
        <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnjKD" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgHs" role="jymVt">
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgHt" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgHu" role="3clF46">
        <property role="TrG5h" value="header" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgHv" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgHw" role="1tU5fm">
          <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgHx" role="3clF46">
        <property role="TrG5h" value="dataSource" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgHy" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgHz" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgH$" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgH_" role="1tU5fm">
          <ref role="3uigEE" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgHA" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgHB" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgHD" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgHC" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="in" />
            <node concept="3uibUv" id="4BapoMDjgHE" role="1tU5fm">
              <ref role="3uigEE" to="fxg7:~InputStream" resolve="InputStream" />
            </node>
            <node concept="10Nm6u" id="4BapoMDjgHF" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="4BapoMDjgIf" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgIg" role="TEXxN">
            <node concept="3clFbS" id="4BapoMDjgI7" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgIe" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjle2" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjBDm" role="2ShVmc">
                    <ref role="37wK5l" to="zofw:~ModelReadException.&lt;init&gt;(java.lang.String,java.lang.Throwable,jetbrains.mps.smodel.SModelHeader)" resolve="ModelReadException" />
                    <node concept="3cpWs3" id="4BapoMDjgI9" role="37wK5m">
                      <node concept="Xl_RD" id="4BapoMDjgIa" role="3uHU7B">
                        <property role="Xl_RC" value="Couldn't read model: " />
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjBDq" role="3uHU7w">
                        <node concept="37vLTw" id="4BapoMDjBDp" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjgI3" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjBDr" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgIc" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgI3" resolve="e" />
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgId" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgHu" resolve="header" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgI3" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgI5" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgHZ" role="2GVbov">
            <node concept="3clFbF" id="4BapoMDjgI0" role="3cqZAp">
              <node concept="2YIFZM" id="4BapoMDjBDu" role="3clFbG">
                <ref role="1Pybhc" to="msyo:~FileUtil" resolve="FileUtil" />
                <ref role="37wK5l" to="msyo:~FileUtil.closeFileSafe(java.io.Closeable):void" resolve="closeFileSafe" />
                <node concept="37vLTw" id="4BapoMDjgI2" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgHC" resolve="in" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgHH" role="2GV8ay">
            <node concept="3clFbF" id="4BapoMDjgHI" role="3cqZAp">
              <node concept="37vLTI" id="4BapoMDjgHJ" role="3clFbG">
                <node concept="37vLTw" id="4BapoMDjgHK" role="37vLTJ">
                  <ref role="3cqZAo" node="4BapoMDjgHC" resolve="in" />
                </node>
                <node concept="2OqwBi" id="4BapoMDjBDy" role="37vLTx">
                  <node concept="37vLTw" id="4BapoMDjBDx" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgHx" resolve="dataSource" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjBDz" role="2OqNvi">
                    <ref role="37wK5l" to="qx6n:~StreamDataSource.openInputStream():java.io.InputStream" resolve="openInputStream" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4BapoMDjgHN" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgHM" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="4BapoMDjgHO" role="1tU5fm">
                  <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
                </node>
                <node concept="2ShNRf" id="4BapoMDjBD$" role="33vP2m">
                  <node concept="1pGfFk" id="4BapoMDjBDT" role="2ShVmc">
                    <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                    <node concept="2ShNRf" id="4BapoMDjBDU" role="37wK5m">
                      <node concept="1pGfFk" id="4BapoMDjBEt" role="2ShVmc">
                        <ref role="37wK5l" to="fxg7:~InputStreamReader.&lt;init&gt;(java.io.InputStream,java.nio.charset.Charset)" resolve="InputStreamReader" />
                        <node concept="37vLTw" id="4BapoMDjgHR" role="37wK5m">
                          <ref role="3cqZAo" node="4BapoMDjgHC" resolve="in" />
                        </node>
                        <node concept="10M0yZ" id="4BapoMDjGtH" role="37wK5m">
                          <ref role="1PxDUh" to="msyo:~FileUtil" resolve="FileUtil" />
                          <ref role="3cqZAo" to="msyo:~FileUtil.DEFAULT_CHARSET" resolve="DEFAULT_CHARSET" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4BapoMDjgHT" role="3cqZAp">
              <node concept="1rXfSq" id="4BapoMDjgHU" role="3cqZAk">
                <ref role="37wK5l" node="4BapoMDjgG1" resolve="readModel" />
                <node concept="37vLTw" id="4BapoMDjgHV" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgHu" resolve="header" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgHW" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgHM" resolve="source" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgHX" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgH$" resolve="state" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgIh" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgIi" role="3clF45">
        <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnkEF" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgIj" role="jymVt">
      <property role="TrG5h" value="getLineToContentMap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgIk" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgIl" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgIm" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgIn" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgIo" role="3clF47">
        <node concept="SfApY" id="4BapoMDjgJe" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgJf" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgJ9" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgJd" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjBEx" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjBEy" role="2ShVmc">
                    <ref role="37wK5l" to="zofw:~ModelReadException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="ModelReadException" />
                    <node concept="2OqwBi" id="4BapoMDjBEA" role="37wK5m">
                      <node concept="37vLTw" id="4BapoMDjBE_" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDjgJ5" resolve="ex" />
                      </node>
                      <node concept="liA8E" id="4BapoMDjBEB" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~Throwable.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgJc" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgJ5" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgJ5" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="4BapoMDjgJ7" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgIq" role="SfCbr">
            <node concept="3cpWs8" id="4BapoMDjgIs" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgIr" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="header" />
                <node concept="3uibUv" id="4BapoMDjgIt" role="1tU5fm">
                  <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4BapoMDjgIu" role="3cqZAp">
              <node concept="37vLTI" id="4BapoMDjgIv" role="3clFbG">
                <node concept="37vLTw" id="4BapoMDjgIw" role="37vLTJ">
                  <ref role="3cqZAo" node="4BapoMDjgIr" resolve="header" />
                </node>
                <node concept="1rXfSq" id="4BapoMDjgIx" role="37vLTx">
                  <ref role="37wK5l" node="4BapoMDjgER" resolve="loadDescriptor" />
                  <node concept="2ShNRf" id="4BapoMDjBEC" role="37wK5m">
                    <node concept="1pGfFk" id="4BapoMDjBEX" role="2ShVmc">
                      <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                      <node concept="2ShNRf" id="4BapoMDjBEY" role="37wK5m">
                        <node concept="1pGfFk" id="4BapoMDjBEZ" role="2ShVmc">
                          <ref role="37wK5l" to="fxg7:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                          <node concept="37vLTw" id="4BapoMDjgI$" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjgIl" resolve="content" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4BapoMDjgIA" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgI_" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="mp" />
                <node concept="3uibUv" id="4BapoMDjgIB" role="1tU5fm">
                  <ref role="3uigEE" to="zofw:~IModelPersistence" resolve="IModelPersistence" />
                </node>
                <node concept="1rXfSq" id="4BapoMDjgIC" role="33vP2m">
                  <ref role="37wK5l" node="4BapoMDmOc_" resolve="getPersistence" />
                  <node concept="2OqwBi" id="4BapoMDjBF3" role="37wK5m">
                    <node concept="37vLTw" id="4BapoMDjBF2" role="2Oq$k0">
                      <ref role="3cqZAo" node="4BapoMDjgIr" resolve="header" />
                    </node>
                    <node concept="liA8E" id="4BapoMDjBF4" role="2OqNvi">
                      <ref role="37wK5l" to="cu2c:~SModelHeader.getPersistenceVersion():int" resolve="getPersistenceVersion" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4BapoMDjgIE" role="3cqZAp">
              <node concept="3clFbC" id="4BapoMDnlGQ" role="3clFbw">
                <node concept="37vLTw" id="4BapoMDjgIG" role="3uHU7B">
                  <ref role="3cqZAo" node="4BapoMDjgI_" resolve="mp" />
                </node>
                <node concept="10Nm6u" id="4BapoMDjgIH" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="4BapoMDnlGV" role="3clFbx">
                <node concept="3cpWs6" id="4BapoMDnlYg" role="3cqZAp">
                  <node concept="10Nm6u" id="4BapoMDnm6x" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4BapoMDnmpq" role="3cqZAp" />
            <node concept="3cpWs8" id="4BapoMDjgIL" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgIK" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="handler" />
                <node concept="3uibUv" id="4BapoMDjgIM" role="1tU5fm">
                  <ref role="3uigEE" to="7a2w:1NGcDawKVyN" resolve="XMLSAXHandler" />
                  <node concept="3uibUv" id="4BapoMDjgIN" role="11_B2D">
                    <ref role="3uigEE" to="k7g3:~List" resolve="List" />
                    <node concept="3uibUv" id="4BapoMDjgIO" role="11_B2D">
                      <ref role="3uigEE" to="1rjq:~LineContent" resolve="LineContent" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4BapoMDjBF8" role="33vP2m">
                  <node concept="37vLTw" id="4BapoMDjBF7" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgI_" resolve="mp" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjBF9" role="2OqNvi">
                    <ref role="37wK5l" to="zofw:~IModelPersistence.getLineToContentMapReaderHandler():jetbrains.mps.util.xml.XMLSAXHandler" resolve="getLineToContentMapReaderHandler" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4BapoMDjgIQ" role="3cqZAp">
              <node concept="3clFbC" id="4BapoMDnmL7" role="3clFbw">
                <node concept="37vLTw" id="4BapoMDjgIS" role="3uHU7B">
                  <ref role="3cqZAo" node="4BapoMDjgIK" resolve="handler" />
                </node>
                <node concept="10Nm6u" id="4BapoMDjgIT" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="4BapoMDnmLc" role="3clFbx">
                <node concept="3cpWs6" id="4BapoMDnn1F" role="3cqZAp">
                  <node concept="10Nm6u" id="4BapoMDnnc3" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4BapoMDnn$1" role="3cqZAp" />
            <node concept="3clFbF" id="4BapoMDjgIW" role="3cqZAp">
              <node concept="1rXfSq" id="4BapoMDjgIX" role="3clFbG">
                <ref role="37wK5l" node="4BapoMDjgQK" resolve="parseAndHandleExceptions" />
                <node concept="2ShNRf" id="4BapoMDjBFa" role="37wK5m">
                  <node concept="1pGfFk" id="4BapoMDjBFv" role="2ShVmc">
                    <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                    <node concept="2ShNRf" id="4BapoMDjBFw" role="37wK5m">
                      <node concept="1pGfFk" id="4BapoMDjBFx" role="2ShVmc">
                        <ref role="37wK5l" to="fxg7:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                        <node concept="37vLTw" id="4BapoMDjgJ0" role="37wK5m">
                          <ref role="3cqZAo" node="4BapoMDjgIl" resolve="content" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4BapoMDjgJ1" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgIK" resolve="handler" />
                </node>
                <node concept="Xl_RD" id="4BapoMDjgJ2" role="37wK5m">
                  <property role="Xl_RC" value="line to content map" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4BapoMDjgJ3" role="3cqZAp">
              <node concept="2OqwBi" id="4BapoMDjBF_" role="3cqZAk">
                <node concept="37vLTw" id="4BapoMDjBF$" role="2Oq$k0">
                  <ref role="3cqZAo" node="4BapoMDjgIK" resolve="handler" />
                </node>
                <node concept="liA8E" id="4BapoMDjBFA" role="2OqNvi">
                  <ref role="37wK5l" to="7a2w:1NGcDawKWcC" resolve="getResult" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4BapoMDnqJg" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgJi" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgJj" role="3clF45">
        <ref role="3uigEE" to="k7g3:~List" resolve="List" />
        <node concept="3uibUv" id="4BapoMDjgJk" role="11_B2D">
          <ref role="3uigEE" to="1rjq:~LineContent" resolve="LineContent" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="4BapoMDjgMQ" role="jymVt">
      <property role="TrG5h" value="loadModelDocument" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgMR" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgMS" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgMT" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgMU" role="1tU5fm">
          <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgMV" role="Sfmx6">
        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgMW" role="3clF47">
        <node concept="SfApY" id="4BapoMDjgNd" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgNe" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgN6" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgNc" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjBK4" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjBK5" role="2ShVmc">
                    <ref role="37wK5l" to="fxg7:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                    <node concept="3cpWs3" id="4BapoMDjgN8" role="37wK5m">
                      <node concept="Xl_RD" id="4BapoMDjgN9" role="3uHU7B">
                        <property role="Xl_RC" value="Exception on loading model from " />
                      </node>
                      <node concept="37vLTw" id="4BapoMDjgNa" role="3uHU7w">
                        <ref role="3cqZAo" node="4BapoMDjgMS" resolve="source" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgNb" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgN2" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgN2" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgN4" role="1tU5fm">
                <ref role="3uigEE" to="zwkq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgMY" role="SfCbr">
            <node concept="3cpWs6" id="4BapoMDjgMZ" role="3cqZAp">
              <node concept="2YIFZM" id="4BapoMDjBK8" role="3cqZAk">
                <ref role="1Pybhc" to="msyo:~JDOMUtil" resolve="JDOMUtil" />
                <ref role="37wK5l" to="msyo:~JDOMUtil.loadDocument(org.xml.sax.InputSource):org.jdom.Document" resolve="loadDocument" />
                <node concept="37vLTw" id="4BapoMDjgN1" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgMS" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4BapoMDjgNf" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgNg" role="3clF45">
        <ref role="3uigEE" to="zwkq:~Document" resolve="Document" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnqT3" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgOk" role="jymVt">
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgOl" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgOm" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="4BapoMDjgOn" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgOo" role="1tU5fm">
          <ref role="3uigEE" to="qx6n:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgOp" role="3clF46">
        <property role="TrG5h" value="interfaceOnly" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="4BapoMDjgOq" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4BapoMDjgOr" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgOs" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDjgOu" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgOt" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="header" />
            <node concept="3uibUv" id="4BapoMDjgOv" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
            </node>
            <node concept="1rXfSq" id="4BapoMDjgOw" role="33vP2m">
              <ref role="37wK5l" node="4BapoMDjgF9" resolve="loadDescriptor" />
              <node concept="37vLTw" id="4BapoMDjgOx" role="37wK5m">
                <ref role="3cqZAo" node="4BapoMDjgOm" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BapoMDjgOz" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDjgOy" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="4BapoMDjgO$" role="1tU5fm">
              <ref role="3uigEE" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
            </node>
            <node concept="3K4zz7" id="4BapoMDjgOC" role="33vP2m">
              <node concept="37vLTw" id="4BapoMDjgO_" role="3K4Cdx">
                <ref role="3cqZAo" node="4BapoMDjgOp" resolve="interfaceOnly" />
              </node>
              <node concept="Rm8GO" id="4BapoMDjC2W" role="3K4E3e">
                <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                <ref role="Rm8GQ" to="gznm:~ModelLoadingState.INTERFACE_LOADED" resolve="INTERFACE_LOADED" />
              </node>
              <node concept="Rm8GO" id="4BapoMDjC2Z" role="3K4GZi">
                <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                <ref role="Rm8GQ" to="gznm:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4BapoMDjgOD" role="3cqZAp">
          <node concept="10QFUN" id="4BapoMDjgOE" role="3cqZAk">
            <node concept="2OqwBi" id="4BapoMDjgOF" role="10QFUP">
              <node concept="1rXfSq" id="4BapoMDjgOG" role="2Oq$k0">
                <ref role="37wK5l" node="4BapoMDjgHs" resolve="readModel" />
                <node concept="37vLTw" id="4BapoMDjgOH" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgOt" resolve="header" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgOI" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgOm" resolve="source" />
                </node>
                <node concept="37vLTw" id="4BapoMDjgOJ" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjgOy" resolve="state" />
                </node>
              </node>
              <node concept="liA8E" id="4BapoMDjgOK" role="2OqNvi">
                <ref role="37wK5l" to="gznm:~ModelLoadResult.getModel():jetbrains.mps.smodel.SModel" resolve="getModel" />
              </node>
            </node>
            <node concept="3uibUv" id="4BapoMDjgOL" role="10QFUM">
              <ref role="3uigEE" to="cu2c:~DefaultSModel" resolve="DefaultSModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgOM" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgON" role="3clF45">
        <ref role="3uigEE" to="cu2c:~DefaultSModel" resolve="DefaultSModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnrOn" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgOO" role="jymVt">
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgOP" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgOQ" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="4BapoMDjgOR" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgOS" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgOT" role="3clF46">
        <property role="TrG5h" value="interfaceOnly" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="4BapoMDjgOU" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4BapoMDjgOV" role="Sfmx6">
        <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgOW" role="3clF47">
        <node concept="SfApY" id="4BapoMDjgPx" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgPy" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgPs" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgPw" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjC30" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjC31" role="2ShVmc">
                    <ref role="37wK5l" to="zofw:~ModelReadException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="ModelReadException" />
                    <node concept="2OqwBi" id="4BapoMDjC35" role="37wK5m">
                      <node concept="37vLTw" id="4BapoMDjC34" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDjgPo" resolve="ex" />
                      </node>
                      <node concept="liA8E" id="4BapoMDjC36" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~Throwable.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgPv" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgPo" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgPo" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="4BapoMDjgPq" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgOY" role="SfCbr">
            <node concept="3cpWs8" id="4BapoMDjgP0" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgOZ" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="header" />
                <node concept="3uibUv" id="4BapoMDjgP1" role="1tU5fm">
                  <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
                </node>
                <node concept="1rXfSq" id="4BapoMDjgP2" role="33vP2m">
                  <ref role="37wK5l" node="4BapoMDjgER" resolve="loadDescriptor" />
                  <node concept="2ShNRf" id="4BapoMDjC37" role="37wK5m">
                    <node concept="1pGfFk" id="4BapoMDjC3s" role="2ShVmc">
                      <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                      <node concept="2ShNRf" id="4BapoMDjC3t" role="37wK5m">
                        <node concept="1pGfFk" id="4BapoMDjC3u" role="2ShVmc">
                          <ref role="37wK5l" to="fxg7:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                          <node concept="37vLTw" id="4BapoMDjgP5" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjgOQ" resolve="content" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4BapoMDjgP7" role="3cqZAp">
              <node concept="3cpWsn" id="4BapoMDjgP6" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="4BapoMDjgP8" role="1tU5fm">
                  <ref role="3uigEE" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                </node>
                <node concept="3K4zz7" id="4BapoMDjgPc" role="33vP2m">
                  <node concept="37vLTw" id="4BapoMDjgP9" role="3K4Cdx">
                    <ref role="3cqZAo" node="4BapoMDjgOT" resolve="interfaceOnly" />
                  </node>
                  <node concept="Rm8GO" id="4BapoMDjC3x" role="3K4E3e">
                    <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                    <ref role="Rm8GQ" to="gznm:~ModelLoadingState.INTERFACE_LOADED" resolve="INTERFACE_LOADED" />
                  </node>
                  <node concept="Rm8GO" id="4BapoMDjC3$" role="3K4GZi">
                    <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                    <ref role="Rm8GQ" to="gznm:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4BapoMDjgPd" role="3cqZAp">
              <node concept="10QFUN" id="4BapoMDjgPe" role="3cqZAk">
                <node concept="2OqwBi" id="4BapoMDjgPf" role="10QFUP">
                  <node concept="1rXfSq" id="4BapoMDjgPg" role="2Oq$k0">
                    <ref role="37wK5l" node="4BapoMDjgG1" resolve="readModel" />
                    <node concept="37vLTw" id="4BapoMDjgPh" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgOZ" resolve="header" />
                    </node>
                    <node concept="2ShNRf" id="4BapoMDjC3_" role="37wK5m">
                      <node concept="1pGfFk" id="4BapoMDjC3U" role="2ShVmc">
                        <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.Reader)" resolve="InputSource" />
                        <node concept="2ShNRf" id="4BapoMDjC3V" role="37wK5m">
                          <node concept="1pGfFk" id="4BapoMDjC3W" role="2ShVmc">
                            <ref role="37wK5l" to="fxg7:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                            <node concept="37vLTw" id="4BapoMDjgPk" role="37wK5m">
                              <ref role="3cqZAo" node="4BapoMDjgOQ" resolve="content" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgPl" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgP6" resolve="state" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4BapoMDjgPm" role="2OqNvi">
                    <ref role="37wK5l" to="gznm:~ModelLoadResult.getModel():jetbrains.mps.smodel.SModel" resolve="getModel" />
                  </node>
                </node>
                <node concept="3uibUv" id="4BapoMDjgPn" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~DefaultSModel" resolve="DefaultSModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4BapoMDjgPz" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgP$" role="3clF45">
        <ref role="3uigEE" to="cu2c:~DefaultSModel" resolve="DefaultSModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDnsJG" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgPZ" role="jymVt">
      <property role="TrG5h" value="loadMetadata" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4BapoMDjgQ0" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4BapoMDjgQ1" role="3clF46">
        <property role="TrG5h" value="modelFile" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgQ2" role="1tU5fm">
          <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="4BapoMDjgQ3" role="3clF47">
        <node concept="3cpWs8" id="4BapoMDn7nb" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDn7nc" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="modelPath" />
            <node concept="3uibUv" id="4BapoMDn7nd" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="4BapoMDn7ne" role="33vP2m">
              <node concept="37vLTw" id="4BapoMDn7nA" role="2Oq$k0">
                <ref role="3cqZAo" node="4BapoMDjgQ1" resolve="modelFile" />
              </node>
              <node concept="liA8E" id="4BapoMDn7ng" role="2OqNvi">
                <ref role="37wK5l" to="59et:~IFile.getPath():java.lang.String" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BapoMDn7nh" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDn7ni" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="versionPath" />
            <node concept="3uibUv" id="4BapoMDn7nj" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="3cpWs3" id="4BapoMDn7nk" role="33vP2m">
              <node concept="2OqwBi" id="4BapoMDn7nl" role="3uHU7B">
                <node concept="37vLTw" id="4BapoMDn7nm" role="2Oq$k0">
                  <ref role="3cqZAo" node="4BapoMDn7nc" resolve="modelPath" />
                </node>
                <node concept="liA8E" id="4BapoMDn7nn" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.substring(int,int):java.lang.String" resolve="substring" />
                  <node concept="3cmrfG" id="4BapoMDn7no" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cpWsd" id="4BapoMDn7np" role="37wK5m">
                    <node concept="2OqwBi" id="4BapoMDn7nq" role="3uHU7B">
                      <node concept="37vLTw" id="4BapoMDn7nr" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDn7nc" resolve="modelPath" />
                      </node>
                      <node concept="liA8E" id="4BapoMDn7ns" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4BapoMDn7nt" role="3uHU7w">
                      <node concept="10M0yZ" id="4BapoMDn7nu" role="2Oq$k0">
                        <ref role="1PxDUh" to="vsqj:~MPSExtentions" resolve="MPSExtentions" />
                        <ref role="3cqZAo" to="vsqj:~MPSExtentions.DOT_MODEL" resolve="DOT_MODEL" />
                      </node>
                      <node concept="liA8E" id="4BapoMDn7nv" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~String.length():int" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="4BapoMDn7nw" role="3uHU7w">
                <property role="Xl_RC" value=".metadata" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BapoMDn7nF" role="3cqZAp">
          <node concept="3cpWsn" id="4BapoMDn7nG" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="metadataFile" />
            <node concept="3uibUv" id="4BapoMDn7nH" role="1tU5fm">
              <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="4BapoMDn7nI" role="33vP2m">
              <node concept="2YIFZM" id="4BapoMDn7nJ" role="2Oq$k0">
                <ref role="1Pybhc" to="59et:~FileSystem" resolve="FileSystem" />
                <ref role="37wK5l" to="59et:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="4BapoMDn7nK" role="2OqNvi">
                <ref role="37wK5l" to="59et:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                <node concept="37vLTw" id="4BapoMDn7nL" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDn7ni" resolve="versionPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4BapoMDjgQ9" role="3cqZAp">
          <node concept="3fqX7Q" id="4BapoMDjgQa" role="3clFbw">
            <node concept="2OqwBi" id="4BapoMDjC46" role="3fr31v">
              <node concept="37vLTw" id="4BapoMDn7FT" role="2Oq$k0">
                <ref role="3cqZAo" node="4BapoMDn7nG" resolve="metadataFile" />
              </node>
              <node concept="liA8E" id="4BapoMDjC47" role="2OqNvi">
                <ref role="37wK5l" to="59et:~IFile.exists():boolean" resolve="exists" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgQd" role="3clFbx">
            <node concept="3cpWs6" id="4BapoMDjgQe" role="3cqZAp">
              <node concept="10Nm6u" id="4BapoMDjgQf" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4BapoMDjgQg" role="3cqZAp">
          <node concept="2YIFZM" id="4BapoMDjC4a" role="3cqZAk">
            <ref role="1Pybhc" to="zofw:~DefaultMetadataPersistence" resolve="DefaultMetadataPersistence" />
            <ref role="37wK5l" to="zofw:~DefaultMetadataPersistence.load(jetbrains.mps.vfs.IFile):java.util.Map" resolve="load" />
            <node concept="37vLTw" id="4BapoMDn7H2" role="37wK5m">
              <ref role="3cqZAo" node="4BapoMDn7nG" resolve="metadataFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4BapoMDjgQj" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjgQk" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="3uibUv" id="4BapoMDjgQl" role="11_B2D">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="4BapoMDjgQm" role="11_B2D">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4BapoMDntF2" role="jymVt" />
    <node concept="2YIFZL" id="4BapoMDjgQK" role="jymVt">
      <property role="TrG5h" value="parseAndHandleExceptions" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4BapoMDjgQL" role="3clF46">
        <property role="TrG5h" value="source" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgQM" role="1tU5fm">
          <ref role="3uigEE" to="fmpa:~InputSource" resolve="InputSource" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgQN" role="3clF46">
        <property role="TrG5h" value="handler" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgQO" role="1tU5fm">
          <ref role="3uigEE" to="gtvp:~DefaultHandler" resolve="DefaultHandler" />
        </node>
      </node>
      <node concept="37vLTG" id="4BapoMDjgQP" role="3clF46">
        <property role="TrG5h" value="what" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4BapoMDjgQQ" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
      <node concept="3uibUv" id="4BapoMDjgQR" role="Sfmx6">
        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="4BapoMDjgQS" role="3clF47">
        <node concept="SfApY" id="4BapoMDjgRy" role="3cqZAp">
          <node concept="TDmWw" id="4BapoMDjgRz" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgRb" role="TDEfX">
              <node concept="3SKdUt" id="4BapoMDjgTZ" role="3cqZAp">
                <node concept="3SKdUq" id="4BapoMDjgTY" role="3SKWNk">
                  <property role="3SKdUp" value="used to break SAX parsing flow " />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgR1" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgR3" role="1tU5fm">
                <ref role="3uigEE" to="7a2w:7x6maRn9iAq" resolve="BreakParseSAXException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4BapoMDjgR$" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgRd" role="TDEfX">
              <node concept="3clFbF" id="4BapoMDjgRe" role="3cqZAp">
                <node concept="2OqwBi" id="4BapoMDjCy8" role="3clFbG">
                  <node concept="37vLTw" id="4BapoMDjCy7" role="2Oq$k0">
                    <ref role="3cqZAo" node="4BapoMDjgA$" resolve="LOG" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjCy9" role="2OqNvi">
                    <ref role="37wK5l" to="ajxo:~Category.error(java.lang.Object,java.lang.Throwable):void" resolve="error" />
                    <node concept="2OqwBi" id="4BapoMDjCyd" role="37wK5m">
                      <node concept="37vLTw" id="4BapoMDjCyc" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDjgR4" resolve="e" />
                      </node>
                      <node concept="liA8E" id="4BapoMDjCye" role="2OqNvi">
                        <ref role="37wK5l" to="e2lb:~Throwable.toString():java.lang.String" resolve="toString" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgRh" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgR4" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="4BapoMDjgRo" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjCyf" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjCyg" role="2ShVmc">
                    <ref role="37wK5l" to="fxg7:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                    <node concept="2YIFZM" id="4BapoMDjCyj" role="37wK5m">
                      <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                      <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                      <node concept="Xl_RD" id="4BapoMDjgRk" role="37wK5m">
                        <property role="Xl_RC" value="Couldn't read %s: %s" />
                      </node>
                      <node concept="37vLTw" id="4BapoMDjgRl" role="37wK5m">
                        <ref role="3cqZAo" node="4BapoMDjgQP" resolve="what" />
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjCyn" role="37wK5m">
                        <node concept="37vLTw" id="4BapoMDjCym" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjgR4" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCyo" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgRn" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgR4" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgR4" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgR6" role="1tU5fm">
                <ref role="3uigEE" to="9yi:~ParserConfigurationException" resolve="ParserConfigurationException" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4BapoMDjgR_" role="TEbGg">
            <node concept="3clFbS" id="4BapoMDjgRq" role="TDEfX">
              <node concept="YS8fn" id="4BapoMDjgRx" role="3cqZAp">
                <node concept="2ShNRf" id="4BapoMDjCyp" role="YScLw">
                  <node concept="1pGfFk" id="4BapoMDjCyq" role="2ShVmc">
                    <ref role="37wK5l" to="fxg7:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                    <node concept="2YIFZM" id="4BapoMDjCyt" role="37wK5m">
                      <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                      <ref role="37wK5l" to="e2lb:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                      <node concept="Xl_RD" id="4BapoMDjgRt" role="37wK5m">
                        <property role="Xl_RC" value="Couldn't read %s: %s" />
                      </node>
                      <node concept="37vLTw" id="4BapoMDjgRu" role="37wK5m">
                        <ref role="3cqZAo" node="4BapoMDjgQP" resolve="what" />
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjCyx" role="37wK5m">
                        <node concept="37vLTw" id="4BapoMDjCyw" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjgR7" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCyy" role="2OqNvi">
                          <ref role="37wK5l" to="fmpa:~SAXException.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4BapoMDjgRw" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjgR7" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4BapoMDjgR7" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4BapoMDjgR9" role="1tU5fm">
                <ref role="3uigEE" to="fmpa:~SAXException" resolve="SAXException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4BapoMDjgQU" role="SfCbr">
            <node concept="3clFbF" id="4BapoMDjgQV" role="3cqZAp">
              <node concept="2OqwBi" id="4BapoMDjgQW" role="3clFbG">
                <node concept="2YIFZM" id="4BapoMDjCy_" role="2Oq$k0">
                  <ref role="1Pybhc" to="msyo:~JDOMUtil" resolve="JDOMUtil" />
                  <ref role="37wK5l" to="msyo:~JDOMUtil.createSAXParser():javax.xml.parsers.SAXParser" resolve="createSAXParser" />
                </node>
                <node concept="liA8E" id="4BapoMDjgQY" role="2OqNvi">
                  <ref role="37wK5l" to="9yi:~SAXParser.parse(org.xml.sax.InputSource,org.xml.sax.helpers.DefaultHandler):void" resolve="parse" />
                  <node concept="37vLTw" id="4BapoMDjgQZ" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjgQL" resolve="source" />
                  </node>
                  <node concept="37vLTw" id="4BapoMDjgR0" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjgQN" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4BapoMDjgRA" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4BapoMDnuAp" role="jymVt" />
    <node concept="312cEu" id="4BapoMDjgzY" role="jymVt">
      <property role="TrG5h" value="MyDescriptorHandler" />
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="4BapoMDjg$0" role="1B3o_S" />
      <node concept="3uibUv" id="4BapoMDjg$1" role="1zkMxy">
        <ref role="3uigEE" to="gtvp:~DefaultHandler" resolve="DefaultHandler" />
      </node>
      <node concept="312cEg" id="4BapoMDjg$2" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myResult" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4BapoMDjg$4" role="1tU5fm">
          <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
        </node>
        <node concept="3Tm6S6" id="4BapoMDjg$5" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="4BapoMDjg$6" role="jymVt">
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3cqZAl" id="4BapoMDjg$7" role="3clF45" />
        <node concept="37vLTG" id="4BapoMDjg$8" role="3clF46">
          <property role="TrG5h" value="result" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjg$9" role="1tU5fm">
            <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
          </node>
        </node>
        <node concept="3clFbS" id="4BapoMDjg$a" role="3clF47">
          <node concept="3clFbF" id="4BapoMDjg$b" role="3cqZAp">
            <node concept="37vLTI" id="4BapoMDjg$c" role="3clFbG">
              <node concept="37vLTw" id="4BapoMDjg$d" role="37vLTJ">
                <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
              </node>
              <node concept="37vLTw" id="4BapoMDjg$e" role="37vLTx">
                <ref role="3cqZAo" node="4BapoMDjg$8" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4BapoMDjg$f" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="4BapoMDjg$g" role="jymVt">
        <property role="TrG5h" value="startElement" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjg$h" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="4BapoMDjg$i" role="3clF46">
          <property role="TrG5h" value="uri" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjg$j" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4BapoMDjg$k" role="3clF46">
          <property role="TrG5h" value="localName" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjg$l" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4BapoMDjg$m" role="3clF46">
          <property role="TrG5h" value="qName" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjg$n" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4BapoMDjg$o" role="3clF46">
          <property role="TrG5h" value="attributes" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjg$p" role="1tU5fm">
            <ref role="3uigEE" to="fmpa:~Attributes" resolve="Attributes" />
          </node>
        </node>
        <node concept="3uibUv" id="4BapoMDjg$q" role="Sfmx6">
          <ref role="3uigEE" to="fmpa:~SAXException" resolve="SAXException" />
        </node>
        <node concept="3clFbS" id="4BapoMDjg$r" role="3clF47">
          <node concept="3clFbJ" id="4BapoMDjg$s" role="3cqZAp">
            <node concept="2OqwBi" id="4BapoMDjC_5" role="3clFbw">
              <node concept="10M0yZ" id="4BapoMDjGtO" role="2Oq$k0">
                <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                <ref role="3cqZAo" node="4BapoMDjgBu" resolve="MODEL" />
              </node>
              <node concept="liA8E" id="4BapoMDjC_6" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="37vLTw" id="4BapoMDjg$u" role="37wK5m">
                  <ref role="3cqZAo" node="4BapoMDjg$m" resolve="qName" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4BapoMDjg_A" role="9aQIa">
              <node concept="2OqwBi" id="4BapoMDjC_b" role="3clFbw">
                <node concept="10M0yZ" id="4BapoMDjGtP" role="2Oq$k0">
                  <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                  <ref role="3cqZAo" node="4BapoMDjgCF" resolve="PERSISTENCE" />
                </node>
                <node concept="liA8E" id="4BapoMDjC_c" role="2OqNvi">
                  <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="4BapoMDjg_C" role="37wK5m">
                    <ref role="3cqZAo" node="4BapoMDjg$m" resolve="qName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4BapoMDjgA3" role="9aQIa">
                <node concept="2OqwBi" id="4BapoMDjgA4" role="3clFbw">
                  <node concept="Xl_RD" id="4BapoMDjgA5" role="2Oq$k0">
                    <property role="Xl_RC" value="attribute" />
                  </node>
                  <node concept="liA8E" id="4BapoMDjgA6" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="4BapoMDjgA7" role="37wK5m">
                      <ref role="3cqZAo" node="4BapoMDjg$m" resolve="qName" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="4BapoMDjgAg" role="9aQIa">
                  <node concept="3clFbS" id="4BapoMDjgAh" role="9aQI4">
                    <node concept="YS8fn" id="4BapoMDjgAj" role="3cqZAp">
                      <node concept="2ShNRf" id="4BapoMDjC_d" role="YScLw">
                        <node concept="1pGfFk" id="4BapoMDjC_e" role="2ShVmc">
                          <ref role="37wK5l" to="7a2w:7x6maRn9iAs" resolve="BreakParseSAXException" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4BapoMDjgA9" role="3clFbx">
                  <node concept="3clFbF" id="4BapoMDjgAa" role="3cqZAp">
                    <node concept="2OqwBi" id="4BapoMDjC_j" role="3clFbG">
                      <node concept="37vLTw" id="4BapoMDjC_i" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
                      </node>
                      <node concept="liA8E" id="4BapoMDjC_k" role="2OqNvi">
                        <ref role="37wK5l" to="cu2c:~SModelHeader.setOptionalProperty(java.lang.String,java.lang.String):void" resolve="setOptionalProperty" />
                        <node concept="2OqwBi" id="4BapoMDjC_p" role="37wK5m">
                          <node concept="37vLTw" id="4BapoMDjC_o" role="2Oq$k0">
                            <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                          </node>
                          <node concept="liA8E" id="4BapoMDjC_q" role="2OqNvi">
                            <ref role="37wK5l" to="fmpa:~Attributes.getValue(java.lang.String):java.lang.String" resolve="getValue" />
                            <node concept="10M0yZ" id="4BapoMDjGtQ" role="37wK5m">
                              <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                              <ref role="3cqZAo" node="4BapoMDjgAU" resolve="NAME" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4BapoMDjC_z" role="37wK5m">
                          <node concept="37vLTw" id="4BapoMDjC_y" role="2Oq$k0">
                            <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                          </node>
                          <node concept="liA8E" id="4BapoMDjC_$" role="2OqNvi">
                            <ref role="37wK5l" to="fmpa:~Attributes.getValue(java.lang.String):java.lang.String" resolve="getValue" />
                            <node concept="10M0yZ" id="4BapoMDjGtR" role="37wK5m">
                              <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                              <ref role="3cqZAo" node="4BapoMDjgBA" resolve="VALUE" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4BapoMDjg_E" role="3clFbx">
                <node concept="3cpWs8" id="4BapoMDjg_G" role="3cqZAp">
                  <node concept="3cpWsn" id="4BapoMDjg_F" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="s" />
                    <node concept="3uibUv" id="4BapoMDjg_H" role="1tU5fm">
                      <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="4BapoMDjC_H" role="33vP2m">
                      <node concept="37vLTw" id="4BapoMDjC_G" role="2Oq$k0">
                        <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                      </node>
                      <node concept="liA8E" id="4BapoMDjC_I" role="2OqNvi">
                        <ref role="37wK5l" to="fmpa:~Attributes.getValue(java.lang.String):java.lang.String" resolve="getValue" />
                        <node concept="10M0yZ" id="4BapoMDjGtS" role="37wK5m">
                          <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                          <ref role="3cqZAo" node="4BapoMDjgCJ" resolve="PERSISTENCE_VERSION" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4BapoMDjg_K" role="3cqZAp">
                  <node concept="3y3z36" id="4BapoMDjg_L" role="3clFbw">
                    <node concept="37vLTw" id="4BapoMDjg_M" role="3uHU7B">
                      <ref role="3cqZAo" node="4BapoMDjg_F" resolve="s" />
                    </node>
                    <node concept="10Nm6u" id="4BapoMDjg_N" role="3uHU7w" />
                  </node>
                  <node concept="3clFbS" id="4BapoMDjg_P" role="3clFbx">
                    <node concept="SfApY" id="4BapoMDjgA1" role="3cqZAp">
                      <node concept="TDmWw" id="4BapoMDjgA2" role="TEbGg">
                        <node concept="3clFbS" id="4BapoMDjgA0" role="TDEfX" />
                        <node concept="3cpWsn" id="4BapoMDjg_W" role="TDEfY">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="ignored" />
                          <node concept="3uibUv" id="4BapoMDjg_Y" role="1tU5fm">
                            <ref role="3uigEE" to="e2lb:~NumberFormatException" resolve="NumberFormatException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4BapoMDjg_R" role="SfCbr">
                        <node concept="3clFbF" id="4BapoMDjg_S" role="3cqZAp">
                          <node concept="2OqwBi" id="4BapoMDjC_N" role="3clFbG">
                            <node concept="37vLTw" id="4BapoMDjC_M" role="2Oq$k0">
                              <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
                            </node>
                            <node concept="liA8E" id="4BapoMDjC_O" role="2OqNvi">
                              <ref role="37wK5l" to="cu2c:~SModelHeader.setPersistenceVersion(int):void" resolve="setPersistenceVersion" />
                              <node concept="2YIFZM" id="4BapoMDjC_S" role="37wK5m">
                                <ref role="1Pybhc" to="e2lb:~Integer" resolve="Integer" />
                                <ref role="37wK5l" to="e2lb:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                                <node concept="37vLTw" id="4BapoMDjg_V" role="37wK5m">
                                  <ref role="3cqZAo" node="4BapoMDjg_F" resolve="s" />
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
            <node concept="3clFbS" id="4BapoMDjg$w" role="3clFbx">
              <node concept="1Dw8fO" id="4BapoMDjg$x" role="3cqZAp">
                <node concept="3cpWsn" id="4BapoMDjg$y" role="1Duv9x">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="idx" />
                  <node concept="10Oyi0" id="4BapoMDjg$$" role="1tU5fm" />
                  <node concept="3cmrfG" id="4BapoMDjg$_" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="3eOVzh" id="4BapoMDjg$A" role="1Dwp0S">
                  <node concept="37vLTw" id="4BapoMDjg$B" role="3uHU7B">
                    <ref role="3cqZAo" node="4BapoMDjg$y" resolve="idx" />
                  </node>
                  <node concept="2OqwBi" id="4BapoMDjC_X" role="3uHU7w">
                    <node concept="37vLTw" id="4BapoMDjC_W" role="2Oq$k0">
                      <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                    </node>
                    <node concept="liA8E" id="4BapoMDjC_Y" role="2OqNvi">
                      <ref role="37wK5l" to="fmpa:~Attributes.getLength():int" resolve="getLength" />
                    </node>
                  </node>
                </node>
                <node concept="3uNrnE" id="4BapoMDjg$E" role="1Dwrff">
                  <node concept="37vLTw" id="4BapoMDjg$F" role="2$L3a6">
                    <ref role="3cqZAo" node="4BapoMDjg$y" resolve="idx" />
                  </node>
                </node>
                <node concept="3clFbS" id="4BapoMDjg$H" role="2LFqv$">
                  <node concept="3cpWs8" id="4BapoMDjg$J" role="3cqZAp">
                    <node concept="3cpWsn" id="4BapoMDjg$I" role="3cpWs9">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="name" />
                      <node concept="3uibUv" id="4BapoMDjg$K" role="1tU5fm">
                        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjCA3" role="33vP2m">
                        <node concept="37vLTw" id="4BapoMDjCA2" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCA4" role="2OqNvi">
                          <ref role="37wK5l" to="fmpa:~Attributes.getQName(int):java.lang.String" resolve="getQName" />
                          <node concept="37vLTw" id="4BapoMDjg$M" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjg$y" resolve="idx" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4BapoMDjg$O" role="3cqZAp">
                    <node concept="3cpWsn" id="4BapoMDjg$N" role="3cpWs9">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="value" />
                      <node concept="3uibUv" id="4BapoMDjg$P" role="1tU5fm">
                        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjCA9" role="33vP2m">
                        <node concept="37vLTw" id="4BapoMDjCA8" role="2Oq$k0">
                          <ref role="3cqZAo" node="4BapoMDjg$o" resolve="attributes" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCAa" role="2OqNvi">
                          <ref role="37wK5l" to="fmpa:~Attributes.getValue(int):java.lang.String" resolve="getValue" />
                          <node concept="37vLTw" id="4BapoMDjg$R" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjg$y" resolve="idx" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4BapoMDjg$S" role="3cqZAp">
                    <node concept="22lmx$" id="4BapoMDjg$T" role="3clFbw">
                      <node concept="2OqwBi" id="4BapoMDjCAf" role="3uHU7B">
                        <node concept="10M0yZ" id="4BapoMDjGtT" role="2Oq$k0">
                          <ref role="1PxDUh" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                          <ref role="3cqZAo" node="4BapoMDjgCa" resolve="MODEL_UID" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCAg" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="37vLTw" id="4BapoMDjg$V" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjg$I" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4BapoMDjCAl" role="3uHU7w">
                        <node concept="10M0yZ" id="4BapoMDjGtU" role="2Oq$k0">
                          <ref role="1PxDUh" to="fo6t:~ModelPersistence9" resolve="ModelPersistence9" />
                          <ref role="3cqZAo" to="fo6t:~ModelPersistence9.REF" resolve="REF" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCAm" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="37vLTw" id="4BapoMDjg$X" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjg$I" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="4BapoMDjg_f" role="9aQIa">
                      <node concept="2OqwBi" id="4BapoMDjCAr" role="3clFbw">
                        <node concept="10M0yZ" id="4BapoMDjGtV" role="2Oq$k0">
                          <ref role="1PxDUh" to="cu2c:~SModelHeader" resolve="SModelHeader" />
                          <ref role="3cqZAo" to="cu2c:~SModelHeader.DO_NOT_GENERATE" resolve="DO_NOT_GENERATE" />
                        </node>
                        <node concept="liA8E" id="4BapoMDjCAs" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="37vLTw" id="4BapoMDjg_h" role="37wK5m">
                            <ref role="3cqZAo" node="4BapoMDjg$I" resolve="name" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4BapoMDjg_o" role="9aQIa">
                        <node concept="2OqwBi" id="4BapoMDjg_p" role="3clFbw">
                          <node concept="Xl_RD" id="4BapoMDjg_q" role="2Oq$k0">
                            <property role="Xl_RC" value="version" />
                          </node>
                          <node concept="liA8E" id="4BapoMDjg_r" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="37vLTw" id="4BapoMDjg_s" role="37wK5m">
                              <ref role="3cqZAo" node="4BapoMDjg$I" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="9aQIb" id="4BapoMDjg_v" role="9aQIa">
                          <node concept="3clFbS" id="4BapoMDjg_w" role="9aQI4">
                            <node concept="3clFbF" id="4BapoMDjg_x" role="3cqZAp">
                              <node concept="2OqwBi" id="4BapoMDjCAx" role="3clFbG">
                                <node concept="37vLTw" id="4BapoMDjCAw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
                                </node>
                                <node concept="liA8E" id="4BapoMDjCAy" role="2OqNvi">
                                  <ref role="37wK5l" to="cu2c:~SModelHeader.setOptionalProperty(java.lang.String,java.lang.String):void" resolve="setOptionalProperty" />
                                  <node concept="37vLTw" id="4BapoMDjg_z" role="37wK5m">
                                    <ref role="3cqZAo" node="4BapoMDjg$I" resolve="name" />
                                  </node>
                                  <node concept="2YIFZM" id="4BapoMDjCAA" role="37wK5m">
                                    <ref role="1Pybhc" to="msyo:~StringUtil" resolve="StringUtil" />
                                    <ref role="37wK5l" to="msyo:~StringUtil.unescapeXml(java.lang.String):java.lang.String" resolve="unescapeXml" />
                                    <node concept="37vLTw" id="4BapoMDjg__" role="37wK5m">
                                      <ref role="3cqZAo" node="4BapoMDjg$N" resolve="value" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4BapoMDjg_u" role="3clFbx">
                          <node concept="3SKdUt" id="4BapoMDjgU3" role="3cqZAp">
                            <node concept="3SKdUq" id="4BapoMDjgU2" role="3SKWNk">
                              <property role="3SKdUp" value="old model version" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4BapoMDjg_j" role="3clFbx">
                        <node concept="3clFbF" id="4BapoMDjg_k" role="3cqZAp">
                          <node concept="2OqwBi" id="4BapoMDjCAF" role="3clFbG">
                            <node concept="37vLTw" id="4BapoMDjCAE" role="2Oq$k0">
                              <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
                            </node>
                            <node concept="liA8E" id="4BapoMDjCAG" role="2OqNvi">
                              <ref role="37wK5l" to="cu2c:~SModelHeader.setDoNotGenerate(boolean):void" resolve="setDoNotGenerate" />
                              <node concept="2YIFZM" id="4BapoMDjCAK" role="37wK5m">
                                <ref role="1Pybhc" to="e2lb:~Boolean" resolve="Boolean" />
                                <ref role="37wK5l" to="e2lb:~Boolean.parseBoolean(java.lang.String):boolean" resolve="parseBoolean" />
                                <node concept="37vLTw" id="4BapoMDjg_n" role="37wK5m">
                                  <ref role="3cqZAo" node="4BapoMDjg$N" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4BapoMDjg$Z" role="3clFbx">
                      <node concept="3cpWs8" id="4BapoMDjg_1" role="3cqZAp">
                        <node concept="3cpWsn" id="4BapoMDjg_0" role="3cpWs9">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="mr" />
                          <node concept="3uibUv" id="4BapoMDjg_2" role="1tU5fm">
                            <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                          </node>
                          <node concept="3K4zz7" id="4BapoMDjg_b" role="33vP2m">
                            <node concept="3clFbC" id="4BapoMDjg_3" role="3K4Cdx">
                              <node concept="37vLTw" id="4BapoMDjg_4" role="3uHU7B">
                                <ref role="3cqZAo" node="4BapoMDjg$N" resolve="value" />
                              </node>
                              <node concept="10Nm6u" id="4BapoMDjg_5" role="3uHU7w" />
                            </node>
                            <node concept="10Nm6u" id="4BapoMDjg_6" role="3K4E3e" />
                            <node concept="2OqwBi" id="4BapoMDjg_7" role="3K4GZi">
                              <node concept="2YIFZM" id="4BapoMDjCAO" role="2Oq$k0">
                                <ref role="1Pybhc" to="qx6n:~PersistenceFacade" resolve="PersistenceFacade" />
                                <ref role="37wK5l" to="qx6n:~PersistenceFacade.getInstance():org.jetbrains.mps.openapi.persistence.PersistenceFacade" resolve="getInstance" />
                              </node>
                              <node concept="liA8E" id="4BapoMDjg_9" role="2OqNvi">
                                <ref role="37wK5l" to="qx6n:~PersistenceFacade.createModelReference(java.lang.String):org.jetbrains.mps.openapi.model.SModelReference" resolve="createModelReference" />
                                <node concept="37vLTw" id="4BapoMDjg_a" role="37wK5m">
                                  <ref role="3cqZAo" node="4BapoMDjg$N" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4BapoMDjg_c" role="3cqZAp">
                        <node concept="2OqwBi" id="4BapoMDjCAT" role="3clFbG">
                          <node concept="37vLTw" id="4BapoMDjCAS" role="2Oq$k0">
                            <ref role="3cqZAo" node="4BapoMDjg$2" resolve="myResult" />
                          </node>
                          <node concept="liA8E" id="4BapoMDjCAU" role="2OqNvi">
                            <ref role="37wK5l" to="cu2c:~SModelHeader.setModelReference(org.jetbrains.mps.openapi.model.SModelReference):void" resolve="setModelReference" />
                            <node concept="37vLTw" id="4BapoMDjg_e" role="37wK5m">
                              <ref role="3cqZAo" node="4BapoMDjg_0" resolve="mr" />
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
        <node concept="3Tm1VV" id="4BapoMDjgAk" role="1B3o_S" />
        <node concept="3cqZAl" id="4BapoMDjgAl" role="3clF45" />
      </node>
      <node concept="3clFb_" id="4BapoMDjgAm" role="jymVt">
        <property role="TrG5h" value="endElement" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="2AHcQZ" id="4BapoMDjgAn" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="4BapoMDjgAo" role="3clF46">
          <property role="TrG5h" value="uri" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjgAp" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4BapoMDjgAq" role="3clF46">
          <property role="TrG5h" value="localName" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjgAr" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="4BapoMDjgAs" role="3clF46">
          <property role="TrG5h" value="qName" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="4BapoMDjgAt" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
        </node>
        <node concept="3uibUv" id="4BapoMDjgAu" role="Sfmx6">
          <ref role="3uigEE" to="fmpa:~SAXException" resolve="SAXException" />
        </node>
        <node concept="3clFbS" id="4BapoMDjgAv" role="3clF47">
          <node concept="YS8fn" id="4BapoMDjgAx" role="3cqZAp">
            <node concept="2ShNRf" id="4BapoMDjCAV" role="YScLw">
              <node concept="1pGfFk" id="4BapoMDjCAW" role="2ShVmc">
                <ref role="37wK5l" to="7a2w:7x6maRn9iAs" resolve="BreakParseSAXException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4BapoMDjgAy" role="1B3o_S" />
        <node concept="3cqZAl" id="4BapoMDjgAz" role="3clF45" />
      </node>
    </node>
    <node concept="3UR2Jj" id="4BapoMDqqn6" role="lGtFl">
      <node concept="TZ5HA" id="4BapoMDqqn7" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqqn8" role="1dT_Ay">
          <property role="1dT_AB" value="This is old persistences support for version control purposes. " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqqHB" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqqHC" role="1dT_Ay">
          <property role="1dT_AB" value="It's desirable to be possible to see diff and merge with models in very old persistences, which MPS can't fully " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqr4k" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqr4l" role="1dT_Ay">
          <property role="1dT_AB" value="support because of changes to SModel. " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqr6C" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqr6D" role="1dT_Ay">
          <property role="1dT_AB" value="For VCS purposes, what is needed is to show the model to the user in a state, which is near to how this model " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqqQu" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqqQv" role="1dT_Ay">
          <property role="1dT_AB" value="looked in the interested revision. So, while we can't read all the information into new SModel, we can still try to " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqqUW" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqqUX" role="1dT_Ay">
          <property role="1dT_AB" value="create a new SModel from an old &quot;model state&quot;." />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqqZt" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqqZu" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrjT" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrjU" role="1dT_Ay">
          <property role="1dT_AB" value="The persistences here " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqqZJ" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrbP" role="1dT_Ay">
          <property role="1dT_AB" value="1. should not be fully-functional. " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrcd" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrce" role="1dT_Ay">
          <property role="1dT_AB" value="2. can use any hacks to &quot;load&quot; the model. " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqre_" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqreA" role="1dT_Ay">
          <property role="1dT_AB" value="3. must &quot;load&quot; the SModel in &quot;new format&quot; (as if they were save by the last persistence, see below)" />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrhr" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrhs" role="1dT_Ay">
          <property role="1dT_AB" value="" />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqreZ" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrf0" role="1dT_Ay">
          <property role="1dT_AB" value="E.g. if in some persistence we had only names of node's concepts, we are still able to remove SConceptByName in newer " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrrq" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrrr" role="1dT_Ay">
          <property role="1dT_AB" value="MPS versions. The persistences here can use in-repo or even in-structure-models search to obtain concept ids for " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrrW" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrrX" role="1dT_Ay">
          <property role="1dT_AB" value="names it has. It doesn't matter, how. It must not work under any circumstances. It must not produce the exact vision" />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDqrx1" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDqrx2" role="1dT_Ay">
          <property role="1dT_AB" value="of the old model. It MUST produce a new SModel. " />
        </node>
      </node>
      <node concept="TZ5HA" id="4BapoMDsbnE" role="TZ5H$">
        <node concept="1dT_AC" id="4BapoMDsbnF" role="1dT_Ay">
          <property role="1dT_AB" value="(??? [Mihail Muhin] isn't it better to produce model with persistence version set to LAST_VERSION?)" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1NiMOxiwPcH">
    <property role="TrG5h" value="VCSPersistenceUtil" />
    <node concept="2YIFZL" id="1NiMOxiwPI2" role="jymVt">
      <property role="TrG5h" value="loadModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="1NiMOxiwPI3" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="1NiMOxiwPI5" role="1tU5fm">
          <node concept="10PrrI" id="1NiMOxiwPI4" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="1NiMOxiwPI6" role="3clF46">
        <property role="TrG5h" value="extension" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1NiMOxiwPI7" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1NiMOxiwPI8" role="3clF47">
        <node concept="3SKdUt" id="1NiMOxixgVP" role="3cqZAp">
          <node concept="3SKdUq" id="1NiMOxixh0H" role="3SKWNk">
            <property role="3SKdUp" value="returns null if an error occured, as its predcessor in PersistenceUtil." />
          </node>
        </node>
        <node concept="3SKdUt" id="1NiMOxixhbd" role="3cqZAp">
          <node concept="3SKdUq" id="1NiMOxixhg7" role="3SKWNk">
            <property role="3SKdUp" value="[MM] not sure this is correct, just left it unchanged" />
          </node>
        </node>
        <node concept="3cpWs8" id="1NiMOxiwPIa" role="3cqZAp">
          <node concept="3cpWsn" id="1NiMOxiwPI9" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="factory" />
            <node concept="3uibUv" id="1NiMOxiwPIb" role="1tU5fm">
              <ref role="3uigEE" to="qx6n:~ModelFactory" resolve="ModelFactory" />
            </node>
            <node concept="2OqwBi" id="1NiMOxiwPIc" role="33vP2m">
              <node concept="2YIFZM" id="1NiMOxiwPIY" role="2Oq$k0">
                <ref role="1Pybhc" to="qx6n:~PersistenceFacade" resolve="PersistenceFacade" />
                <ref role="37wK5l" to="qx6n:~PersistenceFacade.getInstance():org.jetbrains.mps.openapi.persistence.PersistenceFacade" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="1NiMOxiwPIe" role="2OqNvi">
                <ref role="37wK5l" to="qx6n:~PersistenceFacade.getModelFactory(java.lang.String):org.jetbrains.mps.openapi.persistence.ModelFactory" resolve="getModelFactory" />
                <node concept="37vLTw" id="1NiMOxiwPIf" role="37wK5m">
                  <ref role="3cqZAo" node="1NiMOxiwPI6" resolve="extension" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1NiMOxiwPIg" role="3cqZAp">
          <node concept="3clFbC" id="1NiMOxiwPIh" role="3clFbw">
            <node concept="37vLTw" id="1NiMOxiwPIi" role="3uHU7B">
              <ref role="3cqZAo" node="1NiMOxiwPI9" resolve="factory" />
            </node>
            <node concept="10Nm6u" id="1NiMOxiwPIj" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="1NiMOxiwPIm" role="3clFbx">
            <node concept="3cpWs6" id="1NiMOxiwPIk" role="3cqZAp">
              <node concept="1rXfSq" id="1NiMOxiwVWU" role="3cqZAk">
                <ref role="37wK5l" node="1NiMOxiwVQ1" resolve="loadFromOldMPSPersistence" />
                <node concept="37vLTw" id="1NiMOxiwW2v" role="37wK5m">
                  <ref role="3cqZAo" node="1NiMOxiwPI3" resolve="content" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1NiMOxiwPIS" role="3cqZAp">
          <node concept="TDmWw" id="1NiMOxiwPIT" role="TEbGg">
            <node concept="3clFbS" id="1NiMOxiwPIP" role="TDEfX">
              <node concept="3cpWs6" id="1NiMOxiwPIQ" role="3cqZAp">
                <node concept="10Nm6u" id="1NiMOxiwPIR" role="3cqZAk" />
              </node>
            </node>
            <node concept="3cpWsn" id="1NiMOxiwPIL" role="TDEfY">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="1NiMOxiwPIN" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1NiMOxiwPIo" role="SfCbr">
            <node concept="3cpWs8" id="1NiMOxiwPIq" role="3cqZAp">
              <node concept="3cpWsn" id="1NiMOxiwPIp" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="1NiMOxiwR14" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="1NiMOxiwPJ2" role="33vP2m">
                  <node concept="37vLTw" id="1NiMOxiwPJ1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1NiMOxiwPI9" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="1NiMOxiwPJ3" role="2OqNvi">
                    <ref role="37wK5l" to="qx6n:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,java.util.Map):org.jetbrains.mps.openapi.model.SModel" resolve="load" />
                    <node concept="2ShNRf" id="1NiMOxiwPIt" role="37wK5m">
                      <node concept="YeOm9" id="1NiMOxiwPIu" role="2ShVmc">
                        <node concept="1Y3b0j" id="1NiMOxiwPIv" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <property role="1sVAO0" value="false" />
                          <property role="1EXbeo" value="false" />
                          <ref role="1Y3XeK" to="d2v5:~PersistenceUtil$StreamDataSourceBase" resolve="PersistenceUtil.StreamDataSourceBase" />
                          <ref role="37wK5l" to="d2v5:~PersistenceUtil$StreamDataSourceBase.&lt;init&gt;()" resolve="PersistenceUtil.StreamDataSourceBase" />
                          <node concept="3Tm1VV" id="1NiMOxiwPIw" role="1B3o_S" />
                          <node concept="3clFb_" id="1NiMOxiwPIx" role="jymVt">
                            <property role="TrG5h" value="openInputStream" />
                            <property role="DiZV1" value="false" />
                            <property role="od$2w" value="false" />
                            <node concept="2AHcQZ" id="1NiMOxiwPIy" role="2AJF6D">
                              <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                            </node>
                            <node concept="3uibUv" id="1NiMOxiwPIz" role="Sfmx6">
                              <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
                            </node>
                            <node concept="3clFbS" id="1NiMOxiwPI$" role="3clF47">
                              <node concept="3cpWs6" id="1NiMOxiwPI_" role="3cqZAp">
                                <node concept="2ShNRf" id="1NiMOxiwPJ4" role="3cqZAk">
                                  <node concept="1pGfFk" id="1NiMOxiwPJ5" role="2ShVmc">
                                    <ref role="37wK5l" to="fxg7:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                                    <node concept="37vLTw" id="1NiMOxiwPIB" role="37wK5m">
                                      <ref role="3cqZAo" node="1NiMOxiwPI3" resolve="content" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="1NiMOxiwPIC" role="1B3o_S" />
                            <node concept="3uibUv" id="1NiMOxiwPID" role="3clF45">
                              <ref role="3uigEE" to="fxg7:~InputStream" resolve="InputStream" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="1NiMOxiwPJ8" role="37wK5m">
                      <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                      <ref role="37wK5l" to="k7g3:~Collections.singletonMap(java.lang.Object,java.lang.Object):java.util.Map" resolve="singletonMap" />
                      <node concept="10M0yZ" id="1NiMOxiwPPh" role="37wK5m">
                        <ref role="1PxDUh" to="qx6n:~ModelFactory" resolve="ModelFactory" />
                        <ref role="3cqZAo" to="qx6n:~ModelFactory.OPTION_CONTENT_ONLY" resolve="OPTION_CONTENT_ONLY" />
                      </node>
                      <node concept="2OqwBi" id="1NiMOxiwPJf" role="37wK5m">
                        <node concept="10M0yZ" id="1NiMOxiwPPi" role="2Oq$k0">
                          <ref role="1PxDUh" to="e2lb:~Boolean" resolve="Boolean" />
                          <ref role="3cqZAo" to="e2lb:~Boolean.TRUE" resolve="TRUE" />
                        </node>
                        <node concept="liA8E" id="1NiMOxiwPJg" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Boolean.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1NiMOxiwPIH" role="3cqZAp">
              <node concept="2OqwBi" id="1NiMOxiwPJk" role="3clFbG">
                <node concept="37vLTw" id="1NiMOxiwPJj" role="2Oq$k0">
                  <ref role="3cqZAo" node="1NiMOxiwPIp" resolve="model" />
                </node>
                <node concept="liA8E" id="1NiMOxiwPJl" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModel.load():void" resolve="load" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1NiMOxiwPIJ" role="3cqZAp">
              <node concept="37vLTw" id="1NiMOxiwPIK" role="3cqZAk">
                <ref role="3cqZAo" node="1NiMOxiwPIp" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1NiMOxiwPIU" role="1B3o_S" />
      <node concept="3uibUv" id="1NiMOxiwQWJ" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1NiMOxiwPHW" role="jymVt" />
    <node concept="2YIFZL" id="1NiMOxiwVQ1" role="jymVt">
      <property role="TrG5h" value="loadFromOldMPSPersistence" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1NiMOxiwUEM" role="3clF47">
        <node concept="3cpWs8" id="1NiMOxix3Zk" role="3cqZAp">
          <node concept="3cpWsn" id="1NiMOxix3Zl" role="3cpWs9">
            <property role="TrG5h" value="header" />
            <node concept="3uibUv" id="1NiMOxix3Z7" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~SModelHeader" resolve="SModelHeader" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="1NiMOxix1wS" role="3cqZAp">
          <node concept="3clFbS" id="1NiMOxix1wU" role="SfCbr">
            <node concept="3clFbF" id="1NiMOxixdeU" role="3cqZAp">
              <node concept="37vLTI" id="1NiMOxixdeW" role="3clFbG">
                <node concept="2YIFZM" id="1NiMOxix3Zm" role="37vLTx">
                  <ref role="1Pybhc" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                  <ref role="37wK5l" node="4BapoMDjgER" resolve="loadDescriptor" />
                  <node concept="2ShNRf" id="1NiMOxix3Zn" role="37wK5m">
                    <node concept="1pGfFk" id="1NiMOxix3Zo" role="2ShVmc">
                      <ref role="37wK5l" to="fmpa:~InputSource.&lt;init&gt;(java.io.InputStream)" resolve="InputSource" />
                      <node concept="2ShNRf" id="1NiMOxix3Zp" role="37wK5m">
                        <node concept="1pGfFk" id="1NiMOxix3Zq" role="2ShVmc">
                          <ref role="37wK5l" to="fxg7:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                          <node concept="37vLTw" id="1NiMOxix3Zr" role="37wK5m">
                            <ref role="3cqZAo" node="1NiMOxiwVEw" resolve="content" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1NiMOxixdf0" role="37vLTJ">
                  <ref role="3cqZAo" node="1NiMOxix3Zl" resolve="header" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1NiMOxix1wV" role="TEbGg">
            <node concept="3clFbS" id="1NiMOxix1wX" role="TDEfX">
              <node concept="3cpWs6" id="1NiMOxix3MK" role="3cqZAp">
                <node concept="10Nm6u" id="1NiMOxix3RY" role="3cqZAk" />
              </node>
            </node>
            <node concept="3cpWsn" id="1NiMOxix1wZ" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1NiMOxix1y9" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1NiMOxixdG9" role="3cqZAp" />
        <node concept="SfApY" id="1NiMOxixfdW" role="3cqZAp">
          <node concept="3clFbS" id="1NiMOxixfdY" role="SfCbr">
            <node concept="3cpWs8" id="1NiMOxixx$0" role="3cqZAp">
              <node concept="3cpWsn" id="1NiMOxixx$1" role="3cpWs9">
                <property role="TrG5h" value="readModel" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1NiMOxixx$2" role="1tU5fm">
                  <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
                </node>
                <node concept="2YIFZM" id="1NiMOxixx$3" role="33vP2m">
                  <ref role="37wK5l" node="4BapoMDjgHs" resolve="readModel" />
                  <ref role="1Pybhc" node="4BapoMDjgzV" resolve="VCSPersistenceSupport" />
                  <node concept="37vLTw" id="1NiMOxixx$4" role="37wK5m">
                    <ref role="3cqZAo" node="1NiMOxix3Zl" resolve="header" />
                  </node>
                  <node concept="2ShNRf" id="1NiMOxixx$5" role="37wK5m">
                    <node concept="YeOm9" id="1NiMOxixx$6" role="2ShVmc">
                      <node concept="1Y3b0j" id="1NiMOxixx$7" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <property role="1sVAO0" value="false" />
                        <property role="1EXbeo" value="false" />
                        <ref role="1Y3XeK" to="d2v5:~PersistenceUtil$StreamDataSourceBase" resolve="PersistenceUtil.StreamDataSourceBase" />
                        <ref role="37wK5l" to="d2v5:~PersistenceUtil$StreamDataSourceBase.&lt;init&gt;()" resolve="PersistenceUtil.StreamDataSourceBase" />
                        <node concept="3Tm1VV" id="1NiMOxixx$8" role="1B3o_S" />
                        <node concept="3clFb_" id="1NiMOxixx$9" role="jymVt">
                          <property role="TrG5h" value="openInputStream" />
                          <property role="DiZV1" value="false" />
                          <property role="od$2w" value="false" />
                          <node concept="2AHcQZ" id="1NiMOxixx$a" role="2AJF6D">
                            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                          </node>
                          <node concept="3uibUv" id="1NiMOxixx$b" role="Sfmx6">
                            <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
                          </node>
                          <node concept="3clFbS" id="1NiMOxixx$c" role="3clF47">
                            <node concept="3cpWs6" id="1NiMOxixx$d" role="3cqZAp">
                              <node concept="2ShNRf" id="1NiMOxixx$e" role="3cqZAk">
                                <node concept="1pGfFk" id="1NiMOxixx$f" role="2ShVmc">
                                  <ref role="37wK5l" to="fxg7:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                                  <node concept="37vLTw" id="1NiMOxixx$g" role="37wK5m">
                                    <ref role="3cqZAo" node="1NiMOxiwVEw" resolve="content" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="1NiMOxixx$h" role="1B3o_S" />
                          <node concept="3uibUv" id="1NiMOxixx$i" role="3clF45">
                            <ref role="3uigEE" to="fxg7:~InputStream" resolve="InputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rm8GO" id="1NiMOxixx$j" role="37wK5m">
                    <ref role="Rm8GQ" to="gznm:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                    <ref role="1Px2BO" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1NiMOxixy04" role="3cqZAp" />
            <node concept="3cpWs8" id="1NiMOxixhnb" role="3cqZAp">
              <node concept="3cpWsn" id="1NiMOxixhnc" role="3cpWs9">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="1NiMOxixhmY" role="1tU5fm">
                  <ref role="3uigEE" to="cu2c:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="1NiMOxixhnd" role="33vP2m">
                  <node concept="37vLTw" id="1NiMOxixhne" role="2Oq$k0">
                    <ref role="3cqZAo" node="1NiMOxixx$1" resolve="readModel" />
                  </node>
                  <node concept="liA8E" id="1NiMOxixhnf" role="2OqNvi">
                    <ref role="37wK5l" to="gznm:~ModelLoadResult.getModel():jetbrains.mps.smodel.SModel" resolve="getModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1NiMOxixiGg" role="3cqZAp">
              <node concept="3clFbS" id="1NiMOxixiGi" role="3clFbx">
                <node concept="3cpWs6" id="1NiMOxixiUL" role="3cqZAp">
                  <node concept="10Nm6u" id="1NiMOxixj1J" role="3cqZAk" />
                </node>
              </node>
              <node concept="2ZW3vV" id="1NiMOxixiS7" role="3clFbw">
                <node concept="3uibUv" id="1NiMOxixiTs" role="2ZW6by">
                  <ref role="3uigEE" to="cu2c:~InvalidSModel" resolve="InvalidSModel" />
                </node>
                <node concept="37vLTw" id="1NiMOxixiQI" role="2ZW6bz">
                  <ref role="3cqZAo" node="1NiMOxixhnc" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1NiMOxixsgW" role="3cqZAp" />
            <node concept="3cpWs6" id="1NiMOxixjlV" role="3cqZAp">
              <node concept="2ShNRf" id="1NiMOxixnei" role="3cqZAk">
                <node concept="YeOm9" id="1NiMOxixrT2" role="2ShVmc">
                  <node concept="1Y3b0j" id="1NiMOxixrT5" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="cu2c:~LazyEditableSModelBase.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="LazyEditableSModelBase" />
                    <ref role="1Y3XeK" to="cu2c:~LazyEditableSModelBase" resolve="LazyEditableSModelBase" />
                    <node concept="3Tm1VV" id="1NiMOxixrT6" role="1B3o_S" />
                    <node concept="3clFb_" id="1NiMOxixrUK" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="loadSModel" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tmbuc" id="1NiMOxixrUL" role="1B3o_S" />
                      <node concept="3uibUv" id="1NiMOxixrUN" role="3clF45">
                        <ref role="3uigEE" to="gznm:~ModelLoadResult" resolve="ModelLoadResult" />
                      </node>
                      <node concept="37vLTG" id="1NiMOxixrUO" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="1NiMOxixrUP" role="1tU5fm">
                          <ref role="3uigEE" to="gznm:~ModelLoadingState" resolve="ModelLoadingState" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1NiMOxixrUQ" role="3clF47">
                        <node concept="3cpWs6" id="1NiMOxixu8h" role="3cqZAp">
                          <node concept="37vLTw" id="1NiMOxixuXe" role="3cqZAk">
                            <ref role="3cqZAo" node="1NiMOxixx$1" resolve="readModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="1NiMOxixrUS" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="saveModel" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tmbuc" id="1NiMOxixrUT" role="1B3o_S" />
                      <node concept="10P_77" id="1NiMOxixrUV" role="3clF45" />
                      <node concept="3uibUv" id="1NiMOxixrUW" role="Sfmx6">
                        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3uibUv" id="1NiMOxixrUX" role="Sfmx6">
                        <ref role="3uigEE" to="qx6n:~ModelSaveException" resolve="ModelSaveException" />
                      </node>
                      <node concept="3clFbS" id="1NiMOxixrUY" role="3clF47">
                        <node concept="YS8fn" id="1NiMOxixvDT" role="3cqZAp">
                          <node concept="2ShNRf" id="1NiMOxixvHL" role="YScLw">
                            <node concept="1pGfFk" id="1NiMOxixw9d" role="2ShVmc">
                              <ref role="37wK5l" to="e2lb:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1NiMOxixsDh" role="37wK5m">
                      <node concept="37vLTw" id="1NiMOxixswF" role="2Oq$k0">
                        <ref role="3cqZAo" node="1NiMOxix3Zl" resolve="header" />
                      </node>
                      <node concept="liA8E" id="1NiMOxixsRe" role="2OqNvi">
                        <ref role="37wK5l" to="cu2c:~SModelHeader.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="1NiMOxixtdd" role="37wK5m">
                      <node concept="1pGfFk" id="1NiMOxixtOT" role="2ShVmc">
                        <ref role="37wK5l" to="qx6n:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1NiMOxixfdZ" role="TEbGg">
            <node concept="3clFbS" id="1NiMOxixfe1" role="TDEfX">
              <node concept="3cpWs6" id="1NiMOxixgrH" role="3cqZAp">
                <node concept="10Nm6u" id="1NiMOxixgyq" role="3cqZAk" />
              </node>
            </node>
            <node concept="3cpWsn" id="1NiMOxixfe3" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1NiMOxixgoo" role="1tU5fm">
                <ref role="3uigEE" to="zofw:~ModelReadException" resolve="ModelReadException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1NiMOxiwVEw" role="3clF46">
        <property role="TrG5h" value="content" />
        <property role="3TUv4t" value="true" />
        <node concept="10Q1$e" id="1NiMOxiwVEx" role="1tU5fm">
          <node concept="10PrrI" id="1NiMOxiwVEy" role="10Q1$1" />
        </node>
      </node>
      <node concept="3uibUv" id="1NiMOxiwULk" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
      </node>
      <node concept="3Tm1VV" id="1NiMOxiwUEL" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1NiMOxiwPcI" role="1B3o_S" />
  </node>
</model>

