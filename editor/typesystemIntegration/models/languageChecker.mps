<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:74808b88-3d1c-4dc8-8642-164154f3f3a7(typesystemIntegration.languageChecker)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="-1" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="wsw7" ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="qstq" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.typesystem.checking(MPS.Editor/jetbrains.mps.typesystem.checking@java_stub)" />
    <import index="l62w" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.checking(MPS.Editor/jetbrains.mps.nodeEditor.checking@java_stub)" />
    <import index="9a8" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" />
    <import index="nax5" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.errors(MPS.Core/jetbrains.mps.errors@java_stub)" />
    <import index="ua2a" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.typesystem.inference(MPS.Core/jetbrains.mps.typesystem.inference@java_stub)" />
    <import index="cpzd" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.inspector(MPS.Editor/jetbrains.mps.nodeEditor.inspector@java_stub)" />
    <import index="87kw" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.event(MPS.Core/jetbrains.mps.smodel.event@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(MPS.Core/jetbrains.mps.util@java_stub)" />
    <import index="5ijk" ref="r:f77c2bf1-6f5c-4cb2-b314-a84dd502542e(jetbrains.mps.resolve)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="srng" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="y5px" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.generator(MPS.Core/jetbrains.mps.generator@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="9fym" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.application.impl(MPS.IDEA/com.intellij.openapi.application.impl@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="nu8v" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.cells(MPS.Editor/jetbrains.mps.openapi.editor.cells@java_stub)" />
    <import index="jsgz" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.cells(MPS.Editor/jetbrains.mps.nodeEditor.cells@java_stub)" />
    <import index="51te" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.model(MPS.Core/jetbrains.mps.extapi.model@java_stub)" />
    <import index="tpib" ref="r:00000000-0000-4000-0000-011c8959057f(jetbrains.mps.baseLanguage.logging.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" implicit="true" />
    <import index="cx9y" ref="r:309aeee7-bee8-445c-b31d-35928d1da75f(jetbrains.mps.baseLanguage.tuples.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="6329021646629175143" name="jetbrains.mps.baseLanguage.structure.StatementCommentPart" flags="nn" index="3SKWN0">
        <child id="6329021646629175144" name="commentedStatement" index="3SKWNf" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171310072040" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRootOperation" flags="nn" index="2Rxl7S" />
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5253134957341870583" name="jetbrains.mps.lang.smodel.structure.PropertyNameRefExpression" flags="nn" index="pqAIu">
        <reference id="5253134957341870585" name="propertyDeclaration" index="pqAIg" />
        <reference id="5253134957341870584" name="conceptDeclaration" index="pqAIh" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6qi2OtU3ufq">
    <property role="TrG5h" value="LanguageEditorChecker" />
    <node concept="312cEg" id="6qi2OtU3ufr" role="jymVt">
      <property role="TrG5h" value="myMessagesChanged" />
      <node concept="3Tm6S6" id="6qi2OtU3ufs" role="1B3o_S" />
      <node concept="10P_77" id="6qi2OtU3uft" role="1tU5fm" />
      <node concept="3clFbT" id="6qi2OtU3ufu" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="3g$f7gtzd5R" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myForceRunQuickFixes" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3g$f7gtz7Mr" role="1B3o_S" />
      <node concept="10P_77" id="3g$f7gtzd5P" role="1tU5fm" />
      <node concept="3clFbT" id="3g$f7gtzitz" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ufv" role="jymVt">
      <property role="TrG5h" value="myRules" />
      <node concept="3Tm6S6" id="6qi2OtU3ufw" role="1B3o_S" />
      <node concept="2hMVRd" id="6qi2OtU3ufx" role="1tU5fm">
        <node concept="3uibUv" id="6qi2OtU3ufy" role="2hN53Y">
          <ref role="3uigEE" to="wsw7:6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
        </node>
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ufz" role="33vP2m">
        <node concept="2i4dXS" id="6qi2OtU3uf$" role="2ShVmc">
          <node concept="3uibUv" id="6qi2OtU3uf_" role="HW$YZ">
            <ref role="3uigEE" to="wsw7:6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6se4BTTMktS" role="jymVt" />
    <node concept="312cEg" id="6se4BTTNiSg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myEditorComponentToErrorMap" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6se4BTTMDTB" role="1B3o_S" />
      <node concept="3rvAFt" id="6se4BTTN1dr" role="1tU5fm">
        <node concept="3uibUv" id="6se4BTTPay_" role="3rvQeY">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="3uibUv" id="6se4BTTNiS0" role="3rvSg0">
          <ref role="3uigEE" to="wsw7:6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
        </node>
      </node>
      <node concept="2ShNRf" id="6se4BTTNqp7" role="33vP2m">
        <node concept="3rGOSV" id="6se4BTTNpcC" role="2ShVmc">
          <node concept="3uibUv" id="6se4BTTPaTF" role="3rHrn6">
            <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="3uibUv" id="6se4BTTNpcE" role="3rHtpV">
            <ref role="3uigEE" to="wsw7:6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6se4BTTNDIG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModelToEditorComponentsMap" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6se4BTTNwK5" role="1B3o_S" />
      <node concept="3rvAFt" id="6se4BTTNDAs" role="1tU5fm">
        <node concept="3uibUv" id="6se4BTTNDFy" role="3rvQeY">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
        <node concept="2hMVRd" id="6se4BTTNDIu" role="3rvSg0">
          <node concept="3uibUv" id="6se4BTTPb_3" role="2hN53Y">
            <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6se4BTTNMei" role="33vP2m">
        <node concept="3rGOSV" id="6se4BTTNL1y" role="2ShVmc">
          <node concept="3uibUv" id="6se4BTTNL1z" role="3rHrn6">
            <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
          </node>
          <node concept="2hMVRd" id="6se4BTTNL1$" role="3rHtpV">
            <node concept="3uibUv" id="6se4BTTPcN3" role="2hN53Y">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6se4BTTMyxy" role="jymVt" />
    <node concept="312cEg" id="6qi2OtU3ufQ" role="jymVt">
      <property role="TrG5h" value="myDisposeListener" />
      <node concept="3Tm6S6" id="6qi2OtU3ufR" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3ufS" role="1tU5fm">
        <ref role="3uigEE" to="9a8:~EditorComponent$EditorDisposeListener" resolve="EditorComponent.EditorDisposeListener" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ufT" role="33vP2m">
        <node concept="YeOm9" id="6qi2OtU3ufU" role="2ShVmc">
          <node concept="1Y3b0j" id="6qi2OtU3ufV" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="9a8:~EditorComponent$EditorDisposeListener" resolve="EditorComponent.EditorDisposeListener" />
            <node concept="3Tm1VV" id="6qi2OtU3ufW" role="1B3o_S" />
            <node concept="3clFb_" id="6qi2OtU3ufX" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="editorWillBeDisposed" />
              <node concept="3Tm1VV" id="6qi2OtU3ufY" role="1B3o_S" />
              <node concept="3cqZAl" id="6qi2OtU3ufZ" role="3clF45" />
              <node concept="37vLTG" id="6qi2OtU3ug0" role="3clF46">
                <property role="TrG5h" value="editorComponent" />
                <node concept="3uibUv" id="6qi2OtU3ug1" role="1tU5fm">
                  <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                </node>
              </node>
              <node concept="3clFbS" id="6qi2OtU3ug2" role="3clF47">
                <node concept="3clFbF" id="6se4BTTOzV6" role="3cqZAp">
                  <node concept="2OqwBi" id="6se4BTTO_1G" role="3clFbG">
                    <node concept="2OqwBi" id="6se4BTTO0Ms" role="2Oq$k0">
                      <node concept="37vLTw" id="6se4BTTNZcv" role="2Oq$k0">
                        <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
                      </node>
                      <node concept="kI3uX" id="6se4BTTO3nw" role="2OqNvi">
                        <node concept="37vLTw" id="6se4BTTO3r$" role="kIiFs">
                          <ref role="3cqZAo" node="6qi2OtU3ug0" resolve="editorComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6se4BTTO_i8" role="2OqNvi">
                      <ref role="37wK5l" to="wsw7:6qi2OtU3u1H" resolve="dispose" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTPpBm" role="3cqZAp">
                  <node concept="2OqwBi" id="6se4BTTPqse" role="3clFbG">
                    <node concept="37vLTw" id="6se4BTTPpBl" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3ug0" resolve="editorComponent" />
                    </node>
                    <node concept="liA8E" id="6se4BTTPsGG" role="2OqNvi">
                      <ref role="37wK5l" to="9a8:~EditorComponent.removeDisposeListener(jetbrains.mps.nodeEditor.EditorComponent$EditorDisposeListener):void" resolve="removeDisposeListener" />
                      <node concept="37vLTw" id="6se4BTTPsHS" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3ufQ" resolve="myDisposeListener" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6se4BTTPt6m" role="3cqZAp" />
                <node concept="1DcWWT" id="6se4BTTO895" role="3cqZAp">
                  <node concept="3clFbS" id="6se4BTTO898" role="2LFqv$">
                    <node concept="3cpWs8" id="6se4BTTOhkl" role="3cqZAp">
                      <node concept="3cpWsn" id="6se4BTTOhkm" role="3cpWs9">
                        <property role="TrG5h" value="editorComponents" />
                        <node concept="2hMVRd" id="6se4BTTOhkf" role="1tU5fm">
                          <node concept="3uibUv" id="6se4BTTPjvA" role="2hN53Y">
                            <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                          </node>
                        </node>
                        <node concept="3EllGN" id="6se4BTTOhkn" role="33vP2m">
                          <node concept="37vLTw" id="6se4BTTOhko" role="3ElVtu">
                            <ref role="3cqZAo" node="6se4BTTO89b" resolve="model" />
                          </node>
                          <node concept="37vLTw" id="6se4BTTOhkp" role="3ElQJh">
                            <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6se4BTTOikR" role="3cqZAp">
                      <node concept="3clFbS" id="6se4BTTOikU" role="3clFbx">
                        <node concept="3clFbJ" id="6se4BTTOtI0" role="3cqZAp">
                          <node concept="3clFbS" id="6se4BTTOtI3" role="3clFbx">
                            <node concept="3clFbF" id="6se4BTTOCCV" role="3cqZAp">
                              <node concept="2OqwBi" id="6se4BTTODjT" role="3clFbG">
                                <node concept="37vLTw" id="6se4BTTOCCU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                                </node>
                                <node concept="kI3uX" id="6se4BTTOF5Q" role="2OqNvi">
                                  <node concept="37vLTw" id="6se4BTTOFb4" role="kIiFs">
                                    <ref role="3cqZAo" node="6se4BTTO89b" resolve="model" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6se4BTTOB8z" role="3cqZAp">
                              <node concept="1rXfSq" id="6se4BTTOB8y" role="3clFbG">
                                <ref role="37wK5l" node="6qi2OtU3uhX" resolve="removeModelListener" />
                                <node concept="37vLTw" id="6se4BTTOBjB" role="37wK5m">
                                  <ref role="3cqZAo" node="6se4BTTO89b" resolve="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6se4BTTOuin" role="3clFbw">
                            <node concept="37vLTw" id="6se4BTTOtIO" role="2Oq$k0">
                              <ref role="3cqZAo" node="6se4BTTOhkm" resolve="editorComponents" />
                            </node>
                            <node concept="1v1jN8" id="6se4BTTOuZX" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3zACq4" id="6se4BTTOtHC" role="3cqZAp" />
                      </node>
                      <node concept="3y3z36" id="6se4BTTOtGa" role="3clFbw">
                        <node concept="10Nm6u" id="6se4BTTOtGN" role="3uHU7w" />
                        <node concept="2OqwBi" id="6se4BTTOrXm" role="3uHU7B">
                          <node concept="37vLTw" id="6se4BTTOrXn" role="2Oq$k0">
                            <ref role="3cqZAo" node="6se4BTTOhkm" resolve="editorComponents" />
                          </node>
                          <node concept="3dhRuq" id="6se4BTTOrXo" role="2OqNvi">
                            <node concept="37vLTw" id="6se4BTTOrXp" role="25WWJ7">
                              <ref role="3cqZAo" node="6qi2OtU3ug0" resolve="editorComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6se4BTTO89b" role="1Duv9x">
                    <property role="TrG5h" value="model" />
                    <node concept="3uibUv" id="6se4BTTOfIc" role="1tU5fm">
                      <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6se4BTTOawW" role="1DdaDG">
                    <node concept="37vLTw" id="6se4BTTO9Yr" role="2Oq$k0">
                      <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                    </node>
                    <node concept="3lbrtF" id="6se4BTTOfvn" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3tYsUK_t6IC" role="2AJF6D">
                <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6se4BTTOLYJ" role="jymVt" />
    <node concept="312cEg" id="6qi2OtU3upc" role="jymVt">
      <property role="TrG5h" value="myRepositoryListener" />
      <node concept="3Tm6S6" id="6qi2OtU3upd" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3upe" role="1tU5fm">
        <ref role="3uigEE" to="cu2c:~SModelRepositoryAdapter" resolve="SModelRepositoryAdapter" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3upf" role="33vP2m">
        <node concept="YeOm9" id="6qi2OtU3upg" role="2ShVmc">
          <node concept="1Y3b0j" id="6qi2OtU3uph" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="cu2c:~SModelRepositoryAdapter.&lt;init&gt;()" resolve="SModelRepositoryAdapter" />
            <ref role="1Y3XeK" to="cu2c:~SModelRepositoryAdapter" resolve="SModelRepositoryAdapter" />
            <node concept="3Tm1VV" id="6qi2OtU3upi" role="1B3o_S" />
            <node concept="3clFb_" id="6qi2OtU3upj" role="jymVt">
              <property role="TrG5h" value="beforeModelRemoved" />
              <node concept="3Tm1VV" id="6qi2OtU3upk" role="1B3o_S" />
              <node concept="3cqZAl" id="6qi2OtU3upl" role="3clF45" />
              <node concept="37vLTG" id="6qi2OtU3upm" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="6qi2OtU3upn" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3clFbS" id="6qi2OtU3upo" role="3clF47">
                <node concept="3clFbJ" id="5ns3HHC3HTP" role="3cqZAp">
                  <node concept="3clFbS" id="5ns3HHC3HTS" role="3clFbx">
                    <node concept="3cpWs6" id="5ns3HHC3NqS" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="5ns3HHC3N8U" role="3clFbw">
                    <node concept="2OqwBi" id="5ns3HHC3N8W" role="3fr31v">
                      <node concept="37vLTw" id="5ns3HHC3N8X" role="2Oq$k0">
                        <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                      </node>
                      <node concept="2Nt0df" id="5ns3HHC3N8Y" role="2OqNvi">
                        <node concept="37vLTw" id="5ns3HHC3N8Z" role="38cxEo">
                          <ref role="3cqZAo" node="6qi2OtU3upm" resolve="model" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="6se4BTTOU5b" role="3cqZAp">
                  <node concept="3clFbS" id="6se4BTTOU5e" role="2LFqv$">
                    <node concept="3clFbF" id="6se4BTTP1Ei" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTTP3lm" role="3clFbG">
                        <node concept="2OqwBi" id="6se4BTTP2tZ" role="2Oq$k0">
                          <node concept="37vLTw" id="6se4BTTP1Eh" role="2Oq$k0">
                            <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
                          </node>
                          <node concept="kI3uX" id="6se4BTTP37L" role="2OqNvi">
                            <node concept="37vLTw" id="6se4BTTP3gx" role="kIiFs">
                              <ref role="3cqZAo" node="6se4BTTOU5h" resolve="editorComponent" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6se4BTTP3D0" role="2OqNvi">
                          <ref role="37wK5l" to="wsw7:6qi2OtU3u1H" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6se4BTTP4Yg" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTTP52U" role="3clFbG">
                        <node concept="37vLTw" id="6se4BTTP4Yf" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTTOU5h" resolve="editorComponent" />
                        </node>
                        <node concept="liA8E" id="6se4BTTPmV3" role="2OqNvi">
                          <ref role="37wK5l" to="9a8:~EditorComponent.removeDisposeListener(jetbrains.mps.nodeEditor.EditorComponent$EditorDisposeListener):void" resolve="removeDisposeListener" />
                          <node concept="37vLTw" id="6se4BTTPmWe" role="37wK5m">
                            <ref role="3cqZAo" node="6qi2OtU3ufQ" resolve="myDisposeListener" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6se4BTTOU5h" role="1Duv9x">
                    <property role="TrG5h" value="editorComponent" />
                    <node concept="3uibUv" id="6se4BTTPk5B" role="1tU5fm">
                      <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                    </node>
                  </node>
                  <node concept="3EllGN" id="6se4BTTP0zl" role="1DdaDG">
                    <node concept="37vLTw" id="6se4BTTP0SK" role="3ElVtu">
                      <ref role="3cqZAo" node="6qi2OtU3upm" resolve="model" />
                    </node>
                    <node concept="37vLTw" id="6se4BTTOTLI" role="3ElQJh">
                      <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTQuDL" role="3cqZAp">
                  <node concept="2OqwBi" id="6se4BTTQuDM" role="3clFbG">
                    <node concept="37vLTw" id="6se4BTTQuDN" role="2Oq$k0">
                      <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                    </node>
                    <node concept="kI3uX" id="6se4BTTQuDO" role="2OqNvi">
                      <node concept="37vLTw" id="6se4BTTQuDP" role="kIiFs">
                        <ref role="3cqZAo" node="6qi2OtU3upm" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTOYMK" role="3cqZAp">
                  <node concept="1rXfSq" id="6se4BTTOYMJ" role="3clFbG">
                    <ref role="37wK5l" node="6qi2OtU3uhX" resolve="removeModelListener" />
                    <node concept="37vLTw" id="6se4BTTOZp9" role="37wK5m">
                      <ref role="3cqZAo" node="6qi2OtU3upm" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3tYsUK_t3wb" role="2AJF6D">
                <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6se4BTTP$Ou" role="jymVt" />
    <node concept="312cEg" id="6qi2OtU3up_" role="jymVt">
      <property role="TrG5h" value="myModelListener" />
      <node concept="3Tm6S6" id="6qi2OtU3upA" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3upB" role="1tU5fm">
        <ref role="3uigEE" to="87kw:~SModelListener" resolve="SModelListener" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3upC" role="33vP2m">
        <node concept="YeOm9" id="6qi2OtU3upD" role="2ShVmc">
          <node concept="1Y3b0j" id="6qi2OtU3upE" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="cu2c:~SModelAdapter.&lt;init&gt;()" resolve="SModelAdapter" />
            <ref role="1Y3XeK" to="cu2c:~SModelAdapter" resolve="SModelAdapter" />
            <node concept="3Tm1VV" id="6qi2OtU3upF" role="1B3o_S" />
            <node concept="3clFb_" id="6qi2OtU3upG" role="jymVt">
              <property role="TrG5h" value="beforeModelDisposed" />
              <node concept="3Tm1VV" id="6qi2OtU3upH" role="1B3o_S" />
              <node concept="3cqZAl" id="6qi2OtU3upI" role="3clF45" />
              <node concept="37vLTG" id="6qi2OtU3upJ" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="6qi2OtU3upK" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3clFbS" id="6qi2OtU3upL" role="3clF47">
                <node concept="1DcWWT" id="6se4BTTPyOI" role="3cqZAp">
                  <node concept="3clFbS" id="6se4BTTPyOJ" role="2LFqv$">
                    <node concept="3clFbF" id="6se4BTTPyOK" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTTPyOL" role="3clFbG">
                        <node concept="2OqwBi" id="6se4BTTPyOM" role="2Oq$k0">
                          <node concept="37vLTw" id="6se4BTTPyON" role="2Oq$k0">
                            <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
                          </node>
                          <node concept="kI3uX" id="6se4BTTPyOO" role="2OqNvi">
                            <node concept="37vLTw" id="6se4BTTPyOP" role="kIiFs">
                              <ref role="3cqZAo" node="6se4BTTPyOW" resolve="editorComponent" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6se4BTTPyOQ" role="2OqNvi">
                          <ref role="37wK5l" to="wsw7:6qi2OtU3u1H" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6se4BTTPyOR" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTTPyOS" role="3clFbG">
                        <node concept="37vLTw" id="6se4BTTPyOT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTTPyOW" resolve="editorComponent" />
                        </node>
                        <node concept="liA8E" id="6se4BTTPyOU" role="2OqNvi">
                          <ref role="37wK5l" to="9a8:~EditorComponent.removeDisposeListener(jetbrains.mps.nodeEditor.EditorComponent$EditorDisposeListener):void" resolve="removeDisposeListener" />
                          <node concept="37vLTw" id="6se4BTTPyOV" role="37wK5m">
                            <ref role="3cqZAo" node="6qi2OtU3ufQ" resolve="myDisposeListener" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6se4BTTPyOW" role="1Duv9x">
                    <property role="TrG5h" value="editorComponent" />
                    <node concept="3uibUv" id="6se4BTTPyOX" role="1tU5fm">
                      <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                    </node>
                  </node>
                  <node concept="3EllGN" id="6se4BTTPyOY" role="1DdaDG">
                    <node concept="37vLTw" id="6se4BTTPyOZ" role="3ElVtu">
                      <ref role="3cqZAo" node="6qi2OtU3upJ" resolve="model" />
                    </node>
                    <node concept="37vLTw" id="6se4BTTPyP0" role="3ElQJh">
                      <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTQw9N" role="3cqZAp">
                  <node concept="2OqwBi" id="6se4BTTQw9O" role="3clFbG">
                    <node concept="37vLTw" id="6se4BTTQw9P" role="2Oq$k0">
                      <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                    </node>
                    <node concept="kI3uX" id="6se4BTTQw9Q" role="2OqNvi">
                      <node concept="37vLTw" id="6se4BTTQw9R" role="kIiFs">
                        <ref role="3cqZAo" node="6qi2OtU3upJ" resolve="model" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3tYsUK_t6BM" role="2AJF6D">
                <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2uxkWp9VVq8" role="jymVt" />
    <node concept="312cEg" id="2uxkWp9W5X3" role="jymVt">
      <property role="TrG5h" value="myScopeChecker" />
      <node concept="3Tm6S6" id="2uxkWp9W5X4" role="1B3o_S" />
      <node concept="3uibUv" id="2uxkWp9WbWE" role="1tU5fm">
        <ref role="3uigEE" node="2uxkWp9VnLc" resolve="RefScopeCheckerInEditor" />
      </node>
    </node>
    <node concept="3clFbW" id="6qi2OtU3ugs" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3ugt" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3ugu" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3ugv" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3ugw" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ugx" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeulaF" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ufv" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxz8" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxz9" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxza" role="2ShVmc">
                  <ref role="37wK5l" to="wsw7:6qi2OtU3uwS" resolve="ConstraintsChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ugA" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ugB" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuu3m" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ufv" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxzb" role="2OqNvi">
              <node concept="37vLTI" id="2uxkWp9Wfom" role="25WWJ7">
                <node concept="37vLTw" id="2uxkWp9WcXH" role="37vLTJ">
                  <ref role="3cqZAo" node="2uxkWp9W5X3" resolve="myScopeChecker" />
                </node>
                <node concept="2ShNRf" id="2uxkWp9WfA7" role="37vLTx">
                  <node concept="HV5vD" id="2uxkWp9WfA8" role="2ShVmc">
                    <ref role="HV5vE" node="2uxkWp9VnLc" resolve="RefScopeCheckerInEditor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ugG" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ugH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeumRE" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ufv" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxze" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxzf" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxzg" role="2ShVmc">
                  <ref role="37wK5l" to="wsw7:6qi2OtU3uwZ" resolve="CardinalitiesChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ugM" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ugN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuynm" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ufv" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxzh" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxzi" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxzj" role="2ShVmc">
                  <ref role="37wK5l" to="wsw7:6qi2OtU3tVc" resolve="TargetConceptChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6qi2OtU3ugS" role="3cqZAp" />
        <node concept="3clFbF" id="6qi2OtU3ugT" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ugU" role="3clFbG">
            <node concept="2YIFZM" id="6qi2OtU3ugV" role="2Oq$k0">
              <ref role="1Pybhc" to="cu2c:~SModelRepository" resolve="SModelRepository" />
              <ref role="37wK5l" to="cu2c:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6qi2OtU3ugW" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SModelRepository.addModelRepositoryListener(jetbrains.mps.smodel.SModelRepositoryListener):void" resolve="addModelRepositoryListener" />
              <node concept="2OqwBi" id="6qi2OtU3ugX" role="37wK5m">
                <node concept="Xjq3P" id="6qi2OtU3ugY" role="2Oq$k0" />
                <node concept="2OwXpG" id="6qi2OtU3ugZ" role="2OqNvi">
                  <ref role="2Oxat5" node="6qi2OtU3upc" resolve="myRepositoryListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uh0" role="jymVt">
      <property role="TrG5h" value="doDispose" />
      <node concept="3cqZAl" id="6qi2OtU3uh1" role="3clF45" />
      <node concept="3Tmbuc" id="3g$f7gtx_Ct" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uh3" role="3clF47">
        <node concept="3clFbF" id="6se4BTTQ1eN" role="3cqZAp">
          <node concept="2OqwBi" id="6se4BTTQ2VD" role="3clFbG">
            <node concept="2OqwBi" id="6se4BTTQ1eP" role="2Oq$k0">
              <node concept="37vLTw" id="6se4BTTQ1eQ" role="2Oq$k0">
                <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
              </node>
              <node concept="T8wYR" id="6se4BTTQ1eR" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="6se4BTTQ3w2" role="2OqNvi">
              <node concept="1bVj0M" id="6se4BTTQ3w4" role="23t8la">
                <node concept="3clFbS" id="6se4BTTQ3w5" role="1bW5cS">
                  <node concept="3clFbF" id="6se4BTTQ3A4" role="3cqZAp">
                    <node concept="2OqwBi" id="6se4BTTQ3DF" role="3clFbG">
                      <node concept="37vLTw" id="6se4BTTQ3A3" role="2Oq$k0">
                        <ref role="3cqZAo" node="6se4BTTQ3w6" resolve="it" />
                      </node>
                      <node concept="liA8E" id="6se4BTTQ3Vu" role="2OqNvi">
                        <ref role="37wK5l" to="wsw7:6qi2OtU3u1H" resolve="dispose" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6se4BTTQ3w6" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6se4BTTQ3w7" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTTQ60G" role="3cqZAp">
          <node concept="2OqwBi" id="6se4BTTQ9ri" role="3clFbG">
            <node concept="2OqwBi" id="6se4BTTQ7aR" role="2Oq$k0">
              <node concept="37vLTw" id="6se4BTTQ60F" role="2Oq$k0">
                <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
              </node>
              <node concept="3lbrtF" id="6se4BTTQ8v$" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="6se4BTTQaqQ" role="2OqNvi">
              <node concept="1bVj0M" id="6se4BTTQaqS" role="23t8la">
                <node concept="3clFbS" id="6se4BTTQaqT" role="1bW5cS">
                  <node concept="3clFbF" id="6se4BTTQaxC" role="3cqZAp">
                    <node concept="2OqwBi" id="6se4BTTQaPn" role="3clFbG">
                      <node concept="37vLTw" id="6se4BTTQaxB" role="2Oq$k0">
                        <ref role="3cqZAo" node="6se4BTTQaqU" resolve="it" />
                      </node>
                      <node concept="liA8E" id="6se4BTTQc9N" role="2OqNvi">
                        <ref role="37wK5l" to="9a8:~EditorComponent.removeDisposeListener(jetbrains.mps.nodeEditor.EditorComponent$EditorDisposeListener):void" resolve="removeDisposeListener" />
                        <node concept="37vLTw" id="6se4BTTQci9" role="37wK5m">
                          <ref role="3cqZAo" node="6qi2OtU3ufQ" resolve="myDisposeListener" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6se4BTTQaqU" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6se4BTTQaqV" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTTQAR7" role="3cqZAp">
          <node concept="37vLTI" id="6se4BTTQCx$" role="3clFbG">
            <node concept="10Nm6u" id="6se4BTTQC_J" role="37vLTx" />
            <node concept="37vLTw" id="6se4BTTQAR6" role="37vLTJ">
              <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTTQlam" role="3cqZAp">
          <node concept="2OqwBi" id="6se4BTTQpBC" role="3clFbG">
            <node concept="2OqwBi" id="6se4BTTQmxP" role="2Oq$k0">
              <node concept="37vLTw" id="6se4BTTQlal" role="2Oq$k0">
                <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
              </node>
              <node concept="3lbrtF" id="6se4BTTQoy4" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="6se4BTTQqBu" role="2OqNvi">
              <node concept="1bVj0M" id="6se4BTTQqBw" role="23t8la">
                <node concept="3clFbS" id="6se4BTTQqBx" role="1bW5cS">
                  <node concept="3clFbF" id="6se4BTTQqJm" role="3cqZAp">
                    <node concept="1rXfSq" id="6se4BTTQznC" role="3clFbG">
                      <ref role="37wK5l" node="6qi2OtU3uhX" resolve="removeModelListener" />
                      <node concept="37vLTw" id="6se4BTTQz$L" role="37wK5m">
                        <ref role="3cqZAo" node="6se4BTTQqBy" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6se4BTTQqBy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6se4BTTQqBz" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTTQEca" role="3cqZAp">
          <node concept="37vLTI" id="6se4BTTQFVQ" role="3clFbG">
            <node concept="10Nm6u" id="6se4BTTQG0C" role="37vLTx" />
            <node concept="37vLTw" id="6se4BTTQEc9" role="37vLTJ">
              <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTTQdy_" role="3cqZAp">
          <node concept="2OqwBi" id="6se4BTTQdyA" role="3clFbG">
            <node concept="2YIFZM" id="6se4BTTQdyB" role="2Oq$k0">
              <ref role="1Pybhc" to="cu2c:~SModelRepository" resolve="SModelRepository" />
              <ref role="37wK5l" to="cu2c:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6se4BTTQdyC" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SModelRepository.removeModelRepositoryListener(jetbrains.mps.smodel.SModelRepositoryListener):void" resolve="removeModelRepositoryListener" />
              <node concept="37vLTw" id="6se4BTTQdyD" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3upc" resolve="myRepositoryListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3uhD" role="3cqZAp">
          <node concept="3nyPlj" id="6qi2OtU3uhE" role="3clFbG">
            <ref role="37wK5l" to="l62w:~BaseEditorChecker.doDispose():void" resolve="doDispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4_T" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uhX" role="jymVt">
      <property role="TrG5h" value="removeModelListener" />
      <node concept="3Tm6S6" id="6qi2OtU3uhY" role="1B3o_S" />
      <node concept="3cqZAl" id="6qi2OtU3uhZ" role="3clF45" />
      <node concept="37vLTG" id="6qi2OtU3ui0" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="6qi2OtU3ui1" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3ui2" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3ui5" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ui6" role="3clFbG">
            <node concept="1eOMI4" id="256tImPrAHe" role="2Oq$k0">
              <node concept="10QFUN" id="256tImPrAHf" role="1eOMHV">
                <node concept="37vLTw" id="2BHiRxglG9a" role="10QFUP">
                  <ref role="3cqZAo" node="6qi2OtU3ui0" resolve="model" />
                </node>
                <node concept="3uibUv" id="1KRNqi_MxB2" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SModelInternal" resolve="SModelInternal" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6qi2OtU3ui8" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SModelInternal.removeModelListener(jetbrains.mps.smodel.event.SModelListener):void" resolve="removeModelListener" />
              <node concept="37vLTw" id="2BHiRxeun3_" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3up_" resolve="myModelListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uij" role="jymVt">
      <property role="TrG5h" value="addModelListener" />
      <node concept="3cqZAl" id="6qi2OtU3uik" role="3clF45" />
      <node concept="3Tm6S6" id="6qi2OtU3uil" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uim" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uiu" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3uiv" role="3clFbG">
            <node concept="1eOMI4" id="256tImPrAHO" role="2Oq$k0">
              <node concept="10QFUN" id="256tImPrAHP" role="1eOMHV">
                <node concept="37vLTw" id="2BHiRxgheI1" role="10QFUP">
                  <ref role="3cqZAo" node="6qi2OtU3uiC" resolve="modelDescriptor" />
                </node>
                <node concept="3uibUv" id="1KRNqi_Ms0W" role="10QFUM">
                  <ref role="3uigEE" to="cu2c:~SModelInternal" resolve="SModelInternal" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6qi2OtU3uix" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~SModelInternal.addModelListener(jetbrains.mps.smodel.event.SModelListener):void" resolve="addModelListener" />
              <node concept="37vLTw" id="2BHiRxeuuEm" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3up_" resolve="myModelListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uiC" role="3clF46">
        <property role="TrG5h" value="modelDescriptor" />
        <node concept="3uibUv" id="6qi2OtU3uiD" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3ujG" role="jymVt">
      <property role="TrG5h" value="areMessagesChanged" />
      <node concept="3Tmbuc" id="3g$f7gtxL6q" role="1B3o_S" />
      <node concept="10P_77" id="6qi2OtU3ujI" role="3clF45" />
      <node concept="3clFbS" id="6qi2OtU3ujJ" role="3clF47">
        <node concept="3cpWs6" id="6qi2OtU3ujK" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuq6u" role="3cqZAk">
            <ref role="3cqZAo" node="6qi2OtU3ufr" resolve="myMessagesChanged" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4Ad" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3ujM" role="jymVt">
      <property role="TrG5h" value="isLaterThan" />
      <node concept="3Tmbuc" id="3g$f7gty096" role="1B3o_S" />
      <node concept="10P_77" id="6qi2OtU3ujO" role="3clF45" />
      <node concept="37vLTG" id="6qi2OtU3ujP" role="3clF46">
        <property role="TrG5h" value="checker" />
        <node concept="3uibUv" id="6qi2OtU3ujQ" role="1tU5fm">
          <ref role="3uigEE" to="l62w:~BaseEditorChecker" resolve="BaseEditorChecker" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3ujR" role="3clF47">
        <node concept="3clFbJ" id="6qi2OtU3ujS" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3ujT" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3ujU" role="3cqZAp">
              <node concept="3clFbT" id="6qi2OtU3ujV" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6qi2OtU3ujW" role="3clFbw">
            <node concept="3uibUv" id="6qi2OtU3ujX" role="2ZW6by">
              <ref role="3uigEE" to="qstq:~TypesEditorChecker" resolve="TypesEditorChecker" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm6gg" role="2ZW6bz">
              <ref role="3cqZAo" node="6qi2OtU3ujP" resolve="checker" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="60wM9d8BQCq" role="3cqZAp">
          <node concept="3clFbS" id="60wM9d8BQCr" role="3clFbx">
            <node concept="3cpWs6" id="60wM9d8BQCs" role="3cqZAp">
              <node concept="3clFbT" id="60wM9d8BQCt" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="60wM9d8BQCu" role="3clFbw">
            <node concept="3uibUv" id="60wM9d8BQCx" role="2ZW6by">
              <ref role="3uigEE" node="4nkKl$KPUHv" resolve="AutoResolver" />
            </node>
            <node concept="37vLTw" id="2BHiRxglboi" role="2ZW6bz">
              <ref role="3cqZAo" node="6qi2OtU3ujP" resolve="checker" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ujZ" role="3cqZAp">
          <node concept="3clFbT" id="6qi2OtU3uk0" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4A7" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uk1" role="jymVt">
      <property role="TrG5h" value="hasDramaticalEvent" />
      <node concept="3Tmbuc" id="3g$f7gtybig" role="1B3o_S" />
      <node concept="10P_77" id="6qi2OtU3uk3" role="3clF45" />
      <node concept="37vLTG" id="6qi2OtU3uk4" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="6qi2OtU3uk5" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3uibUv" id="6qi2OtU3uk6" role="11_B2D">
            <ref role="3uigEE" to="87kw:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3uk7" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uk8" role="3cqZAp">
          <node concept="3clFbT" id="6qi2OtU3uk9" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4Aj" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6ts3IR9JhLP" role="jymVt">
      <property role="TrG5h" value="createMessages" />
      <node concept="37vLTG" id="6ts3IR9JhX1" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6ts3IR9JhX2" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6ts3IR9JhX3" role="3clF46">
        <property role="TrG5h" value="list" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6ts3IR9JhX4" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3uibUv" id="6ts3IR9JhX5" role="11_B2D">
            <ref role="3uigEE" to="87kw:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6ts3IR9JhX6" role="3clF46">
        <property role="TrG5h" value="wasCheckedOnce" />
        <property role="3TUv4t" value="true" />
        <node concept="10P_77" id="6ts3IR9JhX7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6ts3IR9JhX8" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6ts3IR9JhX9" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3Tmbuc" id="3g$f7gtyk_x" role="1B3o_S" />
      <node concept="3clFbS" id="6ts3IR9JhLT" role="3clF47">
        <node concept="3cpWs6" id="6ts3IR9JhXo" role="3cqZAp">
          <node concept="2OqwBi" id="6ts3IR9K3$O" role="3cqZAk">
            <node concept="liA8E" id="6ts3IR9K3Fm" role="2OqNvi">
              <ref role="37wK5l" to="ua2a:~TypeContextManager.runTypeCheckingComputation(jetbrains.mps.typesystem.inference.ITypeContextOwner,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.typesystem.inference.ITypechecking$Computation):java.lang.Object" resolve="runTypeCheckingComputation" />
              <node concept="2OqwBi" id="4D39F9LNMzL" role="37wK5m">
                <node concept="liA8E" id="4D39F9LNWYF" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getTypecheckingContextOwner():jetbrains.mps.typesystem.inference.ITypeContextOwner" resolve="getTypecheckingContextOwner" />
                </node>
                <node concept="1eOMI4" id="4D39F9LNFdV" role="2Oq$k0">
                  <node concept="10QFUN" id="4D39F9LNFdS" role="1eOMHV">
                    <node concept="3uibUv" id="4D39F9LNImr" role="10QFUM">
                      <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="2OqwBi" id="4D39F9LNFdX" role="10QFUP">
                      <node concept="liA8E" id="4D39F9LNFdY" role="2OqNvi">
                        <ref role="37wK5l" to="srng:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                      </node>
                      <node concept="37vLTw" id="4D39F9LNFdZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6ts3IR9JhX8" resolve="editorContext" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6ts3IR9Llgb" role="37wK5m">
                <ref role="3cqZAo" node="6ts3IR9JhX1" resolve="node" />
              </node>
              <node concept="2ShNRf" id="6ts3IR9L_Qq" role="37wK5m">
                <node concept="YeOm9" id="6ts3IR9LAmU" role="2ShVmc">
                  <node concept="1Y3b0j" id="6ts3IR9LAmX" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="ua2a:~ITypechecking$Computation" resolve="ITypechecking.Computation" />
                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3uibUv" id="WOorWWehl8" role="2Ghqu4">
                      <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
                      <node concept="3uibUv" id="WOorWWehl9" role="11_B2D">
                        <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="6ts3IR9LAmY" role="1B3o_S" />
                    <node concept="3clFb_" id="6ts3IR9LAmZ" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="compute" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="6ts3IR9LAn0" role="1B3o_S" />
                      <node concept="37vLTG" id="6ts3IR9LAn3" role="3clF46">
                        <property role="TrG5h" value="typeCheckingContext" />
                        <node concept="3uibUv" id="6ts3IR9LAn4" role="1tU5fm">
                          <ref role="3uigEE" to="ua2a:~TypeCheckingContext" resolve="TypeCheckingContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6ts3IR9LAn5" role="3clF47">
                        <node concept="3cpWs6" id="6ts3IR9LAnv" role="3cqZAp">
                          <node concept="1rXfSq" id="6ts3IR9LQYp" role="3cqZAk">
                            <ref role="37wK5l" node="6qi2OtU3uka" resolve="doCreateMessages" />
                            <node concept="37vLTw" id="6ts3IR9M88M" role="37wK5m">
                              <ref role="3cqZAo" node="6ts3IR9JhX1" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="6ts3IR9Mpci" role="37wK5m">
                              <ref role="3cqZAo" node="6ts3IR9JhX3" resolve="list" />
                            </node>
                            <node concept="37vLTw" id="6ts3IR9MBRP" role="37wK5m">
                              <ref role="3cqZAo" node="6ts3IR9JhX6" resolve="wasCheckedOnce" />
                            </node>
                            <node concept="37vLTw" id="6ts3IR9MToZ" role="37wK5m">
                              <ref role="3cqZAo" node="6ts3IR9JhX8" resolve="editorContext" />
                            </node>
                            <node concept="37vLTw" id="7yrT30bZAaY" role="37wK5m">
                              <ref role="3cqZAo" node="6ts3IR9LAn3" resolve="typeCheckingContext" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="6ts3IR9P201" role="3clF45">
                        <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
                        <node concept="3uibUv" id="6ts3IR9P202" role="11_B2D">
                          <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_t6kX" role="2AJF6D">
                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="6ts3IR9J$F1" role="2Oq$k0">
              <ref role="37wK5l" to="ua2a:~TypeContextManager.getInstance():jetbrains.mps.typesystem.inference.TypeContextManager" resolve="getInstance" />
              <ref role="1Pybhc" to="ua2a:~TypeContextManager" resolve="TypeContextManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6ts3IR9JhW7" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
        <node concept="3uibUv" id="6ts3IR9JhW8" role="11_B2D">
          <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4A3" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uka" role="jymVt">
      <property role="TrG5h" value="doCreateMessages" />
      <node concept="3Tm6S6" id="3g$f7gtyreQ" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3ukc" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Set" resolve="Set" />
        <node concept="3uibUv" id="6qi2OtU3ukd" role="11_B2D">
          <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uke" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6qi2OtU3ukf" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3ukg" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="6qi2OtU3ukh" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3uibUv" id="6qi2OtU3uki" role="11_B2D">
            <ref role="3uigEE" to="87kw:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3ukj" role="3clF46">
        <property role="TrG5h" value="wasCheckedOnce" />
        <node concept="10P_77" id="6qi2OtU3ukk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3ukl" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="6qi2OtU3ukm" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7yrT30bZN_r" role="3clF46">
        <property role="TrG5h" value="typeCheckingContext" />
        <node concept="3uibUv" id="7yrT30bZN_s" role="1tU5fm">
          <ref role="3uigEE" to="ua2a:~TypeCheckingContext" resolve="TypeCheckingContext" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3ukn" role="3clF47">
        <node concept="3cpWs8" id="6se4BTTRIv_" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTRIvA" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <node concept="10QFUN" id="6se4BTTRIvB" role="33vP2m">
              <node concept="3uibUv" id="6se4BTTRIvC" role="10QFUM">
                <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="6se4BTTRIvD" role="10QFUP">
                <node concept="37vLTw" id="6se4BTTRIvE" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3ukl" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="6se4BTTRIvF" role="2OqNvi">
                  <ref role="37wK5l" to="srng:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6se4BTTRIvG" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6se4BTTTjky" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTTjkz" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="6se4BTTTjkx" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="6se4BTTTjk$" role="33vP2m">
              <node concept="37vLTw" id="6se4BTTTjk_" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3ukl" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="6se4BTTTjkA" role="2OqNvi">
                <ref role="37wK5l" to="srng:~EditorContext.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uxkWp9WMi9" role="3cqZAp">
          <node concept="2OqwBi" id="2uxkWp9WUYp" role="3clFbG">
            <node concept="37vLTw" id="2uxkWp9WT2p" role="2Oq$k0">
              <ref role="3cqZAo" node="2uxkWp9W5X3" resolve="myScopeChecker" />
            </node>
            <node concept="liA8E" id="2uxkWp9WXlu" role="2OqNvi">
              <ref role="37wK5l" node="2uxkWp9VPot" resolve="setEditorComponent" />
              <node concept="37vLTw" id="2uxkWpa13K2" role="37wK5m">
                <ref role="3cqZAo" node="6se4BTTRIvA" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2uxkWp9WHyz" role="3cqZAp" />
        <node concept="3clFbF" id="6se4BTU0YVT" role="3cqZAp">
          <node concept="37vLTI" id="6se4BTU15kp" role="3clFbG">
            <node concept="3clFbT" id="6se4BTU175l" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="6se4BTU0YVS" role="37vLTJ">
              <ref role="3cqZAo" node="6qi2OtU3ufr" resolve="myMessagesChanged" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTTUHj9" role="3cqZAp" />
        <node concept="3cpWs8" id="6se4BTTVt$7" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTVt$8" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="6se4BTTVt$9" role="1tU5fm">
              <node concept="3uibUv" id="6se4BTTVt$a" role="2hN53Y">
                <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
              </node>
            </node>
            <node concept="2ShNRf" id="6se4BTTVt$b" role="33vP2m">
              <node concept="2i4dXS" id="6se4BTTVt$c" role="2ShVmc">
                <node concept="3uibUv" id="6se4BTTVt$d" role="HW$YZ">
                  <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6se4BTTVOsL" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTVOsM" role="3cpWs9">
            <property role="TrG5h" value="editedNode" />
            <node concept="3Tqbb2" id="6se4BTTXntm" role="1tU5fm" />
            <node concept="2OqwBi" id="6se4BTTVOsN" role="33vP2m">
              <node concept="37vLTw" id="6se4BTTVOsO" role="2Oq$k0">
                <ref role="3cqZAo" node="6se4BTTRIvA" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="6se4BTTVOsP" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTU6SYp" role="3cqZAp" />
        <node concept="3clFbJ" id="6se4BTTVIdK" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTTVIdN" role="3clFbx">
            <node concept="34ab3g" id="6se4BTTW8Zh" role="3cqZAp">
              <property role="35gtTG" value="error" />
              <node concept="Xl_RD" id="6se4BTTW8Zi" role="34bqiv">
                <property role="Xl_RC" value="edited node is null" />
              </node>
            </node>
            <node concept="3cpWs6" id="6se4BTTW8Zj" role="3cqZAp">
              <node concept="37vLTw" id="6se4BTTW8Zk" role="3cqZAk">
                <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6se4BTTW6kl" role="3clFbw">
            <node concept="10Nm6u" id="6se4BTTW87R" role="3uHU7w" />
            <node concept="37vLTw" id="6se4BTTW48k" role="3uHU7B">
              <ref role="3cqZAo" node="6se4BTTVOsM" resolve="editedNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6se4BTTV0vx" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTTV0v$" role="3clFbx">
            <node concept="3SKdUt" id="6se4BTTVh5s" role="3cqZAp">
              <node concept="3SKdUq" id="6se4BTTVh5t" role="3SKWNk">
                <property role="3SKdUp" value="descriptor is null for a replaced model" />
              </node>
            </node>
            <node concept="3SKdUt" id="6se4BTTVh5u" role="3cqZAp">
              <node concept="3SKdUq" id="6se4BTTVh5v" role="3SKWNk">
                <property role="3SKdUp" value="after model is replaced but before it is disposed (this can happen asyncronously)" />
              </node>
            </node>
            <node concept="3cpWs6" id="6se4BTTVh5w" role="3cqZAp">
              <node concept="37vLTw" id="6se4BTTVBlq" role="3cqZAk">
                <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6se4BTTVaQG" role="3clFbw">
            <node concept="3clFbC" id="6se4BTTVgAg" role="3uHU7w">
              <node concept="10Nm6u" id="6se4BTTVgHe" role="3uHU7w" />
              <node concept="2OqwBi" id="6se4BTTVggp" role="3uHU7B">
                <node concept="37vLTw" id="6se4BTTVOsQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTVOsM" resolve="editedNode" />
                </node>
                <node concept="I4A8Y" id="6se4BTU0Km2" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="6se4BTTV9vt" role="3uHU7B">
              <node concept="2OqwBi" id="6se4BTTV6PZ" role="3uHU7B">
                <node concept="37vLTw" id="6se4BTTV63S" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uke" resolve="node" />
                </node>
                <node concept="liA8E" id="6se4BTTV9q6" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                </node>
              </node>
              <node concept="10Nm6u" id="6se4BTTV9vH" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTTTufz" role="3cqZAp" />
        <node concept="3cpWs8" id="6se4BTTWU_y" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTWU_z" role="3cpWs9">
            <property role="TrG5h" value="mainEditorComponent" />
            <node concept="3uibUv" id="6se4BTU0L0e" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="10Nm6u" id="6se4BTTZOkM" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="6se4BTTW$FZ" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTW$G2" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="10P_77" id="6se4BTTW$FX" role="1tU5fm" />
            <node concept="2ZW3vV" id="6se4BTTWG2A" role="33vP2m">
              <node concept="3uibUv" id="6se4BTTWGBx" role="2ZW6by">
                <ref role="3uigEE" to="cpzd:~InspectorEditorComponent" resolve="InspectorEditorComponent" />
              </node>
              <node concept="37vLTw" id="6se4BTTWFsR" role="2ZW6bz">
                <ref role="3cqZAo" node="6se4BTTRIvA" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6se4BTTXewN" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTTXewQ" role="3clFbx">
            <node concept="3cpWs8" id="6se4BTTXCkl" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTTXCkm" role="3cpWs9">
                <property role="TrG5h" value="editedNodeAncestors" />
                <node concept="2I9FWS" id="6se4BTTXCk8" role="1tU5fm">
                  <ref role="2I9WkF" to="tpck:gw2VY9q" resolve="BaseConcept" />
                </node>
                <node concept="2OqwBi" id="6se4BTTXCkn" role="33vP2m">
                  <node concept="37vLTw" id="6se4BTTXCko" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTTVOsM" resolve="editedNode" />
                  </node>
                  <node concept="z$bX8" id="6se4BTTXCkp" role="2OqNvi">
                    <node concept="1xIGOp" id="6se4BTTZgzv" role="1xVPHs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="6se4BTTY2G9" role="3cqZAp">
              <node concept="3clFbS" id="6se4BTTY2Gc" role="2LFqv$">
                <node concept="3clFbJ" id="6se4BTTYrnv" role="3cqZAp">
                  <node concept="3clFbS" id="6se4BTTYrnw" role="3clFbx">
                    <node concept="3clFbF" id="6se4BTTYKeb" role="3cqZAp">
                      <node concept="37vLTI" id="6se4BTTYNhF" role="3clFbG">
                        <node concept="37vLTw" id="6se4BTTYO0D" role="37vLTx">
                          <ref role="3cqZAo" node="6se4BTTY2Gf" resolve="candidate" />
                        </node>
                        <node concept="37vLTw" id="6se4BTTYKea" role="37vLTJ">
                          <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="6se4BTTYHQ4" role="3cqZAp" />
                  </node>
                  <node concept="2OqwBi" id="6se4BTTYuwT" role="3clFbw">
                    <node concept="37vLTw" id="6se4BTTYt5t" role="2Oq$k0">
                      <ref role="3cqZAo" node="6se4BTTXCkm" resolve="editedNodeAncestors" />
                    </node>
                    <node concept="3JPx81" id="6se4BTTYxTk" role="2OqNvi">
                      <node concept="2OqwBi" id="6se4BTTYA7z" role="25WWJ7">
                        <node concept="37vLTw" id="6se4BTTY$T$" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTTY2Gf" resolve="candidate" />
                        </node>
                        <node concept="liA8E" id="6se4BTTYDii" role="2OqNvi">
                          <ref role="37wK5l" to="9a8:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6se4BTTY2Gf" role="1Duv9x">
                <property role="TrG5h" value="candidate" />
                <node concept="3uibUv" id="6se4BTTYiZz" role="1tU5fm">
                  <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                </node>
              </node>
              <node concept="2OqwBi" id="6se4BTTYb7F" role="1DdaDG">
                <node concept="37vLTw" id="6se4BTTY9qh" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
                </node>
                <node concept="3lbrtF" id="6se4BTTYe9O" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbJ" id="6se4BTU07B4" role="3cqZAp">
              <node concept="3clFbS" id="6se4BTU07B7" role="3clFbx">
                <node concept="3cpWs6" id="6se4BTU0elQ" role="3cqZAp">
                  <node concept="37vLTw" id="6se4BTU0ncz" role="3cqZAk">
                    <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6se4BTU0cQm" role="3clFbw">
                <node concept="10Nm6u" id="6se4BTU0dgX" role="3uHU7w" />
                <node concept="37vLTw" id="6se4BTU0bMw" role="3uHU7B">
                  <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6se4BTTXkTX" role="3clFbw">
            <ref role="3cqZAo" node="6se4BTTW$G2" resolve="inspector" />
          </node>
          <node concept="9aQIb" id="6se4BTTZSMC" role="9aQIa">
            <node concept="3clFbS" id="6se4BTTZSMD" role="9aQI4">
              <node concept="3clFbF" id="6se4BTTZXIb" role="3cqZAp">
                <node concept="37vLTI" id="6se4BTTZYLj" role="3clFbG">
                  <node concept="37vLTw" id="6se4BTTZZdx" role="37vLTx">
                    <ref role="3cqZAo" node="6se4BTTRIvA" resolve="editorComponent" />
                  </node>
                  <node concept="37vLTw" id="6se4BTTZXIa" role="37vLTJ">
                    <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTTWls4" role="3cqZAp" />
        <node concept="3cpWs8" id="6se4BTTS3Ap" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTTS3Aq" role="3cpWs9">
            <property role="TrG5h" value="errorsComponent" />
            <node concept="3uibUv" id="6se4BTTS3Al" role="1tU5fm">
              <ref role="3uigEE" to="wsw7:6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
            </node>
            <node concept="3EllGN" id="6se4BTTS3Ar" role="33vP2m">
              <node concept="37vLTw" id="6se4BTU0KLh" role="3ElVtu">
                <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
              </node>
              <node concept="37vLTw" id="6se4BTTS3At" role="3ElQJh">
                <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6se4BTTSkeK" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTTSkeN" role="3clFbx">
            <node concept="3clFbF" id="6se4BTTSt$k" role="3cqZAp">
              <node concept="37vLTI" id="6se4BTTStCF" role="3clFbG">
                <node concept="2ShNRf" id="6se4BTTStHa" role="37vLTx">
                  <node concept="1pGfFk" id="6se4BTTSQxX" role="2ShVmc">
                    <ref role="37wK5l" to="wsw7:6qi2OtU3ufb" resolve="LanguageErrorsComponent" />
                    <node concept="37vLTw" id="6se4BTTTz5D" role="37wK5m">
                      <ref role="3cqZAo" node="6se4BTTTjkz" resolve="model" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6se4BTTSt$j" role="37vLTJ">
                  <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6se4BTTTzf3" role="3cqZAp">
              <node concept="37vLTI" id="6se4BTTT$o4" role="3clFbG">
                <node concept="37vLTw" id="6se4BTTT$v_" role="37vLTx">
                  <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
                </node>
                <node concept="3EllGN" id="6se4BTTTzDC" role="37vLTJ">
                  <node concept="37vLTw" id="6se4BTU0Sah" role="3ElVtu">
                    <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                  </node>
                  <node concept="37vLTw" id="6se4BTTTzf2" role="3ElQJh">
                    <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6se4BTTT_4Q" role="3cqZAp">
              <node concept="2OqwBi" id="6se4BTTT_t7" role="3clFbG">
                <node concept="37vLTw" id="6se4BTU0Sl9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                </node>
                <node concept="liA8E" id="6se4BTTTBC3" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.addDisposeListener(jetbrains.mps.nodeEditor.EditorComponent$EditorDisposeListener):void" resolve="addDisposeListener" />
                  <node concept="37vLTw" id="6se4BTTTBGM" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3ufQ" resolve="myDisposeListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6se4BTTTMj4" role="3cqZAp" />
            <node concept="3cpWs8" id="6se4BTTTDh1" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTTTDh2" role="3cpWs9">
                <property role="TrG5h" value="mappedEditorComponent" />
                <node concept="2hMVRd" id="6se4BTTTDgI" role="1tU5fm">
                  <node concept="3uibUv" id="6se4BTTTDgL" role="2hN53Y">
                    <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
                <node concept="3EllGN" id="6se4BTTTDh3" role="33vP2m">
                  <node concept="37vLTw" id="6se4BTTTDh4" role="3ElVtu">
                    <ref role="3cqZAo" node="6se4BTTTjkz" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="6se4BTTTDh5" role="3ElQJh">
                    <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6se4BTTTEyU" role="3cqZAp">
              <node concept="3clFbS" id="6se4BTTTEyX" role="3clFbx">
                <node concept="3clFbF" id="6se4BTTTFlo" role="3cqZAp">
                  <node concept="37vLTI" id="6se4BTTTFB5" role="3clFbG">
                    <node concept="2ShNRf" id="6se4BTTTFG9" role="37vLTx">
                      <node concept="2i4dXS" id="6se4BTTTFFB" role="2ShVmc">
                        <node concept="3uibUv" id="6se4BTTTFFC" role="HW$YZ">
                          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6se4BTTTFln" role="37vLTJ">
                      <ref role="3cqZAo" node="6se4BTTTDh2" resolve="mappedEditorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTTG$T" role="3cqZAp">
                  <node concept="37vLTI" id="6se4BTTTHzo" role="3clFbG">
                    <node concept="37vLTw" id="6se4BTTTHM7" role="37vLTx">
                      <ref role="3cqZAo" node="6se4BTTTDh2" resolve="mappedEditorComponent" />
                    </node>
                    <node concept="3EllGN" id="6se4BTTTGZ6" role="37vLTJ">
                      <node concept="37vLTw" id="6se4BTTTHcY" role="3ElVtu">
                        <ref role="3cqZAo" node="6se4BTTTjkz" resolve="model" />
                      </node>
                      <node concept="37vLTw" id="6se4BTTTG$S" role="3ElQJh">
                        <ref role="3cqZAo" node="6se4BTTNDIG" resolve="myModelToEditorComponentsMap" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6se4BTTTI49" role="3cqZAp">
                  <node concept="1rXfSq" id="6se4BTTTI48" role="3clFbG">
                    <ref role="37wK5l" node="6qi2OtU3uij" resolve="addModelListener" />
                    <node concept="37vLTw" id="6se4BTTTIiG" role="37wK5m">
                      <ref role="3cqZAo" node="6se4BTTTjkz" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6se4BTTTFcx" role="3clFbw">
                <node concept="10Nm6u" id="6se4BTTTFgR" role="3uHU7w" />
                <node concept="37vLTw" id="6se4BTTTEMr" role="3uHU7B">
                  <ref role="3cqZAo" node="6se4BTTTDh2" resolve="mappedEditorComponent" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6se4BTTTIXp" role="3cqZAp">
              <node concept="2OqwBi" id="6se4BTTTJvB" role="3clFbG">
                <node concept="37vLTw" id="6se4BTTTIXo" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTTDh2" resolve="mappedEditorComponent" />
                </node>
                <node concept="TSZUe" id="6se4BTTTLbz" role="2OqNvi">
                  <node concept="37vLTw" id="6se4BTU0SuJ" role="25WWJ7">
                    <ref role="3cqZAo" node="6se4BTTWU_z" resolve="mainEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6se4BTTSr6Z" role="3clFbw">
            <node concept="10Nm6u" id="6se4BTTSsJN" role="3uHU7w" />
            <node concept="37vLTw" id="6se4BTTSpJ8" role="3uHU7B">
              <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTTRqcJ" role="3cqZAp" />
        <node concept="3clFbJ" id="6se4BTTTZiB" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTTTZiC" role="3clFbx">
            <node concept="3clFbF" id="6se4BTTTZiD" role="3cqZAp">
              <node concept="2OqwBi" id="6se4BTTTZiE" role="3clFbG">
                <node concept="37vLTw" id="6se4BTTTZiF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
                </node>
                <node concept="liA8E" id="6se4BTTTZiG" role="2OqNvi">
                  <ref role="37wK5l" to="wsw7:6qi2OtU3ubu" resolve="clear" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6se4BTTTZiH" role="3clFbw">
            <node concept="37vLTw" id="6se4BTTTZiI" role="3fr31v">
              <ref role="3cqZAo" node="6qi2OtU3ukj" resolve="wasCheckedOnce" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTTRsP6" role="3cqZAp" />
        <node concept="3clFbJ" id="6se4BTU5u7h" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTU5u7k" role="3clFbx">
            <node concept="3clFbF" id="6se4BTU5FtU" role="3cqZAp">
              <node concept="37vLTI" id="6se4BTU5FMT" role="3clFbG">
                <node concept="2OqwBi" id="6se4BTU5Gda" role="37vLTx">
                  <node concept="37vLTw" id="6se4BTU5G3x" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
                  </node>
                  <node concept="liA8E" id="6se4BTU5G$K" role="2OqNvi">
                    <ref role="37wK5l" to="wsw7:6se4BTU212x" resolve="checkInspector" />
                  </node>
                </node>
                <node concept="37vLTw" id="6se4BTU5FtT" role="37vLTJ">
                  <ref role="3cqZAo" node="6qi2OtU3ufr" resolve="myMessagesChanged" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6se4BTU5_vc" role="3clFbw">
            <ref role="3cqZAo" node="6se4BTTW$G2" resolve="inspector" />
          </node>
          <node concept="9aQIb" id="6se4BTU5Cut" role="9aQIa">
            <node concept="3clFbS" id="6se4BTU5Cuu" role="9aQI4">
              <node concept="3cpWs8" id="6se4BTU1$e5" role="3cqZAp">
                <node concept="3cpWsn" id="6se4BTU1$e6" role="3cpWs9">
                  <property role="TrG5h" value="changed" />
                  <node concept="10P_77" id="6se4BTU1$e7" role="1tU5fm" />
                  <node concept="3clFbT" id="6se4BTU1$e8" role="33vP2m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2GUZhq" id="6se4BTU1$ef" role="3cqZAp">
                <node concept="3clFbS" id="6se4BTU1$eg" role="2GV8ay">
                  <node concept="3clFbJ" id="6se4BTU1$eh" role="3cqZAp">
                    <node concept="3clFbS" id="6se4BTU1$ei" role="3clFbx">
                      <node concept="3clFbF" id="6se4BTU1$ej" role="3cqZAp">
                        <node concept="2OqwBi" id="6se4BTU1$ek" role="3clFbG">
                          <node concept="37vLTw" id="7yrT30c083S" role="2Oq$k0">
                            <ref role="3cqZAo" node="7yrT30bZN_r" resolve="typeCheckingContext" />
                          </node>
                          <node concept="liA8E" id="6se4BTU1$em" role="2OqNvi">
                            <ref role="37wK5l" to="ua2a:~TypeCheckingContext.setIsNonTypesystemComputation():void" resolve="setIsNonTypesystemComputation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6se4BTU1$en" role="3clFbw">
                      <node concept="37vLTw" id="7yrT30c07WO" role="3uHU7B">
                        <ref role="3cqZAo" node="7yrT30bZN_r" resolve="typeCheckingContext" />
                      </node>
                      <node concept="10Nm6u" id="6se4BTU1$ep" role="3uHU7w" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="6se4BTU1$eq" role="3cqZAp">
                    <node concept="37vLTI" id="6se4BTU1$er" role="3clFbG">
                      <node concept="37vLTw" id="6se4BTU1$es" role="37vLTJ">
                        <ref role="3cqZAo" node="6se4BTU1$e6" resolve="changed" />
                      </node>
                      <node concept="2OqwBi" id="6se4BTU1$et" role="37vLTx">
                        <node concept="37vLTw" id="6se4BTU1$eu" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
                        </node>
                        <node concept="liA8E" id="6se4BTU1$ev" role="2OqNvi">
                          <ref role="37wK5l" to="wsw7:6qi2OtU3u6L" resolve="check" />
                          <node concept="2OqwBi" id="6se4BTU1$ew" role="37wK5m">
                            <node concept="1eOMI4" id="6se4BTU1$ex" role="2Oq$k0">
                              <node concept="10QFUN" id="6se4BTU1$ey" role="1eOMHV">
                                <node concept="3Tqbb2" id="6se4BTU1$ez" role="10QFUM" />
                                <node concept="37vLTw" id="6se4BTU1$e$" role="10QFUP">
                                  <ref role="3cqZAo" node="6qi2OtU3uke" resolve="node" />
                                </node>
                              </node>
                            </node>
                            <node concept="2Rxl7S" id="6se4BTU1$e_" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="6se4BTU1$eA" role="37wK5m">
                            <ref role="3cqZAo" node="6qi2OtU3ufv" resolve="myRules" />
                          </node>
                          <node concept="2OqwBi" id="6se4BTU1$eB" role="37wK5m">
                            <node concept="37vLTw" id="6se4BTU1$eC" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qi2OtU3ukl" resolve="editorContext" />
                            </node>
                            <node concept="liA8E" id="6se4BTU1$eD" role="2OqNvi">
                              <ref role="37wK5l" to="srng:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6se4BTU1$eE" role="2GVbov">
                  <node concept="3clFbJ" id="6se4BTU1$eF" role="3cqZAp">
                    <node concept="3y3z36" id="6se4BTU1$eG" role="3clFbw">
                      <node concept="37vLTw" id="7yrT30c08_r" role="3uHU7B">
                        <ref role="3cqZAo" node="7yrT30bZN_r" resolve="typeCheckingContext" />
                      </node>
                      <node concept="10Nm6u" id="6se4BTU1$eI" role="3uHU7w" />
                    </node>
                    <node concept="3clFbS" id="6se4BTU1$eJ" role="3clFbx">
                      <node concept="3clFbF" id="6se4BTU1$eK" role="3cqZAp">
                        <node concept="2OqwBi" id="6se4BTU1$eL" role="3clFbG">
                          <node concept="37vLTw" id="7yrT30c08Gl" role="2Oq$k0">
                            <ref role="3cqZAo" node="7yrT30bZN_r" resolve="typeCheckingContext" />
                          </node>
                          <node concept="liA8E" id="6se4BTU1$eN" role="2OqNvi">
                            <ref role="37wK5l" to="ua2a:~TypeCheckingContext.resetIsNonTypesystemComputation():void" resolve="resetIsNonTypesystemComputation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6se4BTU1$eO" role="3cqZAp">
                <node concept="37vLTI" id="6se4BTU1$eP" role="3clFbG">
                  <node concept="37vLTw" id="6se4BTU1$eQ" role="37vLTx">
                    <ref role="3cqZAo" node="6se4BTU1$e6" resolve="changed" />
                  </node>
                  <node concept="37vLTw" id="6se4BTU1$eR" role="37vLTJ">
                    <ref role="3cqZAo" node="6qi2OtU3ufr" resolve="myMessagesChanged" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6se4BTU5nWJ" role="3cqZAp" />
        <node concept="3clFbJ" id="4c0sGnTgFl6" role="3cqZAp">
          <node concept="3clFbS" id="4c0sGnTgFl9" role="3clFbx">
            <node concept="3SKdUt" id="2uxkWp9U$JC" role="3cqZAp">
              <node concept="3SKdUq" id="2uxkWp9UDov" role="3SKWNk">
                <property role="3SKdUp" value="skipping quickfix processing if othing was changed" />
              </node>
            </node>
            <node concept="3cpWs6" id="6se4BTU1$gA" role="3cqZAp">
              <node concept="37vLTw" id="6se4BTU1$gB" role="3cqZAk">
                <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4c0sGnTgO9u" role="3clFbw">
            <node concept="37vLTw" id="4c0sGnTgO9w" role="3fr31v">
              <ref role="3cqZAo" node="6qi2OtU3ufr" resolve="myMessagesChanged" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4c0sGnTgWPv" role="3cqZAp" />
        <node concept="3cpWs8" id="3g$f7gt_uuL" role="3cqZAp">
          <node concept="3cpWsn" id="3g$f7gt_uuO" role="3cpWs9">
            <property role="TrG5h" value="runQuickFixes" />
            <node concept="10P_77" id="3g$f7gt_uuJ" role="1tU5fm" />
            <node concept="1rXfSq" id="6QH0usPwmjA" role="33vP2m">
              <ref role="37wK5l" node="6QH0usPumzl" resolve="shouldRunQuickFixs" />
              <node concept="37vLTw" id="6QH0usPwmzd" role="37wK5m">
                <ref role="3cqZAo" node="6se4BTTTjkz" resolve="model" />
              </node>
              <node concept="37vLTw" id="6QH0usPwmRo" role="37wK5m">
                <ref role="3cqZAo" node="6se4BTTW$G2" resolve="inspector" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6se4BTU7jqY" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTU7jr1" role="3cpWs9">
            <property role="TrG5h" value="quickFixesToExecute" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="6se4BTU7jqU" role="1tU5fm">
              <node concept="1LlUBW" id="6se4BTUapRy" role="_ZDj9">
                <node concept="3uibUv" id="6se4BTUasgU" role="1Lm7xW">
                  <ref role="3uigEE" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                </node>
                <node concept="3Tqbb2" id="6se4BTUatZZ" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2ShNRf" id="6se4BTUaF67" role="33vP2m">
              <node concept="Tc6Ow" id="6se4BTUaF31" role="2ShVmc">
                <node concept="1LlUBW" id="6se4BTUaF32" role="HW$YZ">
                  <node concept="3uibUv" id="6se4BTUaF33" role="1Lm7xW">
                    <ref role="3uigEE" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                  </node>
                  <node concept="3Tqbb2" id="6se4BTUaF34" role="1Lm7xW" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6se4BTU1$eS" role="3cqZAp">
          <node concept="3cpWsn" id="6se4BTU1$eT" role="1Duv9x">
            <property role="TrG5h" value="errorReporter" />
            <node concept="3uibUv" id="6se4BTU1$eU" role="1tU5fm">
              <ref role="3uigEE" to="nax5:~IErrorReporter" resolve="IErrorReporter" />
            </node>
          </node>
          <node concept="3clFbS" id="6se4BTU1$eV" role="2LFqv$">
            <node concept="3cpWs8" id="1rlD583ji$w" role="3cqZAp">
              <node concept="3cpWsn" id="1rlD583ji$x" role="3cpWs9">
                <property role="TrG5h" value="nodeWithError" />
                <node concept="3Tqbb2" id="1rlD583jpo3" role="1tU5fm" />
                <node concept="2OqwBi" id="1rlD583ji$y" role="33vP2m">
                  <node concept="37vLTw" id="1rlD583ji$z" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTU1$eT" resolve="errorReporter" />
                  </node>
                  <node concept="liA8E" id="1rlD583ji$$" role="2OqNvi">
                    <ref role="37wK5l" to="nax5:~IErrorReporter.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6se4BTU76C7" role="3cqZAp">
              <node concept="3clFbS" id="6se4BTU76Ca" role="3clFbx">
                <node concept="3SKdUt" id="6se4BTU7bjU" role="3cqZAp">
                  <node concept="3SKdUq" id="6se4BTU7bru" role="3SKWNk">
                    <property role="3SKdUp" value="in inspector skipping all messages for invisible nodes" />
                  </node>
                </node>
                <node concept="3N13vt" id="6se4BTU7b4K" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="6se4BTU7aTM" role="3clFbw">
                <node concept="2OqwBi" id="1rlD583jtqK" role="3fr31v">
                  <node concept="2OqwBi" id="1rlD583jq77" role="2Oq$k0">
                    <node concept="37vLTw" id="1rlD583ji$_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1rlD583ji$x" resolve="nodeWithError" />
                    </node>
                    <node concept="z$bX8" id="1rlD583jqmN" role="2OqNvi">
                      <node concept="1xIGOp" id="1rlD583jsnP" role="1xVPHs" />
                    </node>
                  </node>
                  <node concept="3JPx81" id="1rlD583jvU8" role="2OqNvi">
                    <node concept="37vLTw" id="1rlD583jvZz" role="25WWJ7">
                      <ref role="3cqZAo" node="6se4BTTVOsM" resolve="editedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6se4BTU1$eW" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTU1$eX" role="3cpWs9">
                <property role="TrG5h" value="status" />
                <node concept="3uibUv" id="6se4BTU1$eY" role="1tU5fm">
                  <ref role="3uigEE" to="nax5:~MessageStatus" resolve="MessageStatus" />
                </node>
                <node concept="2OqwBi" id="6se4BTU1$eZ" role="33vP2m">
                  <node concept="37vLTw" id="6se4BTU1$f0" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTU1$eT" resolve="errorReporter" />
                  </node>
                  <node concept="liA8E" id="6se4BTU1$f1" role="2OqNvi">
                    <ref role="37wK5l" to="nax5:~IErrorReporter.getMessageStatus():jetbrains.mps.errors.MessageStatus" resolve="getMessageStatus" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6se4BTU1$f2" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTU1$f3" role="3cpWs9">
                <property role="TrG5h" value="errorString" />
                <node concept="17QB3L" id="6se4BTU1$f4" role="1tU5fm" />
                <node concept="2OqwBi" id="6se4BTU1$f5" role="33vP2m">
                  <node concept="37vLTw" id="6se4BTU1$f6" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTU1$eT" resolve="errorReporter" />
                  </node>
                  <node concept="liA8E" id="6se4BTU1$f7" role="2OqNvi">
                    <ref role="37wK5l" to="nax5:~IErrorReporter.reportError():java.lang.String" resolve="reportError" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6se4BTU1$f8" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTU1$f9" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="3uibUv" id="6se4BTU1$fa" role="1tU5fm">
                  <ref role="3uigEE" to="9a8:~HighlighterMessage" resolve="HighlighterMessage" />
                </node>
                <node concept="2YIFZM" id="6se4BTU1$fb" role="33vP2m">
                  <ref role="37wK5l" to="qstq:~HighlightUtil.createHighlighterMessage(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.errors.IErrorReporter,jetbrains.mps.nodeEditor.checking.BaseEditorChecker,jetbrains.mps.openapi.editor.EditorContext):jetbrains.mps.nodeEditor.HighlighterMessage" resolve="createHighlighterMessage" />
                  <ref role="1Pybhc" to="qstq:~HighlightUtil" resolve="HighlightUtil" />
                  <node concept="37vLTw" id="1rlD583ji$A" role="37wK5m">
                    <ref role="3cqZAo" node="1rlD583ji$x" resolve="nodeWithError" />
                  </node>
                  <node concept="3cpWs3" id="6se4BTU1$ff" role="37wK5m">
                    <node concept="3cpWs3" id="6se4BTU1$fg" role="3uHU7B">
                      <node concept="2YIFZM" id="6se4BTU1$fh" role="3uHU7B">
                        <ref role="1Pybhc" to="msyo:~NameUtil" resolve="NameUtil" />
                        <ref role="37wK5l" to="msyo:~NameUtil.capitalize(java.lang.String):java.lang.String" resolve="capitalize" />
                        <node concept="2OqwBi" id="6se4BTU1$fi" role="37wK5m">
                          <node concept="37vLTw" id="6se4BTU1$fj" role="2Oq$k0">
                            <ref role="3cqZAo" node="6se4BTU1$eX" resolve="status" />
                          </node>
                          <node concept="liA8E" id="6se4BTU1$fk" role="2OqNvi">
                            <ref role="37wK5l" to="nax5:~MessageStatus.getPresentation():java.lang.String" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6se4BTU1$fl" role="3uHU7w">
                        <property role="Xl_RC" value=": " />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6se4BTU1$fm" role="3uHU7w">
                      <ref role="3cqZAo" node="6se4BTU1$f3" resolve="errorString" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6se4BTU1$fn" role="37wK5m">
                    <ref role="3cqZAo" node="6se4BTU1$eT" resolve="errorReporter" />
                  </node>
                  <node concept="Xjq3P" id="6se4BTU1$fo" role="37wK5m">
                    <ref role="1HBi2w" node="6qi2OtU3ufq" resolve="LanguageEditorChecker" />
                  </node>
                  <node concept="37vLTw" id="6se4BTU1$fp" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3ukl" resolve="editorContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6se4BTU1$fq" role="3cqZAp">
              <node concept="3cpWsn" id="6se4BTU1$fr" role="3cpWs9">
                <property role="TrG5h" value="intentionProviders" />
                <node concept="3uibUv" id="6se4BTU1$fs" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~List" resolve="List" />
                  <node concept="3uibUv" id="6se4BTU1$ft" role="11_B2D">
                    <ref role="3uigEE" to="nax5:~QuickFixProvider" resolve="QuickFixProvider" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6se4BTU1$fu" role="33vP2m">
                  <node concept="37vLTw" id="6se4BTU1$fv" role="2Oq$k0">
                    <ref role="3cqZAo" node="6se4BTU1$f9" resolve="message" />
                  </node>
                  <node concept="liA8E" id="6se4BTU1$fw" role="2OqNvi">
                    <ref role="37wK5l" to="9a8:~DefaultEditorMessage.getIntentionProviders():java.util.List" resolve="getIntentionProviders" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6se4BTU1$fx" role="3cqZAp">
              <node concept="3clFbS" id="6se4BTU1$fy" role="3clFbx">
                <node concept="3cpWs8" id="6se4BTU1$fz" role="3cqZAp">
                  <node concept="3cpWsn" id="6se4BTU1$f$" role="3cpWs9">
                    <property role="TrG5h" value="quickFix" />
                    <node concept="3uibUv" id="6se4BTU1$f_" role="1tU5fm">
                      <ref role="3uigEE" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                    </node>
                    <node concept="2OqwBi" id="6se4BTU1$fA" role="33vP2m">
                      <node concept="2OqwBi" id="6se4BTU1$fB" role="2Oq$k0">
                        <node concept="37vLTw" id="6se4BTU1$fC" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTU1$fr" resolve="intentionProviders" />
                        </node>
                        <node concept="liA8E" id="6se4BTU1$fD" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~List.get(int):java.lang.Object" resolve="get" />
                          <node concept="3cmrfG" id="6se4BTU1$fE" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6se4BTU1$fF" role="2OqNvi">
                        <ref role="37wK5l" to="nax5:~QuickFixProvider.getQuickFix():jetbrains.mps.errors.QuickFix_Runtime" resolve="getQuickFix" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6se4BTU1$fG" role="3cqZAp">
                  <node concept="3clFbS" id="6se4BTU1$fH" role="3clFbx">
                    <node concept="3clFbF" id="6se4BTU7$CR" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTU7_4d" role="3clFbG">
                        <node concept="37vLTw" id="6se4BTU7$CQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6se4BTU7jr1" resolve="quickFixesToExecute" />
                        </node>
                        <node concept="TSZUe" id="6se4BTU7ALL" role="2OqNvi">
                          <node concept="1Ls8ON" id="6se4BTUaGu1" role="25WWJ7">
                            <node concept="37vLTw" id="6se4BTUaGQm" role="1Lso8e">
                              <ref role="3cqZAo" node="6se4BTU1$f$" resolve="quickFix" />
                            </node>
                            <node concept="37vLTw" id="1rlD583ji$B" role="1Lso8e">
                              <ref role="3cqZAo" node="1rlD583ji$x" resolve="nodeWithError" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="6se4BTU1$gf" role="3clFbw">
                    <node concept="10Nm6u" id="6se4BTU1$gg" role="3uHU7w" />
                    <node concept="37vLTw" id="6se4BTU1$gh" role="3uHU7B">
                      <ref role="3cqZAo" node="6se4BTU1$f$" resolve="quickFix" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="6se4BTU1$gi" role="3clFbw">
                <node concept="2OqwBi" id="6se4BTU1$gj" role="3uHU7w">
                  <node concept="2OqwBi" id="6se4BTU1$gk" role="2Oq$k0">
                    <node concept="37vLTw" id="6se4BTU1$gl" role="2Oq$k0">
                      <ref role="3cqZAo" node="6se4BTU1$fr" resolve="intentionProviders" />
                    </node>
                    <node concept="liA8E" id="6se4BTU1$gm" role="2OqNvi">
                      <ref role="37wK5l" to="k7g3:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cmrfG" id="6se4BTU1$gn" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6se4BTU1$go" role="2OqNvi">
                    <ref role="37wK5l" to="nax5:~QuickFixProvider.isExecutedImmediately():boolean" resolve="isExecutedImmediately" />
                  </node>
                </node>
                <node concept="1Wc70l" id="3g$f7gt_CjM" role="3uHU7B">
                  <node concept="37vLTw" id="3g$f7gt_Cww" role="3uHU7B">
                    <ref role="3cqZAo" node="3g$f7gt_uuO" resolve="runQuickFixes" />
                  </node>
                  <node concept="3clFbC" id="6se4BTU1$gp" role="3uHU7w">
                    <node concept="2OqwBi" id="6se4BTU1$gq" role="3uHU7B">
                      <node concept="37vLTw" id="6se4BTU1$gr" role="2Oq$k0">
                        <ref role="3cqZAo" node="6se4BTU1$fr" resolve="intentionProviders" />
                      </node>
                      <node concept="liA8E" id="6se4BTU1$gs" role="2OqNvi">
                        <ref role="37wK5l" to="k7g3:~List.size():int" resolve="size" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="6se4BTU1$gt" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6se4BTU1$gu" role="3cqZAp">
              <node concept="2OqwBi" id="6se4BTU1$gv" role="3clFbG">
                <node concept="37vLTw" id="6se4BTU1$gw" role="2Oq$k0">
                  <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
                </node>
                <node concept="TSZUe" id="6se4BTU1$gx" role="2OqNvi">
                  <node concept="37vLTw" id="6se4BTU1$gy" role="25WWJ7">
                    <ref role="3cqZAo" node="6se4BTU1$f9" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6se4BTU1$gz" role="1DdaDG">
            <node concept="37vLTw" id="6se4BTU1$g$" role="2Oq$k0">
              <ref role="3cqZAo" node="6se4BTTS3Aq" resolve="errorsComponent" />
            </node>
            <node concept="liA8E" id="6se4BTU1$g_" role="2OqNvi">
              <ref role="37wK5l" to="wsw7:6qi2OtU3u8D" resolve="getErrors" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6QH0usPsYUl" role="3cqZAp" />
        <node concept="3clFbJ" id="6QH0usPt8nt" role="3cqZAp">
          <node concept="3clFbS" id="6QH0usPt8nw" role="3clFbx">
            <node concept="3cpWs6" id="6QH0usPtgtn" role="3cqZAp">
              <node concept="37vLTw" id="6QH0usPtlt$" role="3cqZAk">
                <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6QH0usPteF0" role="3clFbw">
            <ref role="3cqZAo" node="6se4BTTW$G2" resolve="inspector" />
          </node>
        </node>
        <node concept="3SKdUt" id="6QH0usPtySx" role="3cqZAp">
          <node concept="3SKdUq" id="6QH0usPt_Ff" role="3SKWNk">
            <property role="3SKdUp" value="running quick fixes in main editor only" />
          </node>
        </node>
        <node concept="3cpWs8" id="4oqmnvKoccm" role="3cqZAp">
          <node concept="3cpWsn" id="4oqmnvKocck" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="wasForceRunQuickFixes" />
            <node concept="10P_77" id="4oqmnvKoclx" role="1tU5fm" />
            <node concept="37vLTw" id="4oqmnvKodPm" role="33vP2m">
              <ref role="3cqZAo" node="3g$f7gtzd5R" resolve="myForceRunQuickFixes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4oqmnvKoexK" role="3cqZAp">
          <node concept="37vLTI" id="4oqmnvKoeTB" role="3clFbG">
            <node concept="3clFbT" id="4oqmnvKoeZS" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="4oqmnvKoexJ" role="37vLTJ">
              <ref role="3cqZAo" node="3g$f7gtzd5R" resolve="myForceRunQuickFixes" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6se4BTU7YUv" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTU7YUy" role="3clFbx">
            <node concept="3clFbF" id="6se4BTU1$fI" role="3cqZAp">
              <node concept="2YIFZM" id="6se4BTU1$fJ" role="3clFbG">
                <ref role="1Pybhc" to="9fym:~LaterInvocator" resolve="LaterInvocator" />
                <ref role="37wK5l" to="9fym:~LaterInvocator.invokeLater(java.lang.Runnable):com.intellij.openapi.util.ActionCallback" resolve="invokeLater" />
                <node concept="1bVj0M" id="6se4BTU1$fK" role="37wK5m">
                  <node concept="3clFbS" id="6se4BTU1$fL" role="1bW5cS">
                    <node concept="3clFbF" id="6se4BTU1$fM" role="3cqZAp">
                      <node concept="2OqwBi" id="6se4BTU1$fN" role="3clFbG">
                        <node concept="2YIFZM" id="6se4BTU1$fO" role="2Oq$k0">
                          <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                          <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
                        </node>
                        <node concept="liA8E" id="6se4BTU1$fP" role="2OqNvi">
                          <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runUndoTransparentCommand(java.lang.Runnable):void" resolve="runUndoTransparentCommand" />
                          <node concept="1bVj0M" id="6se4BTU1$fQ" role="37wK5m">
                            <node concept="3clFbS" id="6se4BTU1$fR" role="1bW5cS">
                              <node concept="1DcWWT" id="6se4BTU8Lo0" role="3cqZAp">
                                <node concept="3clFbS" id="6se4BTU8Lo3" role="2LFqv$">
                                  <node concept="3clFbJ" id="6se4BTUaOSr" role="3cqZAp">
                                    <node concept="3clFbS" id="6se4BTUaOSu" role="3clFbx">
                                      <node concept="3clFbF" id="6se4BTU9iuk" role="3cqZAp">
                                        <node concept="2OqwBi" id="6se4BTU9j4o" role="3clFbG">
                                          <node concept="1LFfDK" id="6se4BTUbrL4" role="2Oq$k0">
                                            <node concept="3cmrfG" id="6se4BTUbtlB" role="1LF_Uc">
                                              <property role="3cmrfH" value="0" />
                                            </node>
                                            <node concept="37vLTw" id="6se4BTU9iuj" role="1LFl5Q">
                                              <ref role="3cqZAo" node="6se4BTU8Lo6" resolve="fix" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6se4BTUa04K" role="2OqNvi">
                                            <ref role="37wK5l" to="nax5:~QuickFix_Runtime.execute(org.jetbrains.mps.openapi.model.SNode):void" resolve="execute" />
                                            <node concept="1LFfDK" id="6se4BTUbv5F" role="37wK5m">
                                              <node concept="3cmrfG" id="6se4BTUbvkq" role="1LF_Uc">
                                                <property role="3cmrfH" value="1" />
                                              </node>
                                              <node concept="37vLTw" id="6se4BTUbu_m" role="1LFl5Q">
                                                <ref role="3cqZAo" node="6se4BTU8Lo6" resolve="fix" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="4oqmnvKofOz" role="3cqZAp">
                                        <node concept="3clFbS" id="4oqmnvKofOA" role="3clFbx">
                                          <node concept="3SKdUt" id="4oqmnvKoiLZ" role="3cqZAp">
                                            <node concept="3SKdUq" id="4oqmnvKoj3b" role="3SKWNk">
                                              <property role="3SKdUp" value="forcing to execute quickFixes for all errors reported on the modified model" />
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="4oqmnvKogb9" role="3cqZAp">
                                            <node concept="37vLTI" id="4oqmnvKogzY" role="3clFbG">
                                              <node concept="3clFbT" id="4oqmnvKogEa" role="37vLTx">
                                                <property role="3clFbU" value="true" />
                                              </node>
                                              <node concept="37vLTw" id="4oqmnvKogb8" role="37vLTJ">
                                                <ref role="3cqZAo" node="3g$f7gtzd5R" resolve="myForceRunQuickFixes" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="4oqmnvKog09" role="3clFbw">
                                          <ref role="3cqZAo" node="4oqmnvKocck" resolve="wasForceRunQuickFixes" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="6se4BTUbicN" role="3clFbw">
                                      <node concept="10Nm6u" id="6se4BTUbid7" role="3uHU7w" />
                                      <node concept="2OqwBi" id="6se4BTUaVM2" role="3uHU7B">
                                        <node concept="1LFfDK" id="6se4BTUaQ5V" role="2Oq$k0">
                                          <node concept="37vLTw" id="6se4BTUaPAR" role="1LFl5Q">
                                            <ref role="3cqZAo" node="6se4BTU8Lo6" resolve="fix" />
                                          </node>
                                          <node concept="3cmrfG" id="6se4BTUaTY4" role="1LF_Uc">
                                            <property role="3cmrfH" value="1" />
                                          </node>
                                        </node>
                                        <node concept="I4A8Y" id="6se4BTUbgjN" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWsn" id="6se4BTU8Lo6" role="1Duv9x">
                                  <property role="TrG5h" value="fix" />
                                  <node concept="1LlUBW" id="6se4BTUaLNQ" role="1tU5fm">
                                    <node concept="3uibUv" id="6se4BTUaMYL" role="1Lm7xW">
                                      <ref role="3uigEE" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                                    </node>
                                    <node concept="3Tqbb2" id="6se4BTUaNAc" role="1Lm7xW" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="6se4BTU8Uew" role="1DdaDG">
                                  <ref role="3cqZAo" node="6se4BTU7jr1" resolve="quickFixesToExecute" />
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
          <node concept="2OqwBi" id="6se4BTU8bkF" role="3clFbw">
            <node concept="37vLTw" id="6se4BTU87up" role="2Oq$k0">
              <ref role="3cqZAo" node="6se4BTU7jr1" resolve="quickFixesToExecute" />
            </node>
            <node concept="3GX2aA" id="6se4BTU8hrD" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="4c0sGnTh9pO" role="3cqZAp">
          <node concept="37vLTw" id="4c0sGnTh9pP" role="3cqZAk">
            <ref role="3cqZAo" node="6se4BTTVt$8" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6QH0usPumzl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="shouldRunQuickFixs" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6QH0usPumzo" role="3clF47">
        <node concept="3clFbJ" id="6QH0usPutRe" role="3cqZAp">
          <node concept="3clFbS" id="6QH0usPutRf" role="3clFbx">
            <node concept="3cpWs6" id="6QH0usPuzOI" role="3cqZAp">
              <node concept="3clFbT" id="6QH0usPuCdd" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6QH0usPvVBm" role="3clFbw">
            <node concept="22lmx$" id="6QH0usPvPiG" role="3uHU7B">
              <node concept="37vLTw" id="6QH0usPuzpn" role="3uHU7B">
                <ref role="3cqZAo" node="6QH0usPutRL" resolve="inspector" />
              </node>
              <node concept="3fqX7Q" id="6QH0usPvVuv" role="3uHU7w">
                <node concept="2ZW3vV" id="6QH0usPvVuw" role="3fr31v">
                  <node concept="3uibUv" id="6QH0usPvVux" role="2ZW6by">
                    <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                  </node>
                  <node concept="37vLTw" id="6QH0usPvVuy" role="2ZW6bz">
                    <ref role="3cqZAo" node="6QH0usPv5X1" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="6QH0usPvn9R" role="3uHU7w">
              <node concept="3uibUv" id="6OTUdBQPLxC" role="2ZW6by">
                <ref role="3uigEE" to="51te:~TransientSModel" resolve="TransientSModel" />
              </node>
              <node concept="37vLTw" id="6QH0usPvn9U" role="2ZW6bz">
                <ref role="3cqZAo" node="6QH0usPv5X1" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6QH0usPuO9_" role="3cqZAp">
          <node concept="22lmx$" id="6QH0usPuZ4O" role="3cqZAk">
            <node concept="37vLTw" id="6QH0usPuZ4P" role="3uHU7w">
              <ref role="3cqZAo" node="3g$f7gtzd5R" resolve="myForceRunQuickFixes" />
            </node>
            <node concept="2OqwBi" id="6QH0usPuZ4Q" role="3uHU7B">
              <node concept="2YIFZM" id="6QH0usPuZ4R" role="2Oq$k0">
                <ref role="37wK5l" to="9a8:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
                <ref role="1Pybhc" to="9a8:~EditorSettings" resolve="EditorSettings" />
              </node>
              <node concept="liA8E" id="6QH0usPuZ4S" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorSettings.isAutoQuickFix():boolean" resolve="isAutoQuickFix" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6QH0usPuhs$" role="1B3o_S" />
      <node concept="10P_77" id="6QH0usPumzj" role="3clF45" />
      <node concept="37vLTG" id="6QH0usPv5X1" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="6QH0usPvbYd" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="6QH0usPutRL" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="10P_77" id="6QH0usPutRK" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uom" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3Tmbuc" id="3g$f7gtyBkQ" role="1B3o_S" />
      <node concept="3cqZAl" id="6qi2OtU3uoo" role="3clF45" />
      <node concept="37vLTG" id="6qi2OtU3uop" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6qi2OtU3uoq" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uor" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6qi2OtU3uos" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3uot" role="3clF47">
        <node concept="3clFbF" id="6se4BTUcdO_" role="3cqZAp">
          <node concept="2OqwBi" id="6se4BTUceqh" role="3clFbG">
            <node concept="3EllGN" id="6se4BTUced2" role="2Oq$k0">
              <node concept="37vLTw" id="6se4BTUcegQ" role="3ElVtu">
                <ref role="3cqZAo" node="6qi2OtU3uor" resolve="component" />
              </node>
              <node concept="37vLTw" id="6se4BTUcdO$" role="3ElQJh">
                <ref role="3cqZAo" node="6se4BTTNiSg" resolve="myEditorComponentToErrorMap" />
              </node>
            </node>
            <node concept="liA8E" id="6se4BTUce_P" role="2OqNvi">
              <ref role="37wK5l" to="wsw7:6qi2OtU3ubu" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t4_Z" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3g$f7gtyNnr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="resetCheckerState" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="3g$f7gtyNns" role="1B3o_S" />
      <node concept="3cqZAl" id="3g$f7gtyNnu" role="3clF45" />
      <node concept="3clFbS" id="3g$f7gtyNnv" role="3clF47">
        <node concept="3clFbF" id="3g$f7gtzkif" role="3cqZAp">
          <node concept="37vLTI" id="3g$f7gtzkwB" role="3clFbG">
            <node concept="3clFbT" id="3g$f7gtzkx_" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="3g$f7gtzkie" role="37vLTJ">
              <ref role="3cqZAo" node="3g$f7gtzd5R" resolve="myForceRunQuickFixes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3g$f7gtyNny" role="3cqZAp">
          <node concept="3nyPlj" id="3g$f7gtyNnx" role="3clFbG">
            <ref role="37wK5l" to="l62w:~BaseEditorChecker.resetCheckerState():void" resolve="resetCheckerState" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3g$f7gtyNnw" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6qi2OtU3ugr" role="1B3o_S" />
    <node concept="3uibUv" id="6qi2OtU3upY" role="1zkMxy">
      <ref role="3uigEE" to="l62w:~BaseEditorChecker" resolve="BaseEditorChecker" />
    </node>
  </node>
  <node concept="312cEu" id="4nkKl$KPUHv">
    <property role="TrG5h" value="AutoResolver" />
    <node concept="312cEg" id="4InNjD1KsBA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myForceAutofix" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4InNjD1KsBB" role="1B3o_S" />
      <node concept="10P_77" id="4InNjD1KsBC" role="1tU5fm" />
      <node concept="3clFbT" id="4InNjD1KsBD" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="4InNjD1Ku4y" role="jymVt" />
    <node concept="3clFbW" id="4nkKl$KPUHy" role="jymVt">
      <node concept="3Tm1VV" id="4nkKl$KPUHz" role="1B3o_S" />
      <node concept="3cqZAl" id="4nkKl$KPUH$" role="3clF45" />
      <node concept="3clFbS" id="4nkKl$KPUH_" role="3clF47" />
    </node>
    <node concept="3clFb_" id="4nkKl$KPUHA" role="jymVt">
      <property role="TrG5h" value="createMessages" />
      <node concept="3Tm1VV" id="4nkKl$KPUHB" role="1B3o_S" />
      <node concept="2hMVRd" id="4$0H1w_YZFN" role="3clF45">
        <node concept="3uibUv" id="4$0H1w_YZFO" role="2hN53Y">
          <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
        </node>
      </node>
      <node concept="37vLTG" id="4nkKl$KPUHE" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="4$0H1w_YZFR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4nkKl$KPUHG" role="3clF46">
        <property role="TrG5h" value="events" />
        <node concept="3uibUv" id="4nkKl$KPUHH" role="1tU5fm">
          <ref role="3uigEE" to="k7g3:~List" resolve="List" />
          <node concept="3uibUv" id="4nkKl$KPUHI" role="11_B2D">
            <ref role="3uigEE" to="87kw:~SModelEvent" resolve="SModelEvent" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4nkKl$KPUHJ" role="3clF46">
        <property role="TrG5h" value="wasCheckedOnce" />
        <node concept="10P_77" id="4nkKl$KPUHK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4nkKl$KPUHL" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3bq5tR0EEY8" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4nkKl$KPUHN" role="3clF47">
        <node concept="3cpWs8" id="4nkKl$KPUHO" role="3cqZAp">
          <node concept="3cpWsn" id="4nkKl$KPUHP" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="2hMVRd" id="4$0H1w_YZFT" role="1tU5fm">
              <node concept="3uibUv" id="4$0H1w_YZFU" role="2hN53Y">
                <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
              </node>
            </node>
            <node concept="2ShNRf" id="4$0H1w_YZFX" role="33vP2m">
              <node concept="32HrFt" id="4$0H1w_YZFY" role="2ShVmc">
                <node concept="3uibUv" id="4$0H1w_YZFZ" role="HW$YZ">
                  <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4nkKl$KPUHV" role="3cqZAp">
          <node concept="22lmx$" id="4nkKl$KPUHW" role="3clFbw">
            <node concept="3clFbC" id="4nkKl$KPUHX" role="3uHU7B">
              <node concept="2OqwBi" id="4nkKl$KPUHY" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgmd17" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nkKl$KPUHE" resolve="rootNode" />
                </node>
                <node concept="I4A8Y" id="4$0H1w_YZG4" role="2OqNvi" />
              </node>
              <node concept="10Nm6u" id="4nkKl$KPUI1" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="4InNjD1DeDL" role="3uHU7w">
              <node concept="2OqwBi" id="4InNjD1DewL" role="3uHU7B">
                <node concept="liA8E" id="4InNjD1DewM" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="4InNjD1DewN" role="2Oq$k0">
                  <node concept="2OqwBi" id="4InNjD1DewO" role="2JrQYb">
                    <node concept="37vLTw" id="4InNjD1DewP" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nkKl$KPUHE" resolve="rootNode" />
                    </node>
                    <node concept="I4A8Y" id="4InNjD1DewQ" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="4InNjD1DeGK" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="4nkKl$KPUI9" role="3clFbx">
            <node concept="3cpWs6" id="4nkKl$KPUIa" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTyTx" role="3cqZAk">
                <ref role="3cqZAo" node="4nkKl$KPUHP" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4InNjD1ED37" role="3cqZAp">
          <node concept="3SKdUq" id="4InNjD1EDJE" role="3SKWNk">
            <property role="3SKdUp" value="TODO: use same settings as in LanguageEritorChecker" />
          </node>
        </node>
        <node concept="3cpWs8" id="4InNjD1EUnZ" role="3cqZAp">
          <node concept="3cpWsn" id="4InNjD1EUo0" role="3cpWs9">
            <property role="TrG5h" value="badReferences" />
            <property role="3TUv4t" value="false" />
            <node concept="2hMVRd" id="4InNjD1EUnU" role="1tU5fm">
              <node concept="3uibUv" id="4InNjD1EUnX" role="2hN53Y">
                <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
              </node>
            </node>
            <node concept="1rXfSq" id="4InNjD1EUo1" role="33vP2m">
              <ref role="37wK5l" node="4nkKl$KPUMr" resolve="collectBadReferences" />
              <node concept="37vLTw" id="4InNjD1EUo2" role="37wK5m">
                <ref role="3cqZAo" node="4nkKl$KPUHE" resolve="rootNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2euxXH1_Fyl" role="3cqZAp">
          <node concept="2GrKxI" id="2euxXH1_Fym" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="3clFbS" id="2euxXH1_Fyo" role="2LFqv$">
            <node concept="3cpWs8" id="51UVhLlXuyk" role="3cqZAp">
              <node concept="3cpWsn" id="51UVhLlXuyl" role="3cpWs9">
                <property role="TrG5h" value="message" />
                <node concept="2YIFZM" id="3bq5tR0EFZN" role="33vP2m">
                  <ref role="1Pybhc" to="qstq:~HighlightUtil" resolve="HighlightUtil" />
                  <ref role="37wK5l" to="qstq:~HighlightUtil.createHighlighterMessage(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.nodeEditor.checking.EditorCheckerAdapter,jetbrains.mps.openapi.editor.EditorContext):jetbrains.mps.nodeEditor.HighlighterMessage" resolve="createHighlighterMessage" />
                  <node concept="2OqwBi" id="3bq5tR0EFZO" role="37wK5m">
                    <node concept="2GrUjf" id="3bq5tR0EFZP" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="2euxXH1_Fym" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="3bq5tR0EFZQ" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3bq5tR0EFZR" role="37wK5m">
                    <property role="Xl_RC" value="Unresolved reference" />
                  </node>
                  <node concept="Xjq3P" id="3bq5tR0EFZS" role="37wK5m" />
                  <node concept="37vLTw" id="2BHiRxglw$Y" role="37wK5m">
                    <ref role="3cqZAo" node="4nkKl$KPUHL" resolve="editorContext" />
                  </node>
                </node>
                <node concept="3uibUv" id="51UVhLlXuym" role="1tU5fm">
                  <ref role="3uigEE" to="9a8:~EditorMessage" resolve="EditorMessage" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="51UVhLlXuyu" role="3cqZAp">
              <node concept="2OqwBi" id="4$0H1w_YZHF" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTs87" role="2Oq$k0">
                  <ref role="3cqZAo" node="4nkKl$KPUHP" resolve="messages" />
                </node>
                <node concept="TSZUe" id="4$0H1w_YZHL" role="2OqNvi">
                  <node concept="37vLTw" id="3GM_nagTxp_" role="25WWJ7">
                    <ref role="3cqZAo" node="51UVhLlXuyl" resolve="message" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4InNjD1EUo3" role="2GsD0m">
            <ref role="3cqZAo" node="4InNjD1EUo0" resolve="badReferences" />
          </node>
        </node>
        <node concept="3clFbJ" id="41PEaLtAyo8" role="3cqZAp">
          <node concept="3clFbS" id="41PEaLtAyo9" role="3clFbx">
            <node concept="3clFbF" id="77jjuPI9GNy" role="3cqZAp">
              <node concept="1rXfSq" id="77jjuPI9GNx" role="3clFbG">
                <ref role="37wK5l" node="77jjuPI9$wi" resolve="runAutofix" />
                <node concept="37vLTw" id="77jjuPIaLSJ" role="37wK5m">
                  <ref role="3cqZAo" node="4InNjD1EUo0" resolve="badReferences" />
                </node>
                <node concept="37vLTw" id="77jjuPIalo6" role="37wK5m">
                  <ref role="3cqZAo" node="4nkKl$KPUHL" resolve="editorContext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="4InNjD1KKFZ" role="3clFbw">
            <ref role="37wK5l" node="4InNjD1JvOU" resolve="isAutofix" />
            <node concept="2OqwBi" id="4InNjD1KKPj" role="37wK5m">
              <node concept="37vLTw" id="4InNjD1KKLV" role="2Oq$k0">
                <ref role="3cqZAo" node="4nkKl$KPUHE" resolve="rootNode" />
              </node>
              <node concept="I4A8Y" id="4InNjD1KL1W" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="4InNjD1KL8P" role="37wK5m">
              <node concept="37vLTw" id="4InNjD1KL62" role="2Oq$k0">
                <ref role="3cqZAo" node="4nkKl$KPUHL" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="4InNjD1KLrd" role="2OqNvi">
                <ref role="37wK5l" to="srng:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4nkKl$KPUKV" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTxOp" role="3cqZAk">
            <ref role="3cqZAo" node="4nkKl$KPUHP" resolve="messages" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t44c" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="77jjuPI9$wi" role="jymVt">
      <property role="TrG5h" value="runAutofix" />
      <node concept="37vLTG" id="77jjuPIaIHk" role="3clF46">
        <property role="TrG5h" value="badReferences" />
        <property role="3TUv4t" value="true" />
        <node concept="2hMVRd" id="77jjuPIaJzt" role="1tU5fm">
          <node concept="3uibUv" id="77jjuPIaJzu" role="2hN53Y">
            <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="77jjuPIalUF" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="77jjuPIalUG" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="77jjuPI9$wk" role="3clF45" />
      <node concept="3Tm6S6" id="77jjuPI9BgR" role="1B3o_S" />
      <node concept="3clFbS" id="77jjuPI9$wm" role="3clF47">
        <node concept="3clFbJ" id="77jjuPIatQf" role="3cqZAp">
          <node concept="3clFbS" id="77jjuPIatQi" role="3clFbx">
            <node concept="3cpWs6" id="77jjuPIawQj" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="77jjuPIavRX" role="3clFbw">
            <node concept="10Nm6u" id="77jjuPIawr3" role="3uHU7w" />
            <node concept="2OqwBi" id="41PEaLtAyoo" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm830" role="2Oq$k0">
                <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
              </node>
              <node concept="liA8E" id="41PEaLtAyoq" role="2OqNvi">
                <ref role="37wK5l" to="srng:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jjuPIaTzR" role="3cqZAp">
          <node concept="3cpWsn" id="77jjuPIaTzS" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="77jjuPIaTzN" role="1tU5fm">
              <ref role="3uigEE" to="vsqj:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="77jjuPIaTzT" role="33vP2m">
              <node concept="2OqwBi" id="77jjuPIaTzU" role="2Oq$k0">
                <node concept="37vLTw" id="77jjuPIaTzV" role="2Oq$k0">
                  <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="77jjuPIaTzW" role="2OqNvi">
                  <ref role="37wK5l" to="srng:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                </node>
              </node>
              <node concept="liA8E" id="77jjuPIaTzX" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="77jjuPIaB8y" role="3cqZAp" />
        <node concept="3cpWs8" id="77jjuPI6PYV" role="3cqZAp">
          <node concept="3cpWsn" id="77jjuPI6PYW" role="3cpWs9">
            <property role="TrG5h" value="editorComponent" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="77jjuPI6PYT" role="1tU5fm">
              <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="10QFUN" id="77jjuPI6PYX" role="33vP2m">
              <node concept="3uibUv" id="77jjuPI6PYY" role="10QFUM">
                <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
              </node>
              <node concept="2OqwBi" id="77jjuPI6PYZ" role="10QFUP">
                <node concept="37vLTw" id="77jjuPI6PZ0" role="2Oq$k0">
                  <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="77jjuPI6PZ1" role="2OqNvi">
                  <ref role="37wK5l" to="srng:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jjuPI72Ip" role="3cqZAp">
          <node concept="3cpWsn" id="77jjuPI72Is" role="3cpWs9">
            <property role="TrG5h" value="errorCells" />
            <property role="3TUv4t" value="true" />
            <node concept="2hMVRd" id="77jjuPI72Il" role="1tU5fm">
              <node concept="3uibUv" id="77jjuPI7eFl" role="2hN53Y">
                <ref role="3uigEE" to="jsgz:~EditorCell" resolve="EditorCell" />
              </node>
            </node>
            <node concept="2ShNRf" id="77jjuPI7fKB" role="33vP2m">
              <node concept="2i4dXS" id="77jjuPI7fJY" role="2ShVmc">
                <node concept="3uibUv" id="77jjuPI7fJZ" role="HW$YZ">
                  <ref role="3uigEE" to="jsgz:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="2OqwBi" id="77jjuPI70rp" role="I$8f6">
                  <node concept="2OqwBi" id="77jjuPI6VXU" role="2Oq$k0">
                    <node concept="37vLTw" id="77jjuPI6V0_" role="2Oq$k0">
                      <ref role="3cqZAo" node="77jjuPI6PYW" resolve="editorComponent" />
                    </node>
                    <node concept="liA8E" id="77jjuPI70m7" role="2OqNvi">
                      <ref role="37wK5l" to="9a8:~EditorComponent.getCellTracker():jetbrains.mps.nodeEditor.CellTracker" resolve="getCellTracker" />
                    </node>
                  </node>
                  <node concept="liA8E" id="77jjuPI70Y6" role="2OqNvi">
                    <ref role="37wK5l" to="9a8:~CellTracker.getErrorCells():java.util.Set" resolve="getErrorCells" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="77jjuPI9P0N" role="3cqZAp" />
        <node concept="3cpWs8" id="4InNjD1KSMZ" role="3cqZAp">
          <node concept="3cpWsn" id="4InNjD1KSMX" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="wasForceAutofix" />
            <node concept="10P_77" id="4InNjD1KSZz" role="1tU5fm" />
            <node concept="37vLTw" id="4InNjD1KTl5" role="33vP2m">
              <ref role="3cqZAo" node="4InNjD1KsBA" resolve="myForceAutofix" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4InNjD1KTyq" role="3cqZAp">
          <node concept="37vLTI" id="4InNjD1KTWg" role="3clFbG">
            <node concept="3clFbT" id="4InNjD1KTYC" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="4InNjD1KTyp" role="37vLTJ">
              <ref role="3cqZAo" node="4InNjD1KsBA" resolve="myForceAutofix" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="77jjuPIaCrL" role="3cqZAp" />
        <node concept="3clFbF" id="4yGUxUwBVwm" role="3cqZAp">
          <node concept="2OqwBi" id="4yGUxUwBVwB" role="3clFbG">
            <node concept="2YIFZM" id="4yGUxUwBVwo" role="2Oq$k0">
              <ref role="1Pybhc" to="cu2c:~ModelAccess" resolve="ModelAccess" />
              <ref role="37wK5l" to="cu2c:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
            </node>
            <node concept="liA8E" id="4yGUxUwBXfg" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~ModelCommandExecutor.runWriteInEDT(java.lang.Runnable):void" resolve="runWriteInEDT" />
              <node concept="2ShNRf" id="4yGUxUwBXfh" role="37wK5m">
                <node concept="YeOm9" id="4yGUxUwBXfl" role="2ShVmc">
                  <node concept="1Y3b0j" id="4yGUxUwBXfm" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="e2lb:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="4yGUxUwBXfn" role="1B3o_S" />
                    <node concept="3clFb_" id="4yGUxUwBXfo" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="4yGUxUwBXfp" role="1B3o_S" />
                      <node concept="3cqZAl" id="4yGUxUwBXfq" role="3clF45" />
                      <node concept="3clFbS" id="4yGUxUwBXfr" role="3clF47">
                        <node concept="3clFbF" id="4zbx9kG0nu9" role="3cqZAp">
                          <node concept="2OqwBi" id="4zbx9kG0nuq" role="3clFbG">
                            <node concept="2OqwBi" id="2eZyLQFyXif" role="2Oq$k0">
                              <node concept="37vLTw" id="2eZyLQFyWY0" role="2Oq$k0">
                                <ref role="3cqZAo" node="77jjuPIaTzS" resolve="project" />
                              </node>
                              <node concept="liA8E" id="2eZyLQFyXYT" role="2OqNvi">
                                <ref role="37wK5l" to="vsqj:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4zbx9kG0nuv" role="2OqNvi">
                              <ref role="37wK5l" to="88zw:~ModelAccess.executeUndoTransparentCommand(java.lang.Runnable):void" resolve="executeUndoTransparentCommand" />
                              <node concept="2ShNRf" id="4zbx9kG0nuw" role="37wK5m">
                                <node concept="YeOm9" id="4zbx9kG0nu$" role="2ShVmc">
                                  <node concept="1Y3b0j" id="4zbx9kG0nu_" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <ref role="1Y3XeK" to="e2lb:~Runnable" resolve="Runnable" />
                                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                                    <node concept="3Tm1VV" id="4zbx9kG0nuA" role="1B3o_S" />
                                    <node concept="3clFb_" id="4zbx9kG0nuB" role="jymVt">
                                      <property role="IEkAT" value="false" />
                                      <property role="1EzhhJ" value="false" />
                                      <property role="TrG5h" value="run" />
                                      <property role="DiZV1" value="false" />
                                      <node concept="3Tm1VV" id="4zbx9kG0nuC" role="1B3o_S" />
                                      <node concept="3cqZAl" id="4zbx9kG0nuD" role="3clF45" />
                                      <node concept="3clFbS" id="4zbx9kG0nuE" role="3clF47">
                                        <node concept="3SKdUt" id="5za6mIwpIV" role="3cqZAp">
                                          <node concept="3SKdUq" id="5za6mIwpN7" role="3SKWNk">
                                            <property role="3SKdUp" value="in case this becomes a performance bottleneck, consider reusing the editor's typechecking context " />
                                          </node>
                                        </node>
                                        <node concept="3SKdUt" id="O8oyeD$ys2" role="3cqZAp">
                                          <node concept="3SKWN0" id="O8oyeD$ys3" role="3SKWNk">
                                            <node concept="3clFbF" id="41PEaLtAynR" role="3SKWNf">
                                              <node concept="2OqwBi" id="41PEaLtAynS" role="3clFbG">
                                                <node concept="2YIFZM" id="41PEaLtAynT" role="2Oq$k0">
                                                  <ref role="37wK5l" to="5ijk:1$3BPv3Ve2T" resolve="getInstance" />
                                                  <ref role="1Pybhc" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                                                </node>
                                                <node concept="liA8E" id="41PEaLtAyo5" role="2OqNvi">
                                                  <ref role="37wK5l" to="5ijk:1$3BPv3VNK8" resolve="resolveScopesOnly" />
                                                  <node concept="37vLTw" id="3GM_nagTrWg" role="37wK5m">
                                                    <ref role="3cqZAo" node="4InNjD1EUo0" resolve="badReferences" />
                                                  </node>
                                                  <node concept="2OqwBi" id="1QnJaNXORRn" role="37wK5m">
                                                    <node concept="37vLTw" id="1QnJaNXORRo" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="4nkKl$KPUHL" resolve="editorContext" />
                                                    </node>
                                                    <node concept="liA8E" id="1QnJaNXORRp" role="2OqNvi">
                                                      <ref role="37wK5l" to="srng:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="77jjuPIb4zV" role="3cqZAp">
                                          <node concept="3cpWsn" id="77jjuPIb4zY" role="3cpWs9">
                                            <property role="TrG5h" value="doRecheckEditor" />
                                            <node concept="10P_77" id="77jjuPIb4zT" role="1tU5fm" />
                                            <node concept="3clFbT" id="77jjuPIb6dr" role="33vP2m">
                                              <property role="3clFbU" value="false" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3SKdUt" id="77jjuPIc_54" role="3cqZAp">
                                          <node concept="3SKdUq" id="77jjuPIc_Gc" role="3SKWNk">
                                            <property role="3SKdUp" value="Trying to resolve all broken references using scope and then using substitute actions." />
                                          </node>
                                        </node>
                                        <node concept="2Gpval" id="77jjuPI7hAE" role="3cqZAp">
                                          <node concept="2GrKxI" id="77jjuPI7hAG" role="2Gsz3X">
                                            <property role="TrG5h" value="brokenRef" />
                                          </node>
                                          <node concept="37vLTw" id="77jjuPI7i1v" role="2GsD0m">
                                            <ref role="3cqZAo" node="77jjuPIaIHk" resolve="badReferences" />
                                          </node>
                                          <node concept="3clFbS" id="77jjuPI7hAK" role="2LFqv$">
                                            <node concept="3cpWs8" id="77jjuPI7xEw" role="3cqZAp">
                                              <node concept="3cpWsn" id="77jjuPI7xEx" role="3cpWs9">
                                                <property role="TrG5h" value="resolvedBySope" />
                                                <node concept="10P_77" id="77jjuPI7xDH" role="1tU5fm" />
                                                <node concept="2OqwBi" id="77jjuPI7xEy" role="33vP2m">
                                                  <node concept="2YIFZM" id="77jjuPI7xEz" role="2Oq$k0">
                                                    <ref role="1Pybhc" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                                                    <ref role="37wK5l" to="5ijk:1$3BPv3Ve2T" resolve="getInstance" />
                                                  </node>
                                                  <node concept="liA8E" id="77jjuPI7xE$" role="2OqNvi">
                                                    <ref role="37wK5l" to="5ijk:2uxkWp9XZ7U" resolve="resolveScopesOnly" />
                                                    <node concept="2GrUjf" id="77jjuPI7xE_" role="37wK5m">
                                                      <ref role="2Gs0qQ" node="77jjuPI7hAG" resolve="brokenRef" />
                                                    </node>
                                                    <node concept="2OqwBi" id="77jjuPI7xEA" role="37wK5m">
                                                      <node concept="37vLTw" id="77jjuPI7xEB" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
                                                      </node>
                                                      <node concept="liA8E" id="77jjuPI7xEC" role="2OqNvi">
                                                        <ref role="37wK5l" to="srng:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="77jjuPI7lsO" role="3cqZAp">
                                              <node concept="3cpWsn" id="77jjuPI7lsP" role="3cpWs9">
                                                <property role="TrG5h" value="sourceNode" />
                                                <node concept="2OqwBi" id="77jjuPI7lsQ" role="33vP2m">
                                                  <node concept="liA8E" id="77jjuPI7lsR" role="2OqNvi">
                                                    <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                                                  </node>
                                                  <node concept="2GrUjf" id="77jjuPI7lsS" role="2Oq$k0">
                                                    <ref role="2Gs0qQ" node="77jjuPI7hAG" resolve="brokenRef" />
                                                  </node>
                                                </node>
                                                <node concept="3uibUv" id="77jjuPI7lsT" role="1tU5fm">
                                                  <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="77jjuPI7$C2" role="3cqZAp">
                                              <node concept="3clFbS" id="77jjuPI7$C3" role="3clFbx">
                                                <node concept="3N13vt" id="77jjuPI7JYA" role="3cqZAp" />
                                              </node>
                                              <node concept="3clFbC" id="77jjuPI7$C5" role="3clFbw">
                                                <node concept="37vLTw" id="77jjuPI7$C6" role="3uHU7B">
                                                  <ref role="3cqZAo" node="77jjuPI7lsP" resolve="sourceNode" />
                                                </node>
                                                <node concept="10Nm6u" id="77jjuPI7$C7" role="3uHU7w" />
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="77jjuPI7p1r" role="3cqZAp">
                                              <node concept="3cpWsn" id="77jjuPI7p1s" role="3cpWs9">
                                                <property role="TrG5h" value="referenceRole" />
                                                <node concept="17QB3L" id="77jjuPI7q68" role="1tU5fm" />
                                                <node concept="2OqwBi" id="77jjuPI7p1t" role="33vP2m">
                                                  <node concept="2GrUjf" id="77jjuPI7p1u" role="2Oq$k0">
                                                    <ref role="2Gs0qQ" node="77jjuPI7hAG" resolve="brokenRef" />
                                                  </node>
                                                  <node concept="liA8E" id="77jjuPI7p1v" role="2OqNvi">
                                                    <ref role="37wK5l" to="ec5l:~SReference.getRole():java.lang.String" resolve="getRole" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="77jjuPI7klw" role="3cqZAp">
                                              <node concept="3cpWsn" id="77jjuPI7klx" role="3cpWs9">
                                                <property role="TrG5h" value="cellWithRole" />
                                                <node concept="3uibUv" id="77jjuPI8Mg5" role="1tU5fm">
                                                  <ref role="3uigEE" to="jsgz:~EditorCell" resolve="EditorCell" />
                                                </node>
                                                <node concept="2OqwBi" id="77jjuPI7klz" role="33vP2m">
                                                  <node concept="37vLTw" id="77jjuPI7kl$" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="77jjuPI6PYW" resolve="editorComponent" />
                                                  </node>
                                                  <node concept="liA8E" id="77jjuPI7kl_" role="2OqNvi">
                                                    <ref role="37wK5l" to="9a8:~EditorComponent.findNodeCellWithRole(org.jetbrains.mps.openapi.model.SNode,java.lang.String):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCellWithRole" />
                                                    <node concept="37vLTw" id="77jjuPI7klA" role="37wK5m">
                                                      <ref role="3cqZAo" node="77jjuPI7lsP" resolve="sourceNode" />
                                                    </node>
                                                    <node concept="37vLTw" id="77jjuPI7klB" role="37wK5m">
                                                      <ref role="3cqZAo" node="77jjuPI7p1s" resolve="referenceRole" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="77jjuPI7AYG" role="3cqZAp">
                                              <node concept="3clFbS" id="77jjuPI7AYJ" role="3clFbx">
                                                <node concept="3clFbJ" id="77jjuPI7P7h" role="3cqZAp">
                                                  <node concept="3clFbS" id="77jjuPI7P7i" role="3clFbx">
                                                    <node concept="3N13vt" id="77jjuPI7XfA" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3clFbC" id="77jjuPI7P7l" role="3clFbw">
                                                    <node concept="10Nm6u" id="77jjuPI7P7m" role="3uHU7w" />
                                                    <node concept="37vLTw" id="77jjuPI7P7n" role="3uHU7B">
                                                      <ref role="3cqZAo" node="77jjuPI7klx" resolve="cellWithRole" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="77jjuPI7CJ8" role="3cqZAp">
                                                  <node concept="3cpWsn" id="77jjuPI7CJ9" role="3cpWs9">
                                                    <property role="TrG5h" value="resolveInfo" />
                                                    <property role="3TUv4t" value="false" />
                                                    <node concept="17QB3L" id="77jjuPI7CJa" role="1tU5fm" />
                                                    <node concept="2YIFZM" id="77jjuPI7CJb" role="33vP2m">
                                                      <ref role="1Pybhc" to="5ijk:4InNjD1Imxv" resolve="ReferenceResolverUtils" />
                                                      <ref role="37wK5l" to="5ijk:4InNjD1Gkh4" resolve="getResolveInfo" />
                                                      <node concept="2GrUjf" id="77jjuPI7CJc" role="37wK5m">
                                                        <ref role="2Gs0qQ" node="77jjuPI7hAG" resolve="brokenRef" />
                                                      </node>
                                                      <node concept="37vLTw" id="77jjuPI7CJd" role="37wK5m">
                                                        <ref role="3cqZAo" node="77jjuPI7lsP" resolve="sourceNode" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="77jjuPI7CJe" role="3cqZAp">
                                                  <node concept="3clFbS" id="77jjuPI7CJf" role="3clFbx">
                                                    <node concept="3N13vt" id="77jjuPI7KIF" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3clFbC" id="77jjuPI7CJh" role="3clFbw">
                                                    <node concept="10Nm6u" id="77jjuPI7CJi" role="3uHU7w" />
                                                    <node concept="37vLTw" id="77jjuPI7CJj" role="3uHU7B">
                                                      <ref role="3cqZAo" node="77jjuPI7CJ9" resolve="resolveInfo" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbH" id="77jjuPIbdVp" role="3cqZAp" />
                                                <node concept="3clFbJ" id="77jjuPIcl9v" role="3cqZAp">
                                                  <node concept="3clFbS" id="77jjuPIcl9y" role="3clFbx">
                                                    <node concept="3clFbF" id="77jjuPIb7dd" role="3cqZAp">
                                                      <node concept="37vLTI" id="77jjuPIb8Pg" role="3clFbG">
                                                        <node concept="3clFbT" id="77jjuPIb8Qj" role="37vLTx">
                                                          <property role="3clFbU" value="true" />
                                                        </node>
                                                        <node concept="37vLTw" id="77jjuPIb7dc" role="37vLTJ">
                                                          <ref role="3cqZAo" node="77jjuPIb4zY" resolve="doRecheckEditor" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="2YIFZM" id="77jjuPIcl_X" role="3clFbw">
                                                    <ref role="37wK5l" node="77jjuPIbobs" resolve="substituteCell" />
                                                    <ref role="1Pybhc" node="4InNjD1Gavm" resolve="EditorBasedReferenceResolverUtils" />
                                                    <node concept="37vLTw" id="77jjuPIclBz" role="37wK5m">
                                                      <ref role="3cqZAo" node="77jjuPI7klx" resolve="cellWithRole" />
                                                    </node>
                                                    <node concept="37vLTw" id="77jjuPIclF2" role="37wK5m">
                                                      <ref role="3cqZAo" node="77jjuPI7CJ9" resolve="resolveInfo" />
                                                    </node>
                                                    <node concept="37vLTw" id="77jjuPIcmbl" role="37wK5m">
                                                      <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3fqX7Q" id="77jjuPI7BKi" role="3clFbw">
                                                <node concept="37vLTw" id="77jjuPI7C43" role="3fr31v">
                                                  <ref role="3cqZAo" node="77jjuPI7xEx" resolve="resolvedBySope" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3SKdUt" id="77jjuPIcGB0" role="3cqZAp">
                                              <node concept="3SKdUq" id="77jjuPIcGNa" role="3SKWNk">
                                                <property role="3SKdUp" value="excluding reference cell which was substituted from the set of error cells" />
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="77jjuPI8bqO" role="3cqZAp">
                                              <node concept="2OqwBi" id="77jjuPI8caD" role="3clFbG">
                                                <node concept="37vLTw" id="77jjuPI8bqN" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="77jjuPI72Is" resolve="errorCells" />
                                                </node>
                                                <node concept="3dhRuq" id="77jjuPI8dBW" role="2OqNvi">
                                                  <node concept="37vLTw" id="77jjuPI8e8J" role="25WWJ7">
                                                    <ref role="3cqZAo" node="77jjuPI7klx" resolve="cellWithRole" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbH" id="77jjuPIc_M9" role="3cqZAp" />
                                        <node concept="3SKdUt" id="77jjuPIcBqC" role="3cqZAp">
                                          <node concept="3SKdUq" id="77jjuPIcBqD" role="3SKWNk">
                                            <property role="3SKdUp" value="Trying to substitute all other error cells by using substitute actions." />
                                          </node>
                                        </node>
                                        <node concept="2Gpval" id="77jjuPI8QSc" role="3cqZAp">
                                          <node concept="2GrKxI" id="77jjuPI8QSe" role="2Gsz3X">
                                            <property role="TrG5h" value="errorCell" />
                                          </node>
                                          <node concept="37vLTw" id="77jjuPI8R_v" role="2GsD0m">
                                            <ref role="3cqZAo" node="77jjuPI72Is" resolve="errorCells" />
                                          </node>
                                          <node concept="3clFbS" id="77jjuPI8QSi" role="2LFqv$">
                                            <node concept="3clFbJ" id="6DlBjfYwSJz" role="3cqZAp">
                                              <node concept="3clFbS" id="6DlBjfYwSJA" role="3clFbx">
                                                <node concept="3N13vt" id="6DlBjfYwXma" role="3cqZAp" />
                                              </node>
                                              <node concept="3fqX7Q" id="6DlBjfYwWMT" role="3clFbw">
                                                <node concept="2ZW3vV" id="6DlBjfYwWMV" role="3fr31v">
                                                  <node concept="3uibUv" id="6DlBjfYwWMW" role="2ZW6by">
                                                    <ref role="3uigEE" to="nu8v:~EditorCell_Label" resolve="EditorCell_Label" />
                                                  </node>
                                                  <node concept="2GrUjf" id="6DlBjfYwWMX" role="2ZW6bz">
                                                    <ref role="2Gs0qQ" node="77jjuPI8QSe" resolve="errorCell" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="6DlBjfYx08L" role="3cqZAp">
                                              <node concept="3cpWsn" id="6DlBjfYx08M" role="3cpWs9">
                                                <property role="TrG5h" value="labelErrorCell" />
                                                <node concept="3uibUv" id="6DlBjfYx08F" role="1tU5fm">
                                                  <ref role="3uigEE" to="nu8v:~EditorCell_Label" resolve="EditorCell_Label" />
                                                </node>
                                                <node concept="10QFUN" id="6DlBjfYx08N" role="33vP2m">
                                                  <node concept="3uibUv" id="6DlBjfYx08O" role="10QFUM">
                                                    <ref role="3uigEE" to="nu8v:~EditorCell_Label" resolve="EditorCell_Label" />
                                                  </node>
                                                  <node concept="2GrUjf" id="6DlBjfYx08P" role="10QFUP">
                                                    <ref role="2Gs0qQ" node="77jjuPI8QSe" resolve="errorCell" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="6DlBjfYx6nB" role="3cqZAp">
                                              <node concept="3cpWsn" id="6DlBjfYx6nC" role="3cpWs9">
                                                <property role="TrG5h" value="errorText" />
                                                <node concept="17QB3L" id="6DlBjfYxa8F" role="1tU5fm" />
                                                <node concept="2OqwBi" id="6DlBjfYx6nD" role="33vP2m">
                                                  <node concept="37vLTw" id="6DlBjfYx6nE" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="6DlBjfYx08M" resolve="labelErrorCell" />
                                                  </node>
                                                  <node concept="liA8E" id="6DlBjfYx6nF" role="2OqNvi">
                                                    <ref role="37wK5l" to="nu8v:~EditorCell_Label.getText():java.lang.String" resolve="getText" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="6DlBjfYx7Mp" role="3cqZAp">
                                              <node concept="3clFbS" id="6DlBjfYx7Ms" role="3clFbx">
                                                <node concept="3N13vt" id="6DlBjfYx9hx" role="3cqZAp" />
                                              </node>
                                              <node concept="2OqwBi" id="6DlBjfYx8te" role="3clFbw">
                                                <node concept="37vLTw" id="6DlBjfYx81j" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6DlBjfYx6nC" resolve="errorText" />
                                                </node>
                                                <node concept="17RlXB" id="6DlBjfYxbjn" role="2OqNvi" />
                                              </node>
                                            </node>
                                            <node concept="3clFbH" id="77jjuPIcpAl" role="3cqZAp" />
                                            <node concept="3clFbJ" id="77jjuPIcpNm" role="3cqZAp">
                                              <node concept="3clFbS" id="77jjuPIcpNp" role="3clFbx">
                                                <node concept="3clFbF" id="77jjuPIcq8n" role="3cqZAp">
                                                  <node concept="37vLTI" id="77jjuPIcqgf" role="3clFbG">
                                                    <node concept="3clFbT" id="77jjuPIcqh6" role="37vLTx">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                    <node concept="37vLTw" id="77jjuPIcq8m" role="37vLTJ">
                                                      <ref role="3cqZAo" node="77jjuPIb4zY" resolve="doRecheckEditor" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2YIFZM" id="77jjuPIcpWm" role="3clFbw">
                                                <ref role="37wK5l" node="77jjuPIbobs" resolve="substituteCell" />
                                                <ref role="1Pybhc" node="4InNjD1Gavm" resolve="EditorBasedReferenceResolverUtils" />
                                                <node concept="37vLTw" id="77jjuPIcpY2" role="37wK5m">
                                                  <ref role="3cqZAo" node="6DlBjfYx08M" resolve="labelErrorCell" />
                                                </node>
                                                <node concept="37vLTw" id="77jjuPIcq19" role="37wK5m">
                                                  <ref role="3cqZAo" node="6DlBjfYx6nC" resolve="errorText" />
                                                </node>
                                                <node concept="37vLTw" id="77jjuPIcq51" role="37wK5m">
                                                  <ref role="3cqZAo" node="77jjuPIalUF" resolve="editorContext" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbH" id="77jjuPI97Ur" role="3cqZAp" />
                                        <node concept="3clFbJ" id="4InNjD1KYbh" role="3cqZAp">
                                          <node concept="3clFbS" id="4InNjD1KYbk" role="3clFbx">
                                            <node concept="3SKdUt" id="4InNjD1KZAj" role="3cqZAp">
                                              <node concept="3SKdUq" id="4InNjD1KZIY" role="3SKWNk">
                                                <property role="3SKdUp" value="re-running next checker in force autofix mode" />
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="4InNjD1KYVi" role="3cqZAp">
                                              <node concept="37vLTI" id="4InNjD1KZ4m" role="3clFbG">
                                                <node concept="3clFbT" id="4InNjD1KZ6g" role="37vLTx">
                                                  <property role="3clFbU" value="true" />
                                                </node>
                                                <node concept="37vLTw" id="4InNjD1KYVh" role="37vLTJ">
                                                  <ref role="3cqZAo" node="4InNjD1KsBA" resolve="myForceAutofix" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="1Wc70l" id="77jjuPIbbSm" role="3clFbw">
                                            <node concept="37vLTw" id="77jjuPIbcQh" role="3uHU7B">
                                              <ref role="3cqZAo" node="77jjuPIb4zY" resolve="doRecheckEditor" />
                                            </node>
                                            <node concept="37vLTw" id="4InNjD1KYuj" role="3uHU7w">
                                              <ref role="3cqZAo" node="4InNjD1KSMX" resolve="wasForceAutofix" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2AHcQZ" id="3tYsUK_t6j_" role="2AJF6D">
                                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_t3S5" role="2AJF6D">
                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
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
    <node concept="3clFb_" id="4nkKl$KPUMr" role="jymVt">
      <property role="TrG5h" value="collectBadReferences" />
      <node concept="3Tm6S6" id="4nkKl$KPUMs" role="1B3o_S" />
      <node concept="2hMVRd" id="51UVhLlXuwY" role="3clF45">
        <node concept="3uibUv" id="41PEaLtBbI9" role="2hN53Y">
          <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="37vLTG" id="4nkKl$KPUMv" role="3clF46">
        <property role="TrG5h" value="cellNode" />
        <node concept="3Tqbb2" id="4$0H1w_YZHQ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4nkKl$KPUMx" role="3clF47">
        <node concept="3clFbF" id="4$0H1w_YZKa" role="3cqZAp">
          <node concept="2YIFZM" id="4$0H1w_YZKb" role="3clFbG">
            <ref role="37wK5l" to="cu2c:~SReference.disableLogging():void" resolve="disableLogging" />
            <ref role="1Pybhc" to="cu2c:~SReference" resolve="SReference" />
          </node>
        </node>
        <node concept="2GUZhq" id="4$0H1w_YZKk" role="3cqZAp">
          <node concept="3clFbS" id="4$0H1w_YZKl" role="2GV8ay">
            <node concept="3cpWs8" id="51UVhLlXuwA" role="3cqZAp">
              <node concept="3cpWsn" id="51UVhLlXuwB" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="2hMVRd" id="51UVhLlXuwC" role="1tU5fm">
                  <node concept="3uibUv" id="41PEaLtBbIa" role="2hN53Y">
                    <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                  </node>
                </node>
                <node concept="2ShNRf" id="51UVhLlXuwG" role="33vP2m">
                  <node concept="32HrFt" id="51UVhLlXuwH" role="2ShVmc">
                    <node concept="3uibUv" id="41PEaLtBbIc" role="HW$YZ">
                      <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4nkKl$KPUMD" role="3cqZAp">
              <node concept="2YIFZM" id="6OTUdBQPn9e" role="1DdaDG">
                <ref role="1Pybhc" to="ec5l:~SNodeUtil" resolve="SNodeUtil" />
                <ref role="37wK5l" to="ec5l:~SNodeUtil.getDescendants(org.jetbrains.mps.openapi.model.SNode):java.lang.Iterable" resolve="getDescendants" />
                <node concept="2JrnkZ" id="6OTUdBQPqbp" role="37wK5m">
                  <node concept="37vLTw" id="6OTUdBQPqbq" role="2JrQYb">
                    <ref role="3cqZAo" node="4nkKl$KPUMv" resolve="cellNode" />
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4nkKl$KPUMJ" role="1Duv9x">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4$0H1w_YZHR" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="4nkKl$KPUML" role="2LFqv$">
                <node concept="1DcWWT" id="4nkKl$KPUMM" role="3cqZAp">
                  <node concept="2OqwBi" id="4$0H1w_YZIY" role="1DdaDG">
                    <node concept="37vLTw" id="3GM_nagT$wd" role="2Oq$k0">
                      <ref role="3cqZAo" node="4nkKl$KPUMJ" resolve="node" />
                    </node>
                    <node concept="2z74zc" id="4$0H1w_YZJ4" role="2OqNvi" />
                  </node>
                  <node concept="3cpWsn" id="4nkKl$KPUMQ" role="1Duv9x">
                    <property role="TrG5h" value="ref" />
                    <node concept="2z4iKi" id="2euxXH1_FxX" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="4nkKl$KPUMS" role="2LFqv$">
                    <node concept="3clFbJ" id="4nkKl$KPUMT" role="3cqZAp">
                      <node concept="3clFbC" id="4nkKl$KPUMU" role="3clFbw">
                        <node concept="2YIFZM" id="4xPcS81Bzbv" role="3uHU7B">
                          <ref role="37wK5l" to="unno:7Yvyxcb_4ZV" resolve="getTargetNodeSilently" />
                          <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                          <node concept="37vLTw" id="3GM_nagTB3c" role="37wK5m">
                            <ref role="3cqZAo" node="4nkKl$KPUMQ" resolve="ref" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="4nkKl$KPUMY" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="4nkKl$KPUMZ" role="3clFbx">
                        <node concept="3clFbF" id="4nkKl$KPUN0" role="3cqZAp">
                          <node concept="2OqwBi" id="4nkKl$KPUN1" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTzfH" role="2Oq$k0">
                              <ref role="3cqZAo" node="51UVhLlXuwB" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="51UVhLlXuwQ" role="2OqNvi">
                              <node concept="37vLTw" id="3GM_nagTswy" role="25WWJ7">
                                <ref role="3cqZAo" node="4nkKl$KPUMQ" resolve="ref" />
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
            <node concept="3cpWs6" id="4nkKl$KPUN5" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTzyP" role="3cqZAk">
                <ref role="3cqZAo" node="51UVhLlXuwB" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4$0H1w_YZKn" role="2GVbov">
            <node concept="3clFbF" id="4$0H1w_YZKo" role="3cqZAp">
              <node concept="2YIFZM" id="4$0H1w_YZKp" role="3clFbG">
                <ref role="1Pybhc" to="cu2c:~SReference" resolve="SReference" />
                <ref role="37wK5l" to="cu2c:~SReference.enableLogging():void" resolve="enableLogging" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4InNjD1JvOU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isAutofix" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4InNjD1JvOX" role="3clF47">
        <node concept="3cpWs6" id="4InNjD1JGuJ" role="3cqZAp">
          <node concept="1Wc70l" id="4InNjD1K7pS" role="3cqZAk">
            <node concept="1Wc70l" id="4InNjD1KF86" role="3uHU7B">
              <node concept="1Wc70l" id="4InNjD1JUE7" role="3uHU7B">
                <node concept="2ZW3vV" id="4InNjD1JM$y" role="3uHU7B">
                  <node concept="3uibUv" id="4InNjD1JM$z" role="2ZW6by">
                    <ref role="3uigEE" to="ec5l:~EditableSModel" resolve="EditableSModel" />
                  </node>
                  <node concept="37vLTw" id="4InNjD1JM$$" role="2ZW6bz">
                    <ref role="3cqZAo" node="4InNjD1JSz2" resolve="model" />
                  </node>
                </node>
                <node concept="3fqX7Q" id="4InNjD1K6BK" role="3uHU7w">
                  <node concept="2ZW3vV" id="4InNjD1K6BM" role="3fr31v">
                    <node concept="3uibUv" id="6OTUdBQPzNB" role="2ZW6by">
                      <ref role="3uigEE" to="51te:~TransientSModel" resolve="TransientSModel" />
                    </node>
                    <node concept="37vLTw" id="4InNjD1K6BP" role="2ZW6bz">
                      <ref role="3cqZAo" node="4InNjD1JSz2" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="4InNjD1E$a7" role="3uHU7w">
                <ref role="37wK5l" to="5ijk:4InNjD1Enq3" resolve="canExecuteImmediately" />
                <ref role="1Pybhc" to="5ijk:4InNjD1Imxv" resolve="ReferenceResolverUtils" />
                <node concept="37vLTw" id="4InNjD1KGZx" role="37wK5m">
                  <ref role="3cqZAo" node="4InNjD1JSz2" resolve="model" />
                </node>
                <node concept="37vLTw" id="4InNjD1KJm2" role="37wK5m">
                  <ref role="3cqZAo" node="4InNjD1KIbv" resolve="repository" />
                </node>
              </node>
            </node>
            <node concept="1eOMI4" id="4InNjD1KeRK" role="3uHU7w">
              <node concept="22lmx$" id="4InNjD1Kgfm" role="1eOMHV">
                <node concept="37vLTw" id="4InNjD1KznU" role="3uHU7w">
                  <ref role="3cqZAo" node="4InNjD1KsBA" resolve="myForceAutofix" />
                </node>
                <node concept="2OqwBi" id="4InNjD1KfpQ" role="3uHU7B">
                  <node concept="2YIFZM" id="4InNjD1KfpR" role="2Oq$k0">
                    <ref role="37wK5l" to="9a8:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
                    <ref role="1Pybhc" to="9a8:~EditorSettings" resolve="EditorSettings" />
                  </node>
                  <node concept="liA8E" id="4InNjD1KfpS" role="2OqNvi">
                    <ref role="37wK5l" to="9a8:~EditorSettings.isAutoQuickFix():boolean" resolve="isAutoQuickFix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4InNjD1JuYO" role="1B3o_S" />
      <node concept="10P_77" id="4InNjD1JvLw" role="3clF45" />
      <node concept="37vLTG" id="4InNjD1JSz2" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4InNjD1JTcV" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4InNjD1KIbv" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="4InNjD1KISC" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4nkKl$KPUN7" role="jymVt">
      <property role="TrG5h" value="isLaterThan" />
      <node concept="3Tm1VV" id="4nkKl$KPUN8" role="1B3o_S" />
      <node concept="10P_77" id="4nkKl$KPUN9" role="3clF45" />
      <node concept="37vLTG" id="4nkKl$KPUNa" role="3clF46">
        <property role="TrG5h" value="editorChecker" />
        <node concept="3uibUv" id="4nkKl$KPUNb" role="1tU5fm">
          <ref role="3uigEE" to="l62w:~BaseEditorChecker" resolve="BaseEditorChecker" />
        </node>
      </node>
      <node concept="3clFbS" id="4nkKl$KPUNc" role="3clF47">
        <node concept="3cpWs6" id="4nkKl$KPUNd" role="3cqZAp">
          <node concept="2ZW3vV" id="4nkKl$KPUNe" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxgm8Vk" role="2ZW6bz">
              <ref role="3cqZAo" node="4nkKl$KPUNa" resolve="editorChecker" />
            </node>
            <node concept="3uibUv" id="4nkKl$KPUNg" role="2ZW6by">
              <ref role="3uigEE" to="qstq:~TypesEditorChecker" resolve="TypesEditorChecker" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_t446" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4InNjD1KlLi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="resetCheckerState" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="4InNjD1KlLj" role="1B3o_S" />
      <node concept="3cqZAl" id="4InNjD1KlLl" role="3clF45" />
      <node concept="3clFbS" id="4InNjD1KlLn" role="3clF47">
        <node concept="3clFbF" id="4InNjD1K$u4" role="3cqZAp">
          <node concept="37vLTI" id="4InNjD1K$F5" role="3clFbG">
            <node concept="3clFbT" id="4InNjD1K$Sn" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="4InNjD1K$u3" role="37vLTJ">
              <ref role="3cqZAo" node="4InNjD1KsBA" resolve="myForceAutofix" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4InNjD1KlLq" role="3cqZAp">
          <node concept="3nyPlj" id="4InNjD1KlLp" role="3clFbG">
            <ref role="37wK5l" to="l62w:~BaseEditorChecker.resetCheckerState():void" resolve="resetCheckerState" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4InNjD1KlLo" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3QLS5v_c6Bm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isPropertyEventDramatical" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="3QLS5v_c6Bn" role="1B3o_S" />
      <node concept="10P_77" id="3QLS5v_c6Bp" role="3clF45" />
      <node concept="37vLTG" id="3QLS5v_c6Bq" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="3QLS5v_c6Br" role="1tU5fm">
          <ref role="3uigEE" to="87kw:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="3QLS5v_c6Bs" role="3clF47">
        <node concept="3clFbJ" id="3QLS5v_c9vL" role="3cqZAp">
          <node concept="3clFbS" id="3QLS5v_c9vO" role="3clFbx">
            <node concept="3cpWs6" id="3QLS5v_cdCS" role="3cqZAp">
              <node concept="3clFbT" id="3QLS5v_celK" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3QLS5v_ca$B" role="3clFbw">
            <node concept="2OqwBi" id="3QLS5v_c1$7" role="3uHU7B">
              <node concept="2YIFZM" id="3QLS5v_c1$8" role="2Oq$k0">
                <ref role="1Pybhc" to="9a8:~EditorSettings" resolve="EditorSettings" />
                <ref role="37wK5l" to="9a8:~EditorSettings.getInstance():jetbrains.mps.nodeEditor.EditorSettings" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="3QLS5v_c1$9" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorSettings.isAutoQuickFix():boolean" resolve="isAutoQuickFix" />
              </node>
            </node>
            <node concept="2OqwBi" id="3QLS5v_ccjW" role="3uHU7w">
              <node concept="pqAIu" id="3QLS5v_cb2G" role="2Oq$k0">
                <ref role="pqAIh" to="tpck:h0TrEE$" resolve="INamedConcept" />
                <ref role="pqAIg" to="tpck:h0TrG11" resolve="name" />
              </node>
              <node concept="liA8E" id="3QLS5v_cd7m" role="2OqNvi">
                <ref role="37wK5l" to="e2lb:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="2OqwBi" id="3QLS5v_caBN" role="37wK5m">
                  <node concept="37vLTw" id="3QLS5v_caAi" role="2Oq$k0">
                    <ref role="3cqZAo" node="3QLS5v_c6Bq" resolve="event" />
                  </node>
                  <node concept="liA8E" id="3QLS5v_caVQ" role="2OqNvi">
                    <ref role="37wK5l" to="87kw:~SModelPropertyEvent.getPropertyName():java.lang.String" resolve="getPropertyName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3QLS5v_c8Oz" role="3cqZAp">
          <node concept="3nyPlj" id="3QLS5v_c6Bv" role="3cqZAk">
            <ref role="37wK5l" to="l62w:~EditorCheckerAdapter.isPropertyEventDramatical(jetbrains.mps.smodel.event.SModelPropertyEvent):boolean" resolve="isPropertyEventDramatical" />
            <node concept="37vLTw" id="3QLS5v_c6Bu" role="37wK5m">
              <ref role="3cqZAo" node="3QLS5v_c6Bq" resolve="event" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3QLS5v_c6Bt" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="4nkKl$KPUHw" role="1zkMxy">
      <ref role="3uigEE" to="l62w:~EditorCheckerAdapter" resolve="EditorCheckerAdapter" />
    </node>
    <node concept="3Tm1VV" id="4nkKl$KPUHx" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2uxkWp9VnLc">
    <property role="TrG5h" value="RefScopeCheckerInEditor" />
    <node concept="312cEg" id="2uxkWp9VPHu" role="jymVt">
      <property role="TrG5h" value="myEditorComponent" />
      <node concept="3Tm6S6" id="2uxkWp9VPHv" role="1B3o_S" />
      <node concept="3uibUv" id="2uxkWp9XknH" role="1tU5fm">
        <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="2uxkWp9VPot" role="jymVt">
      <property role="TrG5h" value="setEditorComponent" />
      <node concept="3cqZAl" id="2uxkWp9VPov" role="3clF45" />
      <node concept="3clFbS" id="2uxkWp9VPox" role="3clF47">
        <node concept="3clFbF" id="2uxkWp9VQh9" role="3cqZAp">
          <node concept="37vLTI" id="2uxkWp9VQiH" role="3clFbG">
            <node concept="37vLTw" id="2uxkWp9VQjP" role="37vLTx">
              <ref role="3cqZAo" node="2uxkWp9VPp8" resolve="editorContext" />
            </node>
            <node concept="37vLTw" id="2uxkWp9VQh8" role="37vLTJ">
              <ref role="3cqZAo" node="2uxkWp9VPHu" resolve="myEditorComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2uxkWp9VPp8" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="2uxkWp9XkJr" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2uxkWp9VQCx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createResolveReferenceQuickfix" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="2uxkWp9VQCy" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="2uxkWp9VQCz" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2uxkWp9VQC$" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2uxkWp9VQC_" role="1tU5fm">
          <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2uxkWp9VQCA" role="3clF46">
        <property role="TrG5h" value="executeImmediately" />
        <node concept="10P_77" id="2uxkWp9VQCB" role="1tU5fm" />
      </node>
      <node concept="3Tmbuc" id="2uxkWp9VQCJ" role="1B3o_S" />
      <node concept="3uibUv" id="2uxkWp9VQCK" role="3clF45">
        <ref role="3uigEE" to="nax5:~QuickFixProvider" resolve="QuickFixProvider" />
      </node>
      <node concept="3clFbS" id="2uxkWp9VQCL" role="3clF47">
        <node concept="3cpWs6" id="2uxkWp9Xu1n" role="3cqZAp">
          <node concept="2ShNRf" id="2uxkWp9Xulw" role="3cqZAk">
            <node concept="1pGfFk" id="2uxkWp9Xvty" role="2ShVmc">
              <ref role="37wK5l" node="1$3BPv3W06F" resolve="RefScopeCheckerInEditor.ResolveReferenceEditorBasedQuickFix" />
              <node concept="37vLTw" id="2uxkWp9Xwe_" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9VQCy" resolve="reference" />
              </node>
              <node concept="37vLTw" id="2uxkWp9XwS2" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9VQC$" resolve="repository" />
              </node>
              <node concept="37vLTw" id="2uxkWp9XxxK" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9VQCA" resolve="executeImmediately" />
              </node>
              <node concept="37vLTw" id="2uxkWp9Xzoe" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9VPHu" resolve="myEditorComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2uxkWp9VQCM" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3g$f7gt$grD" role="jymVt" />
    <node concept="312cEu" id="1$3BPv3W06D" role="jymVt">
      <property role="TrG5h" value="ResolveReferenceEditorBasedQuickFix" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="2uxkWp9XtiP" role="1B3o_S" />
      <node concept="312cEg" id="2uxkWp9XE1r" role="jymVt">
        <property role="TrG5h" value="myEditorComponent" />
        <node concept="3Tm6S6" id="2uxkWp9XE1s" role="1B3o_S" />
        <node concept="3uibUv" id="2uxkWp9XE1t" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="2tJIrI" id="2uxkWp9XG3A" role="jymVt" />
      <node concept="3clFbW" id="1$3BPv3W06F" role="jymVt">
        <node concept="3cqZAl" id="1$3BPv3W06G" role="3clF45" />
        <node concept="3Tm1VV" id="1$3BPv3W06H" role="1B3o_S" />
        <node concept="3clFbS" id="1$3BPv3W06I" role="3clF47">
          <node concept="XkiVB" id="5s7RUu7MsWg" role="3cqZAp">
            <ref role="37wK5l" to="wsw7:1$3BPv3W06F" resolve="RefScopeChecker.ResolveReferenceQuickFix" />
            <node concept="37vLTw" id="5s7RUu7Mtzb" role="37wK5m">
              <ref role="3cqZAo" node="1$3BPv3W08r" resolve="reference" />
            </node>
            <node concept="37vLTw" id="5s7RUu7Mt$C" role="37wK5m">
              <ref role="3cqZAo" node="1$3BPv3W08t" resolve="repository" />
            </node>
            <node concept="37vLTw" id="5s7RUu7MtAh" role="37wK5m">
              <ref role="3cqZAo" node="5H5gR35TNF0" resolve="executeImmediately" />
            </node>
          </node>
          <node concept="3clFbF" id="2uxkWpa0AG$" role="3cqZAp">
            <node concept="37vLTI" id="2uxkWpa0BlC" role="3clFbG">
              <node concept="37vLTw" id="2uxkWpa0Bzw" role="37vLTx">
                <ref role="3cqZAo" node="2uxkWp9X$v8" resolve="editorComponent" />
              </node>
              <node concept="37vLTw" id="2uxkWpa0AGz" role="37vLTJ">
                <ref role="3cqZAo" node="2uxkWp9XE1r" resolve="myEditorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1$3BPv3W08r" role="3clF46">
          <property role="TrG5h" value="reference" />
          <node concept="3uibUv" id="1$3BPv3W08s" role="1tU5fm">
            <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
          </node>
        </node>
        <node concept="37vLTG" id="1$3BPv3W08t" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="1trd1MrR9dz" role="1tU5fm">
            <ref role="3uigEE" to="88zw:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="5H5gR35TNF0" role="3clF46">
          <property role="TrG5h" value="executeImmediately" />
          <node concept="10P_77" id="5H5gR35TOa$" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2uxkWp9X$v8" role="3clF46">
          <property role="TrG5h" value="editorComponent" />
          <node concept="3uibUv" id="2uxkWp9X_yr" role="1tU5fm">
            <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3W06K" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getQuickFix" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1$3BPv3W06L" role="1B3o_S" />
        <node concept="3uibUv" id="1$3BPv3W06M" role="3clF45">
          <ref role="3uigEE" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
        </node>
        <node concept="3clFbS" id="1$3BPv3W06N" role="3clF47">
          <node concept="3cpWs6" id="1$3BPv3W07J" role="3cqZAp">
            <node concept="2ShNRf" id="1$3BPv3W07L" role="3cqZAk">
              <node concept="YeOm9" id="1$3BPv3W07N" role="2ShVmc">
                <node concept="1Y3b0j" id="1$3BPv3W07O" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="nax5:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                  <ref role="37wK5l" to="nax5:~QuickFix_Runtime.&lt;init&gt;()" resolve="QuickFix_Runtime" />
                  <node concept="3Tm1VV" id="1$3BPv3W07P" role="1B3o_S" />
                  <node concept="3clFb_" id="1$3BPv3W07Q" role="jymVt">
                    <property role="IEkAT" value="false" />
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="execute" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="1$3BPv3W07R" role="1B3o_S" />
                    <node concept="3cqZAl" id="1$3BPv3W07S" role="3clF45" />
                    <node concept="37vLTG" id="1$3BPv3W07T" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3uibUv" id="1$3BPv3W07U" role="1tU5fm">
                        <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1$3BPv3W07V" role="3clF47">
                      <node concept="3clFbJ" id="2uxkWp9Z7hz" role="3cqZAp">
                        <node concept="3clFbS" id="2uxkWp9Z7hA" role="3clFbx">
                          <node concept="3cpWs6" id="2uxkWp9Z9YQ" role="3cqZAp" />
                        </node>
                        <node concept="2OqwBi" id="2uxkWp9Z8_N" role="3clFbw">
                          <node concept="2YIFZM" id="2uxkWp9Z7Xt" role="2Oq$k0">
                            <ref role="1Pybhc" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                            <ref role="37wK5l" to="5ijk:1$3BPv3Ve2T" resolve="getInstance" />
                          </node>
                          <node concept="liA8E" id="2uxkWp9Z9qD" role="2OqNvi">
                            <ref role="37wK5l" to="5ijk:2uxkWp9XZ7U" resolve="resolveScopesOnly" />
                            <node concept="37vLTw" id="2uxkWp9Z9s$" role="37wK5m">
                              <ref role="3cqZAo" to="wsw7:1$3BPv3W08w" resolve="myReference" />
                            </node>
                            <node concept="37vLTw" id="2uxkWp9Z9$y" role="37wK5m">
                              <ref role="3cqZAo" to="wsw7:1$3BPv3W08Z" resolve="myRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2uxkWp9Y5Ao" role="3cqZAp">
                        <node concept="3cpWsn" id="2uxkWp9Y5Ap" role="3cpWs9">
                          <property role="TrG5h" value="sourceNode" />
                          <node concept="2OqwBi" id="2uxkWp9Y5Aq" role="33vP2m">
                            <node concept="liA8E" id="2uxkWp9Y5Ar" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                            </node>
                            <node concept="37vLTw" id="2uxkWpa0iHQ" role="2Oq$k0">
                              <ref role="3cqZAo" to="wsw7:1$3BPv3W08w" resolve="myReference" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="2uxkWp9Y5At" role="1tU5fm">
                            <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2uxkWp9Y5Au" role="3cqZAp">
                        <node concept="3clFbS" id="2uxkWp9Y5Av" role="3clFbx">
                          <node concept="3cpWs6" id="2uxkWp9Y5N9" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="2uxkWp9Y5Ax" role="3clFbw">
                          <node concept="37vLTw" id="2uxkWp9Y5Ay" role="3uHU7B">
                            <ref role="3cqZAo" node="2uxkWp9Y5Ap" resolve="sourceNode" />
                          </node>
                          <node concept="10Nm6u" id="2uxkWp9Y5Az" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="1$3BPv3VZvG" role="3cqZAp">
                        <node concept="3cpWsn" id="1$3BPv3VZvH" role="3cpWs9">
                          <property role="TrG5h" value="resolveInfo" />
                          <property role="3TUv4t" value="true" />
                          <node concept="17QB3L" id="1$3BPv3VZvI" role="1tU5fm" />
                          <node concept="2YIFZM" id="4InNjD1GD0o" role="33vP2m">
                            <ref role="1Pybhc" to="5ijk:4InNjD1Imxv" resolve="ReferenceResolverUtils" />
                            <ref role="37wK5l" to="5ijk:4InNjD1Gkh4" resolve="getResolveInfo" />
                            <node concept="37vLTw" id="4InNjD1GDbt" role="37wK5m">
                              <ref role="3cqZAo" to="wsw7:1$3BPv3W08w" resolve="myReference" />
                            </node>
                            <node concept="37vLTw" id="4InNjD1GDyo" role="37wK5m">
                              <ref role="3cqZAo" node="2uxkWp9Y5Ap" resolve="sourceNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4iZD$dOeqvZ" role="3cqZAp">
                        <node concept="3clFbS" id="4iZD$dOeqw0" role="3clFbx">
                          <node concept="3cpWs6" id="4iZD$dOeqwo" role="3cqZAp" />
                        </node>
                        <node concept="3clFbC" id="4iZD$dOeqwk" role="3clFbw">
                          <node concept="10Nm6u" id="4iZD$dOeqwn" role="3uHU7w" />
                          <node concept="37vLTw" id="3GM_nagTwNm" role="3uHU7B">
                            <ref role="3cqZAo" node="1$3BPv3VZvH" resolve="resolveInfo" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4InNjD1HNfx" role="3cqZAp">
                        <node concept="2YIFZM" id="4InNjD1HNAr" role="3clFbG">
                          <ref role="37wK5l" node="4InNjD1HoV3" resolve="resolveInEditor" />
                          <ref role="1Pybhc" node="4InNjD1Gavm" resolve="EditorBasedReferenceResolverUtils" />
                          <node concept="37vLTw" id="4InNjD1HNRh" role="37wK5m">
                            <ref role="3cqZAo" node="2uxkWp9XE1r" resolve="myEditorComponent" />
                          </node>
                          <node concept="37vLTw" id="4InNjD1HObC" role="37wK5m">
                            <ref role="3cqZAo" node="2uxkWp9Y5Ap" resolve="sourceNode" />
                          </node>
                          <node concept="37vLTw" id="4InNjD1HOsk" role="37wK5m">
                            <ref role="3cqZAo" node="1$3BPv3VZvH" resolve="resolveInfo" />
                          </node>
                          <node concept="2OqwBi" id="4InNjD1HOFi" role="37wK5m">
                            <node concept="37vLTw" id="4InNjD1HOFj" role="2Oq$k0">
                              <ref role="3cqZAo" to="wsw7:1$3BPv3W08w" resolve="myReference" />
                            </node>
                            <node concept="liA8E" id="4InNjD1HOFk" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SReference.getRole():java.lang.String" resolve="getRole" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_sRn3" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="61KHAB8RCpw" role="jymVt">
                    <property role="TrG5h" value="getDescription" />
                    <node concept="37vLTG" id="61KHAB8RCp$" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="61KHAB8RCpA" role="1tU5fm" />
                    </node>
                    <node concept="17QB3L" id="61KHAB8RCpB" role="3clF45" />
                    <node concept="3Tm1VV" id="61KHAB8RCpy" role="1B3o_S" />
                    <node concept="3clFbS" id="61KHAB8RCpz" role="3clF47">
                      <node concept="3cpWs6" id="61KHAB8RCpC" role="3cqZAp">
                        <node concept="3cpWs3" id="61KHAB8RXoU" role="3cqZAk">
                          <node concept="Xl_RD" id="61KHAB8RXoX" role="3uHU7w">
                            <property role="Xl_RC" value="\&quot; reference" />
                          </node>
                          <node concept="3cpWs3" id="61KHAB8RXpi" role="3uHU7B">
                            <node concept="2OqwBi" id="61KHAB8RYMa" role="3uHU7w">
                              <node concept="37vLTw" id="2BHiRxeuMyT" role="2Oq$k0">
                                <ref role="3cqZAo" to="wsw7:1$3BPv3W08w" resolve="myReference" />
                              </node>
                              <node concept="liA8E" id="61KHAB8RYMg" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SReference.getRole():java.lang.String" resolve="getRole" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="61KHAB8RCpE" role="3uHU7B">
                              <property role="Xl_RC" value="Resolve \&quot;" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_sRn9" role="2AJF6D">
                      <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sT6N" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3VZSJ" role="jymVt">
        <property role="TrG5h" value="getApplicableSubstituteAction" />
        <node concept="3uibUv" id="27qG6aQ6zyT" role="3clF45">
          <ref role="3uigEE" to="nu8v:~SubstituteAction" resolve="SubstituteAction" />
        </node>
        <node concept="37vLTG" id="1$3BPv3VZSP" role="3clF46">
          <property role="TrG5h" value="substituteInfo" />
          <node concept="3uibUv" id="6UhBBUSH_F4" role="1tU5fm">
            <ref role="3uigEE" to="nu8v:~SubstituteInfo" resolve="SubstituteInfo" />
          </node>
        </node>
        <node concept="37vLTG" id="1$3BPv3VZSR" role="3clF46">
          <property role="TrG5h" value="resolveInfo" />
          <node concept="17QB3L" id="1$3BPv3VZST" role="1tU5fm" />
        </node>
        <node concept="3Tm6S6" id="1$3BPv3VZSN" role="1B3o_S" />
        <node concept="3clFbS" id="1$3BPv3VZSM" role="3clF47">
          <node concept="3cpWs8" id="1$3BPv3VZTT" role="3cqZAp">
            <node concept="3cpWsn" id="1$3BPv3VZTU" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="3uibUv" id="27qG6aQ6zn2" role="1tU5fm">
                <ref role="3uigEE" to="nu8v:~SubstituteAction" resolve="SubstituteAction" />
              </node>
              <node concept="10Nm6u" id="1$3BPv3VZTX" role="33vP2m" />
            </node>
          </node>
          <node concept="2Gpval" id="1$3BPv3VZTn" role="3cqZAp">
            <node concept="2GrKxI" id="1$3BPv3VZTo" role="2Gsz3X">
              <property role="TrG5h" value="nextAction" />
            </node>
            <node concept="2OqwBi" id="1$3BPv3VZTG" role="2GsD0m">
              <node concept="37vLTw" id="2BHiRxglgrd" role="2Oq$k0">
                <ref role="3cqZAo" node="1$3BPv3VZSP" resolve="substituteInfo" />
              </node>
              <node concept="liA8E" id="1$3BPv3VZTM" role="2OqNvi">
                <ref role="37wK5l" to="nu8v:~SubstituteInfo.getMatchingActions(java.lang.String,boolean):java.util.List" resolve="getMatchingActions" />
                <node concept="37vLTw" id="2BHiRxghgD3" role="37wK5m">
                  <ref role="3cqZAo" node="1$3BPv3VZSR" resolve="resolveInfo" />
                </node>
                <node concept="3clFbT" id="1$3BPv3VZTP" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1$3BPv3VZTq" role="2LFqv$">
              <node concept="3clFbJ" id="1$3BPv3VZU2" role="3cqZAp">
                <node concept="2OqwBi" id="1$3BPv3VZUm" role="3clFbw">
                  <node concept="2GrUjf" id="1$3BPv3VZU5" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1$3BPv3VZTo" resolve="nextAction" />
                  </node>
                  <node concept="liA8E" id="1$3BPv3VZUs" role="2OqNvi">
                    <ref role="37wK5l" to="nu8v:~SubstituteAction.canSubstitute(java.lang.String):boolean" resolve="canSubstitute" />
                    <node concept="37vLTw" id="2BHiRxgm91t" role="37wK5m">
                      <ref role="3cqZAo" node="1$3BPv3VZSR" resolve="resolveInfo" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="1$3BPv3VZU4" role="3clFbx">
                  <node concept="3clFbJ" id="1$3BPv3VZUu" role="3cqZAp">
                    <node concept="3y3z36" id="1$3BPv3VZUM" role="3clFbw">
                      <node concept="10Nm6u" id="1$3BPv3VZUP" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagTBNK" role="3uHU7B">
                        <ref role="3cqZAo" node="1$3BPv3VZTU" resolve="result" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1$3BPv3VZUw" role="3clFbx">
                      <node concept="3cpWs6" id="1$3BPv3VZUQ" role="3cqZAp">
                        <node concept="10Nm6u" id="1$3BPv3VZUS" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1$3BPv3VZUU" role="3cqZAp">
                    <node concept="37vLTI" id="1$3BPv3VZVc" role="3clFbG">
                      <node concept="2GrUjf" id="1$3BPv3VZVf" role="37vLTx">
                        <ref role="2Gs0qQ" node="1$3BPv3VZTo" resolve="nextAction" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTruc" role="37vLTJ">
                        <ref role="3cqZAo" node="1$3BPv3VZTU" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1$3BPv3VZTZ" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTsyu" role="3cqZAk">
              <ref role="3cqZAo" node="1$3BPv3VZTU" resolve="result" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5s7RUu7Mr9r" role="1zkMxy">
        <ref role="3uigEE" to="wsw7:1$3BPv3W06D" resolve="RefScopeChecker.ResolveReferenceQuickFix" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2uxkWp9VnLd" role="1B3o_S" />
    <node concept="3uibUv" id="2uxkWp9Vo2X" role="1zkMxy">
      <ref role="3uigEE" to="wsw7:6qi2OtU3tXp" resolve="RefScopeChecker" />
    </node>
  </node>
  <node concept="312cEu" id="4InNjD1Gavm">
    <property role="TrG5h" value="EditorBasedReferenceResolverUtils" />
    <node concept="2YIFZL" id="4InNjD1HoV3" role="jymVt">
      <property role="TrG5h" value="resolveInEditor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4InNjD1Hqa9" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4InNjD1Hqjv" role="1tU5fm">
          <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="4InNjD1HsQh" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3Tqbb2" id="4InNjD1Hu0x" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4InNjD1Huzs" role="3clF46">
        <property role="TrG5h" value="resolveInfo" />
        <node concept="17QB3L" id="4InNjD1HuGH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4InNjD1Hve0" role="3clF46">
        <property role="TrG5h" value="referenceRole" />
        <node concept="17QB3L" id="4InNjD1HvmI" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4InNjD1HoV6" role="3clF47">
        <node concept="3cpWs8" id="4InNjD1HpXX" role="3cqZAp">
          <node concept="3cpWsn" id="4InNjD1HpXY" role="3cpWs9">
            <property role="TrG5h" value="cellWithRole" />
            <node concept="3uibUv" id="4InNjD1HpXZ" role="1tU5fm">
              <ref role="3uigEE" to="nu8v:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="2OqwBi" id="4InNjD1HpY0" role="33vP2m">
              <node concept="37vLTw" id="4InNjD1Hqlu" role="2Oq$k0">
                <ref role="3cqZAo" node="4InNjD1Hqa9" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="4InNjD1HpY1" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.findNodeCellWithRole(org.jetbrains.mps.openapi.model.SNode,java.lang.String):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCellWithRole" />
                <node concept="37vLTw" id="4InNjD1HpY2" role="37wK5m">
                  <ref role="3cqZAo" node="4InNjD1HsQh" resolve="sourceNode" />
                </node>
                <node concept="37vLTw" id="4InNjD1Hvui" role="37wK5m">
                  <ref role="3cqZAo" node="4InNjD1Hve0" resolve="referenceRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4InNjD1HpY5" role="3cqZAp">
          <node concept="3clFbS" id="4InNjD1HpY6" role="3clFbx">
            <node concept="3cpWs6" id="4InNjD1HpY7" role="3cqZAp">
              <node concept="3clFbT" id="221m9H8tVvu" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4InNjD1HpY8" role="3clFbw">
            <node concept="10Nm6u" id="4InNjD1HpY9" role="3uHU7w" />
            <node concept="37vLTw" id="4InNjD1HpYa" role="3uHU7B">
              <ref role="3cqZAo" node="4InNjD1HpXY" resolve="cellWithRole" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="77jjuPIbDbw" role="3cqZAp">
          <node concept="1rXfSq" id="77jjuPIbDrs" role="3cqZAk">
            <ref role="37wK5l" node="77jjuPIbobs" resolve="substituteCell" />
            <node concept="37vLTw" id="77jjuPIbDz3" role="37wK5m">
              <ref role="3cqZAo" node="4InNjD1HpXY" resolve="cellWithRole" />
            </node>
            <node concept="37vLTw" id="77jjuPIbDM$" role="37wK5m">
              <ref role="3cqZAo" node="4InNjD1Huzs" resolve="resolveInfo" />
            </node>
            <node concept="2OqwBi" id="77jjuPIbEuL" role="37wK5m">
              <node concept="37vLTw" id="77jjuPIbEuM" role="2Oq$k0">
                <ref role="3cqZAo" node="4InNjD1Hqa9" resolve="editorComponent" />
              </node>
              <node concept="liA8E" id="77jjuPIbEuN" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getEditorContext():jetbrains.mps.nodeEditor.EditorContext" resolve="getEditorContext" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4InNjD1Holp" role="1B3o_S" />
      <node concept="10P_77" id="4InNjD1HqRH" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="77jjuPIbobs" role="jymVt">
      <property role="TrG5h" value="substituteCell" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="77jjuPIbobv" role="3clF47">
        <node concept="3cpWs8" id="77jjuPIbyzd" role="3cqZAp">
          <node concept="3cpWsn" id="77jjuPIbyze" role="3cpWs9">
            <property role="TrG5h" value="substituteInfo" />
            <node concept="3uibUv" id="77jjuPIbyzf" role="1tU5fm">
              <ref role="3uigEE" to="nu8v:~SubstituteInfo" resolve="SubstituteInfo" />
            </node>
            <node concept="2OqwBi" id="77jjuPIbyzg" role="33vP2m">
              <node concept="37vLTw" id="77jjuPIbyXA" role="2Oq$k0">
                <ref role="3cqZAo" node="77jjuPIbus5" resolve="editorCell" />
              </node>
              <node concept="liA8E" id="77jjuPIbyzi" role="2OqNvi">
                <ref role="37wK5l" to="nu8v:~EditorCell.getSubstituteInfo():jetbrains.mps.openapi.editor.cells.SubstituteInfo" resolve="getSubstituteInfo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jjuPIbyzj" role="3cqZAp">
          <node concept="3clFbS" id="77jjuPIbyzk" role="3clFbx">
            <node concept="3cpWs6" id="77jjuPIbzuO" role="3cqZAp">
              <node concept="3clFbT" id="77jjuPIbz$6" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="77jjuPIbyzm" role="3clFbw">
            <node concept="10Nm6u" id="77jjuPIbyzn" role="3uHU7w" />
            <node concept="37vLTw" id="77jjuPIbyzo" role="3uHU7B">
              <ref role="3cqZAo" node="77jjuPIbyze" resolve="substituteInfo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="77jjuPIbyzp" role="3cqZAp">
          <node concept="3cpWsn" id="77jjuPIbyzq" role="3cpWs9">
            <property role="TrG5h" value="applicableSubstituteAction" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="77jjuPIbyzr" role="1tU5fm">
              <ref role="3uigEE" to="nu8v:~SubstituteAction" resolve="SubstituteAction" />
            </node>
            <node concept="2YIFZM" id="77jjuPIbyzs" role="33vP2m">
              <ref role="1Pybhc" node="4InNjD1Gavm" resolve="EditorBasedReferenceResolverUtils" />
              <ref role="37wK5l" node="4InNjD1HmgL" resolve="getApplicableSubstituteAction" />
              <node concept="37vLTw" id="77jjuPIbyzt" role="37wK5m">
                <ref role="3cqZAo" node="77jjuPIbyze" resolve="substituteInfo" />
              </node>
              <node concept="37vLTw" id="77jjuPIb$5A" role="37wK5m">
                <ref role="3cqZAo" node="77jjuPIbus_" resolve="pattern" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="77jjuPIbyzv" role="3cqZAp">
          <node concept="3clFbS" id="77jjuPIbyzw" role="3clFbx">
            <node concept="3cpWs6" id="77jjuPIb_xF" role="3cqZAp">
              <node concept="3clFbT" id="77jjuPIb_xG" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="77jjuPIbyzy" role="3clFbw">
            <node concept="37vLTw" id="77jjuPIbyzz" role="3uHU7B">
              <ref role="3cqZAo" node="77jjuPIbyzq" resolve="applicableSubstituteAction" />
            </node>
            <node concept="10Nm6u" id="77jjuPIbyz$" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="77jjuPIbyz_" role="3cqZAp">
          <node concept="2OqwBi" id="77jjuPIbyzA" role="3clFbG">
            <node concept="37vLTw" id="77jjuPIbyzB" role="2Oq$k0">
              <ref role="3cqZAo" node="77jjuPIbyzq" resolve="applicableSubstituteAction" />
            </node>
            <node concept="liA8E" id="77jjuPIbyzC" role="2OqNvi">
              <ref role="37wK5l" to="nu8v:~SubstituteAction.substitute(jetbrains.mps.openapi.editor.EditorContext,java.lang.String):org.jetbrains.mps.openapi.model.SNode" resolve="substitute" />
              <node concept="37vLTw" id="77jjuPIbyzD" role="37wK5m">
                <ref role="3cqZAo" node="77jjuPIbAdf" resolve="editorContext" />
              </node>
              <node concept="37vLTw" id="77jjuPIbAHu" role="37wK5m">
                <ref role="3cqZAo" node="77jjuPIbus_" resolve="pattern" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="77jjuPIb_zh" role="3cqZAp">
          <node concept="3clFbT" id="77jjuPIb_Gh" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="77jjuPIbo6d" role="1B3o_S" />
      <node concept="10P_77" id="77jjuPIbobm" role="3clF45" />
      <node concept="37vLTG" id="77jjuPIbus5" role="3clF46">
        <property role="TrG5h" value="editorCell" />
        <node concept="3uibUv" id="77jjuPIbus4" role="1tU5fm">
          <ref role="3uigEE" to="nu8v:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="77jjuPIbus_" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="17QB3L" id="77jjuPIbwuL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="77jjuPIbAdf" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="77jjuPIbAi4" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="77jjuPIbo1c" role="jymVt" />
    <node concept="2YIFZL" id="4InNjD1HmgL" role="jymVt">
      <property role="TrG5h" value="getApplicableSubstituteAction" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4InNjD1HlPK" role="3clF47">
        <node concept="3cpWs8" id="4InNjD1HlPL" role="3cqZAp">
          <node concept="3cpWsn" id="4InNjD1HlPM" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="4InNjD1HlPN" role="1tU5fm">
              <ref role="3uigEE" to="nu8v:~SubstituteAction" resolve="SubstituteAction" />
            </node>
            <node concept="10Nm6u" id="4InNjD1HlPO" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="4_KzFdIeLpc" role="3cqZAp">
          <node concept="2OqwBi" id="4_KzFdIeLZh" role="3clFbG">
            <node concept="37vLTw" id="4_KzFdIeLpb" role="2Oq$k0">
              <ref role="3cqZAo" node="4InNjD1HlPF" resolve="substituteInfo" />
            </node>
            <node concept="liA8E" id="4_KzFdIeMfh" role="2OqNvi">
              <ref role="37wK5l" to="nu8v:~SubstituteInfo.invalidateActions():void" resolve="invalidateActions" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4InNjD1HlPP" role="3cqZAp">
          <node concept="2GrKxI" id="4InNjD1HlPQ" role="2Gsz3X">
            <property role="TrG5h" value="nextAction" />
          </node>
          <node concept="2OqwBi" id="4InNjD1HlPR" role="2GsD0m">
            <node concept="37vLTw" id="4InNjD1HlPS" role="2Oq$k0">
              <ref role="3cqZAo" node="4InNjD1HlPF" resolve="substituteInfo" />
            </node>
            <node concept="liA8E" id="4InNjD1HlPT" role="2OqNvi">
              <ref role="37wK5l" to="nu8v:~SubstituteInfo.getMatchingActions(java.lang.String,boolean):java.util.List" resolve="getMatchingActions" />
              <node concept="37vLTw" id="4InNjD1HlPU" role="37wK5m">
                <ref role="3cqZAo" node="4InNjD1HlPH" resolve="resolveInfo" />
              </node>
              <node concept="3clFbT" id="4InNjD1HlPV" role="37wK5m" />
            </node>
          </node>
          <node concept="3clFbS" id="4InNjD1HlPW" role="2LFqv$">
            <node concept="3clFbJ" id="4InNjD1HlPX" role="3cqZAp">
              <node concept="2OqwBi" id="4InNjD1HlPY" role="3clFbw">
                <node concept="2GrUjf" id="4InNjD1HlPZ" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4InNjD1HlPQ" resolve="nextAction" />
                </node>
                <node concept="liA8E" id="4InNjD1HlQ0" role="2OqNvi">
                  <ref role="37wK5l" to="nu8v:~SubstituteAction.canSubstitute(java.lang.String):boolean" resolve="canSubstitute" />
                  <node concept="37vLTw" id="4InNjD1HlQ1" role="37wK5m">
                    <ref role="3cqZAo" node="4InNjD1HlPH" resolve="resolveInfo" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4InNjD1HlQ2" role="3clFbx">
                <node concept="3clFbJ" id="4InNjD1HlQ3" role="3cqZAp">
                  <node concept="3y3z36" id="4InNjD1HlQ4" role="3clFbw">
                    <node concept="10Nm6u" id="4InNjD1HlQ5" role="3uHU7w" />
                    <node concept="37vLTw" id="4InNjD1HlQ6" role="3uHU7B">
                      <ref role="3cqZAo" node="4InNjD1HlPM" resolve="result" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4InNjD1HlQ7" role="3clFbx">
                    <node concept="3cpWs6" id="4InNjD1HlQ8" role="3cqZAp">
                      <node concept="10Nm6u" id="4InNjD1HlQ9" role="3cqZAk" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4InNjD1HlQa" role="3cqZAp">
                  <node concept="37vLTI" id="4InNjD1HlQb" role="3clFbG">
                    <node concept="2GrUjf" id="4InNjD1HlQc" role="37vLTx">
                      <ref role="2Gs0qQ" node="4InNjD1HlPQ" resolve="nextAction" />
                    </node>
                    <node concept="37vLTw" id="4InNjD1HlQd" role="37vLTJ">
                      <ref role="3cqZAo" node="4InNjD1HlPM" resolve="result" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4InNjD1HlQe" role="3cqZAp">
          <node concept="3K4zz7" id="6Ia5KJmooE4" role="3cqZAk">
            <node concept="37vLTw" id="6Ia5KJmooMn" role="3K4E3e">
              <ref role="3cqZAo" node="4InNjD1HlPM" resolve="result" />
            </node>
            <node concept="10Nm6u" id="6Ia5KJmooUE" role="3K4GZi" />
            <node concept="1Wc70l" id="1NLuPyiM74M" role="3K4Cdx">
              <node concept="3y3z36" id="1NLuPyiM7HS" role="3uHU7B">
                <node concept="10Nm6u" id="1NLuPyiM7R$" role="3uHU7w" />
                <node concept="37vLTw" id="1NLuPyiM7eT" role="3uHU7B">
                  <ref role="3cqZAo" node="4InNjD1HlPM" resolve="result" />
                </node>
              </node>
              <node concept="2OqwBi" id="6Ia5KJmo3y7" role="3uHU7w">
                <node concept="37vLTw" id="4InNjD1HlQf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4InNjD1HlPM" resolve="result" />
                </node>
                <node concept="liA8E" id="6Ia5KJmo4ez" role="2OqNvi">
                  <ref role="37wK5l" to="nu8v:~SubstituteAction.canSubstituteStrictly(java.lang.String):boolean" resolve="canSubstituteStrictly" />
                  <node concept="37vLTw" id="6Ia5KJmonlh" role="37wK5m">
                    <ref role="3cqZAo" node="4InNjD1HlPH" resolve="resolveInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4InNjD1HlPF" role="3clF46">
        <property role="TrG5h" value="substituteInfo" />
        <node concept="3uibUv" id="4InNjD1HlPG" role="1tU5fm">
          <ref role="3uigEE" to="nu8v:~SubstituteInfo" resolve="SubstituteInfo" />
        </node>
      </node>
      <node concept="37vLTG" id="4InNjD1HlPH" role="3clF46">
        <property role="TrG5h" value="resolveInfo" />
        <node concept="17QB3L" id="4InNjD1HlPI" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4InNjD1HlPE" role="3clF45">
        <ref role="3uigEE" to="nu8v:~SubstituteAction" resolve="SubstituteAction" />
      </node>
      <node concept="3Tm6S6" id="77jjuPIbF8N" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4InNjD1Gavn" role="1B3o_S" />
  </node>
</model>

