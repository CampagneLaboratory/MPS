<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="1t7x" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" />
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="bfxj" ref="r:5744ed46-c83f-47cd-94ce-f24d1f92d6a1(jetbrains.mps.vcs.diff)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="e4tq" ref="r:d1664c60-f6de-4b25-a874-54417df516ea(jetbrains.mps.ide.vcs.modelmetadata.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="9a8" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(jetbrains.mps.nodeEditor@java_stub)" />
    <import index="rhwp" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.descriptor(jetbrains.mps.smodel.descriptor@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(jetbrains.mps.util@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(jetbrains.mps.project@java_stub)" />
    <import index="cpzd" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.inspector(jetbrains.mps.nodeEditor.inspector@java_stub)" />
    <import index="df0" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.leftHighlighter(jetbrains.mps.nodeEditor.leftHighlighter@java_stub)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(com.intellij.openapi.ui@java_stub)" />
    <import index="pvwh" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.workbench.action(jetbrains.mps.workbench.action@java_stub)" />
    <import index="nx1" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.actionSystem(com.intellij.openapi.actionSystem@java_stub)" />
    <import index="xa8l" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.diff(com.intellij.openapi.diff@java_stub)" />
    <import index="ayyu" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ui(com.intellij.ui@java_stub)" />
    <import index="b2mh" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(com.intellij.openapi.project@java_stub)" />
    <import index="8d8y" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.util(com.intellij.openapi.util@java_stub)" />
    <import index="82u" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.wm(com.intellij.openapi.wm@java_stub)" />
    <import index="bcbw" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.diff.ex(com.intellij.openapi.diff.ex@java_stub)" />
    <import index="kqh9" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ui.treeStructure(com.intellij.ui.treeStructure@java_stub)" />
    <import index="pt5l" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(jetbrains.mps.ide.project@java_stub)" />
    <import index="6et3" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.diff.impl.util(com.intellij.openapi.diff.impl.util@java_stub)" />
    <import index="ai1m" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.icons(jetbrains.mps.ide.icons@java_stub)" />
    <import index="kqhl" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(jetbrains.mps.project.structure.modules@java_stub)" />
    <import index="as9o" ref="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="51te" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.model(jetbrains.mps.extapi.model@java_stub)" />
    <import index="8q6x" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.event(java.awt.event@java_stub)" />
    <import index="oj08" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ide.util(com.intellij.ide.util@java_stub)" />
    <import index="tpy3" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.tempmodel(jetbrains.mps.smodel.tempmodel@java_stub)" />
    <import index="bmv6" ref="r:e9c4e128-4808-4224-a92b-dbeed02eb860(jetbrains.mps.vcs.diff.merge)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="cx9y" ref="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" implicit="true" />
    <import index="pxpg" ref="r:5a550369-d6d9-4c89-a89b-1bb748dc20b3(jetbrains.mps.baseLanguage.checkedDots.structure)" implicit="true" />
    <import index="qff7" ref="r:2ba2e307-a81d-4a21-9e0b-de3624e2fb83(jetbrains.mps.lang.access.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="4357968816427488499" name="jetbrains.mps.lang.smodel.structure.CheckedModuleReference" flags="nn" index="2L6k_Z">
        <property id="4357968816427488500" name="moduleId" index="2L6k_S" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1239531918181" name="jetbrains.mps.baseLanguage.tuples.structure.NamedTupleType" flags="in" index="2pR195" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="6329021646629175143" name="jetbrains.mps.baseLanguage.structure.StatementCommentPart" flags="nn" index="3SKWN0">
        <child id="6329021646629175144" name="commentedStatement" index="3SKWNf" />
      </concept>
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="312cEu" id="7$NO6fvW1Rs">
    <property role="TrG5h" value="RevertRootsAction" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="3AEFUta0GT5" role="jymVt">
      <property role="TrG5h" value="myRevertTitle" />
      <node concept="17QB3L" id="3AEFUta0HpU" role="1tU5fm" />
      <node concept="3Tm6S6" id="3AEFUta0GT6" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7$NO6fvW1R_" role="jymVt">
      <node concept="3cqZAl" id="7$NO6fvW1RA" role="3clF45" />
      <node concept="3Tm1VV" id="7$NO6fvW1RB" role="1B3o_S" />
      <node concept="3clFbS" id="7$NO6fvW1RC" role="3clF47">
        <node concept="XkiVB" id="7$NO6fvW1RD" role="3cqZAp">
          <ref role="37wK5l" to="pvwh:~BaseAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="BaseAction" />
          <node concept="3cpWs3" id="3AEFUta0HWq" role="37wK5m">
            <node concept="Xl_RD" id="7$NO6fvW1RE" role="3uHU7B">
              <property role="Xl_RC" value="Revert " />
            </node>
            <node concept="37vLTw" id="3AEFUta0I1v" role="3uHU7w">
              <ref role="3cqZAo" node="3AEFUta0Hqj" resolve="revertTitle" />
            </node>
          </node>
          <node concept="10Nm6u" id="7$NO6fvW1RF" role="37wK5m" />
          <node concept="2YIFZM" id="7$NO6fvW1RG" role="37wK5m">
            <ref role="1Pybhc" to="8d8y:~IconLoader" resolve="IconLoader" />
            <ref role="37wK5l" to="8d8y:~IconLoader.getIcon(java.lang.String):javax.swing.Icon" resolve="getIcon" />
            <node concept="Xl_RD" id="7$NO6fvW1RH" role="37wK5m">
              <property role="Xl_RC" value="/actions/rollback.png" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3AEFUta0IoD" role="3cqZAp">
          <node concept="37vLTI" id="3AEFUta0J17" role="3clFbG">
            <node concept="37vLTw" id="3AEFUta0Ji1" role="37vLTx">
              <ref role="3cqZAo" node="3AEFUta0Hqj" resolve="revertTitle" />
            </node>
            <node concept="37vLTw" id="3AEFUta0IoC" role="37vLTJ">
              <ref role="3cqZAo" node="3AEFUta0GT5" resolve="myRevertTitle" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3AEFUta0Hqj" role="3clF46">
        <property role="TrG5h" value="revertTitle" />
        <node concept="17QB3L" id="3AEFUta0Hx7" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="7$NO6fvW1RP" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doExecute" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="7$NO6fvW1RR" role="3clF45" />
      <node concept="3Tmbuc" id="7$NO6fvW1RQ" role="1B3o_S" />
      <node concept="3clFbS" id="7$NO6fvW1RY" role="3clF47">
        <node concept="3clFbF" id="hBYHs5jfaY" role="3cqZAp">
          <node concept="2YIFZM" id="hBYHs5jfwM" role="3clFbG">
            <ref role="37wK5l" to="btf5:hBYHs5iiMO" resolve="rollbackChanges" />
            <ref role="1Pybhc" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            <node concept="1rXfSq" id="3AEFUt9Zeq2" role="37wK5m">
              <ref role="37wK5l" node="3AEFUt9Z4g1" resolve="getChanges" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hBYHs5jgwa" role="3cqZAp">
          <node concept="1rXfSq" id="hBYHs5jgw9" role="3clFbG">
            <ref role="37wK5l" node="7$NO6fvW1U9" resolve="after" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7$NO6fvW1RS" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="7$NO6fvW1RT" role="1tU5fm">
          <ref role="3uigEE" to="nx1:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="37vLTG" id="7$NO6fvW1RU" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="7$NO6fvW1RV" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="6sqsxb$DoVN" role="11_B2D" />
          <node concept="3uibUv" id="7$NO6fvW1RX" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_Uq7K" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7$NO6fvW1Sx" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="doUpdate" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="7$NO6fvW1SF" role="3clF47">
        <node concept="3clFbF" id="7$NO6fvW1SG" role="3cqZAp">
          <node concept="3nyPlj" id="7$NO6fvW1SH" role="3clFbG">
            <ref role="37wK5l" to="pvwh:~BaseAction.doUpdate(com.intellij.openapi.actionSystem.AnActionEvent,java.util.Map):void" resolve="doUpdate" />
            <node concept="37vLTw" id="2BHiRxgmjzE" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW1S$" resolve="event" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm8nb" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW1SA" resolve="map" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7$NO6fvW1ST" role="3cqZAp">
          <node concept="3cpWsn" id="7$NO6fvW1SU" role="3cpWs9">
            <property role="TrG5h" value="enabled" />
            <node concept="10P_77" id="7$NO6fvW1SV" role="1tU5fm" />
            <node concept="2OqwBi" id="3AEFUta6r$T" role="33vP2m">
              <node concept="3GX2aA" id="3AEFUta6r$U" role="2OqNvi" />
              <node concept="1rXfSq" id="3AEFUta6r$V" role="2Oq$k0">
                <ref role="37wK5l" node="3AEFUt9Z4g1" resolve="getChanges" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$NO6fvW1T7" role="3cqZAp">
          <node concept="2OqwBi" id="7$NO6fvW1T8" role="3clFbG">
            <node concept="2OqwBi" id="7$NO6fvW1T9" role="2Oq$k0">
              <node concept="liA8E" id="7$NO6fvW1Tb" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm8Mt" role="2Oq$k0">
                <ref role="3cqZAo" node="7$NO6fvW1S$" resolve="event" />
              </node>
            </node>
            <node concept="liA8E" id="7$NO6fvW1Tc" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~Presentation.setEnabled(boolean):void" resolve="setEnabled" />
              <node concept="37vLTw" id="3GM_nagTtjC" role="37wK5m">
                <ref role="3cqZAo" node="7$NO6fvW1SU" resolve="enabled" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$NO6fvW1Te" role="3cqZAp">
          <node concept="2OqwBi" id="7$NO6fvW1Tf" role="3clFbG">
            <node concept="liA8E" id="7$NO6fvW1Tj" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~Presentation.setVisible(boolean):void" resolve="setVisible" />
              <node concept="37vLTw" id="3GM_nagTrhf" role="37wK5m">
                <ref role="3cqZAo" node="7$NO6fvW1SU" resolve="enabled" />
              </node>
            </node>
            <node concept="2OqwBi" id="7$NO6fvW1Tg" role="2Oq$k0">
              <node concept="liA8E" id="7$NO6fvW1Ti" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm8Xo" role="2Oq$k0">
                <ref role="3cqZAo" node="7$NO6fvW1S$" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7$NO6fvW1U0" role="3cqZAp">
          <node concept="2OqwBi" id="7$NO6fvW1U1" role="3clFbG">
            <node concept="liA8E" id="7$NO6fvW1U5" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~Presentation.setText(java.lang.String):void" resolve="setText" />
              <node concept="3cpWs3" id="7$NO6fvW1U6" role="37wK5m">
                <node concept="Xl_RD" id="7$NO6fvW1U8" role="3uHU7B">
                  <property role="Xl_RC" value="Revert " />
                </node>
                <node concept="1rXfSq" id="3AEFUt9Zc$o" role="3uHU7w">
                  <ref role="37wK5l" node="3AEFUt9Z7WX" resolve="getRevertTitle" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7$NO6fvW1U2" role="2Oq$k0">
              <node concept="liA8E" id="7$NO6fvW1U4" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm5P_" role="2Oq$k0">
                <ref role="3cqZAo" node="7$NO6fvW1S$" resolve="event" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7$NO6fvW1SE" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7$NO6fvW1S$" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="7$NO6fvW1S_" role="1tU5fm">
          <ref role="3uigEE" to="nx1:~AnActionEvent" resolve="AnActionEvent" />
        </node>
      </node>
      <node concept="3cqZAl" id="7$NO6fvW1Sz" role="3clF45" />
      <node concept="3Tmbuc" id="7$NO6fvW1Sy" role="1B3o_S" />
      <node concept="37vLTG" id="7$NO6fvW1SA" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3uibUv" id="7$NO6fvW1SB" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
          <node concept="17QB3L" id="6sqsxb$DoVM" role="11_B2D" />
          <node concept="3uibUv" id="7$NO6fvW1SD" role="11_B2D">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7$NO6fvW1U9" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="after" />
      <node concept="3clFbS" id="7$NO6fvW1Uc" role="3clF47" />
      <node concept="3cqZAl" id="7$NO6fvW1Ua" role="3clF45" />
      <node concept="3Tmbuc" id="7$NO6fvW1Ub" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="3AEFUt9Z4g1" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getChanges" />
      <node concept="A3Dl8" id="3AEFUt9ZdB8" role="3clF45">
        <node concept="3uibUv" id="3AEFUt9Ze4z" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3AEFUt9Z5pp" role="1B3o_S" />
      <node concept="3clFbS" id="3AEFUt9Z4g4" role="3clF47" />
    </node>
    <node concept="3clFb_" id="3AEFUt9Z7WX" role="jymVt">
      <property role="TrG5h" value="getRevertTitle" />
      <node concept="17QB3L" id="3AEFUt9Z8UQ" role="3clF45" />
      <node concept="3Tmbuc" id="3AEFUt9Z8tK" role="1B3o_S" />
      <node concept="3clFbS" id="3AEFUt9Z7X0" role="3clF47">
        <node concept="3clFbF" id="3AEFUt9Zc3x" role="3cqZAp">
          <node concept="37vLTw" id="3AEFUta0KnH" role="3clFbG">
            <ref role="3cqZAo" node="3AEFUta0GT5" resolve="myRevertTitle" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7$NO6fvW1Rt" role="1B3o_S" />
    <node concept="3uibUv" id="7$NO6fvW1Ui" role="1zkMxy">
      <ref role="3uigEE" to="pvwh:~BaseAction" resolve="BaseAction" />
    </node>
    <node concept="3uibUv" id="3m6vHQ0jo8Q" role="EKbjA">
      <ref role="3uigEE" to="b2mh:~DumbAware" resolve="DumbAware" />
    </node>
  </node>
  <node concept="312cEu" id="7$NO6fvW29l">
    <property role="TrG5h" value="DiffButtonsPainter" />
    <node concept="312cEg" id="7DvDtqayH4f" role="jymVt">
      <property role="TrG5h" value="myDiffPane" />
      <node concept="3uibUv" id="7DvDtqaz7ck" role="1tU5fm">
        <ref role="3uigEE" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
      </node>
      <node concept="3Tm6S6" id="7DvDtqayH4h" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="7DvDtqayTlO" role="jymVt">
      <node concept="37vLTG" id="7DvDtqayTlP" role="3clF46">
        <property role="TrG5h" value="pane" />
        <node concept="3uibUv" id="7DvDtqayYiV" role="1tU5fm">
          <ref role="3uigEE" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvDtqayTlR" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="7DvDtqayTlS" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7DvDtqayTlT" role="1B3o_S" />
      <node concept="3cqZAl" id="7DvDtqayTlU" role="3clF45" />
      <node concept="3clFbS" id="7DvDtqayTlV" role="3clF47">
        <node concept="XkiVB" id="7DvDtqayTlW" role="3cqZAp">
          <ref role="37wK5l" to="hdhb:42hl10VH9KF" resolve="ButtonsPainter" />
          <node concept="3cmrfG" id="7DvDtqayTlX" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
          <node concept="37vLTw" id="2BHiRxgmtx6" role="37wK5m">
            <ref role="3cqZAo" node="7DvDtqayTlR" resolve="editorComponent" />
          </node>
          <node concept="37vLTw" id="2BHiRxgheNG" role="37wK5m">
            <ref role="3cqZAo" node="7DvDtqayTm4" resolve="changeGroupLayout" />
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqayTm0" role="3cqZAp">
          <node concept="37vLTI" id="7DvDtqayTm1" role="3clFbG">
            <node concept="37vLTw" id="7DvDtqaz1jS" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqayH4f" resolve="myDiffPane" />
            </node>
            <node concept="37vLTw" id="2BHiRxglRO0" role="37vLTx">
              <ref role="3cqZAo" node="7DvDtqayTlP" resolve="pane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7DvDtqayTm4" role="3clF46">
        <property role="TrG5h" value="changeGroupLayout" />
        <node concept="3uibUv" id="7DvDtqayTm5" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7$NO6fvW2aN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createButtonsForChangeGroup" />
      <node concept="3clFbS" id="7$NO6fvW2aV" role="3clF47">
        <node concept="3cpWs8" id="7$NO6fvW2aW" role="3cqZAp">
          <node concept="3cpWsn" id="7$NO6fvW2aX" role="3cpWs9">
            <property role="TrG5h" value="button" />
            <node concept="3uibUv" id="7$NO6fvW2aY" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
            </node>
            <node concept="10Nm6u" id="7$NO6fvW2aZ" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7$NO6fvW2b0" role="3cqZAp">
          <node concept="3cpWsn" id="7$NO6fvW2b1" role="3cpWs9">
            <property role="TrG5h" value="allInsert" />
            <node concept="2OqwBi" id="7$NO6fvW2b3" role="33vP2m">
              <node concept="2OqwBi" id="7$NO6fvW2b4" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm7Vf" role="2Oq$k0">
                  <ref role="3cqZAo" node="7$NO6fvW2aR" resolve="changeGroup" />
                </node>
                <node concept="liA8E" id="7$NO6fvW2b6" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                </node>
              </node>
              <node concept="2HxqBE" id="7$NO6fvW2b7" role="2OqNvi">
                <node concept="1bVj0M" id="7$NO6fvW2b8" role="23t8la">
                  <node concept="3clFbS" id="7$NO6fvW2b9" role="1bW5cS">
                    <node concept="3clFbF" id="7$NO6fvW2ba" role="3cqZAp">
                      <node concept="3clFbC" id="7$NO6fvW2bb" role="3clFbG">
                        <node concept="2OqwBi" id="7$NO6fvW2bd" role="3uHU7B">
                          <node concept="liA8E" id="7$NO6fvW2bf" role="2OqNvi">
                            <ref role="37wK5l" to="btf5:7inhnIFBpIN" resolve="getType" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxghixe" role="2Oq$k0">
                            <ref role="3cqZAo" node="7$NO6fvW2bg" resolve="c" />
                          </node>
                        </node>
                        <node concept="Rm8GO" id="7$NO6fvW2bc" role="3uHU7w">
                          <ref role="Rm8GQ" to="btf5:7inhnIFBpHO" resolve="ADD" />
                          <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7$NO6fvW2bg" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="7$NO6fvW2bh" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="10P_77" id="7$NO6fvW2b2" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="7$NO6fvW2bi" role="3cqZAp">
          <node concept="9aQIb" id="7$NO6fvW2bz" role="9aQIa">
            <node concept="3clFbS" id="7$NO6fvW2b$" role="9aQI4">
              <node concept="3clFbJ" id="7$NO6fvW2b_" role="3cqZAp">
                <node concept="3clFbS" id="7$NO6fvW2bA" role="3clFbx">
                  <node concept="3clFbF" id="7$NO6fvW2bB" role="3cqZAp">
                    <node concept="37vLTI" id="7$NO6fvW2bC" role="3clFbG">
                      <node concept="2ShNRf" id="7$NO6fvW2bD" role="37vLTx">
                        <node concept="1pGfFk" id="7$NO6fvW2bE" role="2ShVmc">
                          <ref role="37wK5l" node="7$NO6fvW2av" resolve="DiffButtonsPainter.MyButton" />
                          <node concept="37vLTw" id="2BHiRxghiZe" role="37wK5m">
                            <ref role="3cqZAo" node="7$NO6fvW2aR" resolve="changeGroup" />
                          </node>
                          <node concept="1rXfSq" id="4hiugqyzhJP" role="37wK5m">
                            <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                            <node concept="3cmrfG" id="7$NO6fvW2bH" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2BHiRxgm1h4" role="37wK5m">
                            <ref role="3cqZAo" node="7$NO6fvW2aT" resolve="y" />
                          </node>
                          <node concept="Xl_RD" id="7$NO6fvW2bJ" role="37wK5m">
                            <property role="Xl_RC" value="Remove" />
                          </node>
                          <node concept="10M0yZ" id="7$NO6fvW2bK" role="37wK5m">
                            <ref role="1PxDUh" to="ai1m:~IdeIcons" resolve="IdeIcons" />
                            <ref role="3cqZAo" to="ai1m:~IdeIcons.EXCLUDE" resolve="EXCLUDE" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT$wf" role="37vLTJ">
                        <ref role="3cqZAo" node="7$NO6fvW2aX" resolve="button" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTz3v" role="3clFbw">
                  <ref role="3cqZAo" node="7$NO6fvW2b1" resolve="allInsert" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4hiugqyyZ5m" role="3clFbw">
            <ref role="37wK5l" to="hdhb:42hl10VH9Kp" resolve="isHighlightLeft" />
          </node>
          <node concept="3clFbS" id="7$NO6fvW2bk" role="3clFbx">
            <node concept="3clFbJ" id="7$NO6fvW2bl" role="3cqZAp">
              <node concept="3fqX7Q" id="7$NO6fvW2bx" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTABI" role="3fr31v">
                  <ref role="3cqZAo" node="7$NO6fvW2b1" resolve="allInsert" />
                </node>
              </node>
              <node concept="3clFbS" id="7$NO6fvW2bm" role="3clFbx">
                <node concept="3clFbF" id="7$NO6fvW2bn" role="3cqZAp">
                  <node concept="37vLTI" id="7$NO6fvW2bo" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTuzh" role="37vLTJ">
                      <ref role="3cqZAo" node="7$NO6fvW2aX" resolve="button" />
                    </node>
                    <node concept="2ShNRf" id="7$NO6fvW2bp" role="37vLTx">
                      <node concept="1pGfFk" id="7$NO6fvW2bq" role="2ShVmc">
                        <ref role="37wK5l" node="7$NO6fvW2av" resolve="DiffButtonsPainter.MyButton" />
                        <node concept="37vLTw" id="2BHiRxghfsJ" role="37wK5m">
                          <ref role="3cqZAo" node="7$NO6fvW2aR" resolve="changeGroup" />
                        </node>
                        <node concept="1rXfSq" id="4hiugqyzfdv" role="37wK5m">
                          <ref role="37wK5l" to="hdhb:42hl10VH9PH" resolve="getX" />
                          <node concept="3cmrfG" id="7$NO6fvW2bt" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxglt5I" role="37wK5m">
                          <ref role="3cqZAo" node="7$NO6fvW2aT" resolve="y" />
                        </node>
                        <node concept="Xl_RD" id="7$NO6fvW2bv" role="37wK5m">
                          <property role="Xl_RC" value="Replace" />
                        </node>
                        <node concept="10M0yZ" id="7$NO6fvW29k" role="37wK5m">
                          <ref role="3cqZAo" to="hdhb:42hl10VH9K2" resolve="MIRRORED_APPLY_ICON" />
                          <ref role="1PxDUh" node="7$NO6fvW29l" resolve="DiffButtonsPainter" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7$NO6fvW2bN" role="3cqZAp">
          <node concept="9aQIb" id="7$NO6fvW2bV" role="9aQIa">
            <node concept="3clFbS" id="7$NO6fvW2bW" role="9aQI4">
              <node concept="3cpWs6" id="7$NO6fvW2bX" role="3cqZAp">
                <node concept="10Nm6u" id="7$NO6fvW2bY" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7$NO6fvW2bS" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT_da" role="3uHU7B">
              <ref role="3cqZAo" node="7$NO6fvW2aX" resolve="button" />
            </node>
            <node concept="10Nm6u" id="7$NO6fvW2bT" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7$NO6fvW2bO" role="3clFbx">
            <node concept="3cpWs6" id="7$NO6fvW2bP" role="3cqZAp">
              <node concept="2YIFZM" id="7$NO6fvW2bQ" role="3cqZAk">
                <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
                <node concept="37vLTw" id="3GM_nagTwpo" role="37wK5m">
                  <ref role="3cqZAo" node="7$NO6fvW2aX" resolve="button" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="7$NO6fvW2aQ" role="1B3o_S" />
      <node concept="37vLTG" id="7$NO6fvW2aR" role="3clF46">
        <property role="TrG5h" value="changeGroup" />
        <node concept="3uibUv" id="7$NO6fvW2aS" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
        </node>
      </node>
      <node concept="37vLTG" id="7$NO6fvW2aT" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7$NO6fvW2aU" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="7$NO6fvW2aO" role="3clF45">
        <node concept="3uibUv" id="7$NO6fvW2aP" role="A3Ik2">
          <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_SeoT" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2YIFZL" id="7DvDtqayCqL" role="jymVt">
      <property role="TrG5h" value="addTo" />
      <node concept="37vLTG" id="7DvDtqayCqM" role="3clF46">
        <property role="TrG5h" value="pane" />
        <node concept="3uibUv" id="7DvDtqayD6O" role="1tU5fm">
          <ref role="3uigEE" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
        </node>
      </node>
      <node concept="3uibUv" id="7DvDtqayCqO" role="3clF45">
        <ref role="3uigEE" node="7$NO6fvW29l" resolve="DiffButtonsPainter" />
      </node>
      <node concept="3clFbS" id="7DvDtqayCqP" role="3clF47">
        <node concept="3cpWs8" id="7DvDtqayCqQ" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtqayCqR" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="2OqwBi" id="7DvDtqayCqS" role="33vP2m">
              <node concept="liA8E" id="7DvDtqayCqT" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHaAc" resolve="getEditorComponent" />
                <node concept="37vLTw" id="2BHiRxgheFs" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqayCrj" resolve="inspector" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm9o0" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvDtqayCrf" resolve="diffEditor" />
              </node>
            </node>
            <node concept="3uibUv" id="7DvDtqayCqW" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7DvDtqayCqX" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtqayCqY" role="3cpWs9">
            <property role="TrG5h" value="painter" />
            <node concept="3uibUv" id="7DvDtqayCqZ" role="1tU5fm">
              <ref role="3uigEE" node="7$NO6fvW29l" resolve="DiffButtonsPainter" />
            </node>
            <node concept="2ShNRf" id="7DvDtqayCr0" role="33vP2m">
              <node concept="1pGfFk" id="7DvDtqayCr1" role="2ShVmc">
                <ref role="37wK5l" node="7DvDtqayTlO" resolve="DiffButtonsPainter" />
                <node concept="37vLTw" id="2BHiRxgmv0S" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqayCqM" resolve="pane" />
                </node>
                <node concept="37vLTw" id="3GM_nagTyV_" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqayCqR" resolve="editorComponent" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmaGg" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqayCrh" resolve="changeGroupLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqayCr5" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqayCr6" role="3clFbG">
            <node concept="2OqwBi" id="7DvDtqayCr7" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagTBr$" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvDtqayCqR" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="7DvDtqayCr9" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getLeftEditorHighlighter():jetbrains.mps.nodeEditor.leftHighlighter.LeftEditorHighlighter" resolve="getLeftEditorHighlighter" />
              </node>
            </node>
            <node concept="liA8E" id="7DvDtqayCra" role="2OqNvi">
              <ref role="37wK5l" to="df0:~LeftEditorHighlighter.addFoldingAreaPainter(jetbrains.mps.nodeEditor.leftHighlighter.AbstractFoldingAreaPainter):void" resolve="addFoldingAreaPainter" />
              <node concept="37vLTw" id="3GM_nagTxr6" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqayCqY" resolve="painter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7DvDtqayCrc" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTuNp" role="3cqZAk">
            <ref role="3cqZAo" node="7DvDtqayCqY" resolve="painter" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7DvDtqayCre" role="1B3o_S" />
      <node concept="37vLTG" id="7DvDtqayCrf" role="3clF46">
        <property role="TrG5h" value="diffEditor" />
        <node concept="3uibUv" id="7DvDtqayCrg" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvDtqayCrh" role="3clF46">
        <property role="TrG5h" value="changeGroupLayout" />
        <node concept="3uibUv" id="7DvDtqayCri" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvDtqayCrj" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="10P_77" id="7DvDtqayCrk" role="1tU5fm" />
      </node>
    </node>
    <node concept="312cEu" id="7$NO6fvW2ah" role="jymVt">
      <property role="TrG5h" value="MyButton" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="7$NO6fvW2av" role="jymVt">
        <node concept="37vLTG" id="7$NO6fvW2aD" role="3clF46">
          <property role="TrG5h" value="changeGroup" />
          <node concept="3uibUv" id="7$NO6fvW2aE" role="1tU5fm">
            <ref role="3uigEE" to="hdhb:42hl10VHaeV" resolve="ChangeGroup" />
          </node>
        </node>
        <node concept="37vLTG" id="7$NO6fvW2aF" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7$NO6fvW2aG" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7$NO6fvW2aH" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7$NO6fvW2aI" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7$NO6fvW2aJ" role="3clF46">
          <property role="TrG5h" value="name" />
          <node concept="17QB3L" id="7$NO6fvW2aK" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7$NO6fvW2ay" role="3clF47">
          <node concept="XkiVB" id="7$NO6fvW2az" role="3cqZAp">
            <ref role="37wK5l" to="hdhb:42hl10VHb0O" resolve="FoldingAreaButton" />
            <node concept="37vLTw" id="2BHiRxghfsw" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW2aD" resolve="changeGroup" />
            </node>
            <node concept="37vLTw" id="2BHiRxghf05" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW2aF" resolve="x" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmyST" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW2aH" resolve="y" />
            </node>
            <node concept="37vLTw" id="2BHiRxgkZ1A" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW2aJ" resolve="name" />
            </node>
            <node concept="37vLTw" id="2BHiRxgl3k5" role="37wK5m">
              <ref role="3cqZAo" node="7$NO6fvW2aL" resolve="icon" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="7$NO6fvW2ax" role="1B3o_S" />
        <node concept="3cqZAl" id="7$NO6fvW2aw" role="3clF45" />
        <node concept="37vLTG" id="7$NO6fvW2aL" role="3clF46">
          <property role="TrG5h" value="icon" />
          <node concept="3uibUv" id="7$NO6fvW2aM" role="1tU5fm">
            <ref role="3uigEE" to="dbrf:~Icon" resolve="Icon" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7$NO6fvW2ai" role="1B3o_S" />
      <node concept="3uibUv" id="7$NO6fvW2aj" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:42hl10VHb0z" resolve="FoldingAreaButton" />
      </node>
      <node concept="3clFb_" id="7$NO6fvW2ak" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="performAction" />
        <node concept="3cqZAl" id="7$NO6fvW2al" role="3clF45" />
        <node concept="3Tm1VV" id="7$NO6fvW2am" role="1B3o_S" />
        <node concept="3clFbS" id="7$NO6fvW2an" role="3clF47">
          <node concept="3clFbF" id="1KUoCiqb6g5" role="3cqZAp">
            <node concept="2OqwBi" id="1KUoCiqb6g6" role="3clFbG">
              <node concept="2YIFZM" id="1KUoCiqb6g7" role="2Oq$k0">
                <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
              </node>
              <node concept="liA8E" id="1KUoCiqb6g8" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runWriteActionInCommand(java.lang.Runnable):void" resolve="runWriteActionInCommand" />
                <node concept="1bVj0M" id="1KUoCiqb6g9" role="37wK5m">
                  <node concept="3clFbS" id="1KUoCiqb6ga" role="1bW5cS">
                    <node concept="3clFbF" id="1KUoCiqb6gb" role="3cqZAp">
                      <node concept="2OqwBi" id="1KUoCiqb6gc" role="3clFbG">
                        <node concept="liA8E" id="1KUoCiqb6gd" role="2OqNvi">
                          <ref role="37wK5l" node="7DvDtqazHaR" resolve="rollbackChanges" />
                          <node concept="2OqwBi" id="1KUoCiqb6ge" role="37wK5m">
                            <node concept="1rXfSq" id="4hiugqyyZAn" role="2Oq$k0">
                              <ref role="37wK5l" to="hdhb:42hl10VHb1m" resolve="getChangeGroup" />
                            </node>
                            <node concept="liA8E" id="1KUoCiqb6gg" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHagK" resolve="getChanges" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="1KUoCiqb6gi" role="2Oq$k0">
                          <ref role="3cqZAo" node="7DvDtqayH4f" resolve="myDiffPane" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_U_8z" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7$NO6fvW29X" role="1B3o_S" />
    <node concept="3uibUv" id="7$NO6fvW29Y" role="1zkMxy">
      <ref role="3uigEE" to="hdhb:42hl10VH9JP" resolve="ButtonsPainter" />
    </node>
  </node>
  <node concept="312cEu" id="444ZSQ06W$a">
    <property role="TrG5h" value="MetadataUtil" />
    <node concept="3Tm1VV" id="444ZSQ06W$b" role="1B3o_S" />
    <node concept="3clFbW" id="444ZSQ06W$c" role="jymVt">
      <node concept="3cqZAl" id="444ZSQ06W$d" role="3clF45" />
      <node concept="3Tm1VV" id="444ZSQ06W$e" role="1B3o_S" />
      <node concept="3clFbS" id="444ZSQ06W$f" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="6TJYyPqxMdD" role="jymVt">
      <property role="TrG5h" value="createMetadataModel" />
      <node concept="H_c77" id="1B5M0L_glZE" role="3clF45" />
      <node concept="3Tm1VV" id="6TJYyPqxMdF" role="1B3o_S" />
      <node concept="3clFbS" id="6TJYyPqxMdG" role="3clF47">
        <node concept="3cpWs8" id="1B5M0L_gLnr" role="3cqZAp">
          <node concept="3cpWsn" id="1B5M0L_gLns" role="3cpWs9">
            <property role="TrG5h" value="metadataModel" />
            <node concept="3uibUv" id="7rUTzxrnmap" role="1tU5fm">
              <ref role="3uigEE" to="51te:~EditableSModelBase" resolve="EditableSModelBase" />
            </node>
            <node concept="2ShNRf" id="2yL_twwKkc6" role="33vP2m">
              <node concept="1pGfFk" id="2yL_twwKkc7" role="2ShVmc">
                <ref role="37wK5l" to="bmv6:1m2uLwrS0vs" resolve="MergeTemporaryModel" />
                <node concept="2OqwBi" id="2yL_twwKkc8" role="37wK5m">
                  <node concept="2JrnkZ" id="2yL_twwKkc9" role="2Oq$k0">
                    <node concept="37vLTw" id="2yL_twwKkca" role="2JrQYb">
                      <ref role="3cqZAo" node="6TJYyPqxMUt" resolve="model" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2yL_twwKkcb" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="2yL_twwKkcc" role="37wK5m">
                  <node concept="37vLTw" id="2yL_twwKkcd" role="3fr31v">
                    <ref role="3cqZAo" node="1B5M0L_hMOm" resolve="editable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JmNOmfdeEg" role="3cqZAp">
          <node concept="2OqwBi" id="1JmNOmfdfRP" role="3clFbG">
            <node concept="37vLTw" id="62HG2toK3QI" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
            </node>
            <node concept="liA8E" id="1JmNOmfdgym" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.addLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addLanguage" />
              <node concept="2L6k_Z" id="1JmNOmffwql" role="37wK5m">
                <property role="2L6k_S" value="6df0089f-3288-4998-9d57-e698e7c8e145(jetbrains.mps.ide.vcs.modelmetadata)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JmNOmfdVHL" role="3cqZAp">
          <node concept="2OqwBi" id="1JmNOmfdVHM" role="3clFbG">
            <node concept="37vLTw" id="62HG2toK5vD" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
            </node>
            <node concept="liA8E" id="1JmNOmfdVHN" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.addLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addLanguage" />
              <node concept="2L6k_Z" id="1JmNOmffwKR" role="37wK5m">
                <property role="2L6k_S" value="86ef8290-12bb-4ca7-947f-093788f263a9(jetbrains.mps.lang.project)" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TJYyPqxNcb" role="3cqZAp">
          <node concept="2OqwBi" id="6TJYyPqxNcc" role="3clFbG">
            <node concept="1eOMI4" id="62HG2toKbR6" role="2Oq$k0">
              <node concept="10QFUN" id="62HG2toKbR7" role="1eOMHV">
                <node concept="37vLTw" id="62HG2toKbR5" role="10QFUP">
                  <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
                </node>
                <node concept="H_c77" id="62HG2toKc9S" role="10QFUM" />
              </node>
            </node>
            <node concept="3BYIHo" id="6TJYyPqxNcd" role="2OqNvi">
              <node concept="1rXfSq" id="6TJYyPqxNce" role="3BYIHq">
                <ref role="37wK5l" node="444ZSQ06Y3N" resolve="createModelRoot" />
                <node concept="37vLTw" id="6TJYyPqxNnL" role="37wK5m">
                  <ref role="3cqZAo" node="6TJYyPqxMUt" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2yL_twwKlDr" role="3cqZAp">
          <node concept="2YIFZM" id="2yL_twwKlRJ" role="3clFbG">
            <ref role="37wK5l" to="hdhb:2v$NtEHjiFm" resolve="renameModelAndRegister" />
            <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
            <node concept="37vLTw" id="2yL_twwKmCZ" role="37wK5m">
              <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
            </node>
            <node concept="37vLTw" id="2yL_twwKmsO" role="37wK5m">
              <ref role="3cqZAo" node="2yL_twwKl49" resolve="version" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rUTzxrnmL0" role="3cqZAp">
          <node concept="2OqwBi" id="7rUTzxrnnm2" role="3clFbG">
            <node concept="37vLTw" id="7rUTzxrnmKZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
            </node>
            <node concept="liA8E" id="7rUTzxrnrfh" role="2OqNvi">
              <ref role="37wK5l" to="51te:~EditableSModelBase.setChanged(boolean):void" resolve="setChanged" />
              <node concept="3clFbT" id="7rUTzxrnrhD" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6TJYyPqxNsj" role="3cqZAp">
          <node concept="37vLTw" id="6TJYyPqxNsi" role="3clFbG">
            <ref role="3cqZAo" node="1B5M0L_gLns" resolve="metadataModel" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6TJYyPqxMUt" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="1B5M0L_gl5o" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2yL_twwKl49" role="3clF46">
        <property role="TrG5h" value="version" />
        <node concept="17QB3L" id="2yL_twwKlgH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1B5M0L_hMOm" role="3clF46">
        <property role="TrG5h" value="editable" />
        <node concept="10P_77" id="1B5M0L_hQK7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="1B5M0L_ud2d" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1B5M0L_ud2g" role="3clF47">
        <node concept="3clFbF" id="2yL_twwKn2D" role="3cqZAp">
          <node concept="2YIFZM" id="2yL_twwKnf8" role="3clFbG">
            <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
            <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
            <node concept="37vLTw" id="2yL_twwKnsQ" role="37wK5m">
              <ref role="3cqZAo" node="1B5M0L_udds" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1B5M0L_ubvL" role="1B3o_S" />
      <node concept="3cqZAl" id="1B5M0L_ud1q" role="3clF45" />
      <node concept="37vLTG" id="1B5M0L_udds" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="1B5M0L_uddr" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="444ZSQ06Y3N" role="jymVt">
      <property role="TrG5h" value="createModelRoot" />
      <node concept="3Tm6S6" id="1B5M0L_ubEW" role="1B3o_S" />
      <node concept="3Tqbb2" id="444ZSQ06YH2" role="3clF45">
        <ref role="ehGHo" to="e4tq:7gTJ_yqjx5H" resolve="Model" />
      </node>
      <node concept="3clFbS" id="444ZSQ06Y3Q" role="3clF47">
        <node concept="3cpWs8" id="1B5M0L_jX9m" role="3cqZAp">
          <node concept="3cpWsn" id="1B5M0L_jX9n" role="3cpWs9">
            <property role="TrG5h" value="modelBase" />
            <node concept="3uibUv" id="1B5M0L_jX9o" role="1tU5fm">
              <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
            </node>
            <node concept="10QFUN" id="1B5M0L_jZ0f" role="33vP2m">
              <node concept="3uibUv" id="1B5M0L_jZ0d" role="10QFUM">
                <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
              </node>
              <node concept="2JrnkZ" id="1B5M0L_k2S5" role="10QFUP">
                <node concept="37vLTw" id="1B5M0L_k0SA" role="2JrQYb">
                  <ref role="3cqZAo" node="444ZSQ06YH6" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1DUTkFD84KG" role="3cqZAp">
          <node concept="3cpWsn" id="1DUTkFD84KJ" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="2ShNRf" id="1DUTkFD84Y5" role="33vP2m">
              <node concept="3zrR0B" id="1DUTkFD84Y3" role="2ShVmc">
                <node concept="3Tqbb2" id="1DUTkFD84Y4" role="3zrR0E">
                  <ref role="ehGHo" to="e4tq:7gTJ_yqjx5H" resolve="Model" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="1DUTkFD84KE" role="1tU5fm">
              <ref role="ehGHo" to="e4tq:7gTJ_yqjx5H" resolve="Model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD8fQU" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD8h4J" role="3clFbG">
            <node concept="2OqwBi" id="1B5M0L_gtg8" role="37vLTx">
              <node concept="37vLTw" id="1B5M0L_gskj" role="2Oq$k0">
                <ref role="3cqZAo" node="444ZSQ06YH6" resolve="model" />
              </node>
              <node concept="LkI2h" id="1B5M0L_guxW" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="1DUTkFD8fYH" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD8gpp" role="2OqNvi">
                <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7A" resolve="longname" />
              </node>
              <node concept="37vLTw" id="1DUTkFD8fQT" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="26Suxux3F6Y" role="3cqZAp">
          <node concept="3SKWN0" id="26Suxux3F6Z" role="3SKWNk">
            <node concept="3clFbF" id="1DUTkFD8izd" role="3SKWNf">
              <node concept="37vLTI" id="1DUTkFD8jO4" role="3clFbG">
                <node concept="3cpWs3" id="7MR_Vn93Qe4" role="37vLTx">
                  <node concept="2OqwBi" id="2n9zn0CqN0N" role="3uHU7B">
                    <node concept="37vLTw" id="2n9zn0CqN0Q" role="2Oq$k0">
                      <ref role="3cqZAo" node="444ZSQ06YH6" resolve="model" />
                    </node>
                    <node concept="liA8E" id="2n9zn0CqN0O" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7MR_Vn93QeB" role="3uHU7w">
                    <property role="Xl_RC" value="" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1DUTkFD8iT$" role="37vLTJ">
                  <node concept="3TrcHB" id="1DUTkFD8jdd" role="2OqNvi">
                    <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7C" resolve="uuid" />
                  </node>
                  <node concept="37vLTw" id="1DUTkFD8izc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD88pG" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD8c7X" role="3clFbG">
            <node concept="2OqwBi" id="1DUTkFD8dIv" role="37vLTx">
              <node concept="37vLTw" id="1B5M0L_k4J1" role="2Oq$k0">
                <ref role="3cqZAo" node="1B5M0L_jX9n" resolve="modelBase" />
              </node>
              <node concept="liA8E" id="1DUTkFD8ee2" role="2OqNvi">
                <ref role="37wK5l" to="51te:~SModelDescriptorStub.getVersion():int" resolve="getVersion" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD88xH" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD88N9" role="2OqNvi">
                <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7F" resolve="version" />
              </node>
              <node concept="37vLTw" id="1DUTkFD88pF" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Nxj0gBEKtz" role="3cqZAp">
          <node concept="2ZW3vV" id="4Nxj0gBELFE" role="3clFbw">
            <node concept="3uibUv" id="1B5M0L_klm6" role="2ZW6by">
              <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
            </node>
            <node concept="2JrnkZ" id="1B5M0L_kPft" role="2ZW6bz">
              <node concept="37vLTw" id="1B5M0L_ktUl" role="2JrQYb">
                <ref role="3cqZAo" node="444ZSQ06YH6" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Nxj0gBEKt_" role="3clFbx">
            <node concept="3clFbF" id="6fx930y8jwG" role="3cqZAp">
              <node concept="37vLTI" id="6fx930y8mbY" role="3clFbG">
                <node concept="2EnYce" id="6fx930y8qwF" role="37vLTx">
                  <node concept="1eOMI4" id="4DcpLF1SHV" role="2Oq$k0">
                    <node concept="10QFUN" id="4DcpLF1SHW" role="1eOMHV">
                      <node concept="2JrnkZ" id="1B5M0L_kHEA" role="10QFUP">
                        <node concept="37vLTw" id="4DcpLF1SHU" role="2JrQYb">
                          <ref role="3cqZAo" node="444ZSQ06YH6" resolve="model" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="1B5M0L_kA33" role="10QFUM">
                        <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6fx930y8r6D" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~GeneratableSModel.isDoNotGenerate():boolean" resolve="isDoNotGenerate" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6fx930y8kcL" role="37vLTJ">
                  <node concept="3TrcHB" id="6fx930y8kOo" role="2OqNvi">
                    <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7O" resolve="donotgenerate" />
                  </node>
                  <node concept="37vLTw" id="6fx930y8jwF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DUTkFD8Elq" role="3cqZAp">
          <node concept="2GrKxI" id="1DUTkFD8Els" role="2Gsz3X">
            <property role="TrG5h" value="language" />
          </node>
          <node concept="3clFbS" id="1DUTkFD8Elw" role="2LFqv$">
            <node concept="3clFbF" id="1DUTkFD8FG_" role="3cqZAp">
              <node concept="2OqwBi" id="1DUTkFD8Ia7" role="3clFbG">
                <node concept="TSZUe" id="1DUTkFD8KJM" role="2OqNvi">
                  <node concept="1rXfSq" id="1DUTkFD8KXW" role="25WWJ7">
                    <ref role="37wK5l" node="1DUTkFD67H0" resolve="createModuleRefNode" />
                    <node concept="2GrUjf" id="1DUTkFD8QN2" role="37wK5m">
                      <ref role="2Gs0qQ" node="1DUTkFD8Els" resolve="language" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DUTkFD8FWW" role="2Oq$k0">
                  <node concept="37vLTw" id="1DUTkFD8FG$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                  <node concept="3Tsc0h" id="1DUTkFD8GHv" role="2OqNvi">
                    <ref role="3TtcxE" to="e4tq:444ZSQ068oQ" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DUTkFD8EKa" role="2GsD0m">
            <node concept="37vLTw" id="1B5M0L_l4ZJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_jX9n" resolve="modelBase" />
            </node>
            <node concept="liA8E" id="1DUTkFD8EKb" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedLanguages():java.util.List" resolve="importedLanguages" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DUTkFD8Rry" role="3cqZAp">
          <node concept="2GrKxI" id="1DUTkFD8Rrz" role="2Gsz3X">
            <property role="TrG5h" value="genlanguage" />
          </node>
          <node concept="3clFbS" id="1DUTkFD8Rr$" role="2LFqv$">
            <node concept="3clFbF" id="1DUTkFD8Rr_" role="3cqZAp">
              <node concept="2OqwBi" id="1DUTkFD8RrA" role="3clFbG">
                <node concept="TSZUe" id="1DUTkFD8RrB" role="2OqNvi">
                  <node concept="1rXfSq" id="1DUTkFD8RrC" role="25WWJ7">
                    <ref role="37wK5l" node="1DUTkFD67H0" resolve="createModuleRefNode" />
                    <node concept="2GrUjf" id="1DUTkFD8RrD" role="37wK5m">
                      <ref role="2Gs0qQ" node="1DUTkFD8Rrz" resolve="genlanguage" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DUTkFD8RrE" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DUTkFD8Vpf" role="2OqNvi">
                    <ref role="3TtcxE" to="e4tq:444ZSQ068oS" />
                  </node>
                  <node concept="37vLTw" id="1DUTkFD8RrF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DUTkFD8S0U" role="2GsD0m">
            <node concept="37vLTw" id="1B5M0L_leX_" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_jX9n" resolve="modelBase" />
            </node>
            <node concept="liA8E" id="1DUTkFD8S0X" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.engagedOnGenerationLanguages():java.util.List" resolve="engagedOnGenerationLanguages" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DUTkFD8Svc" role="3cqZAp">
          <node concept="2GrKxI" id="1DUTkFD8Svd" role="2Gsz3X">
            <property role="TrG5h" value="devkit" />
          </node>
          <node concept="3clFbS" id="1DUTkFD8Sve" role="2LFqv$">
            <node concept="3clFbF" id="1DUTkFD8Svf" role="3cqZAp">
              <node concept="2OqwBi" id="1DUTkFD8Svg" role="3clFbG">
                <node concept="TSZUe" id="1DUTkFD8Svh" role="2OqNvi">
                  <node concept="1rXfSq" id="1DUTkFD8Svi" role="25WWJ7">
                    <ref role="37wK5l" node="1DUTkFD67H0" resolve="createModuleRefNode" />
                    <node concept="2GrUjf" id="1DUTkFD8Svj" role="37wK5m">
                      <ref role="2Gs0qQ" node="1DUTkFD8Svd" resolve="devkit" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DUTkFD8Svk" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DUTkFD8W4a" role="2OqNvi">
                    <ref role="3TtcxE" to="e4tq:444ZSQ068oV" />
                  </node>
                  <node concept="37vLTw" id="1DUTkFD8Svl" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DUTkFD8T79" role="2GsD0m">
            <node concept="37vLTw" id="1B5M0L_lgN$" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_jX9n" resolve="modelBase" />
            </node>
            <node concept="liA8E" id="1DUTkFD8T7a" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedDevkits():java.util.List" resolve="importedDevkits" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1DUTkFD8WAx" role="3cqZAp">
          <node concept="2GrKxI" id="1DUTkFD8WAy" role="2Gsz3X">
            <property role="TrG5h" value="impmodel" />
          </node>
          <node concept="3clFbS" id="1DUTkFD8WAz" role="2LFqv$">
            <node concept="3clFbF" id="1DUTkFD8WA$" role="3cqZAp">
              <node concept="2OqwBi" id="1DUTkFD8WA_" role="3clFbG">
                <node concept="TSZUe" id="1DUTkFD8WAA" role="2OqNvi">
                  <node concept="1rXfSq" id="1DUTkFD8WAB" role="25WWJ7">
                    <ref role="37wK5l" node="1DUTkFD8Z7t" resolve="createModelRefNode" />
                    <node concept="2GrUjf" id="1DUTkFD8WAC" role="37wK5m">
                      <ref role="2Gs0qQ" node="1DUTkFD8WAy" resolve="impmodel" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1DUTkFD8WAD" role="2Oq$k0">
                  <node concept="3Tsc0h" id="1DUTkFD8Ywg" role="2OqNvi">
                    <ref role="3TtcxE" to="e4tq:444ZSQ068oZ" />
                  </node>
                  <node concept="37vLTw" id="1DUTkFD8WAF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1DUTkFD8Xi_" role="2GsD0m">
            <node concept="37vLTw" id="1B5M0L_liHS" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_jX9n" resolve="modelBase" />
            </node>
            <node concept="liA8E" id="1DUTkFD8XiA" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedModels():java.util.List" resolve="importedModels" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7MR_Vn93cuD" role="3cqZAp" />
        <node concept="3clFbF" id="1DUTkFD86HE" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD87$6" role="3clFbG">
            <node concept="Xl_RD" id="1DUTkFD87A_" role="37vLTx">
              <property role="Xl_RC" value="Model Properties" />
            </node>
            <node concept="2OqwBi" id="1DUTkFD86PC" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD86Zt" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="37vLTw" id="1DUTkFD86HD" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD852q" role="3cqZAp">
          <node concept="2OqwBi" id="1DUTkFD85Hr" role="3clFbG">
            <node concept="1eOMI4" id="1K7tYdFwN3O" role="2Oq$k0">
              <node concept="10QFUN" id="1K7tYdFwN3P" role="1eOMHV">
                <node concept="2JrnkZ" id="1K7tYdFwN3M" role="10QFUP">
                  <node concept="37vLTw" id="1K7tYdFwN3N" role="2JrQYb">
                    <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
                  </node>
                </node>
                <node concept="3uibUv" id="1K7tYdFx0uu" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1DUTkFD85Rm" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId):void" resolve="setId" />
              <node concept="2YIFZM" id="1DUTkFD86rC" role="37wK5m">
                <ref role="37wK5l" to="cu2c:~SNodeId.fromString(java.lang.String):jetbrains.mps.smodel.SNodeId" resolve="fromString" />
                <ref role="1Pybhc" to="cu2c:~SNodeId" resolve="SNodeId" />
                <node concept="Xl_RD" id="1DUTkFD86x4" role="37wK5m">
                  <property role="Xl_RC" value="~root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="444ZSQ06YHs" role="3cqZAp">
          <node concept="37vLTw" id="1DUTkFD84S1" role="3clFbG">
            <ref role="3cqZAo" node="1DUTkFD84KJ" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="444ZSQ06YH6" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="1B5M0L_goyv" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="1DUTkFD67H0" role="jymVt">
      <property role="TrG5h" value="createModuleRefNode" />
      <node concept="3Tm6S6" id="1B5M0L_lzkw" role="1B3o_S" />
      <node concept="3Tqbb2" id="1DUTkFD8LeL" role="3clF45">
        <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
      </node>
      <node concept="3clFbS" id="1DUTkFD6A7l" role="3clF47">
        <node concept="3cpWs8" id="1DUTkFD8MZK" role="3cqZAp">
          <node concept="3cpWsn" id="1DUTkFD8MZN" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="2ShNRf" id="1DUTkFD8NH9" role="33vP2m">
              <node concept="3zrR0B" id="1DUTkFD8NH7" role="2ShVmc">
                <node concept="3Tqbb2" id="1DUTkFD8NH8" role="3zrR0E">
                  <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="1DUTkFD8MZJ" role="1tU5fm">
              <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD9eE1" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD9gLi" role="3clFbG">
            <node concept="2OqwBi" id="6R1MmuNKsv4" role="37vLTx">
              <node concept="liA8E" id="6R1MmuNKsv5" role="2OqNvi">
                <ref role="37wK5l" to="88zw:~SModuleReference.getModuleName():java.lang.String" resolve="getModuleName" />
              </node>
              <node concept="37vLTw" id="6R1MmuNKsv6" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8LTF" resolve="module" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD9eKh" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD9fnr" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
              </node>
              <node concept="37vLTw" id="1DUTkFD9eE0" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8MZN" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD9cWw" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD9lrW" role="3clFbG">
            <node concept="2OqwBi" id="1DUTkFD9nWa" role="37vLTx">
              <node concept="liA8E" id="1DUTkFD9oC4" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
              </node>
              <node concept="2OqwBi" id="1DUTkFD9m_2" role="2Oq$k0">
                <node concept="liA8E" id="1DUTkFD9ngh" role="2OqNvi">
                  <ref role="37wK5l" to="88zw:~SModuleReference.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                </node>
                <node concept="37vLTw" id="1DUTkFD9m14" role="2Oq$k0">
                  <ref role="3cqZAo" node="1DUTkFD8LTF" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD9d2K" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD9dHa" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
              </node>
              <node concept="37vLTw" id="1DUTkFD9cWv" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8MZN" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD8Oqp" role="3cqZAp">
          <node concept="2OqwBi" id="1DUTkFD8P1N" role="3clFbG">
            <node concept="1eOMI4" id="1K7tYdFx0EW" role="2Oq$k0">
              <node concept="10QFUN" id="1K7tYdFx0EX" role="1eOMHV">
                <node concept="2JrnkZ" id="1K7tYdFx0EU" role="10QFUP">
                  <node concept="37vLTw" id="1K7tYdFx0EV" role="2JrQYb">
                    <ref role="3cqZAo" node="1DUTkFD8MZN" resolve="node" />
                  </node>
                </node>
                <node concept="3uibUv" id="1K7tYdFx0Wh" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1DUTkFD8Pl8" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId):void" resolve="setId" />
              <node concept="2YIFZM" id="1DUTkFD8PJA" role="37wK5m">
                <ref role="37wK5l" to="cu2c:~SNodeId.fromString(java.lang.String):jetbrains.mps.smodel.SNodeId" resolve="fromString" />
                <ref role="1Pybhc" to="cu2c:~SNodeId" resolve="SNodeId" />
                <node concept="3cpWs3" id="1DUTkFD9OVp" role="37wK5m">
                  <node concept="2OqwBi" id="1DUTkFD9Q16" role="3uHU7w">
                    <node concept="3TrcHB" id="1DUTkFD9Qzu" role="2OqNvi">
                      <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                    </node>
                    <node concept="37vLTw" id="1DUTkFD9PUR" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DUTkFD8MZN" resolve="node" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1DUTkFD8PYs" role="3uHU7B">
                    <property role="Xl_RC" value="~" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD8O3N" role="3cqZAp">
          <node concept="37vLTw" id="1DUTkFD8O3M" role="3clFbG">
            <ref role="3cqZAo" node="1DUTkFD8MZN" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1DUTkFD8LTF" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="1DUTkFD8LTE" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1B5M0L_oIMA" role="jymVt">
      <property role="TrG5h" value="getModuleReference" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1B5M0L_oIMD" role="3clF47">
        <node concept="3clFbF" id="1B5M0L_oJ3O" role="3cqZAp">
          <node concept="2ShNRf" id="1B5M0L_oJ3P" role="3clFbG">
            <node concept="1pGfFk" id="1B5M0L_oJ3Q" role="2ShVmc">
              <ref role="37wK5l" to="kqhl:~ModuleReference.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="ModuleReference" />
              <node concept="2OqwBi" id="1B5M0L_oJ3R" role="37wK5m">
                <node concept="3TrcHB" id="1B5M0L_pGRm" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:1AZH1sZHi4e" resolve="qualifiedName" />
                </node>
                <node concept="37vLTw" id="1B5M0L_oJUe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1B5M0L_oIYj" resolve="node" />
                </node>
              </node>
              <node concept="2OqwBi" id="1B5M0L_oJ3U" role="37wK5m">
                <node concept="3TrcHB" id="1B5M0L_pJJJ" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:1AZH1sZHi4d" resolve="uuid" />
                </node>
                <node concept="37vLTw" id="1B5M0L_oJlo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1B5M0L_oIYj" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1B5M0L_oIAb" role="1B3o_S" />
      <node concept="3uibUv" id="1B5M0L_oILo" role="3clF45">
        <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
      </node>
      <node concept="37vLTG" id="1B5M0L_oIYj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1B5M0L_oIYi" role="1tU5fm">
          <ref role="ehGHo" to="hypd:1AZH1sZHi4c" resolve="ModuleReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1DUTkFD8Z7t" role="jymVt">
      <property role="TrG5h" value="createModelRefNode" />
      <node concept="3Tm6S6" id="1B5M0L_lELO" role="1B3o_S" />
      <node concept="3Tqbb2" id="1DUTkFD90ph" role="3clF45">
        <ref role="ehGHo" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
      </node>
      <node concept="37vLTG" id="1DUTkFD8ZJC" role="3clF46">
        <property role="TrG5h" value="impModel" />
        <node concept="3uibUv" id="1DUTkFD8ZJY" role="1tU5fm">
          <ref role="3uigEE" to="cu2c:~SModel$ImportElement" resolve="SModel.ImportElement" />
        </node>
      </node>
      <node concept="3clFbS" id="1DUTkFD8Z7w" role="3clF47">
        <node concept="3cpWs8" id="1DUTkFD8ZKG" role="3cqZAp">
          <node concept="3cpWsn" id="1DUTkFD8ZKJ" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="2ShNRf" id="1DUTkFD8ZMD" role="33vP2m">
              <node concept="3zrR0B" id="1DUTkFD8ZMB" role="2ShVmc">
                <node concept="3Tqbb2" id="1DUTkFD8ZMC" role="3zrR0E">
                  <ref role="ehGHo" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="1DUTkFD8ZKF" role="1tU5fm">
              <ref role="ehGHo" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD9qzK" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD9sEX" role="3clFbG">
            <node concept="2YIFZM" id="4DcpLEzkHG" role="37vLTx">
              <ref role="37wK5l" to="cu2c:~SModelStereotype.withoutStereotype(java.lang.String):java.lang.String" resolve="withoutStereotype" />
              <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="2OqwBi" id="4DcpLEzkHH" role="37wK5m">
                <node concept="liA8E" id="4DcpLEzkHI" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                </node>
                <node concept="2OqwBi" id="4DcpLEzkHJ" role="2Oq$k0">
                  <node concept="liA8E" id="4DcpLEzkHK" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~SModel$ImportElement.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                  </node>
                  <node concept="37vLTw" id="4DcpLEzkHL" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD8ZJC" resolve="impModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD9qE0" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD9rh6" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:5xDtKQA7vSI" resolve="qualifiedName" />
              </node>
              <node concept="37vLTw" id="1DUTkFD9qzJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD9yXc" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD9_9u" role="3clFbG">
            <node concept="2OqwBi" id="1DUTkFD9GjF" role="37vLTx">
              <node concept="liA8E" id="1DUTkFD9GQ4" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
              </node>
              <node concept="2OqwBi" id="1DUTkFD9EeO" role="2Oq$k0">
                <node concept="liA8E" id="1DUTkFD9EUY" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModelReference.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                </node>
                <node concept="2OqwBi" id="1DUTkFD9AnT" role="2Oq$k0">
                  <node concept="37vLTw" id="1DUTkFD9_IE" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD8ZJC" resolve="impModel" />
                  </node>
                  <node concept="liA8E" id="1DUTkFD9Dyp" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~SModel$ImportElement.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD9z3s" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD9zIz" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:5xDtKQA7vSH" resolve="uuid" />
              </node>
              <node concept="37vLTw" id="1DUTkFD9yXb" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD9HWq" role="3cqZAp">
          <node concept="37vLTI" id="1DUTkFD9Kby" role="3clFbG">
            <node concept="2YIFZM" id="4DcpLEzkFl" role="37vLTx">
              <ref role="37wK5l" to="cu2c:~SModelStereotype.getStereotype(java.lang.String):java.lang.String" resolve="getStereotype" />
              <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="2OqwBi" id="4DcpLEzkFm" role="37wK5m">
                <node concept="liA8E" id="4DcpLEzkFn" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                </node>
                <node concept="2OqwBi" id="4DcpLEzkFo" role="2Oq$k0">
                  <node concept="liA8E" id="4DcpLEzkFp" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~SModel$ImportElement.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                  </node>
                  <node concept="37vLTw" id="4DcpLEzkFq" role="2Oq$k0">
                    <ref role="3cqZAo" node="1DUTkFD8ZJC" resolve="impModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1DUTkFD9I2E" role="37vLTJ">
              <node concept="3TrcHB" id="1DUTkFD9IIR" role="2OqNvi">
                <ref role="3TsBF5" to="hypd:5LsHsRgAFYL" resolve="stereotype" />
              </node>
              <node concept="37vLTw" id="1DUTkFD9HWp" role="2Oq$k0">
                <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD8ZNq" role="3cqZAp">
          <node concept="2OqwBi" id="1DUTkFD903N" role="3clFbG">
            <node concept="1eOMI4" id="1K7tYdFx1dw" role="2Oq$k0">
              <node concept="10QFUN" id="1K7tYdFx1dx" role="1eOMHV">
                <node concept="2JrnkZ" id="1K7tYdFx1du" role="10QFUP">
                  <node concept="37vLTw" id="1K7tYdFx1dv" role="2JrQYb">
                    <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
                  </node>
                </node>
                <node concept="3uibUv" id="1K7tYdFx1ul" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1DUTkFD908i" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SNode.setId(org.jetbrains.mps.openapi.model.SNodeId):void" resolve="setId" />
              <node concept="2YIFZM" id="1DUTkFD90cU" role="37wK5m">
                <ref role="37wK5l" to="cu2c:~SNodeId.fromString(java.lang.String):jetbrains.mps.smodel.SNodeId" resolve="fromString" />
                <ref role="1Pybhc" to="cu2c:~SNodeId" resolve="SNodeId" />
                <node concept="3cpWs3" id="1DUTkFD9RSr" role="37wK5m">
                  <node concept="2OqwBi" id="1DUTkFD9SrX" role="3uHU7w">
                    <node concept="3TrcHB" id="1DUTkFD9SZe" role="2OqNvi">
                      <ref role="3TsBF5" to="hypd:5xDtKQA7vSH" resolve="uuid" />
                    </node>
                    <node concept="37vLTw" id="1DUTkFD9SlI" role="2Oq$k0">
                      <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1DUTkFD90gP" role="3uHU7B">
                    <property role="Xl_RC" value="~" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DUTkFD90mJ" role="3cqZAp">
          <node concept="37vLTw" id="1DUTkFD90mI" role="3clFbG">
            <ref role="3cqZAo" node="1DUTkFD8ZKJ" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1B5M0L_oIeL" role="jymVt">
      <property role="TrG5h" value="getModelReference" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1B5M0L_oIeO" role="3clF47">
        <node concept="3cpWs8" id="5hB6NC4gs8h" role="3cqZAp">
          <node concept="3cpWsn" id="5hB6NC4gs8i" role="3cpWs9">
            <property role="TrG5h" value="fullName" />
            <node concept="3uibUv" id="5hB6NC4gs8g" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~String" resolve="String" />
            </node>
            <node concept="2YIFZM" id="6z5tXm14bCw" role="33vP2m">
              <ref role="37wK5l" to="cu2c:~SModelStereotype.withStereotype(java.lang.String,java.lang.String):java.lang.String" resolve="withStereotype" />
              <ref role="1Pybhc" to="cu2c:~SModelStereotype" resolve="SModelStereotype" />
              <node concept="2OqwBi" id="6z5tXm14c2J" role="37wK5m">
                <node concept="37vLTw" id="6z5tXm14bGo" role="2Oq$k0">
                  <ref role="3cqZAo" node="1B5M0L_oIq1" resolve="node" />
                </node>
                <node concept="3TrcHB" id="6z5tXm14cgw" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:5xDtKQA7vSI" resolve="qualifiedName" />
                </node>
              </node>
              <node concept="2OqwBi" id="6z5tXm14cs4" role="37wK5m">
                <node concept="37vLTw" id="6z5tXm14coK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1B5M0L_oIq1" resolve="node" />
                </node>
                <node concept="3TrcHB" id="6z5tXm14c__" role="2OqNvi">
                  <ref role="3TsBF5" to="hypd:5LsHsRgAFYL" resolve="stereotype" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1B5M0L_pPge" role="3cqZAp">
          <node concept="2ShNRf" id="1B5M0L_pPgg" role="3clFbG">
            <node concept="1pGfFk" id="1B5M0L_pPgi" role="2ShVmc">
              <ref role="37wK5l" to="cu2c:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="SModelReference" />
              <node concept="10Nm6u" id="5hB6NC4h8Cs" role="37wK5m" />
              <node concept="2YIFZM" id="1B5M0L_pPgr" role="37wK5m">
                <ref role="1Pybhc" to="cu2c:~SModelId" resolve="SModelId" />
                <ref role="37wK5l" to="cu2c:~SModelId.fromString(java.lang.String):jetbrains.mps.smodel.SModelId" resolve="fromString" />
                <node concept="2OqwBi" id="1B5M0L_pPgs" role="37wK5m">
                  <node concept="3TrcHB" id="1B5M0L_pPgt" role="2OqNvi">
                    <ref role="3TsBF5" to="hypd:5xDtKQA7vSH" resolve="uuid" />
                  </node>
                  <node concept="37vLTw" id="1B5M0L_q$MD" role="2Oq$k0">
                    <ref role="3cqZAo" node="1B5M0L_oIq1" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="5hB6NC4h27J" role="37wK5m">
                <ref role="3cqZAo" node="5hB6NC4gs8i" resolve="fullName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1B5M0L_o62h" role="1B3o_S" />
      <node concept="3uibUv" id="1B5M0L_qwM2" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
      </node>
      <node concept="37vLTG" id="1B5M0L_oIq1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1B5M0L_oIq0" role="1tU5fm">
          <ref role="ehGHo" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="6fx930y84y8" role="jymVt">
      <property role="TrG5h" value="applyMetadataChanges" />
      <node concept="3cqZAl" id="6fx930y86iX" role="3clF45" />
      <node concept="3Tm1VV" id="6fx930y86iY" role="1B3o_S" />
      <node concept="3clFbS" id="6fx930y86iZ" role="3clF47">
        <node concept="3clFbJ" id="7rUTzxrjEN_" role="3cqZAp">
          <node concept="3clFbS" id="7rUTzxrjENC" role="3clFbx">
            <node concept="3cpWs6" id="7rUTzxrkcmD" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="7rUTzxrk9sp" role="3clFbw">
            <node concept="2OqwBi" id="7rUTzxrk9sr" role="3fr31v">
              <node concept="1eOMI4" id="7rUTzxrk9ss" role="2Oq$k0">
                <node concept="2JrnkZ" id="7rUTzxrk9st" role="1eOMHV">
                  <node concept="10QFUN" id="7rUTzxrk9su" role="2JrQYb">
                    <node concept="3uibUv" id="7rUTzxrk9sv" role="10QFUM">
                      <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                    </node>
                    <node concept="37vLTw" id="7rUTzxrk9sw" role="10QFUP">
                      <ref role="3cqZAo" node="6fx930y8aCw" resolve="metadataModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7rUTzxrk9sx" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~EditableSModel.isChanged():boolean" resolve="isChanged" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rUTzxrknhG" role="3cqZAp" />
        <node concept="3cpWs8" id="1B5M0L_mW3I" role="3cqZAp">
          <node concept="3cpWsn" id="1B5M0L_mW3J" role="3cpWs9">
            <property role="TrG5h" value="modelBase" />
            <node concept="3uibUv" id="1B5M0L_mW3K" role="1tU5fm">
              <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
            </node>
            <node concept="10QFUN" id="1B5M0L_n3lc" role="33vP2m">
              <node concept="3uibUv" id="1B5M0L_n3la" role="10QFUM">
                <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
              </node>
              <node concept="37vLTw" id="1B5M0L_n66e" role="10QFUP">
                <ref role="3cqZAo" node="6fx930y8aC3" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fx930y8aKC" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930y8aKF" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="2OqwBi" id="6fx930y8cMX" role="33vP2m">
              <node concept="1uHKPH" id="6fx930y8fW2" role="2OqNvi" />
              <node concept="2OqwBi" id="6fx930y8b3M" role="2Oq$k0">
                <node concept="37vLTw" id="7uQYadQrl7o" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fx930y8aCw" resolve="metadataModel" />
                </node>
                <node concept="2RRcyG" id="6fx930y8b71" role="2OqNvi">
                  <ref role="2RRcyH" to="e4tq:7gTJ_yqjx5H" resolve="Model" />
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="6fx930y8aKA" role="1tU5fm">
              <ref role="ehGHo" to="e4tq:7gTJ_yqjx5H" resolve="Model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930y8gs6" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930y8h6t" role="3clFbG">
            <node concept="37vLTw" id="1B5M0L_naRd" role="2Oq$k0">
              <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
            </node>
            <node concept="liA8E" id="6fx930y8hdp" role="2OqNvi">
              <ref role="37wK5l" to="51te:~SModelDescriptorStub.setVersion(int):void" resolve="setVersion" />
              <node concept="2OqwBi" id="6fx930y8htQ" role="37wK5m">
                <node concept="3TrcHB" id="6fx930y8hDQ" role="2OqNvi">
                  <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7F" resolve="version" />
                </node>
                <node concept="37vLTw" id="6fx930y8hi5" role="2Oq$k0">
                  <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4Nxj0gBEO8t" role="3cqZAp">
          <node concept="2ZW3vV" id="4Nxj0gBEQpr" role="3clFbw">
            <node concept="3uibUv" id="1B5M0L_mgVc" role="2ZW6by">
              <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
            </node>
            <node concept="2JrnkZ" id="1B5M0L_mnoG" role="2ZW6bz">
              <node concept="37vLTw" id="4Nxj0gBEOZH" role="2JrQYb">
                <ref role="3cqZAo" node="6fx930y8aC3" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4Nxj0gBEO8v" role="3clFbx">
            <node concept="3clFbF" id="6fx930y8so$" role="3cqZAp">
              <node concept="2EnYce" id="6fx930y8soA" role="3clFbG">
                <node concept="1eOMI4" id="6fx930y8soE" role="2Oq$k0">
                  <node concept="10QFUN" id="6fx930y8soF" role="1eOMHV">
                    <node concept="3uibUv" id="1B5M0L_mqxq" role="10QFUM">
                      <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
                    </node>
                    <node concept="2JrnkZ" id="6fx930y8soH" role="10QFUP">
                      <node concept="37vLTw" id="2BHiRxgheYM" role="2JrQYb">
                        <ref role="3cqZAo" node="6fx930y8aC3" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6fx930y8soB" role="2OqNvi">
                  <ref role="37wK5l" to="51te:~GeneratableSModel.setDoNotGenerate(boolean):void" resolve="setDoNotGenerate" />
                  <node concept="2OqwBi" id="6fx930y8t3K" role="37wK5m">
                    <node concept="3TrcHB" id="6fx930y8toy" role="2OqNvi">
                      <ref role="3TsBF5" to="e4tq:7gTJ_yqjx7O" resolve="donotgenerate" />
                    </node>
                    <node concept="37vLTw" id="6fx930y8sR7" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6fx930ybn1X" role="3cqZAp" />
        <node concept="3cpWs8" id="70HGkdL$ccj" role="3cqZAp">
          <node concept="3cpWsn" id="70HGkdL$ccm" role="3cpWs9">
            <property role="TrG5h" value="oldImpLang" />
            <node concept="2ShNRf" id="70HGkdL$c_R" role="33vP2m">
              <node concept="32HrFt" id="70HGkdL$GSf" role="2ShVmc">
                <node concept="2OqwBi" id="70HGkdL$HDs" role="I$8f6">
                  <node concept="37vLTw" id="1B5M0L_ndDp" role="2Oq$k0">
                    <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                  </node>
                  <node concept="liA8E" id="70HGkdL$HTJ" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedLanguages():java.util.List" resolve="importedLanguages" />
                  </node>
                </node>
                <node concept="3uibUv" id="70HGkdL$Hlw" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="70HGkdL$ccf" role="1tU5fm">
              <node concept="3uibUv" id="70HGkdL$chP" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fx930y9LP6" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930y9LP9" role="3cpWs9">
            <property role="TrG5h" value="impLang" />
            <node concept="2ShNRf" id="6fx930y9NyE" role="33vP2m">
              <node concept="32HrFt" id="6fx930y9NyB" role="2ShVmc">
                <node concept="3uibUv" id="6fx930y9NyC" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2OqwBi" id="6fx930y9OVL" role="I$8f6">
                  <node concept="3$u5V9" id="6fx930y9OVM" role="2OqNvi">
                    <node concept="1bVj0M" id="6fx930y9OVN" role="23t8la">
                      <node concept="3clFbS" id="6fx930y9OVO" role="1bW5cS">
                        <node concept="3clFbF" id="6fx930y9OVP" role="3cqZAp">
                          <node concept="1rXfSq" id="1B5M0L_rfu6" role="3clFbG">
                            <ref role="37wK5l" node="1B5M0L_oIMA" resolve="getModuleReference" />
                            <node concept="37vLTw" id="1B5M0L_rhFt" role="37wK5m">
                              <ref role="3cqZAo" node="6fx930y9OVY" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6fx930y9OVY" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6fx930y9OVZ" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6fx930y9OW0" role="2Oq$k0">
                    <node concept="3Tsc0h" id="6fx930y9OW1" role="2OqNvi">
                      <ref role="3TtcxE" to="e4tq:444ZSQ068oQ" />
                    </node>
                    <node concept="37vLTw" id="6fx930y9OW2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="6fx930y9LP2" role="1tU5fm">
              <node concept="3uibUv" id="6fx930y9M8L" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930y9YLz" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930yacp_" role="3clFbG">
            <node concept="2es0OD" id="6fx930yadac" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930yadae" role="23t8la">
                <node concept="3clFbS" id="6fx930yadaf" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930yadIP" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930yafxl" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_no3m" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930yag9j" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.deleteLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="deleteLanguage" />
                        <node concept="37vLTw" id="6fx930yagHX" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930yadag" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930yadag" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930yadah" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6fx930ya9Y5" role="2Oq$k0">
              <node concept="37vLTw" id="70HGkdL$LST" role="2Oq$k0">
                <ref role="3cqZAo" node="70HGkdL$ccm" resolve="oldImpLang" />
              </node>
              <node concept="66VNe" id="6fx930yaaHb" role="2OqNvi">
                <node concept="37vLTw" id="6fx930yabfT" role="576Qk">
                  <ref role="3cqZAo" node="6fx930y9LP9" resolve="impLang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930y9Q1U" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930y9SHQ" role="3clFbG">
            <node concept="2OqwBi" id="6fx930y9QY9" role="2Oq$k0">
              <node concept="66VNe" id="6fx930y9RD6" role="2OqNvi">
                <node concept="37vLTw" id="70HGkdL$OC1" role="576Qk">
                  <ref role="3cqZAo" node="70HGkdL$ccm" resolve="oldImpLang" />
                </node>
              </node>
              <node concept="37vLTw" id="6fx930y9Q1T" role="2Oq$k0">
                <ref role="3cqZAo" node="6fx930y9LP9" resolve="impLang" />
              </node>
            </node>
            <node concept="2es0OD" id="6fx930y9T3K" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930y9T3L" role="23t8la">
                <node concept="3clFbS" id="6fx930y9T3M" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930y9T3N" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930y9T3O" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nqTQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930y9T3P" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.addLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addLanguage" />
                        <node concept="37vLTw" id="6fx930y9T3Q" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930y9T3T" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930y9T3T" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930y9T3U" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6fx930y9UAh" role="3cqZAp" />
        <node concept="3cpWs8" id="70HGkdL_lgV" role="3cqZAp">
          <node concept="3cpWsn" id="70HGkdL_lgY" role="3cpWs9">
            <property role="TrG5h" value="oldGenLang" />
            <node concept="2ShNRf" id="70HGkdL_lrl" role="33vP2m">
              <node concept="32HrFt" id="70HGkdL_lri" role="2ShVmc">
                <node concept="2OqwBi" id="70HGkdL_lIz" role="I$8f6">
                  <node concept="37vLTw" id="1B5M0L_ntPi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                  </node>
                  <node concept="liA8E" id="70HGkdL_lYQ" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~SModelDescriptorStub.engagedOnGenerationLanguages():java.util.List" resolve="engagedOnGenerationLanguages" />
                  </node>
                </node>
                <node concept="3uibUv" id="70HGkdL_lrj" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="70HGkdL_lgR" role="1tU5fm">
              <node concept="3uibUv" id="70HGkdL_lmt" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fx930yaiui" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930yaiuj" role="3cpWs9">
            <property role="TrG5h" value="genLang" />
            <node concept="2ShNRf" id="6fx930yaiuk" role="33vP2m">
              <node concept="32HrFt" id="6fx930yaiul" role="2ShVmc">
                <node concept="3uibUv" id="6fx930yaium" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2OqwBi" id="6fx930yaiun" role="I$8f6">
                  <node concept="3$u5V9" id="6fx930yaiuo" role="2OqNvi">
                    <node concept="1bVj0M" id="6fx930yaiup" role="23t8la">
                      <node concept="3clFbS" id="6fx930yaiuq" role="1bW5cS">
                        <node concept="3clFbF" id="6fx930yaiur" role="3cqZAp">
                          <node concept="1rXfSq" id="1B5M0L_p2eM" role="3clFbG">
                            <ref role="37wK5l" node="1B5M0L_oIMA" resolve="getModuleReference" />
                            <node concept="37vLTw" id="1B5M0L_pvds" role="37wK5m">
                              <ref role="3cqZAo" node="6fx930yaiu$" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6fx930yaiu$" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6fx930yaiu_" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6fx930yaiuA" role="2Oq$k0">
                    <node concept="3Tsc0h" id="6fx930yal4O" role="2OqNvi">
                      <ref role="3TtcxE" to="e4tq:444ZSQ068oS" />
                    </node>
                    <node concept="37vLTw" id="6fx930yaiuC" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="6fx930yaiuD" role="1tU5fm">
              <node concept="3uibUv" id="6fx930yaiuE" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930yaiuF" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930yaiuG" role="3clFbG">
            <node concept="2es0OD" id="6fx930yaiuH" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930yaiuI" role="23t8la">
                <node concept="3clFbS" id="6fx930yaiuJ" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930yaiuK" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930yaiuL" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nx3g" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930yaiuM" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.removeEngagedOnGenerationLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="removeEngagedOnGenerationLanguage" />
                        <node concept="37vLTw" id="6fx930yaiuN" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930yaiuQ" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930yaiuQ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930yaiuR" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6fx930yaiuS" role="2Oq$k0">
              <node concept="37vLTw" id="70HGkdL_ncp" role="2Oq$k0">
                <ref role="3cqZAo" node="70HGkdL_lgY" resolve="oldGenLang" />
              </node>
              <node concept="66VNe" id="6fx930yaiuT" role="2OqNvi">
                <node concept="37vLTw" id="6fx930yamBk" role="576Qk">
                  <ref role="3cqZAo" node="6fx930yaiuj" resolve="genLang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930yaiv4" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930yaiv5" role="3clFbG">
            <node concept="2OqwBi" id="6fx930yaiv6" role="2Oq$k0">
              <node concept="37vLTw" id="6fx930yaWYg" role="2Oq$k0">
                <ref role="3cqZAo" node="6fx930yaiuj" resolve="genLang" />
              </node>
              <node concept="66VNe" id="6fx930yaiv7" role="2OqNvi">
                <node concept="37vLTw" id="70HGkdL_p9T" role="576Qk">
                  <ref role="3cqZAo" node="70HGkdL_lgY" resolve="oldGenLang" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="6fx930yaivd" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930yaive" role="23t8la">
                <node concept="3clFbS" id="6fx930yaivf" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930yaivg" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930yaivh" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_n$bK" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930yaivi" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.addEngagedOnGenerationLanguage(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addEngagedOnGenerationLanguage" />
                        <node concept="37vLTw" id="6fx930yaivj" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930yaivm" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930yaivm" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930yaivn" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6fx930yaivo" role="3cqZAp" />
        <node concept="3cpWs8" id="70HGkdL_zjA" role="3cqZAp">
          <node concept="3cpWsn" id="70HGkdL_zjD" role="3cpWs9">
            <property role="TrG5h" value="oldDevkit" />
            <node concept="2ShNRf" id="70HGkdL_ztv" role="33vP2m">
              <node concept="32HrFt" id="70HGkdL_zts" role="2ShVmc">
                <node concept="2OqwBi" id="70HGkdL_zK_" role="I$8f6">
                  <node concept="37vLTw" id="1B5M0L_nBqo" role="2Oq$k0">
                    <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                  </node>
                  <node concept="liA8E" id="70HGkdL_$fg" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedDevkits():java.util.List" resolve="importedDevkits" />
                  </node>
                </node>
                <node concept="3uibUv" id="70HGkdL_ztt" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="70HGkdL_zjy" role="1tU5fm">
              <node concept="3uibUv" id="70HGkdL_zp8" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fx930yapda" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930yapdb" role="3cpWs9">
            <property role="TrG5h" value="devkit" />
            <node concept="2ShNRf" id="6fx930yapdc" role="33vP2m">
              <node concept="32HrFt" id="6fx930yapdd" role="2ShVmc">
                <node concept="3uibUv" id="6fx930yapde" role="HW$YZ">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
                <node concept="2OqwBi" id="6fx930yapdf" role="I$8f6">
                  <node concept="3$u5V9" id="6fx930yapdg" role="2OqNvi">
                    <node concept="1bVj0M" id="6fx930yapdh" role="23t8la">
                      <node concept="3clFbS" id="6fx930yapdi" role="1bW5cS">
                        <node concept="3clFbF" id="1B5M0L_r99o" role="3cqZAp">
                          <node concept="1rXfSq" id="1B5M0L_r99n" role="3clFbG">
                            <ref role="37wK5l" node="1B5M0L_oIMA" resolve="getModuleReference" />
                            <node concept="37vLTw" id="1B5M0L_rbbk" role="37wK5m">
                              <ref role="3cqZAo" node="6fx930yapds" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6fx930yapds" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6fx930yapdt" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6fx930yapdu" role="2Oq$k0">
                    <node concept="3Tsc0h" id="6fx930yarZX" role="2OqNvi">
                      <ref role="3TtcxE" to="e4tq:444ZSQ068oV" />
                    </node>
                    <node concept="37vLTw" id="6fx930yapdw" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="6fx930yapdx" role="1tU5fm">
              <node concept="3uibUv" id="6fx930yapdy" role="2hN53Y">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930yapdz" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930yapd$" role="3clFbG">
            <node concept="2es0OD" id="6fx930yapd_" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930yapdA" role="23t8la">
                <node concept="3clFbS" id="6fx930yapdB" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930yapdC" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930yapdD" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nETl" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930yapdE" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.deleteDevKit(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="deleteDevKit" />
                        <node concept="37vLTw" id="6fx930yapdF" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930yapdI" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930yapdI" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930yapdJ" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6fx930yapdK" role="2Oq$k0">
              <node concept="37vLTw" id="70HGkdL__hd" role="2Oq$k0">
                <ref role="3cqZAo" node="70HGkdL_zjD" resolve="oldDevkit" />
              </node>
              <node concept="66VNe" id="6fx930yapdL" role="2OqNvi">
                <node concept="37vLTw" id="6fx930yayUf" role="576Qk">
                  <ref role="3cqZAo" node="6fx930yapdb" resolve="devkit" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930yapdW" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930yapdX" role="3clFbG">
            <node concept="2OqwBi" id="6fx930yapdY" role="2Oq$k0">
              <node concept="37vLTw" id="6fx930yaW7a" role="2Oq$k0">
                <ref role="3cqZAo" node="6fx930yapdb" resolve="devkit" />
              </node>
              <node concept="66VNe" id="6fx930yapdZ" role="2OqNvi">
                <node concept="37vLTw" id="70HGkdL_Abb" role="576Qk">
                  <ref role="3cqZAo" node="70HGkdL_zjD" resolve="oldDevkit" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="6fx930yape5" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930yape6" role="23t8la">
                <node concept="3clFbS" id="6fx930yape7" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930yape8" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930yape9" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nGcg" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930yapea" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.addDevKit(org.jetbrains.mps.openapi.module.SModuleReference):void" resolve="addDevKit" />
                        <node concept="37vLTw" id="6fx930yapeb" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930yapee" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930yapee" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930yapef" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6fx930yapeg" role="3cqZAp" />
        <node concept="3cpWs8" id="6fx930yaYNI" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930yaYNJ" role="3cpWs9">
            <property role="TrG5h" value="oldImports" />
            <node concept="2ShNRf" id="6fx930yaYNK" role="33vP2m">
              <node concept="32HrFt" id="6fx930yaYNL" role="2ShVmc">
                <node concept="3uibUv" id="6fx930yaYNM" role="HW$YZ">
                  <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="6fx930yb2ZN" role="I$8f6">
                  <node concept="3$u5V9" id="6fx930yb2ZO" role="2OqNvi">
                    <node concept="1bVj0M" id="6fx930yb2ZP" role="23t8la">
                      <node concept="3clFbS" id="6fx930yb2ZQ" role="1bW5cS">
                        <node concept="3clFbF" id="6fx930yb2ZR" role="3cqZAp">
                          <node concept="2OqwBi" id="6fx930yb2ZS" role="3clFbG">
                            <node concept="liA8E" id="6fx930yb2ZT" role="2OqNvi">
                              <ref role="37wK5l" to="cu2c:~SModel$ImportElement.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                            </node>
                            <node concept="37vLTw" id="6fx930yb2ZU" role="2Oq$k0">
                              <ref role="3cqZAo" node="6fx930yb2ZV" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6fx930yb2ZV" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6fx930yb2ZW" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="1eOMI4" id="6fx930yb2ZX" role="2Oq$k0">
                    <node concept="10QFUN" id="6fx930yb2ZY" role="1eOMHV">
                      <node concept="1eOMI4" id="6fx930yb2ZZ" role="10QFUP">
                        <node concept="2OqwBi" id="6fx930yb300" role="1eOMHV">
                          <node concept="37vLTw" id="1B5M0L_nJG5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                          </node>
                          <node concept="liA8E" id="6fx930yb301" role="2OqNvi">
                            <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedModels():java.util.List" resolve="importedModels" />
                          </node>
                        </node>
                      </node>
                      <node concept="A3Dl8" id="6fx930yb304" role="10QFUM">
                        <node concept="3uibUv" id="6fx930yb305" role="A3Ik2">
                          <ref role="3uigEE" to="cu2c:~SModel$ImportElement" resolve="SModel.ImportElement" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="6fx930yaYO5" role="1tU5fm">
              <node concept="3uibUv" id="6fx930yaYO6" role="2hN53Y">
                <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6fx930ya_mO" role="3cqZAp">
          <node concept="3cpWsn" id="6fx930ya_mP" role="3cpWs9">
            <property role="TrG5h" value="imports" />
            <node concept="2ShNRf" id="6fx930ya_mQ" role="33vP2m">
              <node concept="32HrFt" id="6fx930ya_mR" role="2ShVmc">
                <node concept="3uibUv" id="6fx930yaKoY" role="HW$YZ">
                  <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="6fx930ya_mT" role="I$8f6">
                  <node concept="3$u5V9" id="6fx930ya_mU" role="2OqNvi">
                    <node concept="1bVj0M" id="6fx930ya_mV" role="23t8la">
                      <node concept="3clFbS" id="6fx930ya_mW" role="1bW5cS">
                        <node concept="3clFbF" id="6fx930ya_mX" role="3cqZAp">
                          <node concept="1rXfSq" id="1B5M0L_qCq9" role="3clFbG">
                            <ref role="37wK5l" node="1B5M0L_oIeL" resolve="getModelReference" />
                            <node concept="37vLTw" id="1B5M0L_qEUl" role="37wK5m">
                              <ref role="3cqZAo" node="6fx930ya_n6" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6fx930ya_n6" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6fx930ya_n7" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6fx930ya_n8" role="2Oq$k0">
                    <node concept="3Tsc0h" id="6fx930yaFhY" role="2OqNvi">
                      <ref role="3TtcxE" to="e4tq:444ZSQ068oZ" />
                    </node>
                    <node concept="37vLTw" id="6fx930ya_na" role="2Oq$k0">
                      <ref role="3cqZAo" node="6fx930y8aKF" resolve="root" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2hMVRd" id="6fx930ya_nb" role="1tU5fm">
              <node concept="3uibUv" id="6fx930yaCwU" role="2hN53Y">
                <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930ya_nd" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930ya_ne" role="3clFbG">
            <node concept="2es0OD" id="6fx930ya_nf" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930ya_ng" role="23t8la">
                <node concept="3clFbS" id="6fx930ya_nh" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930ya_ni" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930ya_nj" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nNhP" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930ya_nk" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.deleteModelImport(org.jetbrains.mps.openapi.model.SModelReference):void" resolve="deleteModelImport" />
                        <node concept="37vLTw" id="6fx930ya_nl" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930ya_no" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930ya_no" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930ya_np" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6fx930ya_nq" role="2Oq$k0">
              <node concept="37vLTw" id="6fx930yb53k" role="2Oq$k0">
                <ref role="3cqZAo" node="6fx930yaYNJ" resolve="oldImports" />
              </node>
              <node concept="66VNe" id="6fx930ya_nr" role="2OqNvi">
                <node concept="37vLTw" id="6fx930yaPT_" role="576Qk">
                  <ref role="3cqZAo" node="6fx930ya_mP" resolve="imports" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6fx930ya_nA" role="3cqZAp">
          <node concept="2OqwBi" id="6fx930ya_nB" role="3clFbG">
            <node concept="2OqwBi" id="6fx930ya_nC" role="2Oq$k0">
              <node concept="37vLTw" id="6fx930yb7OB" role="2Oq$k0">
                <ref role="3cqZAo" node="6fx930ya_mP" resolve="imports" />
              </node>
              <node concept="66VNe" id="6fx930ya_nD" role="2OqNvi">
                <node concept="37vLTw" id="6fx930ybauT" role="576Qk">
                  <ref role="3cqZAo" node="6fx930yaYNJ" resolve="oldImports" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="6fx930ya_nJ" role="2OqNvi">
              <node concept="1bVj0M" id="6fx930ya_nK" role="23t8la">
                <node concept="3clFbS" id="6fx930ya_nL" role="1bW5cS">
                  <node concept="3clFbF" id="6fx930ya_nM" role="3cqZAp">
                    <node concept="2OqwBi" id="6fx930ya_nN" role="3clFbG">
                      <node concept="37vLTw" id="1B5M0L_nOHQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="1B5M0L_mW3J" resolve="modelBase" />
                      </node>
                      <node concept="liA8E" id="6fx930ya_nO" role="2OqNvi">
                        <ref role="37wK5l" to="51te:~SModelDescriptorStub.addModelImport(org.jetbrains.mps.openapi.model.SModelReference,boolean):void" resolve="addModelImport" />
                        <node concept="37vLTw" id="6fx930ya_nP" role="37wK5m">
                          <ref role="3cqZAo" node="6fx930ya_nS" resolve="it" />
                        </node>
                        <node concept="3clFbT" id="6fx930ybeIJ" role="37wK5m">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6fx930ya_nS" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6fx930ya_nT" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7rUTzxrkkxa" role="3cqZAp" />
        <node concept="3clFbF" id="7rUTzxrkf4i" role="3cqZAp">
          <node concept="2OqwBi" id="7rUTzxrkf4k" role="3clFbG">
            <node concept="1eOMI4" id="7rUTzxrkf4l" role="2Oq$k0">
              <node concept="2JrnkZ" id="7rUTzxrkf4m" role="1eOMHV">
                <node concept="10QFUN" id="7rUTzxrkf4n" role="2JrQYb">
                  <node concept="3uibUv" id="7rUTzxrkf4o" role="10QFUM">
                    <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                  </node>
                  <node concept="37vLTw" id="7rUTzxrkf4p" role="10QFUP">
                    <ref role="3cqZAo" node="6fx930y8aCw" resolve="metadataModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7rUTzxrkf4q" role="2OqNvi">
              <ref role="37wK5l" to="ec5l:~EditableSModel.setChanged(boolean):void" resolve="setChanged" />
              <node concept="3clFbT" id="7rUTzxrkne7" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6fx930y8aC3" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="1B5M0L_gv$s" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6fx930y8aCw" role="3clF46">
        <property role="TrG5h" value="metadataModel" />
        <node concept="H_c77" id="1B5M0L_g$wf" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3SMO48GoPfv">
    <property role="TrG5h" value="ModelDifferenceDialog" />
    <node concept="3uibUv" id="3SMO48GC4s9" role="EKbjA">
      <ref role="3uigEE" to="nx1:~DataProvider" resolve="DataProvider" />
    </node>
    <node concept="312cEg" id="3SMO48GoPfw" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="3SMO48GoPfx" role="1tU5fm">
        <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPfy" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48GoPfz" role="jymVt">
      <property role="TrG5h" value="myChangeSet" />
      <node concept="3Tm6S6" id="3SMO48GoPf$" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GoPf_" role="1tU5fm">
        <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48GoPfA" role="jymVt">
      <property role="TrG5h" value="myMetadataChangeSet" />
      <node concept="3uibUv" id="3SMO48GoPfB" role="1tU5fm">
        <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPfC" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48GoPfR" role="jymVt">
      <property role="TrG5h" value="myRootId" />
      <node concept="3uibUv" id="3SMO48HXOh6" role="1tU5fm">
        <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPfT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3SMO48GE0Ee" role="jymVt" />
    <node concept="312cEg" id="3SMO48GoPfD" role="jymVt">
      <property role="TrG5h" value="myTree" />
      <node concept="3uibUv" id="3SMO48GoPfE" role="1tU5fm">
        <ref role="3uigEE" node="3SMO48GoPo0" resolve="ModelDifferenceDialog.ModelDifferenceTree" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPfF" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48GoPfG" role="jymVt">
      <property role="TrG5h" value="myComponent" />
      <node concept="2ShNRf" id="3SMO48GoPfH" role="33vP2m">
        <node concept="1pGfFk" id="3SMO48GoPfI" role="2ShVmc">
          <ref role="37wK5l" to="dbrf:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="3SMO48GoPfJ" role="37wK5m">
            <node concept="1pGfFk" id="3SMO48GoPfK" role="2ShVmc">
              <ref role="37wK5l" to="1t7x:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3SMO48GoPfL" role="1tU5fm">
        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPfM" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="haj_nVE1K4" role="jymVt">
      <property role="TrG5h" value="myPanel" />
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="haj_nVE7F4" role="33vP2m">
        <node concept="1pGfFk" id="haj_nVE7F3" role="2ShVmc">
          <ref role="37wK5l" to="ayyu:~JBSplitter.&lt;init&gt;(boolean,float)" resolve="JBSplitter" />
          <node concept="3clFbT" id="haj_nVEi_w" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="2$xPTn" id="3UY41VCYhNy" role="37wK5m">
            <property role="2$xPTl" value="0.25f" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="haj_nVDVJg" role="1B3o_S" />
      <node concept="3uibUv" id="haj_nVE1HG" role="1tU5fm">
        <ref role="3uigEE" to="ayyu:~JBSplitter" resolve="JBSplitter" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48GEdYQ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myRootDifferencePane" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="10Nm6u" id="3SMO48GEise" role="33vP2m" />
      <node concept="3Tm6S6" id="3SMO48GE9uA" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GEdSB" role="1tU5fm">
        <ref role="3uigEE" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
      </node>
    </node>
    <node concept="312cEg" id="65pnlFBLni3" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNoRootPanel" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="65pnlFBLtux" role="1tU5fm">
        <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2ShNRf" id="65pnlFBLt2$" role="33vP2m">
        <node concept="1pGfFk" id="65pnlFBLt2z" role="2ShVmc">
          <ref role="37wK5l" to="dbrf:~JLabel.&lt;init&gt;(java.lang.String,int)" resolve="JLabel" />
          <node concept="Xl_RD" id="7osrB1KwWEq" role="37wK5m">
            <property role="Xl_RC" value="Select root to show" />
          </node>
          <node concept="10M0yZ" id="7rEFA4R5n8U" role="37wK5m">
            <ref role="1PxDUh" to="dbrf:~SwingConstants" resolve="SwingConstants" />
            <ref role="3cqZAo" to="dbrf:~SwingConstants.CENTER" resolve="CENTER" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="65pnlFBLhvQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48GG57P" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myToolbar" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3SMO48GG57Q" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GG57R" role="1tU5fm">
        <ref role="3uigEE" to="nx1:~ActionToolbar" resolve="ActionToolbar" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48GG57S" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStatusBar" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="haj_nVCouU" role="33vP2m">
        <node concept="1pGfFk" id="haj_nVCouT" role="2ShVmc">
          <ref role="37wK5l" to="bcbw:~DiffStatusBar.&lt;init&gt;(java.util.List)" resolve="DiffStatusBar" />
          <node concept="10M0yZ" id="haj_nVCuHr" role="37wK5m">
            <ref role="3cqZAo" to="6et3:~TextDiffType.DIFF_TYPES" resolve="DIFF_TYPES" />
            <ref role="1PxDUh" to="6et3:~TextDiffType" resolve="TextDiffType" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3SMO48GG57T" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GG57U" role="1tU5fm">
        <ref role="3uigEE" to="bcbw:~DiffStatusBar" resolve="DiffStatusBar" />
      </node>
    </node>
    <node concept="2tJIrI" id="3SMO48GG57V" role="jymVt" />
    <node concept="312cEg" id="3SMO48GGEDr" role="jymVt">
      <property role="TrG5h" value="myActionGroup" />
      <node concept="3uibUv" id="3SMO48GGEDs" role="1tU5fm">
        <ref role="3uigEE" to="nx1:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GGEDt" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="oYcweW9c4e" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myGoToNeighbourRootActions" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="oYcweW9351" role="1B3o_S" />
      <node concept="3uibUv" id="oYcweW9c0r" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
      </node>
    </node>
    <node concept="2tJIrI" id="3SMO48GDuMZ" role="jymVt" />
    <node concept="312cEg" id="3SMO48GoPfU" role="jymVt">
      <property role="TrG5h" value="myContentTitles" />
      <node concept="3Tm6S6" id="3SMO48GoPfV" role="1B3o_S" />
      <node concept="10Q1$e" id="3SMO48GoPfW" role="1tU5fm">
        <node concept="17QB3L" id="3SMO48GoPfX" role="10Q1$1" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48GoPfY" role="jymVt">
      <property role="TrG5h" value="myEditable" />
      <node concept="10P_77" id="3SMO48GoPfZ" role="1tU5fm" />
      <node concept="3Tm6S6" id="3SMO48GoPg0" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4TJ9ZMUj$ZC" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myOldRegistered" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4TJ9ZMUj$ZD" role="1B3o_S" />
      <node concept="10P_77" id="4TJ9ZMUj$ZE" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4TJ9ZMUiLi0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myNewRegistered" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4TJ9ZMUivNb" role="1B3o_S" />
      <node concept="10P_77" id="4TJ9ZMUi$tp" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4TJ9ZMUijeL" role="jymVt" />
    <node concept="3clFbW" id="3SMO48GoPg1" role="jymVt">
      <node concept="37vLTG" id="7ZOzw8M3rdo" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7ZOzw8M3CFb" role="1tU5fm">
          <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48GoPg2" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="H_c77" id="plsJH5HAyn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3SMO48GoPg4" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="H_c77" id="plsJH5HIXE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ZOzw8M1yx9" role="3clF46">
        <property role="TrG5h" value="oldTitle" />
        <node concept="17QB3L" id="7ZOzw8M1M_0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ZOzw8M25Pq" role="3clF46">
        <property role="TrG5h" value="newTitle" />
        <node concept="17QB3L" id="7ZOzw8M29CX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3SMO48GoPg6" role="3clF46">
        <property role="TrG5h" value="diffRequest" />
        <node concept="3uibUv" id="3SMO48GoPg7" role="1tU5fm">
          <ref role="3uigEE" to="xa8l:~DiffRequest" resolve="DiffRequest" />
        </node>
        <node concept="2AHcQZ" id="7ZOzw8M2C2P" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="3SMO48GoPg8" role="3clF47">
        <node concept="XkiVB" id="3SMO48GoPg9" role="3cqZAp">
          <ref role="37wK5l" to="810:~DialogWrapper.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="DialogWrapper" />
          <node concept="37vLTw" id="7ZOzw8M47zi" role="37wK5m">
            <ref role="3cqZAo" node="7ZOzw8M3rdo" resolve="project" />
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GoPgd" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GoPge" role="3clFbG">
            <node concept="37vLTw" id="7ZOzw8M3ZOD" role="37vLTx">
              <ref role="3cqZAo" node="7ZOzw8M3rdo" resolve="project" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuoTn" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfw" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TJ9ZMUldDO" role="3cqZAp">
          <node concept="37vLTI" id="4TJ9ZMUldDP" role="3clFbG">
            <node concept="2YIFZM" id="6E2SOPzrXku" role="37vLTx">
              <ref role="37wK5l" to="unno:4jWopqr7edM" resolve="isRegistered" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="37vLTw" id="plsJH5L7AX" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPg2" resolve="oldModel" />
              </node>
            </node>
            <node concept="37vLTw" id="4TJ9ZMUlpxF" role="37vLTJ">
              <ref role="3cqZAo" node="4TJ9ZMUj$ZC" resolve="myOldRegistered" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TJ9ZMUkbRG" role="3cqZAp">
          <node concept="37vLTI" id="4TJ9ZMUkcbV" role="3clFbG">
            <node concept="37vLTw" id="4TJ9ZMUkrJR" role="37vLTJ">
              <ref role="3cqZAo" node="4TJ9ZMUiLi0" resolve="myNewRegistered" />
            </node>
            <node concept="2YIFZM" id="6E2SOPzscHC" role="37vLTx">
              <ref role="37wK5l" to="unno:4jWopqr7edM" resolve="isRegistered" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="37vLTw" id="plsJH5Lfgc" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GoPgI" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GoPgJ" role="3clFbG">
            <node concept="37vLTw" id="3SMO48GoPgK" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
            </node>
            <node concept="1Wc70l" id="3SMO48GoPgL" role="37vLTx">
              <node concept="37vLTw" id="62K1FKvzvtz" role="3uHU7w">
                <ref role="3cqZAo" node="4TJ9ZMUiLi0" resolve="myNewRegistered" />
              </node>
              <node concept="2ZW3vV" id="3SMO48GoPgM" role="3uHU7B">
                <node concept="37vLTw" id="plsJH5LmSW" role="2ZW6bz">
                  <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
                </node>
                <node concept="3uibUv" id="3SMO48GoPgP" role="2ZW6by">
                  <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="plsJH5RK8W" role="3cqZAp">
          <node concept="3cpWsn" id="plsJH5RK8Z" role="3cpWs9">
            <property role="TrG5h" value="title" />
            <node concept="17QB3L" id="plsJH5RK8U" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEM" id="4Es3mywrtsY" role="3cqZAp">
          <node concept="1QHqEC" id="4Es3mywrtt0" role="1QHqEI">
            <node concept="3clFbS" id="4Es3mywrtt2" role="1bW5cS">
              <node concept="3clFbF" id="plsJH5Sb_D" role="3cqZAp">
                <node concept="37vLTI" id="plsJH5Snat" role="3clFbG">
                  <node concept="2OqwBi" id="plsJH5SIci" role="37vLTx">
                    <node concept="37vLTw" id="plsJH5SEna" role="2Oq$k0">
                      <ref role="3cqZAo" node="3SMO48GoPg2" resolve="oldModel" />
                    </node>
                    <node concept="LkI2h" id="plsJH5SPTh" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="plsJH5Sb_C" role="37vLTJ">
                    <ref role="3cqZAo" node="plsJH5RK8Z" resolve="title" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="plsJH5T5ig" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3clFbS" id="plsJH5T5ij" role="3clFbx">
                  <node concept="3clFbF" id="plsJH5TJ0B" role="3cqZAp">
                    <node concept="37vLTI" id="plsJH5TUAF" role="3clFbG">
                      <node concept="2OqwBi" id="plsJH5U2dz" role="37vLTx">
                        <node concept="37vLTw" id="plsJH5TYo6" role="2Oq$k0">
                          <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
                        </node>
                        <node concept="LkI2h" id="plsJH5U69w" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="plsJH5TJ0A" role="37vLTJ">
                        <ref role="3cqZAo" node="plsJH5RK8Z" resolve="title" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="plsJH5TsF0" role="3clFbw">
                  <node concept="37vLTw" id="plsJH5TspS" role="2Oq$k0">
                    <ref role="3cqZAo" node="plsJH5RK8Z" resolve="title" />
                  </node>
                  <node concept="17RlXB" id="plsJH5TBto" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbH" id="plsJH5VeKX" role="3cqZAp" />
              <node concept="3clFbJ" id="4Es3mywr6Ti" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3fqX7Q" id="62K1FKvA4yI" role="3clFbw">
                  <node concept="37vLTw" id="62K1FKvA4yK" role="3fr31v">
                    <ref role="3cqZAo" node="4TJ9ZMUiLi0" resolve="myNewRegistered" />
                  </node>
                </node>
                <node concept="3clFbS" id="4Es3mywr6Tl" role="3clFbx">
                  <node concept="3clFbF" id="3SMO48GoPgt" role="3cqZAp">
                    <node concept="2YIFZM" id="2v$NtEHnxG1" role="3clFbG">
                      <ref role="37wK5l" to="hdhb:2v$NtEHjiFm" resolve="renameModelAndRegister" />
                      <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                      <node concept="37vLTw" id="plsJH5I8aK" role="37wK5m">
                        <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
                      </node>
                      <node concept="Xl_RD" id="2v$NtEHnxG3" role="37wK5m">
                        <property role="Xl_RC" value="new" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4TJ9ZMUhj5_" role="3cqZAp">
                <property role="TyiWK" value="false" />
                <property role="TyiWL" value="true" />
                <node concept="3fqX7Q" id="62K1FKvAwhz" role="3clFbw">
                  <node concept="37vLTw" id="62K1FKvAwh_" role="3fr31v">
                    <ref role="3cqZAo" node="4TJ9ZMUj$ZC" resolve="myOldRegistered" />
                  </node>
                </node>
                <node concept="3clFbS" id="4TJ9ZMUhj5C" role="3clFbx">
                  <node concept="3clFbF" id="3SMO48GoPgo" role="3cqZAp">
                    <node concept="2YIFZM" id="2v$NtEHmI$W" role="3clFbG">
                      <ref role="37wK5l" to="hdhb:2v$NtEHjiFm" resolve="renameModelAndRegister" />
                      <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                      <node concept="37vLTw" id="plsJH5Ig8Q" role="37wK5m">
                        <ref role="3cqZAo" node="3SMO48GoPg2" resolve="oldModel" />
                      </node>
                      <node concept="Xl_RD" id="2v$NtEHmI$Y" role="37wK5m">
                        <property role="Xl_RC" value="old" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4q1q9Gjy_TW" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4q1q9Gjy_TZ" role="3clFbx">
            <node concept="3clFbF" id="4q1q9GjyHcY" role="3cqZAp">
              <node concept="37vLTI" id="4q1q9GjyHuI" role="3clFbG">
                <node concept="Xl_RD" id="4q1q9GjyHv4" role="37vLTx">
                  <property role="Xl_RC" value="before" />
                </node>
                <node concept="37vLTw" id="4q1q9GjyHcX" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZOzw8M1yx9" resolve="oldTitle" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4q1q9GjyDiH" role="3clFbw">
            <node concept="37vLTw" id="4q1q9GjyCvn" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZOzw8M1yx9" resolve="oldTitle" />
            </node>
            <node concept="17RlXB" id="4q1q9GjyHco" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="4q1q9GjyI5m" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="4q1q9GjyI5n" role="3clFbx">
            <node concept="3clFbF" id="4q1q9GjyI5o" role="3cqZAp">
              <node concept="37vLTI" id="4q1q9GjyI5p" role="3clFbG">
                <node concept="Xl_RD" id="4q1q9GjyI5q" role="37vLTx">
                  <property role="Xl_RC" value="after" />
                </node>
                <node concept="37vLTw" id="4q1q9GjyKNo" role="37vLTJ">
                  <ref role="3cqZAo" node="7ZOzw8M25Pq" resolve="newTitle" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4q1q9GjyI5s" role="3clFbw">
            <node concept="37vLTw" id="4q1q9GjyKMm" role="2Oq$k0">
              <ref role="3cqZAo" node="7ZOzw8M25Pq" resolve="newTitle" />
            </node>
            <node concept="17RlXB" id="4q1q9GjyI5u" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GoPgy" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GoPgz" role="3clFbG">
            <node concept="2ShNRf" id="7ZOzw8M4_zS" role="37vLTx">
              <node concept="3g6Rrh" id="7ZOzw8M4Qn0" role="2ShVmc">
                <node concept="17QB3L" id="7ZOzw8M4_j9" role="3g7fb8" />
                <node concept="37vLTw" id="7ZOzw8M4Yd0" role="3g7hyw">
                  <ref role="3cqZAo" node="7ZOzw8M1yx9" resolve="oldTitle" />
                </node>
                <node concept="37vLTw" id="7ZOzw8M55M_" role="3g7hyw">
                  <ref role="3cqZAo" node="7ZOzw8M25Pq" resolve="newTitle" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuyl2" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfU" resolve="myContentTitles" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="3SMO48GoPgC" role="3cqZAp">
          <node concept="3clFbC" id="3SMO48GoPgD" role="1gVkn0">
            <node concept="2OqwBi" id="3SMO48GoPgE" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuPIY" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48GoPfU" resolve="myContentTitles" />
              </node>
              <node concept="1Rwk04" id="3SMO48GoPgG" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="3SMO48GoPgH" role="3uHU7w">
              <property role="3cmrfH" value="2" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6DwKVohJUoD" role="3cqZAp" />
        <node concept="1QHqEK" id="3SMO48GoPgY" role="3cqZAp">
          <node concept="1QHqEC" id="3SMO48GoPgZ" role="1QHqEI">
            <node concept="3clFbS" id="3SMO48GoPh0" role="1bW5cS">
              <node concept="3clFbF" id="3SMO48GoPh1" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyyI67" role="3clFbG">
                  <ref role="37wK5l" to="810:~DialogWrapper.setTitle(java.lang.String):void" resolve="setTitle" />
                  <node concept="3cpWs3" id="3SMO48GoPh3" role="37wK5m">
                    <node concept="37vLTw" id="plsJH5UVt$" role="3uHU7w">
                      <ref role="3cqZAo" node="plsJH5RK8Z" resolve="title" />
                    </node>
                    <node concept="Xl_RD" id="3SMO48GoPh9" role="3uHU7B">
                      <property role="Xl_RC" value="Difference for model: " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3SMO48GoPha" role="3cqZAp">
                <node concept="37vLTI" id="3SMO48GoPhb" role="3clFbG">
                  <node concept="2YIFZM" id="3SMO48GoPhc" role="37vLTx">
                    <ref role="37wK5l" to="bfxj:42hl10VHbuO" resolve="buildChangeSet" />
                    <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
                    <node concept="37vLTw" id="plsJH5Kxh7" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPg2" resolve="oldModel" />
                    </node>
                    <node concept="37vLTw" id="plsJH5KCYR" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
                    </node>
                    <node concept="3clFbT" id="3SMO48GoPhf" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxeufCq" role="37vLTJ">
                    <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEM" id="2yL_twwPorl" role="3cqZAp">
          <node concept="1QHqEC" id="2yL_twwPorm" role="1QHqEI">
            <node concept="3clFbS" id="2yL_twwPorn" role="1bW5cS">
              <node concept="3cpWs8" id="3SMO48GoPhu" role="3cqZAp">
                <node concept="3cpWsn" id="3SMO48GoPhv" role="3cpWs9">
                  <property role="TrG5h" value="newMetaModel" />
                  <node concept="2YIFZM" id="3SMO48GoPhw" role="33vP2m">
                    <ref role="1Pybhc" node="444ZSQ06W$a" resolve="MetadataUtil" />
                    <ref role="37wK5l" node="6TJYyPqxMdD" resolve="createMetadataModel" />
                    <node concept="37vLTw" id="plsJH5KSkf" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPg4" resolve="newModel" />
                    </node>
                    <node concept="Xl_RD" id="2yL_twwKF1E" role="37wK5m">
                      <property role="Xl_RC" value="metadata_new" />
                    </node>
                    <node concept="37vLTw" id="1B5M0L_trvp" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
                    </node>
                  </node>
                  <node concept="H_c77" id="1B5M0L_s7zE" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cpWs8" id="3SMO48GoPhp" role="3cqZAp">
                <node concept="3cpWsn" id="3SMO48GoPhq" role="3cpWs9">
                  <property role="TrG5h" value="oldMetaModel" />
                  <node concept="2YIFZM" id="3SMO48GoPhr" role="33vP2m">
                    <ref role="1Pybhc" node="444ZSQ06W$a" resolve="MetadataUtil" />
                    <ref role="37wK5l" node="6TJYyPqxMdD" resolve="createMetadataModel" />
                    <node concept="37vLTw" id="plsJH5KZZH" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPg2" resolve="oldModel" />
                    </node>
                    <node concept="Xl_RD" id="2yL_twwLe$c" role="37wK5m">
                      <property role="Xl_RC" value="metadata_old" />
                    </node>
                    <node concept="3clFbT" id="1B5M0L_tJ2m" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                  <node concept="H_c77" id="1B5M0L_rZFg" role="1tU5fm" />
                </node>
              </node>
              <node concept="3clFbF" id="3SMO48GoPhI" role="3cqZAp">
                <node concept="37vLTI" id="3SMO48GoPhJ" role="3clFbG">
                  <node concept="2YIFZM" id="3SMO48GoPhK" role="37vLTx">
                    <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
                    <ref role="37wK5l" to="bfxj:42hl10VHbuO" resolve="buildChangeSet" />
                    <node concept="37vLTw" id="3SMO48GoPhL" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPhq" resolve="oldMetaModel" />
                    </node>
                    <node concept="37vLTw" id="3SMO48GoPhM" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPhv" resolve="newMetaModel" />
                    </node>
                    <node concept="3clFbT" id="3SMO48GoPhN" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="3SMO48GoPhO" role="37vLTJ">
                    <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48GT4dp" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48GH0mB" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GI4tV" role="3clFbG">
            <node concept="37vLTw" id="3SMO48GH0mF" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
            </node>
            <node concept="2ShNRf" id="6z2l4wbdkU3" role="37vLTx">
              <node concept="1pGfFk" id="6z2l4wbdu5o" role="2ShVmc">
                <ref role="37wK5l" to="nx1:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6z2l4wbdJt5" role="3cqZAp">
          <node concept="3clFbS" id="6z2l4wbdJt8" role="3clFbx">
            <node concept="3clFbF" id="6z2l4wbc$aZ" role="3cqZAp">
              <node concept="2OqwBi" id="6z2l4wbcHm0" role="3clFbG">
                <node concept="37vLTw" id="6z2l4wbc$aY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
                </node>
                <node concept="liA8E" id="6z2l4wbcXb$" role="2OqNvi">
                  <ref role="37wK5l" to="nx1:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction):void" resolve="add" />
                  <node concept="2ShNRf" id="6z2l4wbd53I" role="37wK5m">
                    <node concept="1pGfFk" id="6z2l4wbd53J" role="2ShVmc">
                      <ref role="37wK5l" to="hdhb:7$NO6fvW2BQ" resolve="InvokeTextDiffAction" />
                      <node concept="Xl_RD" id="6z2l4wbd53K" role="37wK5m">
                        <property role="Xl_RC" value="View as Text" />
                      </node>
                      <node concept="Xl_RD" id="6z2l4wbd53L" role="37wK5m">
                        <property role="Xl_RC" value="View model difference using as text difference of XML contents" />
                      </node>
                      <node concept="Xjq3P" id="6z2l4wbd53M" role="37wK5m" />
                      <node concept="37vLTw" id="2BHiRxglJWy" role="37wK5m">
                        <ref role="3cqZAo" node="3SMO48GoPg6" resolve="diffRequest" />
                      </node>
                      <node concept="2OqwBi" id="6z2l4wbd53O" role="37wK5m">
                        <node concept="2YIFZM" id="6z2l4wbd53P" role="2Oq$k0">
                          <ref role="37wK5l" to="xa8l:~DiffManager.getInstance():com.intellij.openapi.diff.DiffManager" resolve="getInstance" />
                          <ref role="1Pybhc" to="xa8l:~DiffManager" resolve="DiffManager" />
                        </node>
                        <node concept="liA8E" id="6z2l4wbd53Q" role="2OqNvi">
                          <ref role="37wK5l" to="xa8l:~DiffManager.getIdeaDiffTool():com.intellij.openapi.diff.DiffTool" resolve="getIdeaDiffTool" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6z2l4wberhY" role="3clFbw">
            <node concept="10Nm6u" id="6z2l4wberin" role="3uHU7w" />
            <node concept="37vLTw" id="6z2l4wbe2ol" role="3uHU7B">
              <ref role="3cqZAo" node="3SMO48GoPg6" resolve="diffRequest" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48GoPiT" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48GoPiU" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeG8" role="3clFbG">
            <ref role="37wK5l" to="810:~DialogWrapper.init():void" resolve="init" />
          </node>
        </node>
        <node concept="3clFbH" id="2fdFstzB2T1" role="3cqZAp" />
        <node concept="3clFbF" id="2fdFstzBu_X" role="3cqZAp">
          <node concept="2OqwBi" id="2fdFstzByl2" role="3clFbG">
            <node concept="liA8E" id="2fdFstzBBhs" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Window.addWindowListener(java.awt.event.WindowListener):void" resolve="addWindowListener" />
              <node concept="2ShNRf" id="2fdFstzBCL4" role="37wK5m">
                <node concept="YeOm9" id="2fdFstzBYFE" role="2ShVmc">
                  <node concept="1Y3b0j" id="2fdFstzBYFH" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="8q6x:~WindowAdapter" resolve="WindowAdapter" />
                    <ref role="37wK5l" to="8q6x:~WindowAdapter.&lt;init&gt;()" resolve="WindowAdapter" />
                    <node concept="3Tm1VV" id="2fdFstzBYFI" role="1B3o_S" />
                    <node concept="3clFb_" id="2fdFstzC1Cv" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="windowClosed" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="2fdFstzC1Cw" role="1B3o_S" />
                      <node concept="3cqZAl" id="2fdFstzC1Cy" role="3clF45" />
                      <node concept="37vLTG" id="2fdFstzC1Cz" role="3clF46">
                        <property role="TrG5h" value="event" />
                        <node concept="3uibUv" id="2fdFstzC1C$" role="1tU5fm">
                          <ref role="3uigEE" to="8q6x:~WindowEvent" resolve="WindowEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2fdFstzC1CA" role="3clF47">
                        <node concept="3clFbF" id="2fdFstzCmyE" role="3cqZAp">
                          <node concept="1rXfSq" id="2fdFstzCmyD" role="3clFbG">
                            <ref role="37wK5l" node="haj_nYk5jz" resolve="syncMetadataChanges" />
                          </node>
                        </node>
                        <node concept="1QHqEM" id="3mugZP1s44f" role="3cqZAp">
                          <node concept="1QHqEC" id="3mugZP1s44g" role="1QHqEI">
                            <node concept="3clFbS" id="3mugZP1s44h" role="1bW5cS">
                              <node concept="3clFbF" id="1B5M0L_unAj" role="3cqZAp">
                                <node concept="2YIFZM" id="1B5M0L_uvhc" role="3clFbG">
                                  <ref role="1Pybhc" node="444ZSQ06W$a" resolve="MetadataUtil" />
                                  <ref role="37wK5l" node="1B5M0L_ud2d" resolve="dispose" />
                                  <node concept="2OqwBi" id="1B5M0L_uAX9" role="37wK5m">
                                    <node concept="liA8E" id="1B5M0L_uAXa" role="2OqNvi">
                                      <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                                    </node>
                                    <node concept="37vLTw" id="1B5M0L_uAXb" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="1B5M0L_uMCl" role="3cqZAp">
                                <node concept="2YIFZM" id="1B5M0L_uMCm" role="3clFbG">
                                  <ref role="1Pybhc" node="444ZSQ06W$a" resolve="MetadataUtil" />
                                  <ref role="37wK5l" node="1B5M0L_ud2d" resolve="dispose" />
                                  <node concept="2OqwBi" id="1B5M0L_uMCn" role="37wK5m">
                                    <node concept="liA8E" id="1B5M0L_uMCo" role="2OqNvi">
                                      <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                                    </node>
                                    <node concept="37vLTw" id="1B5M0L_uMCp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="4TJ9ZMUmPqt" role="3cqZAp">
                                <property role="TyiWK" value="false" />
                                <property role="TyiWL" value="true" />
                                <node concept="3fqX7Q" id="62K1FKvBjP0" role="3clFbw">
                                  <node concept="37vLTw" id="62K1FKvBjP2" role="3fr31v">
                                    <ref role="3cqZAo" node="4TJ9ZMUj$ZC" resolve="myOldRegistered" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="4TJ9ZMUmPqw" role="3clFbx">
                                  <node concept="3clFbF" id="3mugZP1s44i" role="3cqZAp">
                                    <node concept="2YIFZM" id="3mugZP1s44j" role="3clFbG">
                                      <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                                      <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                                      <node concept="2OqwBi" id="3mugZP1s44l" role="37wK5m">
                                        <node concept="37vLTw" id="3mugZP1s5Tt" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                                        </node>
                                        <node concept="liA8E" id="3mugZP1s44m" role="2OqNvi">
                                          <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="4Es3mywrixt" role="3cqZAp">
                                <property role="TyiWK" value="false" />
                                <property role="TyiWL" value="true" />
                                <node concept="3fqX7Q" id="62K1FKvBNMJ" role="3clFbw">
                                  <node concept="37vLTw" id="62K1FKvBNML" role="3fr31v">
                                    <ref role="3cqZAo" node="4TJ9ZMUiLi0" resolve="myNewRegistered" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="4Es3mywrixw" role="3clFbx">
                                  <node concept="3clFbF" id="3mugZP1s44q" role="3cqZAp">
                                    <node concept="2YIFZM" id="3mugZP1s44r" role="3clFbG">
                                      <ref role="1Pybhc" to="hdhb:42hl10VHaSb" resolve="DiffModelUtil" />
                                      <ref role="37wK5l" to="hdhb:2v$NtEHjyyk" resolve="unregisterModel" />
                                      <node concept="2OqwBi" id="3mugZP1s44u" role="37wK5m">
                                        <node concept="37vLTw" id="3mugZP1s7A3" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                                        </node>
                                        <node concept="liA8E" id="3mugZP1s44v" role="2OqNvi">
                                          <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2fdFstzCahJ" role="3cqZAp">
                          <node concept="2OqwBi" id="2fdFstzCceN" role="3clFbG">
                            <node concept="liA8E" id="2fdFstzCir0" role="2OqNvi">
                              <ref role="37wK5l" to="1t7x:~Window.removeWindowListener(java.awt.event.WindowListener):void" resolve="removeWindowListener" />
                              <node concept="Xjq3P" id="2fdFstzCjLQ" role="37wK5m" />
                            </node>
                            <node concept="1rXfSq" id="2fdFstzCahI" role="2Oq$k0">
                              <ref role="37wK5l" to="810:~DialogWrapper.getWindow():java.awt.Window" resolve="getWindow" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2fdFstzC1CB" role="2AJF6D">
                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="2fdFstzBu_W" role="2Oq$k0">
              <ref role="37wK5l" to="810:~DialogWrapper.getWindow():java.awt.Window" resolve="getWindow" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48GoPiW" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48GoPiX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5BHMdu2s3ki" role="jymVt" />
    <node concept="3clFb_" id="3SMO48GoPjs" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createCenterPanel" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SMO48GoPjt" role="3clF47">
        <node concept="3clFbF" id="5cMoKghwDjP" role="3cqZAp">
          <node concept="2OqwBi" id="5cMoKghwGYU" role="3clFbG">
            <node concept="liA8E" id="5cMoKghx1sd" role="2OqNvi">
              <ref role="37wK5l" to="ayyu:~JBSplitter.setSplitterProportionKey(java.lang.String):void" resolve="setSplitterProportionKey" />
              <node concept="3cpWs3" id="5cMoKghxDIa" role="37wK5m">
                <node concept="Xl_RD" id="5cMoKghxDIk" role="3uHU7w">
                  <property role="Xl_RC" value="ModelTreeSplitter" />
                </node>
                <node concept="2OqwBi" id="5cMoKghxlHU" role="3uHU7B">
                  <node concept="1rXfSq" id="5cMoKghxzpK" role="2Oq$k0">
                    <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="5cMoKghxslg" role="2OqNvi">
                    <ref role="37wK5l" to="e2lb:~Class.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5cMoKghwDjO" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BHMdu2u71m" role="3cqZAp">
          <node concept="37vLTI" id="5BHMdu2u71n" role="3clFbG">
            <node concept="2ShNRf" id="5BHMdu2u71o" role="37vLTx">
              <node concept="1pGfFk" id="5BHMdu2u71p" role="2ShVmc">
                <ref role="37wK5l" node="3SMO48GoPo1" resolve="ModelDifferenceDialog.ModelDifferenceTree" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuSvg" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BHMdu2u71r" role="3cqZAp">
          <node concept="2OqwBi" id="5BHMdu2u71s" role="3clFbG">
            <node concept="liA8E" id="5BHMdu2u71t" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setFirstComponent(javax.swing.JComponent):void" resolve="setFirstComponent" />
              <node concept="2YIFZM" id="5BHMdu2u71u" role="37wK5m">
                <ref role="37wK5l" to="ayyu:~ScrollPaneFactory.createScrollPane(java.awt.Component):javax.swing.JScrollPane" resolve="createScrollPane" />
                <ref role="1Pybhc" to="ayyu:~ScrollPaneFactory" resolve="ScrollPaneFactory" />
                <node concept="37vLTw" id="2BHiRxeuoNY" role="37wK5m">
                  <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5BHMdu2u71w" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65pnlFBLB2Q" role="3cqZAp">
          <node concept="2OqwBi" id="65pnlFBLB2R" role="3clFbG">
            <node concept="liA8E" id="65pnlFBLB2S" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setSecondComponent(javax.swing.JComponent):void" resolve="setSecondComponent" />
              <node concept="37vLTw" id="65pnlFBLB2T" role="37wK5m">
                <ref role="3cqZAo" node="65pnlFBLni3" resolve="myNoRootPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="65pnlFBLB2U" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BHMdu2u71J" role="3cqZAp" />
        <node concept="3clFbF" id="oYcweW9s_b" role="3cqZAp">
          <node concept="37vLTI" id="oYcweW9Buh" role="3clFbG">
            <node concept="37vLTw" id="oYcweW9s_a" role="37vLTJ">
              <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
            </node>
            <node concept="2ShNRf" id="oYcweW9IHr" role="37vLTx">
              <node concept="1pGfFk" id="oYcweW9IHs" role="2ShVmc">
                <ref role="37wK5l" node="3SMO48GoPnB" resolve="ModelDifferenceDialog.MyGoToNeighbourRootActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gc0uWWtbna" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWtp_F" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWtyH8" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWtAGD" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfWew" resolve="PREV_ROOT_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="6gc0uWWtKPq" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="6gc0uWWteZx" role="2Oq$k0">
              <node concept="37vLTw" id="oYcweWb1RS" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
              <node concept="liA8E" id="6gc0uWWtlLY" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb3S" resolve="previous" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gc0uWWtP0o" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWtP0p" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWtP0q" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWtP0r" role="37wK5m">
                <ref role="3cqZAo" to="hdhb:6gc0uWWfPCL" resolve="NEXT_ROOT_SHORTCUT" />
                <ref role="1PxDUh" to="hdhb:42hl10VHb20" resolve="GoToNeighbourRootActions" />
              </node>
              <node concept="37vLTw" id="6gc0uWWtP0s" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="6gc0uWWtP0t" role="2Oq$k0">
              <node concept="37vLTw" id="oYcweWb5zU" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
              <node concept="liA8E" id="6gc0uWWtP0u" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb40" resolve="next" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4IUmW1QtmYQ" role="3cqZAp" />
        <node concept="3clFbF" id="5BHMdu2u71K" role="3cqZAp">
          <node concept="37vLTI" id="5BHMdu2u71L" role="3clFbG">
            <node concept="37vLTw" id="5BHMdu2u71M" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GG57P" resolve="myToolbar" />
            </node>
            <node concept="2OqwBi" id="5BHMdu2u71N" role="37vLTx">
              <node concept="liA8E" id="5BHMdu2u71O" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean):com.intellij.openapi.actionSystem.ActionToolbar" resolve="createActionToolbar" />
                <node concept="10M0yZ" id="5BHMdu2u71P" role="37wK5m">
                  <ref role="1PxDUh" to="nx1:~ActionPlaces" resolve="ActionPlaces" />
                  <ref role="3cqZAo" to="nx1:~ActionPlaces.UNKNOWN" resolve="UNKNOWN" />
                </node>
                <node concept="37vLTw" id="5BHMdu2u71Q" role="37wK5m">
                  <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
                </node>
                <node concept="3clFbT" id="5BHMdu2u71R" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
              <node concept="2YIFZM" id="5BHMdu2u71S" role="2Oq$k0">
                <ref role="1Pybhc" to="nx1:~ActionManager" resolve="ActionManager" />
                <ref role="37wK5l" to="nx1:~ActionManager.getInstance():com.intellij.openapi.actionSystem.ActionManager" resolve="getInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BHMdu2u71W" role="3cqZAp">
          <node concept="2OqwBi" id="5BHMdu2u71X" role="3clFbG">
            <node concept="37vLTw" id="5BHMdu2u71Y" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GG57P" resolve="myToolbar" />
            </node>
            <node concept="liA8E" id="5BHMdu2u71Z" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~ActionToolbar.updateActionsImmediately():void" resolve="updateActionsImmediately" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BHMdu2u720" role="3cqZAp" />
        <node concept="3clFbF" id="5BHMdu2u721" role="3cqZAp">
          <node concept="2OqwBi" id="5BHMdu2u722" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumRk" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="5BHMdu2u724" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5BHMdu2u725" role="37wK5m">
                <node concept="37vLTw" id="5BHMdu2u726" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GG57P" resolve="myToolbar" />
                </node>
                <node concept="liA8E" id="5BHMdu2u727" role="2OqNvi">
                  <ref role="37wK5l" to="nx1:~ActionToolbar.getComponent():javax.swing.JComponent" resolve="getComponent" />
                </node>
              </node>
              <node concept="10M0yZ" id="5BHMdu2u728" role="37wK5m">
                <ref role="1PxDUh" to="1t7x:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="1t7x:~BorderLayout.NORTH" resolve="NORTH" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BHMdu2u72a" role="3cqZAp">
          <node concept="2OqwBi" id="5BHMdu2u72b" role="3clFbG">
            <node concept="liA8E" id="5BHMdu2u72c" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="5BHMdu2u72d" role="37wK5m">
                <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
              </node>
              <node concept="10M0yZ" id="5BHMdu2u72e" role="37wK5m">
                <ref role="3cqZAo" to="1t7x:~BorderLayout.CENTER" resolve="CENTER" />
                <ref role="1PxDUh" to="1t7x:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
            <node concept="37vLTw" id="5BHMdu2u72f" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5BHMdu2u72h" role="3cqZAp">
          <node concept="2OqwBi" id="5BHMdu2u72i" role="3clFbG">
            <node concept="liA8E" id="5BHMdu2u72j" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="5BHMdu2u72k" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GG57S" resolve="myStatusBar" />
              </node>
              <node concept="10M0yZ" id="5BHMdu2u72l" role="37wK5m">
                <ref role="1PxDUh" to="1t7x:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="1t7x:~BorderLayout.SOUTH" resolve="SOUTH" />
              </node>
            </node>
            <node concept="37vLTw" id="5BHMdu2u72m" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BHMdu2v$2U" role="3cqZAp" />
        <node concept="3cpWs8" id="5BHMdu2u72o" role="3cqZAp">
          <node concept="3cpWsn" id="5BHMdu2u72p" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="3uibUv" id="5BHMdu2u72q" role="1tU5fm">
              <ref role="3uigEE" to="1t7x:~Dimension" resolve="Dimension" />
            </node>
            <node concept="2OqwBi" id="5BHMdu2u72r" role="33vP2m">
              <node concept="liA8E" id="5BHMdu2u72s" role="2OqNvi">
                <ref role="37wK5l" to="8d8y:~DimensionService.getSize(java.lang.String):java.awt.Dimension" resolve="getSize" />
                <node concept="1rXfSq" id="4hiugqyzc9V" role="37wK5m">
                  <ref role="37wK5l" node="3SMO48GoPjL" resolve="getDimensionServiceKey" />
                </node>
              </node>
              <node concept="2YIFZM" id="5BHMdu2u72u" role="2Oq$k0">
                <ref role="1Pybhc" to="8d8y:~DimensionService" resolve="DimensionService" />
                <ref role="37wK5l" to="8d8y:~DimensionService.getInstance():com.intellij.openapi.util.DimensionService" resolve="getInstance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5BHMdu2u72v" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3clFbC" id="5BHMdu2u72w" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTAOj" role="3uHU7B">
              <ref role="3cqZAo" node="5BHMdu2u72p" resolve="size" />
            </node>
            <node concept="10Nm6u" id="5BHMdu2u72y" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5BHMdu2u72z" role="3clFbx">
            <node concept="3clFbF" id="5BHMdu2u72$" role="3cqZAp">
              <node concept="2OqwBi" id="5BHMdu2u72_" role="3clFbG">
                <node concept="liA8E" id="5BHMdu2u72A" role="2OqNvi">
                  <ref role="37wK5l" to="dbrf:~JComponent.setPreferredSize(java.awt.Dimension):void" resolve="setPreferredSize" />
                  <node concept="2ShNRf" id="5BHMdu2u72B" role="37wK5m">
                    <node concept="1pGfFk" id="5BHMdu2u72C" role="2ShVmc">
                      <ref role="37wK5l" to="1t7x:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                      <node concept="3cmrfG" id="5BHMdu2u72D" role="37wK5m">
                        <property role="3cmrfH" value="500" />
                      </node>
                      <node concept="3cmrfG" id="5BHMdu2u72E" role="37wK5m">
                        <property role="3cmrfH" value="700" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeut0Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5BHMdu2u3P4" role="3cqZAp" />
        <node concept="3cpWs6" id="3SMO48GoPju" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeukHg" role="3cqZAk">
            <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3SMO48GoPjw" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GoPjx" role="3clF45">
        <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="3SMO48GoPjy" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="3SMO48GoPjz" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5BHMdu2rigd" role="jymVt" />
    <node concept="3clFb_" id="3SMO48GoPj$" role="jymVt">
      <property role="TrG5h" value="createActions" />
      <node concept="2AHcQZ" id="3SMO48GoPj_" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="10Q1$e" id="3SMO48GoPjA" role="3clF45">
        <node concept="3uibUv" id="3SMO48GoPjB" role="10Q1$1">
          <ref role="3uigEE" to="dbrf:~Action" resolve="Action" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3SMO48GoPjC" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48GoPjD" role="3clF47">
        <node concept="3cpWs6" id="3SMO48GoPjE" role="3cqZAp">
          <node concept="2ShNRf" id="3SMO48GoPjF" role="3cqZAk">
            <node concept="3$_iS1" id="3SMO48GoPjG" role="2ShVmc">
              <node concept="3uibUv" id="3SMO48GoPjH" role="3$_nBY">
                <ref role="3uigEE" to="dbrf:~Action" resolve="Action" />
              </node>
              <node concept="3$GHV9" id="3SMO48GoPjI" role="3$GQph">
                <node concept="3cmrfG" id="3SMO48GoPjJ" role="3$I4v7">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3SMO48GoPjK" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3SMO48GoPjL" role="jymVt">
      <property role="TrG5h" value="getDimensionServiceKey" />
      <node concept="17QB3L" id="3SMO48GoPjM" role="3clF45" />
      <node concept="3clFbS" id="3SMO48GoPjN" role="3clF47">
        <node concept="3cpWs6" id="3SMO48GoPjO" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48GoPjP" role="3cqZAk">
            <node concept="liA8E" id="3SMO48GoPjQ" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~Class.getName():java.lang.String" resolve="getName" />
            </node>
            <node concept="1rXfSq" id="4hiugqyzgS9" role="2Oq$k0">
              <ref role="37wK5l" to="e2lb:~Object.getClass():java.lang.Class" resolve="getClass" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48GoPjS" role="1B3o_S" />
      <node concept="2AHcQZ" id="3SMO48GoPjT" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6d004XjC32Z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="6d004XjC330" role="1B3o_S" />
      <node concept="3uibUv" id="6d004XjC332" role="3clF45">
        <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="6d004XjC333" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="6d004XjC334" role="3clF47">
        <node concept="3cpWs6" id="2AVqCwBG63W" role="3cqZAp">
          <node concept="3K4zz7" id="6wIK8Ysdnd7" role="3cqZAk">
            <node concept="3nyPlj" id="6wIK8YsdYTZ" role="3K4GZi">
              <ref role="37wK5l" to="810:~DialogWrapper.getPreferredFocusedComponent():javax.swing.JComponent" resolve="getPreferredFocusedComponent" />
            </node>
            <node concept="37vLTw" id="6wIK8YsdqKf" role="3K4E3e">
              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
            </node>
            <node concept="2OqwBi" id="6wIK8YscEVX" role="3K4Cdx">
              <node concept="liA8E" id="6wIK8YscU4S" role="2OqNvi">
                <ref role="37wK5l" to="1t7x:~Component.isShowing():boolean" resolve="isShowing" />
              </node>
              <node concept="37vLTw" id="6d004XjCL79" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6d004XjC335" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7SWljc3ptXs" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createSouthPanel" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="7SWljc3ptXt" role="1B3o_S" />
      <node concept="3uibUv" id="7SWljc3ptXv" role="3clF45">
        <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="7SWljc3ptXw" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="7SWljc3ptXx" role="3clF47">
        <node concept="3clFbF" id="5rqOWkAW9r2" role="3cqZAp">
          <node concept="10Nm6u" id="5cMoKghvtOy" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7SWljc3ptXy" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="65pnlFBBnmy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dispose" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="65pnlFBBnmz" role="1B3o_S" />
      <node concept="3cqZAl" id="65pnlFBBnm_" role="3clF45" />
      <node concept="3clFbS" id="65pnlFBBnmA" role="3clF47">
        <node concept="3clFbJ" id="65pnlFBC9AO" role="3cqZAp">
          <property role="TyiWK" value="false" />
          <property role="TyiWL" value="true" />
          <node concept="3y3z36" id="65pnlFBCfH6" role="3clFbw">
            <node concept="10Nm6u" id="65pnlFBCiJg" role="3uHU7w" />
            <node concept="37vLTw" id="65pnlFBCc_C" role="3uHU7B">
              <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
            </node>
          </node>
          <node concept="3clFbS" id="65pnlFBC9AQ" role="3clFbx">
            <node concept="3clFbF" id="65pnlFBC2VZ" role="3cqZAp">
              <node concept="2OqwBi" id="65pnlFBC2W0" role="3clFbG">
                <node concept="liA8E" id="65pnlFBC2W1" role="2OqNvi">
                  <ref role="37wK5l" node="3SMO48FUSNA" resolve="dispose" />
                </node>
                <node concept="37vLTw" id="65pnlFBC2W2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65pnlFBBnmD" role="3cqZAp">
          <node concept="3nyPlj" id="65pnlFBBnmC" role="3clFbG">
            <ref role="37wK5l" to="810:~DialogWrapper.dispose():void" resolve="dispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="65pnlFBBnmB" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2LG1Y$k_ibU" role="jymVt" />
    <node concept="3clFb_" id="3SMO48GoPjU" role="jymVt">
      <property role="TrG5h" value="rebuildChangeSets" />
      <node concept="3clFbS" id="3SMO48GoPjV" role="3clF47">
        <node concept="3clFbF" id="3SMO48GoPjW" role="3cqZAp">
          <node concept="2YIFZM" id="3SMO48GoPjX" role="3clFbG">
            <ref role="37wK5l" to="bfxj:42hl10VHbve" resolve="rebuildChangeSet" />
            <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
            <node concept="37vLTw" id="2BHiRxeuuZZ" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GoPk4" role="3cqZAp">
          <node concept="2YIFZM" id="3SMO48GoPk5" role="3clFbG">
            <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
            <ref role="37wK5l" to="bfxj:42hl10VHbve" resolve="rebuildChangeSet" />
            <node concept="37vLTw" id="3SMO48GoPk6" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GoPk7" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48GoPk8" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyKA" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
            </node>
            <node concept="liA8E" id="3SMO48GoPka" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:6odKvAWD1yN" resolve="rebuildLater" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3SMO48GoPkb" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3SMO48GoPku" role="jymVt">
      <property role="TrG5h" value="isEditable" />
      <node concept="10P_77" id="3SMO48GoPkv" role="3clF45" />
      <node concept="3Tm1VV" id="3SMO48GoPkw" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48GoPkx" role="3clF47">
        <node concept="3clFbF" id="3SMO48GoPky" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48GoPkz" role="3clFbG">
            <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="haj_nYk5jz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="syncMetadataChanges" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="haj_nYk5jA" role="3clF47">
        <node concept="3clFbJ" id="haj_nYkdbL" role="3cqZAp">
          <node concept="37vLTw" id="haj_nYkdbQ" role="3clFbw">
            <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
          </node>
          <node concept="3clFbS" id="haj_nYkdbR" role="3clFbx">
            <node concept="3clFbF" id="1KUoCiqb74J" role="3cqZAp">
              <node concept="2OqwBi" id="1KUoCiqb74K" role="3clFbG">
                <node concept="2YIFZM" id="1KUoCiqb74L" role="2Oq$k0">
                  <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                  <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
                </node>
                <node concept="liA8E" id="1KUoCiqb74N" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runWriteActionInCommand(java.lang.Runnable):void" resolve="runWriteActionInCommand" />
                  <node concept="1bVj0M" id="1KUoCiqb74O" role="37wK5m">
                    <node concept="3clFbS" id="1KUoCiqb74P" role="1bW5cS">
                      <node concept="3clFbF" id="1KUoCiqb74Q" role="3cqZAp">
                        <node concept="2YIFZM" id="1KUoCiqb74R" role="3clFbG">
                          <ref role="1Pybhc" node="444ZSQ06W$a" resolve="MetadataUtil" />
                          <ref role="37wK5l" node="6fx930y84y8" resolve="applyMetadataChanges" />
                          <node concept="2OqwBi" id="1KUoCiqb74S" role="37wK5m">
                            <node concept="liA8E" id="1KUoCiqb74T" role="2OqNvi">
                              <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                            </node>
                            <node concept="37vLTw" id="1KUoCiqb74V" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KUoCiqb74W" role="37wK5m">
                            <node concept="liA8E" id="1KUoCiqb74X" role="2OqNvi">
                              <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                            </node>
                            <node concept="37vLTw" id="1KUoCiqb74Y" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
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
      <node concept="3Tm6S6" id="haj_nYjZcF" role="1B3o_S" />
      <node concept="3cqZAl" id="haj_nYk5hI" role="3clF45" />
    </node>
    <node concept="3clFb_" id="haj_nYikT5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="resetCurrentRoot" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="haj_nYikT8" role="3clF47">
        <node concept="3clFbJ" id="7MTGQ94Dv7D" role="3cqZAp">
          <node concept="3clFbC" id="7MTGQ94D$w2" role="3clFbw">
            <node concept="37vLTw" id="7MTGQ94D$w4" role="3uHU7B">
              <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
            </node>
            <node concept="10Nm6u" id="7MTGQ94D$w5" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="7MTGQ94Dv7L" role="3clFbx">
            <node concept="3cpWs6" id="7MTGQ94Dv7M" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbH" id="7MTGQ94DrpO" role="3cqZAp" />
        <node concept="3clFbF" id="1H$5hGosygH" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGosygI" role="3clFbG">
            <node concept="liA8E" id="1H$5hGosygJ" role="2OqNvi">
              <ref role="37wK5l" node="1H$5hGoqbcQ" resolve="unregisterShortcuts" />
              <node concept="37vLTw" id="1H$5hGosygK" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="1H$5hGosygL" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4hav$v7nLh0" role="3cqZAp">
          <node concept="2OqwBi" id="4hav$v7nUe2" role="3clFbG">
            <node concept="liA8E" id="4hav$v7o41T" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setSecondComponent(javax.swing.JComponent):void" resolve="setSecondComponent" />
              <node concept="37vLTw" id="65pnlFBLygR" role="37wK5m">
                <ref role="3cqZAo" node="65pnlFBLni3" resolve="myNoRootPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="4hav$v7nPRo" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYiATh" role="3cqZAp">
          <node concept="2OqwBi" id="haj_nYiEpw" role="3clFbG">
            <node concept="liA8E" id="haj_nYiJOU" role="2OqNvi">
              <ref role="37wK5l" node="3SMO48FUSNA" resolve="dispose" />
            </node>
            <node concept="37vLTw" id="haj_nYiATg" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYiQPZ" role="3cqZAp">
          <node concept="37vLTI" id="haj_nYiUl4" role="3clFbG">
            <node concept="10Nm6u" id="haj_nYiXJ0" role="37vLTx" />
            <node concept="37vLTw" id="haj_nYiQPY" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_o1ZpyN" role="3cqZAp">
          <node concept="37vLTI" id="haj_o1ZpIf" role="3clFbG">
            <node concept="10Nm6u" id="haj_o1ZpIr" role="37vLTx" />
            <node concept="37vLTw" id="haj_o1ZpyM" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfR" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="681Qtyavox_" role="3cqZAp">
          <node concept="2OqwBi" id="681QtyavsmL" role="3clFbG">
            <node concept="liA8E" id="681QtyavAbZ" role="2OqNvi">
              <ref role="37wK5l" to="bcbw:~DiffStatusBar.setText(java.lang.String):void" resolve="setText" />
              <node concept="Xl_RD" id="681QtyavDjJ" role="37wK5m">
                <property role="Xl_RC" value="" />
              </node>
            </node>
            <node concept="37vLTw" id="681Qtyavox$" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GG57S" resolve="myStatusBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYkogQ" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYkogP" role="3clFbG">
            <ref role="37wK5l" node="haj_nYk5jz" resolve="syncMetadataChanges" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="haj_nYieWT" role="1B3o_S" />
      <node concept="3cqZAl" id="haj_nYikRg" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3SMO48GoPmo" role="jymVt">
      <property role="TrG5h" value="changeCurrentRoot" />
      <node concept="3Tm6S6" id="haj_nYmzYl" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48GoPmp" role="3clF45" />
      <node concept="3clFbS" id="3SMO48GoPmr" role="3clF47">
        <node concept="3clFbJ" id="6rlHBM$PRDh" role="3cqZAp">
          <node concept="1Wc70l" id="6rlHBM$PRDi" role="3clFbw">
            <node concept="3clFbC" id="6rlHBM$PRDj" role="3uHU7w">
              <node concept="37vLTw" id="6rlHBM$PRDk" role="3uHU7w">
                <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
              </node>
              <node concept="37vLTw" id="6rlHBM$PRDl" role="3uHU7B">
                <ref role="3cqZAo" node="3SMO48GoPfR" resolve="myRootId" />
              </node>
            </node>
            <node concept="3y3z36" id="6rlHBM$PRDm" role="3uHU7B">
              <node concept="37vLTw" id="6rlHBM$PRDn" role="3uHU7B">
                <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
              </node>
              <node concept="10Nm6u" id="6rlHBM$PRDo" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="6rlHBM$PRDp" role="3clFbx">
            <node concept="3cpWs6" id="6rlHBM$PRDq" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYl2D5" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYl2D4" role="3clFbG">
            <ref role="37wK5l" node="haj_nYk5jz" resolve="syncMetadataChanges" />
          </node>
        </node>
        <node concept="3clFbH" id="5WyNCU0AIHa" role="3cqZAp" />
        <node concept="3clFbF" id="haj_o1UUvf" role="3cqZAp">
          <node concept="37vLTI" id="haj_o1UUFZ" role="3clFbG">
            <node concept="37vLTw" id="haj_o1UUGb" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="haj_o1UUve" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48GoPfR" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="2j97Fj97072" role="3cqZAp">
          <node concept="1QHqEC" id="2j97Fj97074" role="1QHqEI">
            <node concept="3clFbS" id="2j97Fj97076" role="1bW5cS">
              <node concept="3cpWs8" id="3SMO48GPjS$" role="3cqZAp">
                <node concept="3cpWsn" id="3SMO48GPjS_" role="3cpWs9">
                  <property role="TrG5h" value="changeSet" />
                  <node concept="3K4zz7" id="3SMO48GPjSA" role="33vP2m">
                    <node concept="37vLTw" id="3SMO48GPjSB" role="3K4GZi">
                      <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                    </node>
                    <node concept="37vLTw" id="3SMO48GPjSC" role="3K4E3e">
                      <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                    </node>
                    <node concept="3clFbC" id="3SMO48GPjSD" role="3K4Cdx">
                      <node concept="10Nm6u" id="3SMO48GPjSE" role="3uHU7w" />
                      <node concept="37vLTw" id="3SMO48GPjSF" role="3uHU7B">
                        <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="3SMO48GPjSG" role="1tU5fm">
                    <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3SMO48GPjSH" role="3cqZAp">
                <node concept="3cpWsn" id="3SMO48GPjSI" role="3cpWs9">
                  <property role="TrG5h" value="nodeId" />
                  <node concept="3uibUv" id="3SMO48GRcN1" role="1tU5fm">
                    <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                  </node>
                  <node concept="3K4zz7" id="3SMO48GPjSJ" role="33vP2m">
                    <node concept="37vLTw" id="3SMO48GQ$r2" role="3K4GZi">
                      <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                    </node>
                    <node concept="3clFbC" id="3SMO48GPjSL" role="3K4Cdx">
                      <node concept="10Nm6u" id="3SMO48GPjSM" role="3uHU7w" />
                      <node concept="37vLTw" id="3SMO48GPjSN" role="3uHU7B">
                        <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3SMO48GPjSO" role="3K4E3e">
                      <node concept="liA8E" id="3SMO48GPjSP" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="3SMO48GPjSQ" role="2Oq$k0">
                        <node concept="2OqwBi" id="3SMO48GPjSR" role="2JrQYb">
                          <node concept="2OqwBi" id="3SMO48GPjSS" role="2Oq$k0">
                            <node concept="2OqwBi" id="3SMO48GPjSY" role="2Oq$k0">
                              <node concept="liA8E" id="3SMO48GPjSZ" role="2OqNvi">
                                <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                              </node>
                              <node concept="37vLTw" id="3SMO48GPjT0" role="2Oq$k0">
                                <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                              </node>
                            </node>
                            <node concept="2RRcyG" id="3SMO48GPjT1" role="2OqNvi" />
                          </node>
                          <node concept="1uHKPH" id="3SMO48GPjT2" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3SMO48GO$qm" role="3cqZAp">
                <node concept="3clFbC" id="3SMO48GOEIB" role="3clFbw">
                  <node concept="10Nm6u" id="3SMO48GOEIN" role="3uHU7w" />
                  <node concept="37vLTw" id="3SMO48GOBzZ" role="3uHU7B">
                    <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                  </node>
                </node>
                <node concept="3clFbS" id="3SMO48GO$qo" role="3clFbx">
                  <node concept="3clFbF" id="3SMO48GOKRa" role="3cqZAp">
                    <node concept="37vLTI" id="3SMO48GOKRb" role="3clFbG">
                      <node concept="2ShNRf" id="3SMO48GOKRc" role="37vLTx">
                        <node concept="1pGfFk" id="3SMO48GOKRd" role="2ShVmc">
                          <ref role="37wK5l" node="3SMO48FYpgM" resolve="RootDifferencePane" />
                          <node concept="37vLTw" id="3SMO48GOKRe" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GoPfw" resolve="myProject" />
                          </node>
                          <node concept="37vLTw" id="3SMO48GR0iS" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GPjS_" resolve="changeSet" />
                          </node>
                          <node concept="37vLTw" id="3SMO48GQWtj" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GPjSI" resolve="nodeId" />
                          </node>
                          <node concept="2OqwBi" id="3SMO48GOKRh" role="37wK5m">
                            <node concept="37vLTw" id="2BHiRxeuTuN" role="2Oq$k0">
                              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
                            </node>
                            <node concept="liA8E" id="3SMO48GOKRj" role="2OqNvi">
                              <ref role="37wK5l" to="hdhb:42hl10VHaRb" resolve="getNameForRoot" />
                              <node concept="37vLTw" id="2BHiRxgmGVv" role="37wK5m">
                                <ref role="3cqZAo" node="3SMO48GoPn6" resolve="rootId" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3SMO48GOKRl" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GoPfU" resolve="myContentTitles" />
                          </node>
                          <node concept="37vLTw" id="3SMO48GOKRm" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
                          </node>
                          <node concept="37vLTw" id="5WyNCU0$EdJ" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GG57S" resolve="myStatusBar" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3SMO48GOKRo" role="37vLTJ">
                        <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="oYcweWcF$3" role="3cqZAp">
                    <node concept="3cpWsn" id="oYcweWcF$4" role="3cpWs9">
                      <property role="TrG5h" value="actionGroup" />
                      <node concept="2ShNRf" id="oYcweWcUmQ" role="33vP2m">
                        <node concept="1pGfFk" id="oYcweWcUmP" role="2ShVmc">
                          <ref role="37wK5l" to="nx1:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="oYcweWcF$5" role="1tU5fm">
                        <ref role="3uigEE" to="nx1:~DefaultActionGroup" resolve="DefaultActionGroup" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="oYcweWdBK4" role="3cqZAp">
                    <node concept="2OqwBi" id="oYcweWdJ52" role="3clFbG">
                      <node concept="liA8E" id="oYcweWdT7u" role="2OqNvi">
                        <ref role="37wK5l" to="nx1:~DefaultActionGroup.addAll(com.intellij.openapi.actionSystem.ActionGroup):void" resolve="addAll" />
                        <node concept="2OqwBi" id="oYcweWe6RH" role="37wK5m">
                          <node concept="37vLTw" id="oYcweWe6RI" role="2Oq$k0">
                            <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                          </node>
                          <node concept="liA8E" id="oYcweWe6RJ" role="2OqNvi">
                            <ref role="37wK5l" node="3SMO48G1KZq" resolve="getActions" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="oYcweWdBK3" role="2Oq$k0">
                        <ref role="3cqZAo" node="oYcweWcF$4" resolve="actionGroup" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2UXZZhGKg0g" role="3cqZAp">
                    <node concept="3cpWsn" id="2UXZZhGKg0h" role="3cpWs9">
                      <property role="TrG5h" value="toolbar" />
                      <node concept="3uibUv" id="2UXZZhGKg0i" role="1tU5fm">
                        <ref role="3uigEE" to="nx1:~ActionToolbar" resolve="ActionToolbar" />
                      </node>
                      <node concept="2OqwBi" id="2UXZZhGKC0W" role="33vP2m">
                        <node concept="liA8E" id="2UXZZhGKC0X" role="2OqNvi">
                          <ref role="37wK5l" to="nx1:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean):com.intellij.openapi.actionSystem.ActionToolbar" resolve="createActionToolbar" />
                          <node concept="10M0yZ" id="2UXZZhGKC0Y" role="37wK5m">
                            <ref role="3cqZAo" to="nx1:~ActionPlaces.UNKNOWN" resolve="UNKNOWN" />
                            <ref role="1PxDUh" to="nx1:~ActionPlaces" resolve="ActionPlaces" />
                          </node>
                          <node concept="37vLTw" id="oYcweWes0d" role="37wK5m">
                            <ref role="3cqZAo" node="oYcweWcF$4" resolve="actionGroup" />
                          </node>
                          <node concept="3clFbT" id="2UXZZhGKC10" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="2UXZZhGKC11" role="2Oq$k0">
                          <ref role="37wK5l" to="nx1:~ActionManager.getInstance():com.intellij.openapi.actionSystem.ActionManager" resolve="getInstance" />
                          <ref role="1Pybhc" to="nx1:~ActionManager" resolve="ActionManager" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1H$5hGos8eH" role="3cqZAp">
                    <node concept="2OqwBi" id="1H$5hGosbKK" role="3clFbG">
                      <node concept="liA8E" id="1H$5hGosj67" role="2OqNvi">
                        <ref role="37wK5l" node="1H$5hGoppBu" resolve="registerShortcuts" />
                        <node concept="37vLTw" id="1H$5hGosqee" role="37wK5m">
                          <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1H$5hGos8eG" role="2Oq$k0">
                        <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2UXZZhGHKTW" role="3cqZAp">
                    <node concept="3cpWsn" id="2UXZZhGHKTX" role="3cpWs9">
                      <property role="TrG5h" value="panel" />
                      <node concept="2ShNRf" id="2UXZZhGHZEr" role="33vP2m">
                        <node concept="1pGfFk" id="2UXZZhGInhe" role="2ShVmc">
                          <ref role="37wK5l" to="dbrf:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                          <node concept="2ShNRf" id="2UXZZhGIxyg" role="37wK5m">
                            <node concept="1pGfFk" id="2UXZZhGIBEm" role="2ShVmc">
                              <ref role="37wK5l" to="1t7x:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="2UXZZhGHKTY" role="1tU5fm">
                        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2UXZZhGJ77H" role="3cqZAp">
                    <node concept="2OqwBi" id="2UXZZhGJc7u" role="3clFbG">
                      <node concept="liA8E" id="2UXZZhGJjSQ" role="2OqNvi">
                        <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                        <node concept="2OqwBi" id="2UXZZhGLn15" role="37wK5m">
                          <node concept="liA8E" id="2UXZZhGLtxK" role="2OqNvi">
                            <ref role="37wK5l" to="nx1:~ActionToolbar.getComponent():javax.swing.JComponent" resolve="getComponent" />
                          </node>
                          <node concept="37vLTw" id="2UXZZhGLiv$" role="2Oq$k0">
                            <ref role="3cqZAo" node="2UXZZhGKg0h" resolve="toolbar" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="2UXZZhGX4eK" role="37wK5m">
                          <ref role="1PxDUh" to="1t7x:~BorderLayout" resolve="BorderLayout" />
                          <ref role="3cqZAo" to="1t7x:~BorderLayout.NORTH" resolve="NORTH" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2UXZZhGJ77G" role="2Oq$k0">
                        <ref role="3cqZAo" node="2UXZZhGHKTX" resolve="panel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4qODzMz6fzu" role="3cqZAp">
                    <node concept="2OqwBi" id="4qODzMz6kwI" role="3clFbG">
                      <node concept="37vLTw" id="2UXZZhGIXb_" role="2Oq$k0">
                        <ref role="3cqZAo" node="2UXZZhGHKTX" resolve="panel" />
                      </node>
                      <node concept="liA8E" id="4qODzMz6u_v" role="2OqNvi">
                        <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                        <node concept="2OqwBi" id="4qODzMz6UGX" role="37wK5m">
                          <node concept="37vLTw" id="2UXZZhGWRrR" role="2Oq$k0">
                            <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                          </node>
                          <node concept="liA8E" id="4qODzMz6ZKY" role="2OqNvi">
                            <ref role="37wK5l" node="3SMO48FPvtW" resolve="getPanel" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="4qODzMz6GMB" role="37wK5m">
                          <ref role="3cqZAo" to="1t7x:~BorderLayout.CENTER" resolve="CENTER" />
                          <ref role="1PxDUh" to="1t7x:~BorderLayout" resolve="BorderLayout" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="haj_nVGqen" role="3cqZAp">
                    <node concept="2OqwBi" id="haj_nVGv2p" role="3clFbG">
                      <node concept="liA8E" id="haj_nVGCM4" role="2OqNvi">
                        <ref role="37wK5l" to="810:~Splitter.setSecondComponent(javax.swing.JComponent):void" resolve="setSecondComponent" />
                        <node concept="37vLTw" id="2220y7LAxof" role="37wK5m">
                          <ref role="3cqZAo" node="2UXZZhGHKTX" resolve="panel" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="haj_nVGqem" role="2Oq$k0">
                        <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7c5xrWwH2QC" role="3cqZAp">
                    <node concept="2OqwBi" id="7c5xrWwH5G_" role="3clFbG">
                      <node concept="liA8E" id="7c5xrWwH9IP" role="2OqNvi">
                        <ref role="37wK5l" node="3SMO48GuqzB" resolve="navigateInitial" />
                        <node concept="10Nm6u" id="7c5xrWwHd3I" role="37wK5m" />
                      </node>
                      <node concept="37vLTw" id="7c5xrWwH2QB" role="2Oq$k0">
                        <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="3SMO48GSABw" role="9aQIa">
                  <node concept="3clFbS" id="3SMO48GSABx" role="9aQI4">
                    <node concept="3clFbF" id="3SMO48GSDUZ" role="3cqZAp">
                      <node concept="2OqwBi" id="3SMO48GSHkC" role="3clFbG">
                        <node concept="liA8E" id="3SMO48GSLj6" role="2OqNvi">
                          <ref role="37wK5l" node="3SMO48FX$9E" resolve="setRootId" />
                          <node concept="37vLTw" id="2zHbVQB$mMa" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GPjSI" resolve="nodeId" />
                          </node>
                          <node concept="37vLTw" id="3SMO48GSYtT" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GPjS_" resolve="changeSet" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3SMO48GSDUY" role="2Oq$k0">
                          <ref role="3cqZAo" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
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
      <node concept="37vLTG" id="3SMO48GoPn6" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="3SMO48HXm8v" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPn8" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="haj_nYnQ8S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="setCurrentRoot" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="haj_nYo5gG" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="7fCe7zr7pTe" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="haj_nYo5gI" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="haj_nYnQ8V" role="3clF47">
        <node concept="3clFbF" id="haj_nYorKe" role="3cqZAp">
          <node concept="2OqwBi" id="haj_nYoww9" role="3clFbG">
            <node concept="liA8E" id="haj_nYoJOe" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:2alxbCQ_nmZ" resolve="setSelected" />
              <node concept="37vLTw" id="haj_nYEGlB" role="37wK5m">
                <ref role="3cqZAo" node="haj_nYo5gG" resolve="rootId" />
              </node>
            </node>
            <node concept="37vLTw" id="haj_nYorKd" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nYohfI" role="3cqZAp">
          <node concept="1rXfSq" id="haj_nYohfH" role="3clFbG">
            <ref role="37wK5l" node="3SMO48GoPmo" resolve="changeCurrentRoot" />
            <node concept="37vLTw" id="haj_nYokKp" role="37wK5m">
              <ref role="3cqZAo" node="haj_nYo5gG" resolve="rootId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="haj_nYnJUg" role="1B3o_S" />
      <node concept="3cqZAl" id="haj_nYnQ73" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3SMO48GoPn9" role="jymVt">
      <property role="TrG5h" value="getCurrentRoot" />
      <node concept="3uibUv" id="3SMO48GoPna" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="3SMO48GoPnb" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48GoPnc" role="3clF47">
        <node concept="3clFbF" id="3SMO48GoPnj" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48GoPnk" role="3clFbG">
            <ref role="3cqZAo" node="3SMO48GoPfR" resolve="myRootId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3SMO48GoPnl" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="haj_nVIdGC" role="jymVt" />
    <node concept="3clFb_" id="6gc0uWWouPX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="closeTreeComponent" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6gc0uWWouQ0" role="3clF47">
        <node concept="3clFbF" id="6gc0uWWqlUf" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWqpy1" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWqw0K" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent):void" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="6gc0uWWq$mJ" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="6gc0uWWqlUe" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GGEDr" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oYcweWbP$3" role="3cqZAp">
          <node concept="2OqwBi" id="oYcweWc0F7" role="3clFbG">
            <node concept="liA8E" id="oYcweWc5AR" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent):void" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="oYcweWc937" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="oYcweWbT6l" role="2Oq$k0">
              <node concept="liA8E" id="oYcweWbWTP" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb3S" resolve="previous" />
              </node>
              <node concept="37vLTw" id="oYcweWbP$2" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="oYcweWcmZa" role="3cqZAp">
          <node concept="2OqwBi" id="oYcweWcmZb" role="3clFbG">
            <node concept="liA8E" id="oYcweWcmZc" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent):void" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="oYcweWcmZd" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
              </node>
            </node>
            <node concept="2OqwBi" id="oYcweWcmZe" role="2Oq$k0">
              <node concept="liA8E" id="oYcweWcmZf" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHb40" resolve="next" />
              </node>
              <node concept="37vLTw" id="oYcweWcmZg" role="2Oq$k0">
                <ref role="3cqZAo" node="oYcweW9c4e" resolve="myGoToNeighbourRootActions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Khl6gyQKOG" role="3cqZAp">
          <node concept="2OqwBi" id="7Khl6gyQQqH" role="3clFbG">
            <node concept="37vLTw" id="6gc0uWWoKOI" role="2Oq$k0">
              <ref role="3cqZAo" node="haj_nVE1K4" resolve="myPanel" />
            </node>
            <node concept="liA8E" id="7Khl6gyQWTs" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setFirstComponent(javax.swing.JComponent):void" resolve="setFirstComponent" />
              <node concept="10Nm6u" id="7Khl6gyQXhf" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6sRIGIQHGxd" role="3cqZAp">
          <node concept="2OqwBi" id="6sRIGIQHLmy" role="3clFbG">
            <node concept="37vLTw" id="6gc0uWWp1qG" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48GoPfG" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="6sRIGIQI20L" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.remove(java.awt.Component):void" resolve="remove" />
              <node concept="2OqwBi" id="6sRIGIQIlt8" role="37wK5m">
                <node concept="37vLTw" id="6gc0uWWp7YZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GG57P" resolve="myToolbar" />
                </node>
                <node concept="liA8E" id="6sRIGIQInb2" role="2OqNvi">
                  <ref role="37wK5l" to="nx1:~ActionToolbar.getComponent():javax.swing.JComponent" resolve="getComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gc0uWWooXi" role="1B3o_S" />
      <node concept="3cqZAl" id="6gc0uWWouN9" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="7Khl6gyLcKU" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="showRootDifference" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="7ZOzw8M7enG" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7ZOzw8M7rXe" role="1tU5fm">
          <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7Khl6gyLRKQ" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="H_c77" id="6z2l4wbq5wK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Khl6gyLRKS" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="H_c77" id="6z2l4wbqlUp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Khl6gyLRKU" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="7Khl6gyUvtg" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="6z2l4wbpB$I" role="3clF46">
        <property role="TrG5h" value="oldTitle" />
        <node concept="17QB3L" id="7ZOzw8M5Ou7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7ZOzw8M6r62" role="3clF46">
        <property role="TrG5h" value="newTitile" />
        <node concept="17QB3L" id="7ZOzw8M6Atk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Khl6gyLRL1" role="3clF46">
        <property role="TrG5h" value="scrollTo" />
        <node concept="2pR195" id="7Khl6gyLRL2" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
        </node>
        <node concept="2AHcQZ" id="7Khl6gyLRL3" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="7ZOzw8M5pw8" role="3clF46">
        <property role="TrG5h" value="diffRequest" />
        <node concept="3uibUv" id="7ZOzw8M5pw9" role="1tU5fm">
          <ref role="3uigEE" to="xa8l:~DiffRequest" resolve="DiffRequest" />
        </node>
      </node>
      <node concept="3clFbS" id="7Khl6gyLcKX" role="3clF47">
        <node concept="3cpWs8" id="7Khl6gyQxyL" role="3cqZAp">
          <node concept="3cpWsn" id="7Khl6gyQxyM" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="2ShNRf" id="7Khl6gyQyI$" role="33vP2m">
              <node concept="1pGfFk" id="7Khl6gyQyIz" role="2ShVmc">
                <ref role="37wK5l" node="3SMO48GoPg1" resolve="ModelDifferenceDialog" />
                <node concept="37vLTw" id="7ZOzw8M7WOJ" role="37wK5m">
                  <ref role="3cqZAo" node="7ZOzw8M7enG" resolve="project" />
                </node>
                <node concept="37vLTw" id="6z2l4wbqIWZ" role="37wK5m">
                  <ref role="3cqZAo" node="7Khl6gyLRKQ" resolve="oldModel" />
                </node>
                <node concept="37vLTw" id="5QakiHrD70s" role="37wK5m">
                  <ref role="3cqZAo" node="7Khl6gyLRKS" resolve="newModel" />
                </node>
                <node concept="37vLTw" id="7ZOzw8M8trB" role="37wK5m">
                  <ref role="3cqZAo" node="6z2l4wbpB$I" resolve="oldTitle" />
                </node>
                <node concept="37vLTw" id="7ZOzw8M8ts4" role="37wK5m">
                  <ref role="3cqZAo" node="7ZOzw8M6r62" resolve="newTitile" />
                </node>
                <node concept="37vLTw" id="7ZOzw8M889n" role="37wK5m">
                  <ref role="3cqZAo" node="7ZOzw8M5pw8" resolve="diffRequest" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7Khl6gyQxyN" role="1tU5fm">
              <ref role="3uigEE" node="3SMO48GoPfv" resolve="ModelDifferenceDialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Khl6gyRgqW" role="3cqZAp">
          <node concept="2OqwBi" id="7Khl6gyRhdh" role="3clFbG">
            <node concept="liA8E" id="7Khl6gyRjPd" role="2OqNvi">
              <ref role="37wK5l" node="haj_nYnQ8S" resolve="setCurrentRoot" />
              <node concept="37vLTw" id="7Khl6gyRkiN" role="37wK5m">
                <ref role="3cqZAo" node="7Khl6gyLRKU" resolve="rootId" />
              </node>
            </node>
            <node concept="37vLTw" id="7Khl6gyRgqV" role="2Oq$k0">
              <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gc0uWWoOKR" role="3cqZAp">
          <node concept="2OqwBi" id="6gc0uWWoPmy" role="3clFbG">
            <node concept="liA8E" id="6gc0uWWoQJp" role="2OqNvi">
              <ref role="37wK5l" node="6gc0uWWouPX" resolve="closeTreeComponent" />
            </node>
            <node concept="37vLTw" id="6gc0uWWoOKQ" role="2Oq$k0">
              <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5fiIULPzN5p" role="3cqZAp">
          <node concept="3clFbS" id="5fiIULPzN5s" role="3clFbx">
            <node concept="3clFbF" id="5fiIULP$txI" role="3cqZAp">
              <node concept="2OqwBi" id="5fiIULP$txJ" role="3clFbG">
                <node concept="liA8E" id="5fiIULP$txK" role="2OqNvi">
                  <ref role="37wK5l" to="810:~DialogWrapper.setTitle(java.lang.String):void" resolve="setTitle" />
                  <node concept="Xl_RD" id="5fiIULP$txN" role="37wK5m">
                    <property role="Xl_RC" value="Metadata difference for model" />
                  </node>
                </node>
                <node concept="37vLTw" id="5fiIULP$txO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5fiIULP$2tS" role="3clFbw">
            <node concept="10Nm6u" id="5fiIULP$2ud" role="3uHU7w" />
            <node concept="37vLTw" id="5fiIULPzUFR" role="3uHU7B">
              <ref role="3cqZAo" node="7Khl6gyLRKU" resolve="rootId" />
            </node>
          </node>
          <node concept="9aQIb" id="5fiIULP$dPu" role="9aQIa">
            <node concept="3clFbS" id="5fiIULP$dPv" role="9aQI4">
              <node concept="3clFbF" id="1KUoCipv$tw" role="3cqZAp">
                <node concept="2OqwBi" id="1KUoCipv$tx" role="3clFbG">
                  <node concept="2YIFZM" id="1KUoCipv$ty" role="2Oq$k0">
                    <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                    <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
                  </node>
                  <node concept="liA8E" id="1KUoCipv$tz" role="2OqNvi">
                    <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                    <node concept="1bVj0M" id="1KUoCipv$t$" role="37wK5m">
                      <node concept="3clFbS" id="1KUoCipv$t_" role="1bW5cS">
                        <node concept="3cpWs8" id="1KUoCipv$tA" role="3cqZAp">
                          <node concept="3cpWsn" id="1KUoCipv$tB" role="3cpWs9">
                            <property role="TrG5h" value="node" />
                            <node concept="2OqwBi" id="1KUoCipv$tC" role="33vP2m">
                              <node concept="liA8E" id="1KUoCipv$tD" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                                <node concept="37vLTw" id="1KUoCipv$tE" role="37wK5m">
                                  <ref role="3cqZAo" node="7Khl6gyLRKU" resolve="rootId" />
                                </node>
                              </node>
                              <node concept="2JrnkZ" id="1KUoCipv$tF" role="2Oq$k0">
                                <node concept="37vLTw" id="1KUoCipv$tG" role="2JrQYb">
                                  <ref role="3cqZAo" node="7Khl6gyLRKS" resolve="newModel" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="6z2l4wbr7yr" role="1tU5fm">
                              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KUoCipv$tI" role="3cqZAp">
                          <property role="TyiWK" value="false" />
                          <property role="TyiWL" value="true" />
                          <node concept="3clFbC" id="1KUoCipv$tJ" role="3clFbw">
                            <node concept="10Nm6u" id="1KUoCipv$tK" role="3uHU7w" />
                            <node concept="37vLTw" id="1KUoCipv$tL" role="3uHU7B">
                              <ref role="3cqZAo" node="1KUoCipv$tB" resolve="node" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="1KUoCipv$tM" role="3clFbx">
                            <node concept="3clFbF" id="1KUoCipv$tN" role="3cqZAp">
                              <node concept="37vLTI" id="1KUoCipv$tO" role="3clFbG">
                                <node concept="2OqwBi" id="1KUoCipv$tP" role="37vLTx">
                                  <node concept="liA8E" id="1KUoCipv$tQ" role="2OqNvi">
                                    <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                                    <node concept="37vLTw" id="1KUoCipv$tR" role="37wK5m">
                                      <ref role="3cqZAo" node="7Khl6gyLRKU" resolve="rootId" />
                                    </node>
                                  </node>
                                  <node concept="2JrnkZ" id="1KUoCipv$tS" role="2Oq$k0">
                                    <node concept="37vLTw" id="1KUoCipv$tT" role="2JrQYb">
                                      <ref role="3cqZAo" node="7Khl6gyLRKQ" resolve="oldModel" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="1KUoCipv$tU" role="37vLTJ">
                                  <ref role="3cqZAo" node="1KUoCipv$tB" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1KUoCipv$tV" role="3cqZAp">
                          <node concept="3cpWsn" id="1KUoCipv$tW" role="3cpWs9">
                            <property role="TrG5h" value="rootName" />
                            <node concept="3K4zz7" id="1KUoCipv$tX" role="33vP2m">
                              <node concept="3clFbC" id="1KUoCipv$tY" role="3K4Cdx">
                                <node concept="10Nm6u" id="1KUoCipv$tZ" role="3uHU7w" />
                                <node concept="37vLTw" id="1KUoCipv$u0" role="3uHU7B">
                                  <ref role="3cqZAo" node="1KUoCipv$tB" resolve="node" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1KUoCipv$u1" role="3K4GZi">
                                <node concept="37vLTw" id="1KUoCipv$u2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KUoCipv$tB" resolve="node" />
                                </node>
                                <node concept="liA8E" id="1KUoCipv$u3" role="2OqNvi">
                                  <ref role="37wK5l" to="ec5l:~SNode.getPresentation():java.lang.String" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="Xl_RD" id="1KUoCipv$u4" role="3K4E3e">
                                <property role="Xl_RC" value="root" />
                              </node>
                            </node>
                            <node concept="17QB3L" id="1KUoCipv$u5" role="1tU5fm" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KUoCipv$u6" role="3cqZAp">
                          <node concept="2OqwBi" id="1KUoCipv$u7" role="3clFbG">
                            <node concept="liA8E" id="1KUoCipv$u8" role="2OqNvi">
                              <ref role="37wK5l" to="810:~DialogWrapper.setTitle(java.lang.String):void" resolve="setTitle" />
                              <node concept="3cpWs3" id="1KUoCipv$u9" role="37wK5m">
                                <node concept="37vLTw" id="1KUoCipv$ua" role="3uHU7w">
                                  <ref role="3cqZAo" node="1KUoCipv$tW" resolve="rootName" />
                                </node>
                                <node concept="Xl_RD" id="1KUoCipv$ub" role="3uHU7B">
                                  <property role="Xl_RC" value="Difference for " />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1KUoCipv$uc" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KUoCipv$ud" role="3cqZAp">
                          <node concept="2OqwBi" id="1KUoCipv$ue" role="3clFbG">
                            <node concept="liA8E" id="1KUoCipv$uf" role="2OqNvi">
                              <ref role="37wK5l" node="3SMO48GuqzB" resolve="navigateInitial" />
                              <node concept="37vLTw" id="1KUoCipv$ug" role="37wK5m">
                                <ref role="3cqZAo" node="7Khl6gyLRL1" resolve="scrollTo" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1KUoCipv$uh" role="2Oq$k0">
                              <node concept="2OwXpG" id="1KUoCipv$ui" role="2OqNvi">
                                <ref role="2Oxat5" node="3SMO48GEdYQ" resolve="myRootDifferencePane" />
                              </node>
                              <node concept="37vLTw" id="1KUoCipv$uj" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
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
        <node concept="3clFbF" id="7Khl6gyMo5p" role="3cqZAp">
          <node concept="2OqwBi" id="7Khl6gyMo5q" role="3clFbG">
            <node concept="37vLTw" id="7Khl6gyMo5r" role="2Oq$k0">
              <ref role="3cqZAo" node="7Khl6gyQxyM" resolve="dialog" />
            </node>
            <node concept="liA8E" id="7Khl6gyMo5s" role="2OqNvi">
              <ref role="37wK5l" to="810:~DialogWrapper.show():void" resolve="show" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Khl6gyL0wo" role="1B3o_S" />
      <node concept="3cqZAl" id="7Khl6gyLcJ7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7Khl6gyKCTA" role="jymVt" />
    <node concept="3clFb_" id="3SMO48GC8rj" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getData" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3SMO48GC8rk" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GC8rm" role="3clF45">
        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="3SMO48GC8rn" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="3uibUv" id="3SMO48GC8ro" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="3SMO48GC8rp" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3SMO48GC8rq" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3SMO48GC8rs" role="3clF47">
        <node concept="3clFbJ" id="3SMO48GCr1S" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48GCr1T" role="3clFbw">
            <node concept="10M0yZ" id="3SMO48GCr1U" role="2Oq$k0">
              <ref role="1PxDUh" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
              <ref role="3cqZAo" to="hdhb:42hl10VHaI9" resolve="NODE_ID_DATAKEY" />
            </node>
            <node concept="liA8E" id="3SMO48GCr1V" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DataKey.is(java.lang.String):boolean" resolve="is" />
              <node concept="37vLTw" id="3SMO48GDrUy" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GC8rn" resolve="dataId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3SMO48GCr1X" role="3clFbx">
            <node concept="3cpWs6" id="3SMO48GCr1Y" role="3cqZAp">
              <node concept="2ShNRf" id="3SMO48GCr1Z" role="3cqZAk">
                <node concept="1pGfFk" id="3SMO48GCr20" role="2ShVmc">
                  <ref role="37wK5l" to="8d8y:~Ref.&lt;init&gt;(java.lang.Object)" resolve="Ref" />
                  <node concept="3uibUv" id="haj_nVIvM_" role="1pMfVU">
                    <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                  </node>
                  <node concept="37vLTw" id="3SMO48GC$ey" role="37wK5m">
                    <ref role="3cqZAo" node="3SMO48GoPfR" resolve="myRootId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SMO48GCr24" role="3cqZAp">
          <node concept="10Nm6u" id="3SMO48GCr25" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="haj_nVIpMv" role="jymVt" />
    <node concept="312cEu" id="3SMO48GoPn$" role="jymVt">
      <property role="TrG5h" value="MyGoToNeighbourRootActions" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="3SMO48GoPn_" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GoPnA" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:7trNacwWkn6" resolve="GoToNeighbourRootActions.GoToByTree" />
      </node>
      <node concept="3clFbW" id="3SMO48GoPnB" role="jymVt">
        <node concept="3cqZAl" id="3SMO48GoPnC" role="3clF45" />
        <node concept="3Tm1VV" id="3SMO48GoPnD" role="1B3o_S" />
        <node concept="3clFbS" id="3SMO48GoPnE" role="3clF47">
          <node concept="XkiVB" id="3SMO48GoPnF" role="3cqZAp">
            <ref role="37wK5l" to="hdhb:7trNacwWkna" resolve="GoToNeighbourRootActions.GoToByTree" />
            <node concept="37vLTw" id="3SMO48GoPnG" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48GoPfD" resolve="myTree" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="3SMO48GoPnH" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getCurrentNodeId" />
        <node concept="3Tmbuc" id="3SMO48GoPnI" role="1B3o_S" />
        <node concept="3uibUv" id="3SMO48GoPnJ" role="3clF45">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPnK" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="3SMO48GoPnL" role="3clF47">
          <node concept="3clFbF" id="3SMO48GoPnM" role="3cqZAp">
            <node concept="1rXfSq" id="3SMO48GoPnN" role="3clFbG">
              <ref role="37wK5l" node="3SMO48GoPn9" resolve="getCurrentRoot" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPnO" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SMO48GoPnP" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setCurrentNodeId" />
        <node concept="3cqZAl" id="3SMO48GoPnQ" role="3clF45" />
        <node concept="3Tm1VV" id="3SMO48GoPnR" role="1B3o_S" />
        <node concept="37vLTG" id="3SMO48GoPnS" role="3clF46">
          <property role="TrG5h" value="nodeId" />
          <node concept="3uibUv" id="3SMO48HUSe5" role="1tU5fm">
            <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="2AHcQZ" id="3SMO48GoPnU" role="2AJF6D">
            <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="3SMO48GoPnV" role="3clF47">
          <node concept="3clFbF" id="3SMO48GoPnW" role="3cqZAp">
            <node concept="1rXfSq" id="3SMO48GoPnX" role="3clFbG">
              <ref role="37wK5l" node="3SMO48GoPmo" resolve="changeCurrentRoot" />
              <node concept="37vLTw" id="3SMO48GoPnY" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48GoPnS" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPnZ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="haj_nVHXrn" role="jymVt" />
    <node concept="312cEu" id="3SMO48GoPo0" role="jymVt">
      <property role="TrG5h" value="ModelDifferenceTree" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="3SMO48GoPo1" role="jymVt">
        <node concept="3clFbS" id="3SMO48GoPo2" role="3clF47" />
        <node concept="3Tm6S6" id="3SMO48GoPo9" role="1B3o_S" />
        <node concept="3cqZAl" id="3SMO48GoPoa" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="3SMO48GoPob" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48GoPoc" role="1zkMxy">
        <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
      </node>
      <node concept="3clFb_" id="3SMO48GoPod" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getRootActions" />
        <node concept="3clFbS" id="3SMO48GoPoe" role="3clF47">
          <node concept="3cpWs8" id="3SMO48GoPof" role="3cqZAp">
            <node concept="3cpWsn" id="3SMO48GoPog" role="3cpWs9">
              <property role="TrG5h" value="actions" />
              <node concept="2ShNRf" id="3SMO48GoPoh" role="33vP2m">
                <node concept="Tc6Ow" id="3SMO48GoPoi" role="2ShVmc">
                  <node concept="3uibUv" id="3SMO48GoPoj" role="HW$YZ">
                    <ref role="3uigEE" to="pvwh:~BaseAction" resolve="BaseAction" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="3SMO48GoPok" role="1tU5fm">
                <node concept="3uibUv" id="3SMO48GoPol" role="_ZDj9">
                  <ref role="3uigEE" to="pvwh:~BaseAction" resolve="BaseAction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3SMO48GoPom" role="3cqZAp" />
          <node concept="3clFbJ" id="3SMO48GoPov" role="3cqZAp">
            <node concept="37vLTw" id="3SMO48GoPow" role="3clFbw">
              <ref role="3cqZAo" node="3SMO48GoPfY" resolve="myEditable" />
            </node>
            <node concept="3clFbS" id="3SMO48GoPox" role="3clFbx">
              <node concept="3clFbF" id="3SMO48GoPoy" role="3cqZAp">
                <node concept="2OqwBi" id="3SMO48GoPoz" role="3clFbG">
                  <node concept="TSZUe" id="3SMO48GoPo$" role="2OqNvi">
                    <node concept="2ShNRf" id="3SMO48GoPo_" role="25WWJ7">
                      <node concept="YeOm9" id="3SMO48GoPoA" role="2ShVmc">
                        <node concept="1Y3b0j" id="3SMO48GoPoB" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" node="7$NO6fvW1R_" resolve="RevertRootsAction" />
                          <ref role="1Y3XeK" node="7$NO6fvW1Rs" resolve="RevertRootsAction" />
                          <node concept="3Tm1VV" id="3SMO48GoPoC" role="1B3o_S" />
                          <node concept="Xl_RD" id="3SMO48GoPoD" role="37wK5m">
                            <property role="Xl_RC" value="roots" />
                          </node>
                          <node concept="3clFb_" id="3SMO48GoPoE" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="getChanges" />
                            <node concept="A3Dl8" id="3SMO48GoPoF" role="3clF45">
                              <node concept="3uibUv" id="3SMO48GoPoG" role="A3Ik2">
                                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                              </node>
                            </node>
                            <node concept="3Tmbuc" id="3SMO48GoPoH" role="1B3o_S" />
                            <node concept="3clFbS" id="3SMO48GoPoI" role="3clF47">
                              <node concept="3clFbF" id="3SMO48GoPoJ" role="3cqZAp">
                                <node concept="2OqwBi" id="3SMO48GoPoK" role="3clFbG">
                                  <node concept="2OqwBi" id="3SMO48GoPoL" role="2Oq$k0">
                                    <node concept="1rXfSq" id="4hiugqyzeGa" role="2Oq$k0">
                                      <ref role="37wK5l" to="kqh9:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter):java.lang.Object[]" resolve="getSelectedNodes" />
                                      <node concept="3VsKOn" id="3SMO48GoPoN" role="37wK5m">
                                        <ref role="3VsUkX" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                                      </node>
                                      <node concept="10Nm6u" id="3SMO48GoPoO" role="37wK5m" />
                                    </node>
                                    <node concept="39bAoz" id="3SMO48GoPoP" role="2OqNvi" />
                                  </node>
                                  <node concept="3goQfb" id="3SMO48GoPoQ" role="2OqNvi">
                                    <node concept="1bVj0M" id="3SMO48GoPoR" role="23t8la">
                                      <node concept="3clFbS" id="3SMO48GoPoS" role="1bW5cS">
                                        <node concept="3clFbF" id="3SMO48GoPoT" role="3cqZAp">
                                          <node concept="2OqwBi" id="3SMO48GoPoU" role="3clFbG">
                                            <node concept="liA8E" id="3SMO48GoPoV" role="2OqNvi">
                                              <ref role="37wK5l" to="bfxj:wi_$LydiyG" resolve="getChangesForRoot" />
                                              <node concept="2OqwBi" id="3SMO48GoPoW" role="37wK5m">
                                                <node concept="liA8E" id="3SMO48GoPoX" role="2OqNvi">
                                                  <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                                                </node>
                                                <node concept="37vLTw" id="2BHiRxgmE6n" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="3SMO48GoPp0" resolve="r" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="3SMO48GoPoZ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="3SMO48GoPp0" role="1bW2Oz">
                                        <property role="TrG5h" value="r" />
                                        <node concept="2jxLKc" id="3SMO48GoPp1" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="3SMO48GoPp2" role="2AJF6D">
                              <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                            </node>
                          </node>
                          <node concept="3clFb_" id="3SMO48GoPp3" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="after" />
                            <node concept="3cqZAl" id="3SMO48GoPp4" role="3clF45" />
                            <node concept="3Tmbuc" id="3SMO48GoPp5" role="1B3o_S" />
                            <node concept="3clFbS" id="3SMO48GoPp6" role="3clF47">
                              <node concept="3clFbF" id="3SMO48GoPp7" role="3cqZAp">
                                <node concept="1rXfSq" id="3SMO48GoPp8" role="3clFbG">
                                  <ref role="37wK5l" node="3SMO48GoPjU" resolve="rebuildChangeSets" />
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="3SMO48GoPp9" role="2AJF6D">
                              <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                            </node>
                          </node>
                          <node concept="3clFb_" id="3SMO48GoPpa" role="jymVt">
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="getRevertTitle" />
                            <node concept="17QB3L" id="3SMO48GoPpb" role="3clF45" />
                            <node concept="3Tmbuc" id="3SMO48GoPpc" role="1B3o_S" />
                            <node concept="3clFbS" id="3SMO48GoPpd" role="3clF47">
                              <node concept="3cpWs8" id="3SMO48GoPpe" role="3cqZAp">
                                <node concept="3cpWsn" id="3SMO48GoPpf" role="3cpWs9">
                                  <property role="TrG5h" value="roots" />
                                  <node concept="2OqwBi" id="3SMO48GoPpg" role="33vP2m">
                                    <node concept="2OqwBi" id="3SMO48GoPph" role="2Oq$k0">
                                      <node concept="1rXfSq" id="4hiugqyzhhX" role="2Oq$k0">
                                        <ref role="37wK5l" to="kqh9:~Tree.getSelectedNodes(java.lang.Class,com.intellij.ui.treeStructure.Tree$NodeFilter):java.lang.Object[]" resolve="getSelectedNodes" />
                                        <node concept="3VsKOn" id="3SMO48GoPpj" role="37wK5m">
                                          <ref role="3VsUkX" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                                        </node>
                                        <node concept="10Nm6u" id="3SMO48GoPpk" role="37wK5m" />
                                      </node>
                                      <node concept="39bAoz" id="3SMO48GoPpl" role="2OqNvi" />
                                    </node>
                                    <node concept="3$u5V9" id="3SMO48GoPpm" role="2OqNvi">
                                      <node concept="1bVj0M" id="3SMO48GoPpn" role="23t8la">
                                        <node concept="3clFbS" id="3SMO48GoPpo" role="1bW5cS">
                                          <node concept="3clFbF" id="3SMO48GoPpp" role="3cqZAp">
                                            <node concept="2OqwBi" id="3SMO48GoPpq" role="3clFbG">
                                              <node concept="37vLTw" id="2BHiRxglqfo" role="2Oq$k0">
                                                <ref role="3cqZAo" node="3SMO48GoPpt" resolve="rtn" />
                                              </node>
                                              <node concept="liA8E" id="3SMO48GoPps" role="2OqNvi">
                                                <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="3SMO48GoPpt" role="1bW2Oz">
                                          <property role="TrG5h" value="rtn" />
                                          <node concept="2jxLKc" id="3SMO48GoPpu" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="A3Dl8" id="3SMO48GoPpv" role="1tU5fm">
                                    <node concept="3uibUv" id="3SMO48GoPpw" role="A3Ik2">
                                      <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="3SMO48GoPpx" role="3cqZAp">
                                <node concept="3clFbS" id="3SMO48GoPpy" role="3clFbx">
                                  <node concept="3cpWs6" id="3SMO48GoPpz" role="3cqZAp">
                                    <node concept="3K4zz7" id="3SMO48GoPp$" role="3cqZAk">
                                      <node concept="Xl_RD" id="3SMO48GoPp_" role="3K4E3e">
                                        <property role="Xl_RC" value="Properties" />
                                      </node>
                                      <node concept="Xl_RD" id="3SMO48GoPpA" role="3K4GZi">
                                        <property role="Xl_RC" value="Root" />
                                      </node>
                                      <node concept="3clFbC" id="3SMO48GoPpB" role="3K4Cdx">
                                        <node concept="2OqwBi" id="3SMO48GoPpC" role="3uHU7B">
                                          <node concept="37vLTw" id="3SMO48GoPpD" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3SMO48GoPpf" resolve="roots" />
                                          </node>
                                          <node concept="1uHKPH" id="3SMO48GoPpE" role="2OqNvi" />
                                        </node>
                                        <node concept="10Nm6u" id="3SMO48GoPpF" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbC" id="3SMO48GoPpG" role="3clFbw">
                                  <node concept="2OqwBi" id="3SMO48GoPpH" role="3uHU7B">
                                    <node concept="34oBXx" id="3SMO48GoPpI" role="2OqNvi" />
                                    <node concept="37vLTw" id="3SMO48GoPpJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SMO48GoPpf" resolve="roots" />
                                    </node>
                                  </node>
                                  <node concept="3cmrfG" id="3SMO48GoPpK" role="3uHU7w">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                                <node concept="3eNFk2" id="3SMO48GoPpL" role="3eNLev">
                                  <node concept="3clFbS" id="3SMO48GoPpM" role="3eOfB_">
                                    <node concept="3cpWs6" id="3SMO48GoPpN" role="3cqZAp">
                                      <node concept="Xl_RD" id="3SMO48GoPpO" role="3cqZAk">
                                        <property role="Xl_RC" value="Roots and Properties " />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3SMO48GoPpP" role="3eO9$A">
                                    <node concept="37vLTw" id="3SMO48GoPpQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3SMO48GoPpf" resolve="roots" />
                                    </node>
                                    <node concept="2HwmR7" id="3SMO48GoPpR" role="2OqNvi">
                                      <node concept="1bVj0M" id="3SMO48GoPpS" role="23t8la">
                                        <node concept="3clFbS" id="3SMO48GoPpT" role="1bW5cS">
                                          <node concept="3clFbF" id="3SMO48GoPpU" role="3cqZAp">
                                            <node concept="3clFbC" id="3SMO48GoPpV" role="3clFbG">
                                              <node concept="10Nm6u" id="3SMO48GoPpW" role="3uHU7w" />
                                              <node concept="37vLTw" id="2BHiRxgmjjL" role="3uHU7B">
                                                <ref role="3cqZAo" node="3SMO48GoPpY" resolve="r" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="3SMO48GoPpY" role="1bW2Oz">
                                          <property role="TrG5h" value="r" />
                                          <node concept="2jxLKc" id="3SMO48GoPpZ" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="3SMO48GoPq0" role="3cqZAp">
                                <node concept="Xl_RD" id="3SMO48GoPq1" role="3cqZAk">
                                  <property role="Xl_RC" value="Roots" />
                                </node>
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="3SMO48GoPq2" role="2AJF6D">
                              <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3SMO48GoPq3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SMO48GoPog" resolve="actions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3SMO48GoPq4" role="3cqZAp">
            <node concept="37vLTw" id="3SMO48GoPq5" role="3cqZAk">
              <ref role="3cqZAo" node="3SMO48GoPog" resolve="actions" />
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="3SMO48GoPq6" role="1B3o_S" />
        <node concept="A3Dl8" id="3SMO48GoPq7" role="3clF45">
          <node concept="3uibUv" id="3SMO48GoPq8" role="A3Ik2">
            <ref role="3uigEE" to="pvwh:~BaseAction" resolve="BaseAction" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPq9" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SMO48GoPqa" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="updateRootCustomPresentation" />
        <node concept="3Tmbuc" id="3SMO48GoPqb" role="1B3o_S" />
        <node concept="3cqZAl" id="3SMO48GoPqc" role="3clF45" />
        <node concept="3clFbS" id="3SMO48GoPqd" role="3clF47">
          <node concept="3cpWs8" id="3SMO48GoPqe" role="3cqZAp">
            <node concept="3cpWsn" id="3SMO48GoPqf" role="3cpWs9">
              <property role="TrG5h" value="compositeChangeType" />
              <node concept="Rm8GO" id="3SMO48GoPqg" role="33vP2m">
                <ref role="1Px2BO" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
                <ref role="Rm8GQ" to="btf5:7inhnIFBpI0" resolve="CHANGE" />
              </node>
              <node concept="3uibUv" id="3SMO48GoPqh" role="1tU5fm">
                <ref role="3uigEE" to="btf5:7inhnIFBpHM" resolve="ChangeType" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3SMO48GoPqi" role="3cqZAp">
            <node concept="3clFbS" id="3SMO48GoPqj" role="3clFbx">
              <node concept="3cpWs8" id="3SMO48GoPqk" role="3cqZAp">
                <node concept="3cpWsn" id="3SMO48GoPql" role="3cpWs9">
                  <property role="TrG5h" value="firstChange" />
                  <node concept="2OqwBi" id="3SMO48GoPqm" role="33vP2m">
                    <node concept="1uHKPH" id="3SMO48GoPqn" role="2OqNvi" />
                    <node concept="2OqwBi" id="3SMO48GoPqo" role="2Oq$k0">
                      <node concept="liA8E" id="3SMO48GoPqp" role="2OqNvi">
                        <ref role="37wK5l" to="bfxj:wi_$LydiyG" resolve="getChangesForRoot" />
                        <node concept="2OqwBi" id="3SMO48GoPqq" role="37wK5m">
                          <node concept="liA8E" id="3SMO48GoPqr" role="2OqNvi">
                            <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxgm5K0" role="2Oq$k0">
                            <ref role="3cqZAo" node="3SMO48GoPqT" resolve="rootTreeNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3SMO48GoPqt" role="2Oq$k0">
                        <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="3SMO48GoPqu" role="1tU5fm">
                    <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3SMO48GoPqv" role="3cqZAp">
                <node concept="22lmx$" id="3SMO48GoPqw" role="3clFbw">
                  <node concept="2ZW3vV" id="3SMO48GoPqx" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTuzH" role="2ZW6bz">
                      <ref role="3cqZAo" node="3SMO48GoPql" resolve="firstChange" />
                    </node>
                    <node concept="3uibUv" id="3SMO48GoPqz" role="2ZW6by">
                      <ref role="3uigEE" to="btf5:5x0q8wkvS3B" resolve="AddRootChange" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="3SMO48GoPq$" role="3uHU7w">
                    <node concept="37vLTw" id="3GM_nagTyIg" role="2ZW6bz">
                      <ref role="3cqZAo" node="3SMO48GoPql" resolve="firstChange" />
                    </node>
                    <node concept="3uibUv" id="3SMO48GoPqA" role="2ZW6by">
                      <ref role="3uigEE" to="btf5:5x0q8wkvVi1" resolve="DeleteRootChange" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="3SMO48GoPqB" role="3clFbx">
                  <node concept="3clFbF" id="3SMO48GoPqC" role="3cqZAp">
                    <node concept="37vLTI" id="3SMO48GoPqD" role="3clFbG">
                      <node concept="2OqwBi" id="3SMO48GoPqE" role="37vLTx">
                        <node concept="37vLTw" id="3GM_nagTxER" role="2Oq$k0">
                          <ref role="3cqZAo" node="3SMO48GoPql" resolve="firstChange" />
                        </node>
                        <node concept="liA8E" id="3SMO48GoPqG" role="2OqNvi">
                          <ref role="37wK5l" to="btf5:7inhnIFBpIN" resolve="getType" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTuTg" role="37vLTJ">
                        <ref role="3cqZAo" node="3SMO48GoPqf" resolve="compositeChangeType" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="12vgpa66r80" role="3eNLev">
                  <node concept="3clFbC" id="12vgpa66x3m" role="3eO9$A">
                    <node concept="10Nm6u" id="12vgpa66x3X" role="3uHU7w" />
                    <node concept="37vLTw" id="12vgpa66u3y" role="3uHU7B">
                      <ref role="3cqZAo" node="3SMO48GoPql" resolve="firstChange" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="12vgpa66r82" role="3eOfB_">
                    <node concept="3clFbF" id="12vgpa66zWI" role="3cqZAp">
                      <node concept="37vLTI" id="12vgpa66BcZ" role="3clFbG">
                        <node concept="10Nm6u" id="12vgpa66E4D" role="37vLTx" />
                        <node concept="37vLTw" id="12vgpa66zWH" role="37vLTJ">
                          <ref role="3cqZAo" node="3SMO48GoPqf" resolve="compositeChangeType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3SMO48GoPqI" role="3clFbw">
              <node concept="10Nm6u" id="3SMO48GoPqJ" role="3uHU7w" />
              <node concept="2OqwBi" id="3SMO48GoPqK" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmeq1" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GoPqT" resolve="rootTreeNode" />
                </node>
                <node concept="liA8E" id="3SMO48GoPqM" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="12vgpa65bpa" role="9aQIa">
              <node concept="3clFbS" id="12vgpa65bpb" role="9aQI4">
                <node concept="3clFbJ" id="12vgpa65lRI" role="3cqZAp">
                  <node concept="22lmx$" id="12vgpa66aRK" role="3clFbw">
                    <node concept="3clFbC" id="12vgpa66aRM" role="3uHU7B">
                      <node concept="37vLTw" id="12vgpa66aRN" role="3uHU7B">
                        <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                      </node>
                      <node concept="10Nm6u" id="12vgpa66aRO" role="3uHU7w" />
                    </node>
                    <node concept="2OqwBi" id="12vgpa66aRP" role="3uHU7w">
                      <node concept="2OqwBi" id="12vgpa66aRQ" role="2Oq$k0">
                        <node concept="liA8E" id="12vgpa66aRR" role="2OqNvi">
                          <ref role="37wK5l" to="bfxj:3kRMfhMv9tJ" resolve="getModelChanges" />
                        </node>
                        <node concept="37vLTw" id="12vgpa66aRS" role="2Oq$k0">
                          <ref role="3cqZAo" node="3SMO48GoPfA" resolve="myMetadataChangeSet" />
                        </node>
                      </node>
                      <node concept="1v1jN8" id="12vgpa66aRT" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="12vgpa65lRK" role="3clFbx">
                    <node concept="3clFbF" id="12vgpa66dOp" role="3cqZAp">
                      <node concept="37vLTI" id="12vgpa66h55" role="3clFbG">
                        <node concept="10Nm6u" id="12vgpa66jWo" role="37vLTx" />
                        <node concept="37vLTw" id="12vgpa66dOo" role="37vLTJ">
                          <ref role="3cqZAo" node="3SMO48GoPqf" resolve="compositeChangeType" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3SMO48GoPqN" role="3cqZAp">
            <node concept="2OqwBi" id="3SMO48GoPqO" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglvMM" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48GoPqT" resolve="rootTreeNode" />
              </node>
              <node concept="liA8E" id="3SMO48GoPqQ" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:7yCf_dgMyvu" resolve="setColor" />
                <node concept="3K4zz7" id="12vgpa64_oy" role="37wK5m">
                  <node concept="10Nm6u" id="12vgpa64Cdz" role="3K4E3e" />
                  <node concept="3clFbC" id="12vgpa64yms" role="3K4Cdx">
                    <node concept="10Nm6u" id="12vgpa64yn3" role="3uHU7w" />
                    <node concept="37vLTw" id="12vgpa64uXH" role="3uHU7B">
                      <ref role="3cqZAo" node="3SMO48GoPqf" resolve="compositeChangeType" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3SMO48GoPqR" role="3K4GZi">
                    <ref role="37wK5l" to="hdhb:42hl10VH9Rf" resolve="getForTree" />
                    <ref role="1Pybhc" to="hdhb:42hl10VH9R2" resolve="ChangeColors" />
                    <node concept="37vLTw" id="3GM_nagTvzf" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48GoPqf" resolve="compositeChangeType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3SMO48GoPqT" role="3clF46">
          <property role="TrG5h" value="rootTreeNode" />
          <node concept="2AHcQZ" id="3SMO48GoPqU" role="2AJF6D">
            <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="3SMO48GoPqV" role="1tU5fm">
            <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPqW" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SMO48GoPqX" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModels" />
        <node concept="3Tmbuc" id="3SMO48GoPqY" role="1B3o_S" />
        <node concept="3clFbS" id="3SMO48GoPqZ" role="3clF47">
          <node concept="3clFbF" id="3SMO48GoPr0" role="3cqZAp">
            <node concept="2YIFZM" id="3SMO48GoPr1" role="3clFbG">
              <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
              <node concept="2OqwBi" id="3SMO48GoPr2" role="37wK5m">
                <node concept="liA8E" id="3SMO48GoPr3" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuW0D" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                </node>
              </node>
              <node concept="2OqwBi" id="3SMO48GoPr5" role="37wK5m">
                <node concept="liA8E" id="3SMO48GoPr6" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuw_g" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="A3Dl8" id="3SMO48GoPr8" role="3clF45">
          <node concept="H_c77" id="18nb9UMkd2$" role="A3Ik2" />
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPra" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3SMO48GoPrb" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getAffectedRoots" />
        <node concept="3clFbS" id="3SMO48GoPrc" role="3clF47">
          <node concept="3clFbF" id="3SMO48GoPrd" role="3cqZAp">
            <node concept="2OqwBi" id="3SMO48GoPre" role="3clFbG">
              <node concept="liA8E" id="3SMO48GoPrf" role="2OqNvi">
                <ref role="37wK5l" to="bfxj:wi_$Lydmoa" resolve="getAffectedRoots" />
              </node>
              <node concept="37vLTw" id="3SMO48GoPrg" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48GoPfz" resolve="myChangeSet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tmbuc" id="3SMO48GoPrh" role="1B3o_S" />
        <node concept="A3Dl8" id="3SMO48GoPri" role="3clF45">
          <node concept="3uibUv" id="3SMO48GoPrj" role="A3Ik2">
            <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3SMO48GoPrk" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6rlHBM$Poo6" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onUnselect" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="6rlHBM$Poo8" role="1B3o_S" />
        <node concept="3cqZAl" id="6rlHBM$Poo9" role="3clF45" />
        <node concept="3clFbS" id="6rlHBM$Pooa" role="3clF47">
          <node concept="3clFbF" id="6rlHBM$Q20t" role="3cqZAp">
            <node concept="1rXfSq" id="6rlHBM$Q20s" role="3clFbG">
              <ref role="37wK5l" node="haj_nYikT5" resolve="resetCurrentRoot" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6rlHBM$Poob" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="3UY41VCYoLZ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="onSelectRoot" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="3UY41VCYoM1" role="1B3o_S" />
        <node concept="3cqZAl" id="3UY41VCYoM2" role="3clF45" />
        <node concept="37vLTG" id="3UY41VCYoM3" role="3clF46">
          <property role="TrG5h" value="rootId" />
          <node concept="3uibUv" id="3UY41VCYoM4" role="1tU5fm">
            <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="2AHcQZ" id="3UY41VCYoM5" role="2AJF6D">
            <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="3UY41VCYoM6" role="3clF47">
          <node concept="3clFbF" id="3UY41VCYv$6" role="3cqZAp">
            <node concept="1rXfSq" id="3UY41VCYv$5" role="3clFbG">
              <ref role="37wK5l" node="3SMO48GoPmo" resolve="changeCurrentRoot" />
              <node concept="37vLTw" id="3UY41VCYyq4" role="37wK5m">
                <ref role="3cqZAo" node="3UY41VCYoM3" resolve="rootId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3UY41VCYoM7" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3SMO48GoPrl" role="1B3o_S" />
    <node concept="3uibUv" id="3SMO48GoPrm" role="1zkMxy">
      <ref role="3uigEE" to="810:~DialogWrapper" resolve="DialogWrapper" />
    </node>
  </node>
  <node concept="312cEu" id="7DvDtq9MCV9">
    <property role="TrG5h" value="RootDifferencePane" />
    <node concept="Wx3nA" id="6HpunfUDqhj" role="jymVt">
      <property role="TrG5h" value="PARAM_SHOW_INSPECTOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWs3" id="6HpunfUDEsf" role="33vP2m">
        <node concept="Xl_RD" id="6HpunfUDEsw" role="3uHU7w">
          <property role="Xl_RC" value="ShowInspector" />
        </node>
        <node concept="2OqwBi" id="6HpunfUD$g2" role="3uHU7B">
          <node concept="liA8E" id="6HpunfUDDVX" role="2OqNvi">
            <ref role="37wK5l" to="e2lb:~Class.getName():java.lang.String" resolve="getName" />
          </node>
          <node concept="3VsKOn" id="6HpunfUDzzG" role="2Oq$k0">
            <ref role="3VsUkX" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6HpunfUDluR" role="1B3o_S" />
      <node concept="3uibUv" id="6HpunfUDqeo" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="Wx3nA" id="6HpunfUDPxf" role="jymVt">
      <property role="TrG5h" value="PARAM_INSPECTOR_SPLITTER_POSITION" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWs3" id="6HpunfUDPxg" role="33vP2m">
        <node concept="Xl_RD" id="6HpunfUDPxh" role="3uHU7w">
          <property role="Xl_RC" value="InspectorSplitterPosition" />
        </node>
        <node concept="2OqwBi" id="6HpunfUDPxi" role="3uHU7B">
          <node concept="liA8E" id="6HpunfUDPxj" role="2OqNvi">
            <ref role="37wK5l" to="e2lb:~Class.getName():java.lang.String" resolve="getName" />
          </node>
          <node concept="3VsKOn" id="6HpunfUDPxk" role="2Oq$k0">
            <ref role="3VsUkX" node="7DvDtq9MCV9" resolve="RootDifferencePane" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6HpunfUDPxl" role="1B3o_S" />
      <node concept="3uibUv" id="6HpunfUDPxm" role="1tU5fm">
        <ref role="3uigEE" to="e2lb:~String" resolve="String" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48FTf02" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <node concept="3uibUv" id="3SMO48FTw02" role="1tU5fm">
        <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="3SMO48FTf04" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7DvDtqawOK$" role="jymVt">
      <property role="TrG5h" value="myChangeSet" />
      <node concept="3uibUv" id="7DvDtqawOK_" role="1tU5fm">
        <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
      </node>
      <node concept="3Tm6S6" id="7DvDtqawOKA" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7DvDtqawOKB" role="jymVt">
      <property role="TrG5h" value="myRootId" />
      <node concept="3uibUv" id="3SMO48GRkNR" role="1tU5fm">
        <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm6S6" id="7DvDtqawOKD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7DvDtqawNne" role="jymVt" />
    <node concept="312cEg" id="7DvDtqax92K" role="jymVt">
      <property role="TrG5h" value="myOldEditor" />
      <node concept="3Tm6S6" id="7DvDtqax92L" role="1B3o_S" />
      <node concept="3uibUv" id="7DvDtqax92M" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
    </node>
    <node concept="312cEg" id="7DvDtqax92N" role="jymVt">
      <property role="TrG5h" value="myNewEditor" />
      <node concept="3Tm6S6" id="7DvDtqax92O" role="1B3o_S" />
      <node concept="3uibUv" id="7DvDtqax92P" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvDtqax7Dj" role="jymVt" />
    <node concept="312cEg" id="7DvDtq9Ou8r" role="jymVt">
      <property role="TrG5h" value="myChangeGroupLayouts" />
      <node concept="3Tm6S6" id="7DvDtq9Ou8s" role="1B3o_S" />
      <node concept="_YKpA" id="7DvDtq9Ou8t" role="1tU5fm">
        <node concept="3uibUv" id="7DvDtq9Ou8u" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvDtq9Ou8v" role="33vP2m">
        <node concept="Tc6Ow" id="7DvDtq9Ou8w" role="2ShVmc">
          <node concept="3uibUv" id="7DvDtq9Ou8x" role="HW$YZ">
            <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7DvDtq9OAPR" role="jymVt">
      <property role="TrG5h" value="myEditorSeparators" />
      <node concept="_YKpA" id="7DvDtq9OAPS" role="1tU5fm">
        <node concept="3uibUv" id="7DvDtq9OAPT" role="_ZDj9">
          <ref role="3uigEE" to="hdhb:42hl10VHapM" resolve="DiffEditorSeparator" />
        </node>
      </node>
      <node concept="2ShNRf" id="7DvDtq9OAPU" role="33vP2m">
        <node concept="Tc6Ow" id="7DvDtq9OAPV" role="2ShVmc">
          <node concept="3uibUv" id="7DvDtq9OAPW" role="HW$YZ">
            <ref role="3uigEE" to="hdhb:42hl10VHapM" resolve="DiffEditorSeparator" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7DvDtq9OAPX" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48FSNGR" role="jymVt">
      <property role="TrG5h" value="myDiffEditorsGroup" />
      <node concept="2ShNRf" id="3SMO48FSNGS" role="33vP2m">
        <node concept="1pGfFk" id="3SMO48FSNGT" role="2ShVmc">
          <ref role="37wK5l" to="hdhb:42hl10VHaI4" resolve="DiffEditorsGroup" />
        </node>
      </node>
      <node concept="3uibUv" id="3SMO48FSNGU" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHaCz" resolve="DiffEditorsGroup" />
      </node>
      <node concept="3Tm6S6" id="3SMO48FSNGV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7DvDtq9OsHm" role="jymVt" />
    <node concept="312cEg" id="3SMO48FPagc" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPanel" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="3SMO48FPcFX" role="33vP2m">
        <node concept="1pGfFk" id="3SMO48FPcFW" role="2ShVmc">
          <ref role="37wK5l" to="ayyu:~JBSplitter.&lt;init&gt;(boolean,float)" resolve="JBSplitter" />
          <node concept="3clFbT" id="3SMO48FPiik" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
          <node concept="2$xPTn" id="3SMO48FPOe7" role="37wK5m">
            <property role="2$xPTl" value="0.7f" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3SMO48FP7$d" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48FPaaL" role="1tU5fm">
        <ref role="3uigEE" to="ayyu:~JBSplitter" resolve="JBSplitter" />
      </node>
    </node>
    <node concept="312cEg" id="7DvDtq9NDI4" role="jymVt">
      <property role="TrG5h" value="myTopPanel" />
      <node concept="3Tm6S6" id="7DvDtq9NDI5" role="1B3o_S" />
      <node concept="3uibUv" id="7DvDtq9NDI6" role="1tU5fm">
        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
      </node>
      <node concept="2ShNRf" id="7DvDtq9NDI7" role="33vP2m">
        <node concept="1pGfFk" id="7DvDtq9NDI8" role="2ShVmc">
          <ref role="37wK5l" to="dbrf:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="7DvDtq9NDI9" role="37wK5m">
            <node concept="1pGfFk" id="7DvDtq9NDIa" role="2ShVmc">
              <ref role="37wK5l" to="1t7x:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7DvDtq9NDIb" role="jymVt">
      <property role="TrG5h" value="myBottomPanel" />
      <node concept="3Tm6S6" id="7DvDtq9NDIc" role="1B3o_S" />
      <node concept="3uibUv" id="7DvDtq9NDId" role="1tU5fm">
        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
      </node>
      <node concept="2ShNRf" id="7DvDtq9NDIe" role="33vP2m">
        <node concept="1pGfFk" id="7DvDtq9NDIf" role="2ShVmc">
          <ref role="37wK5l" to="dbrf:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
          <node concept="2ShNRf" id="7DvDtq9NDIg" role="37wK5m">
            <node concept="1pGfFk" id="7DvDtq9NDIh" role="2ShVmc">
              <ref role="37wK5l" to="1t7x:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="f$Zk9J99Td" role="jymVt">
      <property role="TrG5h" value="isInspectorShown" />
      <node concept="2OqwBi" id="6HpunfUACm4" role="33vP2m">
        <node concept="liA8E" id="6HpunfUAFBT" role="2OqNvi">
          <ref role="37wK5l" to="oj08:~PropertiesComponent.getBoolean(java.lang.String,boolean):boolean" resolve="getBoolean" />
          <node concept="37vLTw" id="6HpunfUDKey" role="37wK5m">
            <ref role="3cqZAo" node="6HpunfUDqhj" resolve="PARAM_SHOW_INSPECTOR" />
          </node>
          <node concept="3clFbT" id="6HpunfUBnp3" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="2YIFZM" id="6HpunfUA$Dp" role="2Oq$k0">
          <ref role="37wK5l" to="oj08:~PropertiesComponent.getInstance():com.intellij.ide.util.PropertiesComponent" resolve="getInstance" />
          <ref role="1Pybhc" to="oj08:~PropertiesComponent" resolve="PropertiesComponent" />
        </node>
      </node>
      <node concept="10P_77" id="2OJKTJ7uGLV" role="1tU5fm" />
      <node concept="3Tm6S6" id="f$Zk9J99Te" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7DvDtq9NDGD" role="jymVt" />
    <node concept="312cEg" id="3SMO48FMVcF" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myStatusBar" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3SMO48FMSMS" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48FMVcf" role="1tU5fm">
        <ref role="3uigEE" to="bcbw:~DiffStatusBar" resolve="DiffStatusBar" />
      </node>
    </node>
    <node concept="312cEg" id="3SMO48FUu6x" role="jymVt">
      <property role="TrG5h" value="myActionGroup" />
      <node concept="3uibUv" id="3SMO48FUu6y" role="1tU5fm">
        <ref role="3uigEE" to="nx1:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="3Tm6S6" id="3SMO48FUu6z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3SMO48FXNAc" role="jymVt">
      <property role="TrG5h" value="myTraverser" />
      <node concept="3uibUv" id="3SMO48FXNAd" role="1tU5fm">
        <ref role="3uigEE" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
      </node>
      <node concept="3Tm6S6" id="3SMO48FXNAe" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7DvDtq9Odzk" role="jymVt" />
    <node concept="3clFbW" id="3SMO48FYpgM" role="jymVt">
      <node concept="3clFbS" id="3SMO48FYpgN" role="3clF47">
        <node concept="3clFbF" id="3SMO48FYpgX" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYpgY" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FYpgZ" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48FYpkY" resolve="changeSet" />
            </node>
            <node concept="37vLTw" id="3SMO48FYph0" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FYph1" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYph2" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgl6vQ" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48FYpl0" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuWS8" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FYph5" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYph6" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FYph7" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48FYpkW" resolve="project" />
            </node>
            <node concept="37vLTw" id="3SMO48FYph8" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48FTf02" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48FYphd" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48GsjUO" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GslVu" role="3clFbG">
            <node concept="37vLTw" id="3SMO48Gsm_d" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48Gsh3f" resolve="statusBar" />
            </node>
            <node concept="37vLTw" id="3SMO48GsjUN" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48FMVcF" resolve="myStatusBar" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48Gsiv_" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48FYphe" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYphf" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyz9_b" role="37vLTx">
              <ref role="37wK5l" node="3SMO48FRWsm" resolve="addEditor" />
              <node concept="3cmrfG" id="3SMO48FYphh" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3SMO48FYphi" role="37wK5m">
                <node concept="37vLTw" id="3SMO48FYphj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="3SMO48FYphk" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                </node>
              </node>
              <node concept="AH0OO" id="2zHbVQB_2$X" role="37wK5m">
                <node concept="3cmrfG" id="2zHbVQB_31u" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="2zHbVQB_10Q" role="AHHXb">
                  <ref role="3cqZAo" node="3SMO48FYpl4" resolve="titles" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeudgj" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FYphm" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYphn" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyzbMJ" role="37vLTx">
              <ref role="37wK5l" node="3SMO48FRWsm" resolve="addEditor" />
              <node concept="3cmrfG" id="3SMO48FYphp" role="37wK5m">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3SMO48FYphq" role="37wK5m">
                <node concept="37vLTw" id="3SMO48FYphr" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="3SMO48FYphs" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                </node>
              </node>
              <node concept="AH0OO" id="2zHbVQB_5GQ" role="37wK5m">
                <node concept="3cmrfG" id="2zHbVQB_5Hh" role="AHEQo">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="2zHbVQB_48L" role="AHHXb">
                  <ref role="3cqZAo" node="3SMO48FYpl4" resolve="titles" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuvNJ" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FYphv" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyU6R" role="3clFbG">
            <ref role="37wK5l" node="7DvDtq9OdRe" resolve="linkEditors" />
            <node concept="3clFbT" id="3SMO48FYphx" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FYphy" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzgYj" role="3clFbG">
            <ref role="37wK5l" node="7DvDtq9OdRe" resolve="linkEditors" />
            <node concept="3clFbT" id="3SMO48FYph$" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbH" id="2cIG92Y8CBn" role="3cqZAp" />
        <node concept="3clFbF" id="7oPBZpEmxD$" role="3cqZAp">
          <node concept="2OqwBi" id="7oPBZpEmxD_" role="3clFbG">
            <node concept="liA8E" id="7oPBZpEmxDA" role="2OqNvi">
              <ref role="37wK5l" to="ayyu:~JBSplitter.setSplitterProportionKey(java.lang.String):void" resolve="setSplitterProportionKey" />
              <node concept="37vLTw" id="6HpunfUEkJh" role="37wK5m">
                <ref role="3cqZAo" node="6HpunfUDPxf" resolve="PARAM_INSPECTOR_SPLITTER_POSITION" />
              </node>
            </node>
            <node concept="37vLTw" id="7oPBZpEmxDG" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="haj_nV$cgk" role="3cqZAp">
          <node concept="2OqwBi" id="haj_nV$dFk" role="3clFbG">
            <node concept="liA8E" id="haj_nV$kCF" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setFirstComponent(javax.swing.JComponent):void" resolve="setFirstComponent" />
              <node concept="37vLTw" id="haj_nV$lNY" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtq9NDI4" resolve="myTopPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="haj_nV$cgj" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2OJKTJ7uI88" role="3cqZAp">
          <node concept="37vLTw" id="2OJKTJ7uIM0" role="3clFbw">
            <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
          </node>
          <node concept="3clFbS" id="2OJKTJ7uI8a" role="3clFbx">
            <node concept="3clFbF" id="haj_nV$ncu" role="3cqZAp">
              <node concept="2OqwBi" id="haj_nV$oDy" role="3clFbG">
                <node concept="liA8E" id="haj_nV$vj3" role="2OqNvi">
                  <ref role="37wK5l" to="810:~Splitter.setSecondComponent(javax.swing.JComponent):void" resolve="setSecondComponent" />
                  <node concept="37vLTw" id="haj_nV$vYM" role="37wK5m">
                    <ref role="3cqZAo" node="7DvDtq9NDIb" resolve="myBottomPanel" />
                  </node>
                </node>
                <node concept="37vLTw" id="haj_nV$nct" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48FYphN" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48FYpi7" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FYpi8" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FYpi9" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
            </node>
            <node concept="2ShNRf" id="3SMO48FYpia" role="37vLTx">
              <node concept="1pGfFk" id="3SMO48FYpib" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:42hl10VHb5A" resolve="NextPreviousTraverser" />
                <node concept="37vLTw" id="2BHiRxeuKlI" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9Ou8r" resolve="myChangeGroupLayouts" />
                </node>
                <node concept="2OqwBi" id="3SMO48FYpid" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxeukDO" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
                  </node>
                  <node concept="liA8E" id="3SMO48FYpif" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHaA0" resolve="getMainEditor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48GkaRG" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48GlQzT" role="3cqZAp">
          <node concept="1rXfSq" id="3SMO48GlQzS" role="3clFbG">
            <ref role="37wK5l" node="3SMO48Gll7j" resolve="createActionGroup" />
            <node concept="37vLTw" id="3SMO48GlRiF" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48FYpl9" resolve="isEditable" />
            </node>
            <node concept="37vLTw" id="3SMO48GlSjq" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48FYpl2" resolve="rootName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48FYpkU" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48FYpkV" role="3clF45" />
      <node concept="37vLTG" id="3SMO48FYpkW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3SMO48FZab1" role="1tU5fm">
          <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FYpkY" role="3clF46">
        <property role="TrG5h" value="changeSet" />
        <node concept="3uibUv" id="3SMO48FYpkZ" role="1tU5fm">
          <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FYpl0" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="3SMO48GRiMy" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FYpl2" role="3clF46">
        <property role="TrG5h" value="rootName" />
        <node concept="17QB3L" id="3SMO48FYpl3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3SMO48FYpl4" role="3clF46">
        <property role="TrG5h" value="titles" />
        <node concept="10Q1$e" id="3SMO48FYpl5" role="1tU5fm">
          <node concept="17QB3L" id="3SMO48FYpl6" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FYpl9" role="3clF46">
        <property role="TrG5h" value="isEditable" />
        <node concept="10P_77" id="3SMO48FYpla" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3SMO48Gsh3f" role="3clF46">
        <property role="TrG5h" value="statusBar" />
        <node concept="3uibUv" id="3SMO48GshJ_" role="1tU5fm">
          <ref role="3uigEE" to="bcbw:~DiffStatusBar" resolve="DiffStatusBar" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SMO48Gll7j" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createActionGroup" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SMO48Gll7m" role="3clF47">
        <node concept="3clFbF" id="3SMO48GlwpE" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48GlwpF" role="3clFbG">
            <node concept="2ShNRf" id="3SMO48GlwpG" role="37vLTx">
              <node concept="1pGfFk" id="3SMO48GlwpH" role="2ShVmc">
                <ref role="37wK5l" to="nx1:~DefaultActionGroup.&lt;init&gt;()" resolve="DefaultActionGroup" />
              </node>
            </node>
            <node concept="37vLTw" id="3SMO48GlwpI" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GlwpJ" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48GlwpK" role="3clFbG">
            <node concept="liA8E" id="3SMO48GlwpL" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DefaultActionGroup.addAll(com.intellij.openapi.actionSystem.AnAction...):void" resolve="addAll" />
              <node concept="2OqwBi" id="3SMO48GlwpM" role="37wK5m">
                <node concept="37vLTw" id="3SMO48GlwpN" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
                </node>
                <node concept="liA8E" id="3SMO48GlwpO" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
                </node>
              </node>
              <node concept="2OqwBi" id="3SMO48GlwpP" role="37wK5m">
                <node concept="37vLTw" id="3SMO48GlwpQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
                </node>
                <node concept="liA8E" id="3SMO48GlwpR" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3SMO48GlwpS" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vmdkvugoy_" role="3cqZAp">
          <node concept="2OqwBi" id="3Vmdkvugz3m" role="3clFbG">
            <node concept="liA8E" id="3VmdkvugDaH" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWlKVC" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfIsG" resolve="PREV_CHANGE_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuh98$" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
              </node>
            </node>
            <node concept="2OqwBi" id="3VmdkvugrTF" role="2Oq$k0">
              <node concept="liA8E" id="3Vmdkvugvrn" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="3Vmdkvugoy$" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Vmdkvuhh6G" role="3cqZAp">
          <node concept="2OqwBi" id="3Vmdkvuhh6H" role="3clFbG">
            <node concept="liA8E" id="3Vmdkvuhh6I" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="6gc0uWWlDk8" role="37wK5m">
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
                <ref role="3cqZAo" to="hdhb:6gc0uWWfBpD" resolve="NEXT_CHANGE_SHORTCUT" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuhh6L" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
              </node>
            </node>
            <node concept="2OqwBi" id="3Vmdkvuhh6M" role="2Oq$k0">
              <node concept="liA8E" id="3Vmdkvuhh6N" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="3Vmdkvuhh6O" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48GlwpT" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48GlwpU" role="3clFbG">
            <node concept="liA8E" id="3SMO48GlwpV" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DefaultActionGroup.addSeparator():void" resolve="addSeparator" />
            </node>
            <node concept="37vLTw" id="3SMO48GlwpW" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2OJKTJ7uRkU" role="3cqZAp">
          <node concept="2OqwBi" id="2OJKTJ7uUFt" role="3clFbG">
            <node concept="liA8E" id="2OJKTJ7uZ1i" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction):void" resolve="add" />
              <node concept="2ShNRf" id="2OJKTJ7v1Mu" role="37wK5m">
                <node concept="YeOm9" id="2OJKTJ7vyN7" role="2ShVmc">
                  <node concept="1Y3b0j" id="2OJKTJ7vyNa" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="nx1:~ToggleAction" resolve="ToggleAction" />
                    <ref role="37wK5l" to="nx1:~ToggleAction.&lt;init&gt;(java.lang.String,java.lang.String,javax.swing.Icon)" resolve="ToggleAction" />
                    <node concept="Xl_RD" id="2OJKTJ7ysKj" role="37wK5m">
                      <property role="Xl_RC" value="Show Inspector" />
                    </node>
                    <node concept="Xl_RD" id="3Pc1BYGlNsj" role="37wK5m">
                      <property role="Xl_RC" value="Show Inspector Windows" />
                    </node>
                    <node concept="10M0yZ" id="5p4dR3XLhVj" role="37wK5m">
                      <ref role="1PxDUh" to="ai1m:~IdeIcons" resolve="IdeIcons" />
                      <ref role="3cqZAo" to="ai1m:~IdeIcons.INSPECTOR_ICON" resolve="INSPECTOR_ICON" />
                    </node>
                    <node concept="3Tm1VV" id="2OJKTJ7vyNb" role="1B3o_S" />
                    <node concept="3clFb_" id="2OJKTJ7vyNg" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="isSelected" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="2OJKTJ7vyNh" role="1B3o_S" />
                      <node concept="10P_77" id="2OJKTJ7vyNj" role="3clF45" />
                      <node concept="37vLTG" id="2OJKTJ7vyNk" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="2OJKTJ7vyNl" role="1tU5fm">
                          <ref role="3uigEE" to="nx1:~AnActionEvent" resolve="AnActionEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2OJKTJ7vyNm" role="3clF47">
                        <node concept="3clFbF" id="2OJKTJ7vCp_" role="3cqZAp">
                          <node concept="37vLTw" id="2OJKTJ7vCp$" role="3clFbG">
                            <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="2OJKTJ7vyNo" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="setSelected" />
                      <property role="DiZV1" value="false" />
                      <property role="IEkAT" value="false" />
                      <node concept="3Tm1VV" id="2OJKTJ7vyNp" role="1B3o_S" />
                      <node concept="3cqZAl" id="2OJKTJ7vyNr" role="3clF45" />
                      <node concept="37vLTG" id="2OJKTJ7vyNs" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="2OJKTJ7vyNt" role="1tU5fm">
                          <ref role="3uigEE" to="nx1:~AnActionEvent" resolve="AnActionEvent" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2OJKTJ7vyNu" role="3clF46">
                        <property role="TrG5h" value="b" />
                        <node concept="10P_77" id="2OJKTJ7vyNv" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="2OJKTJ7vyNw" role="3clF47">
                        <node concept="3clFbF" id="4HKxPX1GG0A" role="3cqZAp">
                          <node concept="1rXfSq" id="4HKxPX1GG0_" role="3clFbG">
                            <ref role="37wK5l" node="4HKxPX1Gan6" resolve="showInspector" />
                            <node concept="37vLTw" id="4HKxPX1GJ8z" role="37wK5m">
                              <ref role="3cqZAo" node="2OJKTJ7vyNu" resolve="b" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2OJKTJ7uRkT" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5J3UphNK8hP" role="3cqZAp">
          <node concept="2OqwBi" id="5J3UphNK8hQ" role="3clFbG">
            <node concept="liA8E" id="5J3UphNK8hR" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DefaultActionGroup.addSeparator():void" resolve="addSeparator" />
            </node>
            <node concept="37vLTw" id="5J3UphNK8hS" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3SMO48GlwpX" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48GlwpY" role="3clFbw">
            <ref role="3cqZAo" node="3SMO48GlpDZ" resolve="isEditable" />
          </node>
          <node concept="3clFbS" id="3SMO48GlwpZ" role="3clFbx">
            <node concept="3clFbF" id="3SMO48Glwq0" role="3cqZAp">
              <node concept="2OqwBi" id="3SMO48Glwq1" role="3clFbG">
                <node concept="liA8E" id="3SMO48Glwq2" role="2OqNvi">
                  <ref role="37wK5l" to="nx1:~DefaultActionGroup.add(com.intellij.openapi.actionSystem.AnAction):void" resolve="add" />
                  <node concept="2ShNRf" id="3SMO48Glwq3" role="37wK5m">
                    <node concept="YeOm9" id="3SMO48Glwq4" role="2ShVmc">
                      <node concept="1Y3b0j" id="3SMO48Glwq5" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" node="7$NO6fvW1R_" resolve="RevertRootsAction" />
                        <ref role="1Y3XeK" node="7$NO6fvW1Rs" resolve="RevertRootsAction" />
                        <node concept="37vLTw" id="3SMO48GlI38" role="37wK5m">
                          <ref role="3cqZAo" node="3SMO48GlCPG" resolve="rootName" />
                        </node>
                        <node concept="3Tm1VV" id="3SMO48Glwq6" role="1B3o_S" />
                        <node concept="3clFb_" id="3SMO48Glwq8" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="getChanges" />
                          <node concept="A3Dl8" id="3SMO48Glwq9" role="3clF45">
                            <node concept="3uibUv" id="3SMO48Glwqa" role="A3Ik2">
                              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                            </node>
                          </node>
                          <node concept="3Tmbuc" id="3SMO48Glwqb" role="1B3o_S" />
                          <node concept="3clFbS" id="3SMO48Glwqc" role="3clF47">
                            <node concept="3clFbF" id="3SMO48Glwqd" role="3cqZAp">
                              <node concept="2OqwBi" id="3SMO48Glwqe" role="3clFbG">
                                <node concept="37vLTw" id="3SMO48Glwqf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                                </node>
                                <node concept="liA8E" id="3SMO48Glwqg" role="2OqNvi">
                                  <ref role="37wK5l" to="bfxj:wi_$LydiyG" resolve="getChangesForRoot" />
                                  <node concept="37vLTw" id="3SMO48Glwqh" role="37wK5m">
                                    <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="3SMO48Glwqi" role="2AJF6D">
                            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                          </node>
                        </node>
                        <node concept="3clFb_" id="3SMO48Glwqj" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="after" />
                          <node concept="3cqZAl" id="3SMO48Glwqk" role="3clF45" />
                          <node concept="3Tmbuc" id="3SMO48Glwql" role="1B3o_S" />
                          <node concept="3clFbS" id="3SMO48Glwqm" role="3clF47">
                            <node concept="3clFbF" id="3SMO48Glwqn" role="3cqZAp">
                              <node concept="1rXfSq" id="4hiugqyzk_S" role="3clFbG">
                                <ref role="37wK5l" node="7DvDtqaxLRM" resolve="rehighlight" />
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="3SMO48Glwqp" role="2AJF6D">
                            <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3SMO48Glwqq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3SMO48Glg$R" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48Gll7g" role="3clF45" />
      <node concept="37vLTG" id="3SMO48GlpDZ" role="3clF46">
        <property role="TrG5h" value="isEditable" />
        <node concept="10P_77" id="3SMO48GlpDY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3SMO48GlCPG" role="3clF46">
        <property role="TrG5h" value="rootName" />
        <node concept="17QB3L" id="3SMO48GlHw1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3SMO48Gktzj" role="jymVt" />
    <node concept="3clFb_" id="3SMO48G1KZq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getActions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="3SMO48Gj7m5" role="3clF45">
        <ref role="3uigEE" to="nx1:~ActionGroup" resolve="ActionGroup" />
      </node>
      <node concept="3clFbS" id="3SMO48G1KZt" role="3clF47">
        <node concept="3clFbF" id="3SMO48GgBOw" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48Gjj$d" role="3clFbG">
            <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48G1DBP" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="1H$5hGoppBu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="registerShortcuts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1H$5hGoppBx" role="3clF47">
        <node concept="3clFbF" id="1H$5hGopWOd" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGopWOe" role="3clFbG">
            <node concept="liA8E" id="1H$5hGopWOf" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="1H$5hGopWOg" role="37wK5m">
                <ref role="3cqZAo" to="hdhb:6gc0uWWfIsG" resolve="PREV_CHANGE_SHORTCUT" />
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqFne" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGop_R7" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGopWOi" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGopWOj" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGopWOk" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H$5hGopWOw" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGopWOx" role="3clFbG">
            <node concept="liA8E" id="1H$5hGopWOy" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.registerCustomShortcutSet(com.intellij.openapi.actionSystem.ShortcutSet,javax.swing.JComponent):void" resolve="registerCustomShortcutSet" />
              <node concept="10M0yZ" id="1H$5hGopWOz" role="37wK5m">
                <ref role="3cqZAo" to="hdhb:6gc0uWWfBpD" resolve="NEXT_CHANGE_SHORTCUT" />
                <ref role="1PxDUh" to="hdhb:42hl10VHb5h" resolve="NextPreviousTraverser" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqJaI" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGop_R7" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGopWO_" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGopWOA" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGopWOB" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H$5hGopkQ9" role="1B3o_S" />
      <node concept="3cqZAl" id="1H$5hGoppBr" role="3clF45" />
      <node concept="37vLTG" id="1H$5hGop_R7" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1H$5hGop_R6" role="1tU5fm">
          <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1H$5hGoqbcQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unregisterShortcuts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1H$5hGoqhkI" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1H$5hGoqhkJ" role="1tU5fm">
          <ref role="3uigEE" to="dbrf:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="1H$5hGoqbcT" role="3clF47">
        <node concept="3clFbF" id="1H$5hGoqmD4" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGoqmD5" role="3clFbG">
            <node concept="liA8E" id="1H$5hGoqmD6" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent):void" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="1H$5hGoqN6p" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGoqhkI" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGoqmD9" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGoqmDa" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbQ" resolve="previousAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqmDb" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1H$5hGoqmDn" role="3cqZAp">
          <node concept="2OqwBi" id="1H$5hGoqmDo" role="3clFbG">
            <node concept="liA8E" id="1H$5hGoqmDp" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~AnAction.unregisterCustomShortcutSet(javax.swing.JComponent):void" resolve="unregisterCustomShortcutSet" />
              <node concept="37vLTw" id="1H$5hGoqQHE" role="37wK5m">
                <ref role="3cqZAo" node="1H$5hGoqhkI" resolve="component" />
              </node>
            </node>
            <node concept="2OqwBi" id="1H$5hGoqmDs" role="2Oq$k0">
              <node concept="liA8E" id="1H$5hGoqmDt" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHbbW" resolve="nextAction" />
              </node>
              <node concept="37vLTw" id="1H$5hGoqmDu" role="2Oq$k0">
                <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1H$5hGoq6ke" role="1B3o_S" />
      <node concept="3cqZAl" id="1H$5hGoqbcO" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3SMO48FPvtW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPanel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="3SMO48FPvtZ" role="3clF47">
        <node concept="3clFbF" id="3SMO48FPxUE" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48FPxUD" role="3clFbG">
            <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48FPnHH" role="1B3o_S" />
      <node concept="3uibUv" id="3SMO48FPvtz" role="3clF45">
        <ref role="3uigEE" to="dbrf:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="3clFb_" id="3SMO48GuqzB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="navigateInitial" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="3SMO48GuvFI" role="3clF46">
        <property role="TrG5h" value="firstChange" />
        <node concept="2AHcQZ" id="3SMO48GuvFJ" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
        <node concept="2pR195" id="3SMO48GuvFK" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VH9HW" resolve="Bounds" />
        </node>
      </node>
      <node concept="3clFbS" id="3SMO48GuqzE" role="3clF47">
        <node concept="3clFbF" id="3SMO48Gu$ue" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYxg" role="3clFbG">
            <ref role="37wK5l" node="7DvDtqaxYH2" resolve="highlightAllChanges" />
          </node>
        </node>
        <node concept="3clFbJ" id="3SMO48Gu$ug" role="3cqZAp">
          <node concept="3clFbS" id="3SMO48Gu$uh" role="3clFbx">
            <node concept="3clFbF" id="3SMO48Gu$ui" role="3cqZAp">
              <node concept="2YIFZM" id="3SMO48Gu$uj" role="3clFbG">
                <ref role="37wK5l" to="dbrf:~SwingUtilities.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
                <ref role="1Pybhc" to="dbrf:~SwingUtilities" resolve="SwingUtilities" />
                <node concept="1bVj0M" id="3SMO48Gu$uk" role="37wK5m">
                  <node concept="3clFbS" id="3SMO48Gu$ul" role="1bW5cS">
                    <node concept="3clFbF" id="3SMO48Gu$um" role="3cqZAp">
                      <node concept="2OqwBi" id="3SMO48Gu$un" role="3clFbG">
                        <node concept="37vLTw" id="3SMO48Gu$uo" role="2Oq$k0">
                          <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
                        </node>
                        <node concept="liA8E" id="3SMO48Gu$up" role="2OqNvi">
                          <ref role="37wK5l" to="hdhb:42hl10VHbcE" resolve="goToBounds" />
                          <node concept="37vLTw" id="2BHiRxgkX_C" role="37wK5m">
                            <ref role="3cqZAo" node="3SMO48GuvFI" resolve="firstChange" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3SMO48Gu$ur" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgkWni" role="3uHU7B">
              <ref role="3cqZAo" node="3SMO48GuvFI" resolve="firstChange" />
            </node>
            <node concept="10Nm6u" id="3SMO48Gu$ut" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="3SMO48Gu$uu" role="9aQIa">
            <node concept="3clFbS" id="3SMO48Gu$uv" role="9aQI4">
              <node concept="3clFbF" id="3SMO48Gu$uw" role="3cqZAp">
                <node concept="2OqwBi" id="3SMO48Gu$ux" role="3clFbG">
                  <node concept="37vLTw" id="3SMO48Gu$uy" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
                  </node>
                  <node concept="liA8E" id="3SMO48Gu$uz" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHbc2" resolve="goToFirstChangeLater" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3SMO48GulS9" role="1B3o_S" />
      <node concept="3cqZAl" id="3SMO48Guqz$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3SMO48FPiUM" role="jymVt" />
    <node concept="3clFb_" id="3SMO48FX$8V" role="jymVt">
      <property role="TrG5h" value="getRootId" />
      <node concept="3uibUv" id="3SMO48GRojv" role="3clF45">
        <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="3SMO48FX$8X" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48FX$8Y" role="3clF47">
        <node concept="3clFbF" id="3SMO48FX$8Z" role="3cqZAp">
          <node concept="37vLTw" id="3SMO48FX$90" role="3clFbG">
            <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SMO48FX$91" role="jymVt">
      <property role="TrG5h" value="setRootId" />
      <node concept="3cqZAl" id="3SMO48FX$92" role="3clF45" />
      <node concept="3Tm1VV" id="3SMO48FX$93" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48FX$94" role="3clF47">
        <node concept="3clFbF" id="3SMO48FX$95" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FX$96" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FX$97" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48FX$9A" resolve="rootId" />
            </node>
            <node concept="37vLTw" id="3SMO48FX$98" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$9e" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FX$9f" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FX$9g" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
            <node concept="liA8E" id="3SMO48FX$9h" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="37vLTw" id="3SMO48FX$9i" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FTf02" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="3SMO48FX$9j" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
              </node>
              <node concept="2OqwBi" id="3SMO48FX$9k" role="37wK5m">
                <node concept="liA8E" id="3SMO48FX$9l" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                </node>
                <node concept="37vLTw" id="3SMO48FX$9m" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$9n" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FX$9o" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FX$9p" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
            <node concept="liA8E" id="3SMO48FX$9q" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
              <node concept="37vLTw" id="3SMO48FX$9r" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FTf02" resolve="myProject" />
              </node>
              <node concept="37vLTw" id="3SMO48FX$9s" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
              </node>
              <node concept="2OqwBi" id="3SMO48FX$9t" role="37wK5m">
                <node concept="liA8E" id="3SMO48FX$9u" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                </node>
                <node concept="37vLTw" id="3SMO48FX$9v" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$9w" role="3cqZAp">
          <node concept="1rXfSq" id="3SMO48FX$9x" role="3clFbG">
            <ref role="37wK5l" node="7DvDtqaxLRM" resolve="rehighlight" />
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$9y" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FX$9z" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FXUC7" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FXNAc" resolve="myTraverser" />
            </node>
            <node concept="liA8E" id="3SMO48FX$9_" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHbc2" resolve="goToFirstChangeLater" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FX$9A" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="3SMO48HXAck" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3SMO48FX$9E" role="jymVt">
      <property role="TrG5h" value="setRootId" />
      <node concept="3cqZAl" id="3SMO48FX$9F" role="3clF45" />
      <node concept="3Tm1VV" id="3SMO48FX$9G" role="1B3o_S" />
      <node concept="3clFbS" id="3SMO48FX$9H" role="3clF47">
        <node concept="3clFbF" id="3SMO48FX$9I" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FX$9J" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FX$9K" role="37vLTx">
              <ref role="3cqZAo" node="3SMO48FX$aa" resolve="changeSet" />
            </node>
            <node concept="37vLTw" id="3SMO48FX$9L" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$9M" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FX$9N" role="3clFbG">
            <node concept="2es0OD" id="3SMO48FX$9O" role="2OqNvi">
              <node concept="1bVj0M" id="3SMO48FX$9P" role="23t8la">
                <node concept="3clFbS" id="3SMO48FX$9Q" role="1bW5cS">
                  <node concept="3clFbF" id="3SMO48FX$9R" role="3cqZAp">
                    <node concept="2OqwBi" id="3SMO48FX$9S" role="3clFbG">
                      <node concept="1eOMI4" id="3SMO48FX$9T" role="2Oq$k0">
                        <node concept="10QFUN" id="3SMO48FX$9U" role="1eOMHV">
                          <node concept="3uibUv" id="3SMO48FX$9V" role="10QFUM">
                            <ref role="3uigEE" to="hdhb:5zpsdFy5n9A" resolve="DiffChangeGroupLayout" />
                          </node>
                          <node concept="37vLTw" id="3SMO48FX$9W" role="10QFUP">
                            <ref role="3cqZAo" node="3SMO48FX$9Z" resolve="it" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3SMO48FX$9X" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:4Hl5YlbW9AW" resolve="setChangeSet" />
                        <node concept="37vLTw" id="3SMO48FX$9Y" role="37wK5m">
                          <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3SMO48FX$9Z" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3SMO48FX$a0" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3SMO48FX$a1" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9Ou8r" resolve="myChangeGroupLayouts" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FX$a2" role="3cqZAp">
          <node concept="1rXfSq" id="3SMO48FX$a3" role="3clFbG">
            <ref role="37wK5l" node="3SMO48FX$91" resolve="setRootId" />
            <node concept="37vLTw" id="3SMO48FX$a4" role="37wK5m">
              <ref role="3cqZAo" node="3SMO48FX$a6" resolve="rootId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FX$a6" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="3SMO48HXy7z" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="3SMO48FX$aa" role="3clF46">
        <property role="TrG5h" value="changeSet" />
        <node concept="3uibUv" id="3SMO48FX$ab" role="1tU5fm">
          <ref role="3uigEE" to="bfxj:wi_$Lydiyx" resolve="ModelChangeSet" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4HKxPX1Gan6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="showInspector" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4HKxPX1Gan9" role="3clF47">
        <node concept="3clFbJ" id="4HKxPX1Gnj6" role="3cqZAp">
          <node concept="3clFbC" id="4HKxPX1Gnj7" role="3clFbw">
            <node concept="37vLTw" id="4HKxPX1Gnj8" role="3uHU7w">
              <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
            </node>
            <node concept="37vLTw" id="4HKxPX1Gnj9" role="3uHU7B">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
          <node concept="3clFbS" id="4HKxPX1Gnja" role="3clFbx">
            <node concept="3cpWs6" id="4HKxPX1Gnjb" role="3cqZAp" />
          </node>
        </node>
        <node concept="3clFbF" id="4HKxPX1Gnjc" role="3cqZAp">
          <node concept="37vLTI" id="4HKxPX1Gnjd" role="3clFbG">
            <node concept="37vLTw" id="4HKxPX1Gnje" role="37vLTx">
              <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
            </node>
            <node concept="37vLTw" id="4HKxPX1Gnjf" role="37vLTJ">
              <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HKxPX1Gnjg" role="3cqZAp">
          <node concept="2OqwBi" id="4HKxPX1Gnjh" role="3clFbG">
            <node concept="liA8E" id="4HKxPX1Gnji" role="2OqNvi">
              <ref role="37wK5l" to="oj08:~PropertiesComponent.setValue(java.lang.String,java.lang.String):void" resolve="setValue" />
              <node concept="37vLTw" id="4HKxPX1Gnjy" role="37wK5m">
                <ref role="3cqZAo" node="6HpunfUDqhj" resolve="PARAM_SHOW_INSPECTOR" />
              </node>
              <node concept="3cpWs3" id="4HKxPX1Gnjj" role="37wK5m">
                <node concept="Xl_RD" id="4HKxPX1Gnjk" role="3uHU7w">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="4HKxPX1Gnjl" role="3uHU7B">
                  <ref role="3cqZAo" node="4HKxPX1GeZd" resolve="show" />
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4HKxPX1Gnjm" role="2Oq$k0">
              <ref role="1Pybhc" to="oj08:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="oj08:~PropertiesComponent.getInstance():com.intellij.ide.util.PropertiesComponent" resolve="getInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4HKxPX1Gnj$" role="3cqZAp">
          <node concept="2OqwBi" id="4HKxPX1Gnj_" role="3clFbG">
            <node concept="liA8E" id="4HKxPX1GnjA" role="2OqNvi">
              <ref role="37wK5l" to="810:~Splitter.setSecondComponent(javax.swing.JComponent):void" resolve="setSecondComponent" />
              <node concept="3K4zz7" id="4HKxPX1GnjB" role="37wK5m">
                <node concept="10Nm6u" id="4HKxPX1GnjC" role="3K4GZi" />
                <node concept="37vLTw" id="4HKxPX1GnjD" role="3K4E3e">
                  <ref role="3cqZAo" node="7DvDtq9NDIb" resolve="myBottomPanel" />
                </node>
                <node concept="37vLTw" id="4HKxPX1GnjE" role="3K4Cdx">
                  <ref role="3cqZAo" node="f$Zk9J99Td" resolve="isInspectorShown" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4HKxPX1GnjF" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FPagc" resolve="myPanel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4HKxPX1G5J$" role="1B3o_S" />
      <node concept="3cqZAl" id="4HKxPX1Gan3" role="3clF45" />
      <node concept="37vLTG" id="4HKxPX1GeZd" role="3clF46">
        <property role="TrG5h" value="show" />
        <node concept="10P_77" id="4HKxPX1GeZc" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3SMO48FXwYT" role="jymVt" />
    <node concept="3clFb_" id="7DvDtq9OdRe" role="jymVt">
      <property role="TrG5h" value="linkEditors" />
      <node concept="3clFbS" id="7DvDtq9OdRf" role="3clF47">
        <node concept="3SKdUt" id="7DvDtq9OdRg" role="3cqZAp">
          <node concept="3SKdUq" id="7DvDtq9OdRh" role="3SKWNk">
            <property role="3SKdUp" value="create change group builder, trapecium strip and merge buttons painter" />
          </node>
        </node>
        <node concept="3SKdUt" id="7DvDtq9OdRi" role="3cqZAp">
          <node concept="3SKdUq" id="7DvDtq9OdRj" role="3SKWNk">
            <property role="3SKdUp" value="'mine' parameter means mine changeset, 'inspector' - highlight inspector editor component" />
          </node>
        </node>
        <node concept="3cpWs8" id="7DvDtq9OdRk" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtq9OdRl" role="3cpWs9">
            <property role="TrG5h" value="layout" />
            <node concept="2ShNRf" id="7DvDtq9OdRm" role="33vP2m">
              <node concept="1pGfFk" id="7DvDtq9OdRn" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:5zpsdFy5nh9" resolve="DiffChangeGroupLayout" />
                <node concept="10Nm6u" id="7DvDtq9OdRo" role="37wK5m" />
                <node concept="37vLTw" id="7DvDtqax1xo" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
                <node concept="37vLTw" id="7DvDtqaxhcJ" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
                </node>
                <node concept="37vLTw" id="7DvDtqaxiB1" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmgnH" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdSA" resolve="inspector" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7DvDtq9OdRt" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHagX" resolve="ChangeGroupLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtq9OdRu" role="3cqZAp">
          <node concept="2YIFZM" id="7DvDtq9OdRv" role="3clFbG">
            <ref role="37wK5l" to="hdhb:1IK$bZG1GHg" resolve="startMaintaining" />
            <ref role="1Pybhc" to="hdhb:D356mG1l9K" resolve="ChangeGroupMessages" />
            <node concept="37vLTw" id="3GM_nagTrK7" role="37wK5m">
              <ref role="3cqZAo" node="7DvDtq9OdRl" resolve="layout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtq9OdRx" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtq9OdRy" role="3clFbG">
            <node concept="37vLTw" id="7DvDtq9OwsI" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9Ou8r" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="TSZUe" id="7DvDtq9OdR$" role="2OqNvi">
              <node concept="37vLTw" id="3GM_nagTBkF" role="25WWJ7">
                <ref role="3cqZAo" node="7DvDtq9OdRl" resolve="layout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7DvDtq9OdRA" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtq9OdRB" role="3cpWs9">
            <property role="TrG5h" value="separator" />
            <node concept="3uibUv" id="7DvDtq9OdRC" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHapM" resolve="DiffEditorSeparator" />
            </node>
            <node concept="2ShNRf" id="7DvDtq9OdRD" role="33vP2m">
              <node concept="1pGfFk" id="7DvDtq9OdRE" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:42hl10VHaud" resolve="DiffEditorSeparator" />
                <node concept="37vLTw" id="3GM_nagTrqe" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdRl" resolve="layout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7DvDtq9OdRG" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtq9OdRH" role="3cpWs9">
            <property role="TrG5h" value="gbc" />
            <node concept="2ShNRf" id="7DvDtq9OdRI" role="33vP2m">
              <node concept="1pGfFk" id="7DvDtq9OdRJ" role="2ShVmc">
                <ref role="37wK5l" to="1t7x:~GridBagConstraints.&lt;init&gt;(int,int,int,int,double,double,int,int,java.awt.Insets,int,int)" resolve="GridBagConstraints" />
                <node concept="3cmrfG" id="7DvDtq9OdRK" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRL" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRM" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRN" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRO" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRP" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="10M0yZ" id="7DvDtq9OdRQ" role="37wK5m">
                  <ref role="3cqZAo" to="1t7x:~GridBagConstraints.CENTER" resolve="CENTER" />
                  <ref role="1PxDUh" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
                </node>
                <node concept="10M0yZ" id="7DvDtq9OdRR" role="37wK5m">
                  <ref role="3cqZAo" to="1t7x:~GridBagConstraints.BOTH" resolve="BOTH" />
                  <ref role="1PxDUh" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
                </node>
                <node concept="2ShNRf" id="7DvDtq9OdRS" role="37wK5m">
                  <node concept="1pGfFk" id="7DvDtq9OdRT" role="2ShVmc">
                    <ref role="37wK5l" to="1t7x:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                    <node concept="3cmrfG" id="7DvDtq9OdRU" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="7DvDtq9OdRV" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="7DvDtq9OdRW" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="7DvDtq9OdRX" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRY" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="7DvDtq9OdRZ" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7DvDtq9OdS0" role="1tU5fm">
              <ref role="3uigEE" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtq9OdS1" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtq9OdS2" role="3clFbG">
            <node concept="1eOMI4" id="7DvDtq9OdS3" role="2Oq$k0">
              <node concept="3K4zz7" id="7DvDtq9OdS4" role="1eOMHV">
                <node concept="37vLTw" id="2BHiRxeustF" role="3K4E3e">
                  <ref role="3cqZAo" node="7DvDtq9NDIb" resolve="myBottomPanel" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuPhU" role="3K4GZi">
                  <ref role="3cqZAo" node="7DvDtq9NDI4" resolve="myTopPanel" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmzop" role="3K4Cdx">
                  <ref role="3cqZAo" node="7DvDtq9OdSA" resolve="inspector" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7DvDtq9OdS8" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="3GM_nagTzD3" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtq9OdRB" resolve="separator" />
              </node>
              <node concept="37vLTw" id="3GM_nagTtYj" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtq9OdRH" resolve="gbc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtq9OdSb" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtq9OdSc" role="3clFbG">
            <node concept="37vLTw" id="7DvDtq9OCSi" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9OAPR" resolve="myEditorSeparators" />
            </node>
            <node concept="TSZUe" id="7DvDtq9OdSe" role="2OqNvi">
              <node concept="37vLTw" id="3GM_nagTsFH" role="25WWJ7">
                <ref role="3cqZAo" node="7DvDtq9OdRB" resolve="separator" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7DvDtq9OdSg" role="3cqZAp">
          <node concept="3fqX7Q" id="7DvDtq9OdSh" role="3clFbw">
            <node concept="2YIFZM" id="7DvDtq9OdSi" role="3fr31v">
              <ref role="37wK5l" to="cu2c:~SModelOperations.isReadOnly(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="isReadOnly" />
              <ref role="1Pybhc" to="cu2c:~SModelOperations" resolve="SModelOperations" />
              <node concept="2OqwBi" id="7DvDtq9OdSl" role="37wK5m">
                <node concept="37vLTw" id="7DvDtqawRfi" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="7DvDtq9OdSm" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7DvDtq9OdSo" role="3clFbx">
            <node concept="3clFbF" id="7DvDtq9OdSp" role="3cqZAp">
              <node concept="2YIFZM" id="7DvDtq9OdSq" role="3clFbG">
                <ref role="1Pybhc" node="7$NO6fvW29l" resolve="DiffButtonsPainter" />
                <ref role="37wK5l" node="7DvDtqayCqL" resolve="addTo" />
                <node concept="Xjq3P" id="7DvDtq9OdSr" role="37wK5m" />
                <node concept="37vLTw" id="7DvDtqaxmiJ" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
                </node>
                <node concept="37vLTw" id="3GM_nagTBuA" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdRl" resolve="layout" />
                </node>
                <node concept="37vLTw" id="2BHiRxglIfe" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdSA" resolve="inspector" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7DvDtq9OdSv" role="3cqZAp">
              <node concept="2YIFZM" id="7DvDtq9OdSw" role="3clFbG">
                <ref role="1Pybhc" node="7$NO6fvW29l" resolve="DiffButtonsPainter" />
                <ref role="37wK5l" node="7DvDtqayCqL" resolve="addTo" />
                <node concept="Xjq3P" id="7DvDtq9OdSx" role="37wK5m" />
                <node concept="37vLTw" id="7DvDtqaxnwB" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
                </node>
                <node concept="37vLTw" id="3GM_nagTA0m" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdRl" resolve="layout" />
                </node>
                <node concept="37vLTw" id="2BHiRxglEqR" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtq9OdSA" resolve="inspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7DvDtq9OdS_" role="1B3o_S" />
      <node concept="37vLTG" id="7DvDtq9OdSA" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="10P_77" id="7DvDtq9OdSB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7DvDtq9OdSC" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3SMO48FRWsm" role="jymVt">
      <property role="TrG5h" value="addEditor" />
      <node concept="37vLTG" id="3SMO48FRWsn" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="3SMO48FRWso" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3SMO48FRWsp" role="3clF47">
        <node concept="3cpWs8" id="3SMO48FRWsq" role="3cqZAp">
          <node concept="3cpWsn" id="3SMO48FRWsr" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="true" />
            <node concept="2ShNRf" id="3SMO48FRWss" role="33vP2m">
              <node concept="1pGfFk" id="3SMO48FRWst" role="2ShVmc">
                <ref role="37wK5l" to="hdhb:42hl10VHaz9" resolve="DiffEditor" />
                <node concept="2OqwBi" id="3nxgM2zyqWZ" role="37wK5m">
                  <node concept="liA8E" id="3nxgM2zy$ko" role="2OqNvi">
                    <ref role="37wK5l" to="vsqj:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                  <node concept="2YIFZM" id="3nxgM2zyaPU" role="2Oq$k0">
                    <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                    <ref role="37wK5l" to="pt5l:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                    <node concept="37vLTw" id="3nxgM2zz53e" role="37wK5m">
                      <ref role="3cqZAo" node="3SMO48FTf02" resolve="myProject" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3SMO48FRWsx" role="37wK5m">
                  <node concept="liA8E" id="3SMO48FRWsy" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                    <node concept="37vLTw" id="2BHiRxeuGib" role="37wK5m">
                      <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="3SMO48FRWs$" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgmyvy" role="2JrQYb">
                      <ref role="3cqZAo" node="3SMO48FRWtF" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2zHbVQB$X1U" role="37wK5m">
                  <ref role="3cqZAo" node="2zHbVQB$Nhs" resolve="title" />
                </node>
                <node concept="3clFbC" id="3SMO48FRWsD" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgm__u" role="3uHU7B">
                    <ref role="3cqZAo" node="3SMO48FRWsn" resolve="index" />
                  </node>
                  <node concept="3cmrfG" id="3SMO48FRWsF" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3SMO48FRWsG" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48FRWsH" role="3cqZAp" />
        <node concept="3cpWs8" id="3SMO48FRWsI" role="3cqZAp">
          <node concept="3cpWsn" id="3SMO48FRWsJ" role="3cpWs9">
            <property role="TrG5h" value="gbc" />
            <node concept="3uibUv" id="3SMO48FRWsK" role="1tU5fm">
              <ref role="3uigEE" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
            </node>
            <node concept="2ShNRf" id="3SMO48FRWsL" role="33vP2m">
              <node concept="1pGfFk" id="3SMO48FRWsM" role="2ShVmc">
                <ref role="37wK5l" to="1t7x:~GridBagConstraints.&lt;init&gt;(int,int,int,int,double,double,int,int,java.awt.Insets,int,int)" resolve="GridBagConstraints" />
                <node concept="17qRlL" id="3SMO48FRWsN" role="37wK5m">
                  <node concept="3cmrfG" id="3SMO48FRWsO" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmah1" role="3uHU7B">
                    <ref role="3cqZAo" node="3SMO48FRWsn" resolve="index" />
                  </node>
                </node>
                <node concept="3cmrfG" id="3SMO48FRWsQ" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="3SMO48FRWsR" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="3SMO48FRWsS" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="3SMO48FRWsT" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="3cmrfG" id="3SMO48FRWsU" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="10M0yZ" id="3SMO48FRWsV" role="37wK5m">
                  <ref role="1PxDUh" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="1t7x:~GridBagConstraints.CENTER" resolve="CENTER" />
                </node>
                <node concept="10M0yZ" id="3SMO48FRWsW" role="37wK5m">
                  <ref role="1PxDUh" to="1t7x:~GridBagConstraints" resolve="GridBagConstraints" />
                  <ref role="3cqZAo" to="1t7x:~GridBagConstraints.BOTH" resolve="BOTH" />
                </node>
                <node concept="2ShNRf" id="3SMO48FRWsX" role="37wK5m">
                  <node concept="1pGfFk" id="3SMO48FRWsY" role="2ShVmc">
                    <ref role="37wK5l" to="1t7x:~Insets.&lt;init&gt;(int,int,int,int)" resolve="Insets" />
                    <node concept="3cmrfG" id="3SMO48FRWsZ" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3K4zz7" id="3SMO48FRWt0" role="37wK5m">
                      <node concept="3clFbC" id="3SMO48FRWt1" role="3K4Cdx">
                        <node concept="3cmrfG" id="3SMO48FRWt2" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxglwaU" role="3uHU7B">
                          <ref role="3cqZAo" node="3SMO48FRWsn" resolve="index" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="3SMO48FRWt4" role="3K4E3e">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="3cmrfG" id="3SMO48FRWt5" role="3K4GZi">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3SMO48FRWt6" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3K4zz7" id="3SMO48FRWt7" role="37wK5m">
                      <node concept="3cmrfG" id="3SMO48FRWt8" role="3K4GZi">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3clFbC" id="3SMO48FRWt9" role="3K4Cdx">
                        <node concept="3cmrfG" id="3SMO48FRWta" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxglG7m" role="3uHU7B">
                          <ref role="3cqZAo" node="3SMO48FRWsn" resolve="index" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="3SMO48FRWtc" role="3K4E3e">
                        <property role="3cmrfH" value="5" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="3SMO48FRWtd" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="3SMO48FRWte" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FRWtf" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FRWtg" role="3clFbG">
            <node concept="liA8E" id="3SMO48FRWth" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="3SMO48FRWti" role="37wK5m">
                <node concept="liA8E" id="3SMO48FRWtj" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:42hl10VHa_U" resolve="getTopComponent" />
                </node>
                <node concept="37vLTw" id="3GM_nagTAZv" role="2Oq$k0">
                  <ref role="3cqZAo" node="3SMO48FRWsr" resolve="result" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTvp0" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FRWsJ" resolve="gbc" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeusHH" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9NDI4" resolve="myTopPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FRWtn" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FRWto" role="3clFbG">
            <node concept="liA8E" id="3SMO48FRWtp" role="2OqNvi">
              <ref role="37wK5l" to="1t7x:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="3SMO48FRWtq" role="37wK5m">
                <node concept="liA8E" id="3SMO48FRWtr" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getExternalComponent():javax.swing.JComponent" resolve="getExternalComponent" />
                </node>
                <node concept="2OqwBi" id="3SMO48FRWts" role="2Oq$k0">
                  <node concept="liA8E" id="3SMO48FRWtt" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:42hl10VHaA6" resolve="getInspector" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTxVb" role="2Oq$k0">
                    <ref role="3cqZAo" node="3SMO48FRWsr" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTyF1" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FRWsJ" resolve="gbc" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeudDF" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9NDIb" resolve="myBottomPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3SMO48FRWtx" role="3cqZAp" />
        <node concept="3clFbF" id="3SMO48FRWty" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FRWtz" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FT2eU" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FSNGR" resolve="myDiffEditorsGroup" />
            </node>
            <node concept="liA8E" id="3SMO48FRWt$" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaHk" resolve="add" />
              <node concept="37vLTw" id="3GM_nagTuOk" role="37wK5m">
                <ref role="3cqZAo" node="3SMO48FRWsr" resolve="result" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3SMO48FRWtB" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTzqQ" role="3cqZAk">
            <ref role="3cqZAo" node="3SMO48FRWsr" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3SMO48FRWtD" role="3clF45">
        <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
      </node>
      <node concept="3Tm6S6" id="3SMO48FRWtE" role="1B3o_S" />
      <node concept="37vLTG" id="3SMO48FRWtF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="18nb9UMlomb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2zHbVQB$Nhs" role="3clF46">
        <property role="TrG5h" value="title" />
        <node concept="17QB3L" id="2zHbVQB$RF3" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7DvDtqaxKpT" role="jymVt" />
    <node concept="3clFb_" id="7DvDtqaxYH2" role="jymVt">
      <property role="TrG5h" value="highlightAllChanges" />
      <node concept="3cqZAl" id="7DvDtqaxYH3" role="3clF45" />
      <node concept="3Tm6S6" id="7DvDtqaxYH4" role="1B3o_S" />
      <node concept="3clFbS" id="7DvDtqaxYH5" role="3clF47">
        <node concept="3clFbF" id="7DvDtqaxYH6" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxYH7" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuktn" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9Ou8r" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="2es0OD" id="7DvDtqaxYH9" role="2OqNvi">
              <node concept="1bVj0M" id="7DvDtqaxYHa" role="23t8la">
                <node concept="Rh6nW" id="7DvDtqaxYHb" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="7DvDtqaxYHc" role="1tU5fm" />
                </node>
                <node concept="3clFbS" id="7DvDtqaxYHd" role="1bW5cS">
                  <node concept="3clFbF" id="7DvDtqaxYHe" role="3cqZAp">
                    <node concept="2OqwBi" id="7DvDtqaxYHf" role="3clFbG">
                      <node concept="liA8E" id="7DvDtqaxYHg" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:42hl10VHann" resolve="invalidate" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgmPaK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvDtqaxYHb" resolve="b" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7DvDtqaxYHi" role="3cqZAp">
          <node concept="3clFbS" id="7DvDtqaxYHj" role="2LFqv$">
            <node concept="3clFbF" id="7DvDtqaxYHk" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyZuR" role="3clFbG">
                <ref role="37wK5l" node="7DvDtqayfzt" resolve="higlightChange" />
                <node concept="37vLTw" id="2BHiRxeus7I" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
                </node>
                <node concept="2OqwBi" id="7DvDtqaxYHn" role="37wK5m">
                  <node concept="liA8E" id="7DvDtqaxYHo" role="2OqNvi">
                    <ref role="37wK5l" to="bfxj:3kRMfhMv9u3" resolve="getOldModel" />
                  </node>
                  <node concept="37vLTw" id="7DvDtqaxYHp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                  </node>
                </node>
                <node concept="2GrUjf" id="7DvDtqaxYHq" role="37wK5m">
                  <ref role="2Gs0qQ" node="7DvDtqaxYHA" resolve="change" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7DvDtqaxYHr" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyYwQ" role="3clFbG">
                <ref role="37wK5l" node="7DvDtqayfzt" resolve="higlightChange" />
                <node concept="37vLTw" id="2BHiRxeuySi" role="37wK5m">
                  <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
                </node>
                <node concept="2OqwBi" id="7DvDtqaxYHu" role="37wK5m">
                  <node concept="liA8E" id="7DvDtqaxYHv" role="2OqNvi">
                    <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                  </node>
                  <node concept="37vLTw" id="7DvDtqaxYHw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                  </node>
                </node>
                <node concept="2GrUjf" id="7DvDtqaxYHx" role="37wK5m">
                  <ref role="2Gs0qQ" node="7DvDtqaxYHA" resolve="change" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7DvDtqaxYHy" role="2GsD0m">
            <node concept="liA8E" id="7DvDtqaxYHz" role="2OqNvi">
              <ref role="37wK5l" to="bfxj:wi_$LydiyG" resolve="getChangesForRoot" />
              <node concept="37vLTw" id="2BHiRxeusaW" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
              </node>
            </node>
            <node concept="37vLTw" id="7DvDtqaxYH_" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
            </node>
          </node>
          <node concept="2GrKxI" id="7DvDtqaxYHA" role="2Gsz3X">
            <property role="TrG5h" value="change" />
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxYHB" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxYHC" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumRw" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9Ou8r" resolve="myChangeGroupLayouts" />
            </node>
            <node concept="2es0OD" id="7DvDtqaxYHE" role="2OqNvi">
              <node concept="1bVj0M" id="7DvDtqaxYHF" role="23t8la">
                <node concept="3clFbS" id="7DvDtqaxYHG" role="1bW5cS">
                  <node concept="3clFbF" id="7DvDtqaxYHH" role="3cqZAp">
                    <node concept="2OqwBi" id="7DvDtqaxYHI" role="3clFbG">
                      <node concept="liA8E" id="7DvDtqaxYHJ" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:42hl10VHann" resolve="invalidate" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgm$NE" role="2Oq$k0">
                        <ref role="3cqZAo" node="7DvDtqaxYHL" resolve="b" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7DvDtqaxYHL" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="7DvDtqaxYHM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DvDtqaxYHN" role="3cqZAp" />
        <node concept="3clFbF" id="7DvDtqaxYHO" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxYHP" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxYHQ" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBd" resolve="repaintAndRebuildEditorMessages" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuqMV" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxYHS" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxYHT" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxYHU" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBd" resolve="repaintAndRebuildEditorMessages" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuVuW" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DvDtqaxYHW" role="3cqZAp" />
        <node concept="3cpWs8" id="7DvDtqaxYHX" role="3cqZAp">
          <node concept="3cpWsn" id="7DvDtqaxYHY" role="3cpWs9">
            <property role="TrG5h" value="count" />
            <node concept="2OqwBi" id="7DvDtqaxYHZ" role="33vP2m">
              <node concept="2OqwBi" id="7DvDtqaxYI0" role="2Oq$k0">
                <node concept="liA8E" id="7DvDtqaxYI1" role="2OqNvi">
                  <ref role="37wK5l" to="bfxj:wi_$LydiyG" resolve="getChangesForRoot" />
                  <node concept="37vLTw" id="2BHiRxeugch" role="37wK5m">
                    <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
                  </node>
                </node>
                <node concept="37vLTw" id="7DvDtqaxYI3" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                </node>
              </node>
              <node concept="34oBXx" id="7DvDtqaxYI4" role="2OqNvi" />
            </node>
            <node concept="10Oyi0" id="7DvDtqaxYI5" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxYI6" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxYI7" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FToz6" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FMVcF" resolve="myStatusBar" />
            </node>
            <node concept="liA8E" id="7DvDtqaxYI9" role="2OqNvi">
              <ref role="37wK5l" to="bcbw:~DiffStatusBar.setText(java.lang.String):void" resolve="setText" />
              <node concept="3K4zz7" id="7DvDtqaxYIa" role="37wK5m">
                <node concept="Xl_RD" id="7DvDtqaxYIb" role="3K4E3e">
                  <property role="Xl_RC" value="no differences" />
                </node>
                <node concept="3clFbC" id="7DvDtqaxYIc" role="3K4Cdx">
                  <node concept="3cmrfG" id="7DvDtqaxYId" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTr8k" role="3uHU7B">
                    <ref role="3cqZAo" node="7DvDtqaxYHY" resolve="count" />
                  </node>
                </node>
                <node concept="2YIFZM" id="7DvDtqaxYIf" role="3K4GZi">
                  <ref role="37wK5l" to="msyo:~NameUtil.formatNumericalString(int,java.lang.String):java.lang.String" resolve="formatNumericalString" />
                  <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                  <node concept="37vLTw" id="3GM_nagTA8s" role="37wK5m">
                    <ref role="3cqZAo" node="7DvDtqaxYHY" resolve="count" />
                  </node>
                  <node concept="Xl_RD" id="7DvDtqaxYIh" role="37wK5m">
                    <property role="Xl_RC" value="difference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7DvDtqayfzt" role="jymVt">
      <property role="TrG5h" value="higlightChange" />
      <node concept="37vLTG" id="7DvDtqayfzu" role="3clF46">
        <property role="TrG5h" value="diffEditor" />
        <node concept="3uibUv" id="7DvDtqayfzv" role="1tU5fm">
          <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="7DvDtqayfzw" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="18nb9UMfyH7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7DvDtqayfzy" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="7DvDtqayfzz" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3clFbS" id="7DvDtqayfz$" role="3clF47">
        <node concept="3clFbF" id="7DvDtqayfz_" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqayfzA" role="3clFbG">
            <node concept="liA8E" id="7DvDtqayfzB" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaAn" resolve="highlightChange" />
              <node concept="37vLTw" id="2BHiRxghiHd" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqayfzw" resolve="model" />
              </node>
              <node concept="37vLTw" id="2BHiRxglwx7" role="37wK5m">
                <ref role="3cqZAo" node="7DvDtqayfzy" resolve="change" />
              </node>
              <node concept="10Nm6u" id="7DvDtqayfzE" role="37wK5m" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmaRj" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqayfzu" resolve="diffEditor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7DvDtqayfzG" role="1B3o_S" />
      <node concept="3cqZAl" id="7DvDtqayfzH" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7DvDtqaxLRM" role="jymVt">
      <property role="TrG5h" value="rehighlight" />
      <node concept="3Tm1VV" id="7DvDtqaxLRN" role="1B3o_S" />
      <node concept="3clFbS" id="7DvDtqaxLRO" role="3clF47">
        <node concept="3clFbF" id="7DvDtqaxLRP" role="3cqZAp">
          <node concept="2YIFZM" id="7DvDtqaxLRQ" role="3clFbG">
            <ref role="1Pybhc" to="bfxj:42hl10VHbfH" resolve="ChangeSetBuilder" />
            <ref role="37wK5l" to="bfxj:42hl10VHbve" resolve="rebuildChangeSet" />
            <node concept="37vLTw" id="2BHiRxeuWT0" role="37wK5m">
              <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxLRS" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxLRT" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxLRU" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBE" resolve="unhighlightAllChanges" />
            </node>
            <node concept="37vLTw" id="2BHiRxeujoZ" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxLRW" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxLRX" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxLRY" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaBE" resolve="unhighlightAllChanges" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuqm0" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DvDtqaxLS0" role="3cqZAp" />
        <node concept="3clFbJ" id="7DvDtqaxLS1" role="3cqZAp">
          <node concept="3clFbC" id="7DvDtqaxLS2" role="3clFbw">
            <node concept="10Nm6u" id="7DvDtqaxLS3" role="3uHU7w" />
            <node concept="2OqwBi" id="7DvDtqaxLS4" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxeuu37" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
              </node>
              <node concept="liA8E" id="7DvDtqaxLS6" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:4$Wo$6lAOeL" resolve="getEditedNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7DvDtqaxLS7" role="3clFbx">
            <node concept="3clFbF" id="7DvDtqaxLS8" role="3cqZAp">
              <node concept="2OqwBi" id="7DvDtqaxLS9" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuHqO" role="2Oq$k0">
                  <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
                </node>
                <node concept="liA8E" id="7DvDtqaxLSb" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:4$Wo$6lALaX" resolve="editRoot" />
                  <node concept="37vLTw" id="3SMO48FTmYb" role="37wK5m">
                    <ref role="3cqZAo" node="3SMO48FTf02" resolve="myProject" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuyP$" role="37wK5m">
                    <ref role="3cqZAo" node="7DvDtqawOKB" resolve="myRootId" />
                  </node>
                  <node concept="2OqwBi" id="7DvDtqaxLSe" role="37wK5m">
                    <node concept="liA8E" id="7DvDtqaxLSf" role="2OqNvi">
                      <ref role="37wK5l" to="bfxj:3kRMfhMv9u8" resolve="getNewModel" />
                    </node>
                    <node concept="37vLTw" id="7DvDtqaxLSg" role="2Oq$k0">
                      <ref role="3cqZAo" node="7DvDtqawOK$" resolve="myChangeSet" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DvDtqaxLSh" role="3cqZAp" />
        <node concept="3clFbF" id="7DvDtqaxLSi" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxLSj" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxLSk" role="2OqNvi">
              <ref role="37wK5l" to="9a8:~EditorComponent.rebuildEditorContent():void" resolve="rebuildEditorContent" />
            </node>
            <node concept="2OqwBi" id="7DvDtqaxLSl" role="2Oq$k0">
              <node concept="liA8E" id="7DvDtqaxLSm" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHaA0" resolve="getMainEditor" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuv09" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqaxLSo" role="3cqZAp">
          <node concept="2OqwBi" id="7DvDtqaxLSp" role="3clFbG">
            <node concept="liA8E" id="7DvDtqaxLSq" role="2OqNvi">
              <ref role="37wK5l" to="9a8:~EditorComponent.rebuildEditorContent():void" resolve="rebuildEditorContent" />
            </node>
            <node concept="2OqwBi" id="7DvDtqaxLSr" role="2Oq$k0">
              <node concept="liA8E" id="7DvDtqaxLSs" role="2OqNvi">
                <ref role="37wK5l" to="hdhb:42hl10VHaA0" resolve="getMainEditor" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuVYQ" role="2Oq$k0">
                <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7DvDtqaxLSu" role="3cqZAp" />
        <node concept="3clFbF" id="7DvDtqaxLSv" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz9Sb" role="3clFbG">
            <ref role="37wK5l" node="7DvDtqaxYH2" resolve="highlightAllChanges" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7DvDtqaxLSx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7DvDtqaxKsh" role="jymVt" />
    <node concept="3clFb_" id="7DvDtqazHaR" role="jymVt">
      <property role="TrG5h" value="rollbackChanges" />
      <node concept="37vLTG" id="7DvDtqazHaS" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="A3Dl8" id="7DvDtqazHaT" role="1tU5fm">
          <node concept="3uibUv" id="7DvDtqazHaU" role="A3Ik2">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7DvDtqazHaV" role="3clF45" />
      <node concept="3clFbS" id="7DvDtqazHaW" role="3clF47">
        <node concept="3clFbF" id="7DvDtqazHaX" role="3cqZAp">
          <node concept="2YIFZM" id="7DvDtqazHaY" role="3clFbG">
            <ref role="1Pybhc" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            <ref role="37wK5l" to="btf5:hBYHs5iiMO" resolve="rollbackChanges" />
            <node concept="37vLTw" id="7DvDtqazHaZ" role="37wK5m">
              <ref role="3cqZAo" node="7DvDtqazHaS" resolve="changes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7DvDtqazHb0" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyI5R" role="3clFbG">
            <ref role="37wK5l" node="7DvDtqaxLRM" resolve="rehighlight" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7DvDtqazEnp" role="jymVt" />
    <node concept="3clFb_" id="3SMO48FUSNA" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="3SMO48FUSNC" role="3clF47">
        <node concept="3clFbF" id="3SMO48FUSND" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FUSNE" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunmn" role="2Oq$k0">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
            <node concept="liA8E" id="3SMO48FUSNG" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~DefaultActionGroup.removeAll():void" resolve="removeAll" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSNH" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FUSNI" role="3clFbG">
            <node concept="10Nm6u" id="3SMO48FUSNJ" role="37vLTx" />
            <node concept="37vLTw" id="3SMO48FUSNK" role="37vLTJ">
              <ref role="3cqZAo" node="3SMO48FUu6x" resolve="myActionGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSNL" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FUSNM" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuL3C" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
            <node concept="liA8E" id="3SMO48FUSNO" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaC1" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSNP" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FUSNQ" role="3clFbG">
            <node concept="10Nm6u" id="3SMO48FUSNR" role="37vLTx" />
            <node concept="37vLTw" id="2BHiRxeuGxV" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqax92K" resolve="myOldEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSNT" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FUSNU" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeun6U" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
            <node concept="liA8E" id="3SMO48FUSNW" role="2OqNvi">
              <ref role="37wK5l" to="hdhb:42hl10VHaC1" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSNX" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FUSNY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSO4" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtqax92N" resolve="myNewEditor" />
            </node>
            <node concept="10Nm6u" id="3SMO48FUSO0" role="37vLTx" />
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSO1" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FUSO2" role="3clFbG">
            <node concept="2es0OD" id="3SMO48FUSO3" role="2OqNvi">
              <node concept="1bVj0M" id="3SMO48FUSO4" role="23t8la">
                <node concept="3clFbS" id="3SMO48FUSO5" role="1bW5cS">
                  <node concept="3clFbF" id="3SMO48FUSO6" role="3cqZAp">
                    <node concept="2OqwBi" id="3SMO48FUSO7" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxgm9tX" role="2Oq$k0">
                        <ref role="3cqZAo" node="3SMO48FUSOa" resolve="s" />
                      </node>
                      <node concept="liA8E" id="3SMO48FUSO9" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:42hl10VHaxf" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3SMO48FUSOa" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="2jxLKc" id="3SMO48FUSOb" role="1tU5fm" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxeuNm7" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9OAPR" resolve="myEditorSeparators" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSOd" role="3cqZAp">
          <node concept="2OqwBi" id="3SMO48FUSOe" role="3clFbG">
            <node concept="2Kehj3" id="3SMO48FUSOf" role="2OqNvi" />
            <node concept="37vLTw" id="2BHiRxeuXfE" role="2Oq$k0">
              <ref role="3cqZAo" node="7DvDtq9OAPR" resolve="myEditorSeparators" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3SMO48FUSOh" role="3cqZAp">
          <node concept="37vLTI" id="3SMO48FUSOi" role="3clFbG">
            <node concept="37vLTw" id="3SMO48FUSOj" role="37vLTJ">
              <ref role="3cqZAo" node="7DvDtq9OAPR" resolve="myEditorSeparators" />
            </node>
            <node concept="10Nm6u" id="3SMO48FUSOk" role="37vLTx" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3SMO48FUSOn" role="3clF45" />
      <node concept="3Tm1VV" id="3SMO48FUSOo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3SMO48FUQg6" role="jymVt" />
    <node concept="3Tm1VV" id="7DvDtq9MCVa" role="1B3o_S" />
  </node>
</model>

