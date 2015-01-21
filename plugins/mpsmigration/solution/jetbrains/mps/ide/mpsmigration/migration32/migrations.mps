<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:685205a6-461a-4df8-bd8a-7041162f64fb(jetbrains.mps.ide.mpsmigration.migration32.migrations)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="auc7" ref="r:22e3ec81-a192-41cd-83a2-488758bdeedc(jetbrains.mps.migration.component.util)" />
    <import index="kgxg" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.components(MPS.Core/jetbrains.mps.components@java_stub)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="a093" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.vfs.newvfs.persistent(MPS.IDEA/com.intellij.openapi.vfs.newvfs.persistent@java_stub)" />
    <import index="cu2c" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="9nge" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.generator.fileGenerator(MPS.Core/jetbrains.mps.generator.fileGenerator@java_stub)" />
    <import index="qx6n" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/org.jetbrains.mps.openapi.persistence@java_stub)" />
    <import index="88zw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="vsqj" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="ec5l" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="bco1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.migration.global(MPS.Core/jetbrains.mps.migration.global@java_stub)" />
    <import index="59et" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.vfs(MPS.Core/jetbrains.mps.vfs@java_stub)" />
    <import index="nhkf" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.facets(MPS.Core/jetbrains.mps.project.facets@java_stub)" />
    <import index="d2v5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.persistence(MPS.Core/jetbrains.mps.persistence@java_stub)" />
    <import index="yla8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.application(MPS.IDEA/com.intellij.openapi.application@java_stub)" />
    <import index="iiw6" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.components(MPS.IDEA/com.intellij.openapi.components@java_stub)" />
    <import index="as9o" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="umn7" ref="r:c66fc409-a644-4946-bb27-007f5d00a613(jetbrains.mps.lang.migration.runtime.util)" />
    <import index="wqua" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.classloading(MPS.Core/jetbrains.mps.classloading@java_stub)" />
    <import index="fw3h" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.progress(MPS.IDEA/com.intellij.openapi.progress@java_stub)" />
    <import index="ff4b" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.progress(MPS.Core/jetbrains.mps.progress@java_stub)" />
    <import index="b2mh" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(MPS.IDEA/com.intellij.openapi.project@java_stub)" />
    <import index="pt5l" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" />
    <import index="i119" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.compiler(MPS.Core/jetbrains.mps.compiler@java_stub)" />
    <import index="vobj" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.compiler(MPS.Platform/jetbrains.mps.ide.compiler@java_stub)" />
    <import index="kqhl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="4357968816427488499" name="jetbrains.mps.lang.smodel.structure.CheckedModuleReference" flags="nn" index="2L6k_Z">
        <property id="4357968816427488500" name="moduleId" index="2L6k_S" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="6vz$DjulWQA">
    <property role="TrG5h" value="CleanSourcesMigration" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="7ScOZyr25ne" role="jymVt">
      <property role="TrG5h" value="OPTION_REMOVE_SOURCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7ScOZyr25nf" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="7ScOZyr25ng" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.removeSources" />
      </node>
      <node concept="3Tm1VV" id="7ScOZyr25nh" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="6vz$DjulWQB" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6vz$DjulWQC" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="6vz$DjulWQD" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.cleanSrc" />
      </node>
      <node concept="3Tm1VV" id="6vz$DjulWQE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7ScOZyr24ye" role="jymVt" />
    <node concept="312cEg" id="7ScOZyr21ob" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySources" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7ScOZyr20Qn" role="1B3o_S" />
      <node concept="10P_77" id="7ScOZyr21lM" role="1tU5fm" />
      <node concept="3clFbT" id="7ScOZyr21SJ" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ScOZyr20mj" role="jymVt" />
    <node concept="3clFbW" id="6vz$DjulWQG" role="jymVt">
      <node concept="3cqZAl" id="6vz$DjulWQH" role="3clF45" />
      <node concept="3Tm1VV" id="6vz$DjulWQI" role="1B3o_S" />
      <node concept="3clFbS" id="6vz$DjulWQJ" role="3clF47">
        <node concept="XkiVB" id="6vz$DjulWQK" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="10M0yZ" id="3UfGsecsm87" role="37wK5m">
            <ref role="3cqZAo" node="6vz$DjulWQB" resolve="ID" />
            <ref role="1PxDUh" node="6vz$DjulWQA" resolve="CleanSourcesMigration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ScOZyr27iw" role="jymVt" />
    <node concept="3clFb_" id="6vz$DjulWQM" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6vz$DjulWQN" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6vz$DjulWQO" role="3clF47">
        <node concept="3cpWs6" id="6vz$DjulWQP" role="3cqZAp">
          <node concept="3cpWs3" id="7ScOZyr1ZUO" role="3cqZAk">
            <node concept="1eOMI4" id="7ScOZyr2h5k" role="3uHU7w">
              <node concept="3K4zz7" id="7ScOZyr2iyg" role="1eOMHV">
                <node concept="Xl_RD" id="7ScOZyr2jy5" role="3K4GZi">
                  <property role="Xl_RC" value="Classes" />
                </node>
                <node concept="Xl_RD" id="7ScOZyr2j2c" role="3K4E3e">
                  <property role="Xl_RC" value="Sources" />
                </node>
                <node concept="37vLTw" id="7ScOZyr2hPR" role="3K4Cdx">
                  <ref role="3cqZAo" node="7ScOZyr21ob" resolve="mySources" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="6vz$DjulWQQ" role="3uHU7B">
              <property role="Xl_RC" value="Clean Generated " />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vz$DjulWQR" role="1B3o_S" />
      <node concept="3uibUv" id="6vz$DjulWQS" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ScOZyr27Qp" role="jymVt" />
    <node concept="3clFb_" id="6vz$DjulWQT" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6vz$DjulWQU" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="6vz$DjulWQV" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6vz$DjulWQW" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6vz$DjulWQX" role="3clF47">
        <node concept="3clFbF" id="7ScOZyr2yN1" role="3cqZAp">
          <node concept="1rXfSq" id="7ScOZyr2yN0" role="3clFbG">
            <ref role="37wK5l" node="7ScOZyr2z$K" resolve="removeGeneratedFiles" />
            <node concept="37vLTw" id="7ScOZyr2_Af" role="37wK5m">
              <ref role="3cqZAo" node="7ScOZyr21ob" resolve="mySources" />
            </node>
            <node concept="37vLTw" id="7ScOZyr2yMZ" role="37wK5m">
              <ref role="3cqZAo" node="6vz$DjulWQV" resolve="p" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7ScOZyr2x40" role="3cqZAp">
          <node concept="3clFbT" id="7ScOZyr2xm0" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vz$DjulWTn" role="1B3o_S" />
      <node concept="10P_77" id="6vz$DjulWTo" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6vz$DjulWTp" role="jymVt" />
    <node concept="3clFb_" id="6vz$DjulWTq" role="jymVt">
      <property role="TrG5h" value="getOptionIds" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6vz$DjulWTr" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6vz$DjulWTs" role="3clF47">
        <node concept="3cpWs6" id="6vz$DjulWTt" role="3cqZAp">
          <node concept="2YIFZM" id="7ScOZyr28q_" role="3cqZAk">
            <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="k7g3:~Collections.singleton(java.lang.Object):java.util.Set" resolve="singleton" />
            <node concept="10M0yZ" id="3UfGsecsm88" role="37wK5m">
              <ref role="1PxDUh" node="6vz$DjulWQA" resolve="CleanSourcesMigration" />
              <ref role="3cqZAo" node="7ScOZyr25ne" resolve="OPTION_REMOVE_SOURCES" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vz$DjulWTv" role="1B3o_S" />
      <node concept="3uibUv" id="6vz$DjulWTw" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="6vz$DjulWTx" role="11_B2D">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ScOZyr2_aW" role="jymVt" />
    <node concept="3clFb_" id="6vz$DjulWTy" role="jymVt">
      <property role="TrG5h" value="setOptionValues" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="6vz$DjulWTz" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="6vz$DjulWT$" role="3clF46">
        <property role="TrG5h" value="values" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="6vz$DjulWT_" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="3uibUv" id="6vz$DjulWTA" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="6vz$DjulWTB" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6vz$DjulWTC" role="3clF47">
        <node concept="3cpWs8" id="7ScOZyr2dKB" role="3cqZAp">
          <node concept="3cpWsn" id="7ScOZyr2dKC" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="7ScOZyr2dKt" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="7ScOZyr2dKD" role="33vP2m">
              <node concept="37vLTw" id="7ScOZyr2dKE" role="2Oq$k0">
                <ref role="3cqZAo" node="6vz$DjulWT$" resolve="values" />
              </node>
              <node concept="liA8E" id="7ScOZyr2dKF" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="10M0yZ" id="3UfGsecsm89" role="37wK5m">
                  <ref role="1PxDUh" node="6vz$DjulWQA" resolve="CleanSourcesMigration" />
                  <ref role="3cqZAo" node="7ScOZyr25ne" resolve="OPTION_REMOVE_SOURCES" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7ScOZyr2esb" role="3cqZAp">
          <node concept="2ZW3vV" id="7ScOZyr2eiA" role="1gVkn0">
            <node concept="3uibUv" id="7ScOZyr2ejx" role="2ZW6by">
              <ref role="3uigEE" to="e2lb:~Boolean" resolve="Boolean" />
            </node>
            <node concept="37vLTw" id="7ScOZyr2ehn" role="2ZW6bz">
              <ref role="3cqZAo" node="7ScOZyr2dKC" resolve="b" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ScOZyr29ik" role="3cqZAp">
          <node concept="37vLTI" id="7ScOZyr29vR" role="3clFbG">
            <node concept="1eOMI4" id="7ScOZyr2eIU" role="37vLTx">
              <node concept="10QFUN" id="7ScOZyr2eIV" role="1eOMHV">
                <node concept="37vLTw" id="7ScOZyr2eIT" role="10QFUP">
                  <ref role="3cqZAo" node="7ScOZyr2dKC" resolve="b" />
                </node>
                <node concept="3uibUv" id="7ScOZyr2h2d" role="10QFUM">
                  <ref role="3uigEE" to="e2lb:~Boolean" resolve="Boolean" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7ScOZyr29ij" role="37vLTJ">
              <ref role="3cqZAo" node="7ScOZyr21ob" resolve="mySources" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6vz$DjulWTD" role="1B3o_S" />
      <node concept="3cqZAl" id="6vz$DjulWTE" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7ScOZyr2$Oi" role="jymVt" />
    <node concept="2YIFZL" id="7ScOZyr2z$K" role="jymVt">
      <property role="TrG5h" value="removeGeneratedFiles" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7ScOZyr2yMr" role="3clF47">
        <node concept="3clFbF" id="7ScOZyr2yMs" role="3cqZAp">
          <node concept="2OqwBi" id="7ScOZyr2yMt" role="3clFbG">
            <node concept="2YIFZM" id="7ScOZyr2yMu" role="2Oq$k0">
              <ref role="37wK5l" to="yla8:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
              <ref role="1Pybhc" to="yla8:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="7ScOZyr2yMv" role="2OqNvi">
              <ref role="37wK5l" to="yla8:~Application.runWriteAction(java.lang.Runnable):void" resolve="runWriteAction" />
              <node concept="1bVj0M" id="7ScOZyr2yMw" role="37wK5m">
                <node concept="3clFbS" id="7ScOZyr2yMx" role="1bW5cS">
                  <node concept="3clFbJ" id="7ScOZyr2yMy" role="3cqZAp">
                    <node concept="3clFbS" id="7ScOZyr2yMz" role="3clFbx">
                      <node concept="3clFbF" id="7ScOZyr2yM$" role="3cqZAp">
                        <node concept="1rXfSq" id="7ScOZyr2yM_" role="3clFbG">
                          <ref role="37wK5l" node="7ScOZyr2shv" resolve="removeGenSources" />
                          <node concept="37vLTw" id="7ScOZyr2yMR" role="37wK5m">
                            <ref role="3cqZAo" node="7ScOZyr2yMO" resolve="p" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7ScOZyr2yMS" role="3clFbw">
                      <ref role="3cqZAo" node="7ScOZyr2yMM" resolve="sources" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="7ScOZyr2yMC" role="3cqZAp" />
                  <node concept="3SKdUt" id="7ScOZyr2yMD" role="3cqZAp">
                    <node concept="3SKdUq" id="7ScOZyr2yME" role="3SKWNk">
                      <property role="3SKdUp" value="clean genclasses" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="7ScOZyr2yMF" role="3cqZAp">
                    <node concept="1rXfSq" id="7ScOZyr2yMG" role="3clFbG">
                      <ref role="37wK5l" node="7ScOZyr2sTA" resolve="removeClassesGen" />
                      <node concept="37vLTw" id="7ScOZyr2yMQ" role="37wK5m">
                        <ref role="3cqZAo" node="7ScOZyr2yMO" resolve="p" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="7ScOZyr2yMI" role="3cqZAp">
                    <node concept="3SKdUq" id="7ScOZyr2yMJ" role="3SKWNk">
                      <property role="3SKdUp" value="invalidate FS caches (see InvalidateCachesAction)" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="7ScOZyr2yMK" role="3cqZAp">
                    <node concept="2YIFZM" id="7ScOZyr2yML" role="3clFbG">
                      <ref role="37wK5l" to="a093:~FSRecords.invalidateCaches():void" resolve="invalidateCaches" />
                      <ref role="1Pybhc" to="a093:~FSRecords" resolve="FSRecords" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEM" id="wVFrPa0wqP" role="3cqZAp">
          <node concept="1QHqEC" id="wVFrPa0wqR" role="1QHqEI">
            <node concept="3clFbS" id="wVFrPa0wqT" role="1bW5cS">
              <node concept="3clFbF" id="wVFrPa0wtq" role="3cqZAp">
                <node concept="2OqwBi" id="wVFrPa0wQ5" role="3clFbG">
                  <node concept="2YIFZM" id="wVFrPa0wOG" role="2Oq$k0">
                    <ref role="37wK5l" to="wqua:~ClassLoaderManager.getInstance():jetbrains.mps.classloading.ClassLoaderManager" resolve="getInstance" />
                    <ref role="1Pybhc" to="wqua:~ClassLoaderManager" resolve="ClassLoaderManager" />
                  </node>
                  <node concept="liA8E" id="wVFrPa0x6p" role="2OqNvi">
                    <ref role="37wK5l" to="wqua:~ClassLoaderManager.reloadAll(org.jetbrains.mps.openapi.util.ProgressMonitor):void" resolve="reloadAll" />
                    <node concept="2ShNRf" id="wVFrPa0x7W" role="37wK5m">
                      <node concept="1pGfFk" id="wVFrPa0xMJ" role="2ShVmc">
                        <ref role="37wK5l" to="ff4b:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ScOZyr2yMM" role="3clF46">
        <property role="TrG5h" value="sources" />
        <node concept="10P_77" id="7ScOZyr2yMN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ScOZyr2yMO" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="7ScOZyr2yMP" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="7ScOZyr2yMX" role="3clF45" />
      <node concept="3Tm1VV" id="7ScOZyr2zfL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6vz$DjulWTF" role="jymVt" />
    <node concept="2YIFZL" id="7ScOZyr2shv" role="jymVt">
      <property role="TrG5h" value="removeGenSources" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2tFdLTRDQ6B" role="3clF47">
        <node concept="3clFbF" id="2tFdLTRDQ7V" role="3cqZAp">
          <node concept="2OqwBi" id="2tFdLTRDQ7W" role="3clFbG">
            <node concept="2OqwBi" id="2tFdLTRJ34b" role="2Oq$k0">
              <node concept="UnYns" id="2tFdLTRJ4p6" role="2OqNvi">
                <node concept="3uibUv" id="2tFdLTRJ6F$" role="UnYnz">
                  <ref role="3uigEE" to="vsqj:~AbstractModule" resolve="AbstractModule" />
                </node>
              </node>
              <node concept="2YIFZM" id="39M2ISgsrI3" role="2Oq$k0">
                <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                <node concept="37vLTw" id="7ScOZyr2poy" role="37wK5m">
                  <ref role="3cqZAo" node="7ScOZyr2ozC" resolve="p" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2tFdLTRDQ87" role="2OqNvi">
              <node concept="1bVj0M" id="2tFdLTRDQ88" role="23t8la">
                <node concept="3clFbS" id="2tFdLTRDQ89" role="1bW5cS">
                  <node concept="3cpWs8" id="4AHaCIo3NT$" role="3cqZAp">
                    <node concept="3cpWsn" id="4AHaCIo3NT_" role="3cpWs9">
                      <property role="TrG5h" value="outputDir" />
                      <node concept="3uibUv" id="4AHaCIo3NTA" role="1tU5fm">
                        <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                      </node>
                      <node concept="2OqwBi" id="4AHaCIo3NTB" role="33vP2m">
                        <node concept="37vLTw" id="4AHaCIo3NTC" role="2Oq$k0">
                          <ref role="3cqZAo" node="2tFdLTRDQ8l" resolve="it" />
                        </node>
                        <node concept="liA8E" id="4AHaCIo3NTD" role="2OqNvi">
                          <ref role="37wK5l" to="vsqj:~AbstractModule.getOutputPath():jetbrains.mps.vfs.IFile" resolve="getOutputPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2tFdLTRG9ie" role="3cqZAp">
                    <node concept="3cpWsn" id="2tFdLTRG9if" role="3cpWs9">
                      <property role="TrG5h" value="testDir" />
                      <node concept="3uibUv" id="2tFdLTRJfFH" role="1tU5fm">
                        <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                      </node>
                      <node concept="2EnYce" id="4AHaCIo3UmX" role="33vP2m">
                        <node concept="2OqwBi" id="2tFdLTRJbj6" role="2Oq$k0">
                          <node concept="37vLTw" id="2tFdLTRIUBo" role="2Oq$k0">
                            <ref role="3cqZAo" node="2tFdLTRDQ8l" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2tFdLTRJdnR" role="2OqNvi">
                            <ref role="37wK5l" to="vsqj:~AbstractModule.getFacet(java.lang.Class):org.jetbrains.mps.openapi.module.SModuleFacet" resolve="getFacet" />
                            <node concept="3VsKOn" id="4AHaCIo3QKi" role="37wK5m">
                              <ref role="3VsUkX" to="nhkf:~TestsFacet" resolve="TestsFacet" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="4AHaCIo3VHX" role="2OqNvi">
                          <ref role="37wK5l" to="nhkf:~TestsFacet.getTestsOutputPath():jetbrains.mps.vfs.IFile" resolve="getTestsOutputPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4AHaCIo3W50" role="3cqZAp">
                    <node concept="3clFbS" id="4AHaCIo3W51" role="3clFbx">
                      <node concept="3cpWs8" id="4AHaCIo3W52" role="3cqZAp">
                        <node concept="3cpWsn" id="4AHaCIo3W53" role="3cpWs9">
                          <property role="TrG5h" value="cacheDir" />
                          <node concept="3uibUv" id="4AHaCIo3W54" role="1tU5fm">
                            <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                          </node>
                          <node concept="2YIFZM" id="4AHaCIo3W55" role="33vP2m">
                            <ref role="1Pybhc" to="9nge:~FileGenerationUtil" resolve="FileGenerationUtil" />
                            <ref role="37wK5l" to="9nge:~FileGenerationUtil.getCachesDir(jetbrains.mps.vfs.IFile):jetbrains.mps.vfs.IFile" resolve="getCachesDir" />
                            <node concept="37vLTw" id="4AHaCIo3W56" role="37wK5m">
                              <ref role="3cqZAo" node="4AHaCIo3NT_" resolve="outputDir" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4AHaCIo3W57" role="3cqZAp">
                        <node concept="2OqwBi" id="4AHaCIo3W58" role="3clFbG">
                          <node concept="37vLTw" id="4AHaCIo3W59" role="2Oq$k0">
                            <ref role="3cqZAo" node="4AHaCIo3NT_" resolve="outputDir" />
                          </node>
                          <node concept="liA8E" id="4AHaCIo3W5a" role="2OqNvi">
                            <ref role="37wK5l" to="59et:~IFile.delete():boolean" resolve="delete" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4AHaCIo3W5b" role="3cqZAp">
                        <node concept="2OqwBi" id="4AHaCIo3W5c" role="3clFbG">
                          <node concept="37vLTw" id="4AHaCIo3W5d" role="2Oq$k0">
                            <ref role="3cqZAo" node="4AHaCIo3W53" resolve="cacheDir" />
                          </node>
                          <node concept="liA8E" id="4AHaCIo3W5e" role="2OqNvi">
                            <ref role="37wK5l" to="59et:~IFile.delete():boolean" resolve="delete" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="4AHaCIo3W5f" role="3clFbw">
                      <node concept="10Nm6u" id="4AHaCIo3W5g" role="3uHU7w" />
                      <node concept="37vLTw" id="4AHaCIo3W5h" role="3uHU7B">
                        <ref role="3cqZAo" node="4AHaCIo3NT_" resolve="outputDir" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1vuHvNKqQOr" role="3cqZAp">
                    <node concept="3clFbS" id="1vuHvNKqQOu" role="3clFbx">
                      <node concept="3cpWs8" id="2tFdLTRFXrr" role="3cqZAp">
                        <node concept="3cpWsn" id="2tFdLTRFXru" role="3cpWs9">
                          <property role="TrG5h" value="testCacheDir" />
                          <node concept="3uibUv" id="2tFdLTRJiVa" role="1tU5fm">
                            <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                          </node>
                          <node concept="2YIFZM" id="2tFdLTRJltJ" role="33vP2m">
                            <ref role="37wK5l" to="9nge:~FileGenerationUtil.getCachesDir(jetbrains.mps.vfs.IFile):jetbrains.mps.vfs.IFile" resolve="getCachesDir" />
                            <ref role="1Pybhc" to="9nge:~FileGenerationUtil" resolve="FileGenerationUtil" />
                            <node concept="37vLTw" id="4AHaCIo3XPO" role="37wK5m">
                              <ref role="3cqZAo" node="2tFdLTRG9if" resolve="testDir" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2tFdLTRGxHi" role="3cqZAp">
                        <node concept="2OqwBi" id="2tFdLTRGxHj" role="3clFbG">
                          <node concept="37vLTw" id="4AHaCIo3Y3T" role="2Oq$k0">
                            <ref role="3cqZAo" node="2tFdLTRG9if" resolve="testDir" />
                          </node>
                          <node concept="liA8E" id="2tFdLTRGxHo" role="2OqNvi">
                            <ref role="37wK5l" to="59et:~IFile.delete():boolean" resolve="delete" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2tFdLTRGmbA" role="3cqZAp">
                        <node concept="2OqwBi" id="2tFdLTRGuf1" role="3clFbG">
                          <node concept="37vLTw" id="2tFdLTRJuyj" role="2Oq$k0">
                            <ref role="3cqZAo" node="2tFdLTRFXru" resolve="testCacheDir" />
                          </node>
                          <node concept="liA8E" id="2tFdLTRGvgd" role="2OqNvi">
                            <ref role="37wK5l" to="59et:~IFile.delete():boolean" resolve="delete" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1vuHvNKqVnU" role="3clFbw">
                      <node concept="10Nm6u" id="1vuHvNKqVx3" role="3uHU7w" />
                      <node concept="37vLTw" id="4AHaCIo3WIp" role="3uHU7B">
                        <ref role="3cqZAo" node="2tFdLTRG9if" resolve="testDir" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2tFdLTRDQ8l" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2tFdLTRDQ8m" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ScOZyr2ozC" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="7ScOZyr2pb1" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="2tFdLTRDQ8o" role="3clF45" />
      <node concept="P$JXv" id="1AzqgyAjyce" role="lGtFl">
        <node concept="TZ5HA" id="1AzqgyAjycf" role="TZ5H$">
          <node concept="1dT_AC" id="1AzqgyAjycg" role="1dT_Ay">
            <property role="1dT_AB" value="todo. Was originally copied from IdeCommandUtil, then changed. Check whether they could " />
          </node>
        </node>
        <node concept="TZ5HA" id="1AzqgyAjyhF" role="TZ5H$">
          <node concept="1dT_AC" id="1AzqgyAjyhG" role="1dT_Ay">
            <property role="1dT_AB" value="be combined into one piece of universal code" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7ScOZyr2tGM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1AzqgyAk7ZD" role="jymVt" />
    <node concept="2YIFZL" id="7ScOZyr2sTA" role="jymVt">
      <property role="TrG5h" value="removeClassesGen" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1AzqgyAk4Ve" role="3clF47">
        <node concept="3clFbF" id="1AzqgyAk4Vn" role="3cqZAp">
          <node concept="2OqwBi" id="1AzqgyAk4Vo" role="3clFbG">
            <node concept="2OqwBi" id="1AzqgyAk4Vp" role="2Oq$k0">
              <node concept="UnYns" id="1AzqgyAk4Vr" role="2OqNvi">
                <node concept="3uibUv" id="1AzqgyAk4Vs" role="UnYnz">
                  <ref role="3uigEE" to="vsqj:~AbstractModule" resolve="AbstractModule" />
                </node>
              </node>
              <node concept="2YIFZM" id="39M2ISgsrXX" role="2Oq$k0">
                <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                <node concept="37vLTw" id="7ScOZyr2rrO" role="37wK5m">
                  <ref role="3cqZAo" node="7ScOZyr2qXL" resolve="p" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="1AzqgyAk4Vt" role="2OqNvi">
              <node concept="1bVj0M" id="1AzqgyAk4Vu" role="23t8la">
                <node concept="3clFbS" id="1AzqgyAk4Vv" role="1bW5cS">
                  <node concept="3cpWs8" id="1AzqgyAk4Vw" role="3cqZAp">
                    <node concept="3cpWsn" id="1AzqgyAk4Vx" role="3cpWs9">
                      <property role="TrG5h" value="outputDir" />
                      <node concept="3uibUv" id="1AzqgyAk4Vy" role="1tU5fm">
                        <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                      </node>
                      <node concept="2OqwBi" id="1AzqgyAk4Vz" role="33vP2m">
                        <node concept="37vLTw" id="1AzqgyAk4V$" role="2Oq$k0">
                          <ref role="3cqZAo" node="1AzqgyAk4Wj" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1AzqgyAk4V_" role="2OqNvi">
                          <ref role="37wK5l" to="vsqj:~AbstractModule.getOutputPath():jetbrains.mps.vfs.IFile" resolve="getOutputPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1AzqgyAk4VA" role="3cqZAp">
                    <node concept="3cpWsn" id="1AzqgyAk4VB" role="3cpWs9">
                      <property role="TrG5h" value="classesGen" />
                      <node concept="3uibUv" id="1AzqgyAk4VC" role="1tU5fm">
                        <ref role="3uigEE" to="59et:~IFile" resolve="IFile" />
                      </node>
                      <node concept="2EnYce" id="1AzqgyAk4VD" role="33vP2m">
                        <node concept="2OqwBi" id="1AzqgyAk4VE" role="2Oq$k0">
                          <node concept="37vLTw" id="1AzqgyAk4VF" role="2Oq$k0">
                            <ref role="3cqZAo" node="1AzqgyAk4Wj" resolve="it" />
                          </node>
                          <node concept="liA8E" id="1AzqgyAk4VG" role="2OqNvi">
                            <ref role="37wK5l" to="vsqj:~AbstractModule.getFacet(java.lang.Class):org.jetbrains.mps.openapi.module.SModuleFacet" resolve="getFacet" />
                            <node concept="3VsKOn" id="1AzqgyAk4VH" role="37wK5m">
                              <ref role="3VsUkX" to="nhkf:~JavaModuleFacet" resolve="JavaModuleFacet" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="1AzqgyAk4VI" role="2OqNvi">
                          <ref role="37wK5l" to="nhkf:~JavaModuleFacet.getClassesGen():jetbrains.mps.vfs.IFile" resolve="getClassesGen" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1AzqgyAk4W1" role="3cqZAp">
                    <node concept="3clFbS" id="1AzqgyAk4W2" role="3clFbx">
                      <node concept="3clFbF" id="1AzqgyAk4W8" role="3cqZAp">
                        <node concept="2OqwBi" id="1AzqgyAk4W9" role="3clFbG">
                          <node concept="37vLTw" id="1AzqgyAk4Wa" role="2Oq$k0">
                            <ref role="3cqZAo" node="1AzqgyAk4VB" resolve="classesGen" />
                          </node>
                          <node concept="liA8E" id="1AzqgyAk4Wb" role="2OqNvi">
                            <ref role="37wK5l" to="59et:~IFile.delete():boolean" resolve="delete" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1AzqgyAk4Wg" role="3clFbw">
                      <node concept="10Nm6u" id="1AzqgyAk4Wh" role="3uHU7w" />
                      <node concept="37vLTw" id="1AzqgyAk4Wi" role="3uHU7B">
                        <ref role="3cqZAo" node="1AzqgyAk4VB" resolve="classesGen" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1AzqgyAk4Wj" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1AzqgyAk4Wk" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ScOZyr2qXL" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="7ScOZyr2qXM" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="1AzqgyAk4Wl" role="3clF45" />
      <node concept="3Tm6S6" id="7ScOZyr2tys" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6vz$DjulWTG" role="1B3o_S" />
    <node concept="3uibUv" id="6vz$DjulWTH" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
    <node concept="3uibUv" id="7ScOZyr23pq" role="EKbjA">
      <ref role="3uigEE" to="bco1:~ProjectMigrationWithOptions" resolve="ProjectMigrationWithOptions" />
    </node>
    <node concept="3uibUv" id="2pwkv5png5D" role="EKbjA">
      <ref role="3uigEE" to="bco1:~CleanupProjectMigration" resolve="CleanupProjectMigration" />
    </node>
  </node>
  <node concept="312cEu" id="25gV4Ls$R9T">
    <property role="TrG5h" value="ModelRefMigration" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="25gV4Ls_DGM" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="25gV4Ls_DGN" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="25gV4Ls_DGO" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.modelRef" />
      </node>
      <node concept="3Tm6S6" id="2XLv1ZBXfd2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="22T75mlVNAJ" role="jymVt" />
    <node concept="3clFbW" id="22T75mlVO2J" role="jymVt">
      <node concept="3cqZAl" id="22T75mlVO2L" role="3clF45" />
      <node concept="3clFbS" id="22T75mlVO2M" role="3clF47">
        <node concept="XkiVB" id="22T75mlVOeY" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="10M0yZ" id="3UfGsecsm8a" role="37wK5m">
            <ref role="1PxDUh" node="25gV4Ls$R9T" resolve="ModelRefMigration" />
            <ref role="3cqZAo" node="25gV4Ls_DGM" resolve="ID" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="22T75mlVQMz" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="25gV4Ls_DGQ" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="25gV4Ls_DGR" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="25gV4Ls_DGS" role="3clF47">
        <node concept="3cpWs6" id="25gV4Ls_DGT" role="3cqZAp">
          <node concept="Xl_RD" id="25gV4Ls_DGU" role="3cqZAk">
            <property role="Xl_RC" value="Add module to every model reference" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="25gV4Ls_DGV" role="1B3o_S" />
      <node concept="3uibUv" id="25gV4Ls_DGW" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="25gV4Ls_Eql" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="25gV4Ls_Eqm" role="1B3o_S" />
      <node concept="10P_77" id="22T75mlVShM" role="3clF45" />
      <node concept="37vLTG" id="25gV4Ls_Eqp" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="25gV4Ls_Eqq" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="25gV4Ls_Eqr" role="3clF47">
        <node concept="3clFbF" id="25gV4Ls_L9I" role="3cqZAp">
          <node concept="1rXfSq" id="25gV4Ls_L9G" role="3clFbG">
            <ref role="37wK5l" node="25gV4Ls_GQ9" resolve="saveAll" />
            <node concept="37vLTw" id="25gV4Ls_Lhh" role="37wK5m">
              <ref role="3cqZAo" node="25gV4Ls_Eqp" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ST_gT5M2Uo" role="3cqZAp">
          <node concept="37vLTI" id="6ST_gT5M2Up" role="3clFbG">
            <node concept="3clFbT" id="6ST_gT5M2Uq" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="10M0yZ" id="6ST_gT5M2Ur" role="37vLTJ">
              <ref role="1PxDUh" to="cu2c:~SModelReference" resolve="SModelReference" />
              <ref role="3cqZAo" to="cu2c:~SModelReference.replaceModuleReferences" resolve="replaceModuleReferences" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="25gV4Ls_Llr" role="3cqZAp">
          <node concept="1rXfSq" id="25gV4Ls_Lls" role="3clFbG">
            <ref role="37wK5l" node="25gV4Ls_GQ9" resolve="saveAll" />
            <node concept="37vLTw" id="25gV4Ls_Llt" role="37wK5m">
              <ref role="3cqZAo" node="25gV4Ls_Eqp" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ST_gT5M2JG" role="3cqZAp">
          <node concept="37vLTI" id="6ST_gT5M2SF" role="3clFbG">
            <node concept="3clFbT" id="6ST_gT5M2U0" role="37vLTx" />
            <node concept="10M0yZ" id="6ST_gT5M2JW" role="37vLTJ">
              <ref role="1PxDUh" to="cu2c:~SModelReference" resolve="SModelReference" />
              <ref role="3cqZAo" to="cu2c:~SModelReference.replaceModuleReferences" resolve="replaceModuleReferences" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="22T75mlVT4z" role="3cqZAp">
          <node concept="3clFbT" id="22T75mlVTds" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="25gV4Ls_GQ9" role="jymVt">
      <property role="TrG5h" value="saveAll" />
      <node concept="3cqZAl" id="25gV4Ls_GQb" role="3clF45" />
      <node concept="3clFbS" id="25gV4Ls_GQc" role="3clF47">
        <node concept="3cpWs8" id="6HwFPByrzI" role="3cqZAp">
          <node concept="3cpWsn" id="6HwFPByrzJ" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="2OqwBi" id="1bRo4PPC0Se" role="33vP2m">
              <node concept="37vLTw" id="25gV4Ls_Jfc" role="2Oq$k0">
                <ref role="3cqZAo" node="25gV4Ls_I1M" resolve="p" />
              </node>
              <node concept="liA8E" id="1bRo4PPC2Bk" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModulesWithGenerators():java.lang.Iterable" resolve="getModulesWithGenerators" />
              </node>
            </node>
            <node concept="A3Dl8" id="6HwFPBysbh" role="1tU5fm">
              <node concept="3qUE_q" id="6HJOBr8fRv5" role="A3Ik2">
                <node concept="3uibUv" id="6HJOBr8fSdP" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6HwFPBySxX" role="3cqZAp">
          <node concept="3cpWsn" id="6HwFPBySxY" role="3cpWs9">
            <property role="TrG5h" value="allModels" />
            <node concept="_YKpA" id="6HwFPBySwW" role="1tU5fm">
              <node concept="3uibUv" id="6HwFPBzctC" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="6HwFPBySxZ" role="33vP2m">
              <node concept="2OqwBi" id="6HwFPBySy0" role="2Oq$k0">
                <node concept="3zZkjj" id="6HwFPBySy1" role="2OqNvi">
                  <node concept="1bVj0M" id="6HwFPBySy2" role="23t8la">
                    <node concept="3clFbS" id="6HwFPBySy3" role="1bW5cS">
                      <node concept="3clFbF" id="6HwFPBySy4" role="3cqZAp">
                        <node concept="2YIFZM" id="6HwFPBySy9" role="3clFbG">
                          <ref role="37wK5l" to="cu2c:~SModelStereotype.isUserModel(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="isUserModel" />
                          <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
                          <node concept="37vLTw" id="6HwFPBySya" role="37wK5m">
                            <ref role="3cqZAo" node="6HwFPBySyb" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6HwFPBySyb" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="6HwFPBySyc" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1bRo4PPClHI" role="2Oq$k0">
                  <node concept="2OqwBi" id="6HwFPBySyd" role="2Oq$k0">
                    <node concept="37vLTw" id="6HwFPBySye" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HwFPByrzJ" resolve="modules" />
                    </node>
                    <node concept="3goQfb" id="6HwFPBySyf" role="2OqNvi">
                      <node concept="1bVj0M" id="6HwFPBySyg" role="23t8la">
                        <node concept="3clFbS" id="6HwFPBySyh" role="1bW5cS">
                          <node concept="3clFbF" id="6HwFPBySyi" role="3cqZAp">
                            <node concept="2OqwBi" id="6HwFPBySyj" role="3clFbG">
                              <node concept="liA8E" id="6HwFPBySyk" role="2OqNvi">
                                <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                              </node>
                              <node concept="37vLTw" id="6HwFPBySyl" role="2Oq$k0">
                                <ref role="3cqZAo" node="6HwFPBySym" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6HwFPBySym" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="6HwFPBySyn" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="UnYns" id="1bRo4PPCnws" role="2OqNvi">
                    <node concept="3uibUv" id="1bRo4PPCo94" role="UnYnz">
                      <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="6HwFPBySyo" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6HwFPBylpv" role="3cqZAp" />
        <node concept="2Gpval" id="1VlRc9NxHa" role="3cqZAp">
          <node concept="2GrKxI" id="1VlRc9NxHc" role="2Gsz3X">
            <property role="TrG5h" value="language" />
          </node>
          <node concept="2OqwBi" id="1VlRc9NQUt" role="2GsD0m">
            <node concept="37vLTw" id="1VlRc9NQxf" role="2Oq$k0">
              <ref role="3cqZAo" node="6HwFPByrzJ" resolve="modules" />
            </node>
            <node concept="UnYns" id="1VlRc9NSoh" role="2OqNvi">
              <node concept="3uibUv" id="1VlRc9NSN7" role="UnYnz">
                <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1VlRc9NxHg" role="2LFqv$">
            <node concept="2Gpval" id="52b9MQ9zEpM" role="3cqZAp">
              <node concept="2GrKxI" id="52b9MQ9zEpO" role="2Gsz3X">
                <property role="TrG5h" value="generator" />
              </node>
              <node concept="3clFbS" id="52b9MQ9zEpS" role="2LFqv$">
                <node concept="3clFbF" id="52b9MQ9zFrz" role="3cqZAp">
                  <node concept="2OqwBi" id="52b9MQ9zFvz" role="3clFbG">
                    <node concept="2GrUjf" id="52b9MQ9zFry" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="52b9MQ9zEpO" resolve="generator" />
                    </node>
                    <node concept="liA8E" id="52b9MQ9zIsH" role="2OqNvi">
                      <ref role="37wK5l" to="vsqj:~AbstractModule.updateModuleReferences():void" resolve="updateModuleReferences" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="52b9MQ9z_lu" role="2GsD0m">
                <node concept="2GrUjf" id="52b9MQ9z_cx" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1VlRc9NxHc" resolve="language" />
                </node>
                <node concept="liA8E" id="52b9MQ9zCNJ" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~Language.getGenerators():java.util.Collection" resolve="getGenerators" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3OKd6hRWyQq" role="3cqZAp">
              <node concept="2OqwBi" id="3OKd6hRWRbQ" role="3clFbG">
                <node concept="2GrUjf" id="3OKd6hRWyQp" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1VlRc9NxHc" resolve="language" />
                </node>
                <node concept="liA8E" id="3OKd6hRWSR0" role="2OqNvi">
                  <ref role="37wK5l" to="vsqj:~AbstractModule.updateSModelReferences():void" resolve="updateSModelReferences" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1VlRc9NC3_" role="3cqZAp">
              <node concept="2OqwBi" id="1VlRc9NC_z" role="3clFbG">
                <node concept="2GrUjf" id="1VlRc9NC3$" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1VlRc9NxHc" resolve="language" />
                </node>
                <node concept="liA8E" id="1VlRc9NEOm" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~Language.save():void" resolve="save" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1VlRc9MbJh" role="3cqZAp" />
        <node concept="2Gpval" id="2cEqqWVR0qo" role="3cqZAp">
          <node concept="37vLTw" id="6HwFPBzegl" role="2GsD0m">
            <ref role="3cqZAo" node="6HwFPBySxY" resolve="allModels" />
          </node>
          <node concept="2GrKxI" id="2cEqqWVR0qp" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="3clFbS" id="2cEqqWVR0qr" role="2LFqv$">
            <node concept="3clFbJ" id="6kShKQzgXLy" role="3cqZAp">
              <node concept="3clFbS" id="6kShKQzgXLz" role="3clFbx">
                <node concept="3N13vt" id="6kShKQzhfQF" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="6kShKQzhfHz" role="3clFbw">
                <node concept="2GrUjf" id="6HwFPBzhE_" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                </node>
                <node concept="liA8E" id="6kShKQzhfQE" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModel.isReadOnly():boolean" resolve="isReadOnly" />
                </node>
              </node>
            </node>
            <node concept="SfApY" id="282U6$nFI2U" role="3cqZAp">
              <node concept="3clFbS" id="282U6$nFI2V" role="SfCbr">
                <node concept="3SKdUt" id="2cEqqWVR0se" role="3cqZAp">
                  <node concept="3SKdUq" id="2cEqqWVR0sg" role="3SKWNk">
                    <property role="3SKdUp" value="ensure model is loaded" />
                  </node>
                </node>
                <node concept="3clFbF" id="4i4o4Ka8SZB" role="3cqZAp">
                  <node concept="2OqwBi" id="4i4o4Ka8Te4" role="3clFbG">
                    <node concept="2GrUjf" id="6HwFPBzilT" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                    </node>
                    <node concept="liA8E" id="4i4o4Ka8UiB" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SModel.load():void" resolve="load" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="2cEqqWVR0GJ" role="3cqZAp">
                  <node concept="3SKdUq" id="2cEqqWVR0GL" role="3SKWNk">
                    <property role="3SKdUp" value=" and force to save model" />
                  </node>
                </node>
                <node concept="3clFbF" id="2cEqqWVR0Ge" role="3cqZAp">
                  <node concept="2OqwBi" id="2cEqqWVR0G_" role="3clFbG">
                    <node concept="2GrUjf" id="6HwFPBzinD" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                    </node>
                    <node concept="liA8E" id="2cEqqWVR0GE" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~EditableSModel.setChanged(boolean):void" resolve="setChanged" />
                      <node concept="3clFbT" id="2cEqqWVR0GF" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="282U6$nFEul" role="3cqZAp">
                  <property role="TyiWK" value="false" />
                  <property role="TyiWL" value="true" />
                  <node concept="3clFbS" id="282U6$nFEuo" role="3clFbx">
                    <node concept="3clFbF" id="2cEqqWVR0sj" role="3cqZAp">
                      <node concept="2OqwBi" id="2cEqqWVR0sE" role="3clFbG">
                        <node concept="2GrUjf" id="282U6$nFHFK" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                        </node>
                        <node concept="liA8E" id="2cEqqWVR0Gb" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~EditableSModel.save():void" resolve="save" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="282U6$nFF0b" role="3clFbw">
                    <node concept="2GrUjf" id="282U6$nFEzk" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                    </node>
                    <node concept="liA8E" id="282U6$nFG4g" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~EditableSModel.isChanged():boolean" resolve="isChanged" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="282U6$nFI2W" role="TEbGg">
                <node concept="3cpWsn" id="282U6$nFI2X" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="282U6$nFIHU" role="1tU5fm">
                    <ref role="3uigEE" to="e2lb:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="282U6$nFI2Z" role="TDEfX">
                  <node concept="34ab3g" id="282U6$nFK2g" role="3cqZAp">
                    <property role="35gtTG" value="error" />
                    <property role="34fQS0" value="true" />
                    <node concept="3cpWs3" id="282U6$nG4wG" role="34bqiv">
                      <node concept="2OqwBi" id="282U6$nG699" role="3uHU7w">
                        <node concept="2GrUjf" id="282U6$nG5hF" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="2cEqqWVR0qp" resolve="model" />
                        </node>
                        <node concept="liA8E" id="282U6$nG8n0" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SModel.getModelName():java.lang.String" resolve="getModelName" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="282U6$nFK2i" role="3uHU7B">
                        <property role="Xl_RC" value="Error re-saving model " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="282U6$nFK2k" role="34bMjA">
                      <ref role="3cqZAo" node="282U6$nFI2X" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="25gV4Ls_GUG" role="1B3o_S" />
      <node concept="37vLTG" id="25gV4Ls_I1M" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="25gV4Ls_I1L" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="22T75mlVMPd" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
    <node concept="3Tm1VV" id="22T75mlVQP1" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="25gV4Ls$QFv">
    <property role="TrG5h" value="Name2IdMigration" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="25gV4Ls$QFy" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="25gV4Ls$QFz" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="25gV4Ls$QF$" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.name2id_gen" />
      </node>
      <node concept="3Tm1VV" id="25gV4Ls$QF_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2XLv1ZBXkMU" role="jymVt" />
    <node concept="3clFbW" id="22T75mlVzKi" role="jymVt">
      <node concept="3cqZAl" id="22T75mlVzKk" role="3clF45" />
      <node concept="3Tm1VV" id="22T75mlVzKl" role="1B3o_S" />
      <node concept="3clFbS" id="22T75mlVzKm" role="3clF47">
        <node concept="XkiVB" id="22T75mlVzXH" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="10M0yZ" id="3UfGsecsm8b" role="37wK5m">
            <ref role="1PxDUh" node="25gV4Ls$QFv" resolve="Name2IdMigration" />
            <ref role="3cqZAo" node="25gV4Ls$QFy" resolve="ID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="25gV4Ls$QFA" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="25gV4Ls$QFB" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="25gV4Ls$QFC" role="3clF47">
        <node concept="3cpWs6" id="25gV4Ls$QFD" role="3cqZAp">
          <node concept="Xl_RD" id="25gV4Ls$QFE" role="3cqZAk">
            <property role="Xl_RC" value="Migrate names to ids" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="25gV4Ls$QFF" role="1B3o_S" />
      <node concept="3uibUv" id="25gV4Ls$QFG" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="25gV4Ls$QG4" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="25gV4Ls$QG5" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="25gV4Ls$QG6" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="25gV4Ls$QG7" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="25gV4Ls$QG8" role="3clF47">
        <node concept="3cpWs8" id="6qheojHe$Je" role="3cqZAp">
          <node concept="3cpWsn" id="6qheojHe$Jf" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="6qheojHe_rU" role="1tU5fm">
              <node concept="3qUE_q" id="4JqvFZsYGpf" role="A3Ik2">
                <node concept="3uibUv" id="4JqvFZsYHrb" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="38NRypsvwHA" role="33vP2m">
              <node concept="37vLTw" id="25gV4Ls_6J5" role="2Oq$k0">
                <ref role="3cqZAo" node="25gV4Ls$QG6" resolve="p" />
              </node>
              <node concept="liA8E" id="38NRypsvyeC" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModulesWithGenerators():java.lang.Iterable" resolve="getModulesWithGenerators" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="67ALy4l6s6P" role="3cqZAp">
          <node concept="3cpWsn" id="67ALy4l6s6Q" role="3cpWs9">
            <property role="TrG5h" value="defaultModelFactory" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="67ALy4l6s6M" role="1tU5fm">
              <ref role="3uigEE" to="qx6n:~ModelFactory" resolve="ModelFactory" />
            </node>
            <node concept="2OqwBi" id="67ALy4l6s6R" role="33vP2m">
              <node concept="2YIFZM" id="67ALy4l6s6S" role="2Oq$k0">
                <ref role="37wK5l" to="qx6n:~PersistenceFacade.getInstance():org.jetbrains.mps.openapi.persistence.PersistenceFacade" resolve="getInstance" />
                <ref role="1Pybhc" to="qx6n:~PersistenceFacade" resolve="PersistenceFacade" />
              </node>
              <node concept="liA8E" id="67ALy4l6s6T" role="2OqNvi">
                <ref role="37wK5l" to="qx6n:~PersistenceFacade.getDefaultModelFactory():org.jetbrains.mps.openapi.persistence.ModelFactory" resolve="getDefaultModelFactory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="67ALy4l7134" role="3cqZAp">
          <node concept="3SKdUq" id="67ALy4l71Gv" role="3SKWNk">
            <property role="3SKdUp" value="models: editable, persistence aware, in xml (default) persistence and of older version" />
          </node>
        </node>
        <node concept="3cpWs8" id="6qheojHeyfQ" role="3cqZAp">
          <node concept="3cpWsn" id="6qheojHeyfT" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="A3Dl8" id="6qheojHeyfN" role="1tU5fm">
              <node concept="3uibUv" id="67ALy4l6cAB" role="A3Ik2">
                <ref role="3uigEE" to="d2v5:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
              </node>
            </node>
            <node concept="2OqwBi" id="X9GuMyA8dr" role="33vP2m">
              <node concept="2OqwBi" id="6qheojHeDqE" role="2Oq$k0">
                <node concept="2OqwBi" id="3Bnj_vDHfAC" role="2Oq$k0">
                  <node concept="2OqwBi" id="67ALy4l6TXm" role="2Oq$k0">
                    <node concept="2OqwBi" id="6qheojHe_EX" role="2Oq$k0">
                      <node concept="37vLTw" id="hzgGjPr08x" role="2Oq$k0">
                        <ref role="3cqZAo" node="6qheojHe$Jf" resolve="modules" />
                      </node>
                      <node concept="3goQfb" id="6qheojHeCs0" role="2OqNvi">
                        <node concept="1bVj0M" id="6qheojHeCs2" role="23t8la">
                          <node concept="3clFbS" id="6qheojHeCs3" role="1bW5cS">
                            <node concept="3clFbF" id="6qheojHeCCD" role="3cqZAp">
                              <node concept="2OqwBi" id="6qheojHeCIl" role="3clFbG">
                                <node concept="37vLTw" id="hzgGjPr0kI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6qheojHeCs4" resolve="it" />
                                </node>
                                <node concept="liA8E" id="6qheojHeDaK" role="2OqNvi">
                                  <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6qheojHeCs4" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6qheojHeCs5" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="UnYns" id="67ALy4l6VLq" role="2OqNvi">
                      <node concept="3uibUv" id="67ALy4l6WAl" role="UnYnz">
                        <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="3Bnj_vDHh2o" role="2OqNvi">
                    <node concept="1bVj0M" id="3Bnj_vDHh2q" role="23t8la">
                      <node concept="3clFbS" id="3Bnj_vDHh2r" role="1bW5cS">
                        <node concept="3clFbF" id="3Bnj_vDHhCC" role="3cqZAp">
                          <node concept="3fqX7Q" id="3Bnj_vDHjRF" role="3clFbG">
                            <node concept="2OqwBi" id="3Bnj_vDHjRG" role="3fr31v">
                              <node concept="37vLTw" id="3Bnj_vDHjRH" role="2Oq$k0">
                                <ref role="3cqZAo" node="3Bnj_vDHh2s" resolve="it" />
                              </node>
                              <node concept="liA8E" id="3Bnj_vDHjRI" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SModel.isReadOnly():boolean" resolve="isReadOnly" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3Bnj_vDHh2s" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3Bnj_vDHh2t" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="UnYns" id="6qheojHeEOR" role="2OqNvi">
                  <node concept="3uibUv" id="67ALy4l6duW" role="UnYnz">
                    <ref role="3uigEE" to="d2v5:~PersistenceVersionAware" resolve="PersistenceVersionAware" />
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="X9GuMyA9w1" role="2OqNvi">
                <node concept="1bVj0M" id="X9GuMyA9w3" role="23t8la">
                  <node concept="3clFbS" id="X9GuMyA9w4" role="1bW5cS">
                    <node concept="3clFbF" id="X9GuMyAfGw" role="3cqZAp">
                      <node concept="1Wc70l" id="X9GuMyAqe$" role="3clFbG">
                        <node concept="3eOVzh" id="X9GuMyAHvQ" role="3uHU7w">
                          <node concept="3cmrfG" id="X9GuMyAHwh" role="3uHU7w">
                            <property role="3cmrfH" value="9" />
                          </node>
                          <node concept="2OqwBi" id="X9GuMyAqO5" role="3uHU7B">
                            <node concept="37vLTw" id="hzgGjPr0Q9" role="2Oq$k0">
                              <ref role="3cqZAo" node="X9GuMyA9w5" resolve="it" />
                            </node>
                            <node concept="liA8E" id="X9GuMyAsvk" role="2OqNvi">
                              <ref role="37wK5l" to="d2v5:~PersistenceVersionAware.getPersistenceVersion():int" resolve="getPersistenceVersion" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="67ALy4l6BUv" role="3uHU7B">
                          <node concept="37vLTw" id="67ALy4l6CAg" role="3uHU7w">
                            <ref role="3cqZAo" node="67ALy4l6s6Q" resolve="defaultModelFactory" />
                          </node>
                          <node concept="2OqwBi" id="67ALy4l6_GX" role="3uHU7B">
                            <node concept="37vLTw" id="67ALy4l6_8F" role="2Oq$k0">
                              <ref role="3cqZAo" node="X9GuMyA9w5" resolve="it" />
                            </node>
                            <node concept="liA8E" id="67ALy4l6Bky" role="2OqNvi">
                              <ref role="37wK5l" to="d2v5:~PersistenceVersionAware.getModelFactory():org.jetbrains.mps.openapi.persistence.ModelFactory" resolve="getModelFactory" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="X9GuMyA9w5" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="X9GuMyA9w6" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="62DGzuFny_C" role="3cqZAp">
          <node concept="2OqwBi" id="62DGzuFnzbu" role="3clFbG">
            <node concept="37vLTw" id="62DGzuFny_A" role="2Oq$k0">
              <ref role="3cqZAo" node="6qheojHeyfT" resolve="models" />
            </node>
            <node concept="2es0OD" id="62DGzuFnzWz" role="2OqNvi">
              <node concept="1bVj0M" id="62DGzuFnzW_" role="23t8la">
                <node concept="3clFbS" id="62DGzuFnzWA" role="1bW5cS">
                  <node concept="3clFbF" id="62DGzuFn$31" role="3cqZAp">
                    <node concept="2OqwBi" id="62DGzuFn$T1" role="3clFbG">
                      <node concept="37vLTw" id="62DGzuFn$30" role="2Oq$k0">
                        <ref role="3cqZAo" node="62DGzuFnzWB" resolve="it" />
                      </node>
                      <node concept="liA8E" id="62DGzuFnDWl" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SModel.load():void" resolve="load" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="62DGzuFnzWB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="62DGzuFnzWC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="62DGzuFo7eo" role="3cqZAp" />
        <node concept="3SKdUt" id="62DGzuFoc9S" role="3cqZAp">
          <node concept="3SKdUq" id="62DGzuFocYX" role="3SKWNk">
            <property role="3SKdUp" value="do not migrate test refactoring models" />
          </node>
        </node>
        <node concept="3clFbF" id="62DGzuFo9Ja" role="3cqZAp">
          <node concept="37vLTI" id="62DGzuFoaAq" role="3clFbG">
            <node concept="37vLTw" id="62DGzuFo9J8" role="37vLTJ">
              <ref role="3cqZAo" node="6qheojHeyfT" resolve="models" />
            </node>
            <node concept="2OqwBi" id="62DGzuFo4Yy" role="37vLTx">
              <node concept="37vLTw" id="62DGzuFo4c2" role="2Oq$k0">
                <ref role="3cqZAo" node="6qheojHeyfT" resolve="models" />
              </node>
              <node concept="66VNe" id="62DGzuFo6w0" role="2OqNvi">
                <node concept="2OqwBi" id="62DGzuFo84e" role="576Qk">
                  <node concept="37vLTw" id="62DGzuFo7Vb" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qheojHeyfT" resolve="models" />
                  </node>
                  <node concept="3zZkjj" id="62DGzuFo8QL" role="2OqNvi">
                    <node concept="1bVj0M" id="62DGzuFo8QN" role="23t8la">
                      <node concept="3clFbS" id="62DGzuFo8QO" role="1bW5cS">
                        <node concept="3cpWs8" id="62DGzuFooTA" role="3cqZAp">
                          <node concept="3cpWsn" id="62DGzuFooTB" role="3cpWs9">
                            <property role="TrG5h" value="mr" />
                            <node concept="3uibUv" id="62DGzuFooSi" role="1tU5fm">
                              <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                            </node>
                            <node concept="2OqwBi" id="62DGzuFooTC" role="33vP2m">
                              <node concept="2OqwBi" id="62DGzuFooTD" role="2Oq$k0">
                                <node concept="37vLTw" id="62DGzuFooTE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="62DGzuFo8QP" resolve="it" />
                                </node>
                                <node concept="liA8E" id="62DGzuFooTF" role="2OqNvi">
                                  <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                                </node>
                              </node>
                              <node concept="liA8E" id="62DGzuFooTG" role="2OqNvi">
                                <ref role="37wK5l" to="88zw:~SModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="62DGzuForsg" role="3cqZAp">
                          <node concept="22lmx$" id="62DGzuFotvG" role="3cqZAk">
                            <node concept="22lmx$" id="62DGzuFotaA" role="3uHU7B">
                              <node concept="22lmx$" id="62DGzuFooh0" role="3uHU7B">
                                <node concept="2OqwBi" id="62DGzuFojeH" role="3uHU7B">
                                  <node concept="37vLTw" id="62DGzuFooTH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="62DGzuFooTB" resolve="mr" />
                                  </node>
                                  <node concept="liA8E" id="62DGzuFok6Q" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="2L6k_Z" id="62DGzuFokrT" role="37wK5m">
                                      <property role="2L6k_S" value="343e2a8b-449f-45b3-9da8-1463945cb208(testRefactoring)" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="62DGzuFoqt7" role="3uHU7w">
                                  <node concept="37vLTw" id="62DGzuFoqt8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="62DGzuFooTB" resolve="mr" />
                                  </node>
                                  <node concept="liA8E" id="62DGzuFoqt9" role="2OqNvi">
                                    <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="2L6k_Z" id="62DGzuFoqta" role="37wK5m">
                                      <property role="2L6k_S" value="7bb4f305-7fb7-495b-be9c-5777cd6ab9d6(testRefactoringTargetLang)" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="62DGzuFotvH" role="3uHU7w">
                                <node concept="37vLTw" id="62DGzuFotvI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="62DGzuFooTB" resolve="mr" />
                                </node>
                                <node concept="liA8E" id="62DGzuFotvJ" role="2OqNvi">
                                  <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                  <node concept="2L6k_Z" id="62DGzuFotvK" role="37wK5m">
                                    <property role="2L6k_S" value="343e2a8b-449f-45b3-9da8-1463945cb208(testRefactoring)" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="62DGzuFotvL" role="3uHU7w">
                              <node concept="37vLTw" id="62DGzuFotvM" role="2Oq$k0">
                                <ref role="3cqZAo" node="62DGzuFooTB" resolve="mr" />
                              </node>
                              <node concept="liA8E" id="62DGzuFotvN" role="2OqNvi">
                                <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                                <node concept="2L6k_Z" id="62DGzuFotvO" role="37wK5m">
                                  <property role="2L6k_S" value="24106442-1955-413a-8c2b-cc6969a4b149(testRefactoring.sandbox)" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="62DGzuFo8QP" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="62DGzuFo8QQ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="62DGzuFo2MC" role="3cqZAp" />
        <node concept="3clFbF" id="mufF$U4d1t" role="3cqZAp">
          <node concept="2OqwBi" id="mufF$U4d1u" role="3clFbG">
            <node concept="37vLTw" id="hzgGjPr9mY" role="2Oq$k0">
              <ref role="3cqZAo" node="6qheojHeyfT" resolve="models" />
            </node>
            <node concept="2es0OD" id="mufF$U4d1$" role="2OqNvi">
              <node concept="1bVj0M" id="mufF$U4d1_" role="23t8la">
                <node concept="3clFbS" id="mufF$U4d1A" role="1bW5cS">
                  <node concept="3clFbF" id="67ALy4l6L8V" role="3cqZAp">
                    <node concept="2OqwBi" id="67ALy4l6LBx" role="3clFbG">
                      <node concept="37vLTw" id="67ALy4l6L8T" role="2Oq$k0">
                        <ref role="3cqZAo" node="mufF$U4d4G" resolve="model" />
                      </node>
                      <node concept="liA8E" id="67ALy4l6NaB" role="2OqNvi">
                        <ref role="37wK5l" to="d2v5:~PersistenceVersionAware.setPersistenceVersion(int):void" resolve="setPersistenceVersion" />
                        <node concept="3cmrfG" id="67ALy4l6NDh" role="37wK5m">
                          <property role="3cmrfH" value="9" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="mufF$U4d4t" role="3cqZAp">
                    <node concept="2OqwBi" id="mufF$U4d4u" role="3clFbG">
                      <node concept="1eOMI4" id="mufF$U4d4v" role="2Oq$k0">
                        <node concept="10QFUN" id="mufF$U4d4w" role="1eOMHV">
                          <node concept="3uibUv" id="67ALy4l6Ptj" role="10QFUM">
                            <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                          </node>
                          <node concept="37vLTw" id="67ALy4l6PM$" role="10QFUP">
                            <ref role="3cqZAo" node="mufF$U4d4G" resolve="model" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mufF$U4d4z" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~EditableSModel.setChanged(boolean):void" resolve="setChanged" />
                        <node concept="3clFbT" id="67ALy4l6QXT" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="67ALy4l6Xk5" role="3cqZAp">
                    <node concept="2OqwBi" id="67ALy4l6Xk6" role="3clFbG">
                      <node concept="1eOMI4" id="67ALy4l6Xk7" role="2Oq$k0">
                        <node concept="10QFUN" id="67ALy4l6Xk8" role="1eOMHV">
                          <node concept="3uibUv" id="67ALy4l6Xk9" role="10QFUM">
                            <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                          </node>
                          <node concept="37vLTw" id="67ALy4l6Xka" role="10QFUP">
                            <ref role="3cqZAo" node="mufF$U4d4G" resolve="model" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="67ALy4l6Xkb" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~EditableSModel.save():void" resolve="save" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="mufF$U4d4G" role="1bW2Oz">
                  <property role="TrG5h" value="model" />
                  <node concept="2jxLKc" id="mufF$U4d4H" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="22T75mlVFHc" role="3cqZAp">
          <node concept="3clFbT" id="22T75mlVH6P" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="25gV4Ls$QG9" role="1B3o_S" />
      <node concept="10P_77" id="22T75mlVE6o" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="25gV4Ls_iq$" role="1B3o_S" />
    <node concept="3uibUv" id="22T75mlVzpV" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
  </node>
  <node concept="312cEu" id="25gV4Ls$Nab">
    <property role="TrG5h" value="Migrations32" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="25gV4Ls$Nad" role="1B3o_S" />
    <node concept="3uibUv" id="3UfGsectmkD" role="EKbjA">
      <ref role="3uigEE" to="iiw6:~ApplicationComponent" resolve="ApplicationComponent" />
    </node>
    <node concept="312cEg" id="25gV4Ls$Naf" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMigrations" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="25gV4Ls$Nai" role="1tU5fm">
        <node concept="3uibUv" id="25gV4Ls$Nah" role="10Q1$1">
          <ref role="3uigEE" to="bco1:~ProjectMigration" resolve="ProjectMigration" />
        </node>
      </node>
      <node concept="2ShNRf" id="25gV4Ls$Nan" role="33vP2m">
        <node concept="3g6Rrh" id="25gV4Ls$Nam" role="2ShVmc">
          <node concept="2ShNRf" id="7ScOZyr2D9w" role="3g7hyw">
            <node concept="1pGfFk" id="7ScOZyr2MJU" role="2ShVmc">
              <ref role="37wK5l" node="6vz$DjulWQG" resolve="CleanSourcesMigration" />
            </node>
          </node>
          <node concept="2ShNRf" id="3UghWjE1_A3" role="3g7hyw">
            <node concept="1pGfFk" id="3UghWjE1Aji" role="2ShVmc">
              <ref role="37wK5l" node="3UghWjE0SUL" resolve="CleanObsoletePropertiesMigration" />
            </node>
          </node>
          <node concept="2ShNRf" id="513ZrA4vavY" role="3g7hyw">
            <node concept="1pGfFk" id="22T75mlVYy7" role="2ShVmc">
              <ref role="37wK5l" node="22T75mlUyND" resolve="ReSaveModulesMigration" />
            </node>
          </node>
          <node concept="2ShNRf" id="25gV4Ls$Upq" role="3g7hyw">
            <node concept="1pGfFk" id="22T75mlVYf2" role="2ShVmc">
              <ref role="37wK5l" node="22T75mlVzKi" resolve="Name2IdMigration" />
            </node>
          </node>
          <node concept="3uibUv" id="25gV4Ls$Naj" role="3g7fb8">
            <ref role="3uigEE" to="bco1:~ProjectMigration" resolve="ProjectMigration" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="25gV4Ls$Nao" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="25gV4Ls$ZOJ" role="jymVt" />
    <node concept="3clFb_" id="3UfGsectmzX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3UfGsectmzY" role="1B3o_S" />
      <node concept="3cqZAl" id="3UfGsectm$0" role="3clF45" />
      <node concept="3clFbS" id="3UfGsectm$2" role="3clF47">
        <node concept="1DcWWT" id="25gV4Ls$Nas" role="3cqZAp">
          <node concept="37vLTw" id="25gV4Ls$NaB" role="1DdaDG">
            <ref role="3cqZAo" node="25gV4Ls$Naf" resolve="myMigrations" />
          </node>
          <node concept="3cpWsn" id="25gV4Ls$Na$" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="pm" />
            <node concept="3uibUv" id="25gV4Ls$NaA" role="1tU5fm">
              <ref role="3uigEE" to="bco1:~ProjectMigration" resolve="ProjectMigration" />
            </node>
          </node>
          <node concept="3clFbS" id="25gV4Ls$Nau" role="2LFqv$">
            <node concept="3clFbF" id="25gV4Ls$Nav" role="3cqZAp">
              <node concept="2OqwBi" id="25gV4Ls$Naw" role="3clFbG">
                <node concept="2YIFZM" id="25gV4Ls$Pfo" role="2Oq$k0">
                  <ref role="1Pybhc" to="bco1:~ProjectMigrationsRegistry" resolve="ProjectMigrationsRegistry" />
                  <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.getInstance():jetbrains.mps.migration.global.ProjectMigrationsRegistry" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="25gV4Ls$Nay" role="2OqNvi">
                  <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.addProjectMigration(jetbrains.mps.migration.global.ProjectMigration):void" resolve="addProjectMigration" />
                  <node concept="37vLTw" id="25gV4Ls$Naz" role="37wK5m">
                    <ref role="3cqZAo" node="25gV4Ls$Na$" resolve="pm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3UfGsectnN7" role="jymVt" />
    <node concept="3clFb_" id="3UfGsectm$3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="disposeComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3UfGsectm$4" role="1B3o_S" />
      <node concept="3cqZAl" id="3UfGsectm$6" role="3clF45" />
      <node concept="3clFbS" id="3UfGsectm$8" role="3clF47">
        <node concept="1DcWWT" id="25gV4Ls$NaH" role="3cqZAp">
          <node concept="37vLTw" id="25gV4Ls$NaS" role="1DdaDG">
            <ref role="3cqZAo" node="25gV4Ls$Naf" resolve="myMigrations" />
          </node>
          <node concept="3cpWsn" id="25gV4Ls$NaP" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="pm" />
            <node concept="3uibUv" id="25gV4Ls$NaR" role="1tU5fm">
              <ref role="3uigEE" to="bco1:~ProjectMigration" resolve="ProjectMigration" />
            </node>
          </node>
          <node concept="3clFbS" id="25gV4Ls$NaJ" role="2LFqv$">
            <node concept="3clFbF" id="25gV4Ls$NaK" role="3cqZAp">
              <node concept="2OqwBi" id="25gV4Ls$NaL" role="3clFbG">
                <node concept="2YIFZM" id="25gV4Ls$Pfq" role="2Oq$k0">
                  <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.getInstance():jetbrains.mps.migration.global.ProjectMigrationsRegistry" resolve="getInstance" />
                  <ref role="1Pybhc" to="bco1:~ProjectMigrationsRegistry" resolve="ProjectMigrationsRegistry" />
                </node>
                <node concept="liA8E" id="25gV4Ls$NaN" role="2OqNvi">
                  <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.removeProjectMigration(jetbrains.mps.migration.global.ProjectMigration):void" resolve="removeProjectMigration" />
                  <node concept="37vLTw" id="25gV4Ls$NaO" role="37wK5m">
                    <ref role="3cqZAo" node="25gV4Ls$NaP" resolve="pm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3UfGsectnDx" role="jymVt" />
    <node concept="3clFb_" id="3UfGsectm$9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponentName" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3UfGsectm$a" role="1B3o_S" />
      <node concept="3uibUv" id="3UfGsectm$c" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="3UfGsectm$d" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NonNls" resolve="NonNls" />
      </node>
      <node concept="2AHcQZ" id="3UfGsectm$e" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3UfGsectm$h" role="3clF47">
        <node concept="3clFbF" id="3UfGsectm$j" role="3cqZAp">
          <node concept="Xl_RD" id="3UfGsectnsT" role="3clFbG">
            <property role="Xl_RC" value="Migrations32" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="513ZrA4uCHM">
    <property role="TrG5h" value="ReSaveModulesMigration" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="513ZrA4uCHO" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="513ZrA4uCHP" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="513ZrA4uCHQ" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.resaveModules" />
      </node>
      <node concept="3Tm1VV" id="513ZrA4uCHR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="513ZrA4uCHW" role="jymVt" />
    <node concept="3clFbW" id="22T75mlUyND" role="jymVt">
      <node concept="3cqZAl" id="22T75mlUyNF" role="3clF45" />
      <node concept="3Tm1VV" id="22T75mlUyNG" role="1B3o_S" />
      <node concept="3clFbS" id="22T75mlUyNH" role="3clF47">
        <node concept="XkiVB" id="22T75mlUyT5" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="10M0yZ" id="3UfGsecsm8c" role="37wK5m">
            <ref role="3cqZAo" node="513ZrA4uCHO" resolve="ID" />
            <ref role="1PxDUh" node="513ZrA4uCHM" resolve="ReSaveModulesMigration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="513ZrA4uCHX" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="513ZrA4uCHY" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="513ZrA4uCHZ" role="3clF47">
        <node concept="3cpWs6" id="513ZrA4uCI0" role="3cqZAp">
          <node concept="Xl_RD" id="513ZrA4uCI1" role="3cqZAk">
            <property role="Xl_RC" value="Re-save all modules" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="513ZrA4uCI2" role="1B3o_S" />
      <node concept="3uibUv" id="513ZrA4uCI3" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="3clFb_" id="513ZrA4uCJf" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="513ZrA4uCJg" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="513ZrA4uCJh" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="513ZrA4uCJi" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="513ZrA4uCJj" role="3clF47">
        <node concept="3cpWs8" id="513ZrA4uCJk" role="3cqZAp">
          <node concept="3cpWsn" id="513ZrA4uCJl" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="513ZrA4uCJm" role="1tU5fm">
              <node concept="3qUE_q" id="513ZrA4uCJn" role="A3Ik2">
                <node concept="3uibUv" id="513ZrA4uCJo" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="513ZrA4uCJp" role="33vP2m">
              <node concept="37vLTw" id="513ZrA4uCJq" role="2Oq$k0">
                <ref role="3cqZAo" node="513ZrA4uCJh" resolve="p" />
              </node>
              <node concept="liA8E" id="513ZrA4uCJr" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModulesWithGenerators():java.lang.Iterable" resolve="getModulesWithGenerators" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="513ZrA4uNlT" role="3cqZAp">
          <node concept="2GrKxI" id="513ZrA4uNlV" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="3clFbS" id="513ZrA4uNlX" role="2LFqv$">
            <node concept="3clFbJ" id="uUg8lPrh0S" role="3cqZAp">
              <node concept="3clFbS" id="uUg8lPrh0V" role="3clFbx">
                <node concept="3clFbF" id="513ZrA4uOeW" role="3cqZAp">
                  <node concept="2OqwBi" id="513ZrA4uOyi" role="3clFbG">
                    <node concept="2GrUjf" id="513ZrA4uPqV" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="513ZrA4uNlV" resolve="module" />
                    </node>
                    <node concept="liA8E" id="513ZrA4uPGs" role="2OqNvi">
                      <ref role="37wK5l" to="vsqj:~AbstractModule.setChanged():void" resolve="setChanged" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="uUg8lPrkku" role="3clFbw">
                <node concept="2OqwBi" id="uUg8lPrkkw" role="3fr31v">
                  <node concept="2OqwBi" id="uUg8lPrkkx" role="2Oq$k0">
                    <node concept="2GrUjf" id="uUg8lPrkky" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="513ZrA4uNlV" resolve="module" />
                    </node>
                    <node concept="liA8E" id="uUg8lPrkkz" role="2OqNvi">
                      <ref role="37wK5l" to="vsqj:~AbstractModule.getModuleDescriptor():jetbrains.mps.project.structure.modules.ModuleDescriptor" resolve="getModuleDescriptor" />
                    </node>
                  </node>
                  <node concept="liA8E" id="uUg8lPrkk$" role="2OqNvi">
                    <ref role="37wK5l" to="kqhl:~ModuleDescriptor.hasLanguageVersions():boolean" resolve="hasLanguageVersions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="513ZrA4v6_E" role="2GsD0m">
            <node concept="37vLTw" id="513ZrA4uOa_" role="2Oq$k0">
              <ref role="3cqZAo" node="513ZrA4uCJl" resolve="modules" />
            </node>
            <node concept="UnYns" id="513ZrA4v7EB" role="2OqNvi">
              <node concept="3uibUv" id="513ZrA4v7GD" role="UnYnz">
                <ref role="3uigEE" to="vsqj:~AbstractModule" resolve="AbstractModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="513ZrA4v8Kk" role="3cqZAp">
          <node concept="2OqwBi" id="513ZrA4v9F2" role="3clFbG">
            <node concept="2YIFZM" id="513ZrA4v9_i" role="2Oq$k0">
              <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
              <ref role="1Pybhc" to="cu2c:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="liA8E" id="513ZrA4va3o" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~MPSModuleRepository.saveAll():void" resolve="saveAll" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="22T75mlU5O6" role="3cqZAp">
          <node concept="3clFbT" id="22T75mlU64f" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="513ZrA4uCLP" role="1B3o_S" />
      <node concept="10P_77" id="3ccyi$xz8jp" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="513ZrA4uCLR" role="1B3o_S" />
    <node concept="3uibUv" id="3ccyi$xz3gW" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
  </node>
  <node concept="312cEu" id="6DIpRc42ABf">
    <property role="TrG5h" value="ProjectJavaVersionMigration" />
    <node concept="2tJIrI" id="2IzsICsUX7x" role="jymVt" />
    <node concept="Wx3nA" id="1FhfnjHgdNJ" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1FhfnjHgdNK" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="1FhfnjHgdNL" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.projectJavaVersionMigration" />
      </node>
      <node concept="3Tm1VV" id="1FhfnjHgdNM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1FhfnjHgdI7" role="jymVt" />
    <node concept="3clFbW" id="1FhfnjHga8E" role="jymVt">
      <node concept="3cqZAl" id="1FhfnjHga8G" role="3clF45" />
      <node concept="3Tm1VV" id="1FhfnjHga8H" role="1B3o_S" />
      <node concept="3clFbS" id="1FhfnjHga8I" role="3clF47">
        <node concept="XkiVB" id="1FhfnjHgaPt" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="37vLTw" id="1FhfnjHgolP" role="37wK5m">
            <ref role="3cqZAo" node="1FhfnjHgdNJ" resolve="ID" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6DIpRc42Fmf" role="jymVt" />
    <node concept="3clFb_" id="6DIpRc42Fmk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6DIpRc42Fml" role="1B3o_S" />
      <node concept="10P_77" id="6DIpRc42Fmn" role="3clF45" />
      <node concept="37vLTG" id="6DIpRc42Fmo" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6DIpRc42Fmp" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6DIpRc42Fmq" role="3clF47">
        <node concept="3cpWs8" id="6DIpRc43ad$" role="3cqZAp">
          <node concept="3cpWsn" id="6DIpRc43ad_" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="6DIpRc43adx" role="1tU5fm">
              <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="6DIpRc43adA" role="33vP2m">
              <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
              <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="6DIpRc43adB" role="37wK5m">
                <ref role="3cqZAo" node="6DIpRc42Fmo" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQ_OT3ljty" role="3cqZAp">
          <node concept="3clFbS" id="3fQ_OT3ljt_" role="3clFbx">
            <node concept="3cpWs6" id="3fQ_OT3lkNU" role="3cqZAp">
              <node concept="3clFbT" id="3fQ_OT3ll4H" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3fQ_OT3lkD2" role="3clFbw">
            <node concept="10Nm6u" id="3fQ_OT3lkNf" role="3uHU7w" />
            <node concept="37vLTw" id="3fQ_OT3ljIS" role="3uHU7B">
              <ref role="3cqZAo" node="6DIpRc42Fmo" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3fQ_OT3maPY" role="3cqZAp">
          <node concept="3cpWsn" id="3fQ_OT3maPZ" role="3cpWs9">
            <property role="TrG5h" value="compilerSettingsComponent" />
            <node concept="3uibUv" id="3fQ_OT3maPX" role="1tU5fm">
              <ref role="3uigEE" to="vobj:~CompilerSettingsComponent" resolve="CompilerSettingsComponent" />
            </node>
            <node concept="2YIFZM" id="3fQ_OT3maQ0" role="33vP2m">
              <ref role="37wK5l" to="vobj:~CompilerSettingsComponent.getInstance(com.intellij.openapi.project.Project):jetbrains.mps.ide.compiler.CompilerSettingsComponent" resolve="getInstance" />
              <ref role="1Pybhc" to="vobj:~CompilerSettingsComponent" resolve="CompilerSettingsComponent" />
              <node concept="37vLTw" id="3fQ_OT3maQ1" role="37wK5m">
                <ref role="3cqZAo" node="6DIpRc43ad_" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQ_OT3mbKA" role="3cqZAp">
          <node concept="3clFbS" id="3fQ_OT3mbKD" role="3clFbx">
            <node concept="3cpWs6" id="3fQ_OT3mpy1" role="3cqZAp">
              <node concept="3clFbT" id="3fQ_OT3mpy$" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3fQ_OT3mpuH" role="3clFbw">
            <node concept="10Nm6u" id="3fQ_OT3mpxc" role="3uHU7w" />
            <node concept="37vLTw" id="3fQ_OT3mpl1" role="3uHU7B">
              <ref role="3cqZAo" node="3fQ_OT3maPZ" resolve="compilerSettingsComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQ_OT3ms19" role="3cqZAp">
          <node concept="3clFbS" id="3fQ_OT3ms1c" role="3clFbx">
            <node concept="3cpWs8" id="1FhfnjHguBf" role="3cqZAp">
              <node concept="3cpWsn" id="1FhfnjHguBg" role="3cpWs9">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="1FhfnjHguBd" role="1tU5fm">
                  <ref role="3uigEE" to="vobj:~CompilerSettingsComponent$CompilerState" resolve="CompilerSettingsComponent.CompilerState" />
                </node>
                <node concept="2ShNRf" id="1FhfnjHguBh" role="33vP2m">
                  <node concept="1pGfFk" id="1FhfnjHguBi" role="2ShVmc">
                    <ref role="37wK5l" to="vobj:~CompilerSettingsComponent$CompilerState.&lt;init&gt;()" resolve="CompilerSettingsComponent.CompilerState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1FhfnjHguHv" role="3cqZAp">
              <node concept="2OqwBi" id="1FhfnjHguJv" role="3clFbG">
                <node concept="37vLTw" id="1FhfnjHguHt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1FhfnjHguBg" resolve="state" />
                </node>
                <node concept="liA8E" id="1FhfnjHguRS" role="2OqNvi">
                  <ref role="37wK5l" to="vobj:~CompilerSettingsComponent$CompilerState.setTargetVersion(java.lang.String):void" resolve="setTargetVersion" />
                  <node concept="2OqwBi" id="2IzsICsUEiP" role="37wK5m">
                    <node concept="Rm8GO" id="qlHM05irUD" role="2Oq$k0">
                      <ref role="Rm8GQ" to="i119:~JavaCompilerOptionsComponent$JavaVersion.VERSION_1_6" resolve="VERSION_1_6" />
                      <ref role="1Px2BO" to="i119:~JavaCompilerOptionsComponent$JavaVersion" resolve="JavaCompilerOptionsComponent.JavaVersion" />
                    </node>
                    <node concept="liA8E" id="2IzsICsUEOJ" role="2OqNvi">
                      <ref role="37wK5l" to="i119:~JavaCompilerOptionsComponent$JavaVersion.getCompilerVersion():java.lang.String" resolve="getCompilerVersion" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6DIpRc43az0" role="3cqZAp">
              <node concept="2OqwBi" id="6DIpRc43aLZ" role="3clFbG">
                <node concept="37vLTw" id="3fQ_OT3maQ2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3fQ_OT3maPZ" resolve="compilerSettingsComponent" />
                </node>
                <node concept="liA8E" id="1FhfnjHgoOU" role="2OqNvi">
                  <ref role="37wK5l" to="vobj:~CompilerSettingsComponent.loadState(jetbrains.mps.ide.compiler.CompilerSettingsComponent$CompilerState):void" resolve="loadState" />
                  <node concept="37vLTw" id="1FhfnjHguBj" role="37wK5m">
                    <ref role="3cqZAo" node="1FhfnjHguBg" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3fQ_OT3muYJ" role="3clFbw">
            <node concept="2OqwBi" id="3fQ_OT3mr7_" role="3uHU7B">
              <node concept="2OqwBi" id="3fQ_OT3mqgd" role="2Oq$k0">
                <node concept="37vLTw" id="3fQ_OT3mq7z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3fQ_OT3maPZ" resolve="compilerSettingsComponent" />
                </node>
                <node concept="liA8E" id="3fQ_OT3mr6j" role="2OqNvi">
                  <ref role="37wK5l" to="vobj:~CompilerSettingsComponent.getState():jetbrains.mps.ide.compiler.CompilerSettingsComponent$CompilerState" resolve="getState" />
                </node>
              </node>
              <node concept="liA8E" id="3fQ_OT3mrlG" role="2OqNvi">
                <ref role="37wK5l" to="vobj:~CompilerSettingsComponent$CompilerState.getTargetVersion():java.lang.String" resolve="getTargetVersion" />
              </node>
            </node>
            <node concept="10Nm6u" id="3fQ_OT3msA_" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="1FhfnjHgPU8" role="3cqZAp">
          <node concept="3clFbT" id="1FhfnjHgQ0N" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6DIpRc42Fmt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6DIpRc42Fmu" role="1B3o_S" />
      <node concept="3uibUv" id="6DIpRc42Fmw" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="6DIpRc42Fmz" role="3clF47">
        <node concept="3clFbF" id="6DIpRc42H4H" role="3cqZAp">
          <node concept="Xl_RD" id="6DIpRc42H4G" role="3clFbG">
            <property role="Xl_RC" value="Set project java version to 1.6" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6DIpRc42ABg" role="1B3o_S" />
    <node concept="3uibUv" id="6DIpRc42Fcz" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
    <node concept="3clFb_" id="1FhfnjHg7Tc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="applyToCreatedProject" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="1FhfnjHg7Td" role="1B3o_S" />
      <node concept="3cqZAl" id="1FhfnjHg7Tf" role="3clF45" />
      <node concept="37vLTG" id="1FhfnjHg7Tg" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1FhfnjHg7Th" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1FhfnjHg7Ti" role="3clF47">
        <node concept="3clFbF" id="1FhfnjHg7Tm" role="3cqZAp">
          <node concept="3nyPlj" id="1FhfnjHg7Tl" role="3clFbG">
            <ref role="37wK5l" to="bco1:~BaseProjectMigration.applyToCreatedProject(jetbrains.mps.project.Project):void" resolve="applyToCreatedProject" />
            <node concept="37vLTw" id="1FhfnjHg7Tk" role="37wK5m">
              <ref role="3cqZAo" node="1FhfnjHg7Tg" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1FhfnjHg7Tj" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2IzsICsUXek" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="disposeComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2IzsICsUXel" role="1B3o_S" />
      <node concept="3cqZAl" id="2IzsICsUXen" role="3clF45" />
      <node concept="3clFbS" id="2IzsICsUXer" role="3clF47">
        <node concept="3clFbF" id="2IzsICsUYTn" role="3cqZAp">
          <node concept="2OqwBi" id="2IzsICsUYTo" role="3clFbG">
            <node concept="2YIFZM" id="2IzsICsUYTp" role="2Oq$k0">
              <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.getInstance():jetbrains.mps.migration.global.ProjectMigrationsRegistry" resolve="getInstance" />
              <ref role="1Pybhc" to="bco1:~ProjectMigrationsRegistry" resolve="ProjectMigrationsRegistry" />
            </node>
            <node concept="liA8E" id="2IzsICsUYTq" role="2OqNvi">
              <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.removeProjectMigration(jetbrains.mps.migration.global.ProjectMigration):void" resolve="removeProjectMigration" />
              <node concept="Xjq3P" id="2IzsICsUYTr" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2IzsICsUXes" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2IzsICsUXet" role="1B3o_S" />
      <node concept="3cqZAl" id="2IzsICsUXev" role="3clF45" />
      <node concept="3clFbS" id="2IzsICsUXez" role="3clF47">
        <node concept="3clFbF" id="2IzsICsUYyd" role="3cqZAp">
          <node concept="2OqwBi" id="2IzsICsUYz0" role="3clFbG">
            <node concept="2YIFZM" id="2IzsICsUYyu" role="2Oq$k0">
              <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.getInstance():jetbrains.mps.migration.global.ProjectMigrationsRegistry" resolve="getInstance" />
              <ref role="1Pybhc" to="bco1:~ProjectMigrationsRegistry" resolve="ProjectMigrationsRegistry" />
            </node>
            <node concept="liA8E" id="2IzsICsUYDs" role="2OqNvi">
              <ref role="37wK5l" to="bco1:~ProjectMigrationsRegistry.addProjectMigration(jetbrains.mps.migration.global.ProjectMigration):void" resolve="addProjectMigration" />
              <node concept="Xjq3P" id="2IzsICsUYEw" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2IzsICsUXe$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getComponentName" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="2IzsICsUXe_" role="1B3o_S" />
      <node concept="3uibUv" id="2IzsICsUXeB" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="2IzsICsUXeC" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NonNls" resolve="NonNls" />
      </node>
      <node concept="2AHcQZ" id="2IzsICsUXeD" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2IzsICsUXeI" role="3clF47">
        <node concept="3clFbF" id="2IzsICsUYc$" role="3cqZAp">
          <node concept="Xl_RD" id="2IzsICsUYcz" role="3clFbG">
            <property role="Xl_RC" value="Java Version Migration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="2IzsICsUX1b" role="EKbjA">
      <ref role="3uigEE" to="iiw6:~ApplicationComponent" resolve="ApplicationComponent" />
    </node>
  </node>
  <node concept="312cEu" id="3UghWjE0SUy">
    <property role="TrG5h" value="CleanObsoletePropertiesMigration" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="Wx3nA" id="3UghWjE0SUB" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3UghWjE0SUC" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="3UghWjE0SUD" role="33vP2m">
        <property role="Xl_RC" value="jetbrains.mps.obsoletePropsCleanup" />
      </node>
      <node concept="3Tm1VV" id="3UghWjE0SUE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3UghWjE0SUF" role="jymVt" />
    <node concept="3clFbW" id="3UghWjE0SUL" role="jymVt">
      <node concept="3cqZAl" id="3UghWjE0SUM" role="3clF45" />
      <node concept="3Tm1VV" id="3UghWjE0SUN" role="1B3o_S" />
      <node concept="3clFbS" id="3UghWjE0SUO" role="3clF47">
        <node concept="XkiVB" id="3UghWjE0SUP" role="3cqZAp">
          <ref role="37wK5l" to="bco1:~BaseProjectMigration.&lt;init&gt;(java.lang.String)" resolve="BaseProjectMigration" />
          <node concept="10M0yZ" id="3UghWjE0SUQ" role="37wK5m">
            <ref role="3cqZAo" node="3UghWjE0SUB" resolve="ID" />
            <ref role="1PxDUh" node="3UghWjE0SUy" resolve="CleanObsoletePropertiesMigration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3UghWjE0SUR" role="jymVt" />
    <node concept="3clFb_" id="3UghWjE0SUS" role="jymVt">
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="3UghWjE0SUT" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="3UghWjE0SUU" role="3clF47">
        <node concept="3cpWs6" id="3UghWjE0SUV" role="3cqZAp">
          <node concept="Xl_RD" id="3UghWjE0SV2" role="3cqZAk">
            <property role="Xl_RC" value="Cleanup obsolete editor properties" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3UghWjE0SV3" role="1B3o_S" />
      <node concept="3uibUv" id="3UghWjE0SV4" role="3clF45">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="3UghWjE0SV5" role="jymVt" />
    <node concept="3clFb_" id="3UghWjE0SV6" role="jymVt">
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="3UghWjE0SV7" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="3UghWjE0SV8" role="3clF46">
        <property role="TrG5h" value="p" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3UghWjE0SV9" role="1tU5fm">
          <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="3UghWjE0SVa" role="3clF47">
        <node concept="3cpWs8" id="3UghWjE18_b" role="3cqZAp">
          <node concept="3cpWsn" id="3UghWjE18_c" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="3UghWjE18_d" role="1tU5fm">
              <node concept="3qUE_q" id="3UghWjE18_e" role="A3Ik2">
                <node concept="3uibUv" id="3UghWjE18_f" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3UghWjE18_g" role="33vP2m">
              <node concept="37vLTw" id="3UghWjE18_h" role="2Oq$k0">
                <ref role="3cqZAo" node="3UghWjE0SV8" resolve="p" />
              </node>
              <node concept="liA8E" id="3UghWjE18_i" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModulesWithGenerators():java.lang.Iterable" resolve="getModulesWithGenerators" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3UghWjE1nSR" role="3cqZAp" />
        <node concept="3cpWs8" id="3UghWjE1pkI" role="3cqZAp">
          <node concept="3cpWsn" id="3UghWjE1pkJ" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="A3Dl8" id="3UghWjE1piV" role="1tU5fm">
              <node concept="3Tqbb2" id="3UghWjE1piY" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="3UghWjE1pkK" role="33vP2m">
              <node concept="2OqwBi" id="3UghWjE1pkL" role="2Oq$k0">
                <node concept="2OqwBi" id="3UghWjE1pkM" role="2Oq$k0">
                  <node concept="2OqwBi" id="3UghWjE1pkN" role="2Oq$k0">
                    <node concept="37vLTw" id="3UghWjE1pkO" role="2Oq$k0">
                      <ref role="3cqZAo" node="3UghWjE18_c" resolve="modules" />
                    </node>
                    <node concept="3goQfb" id="3UghWjE1pkP" role="2OqNvi">
                      <node concept="1bVj0M" id="3UghWjE1pkQ" role="23t8la">
                        <node concept="3clFbS" id="3UghWjE1pkR" role="1bW5cS">
                          <node concept="3clFbF" id="3UghWjE1pkS" role="3cqZAp">
                            <node concept="2OqwBi" id="3UghWjE1pkT" role="3clFbG">
                              <node concept="37vLTw" id="3UghWjE1pkU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3UghWjE1pkW" resolve="it" />
                              </node>
                              <node concept="liA8E" id="3UghWjE1pkV" role="2OqNvi">
                                <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3UghWjE1pkW" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3UghWjE1pkX" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="UnYns" id="3UghWjE1pkY" role="2OqNvi">
                    <node concept="3uibUv" id="3UghWjE1pkZ" role="UnYnz">
                      <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="3UghWjE1pl0" role="2OqNvi">
                  <node concept="1bVj0M" id="3UghWjE1pl1" role="23t8la">
                    <node concept="3clFbS" id="3UghWjE1pl2" role="1bW5cS">
                      <node concept="3clFbF" id="3UghWjE1pl3" role="3cqZAp">
                        <node concept="3fqX7Q" id="3UghWjE1pl4" role="3clFbG">
                          <node concept="2OqwBi" id="3UghWjE1pl5" role="3fr31v">
                            <node concept="37vLTw" id="3UghWjE1pl6" role="2Oq$k0">
                              <ref role="3cqZAo" node="3UghWjE1pl8" resolve="it" />
                            </node>
                            <node concept="liA8E" id="3UghWjE1pl7" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SModel.isReadOnly():boolean" resolve="isReadOnly" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="3UghWjE1pl8" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="3UghWjE1pl9" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3goQfb" id="3UghWjE1pla" role="2OqNvi">
                <node concept="1bVj0M" id="3UghWjE1plb" role="23t8la">
                  <node concept="3clFbS" id="3UghWjE1plc" role="1bW5cS">
                    <node concept="3clFbF" id="3UghWjE1pld" role="3cqZAp">
                      <node concept="2OqwBi" id="3UghWjE1ple" role="3clFbG">
                        <node concept="1eOMI4" id="3UghWjE1plf" role="2Oq$k0">
                          <node concept="10QFUN" id="3UghWjE1plg" role="1eOMHV">
                            <node concept="37vLTw" id="3UghWjE1plh" role="10QFUP">
                              <ref role="3cqZAo" node="3UghWjE1plk" resolve="it" />
                            </node>
                            <node concept="H_c77" id="3UghWjE1pli" role="10QFUM" />
                          </node>
                        </node>
                        <node concept="2SmgA7" id="3UghWjE1plj" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3UghWjE1plk" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3UghWjE1pll" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3UghWjE1q3W" role="3cqZAp" />
        <node concept="3clFbF" id="3UghWjE1o9M" role="3cqZAp">
          <node concept="2OqwBi" id="3UghWjE1qFt" role="3clFbG">
            <node concept="37vLTw" id="3UghWjE1plm" role="2Oq$k0">
              <ref role="3cqZAo" node="3UghWjE1pkJ" resolve="nodes" />
            </node>
            <node concept="2es0OD" id="3UghWjE1rgA" role="2OqNvi">
              <node concept="1bVj0M" id="3UghWjE1rgC" role="23t8la">
                <node concept="3clFbS" id="3UghWjE1rgD" role="1bW5cS">
                  <node concept="3cpWs8" id="3UghWjE1vUX" role="3cqZAp">
                    <node concept="3cpWsn" id="3UghWjE1vUY" role="3cpWs9">
                      <property role="TrG5h" value="n" />
                      <node concept="3uibUv" id="3UghWjE1vTd" role="1tU5fm">
                        <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                      </node>
                      <node concept="37vLTw" id="3UghWjE1wcC" role="33vP2m">
                        <ref role="3cqZAo" node="3UghWjE1rgE" resolve="it" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3UghWjE1vm3" role="3cqZAp">
                    <node concept="3clFbS" id="3UghWjE1vm6" role="3clFbx">
                      <node concept="3clFbF" id="3UghWjE1vEI" role="3cqZAp">
                        <node concept="2OqwBi" id="3UghWjE1wmm" role="3clFbG">
                          <node concept="37vLTw" id="3UghWjE1wk0" role="2Oq$k0">
                            <ref role="3cqZAo" node="3UghWjE1vUY" resolve="n" />
                          </node>
                          <node concept="liA8E" id="3UghWjE1wwx" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.setProperty(java.lang.String,java.lang.String):void" resolve="setProperty" />
                            <node concept="Xl_RD" id="3UghWjE1w$U" role="37wK5m">
                              <property role="Xl_RC" value="right_transform_hint" />
                            </node>
                            <node concept="10Nm6u" id="3UghWjE1xji" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3UghWjE1rYf" role="3clFbw">
                      <node concept="37vLTw" id="3UghWjE1vV2" role="2Oq$k0">
                        <ref role="3cqZAo" node="3UghWjE1vUY" resolve="n" />
                      </node>
                      <node concept="liA8E" id="3UghWjE1tLr" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.hasProperty(java.lang.String):boolean" resolve="hasProperty" />
                        <node concept="Xl_RD" id="3UghWjE1u74" role="37wK5m">
                          <property role="Xl_RC" value="right_transform_hint" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3UghWjE1xwW" role="3cqZAp">
                    <node concept="3clFbS" id="3UghWjE1xwX" role="3clFbx">
                      <node concept="3clFbF" id="3UghWjE1xwY" role="3cqZAp">
                        <node concept="2OqwBi" id="3UghWjE1xwZ" role="3clFbG">
                          <node concept="37vLTw" id="3UghWjE1xx0" role="2Oq$k0">
                            <ref role="3cqZAo" node="3UghWjE1vUY" resolve="n" />
                          </node>
                          <node concept="liA8E" id="3UghWjE1xx1" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.setProperty(java.lang.String,java.lang.String):void" resolve="setProperty" />
                            <node concept="Xl_RD" id="3UghWjE1xx2" role="37wK5m">
                              <property role="Xl_RC" value="left_transform_hint" />
                            </node>
                            <node concept="10Nm6u" id="3UghWjE1xx3" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3UghWjE1xx4" role="3clFbw">
                      <node concept="37vLTw" id="3UghWjE1xx5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3UghWjE1vUY" resolve="n" />
                      </node>
                      <node concept="liA8E" id="3UghWjE1xx6" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.hasProperty(java.lang.String):boolean" resolve="hasProperty" />
                        <node concept="Xl_RD" id="3UghWjE1xx7" role="37wK5m">
                          <property role="Xl_RC" value="left_transform_hint" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3UghWjE1rgE" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3UghWjE1rgF" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3UghWjE1yLk" role="3cqZAp" />
        <node concept="3cpWs6" id="3UghWjE1zlb" role="3cqZAp">
          <node concept="3clFbT" id="3UghWjE1$j6" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3UghWjE0SVh" role="1B3o_S" />
      <node concept="10P_77" id="3UghWjE0SVi" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="3UghWjE0SYn" role="1B3o_S" />
    <node concept="3uibUv" id="3UghWjE0SYo" role="1zkMxy">
      <ref role="3uigEE" to="bco1:~BaseProjectMigration" resolve="BaseProjectMigration" />
    </node>
    <node concept="3uibUv" id="3UghWjE0SYq" role="EKbjA">
      <ref role="3uigEE" to="bco1:~CleanupProjectMigration" resolve="CleanupProjectMigration" />
    </node>
  </node>
</model>

