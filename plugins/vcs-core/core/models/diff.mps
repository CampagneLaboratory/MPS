<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5744ed46-c83f-47cd-94ce-f24d1f92d6a1(jetbrains.mps.vcs.diff)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
  </languages>
  <imports>
    <import index="btf5" ref="r:9b4a89e1-ec38-42c4-b1bd-96ab47ffcb3f(jetbrains.mps.vcs.diff.changes)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" />
    <import index="kqhl" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(jetbrains.mps.project.structure.modules@java_stub)" />
    <import index="53gy" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util.concurrent(java.util.concurrent@java_stub)" />
    <import index="1p1s" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps(jetbrains.mps@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(jetbrains.mps.util@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="as9o" ref="f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(org.jetbrains.annotations@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="51te" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.extapi.model(jetbrains.mps.extapi.model@java_stub)" />
    <import index="t3eg" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(MPS.OpenAPI/org.jetbrains.mps.openapi.language@java_stub)" />
  </imports>
  <registry>
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
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
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
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
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
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="312cEu" id="42hl10VHbfH">
    <property role="TrG5h" value="ChangeSetBuilder" />
    <node concept="3Tm1VV" id="42hl10VHbv_" role="1B3o_S" />
    <node concept="312cEg" id="42hl10VHbuu" role="jymVt">
      <property role="TrG5h" value="myOldModel" />
      <node concept="3Tm6S6" id="42hl10VHbuv" role="1B3o_S" />
      <node concept="H_c77" id="5OnZ9ck4ZhX" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="42hl10VHbux" role="jymVt">
      <property role="TrG5h" value="myNewModel" />
      <node concept="3Tm6S6" id="42hl10VHbuy" role="1B3o_S" />
      <node concept="H_c77" id="5OnZ9ck5eJB" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="42hl10VHbu$" role="jymVt">
      <property role="TrG5h" value="myChangeSet" />
      <node concept="3Tm6S6" id="42hl10VHbu_" role="1B3o_S" />
      <node concept="3uibUv" id="42hl10VHbuA" role="1tU5fm">
        <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
      </node>
    </node>
    <node concept="312cEg" id="1XuTulVDK_Y" role="jymVt">
      <property role="TrG5h" value="myNewChanges" />
      <node concept="3Tm6S6" id="1XuTulVDK_Z" role="1B3o_S" />
      <node concept="_YKpA" id="1XuTulVDKA1" role="1tU5fm">
        <node concept="3uibUv" id="1XuTulVDKA3" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="1XuTulVDKA5" role="33vP2m">
        <node concept="Tc6Ow" id="1XuTulVDKA6" role="2ShVmc">
          <node concept="3uibUv" id="1XuTulVDKA7" role="HW$YZ">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="42hl10VHbvA" role="jymVt">
      <node concept="3cqZAl" id="42hl10VHbvB" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbvC" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbvD" role="3clF47">
        <node concept="1VxSAg" id="42hl10VHbvE" role="3cqZAp">
          <ref role="37wK5l" node="42hl10VHbvN" resolve="ChangeSetBuilder" />
          <node concept="2ShNRf" id="42hl10VHbvF" role="37wK5m">
            <node concept="1pGfFk" id="42hl10VHbvG" role="2ShVmc">
              <ref role="37wK5l" node="69abr3Go1lq" resolve="ChangeSetImpl" />
              <node concept="37vLTw" id="2BHiRxghfYk" role="37wK5m">
                <ref role="3cqZAo" node="42hl10VHbvJ" resolve="oldModel" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm6fF" role="37wK5m">
                <ref role="3cqZAo" node="42hl10VHbvL" resolve="newModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbvJ" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="H_c77" id="5OnZ9ck4KCW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbvL" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="H_c77" id="5OnZ9ck4RXt" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFbW" id="42hl10VHbvN" role="jymVt">
      <node concept="3cqZAl" id="42hl10VHbvO" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbvP" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbvQ" role="3clF47">
        <node concept="3clFbF" id="42hl10VHbvR" role="3cqZAp">
          <node concept="37vLTI" id="42hl10VHbvS" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeukkr" role="37vLTJ">
              <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
            </node>
            <node concept="2OqwBi" id="42hl10VHbvU" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxglErk" role="2Oq$k0">
                <ref role="3cqZAo" node="42hl10VHbw7" resolve="changeSet" />
              </node>
              <node concept="liA8E" id="42hl10VHbvW" role="2OqNvi">
                <ref role="37wK5l" node="69abr3Go1ml" resolve="getOldModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbvX" role="3cqZAp">
          <node concept="37vLTI" id="42hl10VHbvY" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeueU2" role="37vLTJ">
              <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
            </node>
            <node concept="2OqwBi" id="42hl10VHbw0" role="37vLTx">
              <node concept="37vLTw" id="2BHiRxgm6aj" role="2Oq$k0">
                <ref role="3cqZAo" node="42hl10VHbw7" resolve="changeSet" />
              </node>
              <node concept="liA8E" id="42hl10VHbw2" role="2OqNvi">
                <ref role="37wK5l" node="69abr3Go1ms" resolve="getNewModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbw3" role="3cqZAp">
          <node concept="37vLTI" id="42hl10VHbw4" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmgt2" role="37vLTx">
              <ref role="3cqZAo" node="42hl10VHbw7" resolve="changeSet" />
            </node>
            <node concept="37vLTw" id="2BHiRxeujnO" role="37vLTJ">
              <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbw7" role="3clF46">
        <property role="TrG5h" value="changeSet" />
        <node concept="3uibUv" id="42hl10VHbw8" role="1tU5fm">
          <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbfX" role="jymVt">
      <property role="TrG5h" value="buildForProperties" />
      <node concept="3cqZAl" id="42hl10VHbfY" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbfZ" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbg0" role="3clF47">
        <node concept="3cpWs8" id="5IRXTJLNoMr" role="3cqZAp">
          <node concept="3cpWsn" id="5IRXTJLNoMs" role="3cpWs9">
            <property role="TrG5h" value="oldProperties" />
            <node concept="A3Dl8" id="5IRXTJLNpk5" role="1tU5fm">
              <node concept="3uibUv" id="5IRXTJLNpk7" role="A3Ik2">
                <ref role="3uigEE" to="t3eg:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="5IRXTJLNoMt" role="33vP2m">
              <node concept="2JrnkZ" id="5IRXTJLNoMu" role="2Oq$k0">
                <node concept="37vLTw" id="5IRXTJLNoMv" role="2JrQYb">
                  <ref role="3cqZAo" node="42hl10VHbhE" resolve="oldNode" />
                </node>
              </node>
              <node concept="liA8E" id="5IRXTJLNoMw" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getProperties():java.lang.Iterable" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5IRXTJLNqMj" role="3cqZAp">
          <node concept="3cpWsn" id="5IRXTJLNqMk" role="3cpWs9">
            <property role="TrG5h" value="newProperties" />
            <node concept="A3Dl8" id="5IRXTJLNre2" role="1tU5fm">
              <node concept="3uibUv" id="5IRXTJLNre4" role="A3Ik2">
                <ref role="3uigEE" to="t3eg:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="5IRXTJLNqMl" role="33vP2m">
              <node concept="2JrnkZ" id="5IRXTJLNqMm" role="2Oq$k0">
                <node concept="37vLTw" id="5IRXTJLNqMn" role="2JrQYb">
                  <ref role="3cqZAo" node="42hl10VHbhG" resolve="newNode" />
                </node>
              </node>
              <node concept="liA8E" id="5IRXTJLNqMo" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getProperties():java.lang.Iterable" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="42hl10VHbgr" role="3cqZAp">
          <node concept="2GrKxI" id="42hl10VHbgs" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="2OqwBi" id="42hl10VHbgt" role="2GsD0m">
            <node concept="37vLTw" id="5IRXTJLNrK0" role="2Oq$k0">
              <ref role="3cqZAo" node="5IRXTJLNoMs" resolve="oldProperties" />
            </node>
            <node concept="4Tj9Z" id="42hl10VHbgx" role="2OqNvi">
              <node concept="37vLTw" id="5IRXTJLNs4l" role="576Qk">
                <ref role="3cqZAo" node="5IRXTJLNqMk" resolve="newProperties" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="42hl10VHbg_" role="2LFqv$">
            <node concept="3clFbF" id="1XuTulVDKEn" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyIys" role="3clFbG">
                <ref role="37wK5l" node="5IRXTJLL4Qe" resolve="buildForProperty" />
                <node concept="37vLTw" id="2BHiRxghfaV" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbhE" resolve="oldNode" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmjkw" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbhG" resolve="newNode" />
                </node>
                <node concept="2GrUjf" id="1XuTulVDKEt" role="37wK5m">
                  <ref role="2Gs0qQ" node="42hl10VHbgs" resolve="p" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbhE" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="42hl10VHbhF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbhG" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="42hl10VHbhH" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="5IRXTJLL4Qe" role="jymVt">
      <property role="TrG5h" value="buildForProperty" />
      <node concept="37vLTG" id="5IRXTJLLN4L" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="5IRXTJLLN4M" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5IRXTJLLVux" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="5IRXTJLLVuy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5IRXTJLLRs4" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="5IRXTJLMkQf" role="1tU5fm">
          <ref role="3uigEE" to="t3eg:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3cqZAl" id="5IRXTJLL4Qg" role="3clF45" />
      <node concept="3Tm1VV" id="5IRXTJLL4Qh" role="1B3o_S" />
      <node concept="3clFbS" id="5IRXTJLL4Qi" role="3clF47">
        <node concept="3cpWs8" id="5IRXTJLMuoH" role="3cqZAp">
          <node concept="3cpWsn" id="5IRXTJLMuoI" role="3cpWs9">
            <property role="TrG5h" value="propertySupport" />
            <node concept="3uibUv" id="5IRXTJLMuoJ" role="1tU5fm">
              <ref role="3uigEE" to="cu2c:~PropertySupport" resolve="PropertySupport" />
            </node>
            <node concept="2ShNRf" id="5IRXTJLMuXx" role="33vP2m">
              <node concept="1pGfFk" id="5IRXTJLMvuO" role="2ShVmc">
                <ref role="37wK5l" node="42hl10VHbfK" resolve="ChangeSetBuilder.DefaultPropertySupport" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5IRXTJLMtds" role="3cqZAp">
          <node concept="3clFbS" id="5IRXTJLMtdt" role="3clFbx">
            <node concept="3cpWs8" id="5IRXTJLMtdu" role="3cqZAp">
              <node concept="3cpWsn" id="5IRXTJLMtdv" role="3cpWs9">
                <property role="TrG5h" value="propertyDeclaration" />
                <node concept="3Tqbb2" id="5IRXTJLMtdw" role="1tU5fm" />
                <node concept="2OqwBi" id="5IRXTJLMtdx" role="33vP2m">
                  <node concept="37vLTw" id="5IRXTJLMvNA" role="2Oq$k0">
                    <ref role="3cqZAo" node="5IRXTJLLRs4" resolve="property" />
                  </node>
                  <node concept="liA8E" id="5IRXTJLMtdB" role="2OqNvi">
                    <ref role="37wK5l" to="t3eg:~SProperty.getDeclarationNode():org.jetbrains.mps.openapi.model.SNode" resolve="getDeclarationNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5IRXTJLMtdD" role="3cqZAp">
              <node concept="3clFbS" id="5IRXTJLMtdE" role="3clFbx">
                <node concept="3clFbF" id="5IRXTJLMtdF" role="3cqZAp">
                  <node concept="37vLTI" id="5IRXTJLMtdG" role="3clFbG">
                    <node concept="2YIFZM" id="5IRXTJLMtdH" role="37vLTx">
                      <ref role="37wK5l" to="cu2c:~PropertySupport.getPropertySupport(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.smodel.PropertySupport" resolve="getPropertySupport" />
                      <ref role="1Pybhc" to="cu2c:~PropertySupport" resolve="PropertySupport" />
                      <node concept="37vLTw" id="5IRXTJLMtdI" role="37wK5m">
                        <ref role="3cqZAo" node="5IRXTJLMtdv" resolve="propertyDeclaration" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5IRXTJLMwg7" role="37vLTJ">
                      <ref role="3cqZAo" node="5IRXTJLMuoI" resolve="propertySupport" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5IRXTJLMtdK" role="3clFbw">
                <node concept="10Nm6u" id="5IRXTJLMtdL" role="3uHU7w" />
                <node concept="37vLTw" id="5IRXTJLMtdM" role="3uHU7B">
                  <ref role="3cqZAo" node="5IRXTJLMtdv" resolve="propertyDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5IRXTJLMBTA" role="3clFbw">
            <node concept="2YIFZM" id="5IRXTJLMBTC" role="3fr31v">
              <ref role="37wK5l" to="1p1s:~RuntimeFlags.isMergeDriverMode():boolean" resolve="isMergeDriverMode" />
              <ref role="1Pybhc" to="1p1s:~RuntimeFlags" resolve="RuntimeFlags" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5IRXTJLMwxR" role="3cqZAp">
          <node concept="3cpWsn" id="5IRXTJLMwxS" role="3cpWs9">
            <property role="TrG5h" value="oldPresentableValue" />
            <node concept="17QB3L" id="5IRXTJLMwxT" role="1tU5fm" />
            <node concept="2OqwBi" id="5IRXTJLMwxU" role="33vP2m">
              <node concept="37vLTw" id="5IRXTJLM_OK" role="2Oq$k0">
                <ref role="3cqZAo" node="5IRXTJLMuoI" resolve="propertySupport" />
              </node>
              <node concept="liA8E" id="5IRXTJLMwxW" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~PropertySupport.fromInternalValue(java.lang.String):java.lang.String" resolve="fromInternalValue" />
                <node concept="2OqwBi" id="5IRXTJLMwxX" role="37wK5m">
                  <node concept="2JrnkZ" id="5IRXTJLMwxY" role="2Oq$k0">
                    <node concept="37vLTw" id="5IRXTJLMwxZ" role="2JrQYb">
                      <ref role="3cqZAo" node="5IRXTJLLN4L" resolve="oldNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5IRXTJLMwy0" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
                    <node concept="37vLTw" id="5IRXTJLMCQT" role="37wK5m">
                      <ref role="3cqZAo" node="5IRXTJLLRs4" resolve="property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5IRXTJLMwy2" role="3cqZAp">
          <node concept="3cpWsn" id="5IRXTJLMwy3" role="3cpWs9">
            <property role="TrG5h" value="newPresentableValue" />
            <node concept="17QB3L" id="5IRXTJLMwy4" role="1tU5fm" />
            <node concept="2OqwBi" id="5IRXTJLMwy5" role="33vP2m">
              <node concept="37vLTw" id="5IRXTJLM_ZD" role="2Oq$k0">
                <ref role="3cqZAo" node="5IRXTJLMuoI" resolve="propertySupport" />
              </node>
              <node concept="liA8E" id="5IRXTJLMwy7" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~PropertySupport.fromInternalValue(java.lang.String):java.lang.String" resolve="fromInternalValue" />
                <node concept="2OqwBi" id="5IRXTJLMwy8" role="37wK5m">
                  <node concept="2JrnkZ" id="5IRXTJLMwy9" role="2Oq$k0">
                    <node concept="37vLTw" id="5IRXTJLMwya" role="2JrQYb">
                      <ref role="3cqZAo" node="5IRXTJLLVux" resolve="newNode" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5IRXTJLMwyb" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
                    <node concept="37vLTw" id="5IRXTJLMDaw" role="37wK5m">
                      <ref role="3cqZAo" node="5IRXTJLLRs4" resolve="property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5IRXTJLMwyd" role="3cqZAp">
          <node concept="3fqX7Q" id="5IRXTJLMwye" role="3clFbw">
            <node concept="2YIFZM" id="5IRXTJLMwyf" role="3fr31v">
              <ref role="37wK5l" to="msyo:~EqualUtil.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
              <ref role="1Pybhc" to="msyo:~EqualUtil" resolve="EqualUtil" />
              <node concept="37vLTw" id="5IRXTJLMwyg" role="37wK5m">
                <ref role="3cqZAo" node="5IRXTJLMwxS" resolve="oldPresentableValue" />
              </node>
              <node concept="37vLTw" id="5IRXTJLMwyh" role="37wK5m">
                <ref role="3cqZAo" node="5IRXTJLMwy3" resolve="newPresentableValue" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5IRXTJLMwyi" role="3clFbx">
            <node concept="3clFbF" id="5IRXTJLMwyj" role="3cqZAp">
              <node concept="2OqwBi" id="5IRXTJLMwyk" role="3clFbG">
                <node concept="37vLTw" id="5IRXTJLMwyl" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                </node>
                <node concept="TSZUe" id="5IRXTJLMwym" role="2OqNvi">
                  <node concept="2ShNRf" id="5IRXTJLMwyn" role="25WWJ7">
                    <node concept="1pGfFk" id="5IRXTJLMwyo" role="2ShVmc">
                      <ref role="37wK5l" to="btf5:2nH2HpRmY1o" resolve="SetPropertyChange" />
                      <node concept="37vLTw" id="5IRXTJLMwyp" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="2OqwBi" id="5IRXTJLMwyq" role="37wK5m">
                        <node concept="liA8E" id="5IRXTJLMwyr" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="5IRXTJLMwys" role="2Oq$k0">
                          <node concept="37vLTw" id="5IRXTJLMwyt" role="2JrQYb">
                            <ref role="3cqZAo" node="5IRXTJLLN4L" resolve="oldNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="5IRXTJLME1i" role="37wK5m">
                        <ref role="3cqZAo" node="5IRXTJLLRs4" resolve="property" />
                      </node>
                      <node concept="2OqwBi" id="5IRXTJLMwyv" role="37wK5m">
                        <node concept="2JrnkZ" id="5IRXTJLMwyw" role="2Oq$k0">
                          <node concept="37vLTw" id="5IRXTJLMwyx" role="2JrQYb">
                            <ref role="3cqZAo" node="5IRXTJLLVux" resolve="newNode" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5IRXTJLMwyy" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty):java.lang.String" resolve="getProperty" />
                          <node concept="37vLTw" id="5IRXTJLMDtD" role="37wK5m">
                            <ref role="3cqZAo" node="5IRXTJLLRs4" resolve="property" />
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
    <node concept="3clFb_" id="42hl10VHbhI" role="jymVt">
      <property role="TrG5h" value="buildForReferences" />
      <node concept="3cqZAl" id="42hl10VHbhJ" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbhK" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbhL" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbhM" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbhN" role="3cpWs9">
            <property role="TrG5h" value="oldReferences" />
            <node concept="10QFUN" id="1XuTulVDMnF" role="33vP2m">
              <node concept="2OqwBi" id="1XuTulVDMnG" role="10QFUP">
                <node concept="2JrnkZ" id="1XuTulVDMnH" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgm6oP" role="2JrQYb">
                    <ref role="3cqZAo" node="42hl10VHbkl" resolve="oldNode" />
                  </node>
                </node>
                <node concept="liA8E" id="X3Q$KaTymD" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SNode.getReferences():java.lang.Iterable" resolve="getReferences" />
                </node>
              </node>
              <node concept="_YKpA" id="X3Q$KaTyo5" role="10QFUM">
                <node concept="3uibUv" id="X3Q$KaTyo6" role="_ZDj9">
                  <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="X3Q$KaTyoe" role="1tU5fm">
              <node concept="3uibUv" id="X3Q$KaTyof" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42hl10VHbhV" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbhW" role="3cpWs9">
            <property role="TrG5h" value="newReferences" />
            <node concept="10QFUN" id="1XuTulVDMnN" role="33vP2m">
              <node concept="2OqwBi" id="1XuTulVDMnO" role="10QFUP">
                <node concept="2JrnkZ" id="1XuTulVDMnP" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgkWGw" role="2JrQYb">
                    <ref role="3cqZAo" node="42hl10VHbkn" resolve="newNode" />
                  </node>
                </node>
                <node concept="liA8E" id="1XuTulVDMnR" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SNode.getReferences():java.lang.Iterable" resolve="getReferences" />
                </node>
              </node>
              <node concept="_YKpA" id="X3Q$KaTyo8" role="10QFUM">
                <node concept="3uibUv" id="X3Q$KaTyo9" role="_ZDj9">
                  <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="X3Q$KaTyob" role="1tU5fm">
              <node concept="3uibUv" id="X3Q$KaTyoc" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="42hl10VHbiC" role="3cqZAp">
          <node concept="2GrKxI" id="42hl10VHbiD" role="2Gsz3X">
            <property role="TrG5h" value="role" />
          </node>
          <node concept="2OqwBi" id="X3Q$KaTynY" role="2GsD0m">
            <node concept="2OqwBi" id="X3Q$KaTynA" role="2Oq$k0">
              <node concept="2OqwBi" id="X3Q$KaTynr" role="2Oq$k0">
                <node concept="37vLTw" id="3GM_nagT_69" role="2Oq$k0">
                  <ref role="3cqZAo" node="42hl10VHbhN" resolve="oldReferences" />
                </node>
                <node concept="3QWeyG" id="X3Q$KaTynx" role="2OqNvi">
                  <node concept="37vLTw" id="3GM_nagTA1P" role="576Qk">
                    <ref role="3cqZAo" node="42hl10VHbhW" resolve="newReferences" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="X3Q$KaTynG" role="2OqNvi">
                <node concept="1bVj0M" id="X3Q$KaTynH" role="23t8la">
                  <node concept="3clFbS" id="X3Q$KaTynI" role="1bW5cS">
                    <node concept="3clFbF" id="X3Q$KaTynL" role="3cqZAp">
                      <node concept="2OqwBi" id="X3Q$KaTynP" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgmjzk" role="2Oq$k0">
                          <ref role="3cqZAo" node="X3Q$KaTynJ" resolve="r" />
                        </node>
                        <node concept="liA8E" id="X3Q$KaTynU" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SReference.getLink():org.jetbrains.mps.openapi.language.SReferenceLink" resolve="getLink" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="X3Q$KaTynJ" role="1bW2Oz">
                    <property role="TrG5h" value="r" />
                    <node concept="2jxLKc" id="X3Q$KaTynK" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1VAtEI" id="X3Q$KaTyo3" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="42hl10VHbiM" role="2LFqv$">
            <node concept="3clFbF" id="1XuTulVDMn3" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyz8oe" role="3clFbG">
                <ref role="37wK5l" node="1XuTulVDMjT" resolve="buildForReference" />
                <node concept="37vLTw" id="2BHiRxglIQ7" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbkl" resolve="oldNode" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm7Ku" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbkn" resolve="newNode" />
                </node>
                <node concept="2GrUjf" id="1XuTulVDMnc" role="37wK5m">
                  <ref role="2Gs0qQ" node="42hl10VHbiD" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbkl" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="42hl10VHbkm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbkn" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="42hl10VHbko" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1XuTulVDMjT" role="jymVt">
      <property role="TrG5h" value="buildForReference" />
      <node concept="3cqZAl" id="1XuTulVDMjU" role="3clF45" />
      <node concept="3Tm1VV" id="1XuTulVDMmB" role="1B3o_S" />
      <node concept="3clFbS" id="1XuTulVDMjW" role="3clF47">
        <node concept="3cpWs8" id="1XuTulVDMkY" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDMkZ" role="3cpWs9">
            <property role="TrG5h" value="oldReference" />
            <node concept="2OqwBi" id="1XuTulVDMmP" role="33vP2m">
              <node concept="2JrnkZ" id="1XuTulVDMmN" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxglBzX" role="2JrQYb">
                  <ref role="3cqZAo" node="1XuTulVDMmw" resolve="oldNode" />
                </node>
              </node>
              <node concept="liA8E" id="1XuTulVDMmT" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink):org.jetbrains.mps.openapi.model.SReference" resolve="getReference" />
                <node concept="37vLTw" id="2BHiRxgmhBC" role="37wK5m">
                  <ref role="3cqZAo" node="1XuTulVDMm$" resolve="role" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1XuTulVDMl3" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XuTulVDMl4" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDMl5" role="3cpWs9">
            <property role="TrG5h" value="newReference" />
            <node concept="3uibUv" id="1XuTulVDMl9" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
            </node>
            <node concept="2OqwBi" id="1XuTulVDMmW" role="33vP2m">
              <node concept="2JrnkZ" id="1XuTulVDMmX" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgl_lr" role="2JrQYb">
                  <ref role="3cqZAo" node="1XuTulVDMmy" resolve="newNode" />
                </node>
              </node>
              <node concept="liA8E" id="1XuTulVDMmZ" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink):org.jetbrains.mps.openapi.model.SReference" resolve="getReference" />
                <node concept="37vLTw" id="2BHiRxgm9gF" role="37wK5m">
                  <ref role="3cqZAo" node="1XuTulVDMm$" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XuTulVDMla" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDMlb" role="3cpWs9">
            <property role="TrG5h" value="oldTargetId" />
            <node concept="3uibUv" id="1XuTulVDMlc" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="3K4zz7" id="1XuTulVDMld" role="33vP2m">
              <node concept="2EnYce" id="1XuTulVDMle" role="3K4GZi">
                <node concept="37vLTw" id="3GM_nagTt_C" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XuTulVDMkZ" resolve="oldReference" />
                </node>
                <node concept="liA8E" id="1XuTulVDMlg" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SReference.getTargetNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getTargetNodeId" />
                </node>
              </node>
              <node concept="2ZW3vV" id="1XuTulVDMlh" role="3K4Cdx">
                <node concept="3uibUv" id="1XuTulVDMli" role="2ZW6by">
                  <ref role="3uigEE" to="cu2c:~DynamicReference" resolve="DynamicReference" />
                </node>
                <node concept="37vLTw" id="3GM_nagTsbE" role="2ZW6bz">
                  <ref role="3cqZAo" node="1XuTulVDMkZ" resolve="oldReference" />
                </node>
              </node>
              <node concept="10Nm6u" id="1XuTulVDMlk" role="3K4E3e" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XuTulVDMll" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDMlm" role="3cpWs9">
            <property role="TrG5h" value="newTargetId" />
            <node concept="3uibUv" id="1XuTulVDMln" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="3K4zz7" id="1XuTulVDMlo" role="33vP2m">
              <node concept="2EnYce" id="1XuTulVDMlp" role="3K4GZi">
                <node concept="37vLTw" id="3GM_nagTtbP" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
                </node>
                <node concept="liA8E" id="1XuTulVDMlr" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SReference.getTargetNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getTargetNodeId" />
                </node>
              </node>
              <node concept="2ZW3vV" id="1XuTulVDMls" role="3K4Cdx">
                <node concept="3uibUv" id="1XuTulVDMlt" role="2ZW6by">
                  <ref role="3uigEE" to="cu2c:~DynamicReference" resolve="DynamicReference" />
                </node>
                <node concept="37vLTw" id="3GM_nagTrHi" role="2ZW6bz">
                  <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
                </node>
              </node>
              <node concept="10Nm6u" id="1XuTulVDMlv" role="3K4E3e" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XahY_DYs3a" role="3cqZAp">
          <node concept="3cpWsn" id="1XahY_DYs3b" role="3cpWs9">
            <property role="TrG5h" value="oldTargetModel" />
            <node concept="3uibUv" id="1XahY_DYs3c" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2EnYce" id="1XahY_DYs3d" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTy$O" role="2Oq$k0">
                <ref role="3cqZAo" node="1XuTulVDMkZ" resolve="oldReference" />
              </node>
              <node concept="liA8E" id="1XahY_DYs3f" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SReference.getTargetSModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getTargetSModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1XahY_DYsFa" role="3cqZAp">
          <node concept="3clFbS" id="1XahY_DYsFb" role="3clFbx">
            <node concept="3clFbF" id="1XahY_DYt1K" role="3cqZAp">
              <node concept="37vLTI" id="1XahY_DYt1M" role="3clFbG">
                <node concept="10Nm6u" id="1XahY_DYt1P" role="37vLTx" />
                <node concept="37vLTw" id="3GM_nagTvHP" role="37vLTJ">
                  <ref role="3cqZAo" node="1XahY_DYs3b" resolve="oldTargetModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1XahY_DYsK8" role="3clFbw">
            <node concept="2OqwBi" id="2n9zn0CqN4b" role="2Oq$k0">
              <node concept="liA8E" id="2n9zn0CqN4c" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="2n9zn0CqN4d" role="2Oq$k0">
                <node concept="2OqwBi" id="2n9zn0CqN4e" role="2JrQYb">
                  <node concept="37vLTw" id="2BHiRxgmx42" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XuTulVDMmw" resolve="oldNode" />
                  </node>
                  <node concept="I4A8Y" id="2n9zn0CqN4g" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1XahY_DYsKc" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="3GM_nagTtzA" role="37wK5m">
                <ref role="3cqZAo" node="1XahY_DYs3b" resolve="oldTargetModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XahY_DYt25" role="3cqZAp">
          <node concept="3cpWsn" id="1XahY_DYt26" role="3cpWs9">
            <property role="TrG5h" value="newTargetModel" />
            <node concept="3uibUv" id="1XahY_DYt27" role="1tU5fm">
              <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2EnYce" id="1XahY_DYt28" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTtOr" role="2Oq$k0">
                <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
              </node>
              <node concept="liA8E" id="1XahY_DYt2a" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SReference.getTargetSModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getTargetSModelReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1XahY_DYt1Q" role="3cqZAp">
          <node concept="3clFbS" id="1XahY_DYt1R" role="3clFbx">
            <node concept="3clFbF" id="1XahY_DYt1S" role="3cqZAp">
              <node concept="37vLTI" id="1XahY_DYt1T" role="3clFbG">
                <node concept="10Nm6u" id="1XahY_DYt1U" role="37vLTx" />
                <node concept="37vLTw" id="3GM_nagTAx7" role="37vLTJ">
                  <ref role="3cqZAo" node="1XahY_DYt26" resolve="newTargetModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1XahY_DYt1W" role="3clFbw">
            <node concept="2OqwBi" id="2n9zn0CqNgB" role="2Oq$k0">
              <node concept="liA8E" id="2n9zn0CqNgC" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
              </node>
              <node concept="2JrnkZ" id="2n9zn0CqNgD" role="2Oq$k0">
                <node concept="2OqwBi" id="2n9zn0CqNgE" role="2JrQYb">
                  <node concept="37vLTw" id="2BHiRxgmcrN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XuTulVDMmy" resolve="newNode" />
                  </node>
                  <node concept="I4A8Y" id="2n9zn0CqNgG" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1XahY_DYt23" role="2OqNvi">
              <ref role="37wK5l" to="e2lb:~Object.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="37vLTw" id="3GM_nagTs6X" role="37wK5m">
                <ref role="3cqZAo" node="1XahY_DYt26" resolve="newTargetModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1XuTulVDMlw" role="3cqZAp">
          <node concept="3clFbS" id="1XuTulVDMlx" role="3clFbx">
            <node concept="3SKdUt" id="1XuTulVDMly" role="3cqZAp">
              <node concept="3SKdUq" id="1XuTulVDMlz" role="3SKWNk">
                <property role="3SKdUp" value="same references" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1XuTulVDMl$" role="3clFbw">
            <node concept="1Wc70l" id="1XuTulVDMl_" role="3uHU7B">
              <node concept="17R0WA" id="1XuTulVDMlA" role="3uHU7B">
                <node concept="37vLTw" id="3GM_nagTxl5" role="3uHU7B">
                  <ref role="3cqZAo" node="1XuTulVDMlb" resolve="oldTargetId" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$PG" role="3uHU7w">
                  <ref role="3cqZAo" node="1XuTulVDMlm" resolve="newTargetId" />
                </node>
              </node>
              <node concept="17R0WA" id="1XuTulVDMlD" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagT_uT" role="3uHU7B">
                  <ref role="3cqZAo" node="1XahY_DYs3b" resolve="oldTargetModel" />
                </node>
                <node concept="37vLTw" id="3GM_nagTrKg" role="3uHU7w">
                  <ref role="3cqZAo" node="1XahY_DYt26" resolve="newTargetModel" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="1XuTulVDMlK" role="3uHU7w">
              <node concept="2EnYce" id="1XuTulVDMlL" role="3uHU7B">
                <node concept="1eOMI4" id="hVurbzUvBv" role="2Oq$k0">
                  <node concept="10QFUN" id="hVurbzUvBw" role="1eOMHV">
                    <node concept="3uibUv" id="hVurbzUvBx" role="10QFUM">
                      <ref role="3uigEE" to="cu2c:~SReference" resolve="SReference" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTyVT" role="10QFUP">
                      <ref role="3cqZAo" node="1XuTulVDMkZ" resolve="oldReference" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1XuTulVDMlN" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SReference.getResolveInfo():java.lang.String" resolve="getResolveInfo" />
                </node>
              </node>
              <node concept="2EnYce" id="1XuTulVDMlO" role="3uHU7w">
                <node concept="1eOMI4" id="hVurbzUx3$" role="2Oq$k0">
                  <node concept="10QFUN" id="hVurbzUx3_" role="1eOMHV">
                    <node concept="3uibUv" id="hVurbzUx3A" role="10QFUM">
                      <ref role="3uigEE" to="cu2c:~SReference" resolve="SReference" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTvB$" role="10QFUP">
                      <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1XuTulVDMlQ" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~SReference.getResolveInfo():java.lang.String" resolve="getResolveInfo" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1XuTulVDMlR" role="9aQIa">
            <node concept="3clFbS" id="1XuTulVDMlS" role="9aQI4">
              <node concept="3cpWs8" id="1XuTulVDMlT" role="3cqZAp">
                <node concept="3cpWsn" id="1XuTulVDMlU" role="3cpWs9">
                  <property role="TrG5h" value="targetModel" />
                  <node concept="2EnYce" id="1XuTulVDMlV" role="33vP2m">
                    <node concept="37vLTw" id="3GM_nagTwxy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
                    </node>
                    <node concept="liA8E" id="1XuTulVDMlX" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SReference.getTargetSModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getTargetSModelReference" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="1XuTulVDMlY" role="1tU5fm">
                    <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1XuTulVDMmf" role="3cqZAp">
                <node concept="2OqwBi" id="1XuTulVDMmg" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeukoN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                  </node>
                  <node concept="TSZUe" id="1XuTulVDMmi" role="2OqNvi">
                    <node concept="2ShNRf" id="1XuTulVDMmj" role="25WWJ7">
                      <node concept="1pGfFk" id="1XuTulVDMmk" role="2ShVmc">
                        <ref role="37wK5l" to="btf5:2nH2HpRnsMF" resolve="SetReferenceChange" />
                        <node concept="37vLTw" id="2BHiRxeunkQ" role="37wK5m">
                          <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                        </node>
                        <node concept="2OqwBi" id="1XuTulVDMmm" role="37wK5m">
                          <node concept="liA8E" id="24cAaiUz$gP" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="1XuTulVDMmn" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxgmaDF" role="2JrQYb">
                              <ref role="3cqZAo" node="1XuTulVDMmw" resolve="oldNode" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxgmq1U" role="37wK5m">
                          <ref role="3cqZAo" node="1XuTulVDMm$" resolve="role" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT_vT" role="37wK5m">
                          <ref role="3cqZAo" node="1XuTulVDMlU" resolve="targetModel" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTzZS" role="37wK5m">
                          <ref role="3cqZAo" node="1XuTulVDMlm" resolve="newTargetId" />
                        </node>
                        <node concept="2EnYce" id="1XuTulVDMmt" role="37wK5m">
                          <node concept="1eOMI4" id="hVurbzUwh2" role="2Oq$k0">
                            <node concept="10QFUN" id="hVurbzUwh3" role="1eOMHV">
                              <node concept="3uibUv" id="hVurbzUwh4" role="10QFUM">
                                <ref role="3uigEE" to="cu2c:~SReference" resolve="SReference" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagT_oS" role="10QFUP">
                                <ref role="3cqZAo" node="1XuTulVDMl5" resolve="newReference" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1XuTulVDMmv" role="2OqNvi">
                            <ref role="37wK5l" to="cu2c:~SReference.getResolveInfo():java.lang.String" resolve="getResolveInfo" />
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
      <node concept="37vLTG" id="1XuTulVDMmw" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1XuTulVDMmx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1XuTulVDMmy" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1XuTulVDMmz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1XuTulVDMm$" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="5IRXTJLPLqi" role="1tU5fm">
          <ref role="3uigEE" to="t3eg:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1HIZsCuIWnf" role="jymVt">
      <property role="TrG5h" value="buildForNode" />
      <node concept="3cqZAl" id="1HIZsCuIWng" role="3clF45" />
      <node concept="3Tm1VV" id="1HIZsCuIWnh" role="1B3o_S" />
      <node concept="3clFbS" id="1HIZsCuIWni" role="3clF47">
        <node concept="1gVbGN" id="1HIZsCuIWR8" role="3cqZAp">
          <node concept="22lmx$" id="1HIZsCuIWRf" role="1gVkn0">
            <node concept="3y3z36" id="1HIZsCuIWRj" role="3uHU7w">
              <node concept="10Nm6u" id="1HIZsCuIWRm" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxglpOk" role="3uHU7B">
                <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
              </node>
            </node>
            <node concept="3y3z36" id="1HIZsCuIWRb" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm96G" role="3uHU7B">
                <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
              </node>
              <node concept="10Nm6u" id="1HIZsCuIWRe" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1HIZsCuIWRB" role="3cqZAp" />
        <node concept="3clFbJ" id="1HIZsCuIWRD" role="3cqZAp">
          <node concept="3clFbS" id="1HIZsCuIWRE" role="3clFbx">
            <node concept="3clFbF" id="1HIZsCuIWRZ" role="3cqZAp">
              <node concept="2OqwBi" id="1HIZsCuIWS1" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuWTe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                </node>
                <node concept="TSZUe" id="1HIZsCuIWWC" role="2OqNvi">
                  <node concept="2ShNRf" id="1HIZsCuIWRU" role="25WWJ7">
                    <node concept="1pGfFk" id="1HIZsCuIWRV" role="2ShVmc">
                      <ref role="37wK5l" to="btf5:5x0q8wkvS4_" resolve="AddRootChange" />
                      <node concept="37vLTw" id="2BHiRxeuslx" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="2OqwBi" id="1HIZsCuIWWL" role="37wK5m">
                        <node concept="liA8E" id="24cAaiUz$ix" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="1HIZsCuIWWJ" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgma$H" role="2JrQYb">
                            <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1HIZsCuIWRI" role="3clFbw">
            <node concept="10Nm6u" id="1HIZsCuIWRL" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglqed" role="3uHU7B">
              <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
            </node>
          </node>
          <node concept="3eNFk2" id="1HIZsCuJ07h" role="3eNLev">
            <node concept="3clFbC" id="1HIZsCuJ07n" role="3eO9$A">
              <node concept="10Nm6u" id="1HIZsCuJ07q" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxgmaxh" role="3uHU7B">
                <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
              </node>
            </node>
            <node concept="3clFbS" id="1HIZsCuJ07j" role="3eOfB_">
              <node concept="3clFbF" id="1HIZsCuJ07t" role="3cqZAp">
                <node concept="2OqwBi" id="1HIZsCuJ07u" role="3clFbG">
                  <node concept="37vLTw" id="2BHiRxeuPqs" role="2Oq$k0">
                    <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                  </node>
                  <node concept="TSZUe" id="1HIZsCuJ07w" role="2OqNvi">
                    <node concept="2ShNRf" id="1HIZsCuJ07x" role="25WWJ7">
                      <node concept="1pGfFk" id="1HIZsCuJ07y" role="2ShVmc">
                        <ref role="37wK5l" to="btf5:5x0q8wkvVi7" resolve="DeleteRootChange" />
                        <node concept="37vLTw" id="2BHiRxeuWR8" role="37wK5m">
                          <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                        </node>
                        <node concept="2OqwBi" id="1HIZsCuJ07$" role="37wK5m">
                          <node concept="liA8E" id="24cAaiUz$nt" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="1HIZsCuJ07_" role="2Oq$k0">
                            <node concept="37vLTw" id="2BHiRxghgje" role="2JrQYb">
                              <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
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
          <node concept="9aQIb" id="1HIZsCuJ07r" role="9aQIa">
            <node concept="3clFbS" id="1HIZsCuJ07s" role="9aQI4">
              <node concept="3clFbF" id="1HIZsCuIWnz" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyz9ms" role="3clFbG">
                  <ref role="37wK5l" node="42hl10VHbfX" resolve="buildForProperties" />
                  <node concept="37vLTw" id="2BHiRxghfzc" role="37wK5m">
                    <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm7J$" role="37wK5m">
                    <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1HIZsCuIWnB" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyzeAn" role="3clFbG">
                  <ref role="37wK5l" node="42hl10VHbhI" resolve="buildForReferences" />
                  <node concept="37vLTw" id="2BHiRxglB8K" role="37wK5m">
                    <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxgmKr7" role="37wK5m">
                    <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="1HIZsCuIWnF" role="3cqZAp" />
              <node concept="2Gpval" id="1HIZsCuIWnG" role="3cqZAp">
                <node concept="2GrKxI" id="1HIZsCuIWnH" role="2Gsz3X">
                  <property role="TrG5h" value="role" />
                </node>
                <node concept="3clFbS" id="1HIZsCuIWo3" role="2LFqv$">
                  <node concept="3clFbF" id="1HIZsCuIWo4" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyzfdZ" role="3clFbG">
                      <ref role="37wK5l" node="35ve9_LJue3" resolve="buildForNodeRole" />
                      <node concept="37vLTw" id="2BHiRxgm8Ll" role="37wK5m">
                        <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglQ_v" role="37wK5m">
                        <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
                      </node>
                      <node concept="2GrUjf" id="1HIZsCuIWo8" role="37wK5m">
                        <ref role="2Gs0qQ" node="1HIZsCuIWnH" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="58$Pzbk9ypv" role="2GsD0m">
                  <node concept="2OqwBi" id="1HIZsCuIWnL" role="2Oq$k0">
                    <node concept="2OqwBi" id="1HIZsCuIWnM" role="2Oq$k0">
                      <node concept="2OqwBi" id="1HIZsCuIWnN" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxgheTh" role="2Oq$k0">
                          <ref role="3cqZAo" node="1HIZsCuIWo9" resolve="oldNode" />
                        </node>
                        <node concept="32TBzR" id="1HIZsCuIWnP" role="2OqNvi" />
                      </node>
                      <node concept="3QWeyG" id="1HIZsCuIWnQ" role="2OqNvi">
                        <node concept="2OqwBi" id="1HIZsCuIWnR" role="576Qk">
                          <node concept="37vLTw" id="2BHiRxgm6_j" role="2Oq$k0">
                            <ref role="3cqZAo" node="1HIZsCuIWob" resolve="newNode" />
                          </node>
                          <node concept="32TBzR" id="1HIZsCuIWnT" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="1HIZsCuIWnU" role="2OqNvi">
                      <node concept="1bVj0M" id="1HIZsCuIWnV" role="23t8la">
                        <node concept="3clFbS" id="1HIZsCuIWnW" role="1bW5cS">
                          <node concept="3clFbF" id="1HIZsCuIWnX" role="3cqZAp">
                            <node concept="2OqwBi" id="58$Pzbk9wrS" role="3clFbG">
                              <node concept="2JrnkZ" id="58$Pzbk9wdj" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxgm5Vf" role="2JrQYb">
                                  <ref role="3cqZAo" node="1HIZsCuIWo1" resolve="ch" />
                                </node>
                              </node>
                              <node concept="liA8E" id="58$Pzbk9x2T" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SNode.getContainmentLink():org.jetbrains.mps.openapi.language.SContainmentLink" resolve="getContainmentLink" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1HIZsCuIWo1" role="1bW2Oz">
                          <property role="TrG5h" value="ch" />
                          <node concept="2jxLKc" id="1HIZsCuIWo2" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1VAtEI" id="58$Pzbk9$mV" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HIZsCuIWo9" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="1HIZsCuIWoa" role="1tU5fm" />
        <node concept="2AHcQZ" id="1HIZsCuIWRN" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="1HIZsCuIWob" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="1HIZsCuIWQW" role="1tU5fm" />
        <node concept="2AHcQZ" id="1HIZsCuIWRM" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="35ve9_LJue3" role="jymVt">
      <property role="TrG5h" value="buildForNodeRole" />
      <node concept="37vLTG" id="35ve9_LJux1" role="3clF46">
        <property role="TrG5h" value="oldNode" />
        <node concept="3Tqbb2" id="35ve9_LJux3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35ve9_LJuzv" role="3clF46">
        <property role="TrG5h" value="newNode" />
        <node concept="3Tqbb2" id="35ve9_LJuzx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35ve9_LJuzI" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="58$Pzbk9$rl" role="1tU5fm">
          <ref role="3uigEE" to="t3eg:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3cqZAl" id="35ve9_LJue4" role="3clF45" />
      <node concept="3Tm6S6" id="2w98u$ITBbT" role="1B3o_S" />
      <node concept="3clFbS" id="35ve9_LJue6" role="3clF47">
        <node concept="3clFbF" id="2w98u$ITBbE" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8tH" role="3clFbG">
            <ref role="37wK5l" node="2w98u$ITz2a" resolve="buildForNodeRole" />
            <node concept="2YIFZM" id="5RC8IUNmfCE" role="37wK5m">
              <ref role="37wK5l" to="msyo:~IterableUtil.asList(java.lang.Iterable):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
              <node concept="2OqwBi" id="2w98u$ITBbJ" role="37wK5m">
                <node concept="2JrnkZ" id="2w98u$ITBbK" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmz0C" role="2JrQYb">
                    <ref role="3cqZAo" node="35ve9_LJux1" resolve="oldNode" />
                  </node>
                </node>
                <node concept="liA8E" id="2w98u$ITBbM" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink):java.lang.Iterable" resolve="getChildren" />
                  <node concept="37vLTw" id="2BHiRxgm7LL" role="37wK5m">
                    <ref role="3cqZAo" node="35ve9_LJuzI" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="5RC8IUNmgKl" role="37wK5m">
              <ref role="37wK5l" to="msyo:~IterableUtil.asList(java.lang.Iterable):java.util.List" resolve="asList" />
              <ref role="1Pybhc" to="msyo:~IterableUtil" resolve="IterableUtil" />
              <node concept="2OqwBi" id="2w98u$ITBbO" role="37wK5m">
                <node concept="2JrnkZ" id="2w98u$ITBbP" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmFn2" role="2JrQYb">
                    <ref role="3cqZAo" node="35ve9_LJuzv" resolve="newNode" />
                  </node>
                </node>
                <node concept="liA8E" id="2w98u$ITBbR" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink):java.lang.Iterable" resolve="getChildren" />
                  <node concept="37vLTw" id="2BHiRxgm8zH" role="37wK5m">
                    <ref role="3cqZAo" node="35ve9_LJuzI" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="6QwXr37O8hu" role="37wK5m">
              <node concept="liA8E" id="24cAaiUz$it" role="2OqNvi">
                <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
              </node>
              <node concept="2JrnkZ" id="6QwXr37O8hs" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgm7JV" role="2JrQYb">
                  <ref role="3cqZAo" node="35ve9_LJux1" resolve="oldNode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgm9nf" role="37wK5m">
              <ref role="3cqZAo" node="35ve9_LJuzI" resolve="role" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="2w98u$ITz2a" role="jymVt">
      <property role="TrG5h" value="buildForNodeRole" />
      <node concept="37vLTG" id="2w98u$ITz2b" role="3clF46">
        <property role="TrG5h" value="oldChildren" />
        <node concept="_YKpA" id="2w98u$ITBaV" role="1tU5fm">
          <node concept="3qUE_q" id="5RC8IUNm7Nx" role="_ZDj9">
            <node concept="3uibUv" id="2svEwgJ4TkG" role="3qUE_r">
              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2w98u$ITz2d" role="3clF46">
        <property role="TrG5h" value="newChildren" />
        <node concept="_YKpA" id="2w98u$ITBaY" role="1tU5fm">
          <node concept="3qUE_q" id="5RC8IUNlW38" role="_ZDj9">
            <node concept="3uibUv" id="2svEwgJ5nAn" role="3qUE_r">
              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6QwXr37O6fM" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3uibUv" id="6QwXr37O8hg" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="6QwXr37O6fK" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="58$Pzbkbbpe" role="1tU5fm">
          <ref role="3uigEE" to="t3eg:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2w98u$ITz2i" role="1B3o_S" />
      <node concept="3clFbS" id="2w98u$ITz2j" role="3clF47">
        <node concept="3cpWs8" id="2w98u$ITz2A" role="3cqZAp">
          <node concept="3cpWsn" id="2w98u$ITz2B" role="3cpWs9">
            <property role="TrG5h" value="oldIds" />
            <node concept="_YKpA" id="2w98u$ITz2C" role="1tU5fm">
              <node concept="3uibUv" id="2w98u$ITz2D" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="2w98u$ITz2E" role="33vP2m">
              <node concept="2OqwBi" id="2w98u$ITz2F" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxgmdY_" role="2Oq$k0">
                  <ref role="3cqZAo" node="2w98u$ITz2b" resolve="oldChildren" />
                </node>
                <node concept="3$u5V9" id="2w98u$ITz2H" role="2OqNvi">
                  <node concept="1bVj0M" id="2w98u$ITz2I" role="23t8la">
                    <node concept="3clFbS" id="2w98u$ITz2J" role="1bW5cS">
                      <node concept="3clFbF" id="2w98u$ITz2K" role="3cqZAp">
                        <node concept="2OqwBi" id="2w98u$ITz2L" role="3clFbG">
                          <node concept="liA8E" id="24cAaiUz$iT" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="2w98u$ITz2M" role="2Oq$k0">
                            <node concept="37vLTw" id="5RC8IUNmiEL" role="2JrQYb">
                              <ref role="3cqZAo" node="2w98u$ITz2P" resolve="n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2w98u$ITz2P" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="2jxLKc" id="2w98u$ITz2Q" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="2w98u$ITz2R" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2w98u$ITz2S" role="3cqZAp">
          <node concept="3cpWsn" id="2w98u$ITz2T" role="3cpWs9">
            <property role="TrG5h" value="newIds" />
            <node concept="_YKpA" id="2w98u$ITz2U" role="1tU5fm">
              <node concept="3uibUv" id="2w98u$ITz2V" role="_ZDj9">
                <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="2w98u$ITz2W" role="33vP2m">
              <node concept="2OqwBi" id="2w98u$ITz2X" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxglB_A" role="2Oq$k0">
                  <ref role="3cqZAo" node="2w98u$ITz2d" resolve="newChildren" />
                </node>
                <node concept="3$u5V9" id="2w98u$ITz2Z" role="2OqNvi">
                  <node concept="1bVj0M" id="2w98u$ITz30" role="23t8la">
                    <node concept="3clFbS" id="2w98u$ITz31" role="1bW5cS">
                      <node concept="3clFbF" id="2w98u$ITz32" role="3cqZAp">
                        <node concept="2OqwBi" id="2svEwgJ5b9l" role="3clFbG">
                          <node concept="liA8E" id="2svEwgJ5b9m" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="2svEwgJ5b9n" role="2Oq$k0">
                            <node concept="37vLTw" id="2svEwgJ5b9o" role="2JrQYb">
                              <ref role="3cqZAo" node="2w98u$ITz37" resolve="n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2w98u$ITz37" role="1bW2Oz">
                      <property role="TrG5h" value="n" />
                      <node concept="2jxLKc" id="2w98u$ITz38" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="2w98u$ITz39" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2w98u$ITz3a" role="3cqZAp">
          <node concept="3cpWsn" id="2w98u$ITz3b" role="3cpWs9">
            <property role="TrG5h" value="finder" />
            <node concept="3uibUv" id="2w98u$ITz3c" role="1tU5fm">
              <ref role="3uigEE" to="unno:4k3fuHGtfwF" resolve="LongestCommonSubsequenceFinder" />
              <node concept="3uibUv" id="2w98u$ITz3d" role="11_B2D">
                <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2ShNRf" id="2w98u$ITz3e" role="33vP2m">
              <node concept="1pGfFk" id="2w98u$ITz3f" role="2ShVmc">
                <ref role="37wK5l" to="unno:4k3fuHGtfwG" resolve="LongestCommonSubsequenceFinder" />
                <node concept="3uibUv" id="2w98u$ITz3g" role="1pMfVU">
                  <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="37vLTw" id="3GM_nagTxAz" role="37wK5m">
                  <ref role="3cqZAo" node="2w98u$ITz2B" resolve="oldIds" />
                </node>
                <node concept="37vLTw" id="3GM_nagT$KB" role="37wK5m">
                  <ref role="3cqZAo" node="2w98u$ITz2T" resolve="newIds" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2w98u$ITz3j" role="3cqZAp" />
        <node concept="3SKdUt" id="2w98u$ITz3k" role="3cqZAp">
          <node concept="3SKdUq" id="2w98u$ITz3l" role="3SKWNk">
            <property role="3SKdUp" value="Finding insertings, deletings and replacings" />
          </node>
        </node>
        <node concept="3cpWs8" id="2w98u$ITz3m" role="3cqZAp">
          <node concept="3cpWsn" id="2w98u$ITz3n" role="3cpWs9">
            <property role="TrG5h" value="differentIndices" />
            <node concept="_YKpA" id="2w98u$ITz3o" role="1tU5fm">
              <node concept="1LlUBW" id="2w98u$ITz3p" role="_ZDj9">
                <node concept="1LlUBW" id="2w98u$ITz3q" role="1Lm7xW">
                  <node concept="10Oyi0" id="2w98u$ITz3r" role="1Lm7xW" />
                  <node concept="10Oyi0" id="2w98u$ITz3s" role="1Lm7xW" />
                </node>
                <node concept="1LlUBW" id="2w98u$ITz3t" role="1Lm7xW">
                  <node concept="10Oyi0" id="2w98u$ITz3u" role="1Lm7xW" />
                  <node concept="10Oyi0" id="2w98u$ITz3v" role="1Lm7xW" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2w98u$ITz3w" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTsrf" role="2Oq$k0">
                <ref role="3cqZAo" node="2w98u$ITz3b" resolve="finder" />
              </node>
              <node concept="liA8E" id="2w98u$ITz3y" role="2OqNvi">
                <ref role="37wK5l" to="unno:4k3fuHGtmvX" resolve="getDifferentIndices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2w98u$ITz3z" role="3cqZAp">
          <node concept="2GrKxI" id="2w98u$ITz3$" role="2Gsz3X">
            <property role="TrG5h" value="indices" />
          </node>
          <node concept="3clFbS" id="2w98u$ITz3_" role="2LFqv$">
            <node concept="3cpWs8" id="2w98u$ITz3A" role="3cqZAp">
              <node concept="3cpWsn" id="2w98u$ITz3B" role="3cpWs9">
                <property role="TrG5h" value="oldIndices" />
                <node concept="1LlUBW" id="2w98u$ITz3C" role="1tU5fm">
                  <node concept="10Oyi0" id="2w98u$ITz3D" role="1Lm7xW" />
                  <node concept="10Oyi0" id="2w98u$ITz3E" role="1Lm7xW" />
                </node>
                <node concept="1LFfDK" id="2w98u$ITz3F" role="33vP2m">
                  <node concept="3cmrfG" id="2w98u$ITz3G" role="1LF_Uc">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2GrUjf" id="2w98u$ITz3H" role="1LFl5Q">
                    <ref role="2Gs0qQ" node="2w98u$ITz3$" resolve="indices" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2w98u$ITz3I" role="3cqZAp">
              <node concept="3cpWsn" id="2w98u$ITz3J" role="3cpWs9">
                <property role="TrG5h" value="newIndices" />
                <node concept="1LlUBW" id="2w98u$ITz3K" role="1tU5fm">
                  <node concept="10Oyi0" id="2w98u$ITz3L" role="1Lm7xW" />
                  <node concept="10Oyi0" id="2w98u$ITz3M" role="1Lm7xW" />
                </node>
                <node concept="1LFfDK" id="2w98u$ITz3N" role="33vP2m">
                  <node concept="2GrUjf" id="2w98u$ITz3O" role="1LFl5Q">
                    <ref role="2Gs0qQ" node="2w98u$ITz3$" resolve="indices" />
                  </node>
                  <node concept="3cmrfG" id="2w98u$ITz3P" role="1LF_Uc">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2w98u$ITz3Q" role="3cqZAp">
              <node concept="2OqwBi" id="2w98u$ITz3R" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuhAm" role="2Oq$k0">
                  <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                </node>
                <node concept="TSZUe" id="2w98u$ITz3T" role="2OqNvi">
                  <node concept="2ShNRf" id="2w98u$ITz3U" role="25WWJ7">
                    <node concept="1pGfFk" id="2w98u$ITz3V" role="2ShVmc">
                      <ref role="37wK5l" to="btf5:4k3fuHGtdr9" resolve="NodeGroupChange" />
                      <node concept="37vLTw" id="2BHiRxeuQQr" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglB7J" role="37wK5m">
                        <ref role="3cqZAo" node="6QwXr37O6fM" resolve="parentId" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglYEu" role="37wK5m">
                        <ref role="3cqZAo" node="6QwXr37O6fK" resolve="role" />
                      </node>
                      <node concept="1LFfDK" id="2w98u$ITz42" role="37wK5m">
                        <node concept="3cmrfG" id="2w98u$ITz43" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBbd" role="1LFl5Q">
                          <ref role="3cqZAo" node="2w98u$ITz3B" resolve="oldIndices" />
                        </node>
                      </node>
                      <node concept="1LFfDK" id="2w98u$ITz45" role="37wK5m">
                        <node concept="3cmrfG" id="2w98u$ITz46" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTrZY" role="1LFl5Q">
                          <ref role="3cqZAo" node="2w98u$ITz3B" resolve="oldIndices" />
                        </node>
                      </node>
                      <node concept="1LFfDK" id="2w98u$ITz48" role="37wK5m">
                        <node concept="3cmrfG" id="2w98u$ITz49" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTvKI" role="1LFl5Q">
                          <ref role="3cqZAo" node="2w98u$ITz3J" resolve="newIndices" />
                        </node>
                      </node>
                      <node concept="1LFfDK" id="2w98u$ITz4b" role="37wK5m">
                        <node concept="3cmrfG" id="2w98u$ITz4c" role="1LF_Uc">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTznh" role="1LFl5Q">
                          <ref role="3cqZAo" node="2w98u$ITz3J" resolve="newIndices" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3GM_nagTy5v" role="2GsD0m">
            <ref role="3cqZAo" node="2w98u$ITz3n" resolve="differentIndices" />
          </node>
        </node>
        <node concept="3clFbH" id="2w98u$ITz4f" role="3cqZAp" />
        <node concept="3SKdUt" id="2w98u$ITz4g" role="3cqZAp">
          <node concept="3SKdUq" id="2w98u$ITz4h" role="3SKWNk">
            <property role="3SKdUp" value="Finding changes for children" />
          </node>
        </node>
        <node concept="3cpWs8" id="2w98u$ITz4i" role="3cqZAp">
          <node concept="3cpWsn" id="2w98u$ITz4j" role="3cpWs9">
            <property role="TrG5h" value="commonIndices" />
            <node concept="_YKpA" id="2w98u$ITz4k" role="1tU5fm">
              <node concept="1LlUBW" id="2w98u$ITz4l" role="_ZDj9">
                <node concept="10Oyi0" id="2w98u$ITz4m" role="1Lm7xW" />
                <node concept="10Oyi0" id="2w98u$ITz4n" role="1Lm7xW" />
              </node>
            </node>
            <node concept="2OqwBi" id="2w98u$ITz4o" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTwQD" role="2Oq$k0">
                <ref role="3cqZAo" node="2w98u$ITz3b" resolve="finder" />
              </node>
              <node concept="liA8E" id="2w98u$ITz4q" role="2OqNvi">
                <ref role="37wK5l" to="unno:4k3fuHGtmse" resolve="getCommonIndices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2w98u$ITz4r" role="3cqZAp">
          <node concept="2OqwBi" id="2w98u$ITz4s" role="3clFbG">
            <node concept="2OqwBi" id="2w98u$ITz4t" role="2Oq$k0">
              <node concept="37vLTw" id="3GM_nagT$Q9" role="2Oq$k0">
                <ref role="3cqZAo" node="2w98u$ITz4j" resolve="commonIndices" />
              </node>
              <node concept="3$u5V9" id="2w98u$ITz4v" role="2OqNvi">
                <node concept="1bVj0M" id="2w98u$ITz4w" role="23t8la">
                  <node concept="3clFbS" id="2w98u$ITz4x" role="1bW5cS">
                    <node concept="3clFbF" id="2w98u$ITz4y" role="3cqZAp">
                      <node concept="1y4W85" id="2w98u$ITz4z" role="3clFbG">
                        <node concept="1LFfDK" id="2w98u$ITz4$" role="1y58nS">
                          <node concept="37vLTw" id="2BHiRxgm9$0" role="1LFl5Q">
                            <ref role="3cqZAo" node="2w98u$ITz4C" resolve="in" />
                          </node>
                          <node concept="3cmrfG" id="2w98u$ITz4A" role="1LF_Uc">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxglgrU" role="1y566C">
                          <ref role="3cqZAo" node="2w98u$ITz2b" resolve="oldChildren" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2w98u$ITz4C" role="1bW2Oz">
                    <property role="TrG5h" value="in" />
                    <node concept="2jxLKc" id="2w98u$ITz4D" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2w98u$ITz4E" role="2OqNvi">
              <node concept="1bVj0M" id="2w98u$ITz4F" role="23t8la">
                <node concept="3clFbS" id="2w98u$ITz4G" role="1bW5cS">
                  <node concept="3clFbF" id="2w98u$ITz4H" role="3cqZAp">
                    <node concept="1rXfSq" id="4hiugqyz9PU" role="3clFbG">
                      <ref role="37wK5l" node="1HIZsCuIWnf" resolve="buildForNode" />
                      <node concept="37vLTw" id="2BHiRxgma2q" role="37wK5m">
                        <ref role="3cqZAo" node="2w98u$ITz4S" resolve="child" />
                      </node>
                      <node concept="2OqwBi" id="2n9zn0CqMDY" role="37wK5m">
                        <node concept="liA8E" id="2n9zn0CqMDZ" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                          <node concept="2OqwBi" id="2n9zn0CqME0" role="37wK5m">
                            <node concept="liA8E" id="2n9zn0CqME1" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="2n9zn0CqME2" role="2Oq$k0">
                              <node concept="37vLTw" id="2BHiRxglqOE" role="2JrQYb">
                                <ref role="3cqZAo" node="2w98u$ITz4S" resolve="child" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2JrnkZ" id="2n9zn0CqME4" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxeut3x" role="2JrQYb">
                            <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2w98u$ITz4S" role="1bW2Oz">
                  <property role="TrG5h" value="child" />
                  <node concept="2jxLKc" id="2w98u$ITz4T" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="zRWNVrvB0K" role="3clF45" />
    </node>
    <node concept="3clFb_" id="42hl10VHbnK" role="jymVt">
      <property role="TrG5h" value="buildAddedAndDeletedDependencies" />
      <node concept="37vLTG" id="42hl10VHbnL" role="3clF46">
        <property role="TrG5h" value="referencesExtractor" />
        <node concept="1ajhzC" id="42hl10VHbnM" role="1tU5fm">
          <node concept="A3Dl8" id="42hl10VHbnO" role="1ajl9A">
            <node concept="16syzq" id="42hl10VHbnP" role="A3Ik2">
              <ref role="16sUi3" node="42hl10VHboH" resolve="D" />
            </node>
          </node>
          <node concept="3uibUv" id="5OnZ9cknHxm" role="1ajw0F">
            <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbnQ" role="3clF46">
        <property role="TrG5h" value="changeCreator" />
        <node concept="1ajhzC" id="42hl10VHbnR" role="1tU5fm">
          <node concept="16syzq" id="42hl10VHbnS" role="1ajw0F">
            <ref role="16sUi3" node="42hl10VHboH" resolve="D" />
          </node>
          <node concept="10P_77" id="42hl10VHbnT" role="1ajw0F" />
          <node concept="3uibUv" id="42hl10VHbnU" role="1ajl9A">
            <ref role="3uigEE" to="btf5:5Gi8bfMd_nS" resolve="DependencyChange" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="42hl10VHbnV" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbnW" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbnX" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbnY" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbnZ" role="3cpWs9">
            <property role="TrG5h" value="added" />
            <node concept="A3Dl8" id="42hl10VHbo0" role="1tU5fm">
              <node concept="16syzq" id="42hl10VHbo1" role="A3Ik2">
                <ref role="16sUi3" node="42hl10VHboH" resolve="D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42hl10VHbo2" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbo3" role="3cpWs9">
            <property role="TrG5h" value="deleted" />
            <node concept="A3Dl8" id="42hl10VHbo4" role="1tU5fm">
              <node concept="16syzq" id="42hl10VHbo5" role="A3Ik2">
                <ref role="16sUi3" node="42hl10VHboH" resolve="D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbo6" role="3cqZAp">
          <node concept="37vLTI" id="42hl10VHbo7" role="3clFbG">
            <node concept="1Ls8ON" id="42hl10VHbo8" role="37vLTJ">
              <node concept="37vLTw" id="3GM_nagTuel" role="1Lso8e">
                <ref role="3cqZAo" node="42hl10VHbnZ" resolve="added" />
              </node>
              <node concept="37vLTw" id="3GM_nagT$ZW" role="1Lso8e">
                <ref role="3cqZAo" node="42hl10VHbo3" resolve="deleted" />
              </node>
            </node>
            <node concept="1rXfSq" id="4hiugqyziYq" role="37vLTx">
              <ref role="37wK5l" node="42hl10VHbu8" resolve="getAddedAndDeleted" />
              <node concept="37vLTw" id="2BHiRxghiFt" role="37wK5m">
                <ref role="3cqZAo" node="42hl10VHbnL" resolve="referencesExtractor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbod" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHboe" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuSXQ" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
            </node>
            <node concept="X8dFx" id="1XuTulVDKA_" role="2OqNvi">
              <node concept="2OqwBi" id="42hl10VHboh" role="25WWJ7">
                <node concept="37vLTw" id="3GM_nagTuzC" role="2Oq$k0">
                  <ref role="3cqZAo" node="42hl10VHbnZ" resolve="added" />
                </node>
                <node concept="3$u5V9" id="42hl10VHboj" role="2OqNvi">
                  <node concept="1bVj0M" id="42hl10VHbok" role="23t8la">
                    <node concept="3clFbS" id="42hl10VHbol" role="1bW5cS">
                      <node concept="3clFbF" id="42hl10VHbom" role="3cqZAp">
                        <node concept="2Sg_IR" id="42hl10VHbon" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgm9iR" role="2SgG2M">
                            <ref role="3cqZAo" node="42hl10VHbnQ" resolve="changeCreator" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxgm9VI" role="2SgHGx">
                            <ref role="3cqZAo" node="42hl10VHbor" resolve="r" />
                          </node>
                          <node concept="3clFbT" id="42hl10VHboq" role="2SgHGx">
                            <property role="3clFbU" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="42hl10VHbor" role="1bW2Oz">
                      <property role="TrG5h" value="r" />
                      <node concept="2jxLKc" id="42hl10VHbos" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbot" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbou" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeu_8J" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
            </node>
            <node concept="X8dFx" id="1XuTulVDKAC" role="2OqNvi">
              <node concept="2OqwBi" id="42hl10VHbox" role="25WWJ7">
                <node concept="37vLTw" id="3GM_nagT_ks" role="2Oq$k0">
                  <ref role="3cqZAo" node="42hl10VHbo3" resolve="deleted" />
                </node>
                <node concept="3$u5V9" id="42hl10VHboz" role="2OqNvi">
                  <node concept="1bVj0M" id="42hl10VHbo$" role="23t8la">
                    <node concept="3clFbS" id="42hl10VHbo_" role="1bW5cS">
                      <node concept="3clFbF" id="42hl10VHboA" role="3cqZAp">
                        <node concept="2Sg_IR" id="42hl10VHboB" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgl5NF" role="2SgG2M">
                            <ref role="3cqZAo" node="42hl10VHbnQ" resolve="changeCreator" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxglVth" role="2SgHGx">
                            <ref role="3cqZAo" node="42hl10VHboF" resolve="r" />
                          </node>
                          <node concept="3clFbT" id="42hl10VHboE" role="2SgHGx">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="42hl10VHboF" role="1bW2Oz">
                      <property role="TrG5h" value="r" />
                      <node concept="2jxLKc" id="42hl10VHboG" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="42hl10VHboH" role="16eVyc">
        <property role="TrG5h" value="D" />
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHboI" role="jymVt">
      <property role="TrG5h" value="buildForImports" />
      <node concept="3cqZAl" id="42hl10VHboJ" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHboK" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHboL" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHboM" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHboN" role="3cpWs9">
            <property role="TrG5h" value="importedModelsExtractor" />
            <node concept="1ajhzC" id="42hl10VHboO" role="1tU5fm">
              <node concept="A3Dl8" id="42hl10VHboQ" role="1ajl9A">
                <node concept="3uibUv" id="42hl10VHboR" role="A3Ik2">
                  <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
              <node concept="3uibUv" id="5OnZ9ckq2m1" role="1ajw0F">
                <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
              </node>
            </node>
            <node concept="1bVj0M" id="42hl10VHboS" role="33vP2m">
              <node concept="37vLTG" id="42hl10VHboT" role="1bW2Oz">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="5OnZ9ckpFLu" role="1tU5fm">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
              </node>
              <node concept="3clFbS" id="42hl10VHboV" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHboW" role="3cqZAp">
                  <node concept="2OqwBi" id="42hl10VHboX" role="3clFbG">
                    <node concept="1eOMI4" id="42hl10VHboY" role="2Oq$k0">
                      <node concept="10QFUN" id="42hl10VHboZ" role="1eOMHV">
                        <node concept="2OqwBi" id="42hl10VHbp0" role="10QFUP">
                          <node concept="37vLTw" id="7uQYadQbuJ8" role="2Oq$k0">
                            <ref role="3cqZAo" node="42hl10VHboT" resolve="model" />
                          </node>
                          <node concept="liA8E" id="42hl10VHbp3" role="2OqNvi">
                            <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedModels():java.util.List" resolve="importedModels" />
                          </node>
                        </node>
                        <node concept="_YKpA" id="42hl10VHbp4" role="10QFUM">
                          <node concept="3uibUv" id="42hl10VHbp5" role="_ZDj9">
                            <ref role="3uigEE" to="cu2c:~SModel$ImportElement" resolve="SModel.ImportElement" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="42hl10VHbp6" role="2OqNvi">
                      <node concept="1bVj0M" id="42hl10VHbp7" role="23t8la">
                        <node concept="3clFbS" id="42hl10VHbp8" role="1bW5cS">
                          <node concept="3clFbF" id="42hl10VHbp9" role="3cqZAp">
                            <node concept="2OqwBi" id="42hl10VHbpa" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgl2re" role="2Oq$k0">
                                <ref role="3cqZAo" node="42hl10VHbpd" resolve="ie" />
                              </node>
                              <node concept="liA8E" id="42hl10VHbpc" role="2OqNvi">
                                <ref role="37wK5l" to="cu2c:~SModel$ImportElement.getModelReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getModelReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="42hl10VHbpd" role="1bW2Oz">
                          <property role="TrG5h" value="ie" />
                          <node concept="2jxLKc" id="42hl10VHbpe" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42hl10VHbpf" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbpg" role="3cpWs9">
            <property role="TrG5h" value="changeCreator" />
            <node concept="1ajhzC" id="42hl10VHbph" role="1tU5fm">
              <node concept="3uibUv" id="42hl10VHbpi" role="1ajw0F">
                <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
              </node>
              <node concept="10P_77" id="42hl10VHbpj" role="1ajw0F" />
              <node concept="3uibUv" id="42hl10VHbpk" role="1ajl9A">
                <ref role="3uigEE" to="btf5:5Gi8bfMdBo6" resolve="ImportedModelChange" />
              </node>
            </node>
            <node concept="1bVj0M" id="42hl10VHbpl" role="33vP2m">
              <node concept="37vLTG" id="42hl10VHbpm" role="1bW2Oz">
                <property role="TrG5h" value="mr" />
                <node concept="3uibUv" id="42hl10VHbpn" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
              <node concept="37vLTG" id="42hl10VHbpo" role="1bW2Oz">
                <property role="TrG5h" value="deleted" />
                <node concept="10P_77" id="42hl10VHbpp" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="42hl10VHbpq" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHbpr" role="3cqZAp">
                  <node concept="2ShNRf" id="42hl10VHbps" role="3clFbG">
                    <node concept="1pGfFk" id="42hl10VHbpt" role="2ShVmc">
                      <ref role="37wK5l" to="btf5:5Gi8bfMdBoh" resolve="ImportedModelChange" />
                      <node concept="37vLTw" id="2BHiRxeuDwR" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgmDvh" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbpm" resolve="mr" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgm74G" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbpo" resolve="deleted" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbpx" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyU9d" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbnK" resolve="buildAddedAndDeletedDependencies" />
            <node concept="37vLTw" id="3GM_nagTv33" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHboN" resolve="importedModelsExtractor" />
            </node>
            <node concept="37vLTw" id="3GM_nagT$jc" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHbpg" resolve="changeCreator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbp_" role="jymVt">
      <property role="TrG5h" value="buildForDependencies" />
      <node concept="37vLTG" id="42hl10VHbpA" role="3clF46">
        <property role="TrG5h" value="dependencyType" />
        <node concept="3uibUv" id="42hl10VHbpB" role="1tU5fm">
          <ref role="3uigEE" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbpC" role="3clF46">
        <property role="TrG5h" value="referencesExtractor" />
        <node concept="1ajhzC" id="42hl10VHbpD" role="1tU5fm">
          <node concept="A3Dl8" id="42hl10VHbpF" role="1ajl9A">
            <node concept="3uibUv" id="42hl10VHbpG" role="A3Ik2">
              <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
            </node>
          </node>
          <node concept="3uibUv" id="5OnZ9cknu$P" role="1ajw0F">
            <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="42hl10VHbpH" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbpI" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbpJ" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbpK" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbpL" role="3cpWs9">
            <property role="TrG5h" value="changeCreator" />
            <node concept="1ajhzC" id="42hl10VHbpM" role="1tU5fm">
              <node concept="3uibUv" id="42hl10VHbpN" role="1ajw0F">
                <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
              </node>
              <node concept="10P_77" id="42hl10VHbpO" role="1ajw0F" />
              <node concept="3uibUv" id="42hl10VHbpP" role="1ajl9A">
                <ref role="3uigEE" to="btf5:1WsO37X4pbS" resolve="ModuleDependencyChange" />
              </node>
            </node>
            <node concept="1bVj0M" id="42hl10VHbpQ" role="33vP2m">
              <node concept="37vLTG" id="42hl10VHbpR" role="1bW2Oz">
                <property role="TrG5h" value="mr" />
                <node concept="3uibUv" id="42hl10VHbpS" role="1tU5fm">
                  <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
              <node concept="37vLTG" id="42hl10VHbpT" role="1bW2Oz">
                <property role="TrG5h" value="deleted" />
                <node concept="10P_77" id="42hl10VHbpU" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="42hl10VHbpV" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHbpW" role="3cqZAp">
                  <node concept="2ShNRf" id="42hl10VHbpX" role="3clFbG">
                    <node concept="1pGfFk" id="42hl10VHbpY" role="2ShVmc">
                      <ref role="37wK5l" to="btf5:4LCuQ2Vx_P1" resolve="ModuleDependencyChange" />
                      <node concept="37vLTw" id="2BHiRxeu_Gt" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgld$x" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbpR" resolve="mr" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxglep$" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbpA" resolve="dependencyType" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgmIad" role="37wK5m">
                        <ref role="3cqZAo" node="42hl10VHbpT" resolve="deleted" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbq3" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz5HS" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbnK" resolve="buildAddedAndDeletedDependencies" />
            <node concept="37vLTw" id="2BHiRxgm8Xq" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHbpC" resolve="referencesExtractor" />
            </node>
            <node concept="37vLTw" id="3GM_nagTzZT" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHbpL" resolve="changeCreator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbq7" role="jymVt">
      <property role="TrG5h" value="buildForMetadata" />
      <node concept="3cqZAl" id="42hl10VHbq8" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbq9" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbqa" role="3clF47">
        <node concept="3clFbF" id="42hl10VHbqb" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz1ns" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHboI" resolve="buildForImports" />
          </node>
        </node>
        <node concept="3clFbH" id="42hl10VHbqd" role="3cqZAp" />
        <node concept="3clFbF" id="42hl10VHbqe" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeNE" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbp_" resolve="buildForDependencies" />
            <node concept="Rm8GO" id="42hl10VHbqg" role="37wK5m">
              <ref role="Rm8GQ" to="btf5:4LCuQ2Vx_lf" resolve="USED_LANG" />
              <ref role="1Px2BO" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
            </node>
            <node concept="1bVj0M" id="42hl10VHbqh" role="37wK5m">
              <node concept="3clFbS" id="42hl10VHbqi" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHbqj" role="3cqZAp">
                  <node concept="2YIFZM" id="419l6RFsJDP" role="3clFbG">
                    <ref role="37wK5l" to="unno:3IONCthJ3TP" resolve="getUsedLanguages" />
                    <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                    <node concept="37vLTw" id="419l6RFsJWx" role="37wK5m">
                      <ref role="3cqZAo" node="42hl10VHbqo" resolve="model" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="42hl10VHbqo" role="1bW2Oz">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="5OnZ9cknfTJ" role="1tU5fm">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbqq" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz99G" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbp_" resolve="buildForDependencies" />
            <node concept="Rm8GO" id="42hl10VHbqs" role="37wK5m">
              <ref role="Rm8GQ" to="btf5:4LCuQ2Vx_lg" resolve="USED_DEVKIT" />
              <ref role="1Px2BO" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
            </node>
            <node concept="1bVj0M" id="42hl10VHbqt" role="37wK5m">
              <node concept="3clFbS" id="42hl10VHbqu" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHbqv" role="3cqZAp">
                  <node concept="2OqwBi" id="42hl10VHbqw" role="3clFbG">
                    <node concept="37vLTw" id="7uQYadQcdzV" role="2Oq$k0">
                      <ref role="3cqZAo" node="42hl10VHbq$" resolve="model" />
                    </node>
                    <node concept="liA8E" id="42hl10VHbqz" role="2OqNvi">
                      <ref role="37wK5l" to="51te:~SModelDescriptorStub.importedDevkits():java.util.List" resolve="importedDevkits" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="42hl10VHbq$" role="1bW2Oz">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="5OnZ9ckoZfE" role="1tU5fm">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbqA" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyTu2" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbp_" resolve="buildForDependencies" />
            <node concept="Rm8GO" id="42hl10VHbqC" role="37wK5m">
              <ref role="Rm8GQ" to="btf5:4LCuQ2Vx_lh" resolve="LANG_ENGAGED_ON_GENERATION" />
              <ref role="1Px2BO" to="btf5:4LCuQ2Vx_l7" resolve="ModuleDependencyChange.DependencyType" />
            </node>
            <node concept="1bVj0M" id="42hl10VHbqD" role="37wK5m">
              <node concept="3clFbS" id="42hl10VHbqE" role="1bW5cS">
                <node concept="3clFbF" id="42hl10VHbqF" role="3cqZAp">
                  <node concept="2OqwBi" id="42hl10VHbqG" role="3clFbG">
                    <node concept="37vLTw" id="7uQYadQc$oI" role="2Oq$k0">
                      <ref role="3cqZAo" node="42hl10VHbqK" resolve="model" />
                    </node>
                    <node concept="liA8E" id="42hl10VHbqJ" role="2OqNvi">
                      <ref role="37wK5l" to="51te:~SModelDescriptorStub.engagedOnGenerationLanguages():java.util.List" resolve="engagedOnGenerationLanguages" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="42hl10VHbqK" role="1bW2Oz">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="5OnZ9ckplrw" role="1tU5fm">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="42hl10VHbqM" role="3cqZAp" />
        <node concept="3clFbJ" id="7BQNkbM9WuD" role="3cqZAp">
          <node concept="1Wc70l" id="7BQNkbMagaV" role="3clFbw">
            <node concept="2ZW3vV" id="7BQNkbMaszb" role="3uHU7w">
              <node concept="3uibUv" id="5OnZ9ck66ja" role="2ZW6by">
                <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
              </node>
              <node concept="37vLTw" id="7BQNkbMaiK6" role="2ZW6bz">
                <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
              </node>
            </node>
            <node concept="2ZW3vV" id="7BQNkbMa8Qh" role="3uHU7B">
              <node concept="3uibUv" id="5OnZ9ck5YOO" role="2ZW6by">
                <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
              </node>
              <node concept="37vLTw" id="7BQNkbM9Z5J" role="2ZW6bz">
                <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7BQNkbM9WuF" role="3clFbx">
            <node concept="3clFbJ" id="42hl10VHbqN" role="3cqZAp">
              <node concept="3clFbS" id="42hl10VHbqO" role="3clFbx">
                <node concept="3clFbF" id="42hl10VHbqP" role="3cqZAp">
                  <node concept="2OqwBi" id="42hl10VHbqQ" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeudfF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
                    </node>
                    <node concept="TSZUe" id="1XuTulVDKAu" role="2OqNvi">
                      <node concept="2ShNRf" id="42hl10VHbqT" role="25WWJ7">
                        <node concept="1pGfFk" id="42hl10VHbqU" role="2ShVmc">
                          <ref role="37wK5l" to="btf5:4LCuQ2VxAI2" resolve="DoNotGenerateOptionChange" />
                          <node concept="37vLTw" id="2BHiRxeuwCe" role="37wK5m">
                            <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="42hl10VHbqW" role="3clFbw">
                <node concept="2OqwBi" id="42hl10VHbqX" role="3uHU7B">
                  <node concept="1eOMI4" id="7BQNkbMaDy1" role="2Oq$k0">
                    <node concept="10QFUN" id="7BQNkbMaDxY" role="1eOMHV">
                      <node concept="3uibUv" id="5OnZ9ck6dKX" role="10QFUM">
                        <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxeuL7u" role="10QFUP">
                        <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="42hl10VHbr2" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~GeneratableSModel.isDoNotGenerate():boolean" resolve="isDoNotGenerate" />
                  </node>
                </node>
                <node concept="2OqwBi" id="42hl10VHbr3" role="3uHU7w">
                  <node concept="1eOMI4" id="7BQNkbMaOLE" role="2Oq$k0">
                    <node concept="10QFUN" id="7BQNkbMaOLF" role="1eOMHV">
                      <node concept="37vLTw" id="7BQNkbMaTK5" role="10QFUP">
                        <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
                      </node>
                      <node concept="3uibUv" id="5OnZ9ck6sKk" role="10QFUM">
                        <ref role="3uigEE" to="51te:~GeneratableSModel" resolve="GeneratableSModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="42hl10VHbr8" role="2OqNvi">
                    <ref role="37wK5l" to="51te:~GeneratableSModel.isDoNotGenerate():boolean" resolve="isDoNotGenerate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbsY" role="jymVt">
      <property role="TrG5h" value="build" />
      <node concept="3cqZAl" id="42hl10VHbsZ" role="3clF45" />
      <node concept="3Tm6S6" id="42hl10VHbt0" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbt1" role="3clF47">
        <node concept="3cpWs8" id="1HIZsCuJ09_" role="3cqZAp">
          <node concept="3cpWsn" id="1HIZsCuJ09A" role="3cpWs9">
            <property role="TrG5h" value="allRootIds" />
            <node concept="A3Dl8" id="1HIZsCuJ09B" role="1tU5fm">
              <node concept="3uibUv" id="1HIZsCuJ09C" role="A3Ik2">
                <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
              </node>
            </node>
            <node concept="2OqwBi" id="1HIZsCuJ09D" role="33vP2m">
              <node concept="2OqwBi" id="1HIZsCuJ09E" role="2Oq$k0">
                <node concept="2OqwBi" id="1HIZsCuJ09F" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuhTj" role="2Oq$k0">
                    <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
                  </node>
                  <node concept="2RRcyG" id="1HIZsCuJ09H" role="2OqNvi" />
                </node>
                <node concept="3QWeyG" id="1HIZsCuJ09I" role="2OqNvi">
                  <node concept="2OqwBi" id="1HIZsCuJ09J" role="576Qk">
                    <node concept="37vLTw" id="2BHiRxeuncn" role="2Oq$k0">
                      <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
                    </node>
                    <node concept="2RRcyG" id="1HIZsCuJ09L" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="1HIZsCuJ09M" role="2OqNvi">
                <node concept="1bVj0M" id="1HIZsCuJ09N" role="23t8la">
                  <node concept="3clFbS" id="1HIZsCuJ09O" role="1bW5cS">
                    <node concept="3clFbF" id="1HIZsCuJ09P" role="3cqZAp">
                      <node concept="2OqwBi" id="1HIZsCuJ09Q" role="3clFbG">
                        <node concept="liA8E" id="24cAaiUz$jp" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                        </node>
                        <node concept="2JrnkZ" id="1HIZsCuJ09R" role="2Oq$k0">
                          <node concept="37vLTw" id="2BHiRxgmOfp" role="2JrQYb">
                            <ref role="3cqZAo" node="1HIZsCuJ09U" resolve="n" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1HIZsCuJ09U" role="1bW2Oz">
                    <property role="TrG5h" value="n" />
                    <node concept="2jxLKc" id="1HIZsCuJ09V" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="42hl10VHbt7" role="3cqZAp">
          <node concept="2ShNRf" id="1HIZsCuJ09X" role="2GsD0m">
            <node concept="2i4dXS" id="1HIZsCuJ09Y" role="2ShVmc">
              <node concept="3uibUv" id="1HIZsCuJ09Z" role="HW$YZ">
                <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
              </node>
              <node concept="37vLTw" id="3GM_nagTAz8" role="I$8f6">
                <ref role="3cqZAo" node="1HIZsCuJ09A" resolve="allRootIds" />
              </node>
            </node>
          </node>
          <node concept="2GrKxI" id="42hl10VHbt8" role="2Gsz3X">
            <property role="TrG5h" value="rootId" />
          </node>
          <node concept="3clFbS" id="42hl10VHbta" role="2LFqv$">
            <node concept="3clFbF" id="42hl10VHbtb" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzk4_" role="3clFbG">
                <ref role="37wK5l" node="1HIZsCuIWnf" resolve="buildForNode" />
                <node concept="2OqwBi" id="2n9zn0CqMDq" role="37wK5m">
                  <node concept="liA8E" id="2n9zn0CqMDr" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                    <node concept="2GrUjf" id="2n9zn0CqMDs" role="37wK5m">
                      <ref role="2Gs0qQ" node="42hl10VHbt8" resolve="rootId" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2n9zn0CqMDt" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxeuL1Z" role="2JrQYb">
                      <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2n9zn0CqMAZ" role="37wK5m">
                  <node concept="liA8E" id="2n9zn0CqMB0" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SModel.getNode(org.jetbrains.mps.openapi.model.SNodeId):org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                    <node concept="2GrUjf" id="2n9zn0CqMB1" role="37wK5m">
                      <ref role="2Gs0qQ" node="42hl10VHbt8" resolve="rootId" />
                    </node>
                  </node>
                  <node concept="2JrnkZ" id="2n9zn0CqMB2" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxeudh6" role="2JrQYb">
                      <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="42hl10VHbti" role="3cqZAp" />
        <node concept="3clFbF" id="42hl10VHbtj" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzhDI" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbq7" resolve="buildForMetadata" />
          </node>
        </node>
        <node concept="3clFbH" id="42hl10VHbtl" role="3cqZAp" />
        <node concept="3clFbJ" id="42hl10VHbtm" role="3cqZAp">
          <node concept="3clFbS" id="42hl10VHbtn" role="3clFbx">
            <node concept="3clFbF" id="42hl10VHbto" role="3cqZAp">
              <node concept="2OqwBi" id="42hl10VHbtp" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeus6k" role="2Oq$k0">
                  <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                </node>
                <node concept="liA8E" id="42hl10VHbtr" role="2OqNvi">
                  <ref role="37wK5l" node="69abr3Go1mV" resolve="buildOppositeChangeSet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxgmaqr" role="3clFbw">
            <ref role="3cqZAo" node="42hl10VHbtt" resolve="withOpposite" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbtt" role="3clF46">
        <property role="TrG5h" value="withOpposite" />
        <node concept="10P_77" id="42hl10VHbtu" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="1XuTulVDKAT" role="jymVt">
      <property role="TrG5h" value="commit" />
      <node concept="3cqZAl" id="1XuTulVDKAU" role="3clF45" />
      <node concept="3Tm1VV" id="1XuTulVDKAV" role="1B3o_S" />
      <node concept="3clFbS" id="1XuTulVDKAW" role="3clF47">
        <node concept="3clFbF" id="1XuTulVDKBb" role="3cqZAp">
          <node concept="2OqwBi" id="1XuTulVDKBd" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuqQO" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
            </node>
            <node concept="2es0OD" id="1XuTulVDKBh" role="2OqNvi">
              <node concept="1bVj0M" id="1XuTulVDKBi" role="23t8la">
                <node concept="3clFbS" id="1XuTulVDKBj" role="1bW5cS">
                  <node concept="3clFbF" id="1XuTulVDKBm" role="3cqZAp">
                    <node concept="2OqwBi" id="1XuTulVDKBu" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxeukEz" role="2Oq$k0">
                        <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
                      </node>
                      <node concept="liA8E" id="1XuTulVDKBy" role="2OqNvi">
                        <ref role="37wK5l" node="69abr3Go1nz" resolve="add" />
                        <node concept="37vLTw" id="2BHiRxgma1Z" role="37wK5m">
                          <ref role="3cqZAo" node="1XuTulVDKBk" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1XuTulVDKBk" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1XuTulVDKBl" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XuTulVDRxw" role="3cqZAp">
          <node concept="2OqwBi" id="1XuTulVDRxy" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunby" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
            </node>
            <node concept="2Kehj3" id="1XuTulVDRxA" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="wi_$LyeiP3" role="3cqZAp">
          <node concept="2OqwBi" id="wi_$Lyelku" role="3clFbG">
            <node concept="liA8E" id="wi_$LyenJx" role="2OqNvi">
              <ref role="37wK5l" node="7$NO6fvW0Ao" resolve="fillRootToChange" />
            </node>
            <node concept="37vLTw" id="wi_$LyeiP2" role="2Oq$k0">
              <ref role="3cqZAo" node="42hl10VHbu$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1XuTulVDRxB" role="jymVt">
      <property role="TrG5h" value="getNewChanges" />
      <node concept="_YKpA" id="1XuTulVDRxF" role="3clF45">
        <node concept="3uibUv" id="1XuTulVDRxH" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1XuTulVDRxD" role="1B3o_S" />
      <node concept="3clFbS" id="1XuTulVDRxE" role="3clF47">
        <node concept="3clFbF" id="1XuTulVDRxI" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeunnE" role="3clFbG">
            <ref role="3cqZAo" node="1XuTulVDK_Y" resolve="myNewChanges" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbtv" role="jymVt">
      <property role="TrG5h" value="getAddedAndDeleted" />
      <node concept="37vLTG" id="42hl10VHbtw" role="3clF46">
        <property role="TrG5h" value="oldItems" />
        <node concept="A3Dl8" id="42hl10VHbtx" role="1tU5fm">
          <node concept="16syzq" id="42hl10VHbty" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbtz" role="3clF46">
        <property role="TrG5h" value="newItems" />
        <node concept="A3Dl8" id="42hl10VHbt$" role="1tU5fm">
          <node concept="16syzq" id="42hl10VHbt_" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="42hl10VHbtA" role="3clF45">
        <node concept="A3Dl8" id="42hl10VHbtB" role="1Lm7xW">
          <node concept="16syzq" id="42hl10VHbtC" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
          </node>
        </node>
        <node concept="A3Dl8" id="42hl10VHbtD" role="1Lm7xW">
          <node concept="16syzq" id="42hl10VHbtE" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="42hl10VHbtF" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbtG" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbtH" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbtI" role="3cpWs9">
            <property role="TrG5h" value="oldSet" />
            <node concept="2hMVRd" id="42hl10VHbtJ" role="1tU5fm">
              <node concept="16syzq" id="42hl10VHbtK" role="2hN53Y">
                <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
              </node>
            </node>
            <node concept="2ShNRf" id="42hl10VHbtL" role="33vP2m">
              <node concept="2i4dXS" id="42hl10VHbtM" role="2ShVmc">
                <node concept="16syzq" id="42hl10VHbtN" role="HW$YZ">
                  <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm8Z4" role="I$8f6">
                  <ref role="3cqZAo" node="42hl10VHbtw" resolve="oldItems" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42hl10VHbtP" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbtQ" role="3cpWs9">
            <property role="TrG5h" value="newSet" />
            <node concept="2hMVRd" id="42hl10VHbtR" role="1tU5fm">
              <node concept="16syzq" id="42hl10VHbtS" role="2hN53Y">
                <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
              </node>
            </node>
            <node concept="2ShNRf" id="42hl10VHbtT" role="33vP2m">
              <node concept="2i4dXS" id="42hl10VHbtU" role="2ShVmc">
                <node concept="16syzq" id="42hl10VHbtV" role="HW$YZ">
                  <ref role="16sUi3" node="42hl10VHbu7" resolve="D" />
                </node>
                <node concept="37vLTw" id="2BHiRxglrh1" role="I$8f6">
                  <ref role="3cqZAo" node="42hl10VHbtz" resolve="newItems" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="42hl10VHbtX" role="3cqZAp">
          <node concept="1Ls8ON" id="42hl10VHbtY" role="3cqZAk">
            <node concept="2OqwBi" id="42hl10VHbtZ" role="1Lso8e">
              <node concept="37vLTw" id="3GM_nagTBKh" role="2Oq$k0">
                <ref role="3cqZAo" node="42hl10VHbtQ" resolve="newSet" />
              </node>
              <node concept="66VNe" id="42hl10VHbu1" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTtT1" role="576Qk">
                  <ref role="3cqZAo" node="42hl10VHbtI" resolve="oldSet" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="42hl10VHbu3" role="1Lso8e">
              <node concept="37vLTw" id="3GM_nagT_SI" role="2Oq$k0">
                <ref role="3cqZAo" node="42hl10VHbtI" resolve="oldSet" />
              </node>
              <node concept="66VNe" id="42hl10VHbu5" role="2OqNvi">
                <node concept="37vLTw" id="3GM_nagTw0z" role="576Qk">
                  <ref role="3cqZAo" node="42hl10VHbtQ" resolve="newSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="42hl10VHbu7" role="16eVyc">
        <property role="TrG5h" value="D" />
      </node>
    </node>
    <node concept="3clFb_" id="42hl10VHbu8" role="jymVt">
      <property role="TrG5h" value="getAddedAndDeleted" />
      <node concept="37vLTG" id="42hl10VHbu9" role="3clF46">
        <property role="TrG5h" value="itemsExtractor" />
        <node concept="1ajhzC" id="42hl10VHbua" role="1tU5fm">
          <node concept="A3Dl8" id="42hl10VHbuc" role="1ajl9A">
            <node concept="16syzq" id="42hl10VHbud" role="A3Ik2">
              <ref role="16sUi3" node="42hl10VHbut" resolve="D" />
            </node>
          </node>
          <node concept="3uibUv" id="5OnZ9cknWmM" role="1ajw0F">
            <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
          </node>
        </node>
      </node>
      <node concept="1LlUBW" id="42hl10VHbue" role="3clF45">
        <node concept="A3Dl8" id="42hl10VHbuf" role="1Lm7xW">
          <node concept="16syzq" id="42hl10VHbug" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbut" resolve="D" />
          </node>
        </node>
        <node concept="A3Dl8" id="42hl10VHbuh" role="1Lm7xW">
          <node concept="16syzq" id="42hl10VHbui" role="A3Ik2">
            <ref role="16sUi3" node="42hl10VHbut" resolve="D" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="42hl10VHbuj" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbuk" role="3clF47">
        <node concept="3clFbF" id="42hl10VHbul" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz3zm" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbtv" resolve="getAddedAndDeleted" />
            <node concept="2Sg_IR" id="42hl10VHbun" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm7EQ" role="2SgG2M">
                <ref role="3cqZAo" node="42hl10VHbu9" resolve="itemsExtractor" />
              </node>
              <node concept="0kSF2" id="5OnZ9ckobgL" role="2SgHGx">
                <node concept="3uibUv" id="5OnZ9ckoiLq" role="0kSFW">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuWmk" role="0kSFX">
                  <ref role="3cqZAo" node="42hl10VHbuu" resolve="myOldModel" />
                </node>
              </node>
            </node>
            <node concept="2Sg_IR" id="42hl10VHbuq" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgmyZT" role="2SgG2M">
                <ref role="3cqZAo" node="42hl10VHbu9" resolve="itemsExtractor" />
              </node>
              <node concept="0kSF2" id="5OnZ9ckox$a" role="2SgHGx">
                <node concept="3uibUv" id="5OnZ9ckoD3N" role="0kSFW">
                  <ref role="3uigEE" to="51te:~SModelBase" resolve="SModelBase" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuqQw" role="0kSFX">
                  <ref role="3cqZAo" node="42hl10VHbux" resolve="myNewModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="42hl10VHbut" role="16eVyc">
        <property role="TrG5h" value="D" />
      </node>
    </node>
    <node concept="2YIFZL" id="42hl10VHbuB" role="jymVt">
      <property role="TrG5h" value="buildChangeSet" />
      <node concept="3uibUv" id="wi_$LyfmTP" role="3clF45">
        <ref role="3uigEE" node="wi_$Lydiyx" resolve="ModelChangeSet" />
      </node>
      <node concept="3Tm1VV" id="42hl10VHbuD" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbuE" role="3clF47">
        <node concept="3clFbF" id="42hl10VHbuF" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqysgvi" role="3clFbG">
            <ref role="37wK5l" node="42hl10VHbuO" resolve="buildChangeSet" />
            <node concept="37vLTw" id="2BHiRxghgbE" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHbuK" resolve="oldModel" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm5Yx" role="37wK5m">
              <ref role="3cqZAo" node="42hl10VHbuM" resolve="newModel" />
            </node>
            <node concept="3clFbT" id="42hl10VHbuJ" role="37wK5m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbuK" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="H_c77" id="5OnZ9ckbWLx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbuM" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="H_c77" id="5OnZ9ckc4bt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="42hl10VHbuO" role="jymVt">
      <property role="TrG5h" value="buildChangeSet" />
      <node concept="3uibUv" id="wi_$Lyfmqj" role="3clF45">
        <ref role="3uigEE" node="wi_$Lydiyx" resolve="ModelChangeSet" />
      </node>
      <node concept="3Tm1VV" id="42hl10VHbuQ" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbuR" role="3clF47">
        <node concept="3cpWs8" id="42hl10VHbuS" role="3cqZAp">
          <node concept="3cpWsn" id="42hl10VHbuT" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="42hl10VHbuU" role="1tU5fm">
              <ref role="3uigEE" node="42hl10VHbfH" resolve="ChangeSetBuilder" />
            </node>
            <node concept="2ShNRf" id="42hl10VHbuV" role="33vP2m">
              <node concept="1pGfFk" id="42hl10VHbuW" role="2ShVmc">
                <ref role="37wK5l" node="42hl10VHbvA" resolve="ChangeSetBuilder" />
                <node concept="37vLTw" id="2BHiRxgm$CJ" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbv8" resolve="oldModel" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm7JX" role="37wK5m">
                  <ref role="3cqZAo" node="42hl10VHbva" resolve="newModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbuZ" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbv0" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTxLL" role="2Oq$k0">
              <ref role="3cqZAo" node="42hl10VHbuT" resolve="builder" />
            </node>
            <node concept="liA8E" id="42hl10VHbv2" role="2OqNvi">
              <ref role="37wK5l" node="42hl10VHbsY" resolve="build" />
              <node concept="37vLTw" id="2BHiRxglnoM" role="37wK5m">
                <ref role="3cqZAo" node="42hl10VHbvc" resolve="withOpposite" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XuTulVDKB_" role="3cqZAp">
          <node concept="2OqwBi" id="1XuTulVDKBB" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTw3i" role="2Oq$k0">
              <ref role="3cqZAo" node="42hl10VHbuT" resolve="builder" />
            </node>
            <node concept="liA8E" id="1XuTulVDKBF" role="2OqNvi">
              <ref role="37wK5l" node="1XuTulVDKAT" resolve="commit" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="42hl10VHbv4" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbv5" role="3cqZAk">
            <node concept="37vLTw" id="3GM_nagT$dg" role="2Oq$k0">
              <ref role="3cqZAo" node="42hl10VHbuT" resolve="builder" />
            </node>
            <node concept="2OwXpG" id="42hl10VHbv7" role="2OqNvi">
              <ref role="2Oxat5" node="42hl10VHbu$" resolve="myChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbv8" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="H_c77" id="5OnZ9ckbHOF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbva" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="H_c77" id="5OnZ9ckbPjb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="42hl10VHbvc" role="3clF46">
        <property role="TrG5h" value="withOpposite" />
        <node concept="10P_77" id="42hl10VHbvd" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="42hl10VHbve" role="jymVt">
      <property role="TrG5h" value="rebuildChangeSet" />
      <node concept="3cqZAl" id="42hl10VHbvf" role="3clF45" />
      <node concept="3Tm1VV" id="42hl10VHbvg" role="1B3o_S" />
      <node concept="3clFbS" id="42hl10VHbvh" role="3clF47">
        <node concept="3cpWs8" id="3kRMfhMvhr1" role="3cqZAp">
          <node concept="3cpWsn" id="3kRMfhMvhr2" role="3cpWs9">
            <property role="TrG5h" value="impl" />
            <node concept="3uibUv" id="3kRMfhMvhr3" role="1tU5fm">
              <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
            </node>
            <node concept="10QFUN" id="3kRMfhMvhr5" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxghfAk" role="10QFUP">
                <ref role="3cqZAo" node="42hl10VHbvz" resolve="changeSet" />
              </node>
              <node concept="3uibUv" id="3kRMfhMvhr7" role="10QFUM">
                <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbvi" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbvk" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTt6T" role="2Oq$k0">
              <ref role="3cqZAo" node="3kRMfhMvhr2" resolve="impl" />
            </node>
            <node concept="liA8E" id="3kRMfhMvhrc" role="2OqNvi">
              <ref role="37wK5l" node="3kRMfhMvhqo" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbvo" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbvp" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTB8m" role="2Oq$k0">
              <ref role="3cqZAo" node="3kRMfhMvhr2" resolve="impl" />
            </node>
            <node concept="liA8E" id="42hl10VHbvr" role="2OqNvi">
              <ref role="37wK5l" node="69abr3Go1mO" resolve="clearOppositeChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1XuTulVDKBG" role="3cqZAp">
          <node concept="3cpWsn" id="1XuTulVDKBH" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="1XuTulVDKBI" role="1tU5fm">
              <ref role="3uigEE" node="42hl10VHbfH" resolve="ChangeSetBuilder" />
            </node>
            <node concept="2ShNRf" id="1XuTulVDKBJ" role="33vP2m">
              <node concept="1pGfFk" id="1XuTulVDKBK" role="2ShVmc">
                <ref role="37wK5l" node="42hl10VHbvN" resolve="ChangeSetBuilder" />
                <node concept="37vLTw" id="3GM_nagTxYd" role="37wK5m">
                  <ref role="3cqZAo" node="3kRMfhMvhr2" resolve="impl" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42hl10VHbvs" role="3cqZAp">
          <node concept="2OqwBi" id="42hl10VHbvt" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBsD" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDKBH" resolve="builder" />
            </node>
            <node concept="liA8E" id="42hl10VHbvx" role="2OqNvi">
              <ref role="37wK5l" node="42hl10VHbsY" resolve="build" />
              <node concept="3clFbT" id="42hl10VHbvy" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1XuTulVDKBO" role="3cqZAp">
          <node concept="2OqwBi" id="1XuTulVDKBQ" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTseU" role="2Oq$k0">
              <ref role="3cqZAo" node="1XuTulVDKBH" resolve="builder" />
            </node>
            <node concept="liA8E" id="1XuTulVDKBU" role="2OqNvi">
              <ref role="37wK5l" node="1XuTulVDKAT" resolve="commit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="42hl10VHbvz" role="3clF46">
        <property role="TrG5h" value="changeSet" />
        <node concept="3uibUv" id="3kRMfhMvhq4" role="1tU5fm">
          <ref role="3uigEE" node="3kRMfhMv03j" resolve="ChangeSet" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1XuTulVDMok" role="jymVt">
      <property role="TrG5h" value="createBuilder" />
      <node concept="3uibUv" id="1XuTulVDMoo" role="3clF45">
        <ref role="3uigEE" node="42hl10VHbfH" resolve="ChangeSetBuilder" />
      </node>
      <node concept="3Tm1VV" id="1XuTulVDMom" role="1B3o_S" />
      <node concept="3clFbS" id="1XuTulVDMon" role="3clF47">
        <node concept="3cpWs6" id="1XuTulVDMoz" role="3cqZAp">
          <node concept="2ShNRf" id="1XuTulVDMo_" role="3cqZAk">
            <node concept="1pGfFk" id="1XuTulVDMoB" role="2ShVmc">
              <ref role="37wK5l" node="42hl10VHbvN" resolve="ChangeSetBuilder" />
              <node concept="10QFUN" id="1XuTulVDMov" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxgkZZN" role="10QFUP">
                  <ref role="3cqZAo" node="1XuTulVDMop" resolve="changeSet" />
                </node>
                <node concept="3uibUv" id="1XuTulVDMox" role="10QFUM">
                  <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1XuTulVDMop" role="3clF46">
        <property role="TrG5h" value="changeSet" />
        <node concept="3uibUv" id="1XuTulVDMoq" role="1tU5fm">
          <ref role="3uigEE" node="3kRMfhMv03j" resolve="ChangeSet" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="42hl10VHbfI" role="jymVt">
      <property role="TrG5h" value="DefaultPropertySupport" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm6S6" id="42hl10VHbfJ" role="1B3o_S" />
      <node concept="3uibUv" id="42hl10VHbfO" role="1zkMxy">
        <ref role="3uigEE" to="cu2c:~PropertySupport" resolve="PropertySupport" />
      </node>
      <node concept="3clFbW" id="42hl10VHbfK" role="jymVt">
        <node concept="3cqZAl" id="42hl10VHbfL" role="3clF45" />
        <node concept="3Tm6S6" id="42hl10VHbfM" role="1B3o_S" />
        <node concept="3clFbS" id="42hl10VHbfN" role="3clF47" />
      </node>
      <node concept="3clFb_" id="42hl10VHbfP" role="jymVt">
        <property role="TrG5h" value="canSetValue" />
        <node concept="3Tmbuc" id="42hl10VHbfQ" role="1B3o_S" />
        <node concept="10P_77" id="42hl10VHbfR" role="3clF45" />
        <node concept="37vLTG" id="42hl10VHbfS" role="3clF46">
          <property role="TrG5h" value="string" />
          <node concept="17QB3L" id="42hl10VHbfT" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="42hl10VHbfU" role="3clF47">
          <node concept="3clFbF" id="42hl10VHbfV" role="3cqZAp">
            <node concept="3clFbT" id="42hl10VHbfW" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_UoUe" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="69abr3Go1l7">
    <property role="TrG5h" value="ChangeSetImpl" />
    <node concept="3uibUv" id="wi_$LydsP6" role="EKbjA">
      <ref role="3uigEE" node="wi_$Lydiyx" resolve="ModelChangeSet" />
    </node>
    <node concept="3Tm1VV" id="69abr3Go1lp" role="1B3o_S" />
    <node concept="312cEg" id="69abr3Go1l8" role="jymVt">
      <property role="TrG5h" value="myOldModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="69abr3Go1l9" role="1B3o_S" />
      <node concept="H_c77" id="5OnZ9ck3Xlz" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="69abr3Go1lb" role="jymVt">
      <property role="TrG5h" value="myNewModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="69abr3Go1lc" role="1B3o_S" />
      <node concept="H_c77" id="5OnZ9ck42OD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="69abr3Go1le" role="jymVt">
      <property role="TrG5h" value="myModelChanges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="69abr3Go1lf" role="1B3o_S" />
      <node concept="_YKpA" id="69abr3Go1lg" role="1tU5fm">
        <node concept="3uibUv" id="69abr3Go1lh" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="69abr3Go1li" role="33vP2m">
        <node concept="1pGfFk" id="37VlarjzaGz" role="2ShVmc">
          <ref role="37wK5l" to="53gy:~CopyOnWriteArrayList.&lt;init&gt;()" resolve="CopyOnWriteArrayList" />
          <node concept="3uibUv" id="37VlarjzaGF" role="1pMfVU">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7$NO6fvVYwb" role="jymVt">
      <property role="TrG5h" value="myRootToChanges" />
      <node concept="3Tm6S6" id="7$NO6fvVYwc" role="1B3o_S" />
      <node concept="3rvAFt" id="7$NO6fvVYwd" role="1tU5fm">
        <node concept="3uibUv" id="7$NO6fvVYwe" role="3rvQeY">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="_YKpA" id="7$NO6fvVYwf" role="3rvSg0">
          <node concept="3uibUv" id="7$NO6fvVYwg" role="_ZDj9">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7$NO6fvVYwh" role="33vP2m">
        <node concept="3rGOSV" id="7$NO6fvVYwi" role="2ShVmc">
          <node concept="3uibUv" id="7$NO6fvVYwj" role="3rHrn6">
            <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
          </node>
          <node concept="_YKpA" id="7$NO6fvVYwk" role="3rHtpV">
            <node concept="3uibUv" id="7$NO6fvVYwl" role="_ZDj9">
              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7$NO6fvVYwm" role="jymVt">
      <property role="TrG5h" value="myMetadataChanges" />
      <node concept="3Tm6S6" id="7$NO6fvVYwn" role="1B3o_S" />
      <node concept="_YKpA" id="7$NO6fvVYwo" role="1tU5fm">
        <node concept="3uibUv" id="7$NO6fvVYwp" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2ShNRf" id="7$NO6fvVYwq" role="33vP2m">
        <node concept="Tc6Ow" id="7$NO6fvVYwr" role="2ShVmc">
          <node concept="3uibUv" id="7$NO6fvVYws" role="HW$YZ">
            <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="69abr3Go1ll" role="jymVt">
      <property role="TrG5h" value="myOppositeChangeSet" />
      <node concept="3Tm6S6" id="69abr3Go1lm" role="1B3o_S" />
      <node concept="3uibUv" id="69abr3Go1ln" role="1tU5fm">
        <ref role="3uigEE" node="69abr3Go1l7" resolve="ChangeSetImpl" />
      </node>
      <node concept="10Nm6u" id="69abr3Go1lo" role="33vP2m" />
    </node>
    <node concept="3clFbW" id="69abr3Go1lq" role="jymVt">
      <node concept="3Tm1VV" id="3kRMfhMv9ve" role="1B3o_S" />
      <node concept="3cqZAl" id="69abr3Go1lr" role="3clF45" />
      <node concept="3clFbS" id="69abr3Go1ls" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1lt" role="3cqZAp">
          <node concept="37vLTI" id="69abr3Go1lu" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglbGW" role="37vLTx">
              <ref role="3cqZAo" node="69abr3Go1l_" resolve="oldModel" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuWTC" role="37vLTJ">
              <ref role="3cqZAo" node="69abr3Go1l8" resolve="myOldModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="69abr3Go1lx" role="3cqZAp">
          <node concept="37vLTI" id="69abr3Go1ly" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxghfZL" role="37vLTx">
              <ref role="3cqZAo" node="69abr3Go1lC" resolve="newModel" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuni6" role="37vLTJ">
              <ref role="3cqZAo" node="69abr3Go1lb" resolve="myNewModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="69abr3Go1l_" role="3clF46">
        <property role="TrG5h" value="oldModel" />
        <node concept="2AHcQZ" id="69abr3Go1lA" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="H_c77" id="5OnZ9ck4hHV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="69abr3Go1lC" role="3clF46">
        <property role="TrG5h" value="newModel" />
        <node concept="2AHcQZ" id="69abr3Go1lD" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="H_c77" id="5OnZ9ck4muS" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1lF" role="jymVt">
      <property role="TrG5h" value="getModelChanges" />
      <node concept="2AHcQZ" id="69abr3Go1lG" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="_YKpA" id="69abr3Go1lH" role="3clF45">
        <node concept="3uibUv" id="69abr3Go1lI" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="69abr3Go1lJ" role="1B3o_S" />
      <node concept="3clFbS" id="69abr3Go1lK" role="3clF47">
        <node concept="3clFbF" id="3kRMfhMvhqg" role="3cqZAp">
          <node concept="2YIFZM" id="3kRMfhMvhqi" role="3clFbG">
            <ref role="37wK5l" to="k7g3:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="2BHiRxeuXfy" role="37wK5m">
              <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg6" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3kRMfhMvhqo" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3cqZAl" id="3kRMfhMvhqp" role="3clF45" />
      <node concept="3Tm1VV" id="3kRMfhMvhqq" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMvhqr" role="3clF47">
        <node concept="3clFbF" id="3kRMfhMvhqF" role="3cqZAp">
          <node concept="2OqwBi" id="3kRMfhMvhqH" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuTqv" role="2Oq$k0">
              <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
            </node>
            <node concept="2Kehj3" id="3kRMfhMvhqL" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1lN" role="jymVt">
      <property role="TrG5h" value="getModelChanges" />
      <node concept="A3Dl8" id="69abr3Go1lO" role="3clF45">
        <node concept="16syzq" id="69abr3Go1lP" role="A3Ik2">
          <ref role="16sUi3" node="69abr3Go1mj" resolve="C" />
        </node>
      </node>
      <node concept="3Tm1VV" id="69abr3Go1lQ" role="1B3o_S" />
      <node concept="3clFbS" id="69abr3Go1lR" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1lS" role="3cqZAp">
          <node concept="2OqwBi" id="69abr3Go1lT" role="3clFbG">
            <node concept="2OqwBi" id="69abr3Go1lU" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxeuRRg" role="2Oq$k0">
                <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
              </node>
              <node concept="3zZkjj" id="69abr3Go1lW" role="2OqNvi">
                <node concept="1bVj0M" id="69abr3Go1lX" role="23t8la">
                  <node concept="3clFbS" id="69abr3Go1lY" role="1bW5cS">
                    <node concept="3clFbF" id="69abr3Go1lZ" role="3cqZAp">
                      <node concept="2OqwBi" id="69abr3Go1m0" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgmace" role="2Oq$k0">
                          <ref role="3cqZAo" node="69abr3Go1mf" resolve="changeClass" />
                        </node>
                        <node concept="liA8E" id="69abr3Go1m2" role="2OqNvi">
                          <ref role="37wK5l" to="e2lb:~Class.isInstance(java.lang.Object):boolean" resolve="isInstance" />
                          <node concept="37vLTw" id="2BHiRxgm5Uv" role="37wK5m">
                            <ref role="3cqZAo" node="69abr3Go1m4" resolve="ch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="69abr3Go1m4" role="1bW2Oz">
                    <property role="TrG5h" value="ch" />
                    <node concept="2jxLKc" id="69abr3Go1m5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="69abr3Go1m6" role="2OqNvi">
              <node concept="1bVj0M" id="69abr3Go1m7" role="23t8la">
                <node concept="3clFbS" id="69abr3Go1m8" role="1bW5cS">
                  <node concept="3clFbF" id="69abr3Go1m9" role="3cqZAp">
                    <node concept="10QFUN" id="69abr3Go1ma" role="3clFbG">
                      <node concept="16syzq" id="69abr3Go1mb" role="10QFUM">
                        <ref role="16sUi3" node="69abr3Go1mj" resolve="C" />
                      </node>
                      <node concept="37vLTw" id="2BHiRxgl0MD" role="10QFUP">
                        <ref role="3cqZAo" node="69abr3Go1md" resolve="ch" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="69abr3Go1md" role="1bW2Oz">
                  <property role="TrG5h" value="ch" />
                  <node concept="2jxLKc" id="69abr3Go1me" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="69abr3Go1mf" role="3clF46">
        <property role="TrG5h" value="changeClass" />
        <node concept="3uibUv" id="69abr3Go1mg" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
          <node concept="16syzq" id="69abr3Go1mh" role="11_B2D">
            <ref role="16sUi3" node="69abr3Go1mj" resolve="C" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="69abr3Go1mi" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="16euLQ" id="69abr3Go1mj" role="16eVyc">
        <property role="TrG5h" value="C" />
        <node concept="3uibUv" id="69abr3Go1mk" role="3ztrMU">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg4" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1ml" role="jymVt">
      <property role="TrG5h" value="getOldModel" />
      <node concept="2AHcQZ" id="69abr3Go1mm" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tm1VV" id="69abr3Go1mo" role="1B3o_S" />
      <node concept="3clFbS" id="69abr3Go1mp" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1mq" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeunfD" role="3clFbG">
            <ref role="3cqZAo" node="69abr3Go1l8" resolve="myOldModel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg2" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="H_c77" id="1BY2K4dA2dP" role="3clF45" />
    </node>
    <node concept="3clFb_" id="69abr3Go1ms" role="jymVt">
      <property role="TrG5h" value="getNewModel" />
      <node concept="2AHcQZ" id="69abr3Go1mt" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3Tm1VV" id="69abr3Go1mv" role="1B3o_S" />
      <node concept="3clFbS" id="69abr3Go1mw" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1mx" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuyrr" role="3clFbG">
            <ref role="3cqZAo" node="69abr3Go1lb" resolve="myNewModel" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg5" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="H_c77" id="1BY2K4dA7gj" role="3clF45" />
    </node>
    <node concept="3clFb_" id="69abr3Go1mz" role="jymVt">
      <property role="TrG5h" value="getOppositeChangeSet" />
      <node concept="3uibUv" id="3kRMfhMv9uD" role="3clF45">
        <ref role="3uigEE" node="3kRMfhMv03j" resolve="ChangeSet" />
      </node>
      <node concept="3Tm1VV" id="69abr3Go1m_" role="1B3o_S" />
      <node concept="3clFbS" id="69abr3Go1mA" role="3clF47">
        <node concept="3clFbJ" id="69abr3Go1mB" role="3cqZAp">
          <node concept="3clFbS" id="69abr3Go1mC" role="3clFbx">
            <node concept="YS8fn" id="69abr3Go1mD" role="3cqZAp">
              <node concept="2ShNRf" id="69abr3Go1mE" role="YScLw">
                <node concept="1pGfFk" id="69abr3Go1mF" role="2ShVmc">
                  <ref role="37wK5l" to="e2lb:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="69abr3Go1mG" role="37wK5m">
                    <property role="Xl_RC" value="opposite chage set is not built" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="69abr3Go1mH" role="3clFbw">
            <node concept="10Nm6u" id="69abr3Go1mI" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuhSV" role="3uHU7B">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="69abr3Go1mK" role="3cqZAp" />
        <node concept="3cpWs6" id="69abr3Go1mL" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuxMg" role="3cqZAk">
            <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="69abr3Go1mN" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg1" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1mO" role="jymVt">
      <property role="TrG5h" value="clearOppositeChangeSet" />
      <node concept="3Tm1VV" id="3kRMfhMv9vj" role="1B3o_S" />
      <node concept="3cqZAl" id="69abr3Go1mP" role="3clF45" />
      <node concept="3clFbS" id="69abr3Go1mQ" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1mR" role="3cqZAp">
          <node concept="37vLTI" id="69abr3Go1mS" role="3clFbG">
            <node concept="10Nm6u" id="69abr3Go1mT" role="37vLTx" />
            <node concept="37vLTw" id="2BHiRxeusdB" role="37vLTJ">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1mV" role="jymVt">
      <property role="TrG5h" value="buildOppositeChangeSet" />
      <node concept="3Tm1VV" id="3kRMfhMv9vf" role="1B3o_S" />
      <node concept="3cqZAl" id="69abr3Go1mW" role="3clF45" />
      <node concept="3clFbS" id="69abr3Go1mX" role="3clF47">
        <node concept="3clFbJ" id="69abr3Go1mY" role="3cqZAp">
          <node concept="3clFbC" id="69abr3Go1mZ" role="3clFbw">
            <node concept="10Nm6u" id="69abr3Go1n0" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeug3o" role="3uHU7B">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
          <node concept="3clFbS" id="69abr3Go1n2" role="3clFbx">
            <node concept="3clFbF" id="69abr3Go1n6" role="3cqZAp">
              <node concept="37vLTI" id="69abr3Go1n7" role="3clFbG">
                <node concept="2ShNRf" id="69abr3Go1n8" role="37vLTx">
                  <node concept="1pGfFk" id="69abr3Go1n9" role="2ShVmc">
                    <ref role="37wK5l" node="69abr3Go1lq" resolve="ChangeSetImpl" />
                    <node concept="37vLTw" id="2BHiRxeuMwW" role="37wK5m">
                      <ref role="3cqZAo" node="69abr3Go1lb" resolve="myNewModel" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxeuJPQ" role="37wK5m">
                      <ref role="3cqZAo" node="69abr3Go1l8" resolve="myOldModel" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxeuNaD" role="37vLTJ">
                  <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="69abr3Go1nd" role="3cqZAp">
              <node concept="37vLTI" id="69abr3Go1ne" role="3clFbG">
                <node concept="Xjq3P" id="69abr3Go1nf" role="37vLTx" />
                <node concept="2OqwBi" id="69abr3Go1ng" role="37vLTJ">
                  <node concept="37vLTw" id="2BHiRxeuM1H" role="2Oq$k0">
                    <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                  <node concept="2OwXpG" id="69abr3Go1ni" role="2OqNvi">
                    <ref role="2Oxat5" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="69abr3Go1nj" role="3cqZAp" />
            <node concept="3clFbF" id="69abr3Go1nk" role="3cqZAp">
              <node concept="2OqwBi" id="1jHnZIL_Evg" role="3clFbG">
                <node concept="2OqwBi" id="1jHnZIL_EqC" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeunaI" role="2Oq$k0">
                    <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                  <node concept="2OwXpG" id="1jHnZIL_Evf" role="2OqNvi">
                    <ref role="2Oxat5" node="69abr3Go1le" resolve="myModelChanges" />
                  </node>
                </node>
                <node concept="X8dFx" id="1jHnZIL_Evn" role="2OqNvi">
                  <node concept="2OqwBi" id="1jHnZIL_Evo" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxeuXzo" role="2Oq$k0">
                      <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
                    </node>
                    <node concept="3$u5V9" id="1jHnZIL_Evq" role="2OqNvi">
                      <node concept="1bVj0M" id="1jHnZIL_Evr" role="23t8la">
                        <node concept="3clFbS" id="1jHnZIL_Evs" role="1bW5cS">
                          <node concept="3clFbF" id="1jHnZIL_Evt" role="3cqZAp">
                            <node concept="2OqwBi" id="1jHnZIL_Evu" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgmesT" role="2Oq$k0">
                                <ref role="3cqZAo" node="1jHnZIL_Evx" resolve="c" />
                              </node>
                              <node concept="liA8E" id="1jHnZIL_Evw" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:2WueYNNT$jz" resolve="getOppositeChange" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1jHnZIL_Evx" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="2jxLKc" id="1jHnZIL_Evy" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="wi_$Lyex06" role="3cqZAp">
              <node concept="2OqwBi" id="wi_$LyeyCO" role="3clFbG">
                <node concept="liA8E" id="wi_$Lye$pd" role="2OqNvi">
                  <ref role="37wK5l" node="7$NO6fvW0Ao" resolve="fillRootToChange" />
                </node>
                <node concept="37vLTw" id="wi_$Lyex05" role="2Oq$k0">
                  <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1nz" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3Tm1VV" id="3kRMfhMv9vn" role="1B3o_S" />
      <node concept="3cqZAl" id="69abr3Go1n$" role="3clF45" />
      <node concept="3clFbS" id="69abr3Go1n_" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1nA" role="3cqZAp">
          <node concept="2OqwBi" id="69abr3Go1nB" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuyJ4" role="2Oq$k0">
              <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
            </node>
            <node concept="TSZUe" id="69abr3Go1nD" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgm9qf" role="25WWJ7">
                <ref role="3cqZAo" node="69abr3Go1nF" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6uGiN_44iJM" role="3cqZAp">
          <node concept="3clFbS" id="6uGiN_44iJN" role="3clFbx">
            <node concept="3clFbF" id="6uGiN_44iJV" role="3cqZAp">
              <node concept="2OqwBi" id="6uGiN_44iKa" role="3clFbG">
                <node concept="2OqwBi" id="6uGiN_44iJX" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeul7O" role="2Oq$k0">
                    <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                  <node concept="2OwXpG" id="6uGiN_44iK9" role="2OqNvi">
                    <ref role="2Oxat5" node="69abr3Go1le" resolve="myModelChanges" />
                  </node>
                </node>
                <node concept="TSZUe" id="6uGiN_44iKe" role="2OqNvi">
                  <node concept="2OqwBi" id="6uGiN_44iKh" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgm5QF" role="2Oq$k0">
                      <ref role="3cqZAo" node="69abr3Go1nF" resolve="change" />
                    </node>
                    <node concept="liA8E" id="6uGiN_44iKl" role="2OqNvi">
                      <ref role="37wK5l" to="btf5:2WueYNNT$jz" resolve="getOppositeChange" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6uGiN_44iJR" role="3clFbw">
            <node concept="10Nm6u" id="6uGiN_44iJU" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuhzK" role="3uHU7B">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="69abr3Go1nF" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="2AHcQZ" id="69abr3Go1nG" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="69abr3Go1nH" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6uGiN_44iLx" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="37vLTG" id="6uGiN_44iLH" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="2AHcQZ" id="6uGiN_44iLI" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6uGiN_44iLJ" role="1tU5fm">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3cqZAl" id="6uGiN_44iLy" role="3clF45" />
      <node concept="3Tm1VV" id="6uGiN_44iLz" role="1B3o_S" />
      <node concept="3clFbS" id="6uGiN_44iL$" role="3clF47">
        <node concept="3clFbF" id="6uGiN_44iLO" role="3cqZAp">
          <node concept="2OqwBi" id="6uGiN_44iLQ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuO0C" role="2Oq$k0">
              <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
            </node>
            <node concept="3dhRuq" id="6uGiN_44iLU" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxgm9pP" role="25WWJ7">
                <ref role="3cqZAo" node="6uGiN_44iLH" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6uGiN_44iLY" role="3cqZAp">
          <node concept="3clFbS" id="6uGiN_44iLZ" role="3clFbx">
            <node concept="3clFbF" id="6uGiN_44iM0" role="3cqZAp">
              <node concept="2OqwBi" id="6uGiN_44iM1" role="3clFbG">
                <node concept="2OqwBi" id="6uGiN_44iM2" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeuM$x" role="2Oq$k0">
                    <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                  <node concept="2OwXpG" id="6uGiN_44iM4" role="2OqNvi">
                    <ref role="2Oxat5" node="69abr3Go1le" resolve="myModelChanges" />
                  </node>
                </node>
                <node concept="3dhRuq" id="6uGiN_44iMc" role="2OqNvi">
                  <node concept="2OqwBi" id="6uGiN_44iMd" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgkX2d" role="2Oq$k0">
                      <ref role="3cqZAo" node="6uGiN_44iLH" resolve="change" />
                    </node>
                    <node concept="liA8E" id="6uGiN_44iMf" role="2OqNvi">
                      <ref role="37wK5l" to="btf5:2WueYNNT$jz" resolve="getOppositeChange" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6uGiN_44iM9" role="3clFbw">
            <node concept="10Nm6u" id="6uGiN_44iMa" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeuOPt" role="3uHU7B">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="69abr3Go1nI" role="jymVt">
      <property role="TrG5h" value="addAll" />
      <node concept="3Tm1VV" id="3kRMfhMv9vr" role="1B3o_S" />
      <node concept="3cqZAl" id="69abr3Go1nJ" role="3clF45" />
      <node concept="3clFbS" id="69abr3Go1nK" role="3clF47">
        <node concept="3clFbF" id="69abr3Go1nL" role="3cqZAp">
          <node concept="2OqwBi" id="69abr3Go1nM" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuL9N" role="2Oq$k0">
              <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
            </node>
            <node concept="X8dFx" id="69abr3Go1nO" role="2OqNvi">
              <node concept="37vLTw" id="2BHiRxghent" role="25WWJ7">
                <ref role="3cqZAo" node="69abr3Go1nQ" resolve="changes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6uGiN_44k2x" role="3cqZAp">
          <node concept="3clFbS" id="6uGiN_44k2y" role="3clFbx">
            <node concept="3clFbF" id="6uGiN_44k2z" role="3cqZAp">
              <node concept="2OqwBi" id="6uGiN_44k2$" role="3clFbG">
                <node concept="2OqwBi" id="6uGiN_44k2_" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxeucRW" role="2Oq$k0">
                    <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
                  </node>
                  <node concept="2OwXpG" id="6uGiN_44k2B" role="2OqNvi">
                    <ref role="2Oxat5" node="69abr3Go1le" resolve="myModelChanges" />
                  </node>
                </node>
                <node concept="X8dFx" id="6uGiN_44k2J" role="2OqNvi">
                  <node concept="2OqwBi" id="6uGiN_44k2N" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgmub_" role="2Oq$k0">
                      <ref role="3cqZAo" node="69abr3Go1nQ" resolve="changes" />
                    </node>
                    <node concept="3$u5V9" id="6uGiN_44k2P" role="2OqNvi">
                      <node concept="1bVj0M" id="6uGiN_44k2Q" role="23t8la">
                        <node concept="3clFbS" id="6uGiN_44k2R" role="1bW5cS">
                          <node concept="3clFbF" id="6uGiN_44k2S" role="3cqZAp">
                            <node concept="2OqwBi" id="6uGiN_44k2T" role="3clFbG">
                              <node concept="37vLTw" id="2BHiRxgkX1I" role="2Oq$k0">
                                <ref role="3cqZAo" node="6uGiN_44k2W" resolve="c" />
                              </node>
                              <node concept="liA8E" id="6uGiN_44k2V" role="2OqNvi">
                                <ref role="37wK5l" to="btf5:2WueYNNT$jz" resolve="getOppositeChange" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="6uGiN_44k2W" role="1bW2Oz">
                          <property role="TrG5h" value="c" />
                          <node concept="2jxLKc" id="6uGiN_44k2X" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6uGiN_44k2G" role="3clFbw">
            <node concept="10Nm6u" id="6uGiN_44k2H" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxeumwH" role="3uHU7B">
              <ref role="3cqZAo" node="69abr3Go1ll" resolve="myOppositeChangeSet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="69abr3Go1nQ" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="A3Dl8" id="69abr3Go1nR" role="1tU5fm">
          <node concept="3qUE_q" id="69abr3Go1nS" role="A3Ik2">
            <node concept="3uibUv" id="69abr3Go1nT" role="3qUE_r">
              <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7$NO6fvW0Ao" role="jymVt">
      <property role="TrG5h" value="fillRootToChange" />
      <node concept="3cqZAl" id="7$NO6fvW0Ap" role="3clF45" />
      <node concept="3clFbS" id="7$NO6fvW0Ar" role="3clF47">
        <node concept="3clFbF" id="7$NO6fvW0As" role="3cqZAp">
          <node concept="2OqwBi" id="7$NO6fvW0At" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuVYO" role="2Oq$k0">
              <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
            </node>
            <node concept="1yHZxX" id="7$NO6fvW0Av" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="7$NO6fvW0Aw" role="3cqZAp">
          <node concept="2OqwBi" id="7$NO6fvW0Ax" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoNq" role="2Oq$k0">
              <ref role="3cqZAo" node="7$NO6fvVYwm" resolve="myMetadataChanges" />
            </node>
            <node concept="2Kehj3" id="7$NO6fvW0Az" role="2OqNvi" />
          </node>
        </node>
        <node concept="2Gpval" id="7$NO6fvW0A$" role="3cqZAp">
          <node concept="37vLTw" id="wi_$LydKz0" role="2GsD0m">
            <ref role="3cqZAo" node="69abr3Go1le" resolve="myModelChanges" />
          </node>
          <node concept="2GrKxI" id="7$NO6fvW0A_" role="2Gsz3X">
            <property role="TrG5h" value="c" />
          </node>
          <node concept="3clFbS" id="7$NO6fvW0AD" role="2LFqv$">
            <node concept="3cpWs8" id="7$NO6fvW0AE" role="3cqZAp">
              <node concept="3cpWsn" id="7$NO6fvW0AF" role="3cpWs9">
                <property role="TrG5h" value="id" />
                <node concept="3uibUv" id="7$NO6fvW0AG" role="1tU5fm">
                  <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                </node>
                <node concept="2OqwBi" id="7$NO6fvW0AH" role="33vP2m">
                  <node concept="2GrUjf" id="7$NO6fvW0AI" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7$NO6fvW0A_" resolve="c" />
                  </node>
                  <node concept="liA8E" id="7$NO6fvW0AJ" role="2OqNvi">
                    <ref role="37wK5l" to="btf5:3RcDWS$m24_" resolve="getRootId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7$NO6fvW0AK" role="3cqZAp">
              <node concept="3clFbS" id="7$NO6fvW0AL" role="3clFbx">
                <node concept="3clFbF" id="7$NO6fvW0AM" role="3cqZAp">
                  <node concept="2OqwBi" id="7$NO6fvW0AN" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeuoN0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7$NO6fvVYwm" resolve="myMetadataChanges" />
                    </node>
                    <node concept="TSZUe" id="7$NO6fvW0AP" role="2OqNvi">
                      <node concept="2GrUjf" id="7$NO6fvW0AQ" role="25WWJ7">
                        <ref role="2Gs0qQ" node="7$NO6fvW0A_" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7$NO6fvW0AR" role="3clFbw">
                <node concept="10Nm6u" id="7$NO6fvW0AS" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTzN_" role="3uHU7B">
                  <ref role="3cqZAo" node="7$NO6fvW0AF" resolve="id" />
                </node>
              </node>
              <node concept="9aQIb" id="7$NO6fvW0AU" role="9aQIa">
                <node concept="3clFbS" id="7$NO6fvW0AV" role="9aQI4">
                  <node concept="3clFbJ" id="7$NO6fvW0AW" role="3cqZAp">
                    <node concept="3fqX7Q" id="7$NO6fvW0AX" role="3clFbw">
                      <node concept="2OqwBi" id="7$NO6fvW0AY" role="3fr31v">
                        <node concept="37vLTw" id="2BHiRxeuT_7" role="2Oq$k0">
                          <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
                        </node>
                        <node concept="2Nt0df" id="7$NO6fvW0B0" role="2OqNvi">
                          <node concept="37vLTw" id="3GM_nagTyw3" role="38cxEo">
                            <ref role="3cqZAo" node="7$NO6fvW0AF" resolve="id" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7$NO6fvW0B2" role="3clFbx">
                      <node concept="3clFbF" id="7$NO6fvW0B3" role="3cqZAp">
                        <node concept="37vLTI" id="7$NO6fvW0B4" role="3clFbG">
                          <node concept="2ShNRf" id="7$NO6fvW0B5" role="37vLTx">
                            <node concept="Tc6Ow" id="7$NO6fvW0B6" role="2ShVmc">
                              <node concept="3uibUv" id="7$NO6fvW0B7" role="HW$YZ">
                                <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="7$NO6fvW0B8" role="37vLTJ">
                            <node concept="37vLTw" id="2BHiRxeuPIS" role="3ElQJh">
                              <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTzHJ" role="3ElVtu">
                              <ref role="3cqZAo" node="7$NO6fvW0AF" resolve="id" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7$NO6fvW0Bb" role="3cqZAp">
                    <node concept="2OqwBi" id="7$NO6fvW0Bc" role="3clFbG">
                      <node concept="3EllGN" id="7$NO6fvW0Bd" role="2Oq$k0">
                        <node concept="37vLTw" id="2BHiRxeundB" role="3ElQJh">
                          <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTy3o" role="3ElVtu">
                          <ref role="3cqZAo" node="7$NO6fvW0AF" resolve="id" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="7$NO6fvW0Bg" role="2OqNvi">
                        <node concept="2GrUjf" id="7$NO6fvW0Bh" role="25WWJ7">
                          <ref role="2Gs0qQ" node="7$NO6fvW0A_" resolve="c" />
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
    <node concept="3clFb_" id="wi_$LydtZq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChangesForRoot" />
      <node concept="A3Dl8" id="wi_$LydtZr" role="3clF45">
        <node concept="3uibUv" id="wi_$LydtZs" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="wi_$LydtZt" role="1B3o_S" />
      <node concept="37vLTG" id="wi_$LydtZv" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="wi_$LydtZw" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="wi_$LydtZx" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="wi_$LydtZy" role="3clF47">
        <node concept="3clFbF" id="wi_$LydUtI" role="3cqZAp">
          <node concept="3K4zz7" id="wi_$LydZt_" role="3clFbG">
            <node concept="37vLTw" id="wi_$Lye0Wu" role="3K4E3e">
              <ref role="3cqZAo" node="7$NO6fvVYwm" resolve="myMetadataChanges" />
            </node>
            <node concept="3clFbC" id="wi_$LydWqy" role="3K4Cdx">
              <node concept="10Nm6u" id="wi_$LydXZ6" role="3uHU7w" />
              <node concept="37vLTw" id="wi_$LydUtH" role="3uHU7B">
                <ref role="3cqZAo" node="wi_$LydtZv" resolve="rootId" />
              </node>
            </node>
            <node concept="3EllGN" id="wi_$Lye2sk" role="3K4GZi">
              <node concept="37vLTw" id="wi_$Lye2sl" role="3ElVtu">
                <ref role="3cqZAo" node="wi_$LydtZv" resolve="rootId" />
              </node>
              <node concept="37vLTw" id="wi_$Lye2sm" role="3ElQJh">
                <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg0" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="wi_$LydtZz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAffectedRoots" />
      <node concept="3Tm1VV" id="wi_$LydtZ$" role="1B3o_S" />
      <node concept="A3Dl8" id="wi_$LydtZA" role="3clF45">
        <node concept="3uibUv" id="wi_$Lye6Wk" role="A3Ik2">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="3clFbS" id="wi_$LydtZC" role="3clF47">
        <node concept="3clFbF" id="7$NO6fvVZEG" role="3cqZAp">
          <node concept="3K4zz7" id="7$NO6fvVZEH" role="3clFbG">
            <node concept="2OqwBi" id="7$NO6fvVZEI" role="3K4Cdx">
              <node concept="37vLTw" id="2BHiRxeun9y" role="2Oq$k0">
                <ref role="3cqZAo" node="7$NO6fvVYwm" resolve="myMetadataChanges" />
              </node>
              <node concept="1v1jN8" id="7$NO6fvVZEK" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="7$NO6fvVZEL" role="3K4E3e">
              <node concept="37vLTw" id="2BHiRxeuRR6" role="2Oq$k0">
                <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
              </node>
              <node concept="3lbrtF" id="7$NO6fvVZEN" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="7$NO6fvVZEO" role="3K4GZi">
              <node concept="2OqwBi" id="7$NO6fvVZEP" role="2Oq$k0">
                <node concept="37vLTw" id="2BHiRxeunoC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7$NO6fvVYwb" resolve="myRootToChanges" />
                </node>
                <node concept="3lbrtF" id="7$NO6fvVZER" role="2OqNvi" />
              </node>
              <node concept="3QWeyG" id="7$NO6fvVZES" role="2OqNvi">
                <node concept="2ShNRf" id="7$NO6fvVZET" role="576Qk">
                  <node concept="Tc6Ow" id="7$NO6fvVZEU" role="2ShVmc">
                    <node concept="3uibUv" id="7$NO6fvVZEV" role="HW$YZ">
                      <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
                    </node>
                    <node concept="10Nm6u" id="7$NO6fvVZEW" role="HW$Y0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_RUg3" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="3kRMfhMv03j">
    <property role="TrG5h" value="ChangeSet" />
    <node concept="3Tm1VV" id="3kRMfhMv03k" role="1B3o_S" />
    <node concept="3clFb_" id="3kRMfhMv9tJ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getModelChanges" />
      <node concept="3Tm1VV" id="3kRMfhMv9tL" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMv9tM" role="3clF47" />
      <node concept="_YKpA" id="3kRMfhMv9tN" role="3clF45">
        <node concept="3uibUv" id="3kRMfhMv9tO" role="_ZDj9">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3kRMfhMv9tP" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="3kRMfhMv9tQ" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getModelChanges" />
      <node concept="37vLTG" id="3kRMfhMv9u0" role="3clF46">
        <property role="TrG5h" value="changeClass" />
        <node concept="3uibUv" id="3kRMfhMv9u1" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Class" resolve="Class" />
          <node concept="16syzq" id="3kRMfhMv9ur" role="11_B2D">
            <ref role="16sUi3" node="3kRMfhMv9tV" resolve="C" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3kRMfhMv9tS" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMv9tT" role="3clF47" />
      <node concept="16euLQ" id="3kRMfhMv9tV" role="16eVyc">
        <property role="TrG5h" value="C" />
        <node concept="3uibUv" id="3kRMfhMv9ux" role="3ztrMU">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="A3Dl8" id="3kRMfhMv9tX" role="3clF45">
        <node concept="16syzq" id="3kRMfhMv9un" role="A3Ik2">
          <ref role="16sUi3" node="3kRMfhMv9tV" resolve="C" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3kRMfhMv9v2" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="3kRMfhMv9u3" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getOldModel" />
      <node concept="3Tm1VV" id="3kRMfhMv9u5" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMv9u6" role="3clF47" />
      <node concept="2AHcQZ" id="3kRMfhMv9uH" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="H_c77" id="1BY2K4d_UjV" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3kRMfhMv9u8" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getNewModel" />
      <node concept="3Tm1VV" id="3kRMfhMv9ua" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMv9ub" role="3clF47" />
      <node concept="2AHcQZ" id="3kRMfhMv9uO" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="H_c77" id="1BY2K4d_UH6" role="3clF45" />
    </node>
    <node concept="3clFb_" id="3kRMfhMv9uc" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getOppositeChangeSet" />
      <node concept="3uibUv" id="3kRMfhMv9ug" role="3clF45">
        <ref role="3uigEE" node="3kRMfhMv03j" resolve="ChangeSet" />
      </node>
      <node concept="3Tm1VV" id="3kRMfhMv9ue" role="1B3o_S" />
      <node concept="3clFbS" id="3kRMfhMv9uf" role="3clF47" />
      <node concept="2AHcQZ" id="3kRMfhMv9uV" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="wi_$Lydiyx">
    <property role="TrG5h" value="ModelChangeSet" />
    <node concept="3Tm1VV" id="wi_$Lydiyy" role="1B3o_S" />
    <node concept="3uibUv" id="wi_$LydiyC" role="3HQHJm">
      <ref role="3uigEE" node="3kRMfhMv03j" resolve="ChangeSet" />
    </node>
    <node concept="3clFb_" id="wi_$LydiyG" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getChangesForRoot" />
      <node concept="A3Dl8" id="wi_$LydnS8" role="3clF45">
        <node concept="3uibUv" id="wi_$LydnSa" role="A3Ik2">
          <ref role="3uigEE" to="btf5:7Dh0CRFZxgO" resolve="ModelChange" />
        </node>
      </node>
      <node concept="3Tm1VV" id="wi_$LydiyI" role="1B3o_S" />
      <node concept="3clFbS" id="wi_$LydiyJ" role="3clF47" />
      <node concept="37vLTG" id="wi_$Lydk2A" role="3clF46">
        <property role="TrG5h" value="rootId" />
        <node concept="3uibUv" id="wi_$Lydk2_" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="2AHcQZ" id="wi_$LydkP0" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="wi_$Lydmoa" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getAffectedRoots" />
      <node concept="3Tm1VV" id="wi_$Lydmoc" role="1B3o_S" />
      <node concept="3clFbS" id="wi_$Lydmod" role="3clF47" />
      <node concept="A3Dl8" id="wi_$LydnSr" role="3clF45">
        <node concept="3uibUv" id="wi_$Lye6x3" role="A3Ik2">
          <ref role="3uigEE" to="ec5l:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
    </node>
  </node>
</model>

