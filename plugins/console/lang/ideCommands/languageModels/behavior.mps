<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:18b0a31c-6c8b-45fd-b098-332c1656d60c(jetbrains.mps.console.ideCommands.behavior)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="-1" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="-1" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="caxt" ref="r:135a606f-0376-4c5c-9ab8-4030f051a062(jetbrains.mps.console.ideCommands.structure)" />
    <import index="zyb2" ref="r:1754cb33-73c2-441d-96bc-93a7824726e7(jetbrains.mps.console.base.behavior)" />
    <import index="qgo0" ref="r:de40a5a4-f08c-4c67-ac43-e1f5c384f7d6(jetbrains.mps.console.tool)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="2r67" ref="r:12b75774-ad08-4482-bae3-756b26633092(jetbrains.mps.console.ideCommands.util)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="eynw" ref="r:359b1d2b-77c4-46df-9bf2-b25cbea32254(jetbrains.mps.console.base.structure)" />
    <import index="pt5l" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="b2mh" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.project(MPS.IDEA/com.intellij.openapi.project@java_stub)" />
    <import index="810" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.ui(MPS.IDEA/com.intellij.openapi.ui@java_stub)" />
    <import index="3sib" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.options.ex(MPS.IDEA/com.intellij.openapi.options.ex@java_stub)" />
    <import index="9ww" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.ui.dialogs.properties(MPS.Platform/jetbrains.mps.ide.ui.dialogs.properties@java_stub)" />
    <import index="j4q1" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#org.jetbrains.mps.openapi.ui.persistence(MPS.Platform/org.jetbrains.mps.openapi.ui.persistence@java_stub)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp4s" ref="r:00000000-0000-4000-0000-011c89590360(jetbrains.mps.lang.plugin.behavior)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="fq2o" ref="r:11d950c0-cabb-4b20-860f-4f2898171c08(jetbrains.mps.console.blCommand.behavior)" />
    <import index="3xdn" ref="r:935ba0ee-7291-4caa-a807-d76e8fc69391(jetbrains.mps.console.blCommand.structure)" />
    <import index="qff7" ref="r:2ba2e307-a81d-4a21-9e0b-de3624e2fb83(jetbrains.mps.lang.access.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" implicit="true" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="cx9y" ref="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" implicit="true" />
    <import index="pxpg" ref="r:5a550369-d6d9-4c89-a89b-1bb748dc20b3(jetbrains.mps.baseLanguage.checkedDots.structure)" implicit="true" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug">
        <reference id="1180481110358" name="conceptDeclaraton" index="3qa414" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1200830824066" name="jetbrains.mps.baseLanguage.closures.structure.YieldStatement" flags="nn" index="2n63Yl">
        <child id="1200830928149" name="expression" index="2n6tg2" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
        <child id="1224414466839" name="initializer" index="kMx8a" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
    </language>
  </registry>
  <node concept="13h7C7" id="5pylk$7XEry">
    <ref role="13h7C2" to="caxt:7mV0m3L$tW2" resolve="RebuildProjectCommand" />
    <node concept="13hLZK" id="5pylk$7XErz" role="13h7CW">
      <node concept="3clFbS" id="5pylk$7XEr$" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5pylk$7XEuf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="doExecute" />
      <ref role="13i0hy" to="zyb2:2SpVAIqougW" resolve="doExecute" />
      <node concept="3Tm1VV" id="5pylk$7XEuh" role="1B3o_S" />
      <node concept="3clFbS" id="5pylk$7XEun" role="3clF47" />
      <node concept="37vLTG" id="2SpVAIqtOPo" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2SpVAIqtOPp" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2SpVAIqtOPq" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="2SpVAIqtOPr" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SpVAIqtOPs" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="5pylk$7XIdZ">
    <ref role="13h7C2" to="caxt:7mV0m3L$tRZ" resolve="UnloadModelsCommand" />
    <node concept="13hLZK" id="5pylk$7XIe0" role="13h7CW">
      <node concept="3clFbS" id="5pylk$7XIe1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5pylk$7XIe2" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="doExecute" />
      <ref role="13i0hy" to="zyb2:2SpVAIqougW" resolve="doExecute" />
      <node concept="3Tm1VV" id="5pylk$7XIe4" role="1B3o_S" />
      <node concept="3clFbS" id="5pylk$7XIea" role="3clF47" />
      <node concept="37vLTG" id="2SpVAIqtRKJ" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2SpVAIqtRKK" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2SpVAIqtRKL" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="2SpVAIqtRKM" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SpVAIqtRKN" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6vMIJHUn4XW">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6vMIJHUloMo" resolve="StatCommand" />
    <node concept="13hLZK" id="6vMIJHUn50w" role="13h7CW">
      <node concept="3clFbS" id="6vMIJHUn50x" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6vMIJHUn53f" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="doExecute" />
      <ref role="13i0hy" to="zyb2:2SpVAIqougW" resolve="doExecute" />
      <node concept="3Tm1VV" id="6vMIJHUn53h" role="1B3o_S" />
      <node concept="3clFbS" id="6vMIJHUn53p" role="3clF47">
        <node concept="1QHqEK" id="6vMIJHU$ieh" role="3cqZAp">
          <node concept="1QHqEC" id="6vMIJHU$iej" role="1QHqEI">
            <node concept="3clFbS" id="6vMIJHU$iel" role="1bW5cS">
              <node concept="3clFbF" id="6vMIJHUD1Ao" role="3cqZAp">
                <node concept="2YIFZM" id="6vMIJHUPxRb" role="3clFbG">
                  <ref role="37wK5l" to="2r67:6vMIJHUPkFK" resolve="printStat" />
                  <ref role="1Pybhc" to="2r67:6vMIJHUPkDg" resolve="OutputUtils" />
                  <node concept="37vLTw" id="6vMIJHUPxRc" role="37wK5m">
                    <ref role="3cqZAo" node="2SpVAIqtH9s" resolve="console" />
                  </node>
                  <node concept="2OqwBi" id="6vMIJHUPxRd" role="37wK5m">
                    <node concept="2OqwBi" id="6vMIJHUPxRe" role="2Oq$k0">
                      <node concept="13iPFW" id="6vMIJHUPxRf" role="2Oq$k0" />
                      <node concept="3TrEf2" id="6vMIJHUPxRg" role="2OqNvi">
                        <ref role="3Tt5mk" to="caxt:6vMIJHUlTMN" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="6vMIJHUPxRh" role="2OqNvi">
                      <ref role="37wK5l" node="6vMIJHUBlVT" resolve="getStat" />
                      <node concept="37vLTw" id="2SpVAIqtR_T" role="37wK5m">
                        <ref role="3cqZAo" node="2SpVAIqtH9q" resolve="context" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vMIJHUyCS3" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="2SpVAIqtH9q" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2SpVAIqtH9r" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2SpVAIqtH9s" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="2SpVAIqtH9t" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SpVAIqtH9u" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="6vMIJHUBlVI">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6vMIJHUlTMM" resolve="IStatisticsTarget" />
    <node concept="13i0hz" id="6vMIJHUBlVT" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getStat" />
      <node concept="3Tm1VV" id="6vMIJHUBlVU" role="1B3o_S" />
      <node concept="3clFbS" id="6vMIJHUBlVW" role="3clF47">
        <node concept="3clFbF" id="5RBjc7gadxx" role="3cqZAp">
          <node concept="10Nm6u" id="5RBjc7gadxw" role="3clFbG" />
        </node>
      </node>
      <node concept="A3Dl8" id="6vMIJHUD1s7" role="3clF45">
        <node concept="1LlUBW" id="6vMIJHUFco8" role="A3Ik2">
          <node concept="17QB3L" id="6vMIJHUFcod" role="1Lm7xW" />
          <node concept="10Oyi0" id="6vMIJHUFcoj" role="1Lm7xW" />
        </node>
      </node>
      <node concept="37vLTG" id="1ezeZBAMR6d" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ezeZBAMR6c" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="6vMIJHUBlVJ" role="13h7CW">
      <node concept="3clFbS" id="6vMIJHUBlVK" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="6vMIJHUDbi1">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6vMIJHUlTMS" resolve="GlobalStatisticTarget" />
    <node concept="13hLZK" id="6vMIJHUDbi2" role="13h7CW">
      <node concept="3clFbS" id="6vMIJHUDbi3" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6vMIJHUDbi4" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getStat" />
      <ref role="13i0hy" node="6vMIJHUBlVT" resolve="getStat" />
      <node concept="3Tm1VV" id="6vMIJHUDbi5" role="1B3o_S" />
      <node concept="A3Dl8" id="6vMIJHUDbi7" role="3clF45">
        <node concept="1LlUBW" id="6vMIJHUH689" role="A3Ik2">
          <node concept="17QB3L" id="6vMIJHUH6hy" role="1Lm7xW" />
          <node concept="10Oyi0" id="6vMIJHUH6hC" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3clFbS" id="6vMIJHUNxX2" role="3clF47">
        <node concept="3cpWs8" id="6vMIJHUNy1R" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUNy1S" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="6vMIJHUNy1T" role="1tU5fm">
              <node concept="1LlUBW" id="6vMIJHUNy1U" role="_ZDj9">
                <node concept="17QB3L" id="6vMIJHUNy1V" role="1Lm7xW" />
                <node concept="10Oyi0" id="6vMIJHUNy1W" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2ShNRf" id="6vMIJHUNy1X" role="33vP2m">
              <node concept="Tc6Ow" id="6vMIJHUNy1Y" role="2ShVmc">
                <node concept="1LlUBW" id="6vMIJHUNy1Z" role="HW$YZ">
                  <node concept="17QB3L" id="6vMIJHUNy20" role="1Lm7xW" />
                  <node concept="10Oyi0" id="6vMIJHUNy21" role="1Lm7xW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vMIJHUO05Q" role="3cqZAp" />
        <node concept="3clFbF" id="6vMIJHUNy22" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUNy23" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUNy24" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUNy1S" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUNy25" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUNy26" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUNy27" role="1Lso8e">
                  <property role="Xl_RC" value="Modules" />
                </node>
                <node concept="2OqwBi" id="6vMIJHUOgv3" role="1Lso8e">
                  <node concept="2YIFZM" id="6vMIJHUOf5F" role="2Oq$k0">
                    <ref role="37wK5l" to="msyo:~IterableUtil.asCollection(java.lang.Iterable):java.util.Collection" resolve="asCollection" />
                    <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
                    <node concept="2OqwBi" id="6vMIJHUO7VG" role="37wK5m">
                      <node concept="2YIFZM" id="6vMIJHUO7Gu" role="2Oq$k0">
                        <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                        <ref role="1Pybhc" to="cu2c:~MPSModuleRepository" resolve="MPSModuleRepository" />
                      </node>
                      <node concept="liA8E" id="6vMIJHUO9Et" role="2OqNvi">
                        <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getModules():java.lang.Iterable" resolve="getModules" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6vMIJHUOlid" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Collection.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vMIJHUOlLr" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUOlLs" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUOlLt" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUNy1S" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUOlLu" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUOlLv" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUOlLw" role="1Lso8e">
                  <property role="Xl_RC" value="Models" />
                </node>
                <node concept="2OqwBi" id="6vMIJHUOsIJ" role="1Lso8e">
                  <node concept="2YIFZM" id="6vMIJHUOqKb" role="2Oq$k0">
                    <ref role="37wK5l" to="msyo:~IterableUtil.asCollection(java.lang.Iterable):java.util.Collection" resolve="asCollection" />
                    <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
                    <node concept="2OqwBi" id="6vMIJHUOn5_" role="37wK5m">
                      <node concept="2YIFZM" id="6vMIJHUOmSa" role="2Oq$k0">
                        <ref role="37wK5l" to="cu2c:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
                        <ref role="1Pybhc" to="cu2c:~SModelRepository" resolve="SModelRepository" />
                      </node>
                      <node concept="liA8E" id="6vMIJHUOogw" role="2OqNvi">
                        <ref role="37wK5l" to="cu2c:~SModelRepository.getModelDescriptors():java.util.List" resolve="getModelDescriptors" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6vMIJHUOvEo" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Collection.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vMIJHUNU$u" role="3cqZAp" />
        <node concept="3cpWs6" id="6vMIJHUNN0F" role="3cqZAp">
          <node concept="37vLTw" id="6vMIJHUNRZW" role="3cqZAk">
            <ref role="3cqZAo" node="6vMIJHUNy1S" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ezeZBAN3z9" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ezeZBAN3z8" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1El5OLrHZeR" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getNodes" />
      <ref role="13i0hy" node="4x3U0fq41hN" resolve="getNodes" />
      <node concept="3Tm1VV" id="1El5OLrHZeS" role="1B3o_S" />
      <node concept="A3Dl8" id="5LktTNEZijA" role="3clF45">
        <node concept="3Tqbb2" id="5LktTNEZtOF" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="1El5OLrHZeV" role="3clF47">
        <node concept="3cpWs8" id="1El5OLrIAxj" role="3cqZAp">
          <node concept="3cpWsn" id="1El5OLrIAxm" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="1El5OLrIAxh" role="1tU5fm">
              <node concept="3uibUv" id="1El5OLrIAxA" role="A3Ik2">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2OqwBi" id="1El5OLrIamC" role="33vP2m">
              <node concept="2YIFZM" id="1El5OLrIamD" role="2Oq$k0">
                <ref role="1Pybhc" to="cu2c:~MPSModuleRepository" resolve="MPSModuleRepository" />
                <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="1El5OLrIamE" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getModules():java.lang.Iterable" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1El5OLrJsmf" role="3cqZAp">
          <node concept="2OqwBi" id="1El5OLrJsmh" role="3cqZAk">
            <node concept="2OqwBi" id="1El5OLrJsmi" role="2Oq$k0">
              <node concept="37vLTw" id="1El5OLrJsmj" role="2Oq$k0">
                <ref role="3cqZAo" node="1El5OLrIAxm" resolve="modules" />
              </node>
              <node concept="3goQfb" id="1El5OLrJsmk" role="2OqNvi">
                <node concept="1bVj0M" id="1El5OLrJsml" role="23t8la">
                  <node concept="3clFbS" id="1El5OLrJsmm" role="1bW5cS">
                    <node concept="3clFbF" id="1El5OLrJsmn" role="3cqZAp">
                      <node concept="2OqwBi" id="1El5OLrJsmo" role="3clFbG">
                        <node concept="37vLTw" id="1El5OLrJsmp" role="2Oq$k0">
                          <ref role="3cqZAo" node="1El5OLrJsmr" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1El5OLrJsmq" role="2OqNvi">
                          <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1El5OLrJsmr" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1El5OLrJsms" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3goQfb" id="1El5OLrJsmt" role="2OqNvi">
              <node concept="1bVj0M" id="1El5OLrJsmu" role="23t8la">
                <node concept="3clFbS" id="1El5OLrJsmv" role="1bW5cS">
                  <node concept="3clFbF" id="1El5OLrJsmw" role="3cqZAp">
                    <node concept="2YIFZM" id="1El5OLrJsmx" role="3clFbG">
                      <ref role="37wK5l" to="ec5l:~SNodeUtil.getDescendants(org.jetbrains.mps.openapi.model.SModel):java.lang.Iterable" resolve="getDescendants" />
                      <ref role="1Pybhc" to="ec5l:~SNodeUtil" resolve="SNodeUtil" />
                      <node concept="37vLTw" id="1El5OLrJsmy" role="37wK5m">
                        <ref role="3cqZAo" node="1El5OLrJsmz" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1El5OLrJsmz" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1El5OLrJsm$" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1El5OLrKnuV" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="1El5OLrKnuU" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6vMIJHUDpDR">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6vMIJHUnaQm" resolve="ModelStatisticsTarget" />
    <node concept="13hLZK" id="6vMIJHUDpDS" role="13h7CW">
      <node concept="3clFbS" id="6vMIJHUDpDT" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6vMIJHUDpDU" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getStat" />
      <ref role="13i0hy" node="6vMIJHUBlVT" resolve="getStat" />
      <node concept="3Tm1VV" id="6vMIJHUDpDV" role="1B3o_S" />
      <node concept="A3Dl8" id="6vMIJHUDpDX" role="3clF45">
        <node concept="1LlUBW" id="6vMIJHUFfCq" role="A3Ik2">
          <node concept="17QB3L" id="6vMIJHUFiwq" role="1Lm7xW" />
          <node concept="10Oyi0" id="6vMIJHUFjHG" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3clFbS" id="6vMIJHUDpE1" role="3clF47">
        <node concept="3cpWs8" id="6vMIJHUGA_z" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUGA_$" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="3cmrfG" id="6vMIJHUGA__" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="6vMIJHUGA_A" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="6vMIJHUGA_B" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUGA_C" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="3cmrfG" id="6vMIJHUGA_D" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="6vMIJHUGA_E" role="1tU5fm" />
          </node>
        </node>
        <node concept="1DcWWT" id="6vMIJHUGA_L" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUGA_M" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="6vMIJHUGA_N" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="6vMIJHUGA_O" role="2LFqv$">
            <node concept="3clFbF" id="6vMIJHUGA_P" role="3cqZAp">
              <node concept="d57v9" id="6vMIJHUGA_Q" role="3clFbG">
                <node concept="37vLTw" id="6vMIJHUGA_R" role="37vLTJ">
                  <ref role="3cqZAo" node="6vMIJHUGA_$" resolve="references" />
                </node>
                <node concept="2OqwBi" id="6vMIJHUGA_S" role="37vLTx">
                  <node concept="2YIFZM" id="6vMIJHUGA_T" role="2Oq$k0">
                    <ref role="37wK5l" to="msyo:~IterableUtil.asCollection(java.lang.Iterable):java.util.Collection" resolve="asCollection" />
                    <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
                    <node concept="2OqwBi" id="6vMIJHUGA_U" role="37wK5m">
                      <node concept="37vLTw" id="6vMIJHUGA_V" role="2Oq$k0">
                        <ref role="3cqZAo" node="6vMIJHUGA_M" resolve="node" />
                      </node>
                      <node concept="liA8E" id="6vMIJHUGA_W" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getReferences():java.lang.Iterable" resolve="getReferences" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6vMIJHUGA_X" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Collection.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6vMIJHUGA_Y" role="3cqZAp">
              <node concept="d57v9" id="6vMIJHUGA_Z" role="3clFbG">
                <node concept="37vLTw" id="6vMIJHUGAA0" role="37vLTJ">
                  <ref role="3cqZAo" node="6vMIJHUGA_C" resolve="properties" />
                </node>
                <node concept="2OqwBi" id="6vMIJHUGAA1" role="37vLTx">
                  <node concept="2OqwBi" id="6vMIJHUGAA2" role="2Oq$k0">
                    <node concept="2YIFZM" id="6vMIJHUGAA3" role="2Oq$k0">
                      <ref role="37wK5l" to="msyo:~SNodeOperations.getProperties(org.jetbrains.mps.openapi.model.SNode):java.util.Map" resolve="getProperties" />
                      <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                      <node concept="37vLTw" id="6vMIJHUGAA4" role="37wK5m">
                        <ref role="3cqZAo" node="6vMIJHUGA_M" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6vMIJHUGAA5" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.keySet():java.util.Set" resolve="keySet" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6vMIJHUGAA6" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Set.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="BsUDl" id="4x3U0fq6aPw" role="1DdaDG">
            <ref role="37wK5l" node="4x3U0fq41hN" resolve="getNodes" />
            <node concept="37vLTw" id="1El5OLrKr2_" role="37wK5m">
              <ref role="3cqZAo" node="1ezeZBAMTQ4" resolve="context" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6vMIJHUDTN5" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUDTN8" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="6vMIJHUDTN3" role="1tU5fm">
              <node concept="1LlUBW" id="6vMIJHUFlWQ" role="_ZDj9">
                <node concept="17QB3L" id="6vMIJHUFnZ$" role="1Lm7xW" />
                <node concept="10Oyi0" id="6vMIJHUFpM$" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2ShNRf" id="6vMIJHUFqAA" role="33vP2m">
              <node concept="Tc6Ow" id="6vMIJHUFqAu" role="2ShVmc">
                <node concept="1LlUBW" id="6vMIJHUFqAv" role="HW$YZ">
                  <node concept="17QB3L" id="6vMIJHUFqAw" role="1Lm7xW" />
                  <node concept="10Oyi0" id="6vMIJHUFqAx" role="1Lm7xW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="67MRmR$zn8D" role="3cqZAp">
          <node concept="3cpWsn" id="67MRmR$zn8G" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="67MRmR$zn8B" role="1tU5fm" />
            <node concept="2OqwBi" id="67MRmR$ztpB" role="33vP2m">
              <node concept="2OqwBi" id="67MRmR$zpYq" role="2Oq$k0">
                <node concept="13iPFW" id="67MRmR$zpMS" role="2Oq$k0" />
                <node concept="3TrEf2" id="67MRmR$zs8N" role="2OqNvi">
                  <ref role="3Tt5mk" to="caxt:6vMIJHUnaQp" />
                </node>
              </node>
              <node concept="2qgKlT" id="67MRmR$zvC0" role="2OqNvi">
                <ref role="37wK5l" node="67MRmR$z8Z2" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vMIJHUDTX8" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUE9kB" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUDTX7" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUDTN8" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUEhyD" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUFcBh" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUFcJF" role="1Lso8e">
                  <property role="Xl_RC" value="Roots" />
                </node>
                <node concept="2OqwBi" id="5LktTNEZJIy" role="1Lso8e">
                  <node concept="2OqwBi" id="5LktTNEZGpU" role="2Oq$k0">
                    <node concept="2RRcyG" id="5LktTNEZH0v" role="2OqNvi" />
                    <node concept="37vLTw" id="67MRmR$zyvO" role="2Oq$k0">
                      <ref role="3cqZAo" node="67MRmR$zn8G" resolve="model" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5LktTNEZT04" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vMIJHUG7A2" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUG7A3" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUG7A4" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUDTN8" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUG7A5" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUG7A6" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUG7A7" role="1Lso8e">
                  <property role="Xl_RC" value="Nodes" />
                </node>
                <node concept="3K4zz7" id="1fzYukMdoDa" role="1Lso8e">
                  <node concept="3cmrfG" id="1fzYukMdoPA" role="3K4E3e">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3clFbC" id="1fzYukMdojh" role="3K4Cdx">
                    <node concept="37vLTw" id="1fzYukMdo3x" role="3uHU7B">
                      <ref role="3cqZAo" node="67MRmR$zn8G" resolve="model" />
                    </node>
                    <node concept="10Nm6u" id="1fzYukMdour" role="3uHU7w" />
                  </node>
                  <node concept="2YIFZM" id="6vMIJHUGgNp" role="3K4GZi">
                    <ref role="37wK5l" to="msyo:~SNodeOperations.nodesCount(org.jetbrains.mps.openapi.model.SModel):int" resolve="nodesCount" />
                    <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                    <node concept="37vLTw" id="67MRmR$zyJQ" role="37wK5m">
                      <ref role="3cqZAo" node="67MRmR$zn8G" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vMIJHUGhQu" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUGhQv" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUGhQw" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUDTN8" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUGhQx" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUGhQy" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUGhQz" role="1Lso8e">
                  <property role="Xl_RC" value="References" />
                </node>
                <node concept="37vLTw" id="6vMIJHUGMkW" role="1Lso8e">
                  <ref role="3cqZAo" node="6vMIJHUGA_$" resolve="references" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6vMIJHUGjID" role="3cqZAp">
          <node concept="2OqwBi" id="6vMIJHUGjIE" role="3clFbG">
            <node concept="37vLTw" id="6vMIJHUGjIF" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUDTN8" resolve="result" />
            </node>
            <node concept="TSZUe" id="6vMIJHUGjIG" role="2OqNvi">
              <node concept="1Ls8ON" id="6vMIJHUGjIH" role="25WWJ7">
                <node concept="Xl_RD" id="6vMIJHUGjII" role="1Lso8e">
                  <property role="Xl_RC" value="Properties" />
                </node>
                <node concept="37vLTw" id="6vMIJHUGM$A" role="1Lso8e">
                  <ref role="3cqZAo" node="6vMIJHUGA_C" resolve="properties" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vMIJHUG6Mo" role="3cqZAp" />
        <node concept="3cpWs6" id="6vMIJHUFeNI" role="3cqZAp">
          <node concept="37vLTw" id="6vMIJHUFfhx" role="3cqZAk">
            <ref role="3cqZAo" node="6vMIJHUDTN8" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ezeZBAMTQ4" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ezeZBAMTQ3" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4x3U0fq5Ayf" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getNodes" />
      <ref role="13i0hy" node="4x3U0fq41hN" resolve="getNodes" />
      <node concept="3Tm1VV" id="4x3U0fq5Ayg" role="1B3o_S" />
      <node concept="3clFbS" id="4x3U0fq5Ayj" role="3clF47">
        <node concept="3cpWs6" id="4x3U0fq67u8" role="3cqZAp">
          <node concept="2OqwBi" id="5LktTNEZWVC" role="3cqZAk">
            <node concept="2SmgA7" id="5LktTNEZXw5" role="2OqNvi" />
            <node concept="2OqwBi" id="67MRmR$zAUB" role="2Oq$k0">
              <node concept="2OqwBi" id="67MRmR$z$bC" role="2Oq$k0">
                <node concept="13iPFW" id="67MRmR$zzLe" role="2Oq$k0" />
                <node concept="3TrEf2" id="67MRmR$z_mZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="caxt:6vMIJHUnaQp" />
                </node>
              </node>
              <node concept="2qgKlT" id="67MRmR$zDok" role="2OqNvi">
                <ref role="37wK5l" node="67MRmR$z8Z2" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="5LktTNEZzD5" role="3clF45">
        <node concept="3Tqbb2" id="5LktTNEZ$4o" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="1El5OLrKrw5" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1El5OLrKrw4" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="6vMIJHUOwFL">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6vMIJHUlTSQ" resolve="ProjectStatisticsTarget" />
    <node concept="13hLZK" id="6vMIJHUOwFM" role="13h7CW">
      <node concept="3clFbS" id="6vMIJHUOwFN" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="6vMIJHUOwFO" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getStat" />
      <ref role="13i0hy" node="6vMIJHUBlVT" resolve="getStat" />
      <node concept="3Tm1VV" id="6vMIJHUOwFP" role="1B3o_S" />
      <node concept="A3Dl8" id="6vMIJHUOwFR" role="3clF45">
        <node concept="1LlUBW" id="6vMIJHUOwFS" role="A3Ik2">
          <node concept="17QB3L" id="6vMIJHUOwFT" role="1Lm7xW" />
          <node concept="10Oyi0" id="6vMIJHUOwFU" role="1Lm7xW" />
        </node>
      </node>
      <node concept="3clFbS" id="6vMIJHUOwFV" role="3clF47">
        <node concept="3cpWs8" id="6vMIJHUOwRR" role="3cqZAp">
          <node concept="3cpWsn" id="6vMIJHUOwRS" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="6vMIJHUOwRT" role="1tU5fm">
              <node concept="1LlUBW" id="6vMIJHUOwRU" role="_ZDj9">
                <node concept="17QB3L" id="6vMIJHUOwRV" role="1Lm7xW" />
                <node concept="10Oyi0" id="6vMIJHUOwRW" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2ShNRf" id="6vMIJHUOwRX" role="33vP2m">
              <node concept="Tc6Ow" id="6vMIJHUOwRY" role="2ShVmc">
                <node concept="1LlUBW" id="6vMIJHUOwRZ" role="HW$YZ">
                  <node concept="17QB3L" id="6vMIJHUOwS0" role="1Lm7xW" />
                  <node concept="10Oyi0" id="6vMIJHUOwS1" role="1Lm7xW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1ezeZBAO16B" role="3cqZAp" />
        <node concept="3cpWs8" id="DM6_$ipNVU" role="3cqZAp">
          <node concept="3cpWsn" id="DM6_$ipNVV" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="5X1VVpQ3KAJ" role="1tU5fm">
              <node concept="3qUE_q" id="5LktTNEXIUn" role="A3Ik2">
                <node concept="3uibUv" id="5LktTNEXK4D" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="DM6_$ipSkq" role="33vP2m">
              <node concept="2OqwBi" id="DM6_$ipNW0" role="2Oq$k0">
                <node concept="37vLTw" id="DM6_$ipNW1" role="2Oq$k0">
                  <ref role="3cqZAo" node="1ezeZBAN5LI" resolve="context" />
                </node>
                <node concept="liA8E" id="DM6_$ipNW2" role="2OqNvi">
                  <ref role="37wK5l" to="qgo0:3MPHfSuPT3Y" resolve="getProject" />
                </node>
              </node>
              <node concept="liA8E" id="DM6_$ipTZ8" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModulesWithGenerators():java.lang.Iterable" resolve="getModulesWithGenerators" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5X1VVpQ4c5W" role="3cqZAp">
          <node concept="3cpWsn" id="5X1VVpQ4c5Z" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="A3Dl8" id="5X1VVpQ4c5T" role="1tU5fm">
              <node concept="H_c77" id="5X1VVpQ4dvL" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="5X1VVpQ4eAc" role="33vP2m">
              <node concept="37vLTw" id="5X1VVpQ4dUg" role="2Oq$k0">
                <ref role="3cqZAo" node="DM6_$ipNVV" resolve="modules" />
              </node>
              <node concept="3goQfb" id="5X1VVpQ4jXX" role="2OqNvi">
                <node concept="1bVj0M" id="5X1VVpQ4jXZ" role="23t8la">
                  <node concept="3clFbS" id="5X1VVpQ4jY0" role="1bW5cS">
                    <node concept="3clFbF" id="5X1VVpQ4kbv" role="3cqZAp">
                      <node concept="2OqwBi" id="5X1VVpQ4kOU" role="3clFbG">
                        <node concept="37vLTw" id="5X1VVpQ4kbu" role="2Oq$k0">
                          <ref role="3cqZAo" node="5X1VVpQ4jY1" resolve="it" />
                        </node>
                        <node concept="liA8E" id="5X1VVpQ4mEd" role="2OqNvi">
                          <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5X1VVpQ4jY1" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5X1VVpQ4jY2" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5X1VVpQ4bbq" role="3cqZAp" />
        <node concept="3clFbF" id="DM6_$iq43B" role="3cqZAp">
          <node concept="2OqwBi" id="DM6_$iq43C" role="3clFbG">
            <node concept="37vLTw" id="DM6_$iq43D" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUOwRS" resolve="result" />
            </node>
            <node concept="TSZUe" id="DM6_$iq43E" role="2OqNvi">
              <node concept="1Ls8ON" id="DM6_$iq43F" role="25WWJ7">
                <node concept="Xl_RD" id="DM6_$iq43G" role="1Lso8e">
                  <property role="Xl_RC" value="Modules" />
                </node>
                <node concept="2OqwBi" id="5X1VVpQ47xg" role="1Lso8e">
                  <node concept="37vLTw" id="5X1VVpQ46DR" role="2Oq$k0">
                    <ref role="3cqZAo" node="DM6_$ipNVV" resolve="modules" />
                  </node>
                  <node concept="34oBXx" id="5X1VVpQ4aj2" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ezeZBANnMW" role="3cqZAp">
          <node concept="2OqwBi" id="1ezeZBANnMX" role="3clFbG">
            <node concept="37vLTw" id="1ezeZBANnMY" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUOwRS" resolve="result" />
            </node>
            <node concept="TSZUe" id="1ezeZBANnMZ" role="2OqNvi">
              <node concept="1Ls8ON" id="1ezeZBANnN0" role="25WWJ7">
                <node concept="Xl_RD" id="1ezeZBANnN1" role="1Lso8e">
                  <property role="Xl_RC" value="Non-packaged modules" />
                </node>
                <node concept="2OqwBi" id="1ezeZBATp2Q" role="1Lso8e">
                  <node concept="2OqwBi" id="1ezeZBARWXL" role="2Oq$k0">
                    <node concept="37vLTw" id="5X1VVpQ3AH0" role="2Oq$k0">
                      <ref role="3cqZAo" node="DM6_$ipNVV" resolve="modules" />
                    </node>
                    <node concept="3zZkjj" id="1ezeZBAS$_O" role="2OqNvi">
                      <node concept="1bVj0M" id="1ezeZBAS$_P" role="23t8la">
                        <node concept="3clFbS" id="1ezeZBAS$_Q" role="1bW5cS">
                          <node concept="3clFbF" id="1ezeZBAS_kg" role="3cqZAp">
                            <node concept="2OqwBi" id="1ezeZBAVyvD" role="3clFbG">
                              <node concept="37vLTw" id="1ezeZBAVxfz" role="2Oq$k0">
                                <ref role="3cqZAo" node="1ezeZBAS$_R" resolve="it" />
                              </node>
                              <node concept="liA8E" id="1ezeZBAVzLt" role="2OqNvi">
                                <ref role="37wK5l" to="88zw:~SModule.isPackaged():boolean" resolve="isPackaged" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1ezeZBAS$_R" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1ezeZBAS$_S" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="1ezeZBATq4v" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DM6_$ipkqL" role="3cqZAp">
          <node concept="2OqwBi" id="DM6_$ipkqM" role="3clFbG">
            <node concept="37vLTw" id="DM6_$ipkqN" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUOwRS" resolve="result" />
            </node>
            <node concept="TSZUe" id="DM6_$ipkqO" role="2OqNvi">
              <node concept="1Ls8ON" id="DM6_$ipkqP" role="25WWJ7">
                <node concept="Xl_RD" id="DM6_$ipkqQ" role="1Lso8e">
                  <property role="Xl_RC" value="Models" />
                </node>
                <node concept="2OqwBi" id="DM6_$ipkqR" role="1Lso8e">
                  <node concept="37vLTw" id="5X1VVpQ4seX" role="2Oq$k0">
                    <ref role="3cqZAo" node="5X1VVpQ4c5Z" resolve="models" />
                  </node>
                  <node concept="34oBXx" id="DM6_$ipkr3" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ezeZBAUiEI" role="3cqZAp">
          <node concept="2OqwBi" id="1ezeZBAUiEJ" role="3clFbG">
            <node concept="37vLTw" id="1ezeZBAUiEK" role="2Oq$k0">
              <ref role="3cqZAo" node="6vMIJHUOwRS" resolve="result" />
            </node>
            <node concept="TSZUe" id="1ezeZBAUiEL" role="2OqNvi">
              <node concept="1Ls8ON" id="1ezeZBAUiEM" role="25WWJ7">
                <node concept="Xl_RD" id="1ezeZBAUiEN" role="1Lso8e">
                  <property role="Xl_RC" value="Editable models" />
                </node>
                <node concept="2OqwBi" id="1ezeZBAUFQY" role="1Lso8e">
                  <node concept="2OqwBi" id="1ezeZBAUiEO" role="2Oq$k0">
                    <node concept="37vLTw" id="5X1VVpQ4sxs" role="2Oq$k0">
                      <ref role="3cqZAo" node="5X1VVpQ4c5Z" resolve="models" />
                    </node>
                    <node concept="3zZkjj" id="1ezeZBAUwhT" role="2OqNvi">
                      <node concept="1bVj0M" id="1ezeZBAUwhU" role="23t8la">
                        <node concept="3clFbS" id="1ezeZBAUwhV" role="1bW5cS">
                          <node concept="3clFbF" id="1ezeZBAUxaz" role="3cqZAp">
                            <node concept="3fqX7Q" id="1ezeZBAUCW2" role="3clFbG">
                              <node concept="2OqwBi" id="5X1VVpQ4_kA" role="3fr31v">
                                <node concept="2JrnkZ" id="5X1VVpQ4$iY" role="2Oq$k0">
                                  <node concept="37vLTw" id="1ezeZBAUCW5" role="2JrQYb">
                                    <ref role="3cqZAo" node="1ezeZBAUwhW" resolve="it" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5X1VVpQ4Bge" role="2OqNvi">
                                  <ref role="37wK5l" to="ec5l:~SModel.isReadOnly():boolean" resolve="isReadOnly" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1ezeZBAUwhW" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1ezeZBAUwhX" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="1ezeZBAUKe8" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1ezeZBB0J2L" role="3cqZAp" />
        <node concept="3cpWs6" id="1ezeZBANnNj" role="3cqZAp">
          <node concept="37vLTw" id="1ezeZBANnNk" role="3cqZAk">
            <ref role="3cqZAo" node="6vMIJHUOwRS" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1ezeZBAN5LI" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1ezeZBAN5LH" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="1El5OLrJQN0" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getNodes" />
      <ref role="13i0hy" node="4x3U0fq41hN" resolve="getNodes" />
      <node concept="3Tm1VV" id="1El5OLrJQN1" role="1B3o_S" />
      <node concept="A3Dl8" id="5LktTNEZZCr" role="3clF45">
        <node concept="3Tqbb2" id="5LktTNF00tA" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="1El5OLrJQN4" role="3clF47">
        <node concept="3cpWs8" id="1El5OLrJQPD" role="3cqZAp">
          <node concept="3cpWsn" id="1El5OLrJQPE" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="5LktTNF0ft2" role="1tU5fm">
              <node concept="3qUE_q" id="5LktTNF0fJQ" role="A3Ik2">
                <node concept="3uibUv" id="5LktTNF0g2W" role="3qUE_r">
                  <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5LktTNF03iU" role="33vP2m">
              <node concept="2OqwBi" id="5LktTNF01AT" role="2Oq$k0">
                <node concept="37vLTw" id="5LktTNF00Yh" role="2Oq$k0">
                  <ref role="3cqZAo" node="1El5OLrKvsS" resolve="context" />
                </node>
                <node concept="liA8E" id="5LktTNF02kI" role="2OqNvi">
                  <ref role="37wK5l" to="qgo0:3MPHfSuPT3Y" resolve="getProject" />
                </node>
              </node>
              <node concept="liA8E" id="5LktTNF05DH" role="2OqNvi">
                <ref role="37wK5l" to="vsqj:~Project.getModules():java.lang.Iterable" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1El5OLrJRk6" role="3cqZAp">
          <node concept="2OqwBi" id="1El5OLrKaMO" role="3cqZAk">
            <node concept="2OqwBi" id="1El5OLrK0Su" role="2Oq$k0">
              <node concept="2OqwBi" id="1El5OLrJSgl" role="2Oq$k0">
                <node concept="3goQfb" id="1El5OLrJVfh" role="2OqNvi">
                  <node concept="1bVj0M" id="1El5OLrJVfj" role="23t8la">
                    <node concept="3clFbS" id="1El5OLrJVfk" role="1bW5cS">
                      <node concept="3clFbF" id="1El5OLrJVpw" role="3cqZAp">
                        <node concept="2OqwBi" id="1El5OLrJVzC" role="3clFbG">
                          <node concept="37vLTw" id="1El5OLrJVpv" role="2Oq$k0">
                            <ref role="3cqZAo" node="1El5OLrJVfl" resolve="it" />
                          </node>
                          <node concept="liA8E" id="1El5OLrJWwy" role="2OqNvi">
                            <ref role="37wK5l" to="88zw:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1El5OLrJVfl" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1El5OLrJVfm" role="1tU5fm" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5LktTNF0g9o" role="2Oq$k0">
                  <ref role="3cqZAo" node="1El5OLrJQPE" resolve="modules" />
                </node>
              </node>
              <node concept="3goQfb" id="1El5OLrK492" role="2OqNvi">
                <node concept="1bVj0M" id="1El5OLrK494" role="23t8la">
                  <node concept="3clFbS" id="1El5OLrK495" role="1bW5cS">
                    <node concept="3clFbF" id="1El5OLrK7G8" role="3cqZAp">
                      <node concept="2YIFZM" id="1El5OLrK7Ga" role="3clFbG">
                        <ref role="37wK5l" to="ec5l:~SNodeUtil.getDescendants(org.jetbrains.mps.openapi.model.SModel):java.lang.Iterable" resolve="getDescendants" />
                        <ref role="1Pybhc" to="ec5l:~SNodeUtil" resolve="SNodeUtil" />
                        <node concept="37vLTw" id="1El5OLrK7Gb" role="37wK5m">
                          <ref role="3cqZAo" node="1El5OLrK496" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1El5OLrK496" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1El5OLrK497" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1El5OLrKfhw" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1El5OLrKvsS" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1El5OLrKvsR" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="1NRmRaKF8ae">
    <ref role="13h7C2" to="caxt:1NRmRaKF8ac" resolve="ShowBrokenReferences" />
    <node concept="13hLZK" id="1NRmRaKF8af" role="13h7CW">
      <node concept="3clFbS" id="1NRmRaKF8ag" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1NRmRaKF8ah" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="doExecute" />
      <ref role="13i0hy" to="zyb2:2SpVAIqougW" resolve="doExecute" />
      <node concept="3Tm1VV" id="1NRmRaKF8aj" role="1B3o_S" />
      <node concept="3clFbS" id="1NRmRaKF8aq" role="3clF47">
        <node concept="1QHqEK" id="1NRmRaKF8ar" role="3cqZAp">
          <node concept="1QHqEC" id="1NRmRaKF8as" role="1QHqEI">
            <node concept="3clFbS" id="1NRmRaKF8at" role="1bW5cS">
              <node concept="3cpWs8" id="1NRmRaKF8ay" role="3cqZAp">
                <node concept="3cpWsn" id="1NRmRaKF8az" role="3cpWs9">
                  <property role="TrG5h" value="brokenReferences" />
                  <node concept="A3Dl8" id="5LktTNF0nNe" role="1tU5fm">
                    <node concept="2z4iKi" id="5LktTNF0nNg" role="A3Ik2" />
                  </node>
                  <node concept="2OqwBi" id="4waomXWbQIx" role="33vP2m">
                    <node concept="2OqwBi" id="4waomXWbQIy" role="2Oq$k0">
                      <node concept="2OqwBi" id="4x3U0fq54er" role="2Oq$k0">
                        <node concept="2OqwBi" id="4x3U0fq4xTK" role="2Oq$k0">
                          <node concept="13iPFW" id="4x3U0fq4xdw" role="2Oq$k0" />
                          <node concept="3TrEf2" id="4x3U0fq4zsY" role="2OqNvi">
                            <ref role="3Tt5mk" to="caxt:1NRmRaKF8ad" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="4x3U0fq55O2" role="2OqNvi">
                          <ref role="37wK5l" node="4x3U0fq41hN" resolve="getNodes" />
                          <node concept="37vLTw" id="2SpVAIquntl" role="37wK5m">
                            <ref role="3cqZAo" node="2SpVAIqtPCr" resolve="context" />
                          </node>
                        </node>
                      </node>
                      <node concept="3goQfb" id="4waomXWbQIA" role="2OqNvi">
                        <node concept="1bVj0M" id="4waomXWbQIB" role="23t8la">
                          <node concept="3clFbS" id="4waomXWbQIC" role="1bW5cS">
                            <node concept="3clFbF" id="4waomXWbQID" role="3cqZAp">
                              <node concept="2OqwBi" id="4waomXWbQIE" role="3clFbG">
                                <node concept="37vLTw" id="4waomXWbQIF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4waomXWbQIH" resolve="it" />
                                </node>
                                <node concept="2z74zc" id="4waomXWbQIG" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="4waomXWbQIH" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4waomXWbQII" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="4waomXWbQIJ" role="2OqNvi">
                      <node concept="1bVj0M" id="4waomXWbQIK" role="23t8la">
                        <node concept="3clFbS" id="4waomXWbQIL" role="1bW5cS">
                          <node concept="3clFbF" id="4waomXWbQIM" role="3cqZAp">
                            <node concept="3clFbC" id="4waomXWbQIN" role="3clFbG">
                              <node concept="2YIFZM" id="4waomXWbQIO" role="3uHU7B">
                                <ref role="37wK5l" to="msyo:~SNodeOperations.getTargetNodeSilently(org.jetbrains.mps.openapi.model.SReference):org.jetbrains.mps.openapi.model.SNode" resolve="getTargetNodeSilently" />
                                <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                                <node concept="37vLTw" id="4waomXWbSLY" role="37wK5m">
                                  <ref role="3cqZAo" node="4waomXWbQIR" resolve="it" />
                                </node>
                              </node>
                              <node concept="10Nm6u" id="4waomXWbQIQ" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="4waomXWbQIR" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4waomXWbQIS" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="1NRmRaKF8aG" role="3cqZAp">
                <node concept="2GrKxI" id="1NRmRaKF8aH" role="2Gsz3X">
                  <property role="TrG5h" value="ref" />
                </node>
                <node concept="37vLTw" id="1NRmRaKF8aI" role="2GsD0m">
                  <ref role="3cqZAo" node="1NRmRaKF8az" resolve="brokenReferences" />
                </node>
                <node concept="3clFbS" id="1NRmRaKF8aJ" role="2LFqv$">
                  <node concept="3clFbF" id="1NRmRaKF8aK" role="3cqZAp">
                    <node concept="2OqwBi" id="1NRmRaKF8aL" role="3clFbG">
                      <node concept="37vLTw" id="1NRmRaKF8aM" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="1NRmRaKF8aN" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="3cpWs3" id="1NRmRaKF8aO" role="37wK5m">
                          <node concept="2OqwBi" id="1NRmRaKF8aP" role="3uHU7w">
                            <node concept="2GrUjf" id="1NRmRaKF8aQ" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1NRmRaKF8aH" resolve="ref" />
                            </node>
                            <node concept="liA8E" id="1NRmRaKF8aR" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SReference.getTargetSModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getTargetSModelReference" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1NRmRaKF8aS" role="3uHU7B">
                            <property role="Xl_RC" value="model id = " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1NRmRaKF8aT" role="3cqZAp">
                    <node concept="2OqwBi" id="FuAV$pokxU" role="3clFbG">
                      <node concept="37vLTw" id="1NRmRaKF8aV" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="FuAV$polKD" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="Xl_RD" id="FuAV$pomkd" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1NRmRaKF8aX" role="3cqZAp">
                    <node concept="2OqwBi" id="1NRmRaKF8aY" role="3clFbG">
                      <node concept="37vLTw" id="1NRmRaKF8aZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="1NRmRaKF8b0" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="3cpWs3" id="1NRmRaKF8b1" role="37wK5m">
                          <node concept="Xl_RD" id="1NRmRaKF8b2" role="3uHU7B">
                            <property role="Xl_RC" value="node  id = " />
                          </node>
                          <node concept="2OqwBi" id="1NRmRaKF8b3" role="3uHU7w">
                            <node concept="2GrUjf" id="1NRmRaKF8b4" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1NRmRaKF8aH" resolve="ref" />
                            </node>
                            <node concept="liA8E" id="1NRmRaKF8b5" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SReference.getTargetNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getTargetNodeId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="KNcckM8OdU" role="3cqZAp">
                    <node concept="3cpWsn" id="KNcckM8OdX" role="3cpWs9">
                      <property role="TrG5h" value="targetNode" />
                      <node concept="3Tqbb2" id="KNcckM8OdS" role="1tU5fm" />
                      <node concept="2OqwBi" id="KNcckM8WQX" role="33vP2m">
                        <node concept="2GrUjf" id="KNcckM8VTg" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1NRmRaKF8aH" resolve="ref" />
                        </node>
                        <node concept="liA8E" id="KNcckM8YI0" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="KNcckM9Aun" role="3cqZAp">
                    <node concept="2OqwBi" id="KNcckM9Auo" role="3clFbG">
                      <node concept="37vLTw" id="KNcckM9Aup" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="KNcckM9Auq" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="Xl_RD" id="KNcckM9Aur" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="22lVekVFx34" role="3cqZAp">
                    <node concept="3cpWsn" id="22lVekVFx37" role="3cpWs9">
                      <property role="TrG5h" value="clickableNode" />
                      <node concept="3Tqbb2" id="22lVekVFx32" role="1tU5fm">
                        <ref role="ehGHo" to="eynw:22lVekVE19_" resolve="NodeReferenceString" />
                      </node>
                      <node concept="2ShNRf" id="22lVekVF$IV" role="33vP2m">
                        <node concept="3zrR0B" id="22lVekVF$G3" role="2ShVmc">
                          <node concept="3Tqbb2" id="22lVekVF$G4" role="3zrR0E">
                            <ref role="ehGHo" to="eynw:22lVekVE19_" resolve="NodeReferenceString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="22lVekVF_SQ" role="3cqZAp">
                    <node concept="2OqwBi" id="22lVekVFMdY" role="3clFbG">
                      <node concept="2OqwBi" id="22lVekVFH50" role="2Oq$k0">
                        <node concept="37vLTw" id="22lVekVF_SP" role="2Oq$k0">
                          <ref role="3cqZAo" node="22lVekVFx37" resolve="clickableNode" />
                        </node>
                        <node concept="3TrcHB" id="igjXyuFu7F" role="2OqNvi">
                          <ref role="3TsBF5" to="eynw:igjXyutu74" resolve="referencePresentation" />
                        </node>
                      </node>
                      <node concept="tyxLq" id="22lVekVFOO1" role="2OqNvi">
                        <node concept="Xl_RD" id="22lVekVFPmZ" role="tz02z">
                          <property role="Xl_RC" value="Go to enclosing node" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="22lVekVG1DC" role="3cqZAp">
                    <node concept="2OqwBi" id="22lVekVG7hO" role="3clFbG">
                      <node concept="2OqwBi" id="22lVekVG2l0" role="2Oq$k0">
                        <node concept="37vLTw" id="22lVekVG1DB" role="2Oq$k0">
                          <ref role="3cqZAo" node="22lVekVFx37" resolve="clickableNode" />
                        </node>
                        <node concept="3TrEf2" id="igjXyuF_9e" role="2OqNvi">
                          <ref role="3Tt5mk" to="eynw:igjXyutfLJ" />
                        </node>
                      </node>
                      <node concept="2oxUTD" id="22lVekVG8Ir" role="2OqNvi">
                        <node concept="37vLTw" id="22lVekVG9hD" role="2oxUTC">
                          <ref role="3cqZAo" node="KNcckM8OdX" resolve="targetNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="22lVekVCYG2" role="3cqZAp">
                    <node concept="2OqwBi" id="22lVekVCZfV" role="3clFbG">
                      <node concept="37vLTw" id="22lVekVCYG1" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="22lVekVD0xg" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:7Jzw3XJWFQB" resolve="addNode" />
                        <node concept="37vLTw" id="22lVekVG9Pf" role="37wK5m">
                          <ref role="3cqZAo" node="22lVekVFx37" resolve="clickableNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="FuAV$poouG" role="3cqZAp">
                    <node concept="2OqwBi" id="FuAV$poouH" role="3clFbG">
                      <node concept="37vLTw" id="FuAV$poouI" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="FuAV$poouJ" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="Xl_RD" id="FuAV$poouK" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="FuAV$pop2A" role="3cqZAp">
                    <node concept="2OqwBi" id="FuAV$pop2B" role="3clFbG">
                      <node concept="37vLTw" id="FuAV$pop2C" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SpVAIqtPCt" resolve="console" />
                      </node>
                      <node concept="liA8E" id="FuAV$pop2D" role="2OqNvi">
                        <ref role="37wK5l" to="qgo0:5WpmwkrQPWC" resolve="addText" />
                        <node concept="Xl_RD" id="FuAV$pop2E" role="37wK5m">
                          <property role="Xl_RC" value="\n" />
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
      <node concept="37vLTG" id="2SpVAIqtPCr" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2SpVAIqtPCs" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="2SpVAIqtPCt" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="2SpVAIqtPCu" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SpVAIqtPCv" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="1NRmRaKGTrv">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:1NRmRaKGToF" resolve="SubtreeStatisticsTarget" />
    <node concept="13hLZK" id="1NRmRaKGTu3" role="13h7CW">
      <node concept="3clFbS" id="1NRmRaKGTu4" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="1NRmRaKGTHw" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getStat" />
      <ref role="13i0hy" node="6vMIJHUBlVT" resolve="getStat" />
      <node concept="3Tm1VV" id="1NRmRaKGTHx" role="1B3o_S" />
      <node concept="A3Dl8" id="1NRmRaKGTHz" role="3clF45">
        <node concept="1LlUBW" id="1NRmRaKGTH$" role="A3Ik2">
          <node concept="17QB3L" id="1NRmRaKGTH_" role="1Lm7xW" />
          <node concept="10Oyi0" id="1NRmRaKGTHA" role="1Lm7xW" />
        </node>
      </node>
      <node concept="37vLTG" id="1NRmRaKGTHB" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1NRmRaKGTHC" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1NRmRaKGTHD" role="3clF47">
        <node concept="3cpWs8" id="1NRmRaKHf3a" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKHf3d" role="3cpWs9">
            <property role="TrG5h" value="targetNode" />
            <node concept="3Tqbb2" id="1NRmRaKHf38" role="1tU5fm" />
            <node concept="2OqwBi" id="1NRmRaKHkcN" role="33vP2m">
              <node concept="2OqwBi" id="1NRmRaKHhDu" role="2Oq$k0">
                <node concept="13iPFW" id="1NRmRaKHhvA" role="2Oq$k0" />
                <node concept="3TrEf2" id="1NRmRaKHjfJ" role="2OqNvi">
                  <ref role="3Tt5mk" to="caxt:1NRmRaKGTr6" />
                </node>
              </node>
              <node concept="2qgKlT" id="1NRmRaKHlQe" role="2OqNvi">
                <ref role="37wK5l" to="tpeu:36vPRrqnscn" resolve="getTargetNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1NRmRaKI7mH" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKI7mK" role="3cpWs9">
            <property role="TrG5h" value="subNodes" />
            <node concept="2I9FWS" id="1NRmRaKI7mF" role="1tU5fm" />
            <node concept="2OqwBi" id="1NRmRaKIaOD" role="33vP2m">
              <node concept="37vLTw" id="1NRmRaKIaGa" role="2Oq$k0">
                <ref role="3cqZAo" node="1NRmRaKHf3d" resolve="targetNode" />
              </node>
              <node concept="2Rf3mk" id="1NRmRaKIbDA" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1NRmRaKH2bm" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKH2bn" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="3cmrfG" id="1NRmRaKH2bo" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="1NRmRaKH2bp" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="1NRmRaKH2bq" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKH2br" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="3cmrfG" id="1NRmRaKH2bs" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="10Oyi0" id="1NRmRaKH2bt" role="1tU5fm" />
          </node>
        </node>
        <node concept="1DcWWT" id="1NRmRaKH2bu" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKH2bv" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="1NRmRaKHJ9w" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="3clFbS" id="1NRmRaKH2bx" role="2LFqv$">
            <node concept="3clFbF" id="1NRmRaKH2by" role="3cqZAp">
              <node concept="d57v9" id="1NRmRaKH2bz" role="3clFbG">
                <node concept="37vLTw" id="1NRmRaKH2b$" role="37vLTJ">
                  <ref role="3cqZAo" node="1NRmRaKH2bn" resolve="references" />
                </node>
                <node concept="2OqwBi" id="1NRmRaKH2b_" role="37vLTx">
                  <node concept="2YIFZM" id="1NRmRaKH2bA" role="2Oq$k0">
                    <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
                    <ref role="37wK5l" to="msyo:~IterableUtil.asCollection(java.lang.Iterable):java.util.Collection" resolve="asCollection" />
                    <node concept="2OqwBi" id="1NRmRaKHLY9" role="37wK5m">
                      <node concept="37vLTw" id="1NRmRaKH2bC" role="2Oq$k0">
                        <ref role="3cqZAo" node="1NRmRaKH2bv" resolve="node" />
                      </node>
                      <node concept="liA8E" id="1NRmRaKHN95" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.getReferences():java.lang.Iterable" resolve="getReferences" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1NRmRaKH2bE" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Collection.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1NRmRaKH2bF" role="3cqZAp">
              <node concept="d57v9" id="1NRmRaKH2bG" role="3clFbG">
                <node concept="37vLTw" id="1NRmRaKH2bH" role="37vLTJ">
                  <ref role="3cqZAo" node="1NRmRaKH2br" resolve="properties" />
                </node>
                <node concept="2OqwBi" id="1NRmRaKH2bI" role="37vLTx">
                  <node concept="2OqwBi" id="1NRmRaKH2bJ" role="2Oq$k0">
                    <node concept="2YIFZM" id="1NRmRaKH2bK" role="2Oq$k0">
                      <ref role="1Pybhc" to="msyo:~SNodeOperations" resolve="SNodeOperations" />
                      <ref role="37wK5l" to="msyo:~SNodeOperations.getProperties(org.jetbrains.mps.openapi.model.SNode):java.util.Map" resolve="getProperties" />
                      <node concept="37vLTw" id="1NRmRaKH2bL" role="37wK5m">
                        <ref role="3cqZAo" node="1NRmRaKH2bv" resolve="node" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1NRmRaKH2bM" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~Map.keySet():java.util.Set" resolve="keySet" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1NRmRaKH2bN" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Set.size():int" resolve="size" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1NRmRaKIhnN" role="1DdaDG">
            <ref role="3cqZAo" node="1NRmRaKI7mK" resolve="subNodes" />
          </node>
        </node>
        <node concept="3cpWs8" id="1NRmRaKH2bQ" role="3cqZAp">
          <node concept="3cpWsn" id="1NRmRaKH2bR" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="1NRmRaKH2bS" role="1tU5fm">
              <node concept="1LlUBW" id="1NRmRaKH2bT" role="_ZDj9">
                <node concept="17QB3L" id="1NRmRaKH2bU" role="1Lm7xW" />
                <node concept="10Oyi0" id="1NRmRaKH2bV" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2ShNRf" id="1NRmRaKH2bW" role="33vP2m">
              <node concept="Tc6Ow" id="1NRmRaKH2bX" role="2ShVmc">
                <node concept="1LlUBW" id="1NRmRaKH2bY" role="HW$YZ">
                  <node concept="17QB3L" id="1NRmRaKH2bZ" role="1Lm7xW" />
                  <node concept="10Oyi0" id="1NRmRaKH2c0" role="1Lm7xW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NRmRaKH2cd" role="3cqZAp">
          <node concept="2OqwBi" id="1NRmRaKH2ce" role="3clFbG">
            <node concept="37vLTw" id="1NRmRaKH2cf" role="2Oq$k0">
              <ref role="3cqZAo" node="1NRmRaKH2bR" resolve="result" />
            </node>
            <node concept="TSZUe" id="1NRmRaKH2cg" role="2OqNvi">
              <node concept="1Ls8ON" id="1NRmRaKH2ch" role="25WWJ7">
                <node concept="Xl_RD" id="1NRmRaKH2ci" role="1Lso8e">
                  <property role="Xl_RC" value="Nodes" />
                </node>
                <node concept="2OqwBi" id="1NRmRaKIoC_" role="1Lso8e">
                  <node concept="37vLTw" id="1NRmRaKInxy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1NRmRaKI7mK" resolve="subNodes" />
                  </node>
                  <node concept="34oBXx" id="1NRmRaKIw3f" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NRmRaKH2cl" role="3cqZAp">
          <node concept="2OqwBi" id="1NRmRaKH2cm" role="3clFbG">
            <node concept="37vLTw" id="1NRmRaKH2cn" role="2Oq$k0">
              <ref role="3cqZAo" node="1NRmRaKH2bR" resolve="result" />
            </node>
            <node concept="TSZUe" id="1NRmRaKH2co" role="2OqNvi">
              <node concept="1Ls8ON" id="1NRmRaKH2cp" role="25WWJ7">
                <node concept="Xl_RD" id="1NRmRaKH2cq" role="1Lso8e">
                  <property role="Xl_RC" value="References" />
                </node>
                <node concept="37vLTw" id="1NRmRaKH2cr" role="1Lso8e">
                  <ref role="3cqZAo" node="1NRmRaKH2bn" resolve="references" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NRmRaKH2cs" role="3cqZAp">
          <node concept="2OqwBi" id="1NRmRaKH2ct" role="3clFbG">
            <node concept="37vLTw" id="1NRmRaKH2cu" role="2Oq$k0">
              <ref role="3cqZAo" node="1NRmRaKH2bR" resolve="result" />
            </node>
            <node concept="TSZUe" id="1NRmRaKH2cv" role="2OqNvi">
              <node concept="1Ls8ON" id="1NRmRaKH2cw" role="25WWJ7">
                <node concept="Xl_RD" id="1NRmRaKH2cx" role="1Lso8e">
                  <property role="Xl_RC" value="Properties" />
                </node>
                <node concept="37vLTw" id="1NRmRaKH2cy" role="1Lso8e">
                  <ref role="3cqZAo" node="1NRmRaKH2br" resolve="properties" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1NRmRaKH2cz" role="3cqZAp" />
        <node concept="3cpWs6" id="1NRmRaKH2c$" role="3cqZAp">
          <node concept="37vLTw" id="1NRmRaKH2c_" role="3cqZAk">
            <ref role="3cqZAo" node="1NRmRaKH2bR" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="4x3U0fq5uwc" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getNodes" />
      <ref role="13i0hy" node="4x3U0fq41hN" resolve="getNodes" />
      <node concept="3Tm1VV" id="4x3U0fq5uwd" role="1B3o_S" />
      <node concept="A3Dl8" id="5LktTNF0sYF" role="3clF45">
        <node concept="3Tqbb2" id="5LktTNF0trO" role="A3Ik2" />
      </node>
      <node concept="3clFbS" id="4x3U0fq5uwg" role="3clF47">
        <node concept="3cpWs6" id="4x3U0fq5v3u" role="3cqZAp">
          <node concept="2OqwBi" id="4x3U0fq5yfM" role="3cqZAk">
            <node concept="2OqwBi" id="4x3U0fq5vcn" role="2Oq$k0">
              <node concept="13iPFW" id="4x3U0fq5v41" role="2Oq$k0" />
              <node concept="3TrEf2" id="4x3U0fq5x8o" role="2OqNvi">
                <ref role="3Tt5mk" to="caxt:1NRmRaKGTr6" />
              </node>
            </node>
            <node concept="2Rf3mk" id="4x3U0fq5zQv" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1El5OLrKuMY" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1El5OLrKuMX" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4x3U0fq41hK">
    <ref role="13h7C2" to="caxt:4x3U0fq41h1" resolve="INodeSetReference" />
    <node concept="13i0hz" id="4x3U0fq41hN" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getNodes" />
      <node concept="3Tm1VV" id="4x3U0fq41hO" role="1B3o_S" />
      <node concept="3clFbS" id="4x3U0fq41hQ" role="3clF47">
        <node concept="3clFbF" id="7Q$BpsALBxI" role="3cqZAp">
          <node concept="10Nm6u" id="7Q$BpsALBxH" role="3clFbG" />
        </node>
      </node>
      <node concept="A3Dl8" id="5LktTNEXKOt" role="3clF45">
        <node concept="3Tqbb2" id="5LktTNEXKSo" role="A3Ik2" />
      </node>
      <node concept="37vLTG" id="1El5OLrKn7f" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1El5OLrKn7e" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4x3U0fq41hL" role="13h7CW">
      <node concept="3clFbS" id="4x3U0fq41hM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="67MRmR$wII4">
    <ref role="13h7C2" to="caxt:67MRmR$vSn$" resolve="ShowGenPlan" />
    <node concept="13hLZK" id="67MRmR$wIKs" role="13h7CW">
      <node concept="3clFbS" id="67MRmR$wIKt" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="67MRmR$wIVH" role="13h7CS">
      <property role="TrG5h" value="doExecute" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="zyb2:2SpVAIqougW" resolve="doExecute" />
      <node concept="3Tm1VV" id="67MRmR$wIVI" role="1B3o_S" />
      <node concept="3clFbS" id="67MRmR$wIVP" role="3clF47">
        <node concept="3clFbJ" id="7Q$BpsALXHg" role="3cqZAp">
          <node concept="3clFbS" id="7Q$BpsALXHj" role="3clFbx">
            <node concept="3cpWs6" id="7Q$BpsAM47D" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7Q$BpsAM3Nu" role="3clFbw">
            <node concept="10Nm6u" id="7Q$BpsAM3ZQ" role="3uHU7w" />
            <node concept="2OqwBi" id="7Q$BpsAM0vZ" role="3uHU7B">
              <node concept="2OqwBi" id="7Q$BpsALY6g" role="2Oq$k0">
                <node concept="13iPFW" id="7Q$BpsALXPX" role="2Oq$k0" />
                <node concept="3TrEf2" id="7Q$BpsALZih" role="2OqNvi">
                  <ref role="3Tt5mk" to="caxt:67MRmR$vSpU" />
                </node>
              </node>
              <node concept="2qgKlT" id="7Q$BpsAM2No" role="2OqNvi">
                <ref role="37wK5l" node="67MRmR$z8Z2" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="67MRmR$ykDA" role="3cqZAp">
          <node concept="2YIFZM" id="67MRmR$ykDL" role="3clFbG">
            <ref role="37wK5l" to="2r67:67MRmR$wJlq" resolve="showMappingPartitioning" />
            <ref role="1Pybhc" to="2r67:67MRmR$wJln" resolve="PartitioningHelper" />
            <node concept="2YIFZM" id="67MRmR$zRb0" role="37wK5m">
              <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
              <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="2OqwBi" id="67MRmR$ykJz" role="37wK5m">
                <node concept="37vLTw" id="67MRmR$ykE6" role="2Oq$k0">
                  <ref role="3cqZAo" node="67MRmR$wIVQ" resolve="context" />
                </node>
                <node concept="liA8E" id="67MRmR$ylvn" role="2OqNvi">
                  <ref role="37wK5l" to="qgo0:3MPHfSuPT3Y" resolve="getProject" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="67MRmR$zN7x" role="37wK5m">
              <node concept="2ShNRf" id="67MRmR$yzYt" role="2Oq$k0">
                <node concept="2HTt$P" id="67MRmR$y$z$" role="2ShVmc">
                  <node concept="H_c77" id="67MRmR$y_69" role="2HTBi0" />
                  <node concept="2OqwBi" id="67MRmR$zGFa" role="2HTEbv">
                    <node concept="2OqwBi" id="67MRmR$yA49" role="2Oq$k0">
                      <node concept="13iPFW" id="67MRmR$y_x4" role="2Oq$k0" />
                      <node concept="3TrEf2" id="67MRmR$yCAa" role="2OqNvi">
                        <ref role="3Tt5mk" to="caxt:67MRmR$vSpU" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="67MRmR$zMgf" role="2OqNvi">
                      <ref role="37wK5l" node="67MRmR$z8Z2" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="67MRmR$zPKJ" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="67MRmR$yDy8" role="37wK5m">
              <ref role="3cqZAo" node="67MRmR$wIVS" resolve="console" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="67MRmR$wIVQ" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="67MRmR$wIVR" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:jysm2GDsTL" resolve="ConsoleContext" />
        </node>
      </node>
      <node concept="37vLTG" id="67MRmR$wIVS" role="3clF46">
        <property role="TrG5h" value="console" />
        <node concept="3uibUv" id="67MRmR$wIVT" role="1tU5fm">
          <ref role="3uigEE" to="qgo0:5WpmwkrQPPk" resolve="ConsoleStream" />
        </node>
      </node>
      <node concept="3cqZAl" id="67MRmR$wIVU" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="67MRmR$z8YZ">
    <property role="3GE5qa" value="stat" />
    <ref role="13h7C2" to="caxt:6M9lfhD$0$C" resolve="ModelReference" />
    <node concept="13hLZK" id="67MRmR$z8Z0" role="13h7CW">
      <node concept="3clFbS" id="67MRmR$z8Z1" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="67MRmR$z8Z2" role="13h7CS">
      <property role="TrG5h" value="getModel" />
      <node concept="3Tm1VV" id="67MRmR$z8Z3" role="1B3o_S" />
      <node concept="H_c77" id="67MRmR$z932" role="3clF45" />
      <node concept="3clFbS" id="67MRmR$z8Z5" role="3clF47">
        <node concept="3cpWs6" id="67MRmR$za_k" role="3cqZAp">
          <node concept="2OqwBi" id="67MRmR$za_l" role="3cqZAk">
            <node concept="2YIFZM" id="67MRmR$za_m" role="2Oq$k0">
              <ref role="1Pybhc" to="cu2c:~SModelRepository" resolve="SModelRepository" />
              <ref role="37wK5l" to="cu2c:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="67MRmR$za_n" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SModelRepository.getModelDescriptor(java.lang.String):org.jetbrains.mps.openapi.model.SModel" resolve="getModelDescriptor" />
              <node concept="2OqwBi" id="67MRmR$za_o" role="37wK5m">
                <node concept="13iPFW" id="67MRmR$za_q" role="2Oq$k0" />
                <node concept="3TrcHB" id="67MRmR$za_s" role="2OqNvi">
                  <ref role="3TsBF5" to="tp25:v3WHCwUoyi" resolve="fqName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="3ob4OZ0k_Qo">
    <property role="3GE5qa" value="response" />
    <ref role="13h7C2" to="caxt:3ob4OZ0hBPN" resolve="ClickableGenerator" />
    <node concept="13hLZK" id="3ob4OZ0k_Qp" role="13h7CW">
      <node concept="3clFbS" id="3ob4OZ0k_Qq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="3ob4OZ0kJ_6" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="execute" />
      <ref role="13i0hy" to="zyb2:7oNS25df64x" resolve="execute" />
      <node concept="3clFbS" id="3ob4OZ0kJ_c" role="3clF47">
        <node concept="3cpWs8" id="3ob4OZ0llyA" role="3cqZAp">
          <node concept="3cpWsn" id="3ob4OZ0llyB" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3ob4OZ0llyC" role="1tU5fm">
              <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="3ob4OZ0l0oi" role="33vP2m">
              <node concept="2EnYce" id="3ob4OZ0mL2a" role="2Oq$k0">
                <node concept="2YIFZM" id="3ob4OZ0kXYL" role="2Oq$k0">
                  <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="pt5l:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                  <node concept="37vLTw" id="3ob4OZ0kXZ3" role="37wK5m">
                    <ref role="3cqZAo" node="3ob4OZ0kOYv" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="3ob4OZ0l0eF" role="2OqNvi">
                  <ref role="37wK5l" to="vsqj:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="3ob4OZ0l1h0" role="2OqNvi">
                <ref role="37wK5l" to="88zw:~SRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId):org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                <node concept="2YIFZM" id="3ob4OZ0lgQ2" role="37wK5m">
                  <ref role="1Pybhc" to="vsqj:~ModuleId" resolve="ModuleId" />
                  <ref role="37wK5l" to="vsqj:~ModuleId.fromString(java.lang.String):jetbrains.mps.project.ModuleId" resolve="fromString" />
                  <node concept="2OqwBi" id="3ob4OZ0lh58" role="37wK5m">
                    <node concept="13iPFW" id="3ob4OZ0lgSB" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3ob4OZ0ljf3" role="2OqNvi">
                      <ref role="3TsBF5" to="caxt:3ob4OZ0k_PZ" resolve="moduleId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3ob4OZ0pV$i" role="3cqZAp" />
        <node concept="3cpWs8" id="3GE7ucjMMtf" role="3cqZAp">
          <node concept="3cpWsn" id="3GE7ucjMMtg" role="3cpWs9">
            <property role="TrG5h" value="configurable" />
            <node concept="3uibUv" id="7x6FFKSLT3Z" role="1tU5fm">
              <ref role="3uigEE" to="9ww:~MPSPropertiesConfigurable" resolve="MPSPropertiesConfigurable" />
            </node>
            <node concept="2ShNRf" id="3GE7ucjMMtk" role="33vP2m">
              <node concept="1pGfFk" id="3GE7ucjMNJ9" role="2ShVmc">
                <ref role="37wK5l" to="9ww:~ModulePropertiesConfigurable.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.project.Project)" resolve="ModulePropertiesConfigurable" />
                <node concept="37vLTw" id="3ob4OZ0pXkR" role="37wK5m">
                  <ref role="3cqZAo" node="3ob4OZ0llyB" resolve="module" />
                </node>
                <node concept="2YIFZM" id="3ob4OZ0pXYB" role="37wK5m">
                  <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="pt5l:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                  <node concept="37vLTw" id="3ob4OZ0pXYC" role="37wK5m">
                    <ref role="3cqZAo" node="3ob4OZ0kOYv" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ob4OZ0q9he" role="3cqZAp">
          <node concept="3cpWsn" id="3ob4OZ0q9hh" role="3cpWs9">
            <property role="TrG5h" value="tabs" />
            <node concept="A3Dl8" id="3ob4OZ0q9hb" role="1tU5fm">
              <node concept="3uibUv" id="3ob4OZ0q9LZ" role="A3Ik2">
                <ref role="3uigEE" to="j4q1:~Tab" resolve="Tab" />
              </node>
            </node>
            <node concept="2ShNRf" id="3ob4OZ0q9ND" role="33vP2m">
              <node concept="kMnCb" id="3ob4OZ0qfWx" role="2ShVmc">
                <node concept="3uibUv" id="3ob4OZ0qg4O" role="kMuH3">
                  <ref role="3uigEE" to="j4q1:~Tab" resolve="Tab" />
                </node>
                <node concept="1bVj0M" id="3ob4OZ0qg5G" role="kMx8a">
                  <node concept="3clFbS" id="3ob4OZ0qg5H" role="1bW5cS">
                    <node concept="1Dw8fO" id="3ob4OZ0qgoA" role="3cqZAp">
                      <node concept="3clFbS" id="3ob4OZ0qgoB" role="2LFqv$">
                        <node concept="2n63Yl" id="3ob4OZ0qoPG" role="3cqZAp">
                          <node concept="2OqwBi" id="3ob4OZ0qq0e" role="2n6tg2">
                            <node concept="37vLTw" id="3ob4OZ0qpeq" role="2Oq$k0">
                              <ref role="3cqZAo" node="3GE7ucjMMtg" resolve="configurable" />
                            </node>
                            <node concept="liA8E" id="3ob4OZ0qseu" role="2OqNvi">
                              <ref role="37wK5l" to="9ww:~MPSPropertiesConfigurable.getTab(int):org.jetbrains.mps.openapi.ui.persistence.Tab" resolve="getTab" />
                              <node concept="37vLTw" id="3ob4OZ0raKB" role="37wK5m">
                                <ref role="3cqZAo" node="3ob4OZ0qgoC" resolve="i" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWsn" id="3ob4OZ0qgoC" role="1Duv9x">
                        <property role="TrG5h" value="i" />
                        <node concept="10Oyi0" id="3ob4OZ0qgw0" role="1tU5fm" />
                        <node concept="3cmrfG" id="3ob4OZ0qiZN" role="33vP2m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                      <node concept="3eOVzh" id="3ob4OZ0qn4D" role="1Dwp0S">
                        <node concept="37vLTw" id="3ob4OZ0qj3t" role="3uHU7B">
                          <ref role="3cqZAo" node="3ob4OZ0qgoC" resolve="i" />
                        </node>
                        <node concept="2OqwBi" id="3ob4OZ0qgVb" role="3uHU7w">
                          <node concept="37vLTw" id="3ob4OZ0qgI8" role="2Oq$k0">
                            <ref role="3cqZAo" node="3GE7ucjMMtg" resolve="configurable" />
                          </node>
                          <node concept="liA8E" id="3ob4OZ0qiOp" role="2OqNvi">
                            <ref role="37wK5l" to="9ww:~MPSPropertiesConfigurable.getTabsCount():int" resolve="getTabsCount" />
                          </node>
                        </node>
                      </node>
                      <node concept="3uNrnE" id="3ob4OZ0qojn" role="1Dwrff">
                        <node concept="37vLTw" id="3ob4OZ0qojp" role="2$L3a6">
                          <ref role="3cqZAo" node="3ob4OZ0qgoC" resolve="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ob4OZ0qv85" role="3cqZAp">
          <node concept="2OqwBi" id="3ob4OZ0qzJq" role="3clFbG">
            <node concept="2OqwBi" id="3ob4OZ0qwhv" role="2Oq$k0">
              <node concept="37vLTw" id="3ob4OZ0qv84" role="2Oq$k0">
                <ref role="3cqZAo" node="3ob4OZ0q9hh" resolve="tabs" />
              </node>
              <node concept="3zZkjj" id="3ob4OZ0qy7F" role="2OqNvi">
                <node concept="1bVj0M" id="3ob4OZ0qy7H" role="23t8la">
                  <node concept="3clFbS" id="3ob4OZ0qy7I" role="1bW5cS">
                    <node concept="3clFbF" id="3ob4OZ0qyfK" role="3cqZAp">
                      <node concept="2ZW3vV" id="3ob4OZ0qyXl" role="3clFbG">
                        <node concept="3uibUv" id="3ob4OZ0qz98" role="2ZW6by">
                          <ref role="3uigEE" to="9ww:~ModulePropertiesConfigurable$GeneratorAdvancesTab" resolve="ModulePropertiesConfigurable.GeneratorAdvancesTab" />
                        </node>
                        <node concept="37vLTw" id="3ob4OZ0qyfJ" role="2ZW6bz">
                          <ref role="3cqZAo" node="3ob4OZ0qy7J" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3ob4OZ0qy7J" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3ob4OZ0qy7K" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="3ob4OZ0qIcC" role="2OqNvi">
              <node concept="1bVj0M" id="3ob4OZ0qIcE" role="23t8la">
                <node concept="3clFbS" id="3ob4OZ0qIcF" role="1bW5cS">
                  <node concept="3clFbF" id="3ob4OZ0qIre" role="3cqZAp">
                    <node concept="2OqwBi" id="3ob4OZ0qKFL" role="3clFbG">
                      <node concept="37vLTw" id="3ob4OZ0qKsD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3GE7ucjMMtg" resolve="configurable" />
                      </node>
                      <node concept="liA8E" id="3ob4OZ0qMAU" role="2OqNvi">
                        <ref role="37wK5l" to="9ww:~MPSPropertiesConfigurable.selectTab(org.jetbrains.mps.openapi.ui.persistence.Tab):void" resolve="selectTab" />
                        <node concept="37vLTw" id="3ob4OZ0qMSP" role="37wK5m">
                          <ref role="3cqZAo" node="3ob4OZ0qIcG" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3ob4OZ0qIcG" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3ob4OZ0qIcH" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="78MpzK$YNLk" role="3cqZAp">
          <node concept="3cpWsn" id="78MpzK$YNLl" role="3cpWs9">
            <property role="TrG5h" value="configurableEditor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6arfrNO4rGB" role="1tU5fm">
              <ref role="3uigEE" to="3sib:~SingleConfigurableEditor" resolve="SingleConfigurableEditor" />
            </node>
            <node concept="2ShNRf" id="78MpzK$YNLp" role="33vP2m">
              <node concept="1pGfFk" id="78MpzK$YNSj" role="2ShVmc">
                <ref role="37wK5l" to="3sib:~SingleConfigurableEditor.&lt;init&gt;(com.intellij.openapi.project.Project,com.intellij.openapi.options.Configurable,java.lang.String)" resolve="SingleConfigurableEditor" />
                <node concept="2YIFZM" id="3GE7ucjMPwk" role="37wK5m">
                  <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <node concept="2YIFZM" id="3ob4OZ0pZoM" role="37wK5m">
                    <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                    <ref role="37wK5l" to="pt5l:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                    <node concept="37vLTw" id="3ob4OZ0pZoN" role="37wK5m">
                      <ref role="3cqZAo" node="3ob4OZ0kOYv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="18UX1JGbxCW" role="37wK5m">
                  <ref role="3cqZAo" node="3GE7ucjMMtg" resolve="configurable" />
                </node>
                <node concept="Xl_RD" id="5EjpQu246PJ" role="37wK5m">
                  <property role="Xl_RC" value="#MPSPropertiesConfigurable" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6th8f_8hCMu" role="3cqZAp">
          <node concept="2OqwBi" id="6th8f_8hCMv" role="3clFbG">
            <node concept="liA8E" id="6th8f_8hCMw" role="2OqNvi">
              <ref role="37wK5l" to="9ww:~MPSPropertiesConfigurable.setParentForCallBack(com.intellij.openapi.ui.DialogWrapper):void" resolve="setParentForCallBack" />
              <node concept="37vLTw" id="6th8f_8hCMx" role="37wK5m">
                <ref role="3cqZAo" node="78MpzK$YNLl" resolve="configurableEditor" />
              </node>
            </node>
            <node concept="37vLTw" id="6th8f_8hCMy" role="2Oq$k0">
              <ref role="3cqZAo" node="3GE7ucjMMtg" resolve="configurable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3GE7ucjMQu5" role="3cqZAp">
          <node concept="2YIFZM" id="3GE7ucjMQMh" role="3clFbG">
            <ref role="37wK5l" to="dbrf:~SwingUtilities.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
            <ref role="1Pybhc" to="dbrf:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="3GE7ucjMQMi" role="37wK5m">
              <node concept="YeOm9" id="3GE7ucjMR9m" role="2ShVmc">
                <node concept="1Y3b0j" id="3GE7ucjMR9n" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="e2lb:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3clFb_" id="3GE7ucjMR9p" role="jymVt">
                    <property role="IEkAT" value="false" />
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="run" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="3GE7ucjMR9q" role="1B3o_S" />
                    <node concept="3cqZAl" id="3GE7ucjMR9r" role="3clF45" />
                    <node concept="3clFbS" id="3GE7ucjMR9s" role="3clF47">
                      <node concept="3clFbF" id="3GE7ucjMR9t" role="3cqZAp">
                        <node concept="2OqwBi" id="3GE7ucjMR9N" role="3clFbG">
                          <node concept="liA8E" id="3GE7ucjMR9T" role="2OqNvi">
                            <ref role="37wK5l" to="810:~DialogWrapper.show():void" resolve="show" />
                          </node>
                          <node concept="37vLTw" id="3GE7ucjMR9u" role="2Oq$k0">
                            <ref role="3cqZAo" node="78MpzK$YNLl" resolve="configurableEditor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_SfU3" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="3GE7ucjMR9o" role="1B3o_S" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ob4OZ0kOYv" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3ob4OZ0kPcU" role="1tU5fm">
          <ref role="3uigEE" to="b2mh:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3cqZAl" id="3ob4OZ0kOYx" role="3clF45" />
      <node concept="3Tm1VV" id="3ob4OZ0kOYy" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="3ob4OZ0kOXZ" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="canExecute" />
      <ref role="13i0hy" to="zyb2:2QdC0h7dh1h" resolve="canExecute" />
      <node concept="3Tm1VV" id="3ob4OZ0kOY0" role="1B3o_S" />
      <node concept="3clFbS" id="3ob4OZ0kOY3" role="3clF47">
        <node concept="3clFbF" id="3ob4OZ0m$aL" role="3cqZAp">
          <node concept="2OqwBi" id="3ob4OZ0mBRa" role="3clFbG">
            <node concept="2OqwBi" id="3ob4OZ0m$jd" role="2Oq$k0">
              <node concept="13iPFW" id="3ob4OZ0m$aI" role="2Oq$k0" />
              <node concept="3TrcHB" id="3ob4OZ0mAqq" role="2OqNvi">
                <ref role="3TsBF5" to="caxt:3ob4OZ0k_PZ" resolve="moduleId" />
              </node>
            </node>
            <node concept="17RvpY" id="3ob4OZ0mJYT" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3ob4OZ0kOY4" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o$m">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouH" resolve="CallActionExpression" />
    <node concept="13i0hz" id="4PRmqZe_o$n" role="13h7CS">
      <property role="TrG5h" value="legalAsStatement" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="4PRmqZe_o$o" role="3clF47">
        <node concept="3clFbF" id="4PRmqZe_o$p" role="3cqZAp">
          <node concept="3clFbT" id="4PRmqZe_o$q" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4PRmqZe_o$r" role="3clF45" />
      <node concept="3Tm1VV" id="4PRmqZe_o$s" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4PRmqZe_o$t" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o$u" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o$v">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouK" resolve="ModelProperties" />
    <node concept="13i0hz" id="4PRmqZe_o$w" role="13h7CS">
      <property role="TrG5h" value="legalAsStatement" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="4PRmqZe_o$x" role="3clF47">
        <node concept="3clFbF" id="4PRmqZe_o$y" role="3cqZAp">
          <node concept="3clFbT" id="4PRmqZe_o$z" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4PRmqZe_o$$" role="3clF45" />
      <node concept="3Tm1VV" id="4PRmqZe_o$_" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4PRmqZe_o$A" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o$B" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o$C">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouF" resolve="ActionCallParameter" />
    <node concept="13i0hz" id="4PRmqZe_o$D" role="13h7CS">
      <property role="TrG5h" value="getParameterDeclaration" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="4PRmqZe_o$E" role="1B3o_S" />
      <node concept="3Tqbb2" id="4PRmqZe_o$F" role="3clF45">
        <ref role="ehGHo" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
      </node>
      <node concept="3clFbS" id="4PRmqZe_o$G" role="3clF47" />
    </node>
    <node concept="13hLZK" id="4PRmqZe_o$H" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o$I" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o$J">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouB" resolve="ActionCallDeclaredParameter" />
    <node concept="13hLZK" id="4PRmqZe_o$K" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o$L" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4PRmqZe_o$M" role="13h7CS">
      <property role="TrG5h" value="getParameterDeclaration" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="4PRmqZe_o$D" resolve="getParameterDeclaration" />
      <node concept="3Tm1VV" id="4PRmqZe_o$N" role="1B3o_S" />
      <node concept="3clFbS" id="4PRmqZe_o$O" role="3clF47">
        <node concept="3cpWs6" id="4PRmqZe_o$P" role="3cqZAp">
          <node concept="2OqwBi" id="4PRmqZe_o$Q" role="3cqZAk">
            <node concept="2OqwBi" id="4PRmqZe_o$R" role="2Oq$k0">
              <node concept="13iPFW" id="4PRmqZe_o$S" role="2Oq$k0" />
              <node concept="3TrEf2" id="4PRmqZe_o$T" role="2OqNvi">
                <ref role="3Tt5mk" to="caxt:4PRmqZe_ouC" />
              </node>
            </node>
            <node concept="2qgKlT" id="4PRmqZe_o$U" role="2OqNvi">
              <ref role="37wK5l" to="tp4s:112RIkgil0h" resolve="getFieldDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4PRmqZe_o$V" role="3clF45">
        <ref role="ehGHo" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o$W">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouD" resolve="ActionCallGlobalParameter" />
    <node concept="13hLZK" id="4PRmqZe_o$X" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o$Y" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4PRmqZe_o$Z" role="13h7CS">
      <property role="TrG5h" value="getParameterName" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" node="4PRmqZe_o$D" resolve="getParameterDeclaration" />
      <node concept="3Tm1VV" id="4PRmqZe_o_0" role="1B3o_S" />
      <node concept="3clFbS" id="4PRmqZe_o_1" role="3clF47">
        <node concept="3cpWs6" id="4PRmqZe_o_2" role="3cqZAp">
          <node concept="2OqwBi" id="4PRmqZe_o_3" role="3cqZAk">
            <node concept="13iPFW" id="4PRmqZe_o_4" role="2Oq$k0" />
            <node concept="3TrEf2" id="4PRmqZe_o_5" role="2OqNvi">
              <ref role="3Tt5mk" to="caxt:4PRmqZe_ouE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="4PRmqZe_o_6" role="3clF45">
        <ref role="ehGHo" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZe_o_7">
    <property role="3GE5qa" value="expression.callAction" />
    <ref role="13h7C2" to="caxt:4PRmqZe_ouN" resolve="ModuleProperties" />
    <node concept="13i0hz" id="4PRmqZe_o_8" role="13h7CS">
      <property role="TrG5h" value="legalAsStatement" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="tpek:1653mnvAgqK" resolve="legalAsStatement" />
      <node concept="3clFbS" id="4PRmqZe_o_9" role="3clF47">
        <node concept="3clFbF" id="4PRmqZe_o_a" role="3cqZAp">
          <node concept="3clFbT" id="4PRmqZe_o_b" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="4PRmqZe_o_c" role="3clF45" />
      <node concept="3Tm1VV" id="4PRmqZe_o_d" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="4PRmqZe_o_e" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZe_o_f" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4PRmqZeJYXf">
    <property role="3GE5qa" value="make" />
    <ref role="13h7C2" to="caxt:4PRmqZeJYWz" resolve="Make" />
    <node concept="13hLZK" id="4PRmqZeJYXm" role="13h7CW">
      <node concept="3clFbS" id="4PRmqZeJYXn" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4PRmqZeJYXo" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="fq2o:3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="4PRmqZeJYXp" role="1B3o_S" />
      <node concept="3clFbS" id="4PRmqZeJYXq" role="3clF47">
        <node concept="3cpWs6" id="4c815Y1nuV3" role="3cqZAp">
          <node concept="2ShNRf" id="4c815Y1nQpK" role="3cqZAk">
            <node concept="2HTt$P" id="4c815Y1nU4_" role="2ShVmc">
              <node concept="3THzug" id="4c815Y1nU8S" role="2HTBi0">
                <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
              </node>
              <node concept="3TUQnm" id="4c815Y1nUc$" role="2HTEbv">
                <ref role="3TV0OU" to="caxt:wAUnMydU6L" resolve="WithDependencies" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="4PRmqZeJYXw" role="3clF45">
        <node concept="3THzug" id="4PRmqZeJYXx" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="yhQm9_Wh7o" role="13h7CS">
      <property role="TrG5h" value="getHelpPage" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:64VftqEen2L" resolve="getHelpPage" />
      <node concept="3clFbS" id="yhQm9_WjKE" role="3clF47">
        <node concept="3clFbF" id="yhQm9_WzpE" role="3cqZAp">
          <node concept="Xl_RD" id="yhQm9_WzpD" role="3clFbG">
            <property role="Xl_RC" value="Makes the models specified as the argument.\nAccepts argument of types: model, SModule, sequence&lt;model&gt;, sequence&lt;SModule&gt;.\nIf no arguments is provided, make is invoked on the whole project.\nAffects only the models that need generation (marked by MPS as `generation required`).\nWith the option &lt;withDependencies&gt; set, the models specified in the argument are generated as well as their dependencies." />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="yhQm9_WzmC" role="3clF45" />
      <node concept="3Tm1VV" id="yhQm9_WzmD" role="1B3o_S" />
    </node>
  </node>
  <node concept="13h7C7" id="2tFdLTOYb1I">
    <property role="3GE5qa" value="make" />
    <ref role="13h7C2" to="caxt:2tFdLTOY8k9" resolve="Clean" />
    <node concept="13hLZK" id="2tFdLTOYb46" role="13h7CW">
      <node concept="3clFbS" id="2tFdLTOYb47" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2tFdLTRKadH">
    <property role="3GE5qa" value="make" />
    <ref role="13h7C2" to="caxt:2tFdLTRKaaq" resolve="AbsractMake" />
    <node concept="13i0hz" id="2tFdLTRKato" role="13h7CS">
      <property role="2Ki8OM" value="true" />
      <property role="TrG5h" value="getSupportedParameters" />
      <property role="13i0it" value="false" />
      <property role="13i0iv" value="false" />
      <ref role="13i0hy" to="fq2o:3J6h25QXCDW" resolve="getSupportedParameters" />
      <node concept="3Tm1VV" id="2tFdLTRKatp" role="1B3o_S" />
      <node concept="3clFbS" id="2tFdLTRKatq" role="3clF47">
        <node concept="3clFbF" id="2tFdLTRKatr" role="3cqZAp">
          <node concept="10Nm6u" id="2tFdLTRKats" role="3clFbG" />
        </node>
      </node>
      <node concept="A3Dl8" id="2tFdLTRKatt" role="3clF45">
        <node concept="3THzug" id="2tFdLTRKatu" role="A3Ik2">
          <ref role="3qa414" to="3xdn:3J6h25Q2URP" resolve="QueryParameter" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2tFdLTRKadI" role="13h7CW">
      <node concept="3clFbS" id="2tFdLTRKadJ" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2tFdLTRKcTJ">
    <property role="3GE5qa" value="make" />
    <ref role="13h7C2" to="caxt:2tFdLTRKa4r" resolve="RemoveGenSources" />
    <node concept="13hLZK" id="2tFdLTRKcTK" role="13h7CW">
      <node concept="3clFbS" id="2tFdLTRKcTL" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2tFdLTRKcTM" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getShortHelp" />
      <property role="2Ki8OM" value="true" />
      <ref role="13i0hy" to="zyb2:qgIopNa9Hb" resolve="getShortHelp" />
      <node concept="3Tm1VV" id="2tFdLTRKcTN" role="1B3o_S" />
      <node concept="3clFbS" id="2tFdLTRKcTQ" role="3clF47">
        <node concept="3clFbF" id="2tFdLTRKcWU" role="3cqZAp">
          <node concept="Xl_RD" id="2tFdLTRKcWT" role="3clFbG">
            <property role="Xl_RC" value="delete the source_gen and source_gen.caches directories" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="2tFdLTRKcTR" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="59iQg8rz24x">
    <ref role="13h7C2" to="caxt:59iQg8ryOmC" resolve="OfAspectOperation" />
    <node concept="13hLZK" id="59iQg8rz24y" role="13h7CW">
      <node concept="3clFbS" id="59iQg8rz24z" role="2VODD2" />
    </node>
  </node>
</model>

