<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902a9(jetbrains.mps.lang.actions.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="-1" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpe8" ref="r:00000000-0000-4000-0000-011c895902cc(jetbrains.mps.baseLanguage.generator.java.conceptFunctionDefaults@generator)" />
    <import index="tpdg" ref="r:00000000-0000-4000-0000-011c895902a8(jetbrains.mps.lang.actions.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpdr" ref="r:00000000-0000-4000-0000-011c895902a3(jetbrains.mps.lang.actions.behavior)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="iaml" ref="r:6bf310d1-d8fa-4af9-9587-692311b8be46(jetbrains.mps.datatransfer)" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" />
    <import index="tp27" ref="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qzxn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.datatransfer(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="zce0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.smodel.action(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="hvbn" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.lang.actions(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="y49u" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.util(MPS.OpenAPI/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="9eus" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.actions.descriptor(MPS.Editor/)" />
    <import index="iwf0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.descriptor(MPS.Editor/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790189" name="jetbrains.mps.baseLanguage.structure.Type" flags="in" index="33vP2l" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="96ee7a94-411d-4cf8-9b94-96cad7e52411" name="jetbrains.mps.baseLanguage.jdk7">
      <concept id="400642802549924137" name="jetbrains.mps.baseLanguage.jdk7.structure.StringSwitchStatement" flags="nn" index="2ignYC" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="7830515785164762753" name="jetbrains.mps.lang.generator.structure.MappingConfiguration_Condition" flags="in" index="avzCv" />
      <concept id="1219952072943" name="jetbrains.mps.lang.generator.structure.DropRootRule" flags="lg" index="aNPBN">
        <reference id="1219952338328" name="applicableConcept" index="aOQi4" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1202776937179" name="jetbrains.mps.lang.generator.structure.AbandonInput_RuleConsequence" flags="lg" index="b5Tf3" />
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="7830515785164764091" name="condition" index="avys_" />
        <child id="1219952894531" name="dropRootRule" index="aQYdv" />
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="5015072279636464462" name="jetbrains.mps.lang.generator.structure.VarMacro" flags="lg" index="2jeGV$">
        <child id="5015072279636624635" name="type" index="2jfP_h" />
        <child id="5015072279636624596" name="value" index="2jfP_Y" />
      </concept>
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <child id="1168558750579" name="defaultConsequence" index="jxRDz" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1194565793557" name="jetbrains.mps.lang.generator.structure.IncludeMacro" flags="ln" index="xERo3">
        <reference id="1194566366375" name="includeTemplate" index="xH3mL" />
        <child id="1194565823413" name="sourceNodeQuery" index="xEYEz" />
      </concept>
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
        <child id="1167087469900" name="conditionFunction" index="2VPoh3" />
      </concept>
      <concept id="1167087518662" name="jetbrains.mps.lang.generator.structure.CreateRootRule_Condition" flags="in" index="2VP$b9" />
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="ln" index="2ZBi8u" />
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX">
        <child id="982871510068000158" name="sourceNodeQuery" index="1sPUBK" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1194989344771" name="alternativeConsequence" index="UU_$l" />
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217960179967" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowErrorMessage" flags="nn" index="2k5nB$" />
      <concept id="1217960314443" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase" flags="nn" index="2k5Stg">
        <child id="1217960314448" name="messageText" index="2k5Stb" />
        <child id="1217960407512" name="referenceNode" index="2k6f33" />
      </concept>
      <concept id="1217969995796" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowWarningMessage" flags="nn" index="2kEO4f" />
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
      </concept>
      <concept id="2721957369897614808" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef" flags="nn" index="1bhEwm">
        <reference id="2721957369897614810" name="varmacro" index="1bhEwk" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1177335944525" name="jetbrains.mps.lang.actions.structure.QueryFunction_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1177498071304" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_String" flags="in" index="CmF0q" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1202838164916" name="jetbrains.mps.baseLanguageInternal.structure.InternalThisExpression" flags="nn" index="eJtiG" />
      <concept id="1174294166120" name="jetbrains.mps.baseLanguageInternal.structure.InternalPartialInstanceMethodCall" flags="nn" index="1DoJHT">
        <property id="1174294288199" name="methodName" index="1Dpdpm" />
        <child id="1174313653259" name="returnType" index="1Ez5kq" />
        <child id="1174317636233" name="instance" index="1EMhIo" />
      </concept>
      <concept id="1176743162354" name="jetbrains.mps.baseLanguageInternal.structure.InternalVariableReference" flags="nn" index="3VmV3z">
        <property id="1176743296073" name="name" index="3VnrPo" />
        <child id="1176743202636" name="type" index="3Vn4Tt" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="5820409030208923287" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingLinkOperation" flags="nn" index="25OxAV" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1180028149140" name="jetbrains.mps.lang.smodel.structure.Concept_IsSuperConceptOfOperation" flags="nn" index="2Za9M6">
        <child id="1180028346304" name="conceptArgument" index="2ZaTVi" />
      </concept>
      <concept id="6995935425733782641" name="jetbrains.mps.lang.smodel.structure.Model_GetModule" flags="nn" index="13u695" />
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.ConceptNodeType" flags="in" index="3THzug">
        <reference id="1180481110358" name="conceptDeclaraton" index="3qa414" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1237467705688" name="jetbrains.mps.baseLanguage.collections.structure.IteratorType" flags="in" index="uOF1S">
        <child id="1237467730343" name="elementType" index="uOL27" />
      </concept>
      <concept id="1237470895604" name="jetbrains.mps.baseLanguage.collections.structure.HasNextOperation" flags="nn" index="v0PNk" />
      <concept id="1237471031357" name="jetbrains.mps.baseLanguage.collections.structure.GetNextOperation" flags="nn" index="v1n4t" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1240151247486" name="jetbrains.mps.baseLanguage.collections.structure.ContainerIteratorType" flags="in" index="2YL$Hu" />
      <concept id="1240151544672" name="jetbrains.mps.baseLanguage.collections.structure.RemoveOperation" flags="nn" index="2YMH90" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="bUwia" id="gNbzR0X">
    <property role="TrG5h" value="ACTL_main" />
    <node concept="3lhOvk" id="4UrKinLgQ$4" role="3lj3bC">
      <ref role="30HIoZ" to="tpdg:gR7WgqM" resolve="NodeFactories" />
      <ref role="3lhOvi" node="4UrKinLguy3" resolve="NodeFactories" />
    </node>
    <node concept="2rT7sh" id="4UrKinLgfIh" role="2rTMjI">
      <property role="TrG5h" value="nodeFactory" />
      <ref role="2rTdP9" to="tpdg:gR7Wvgx" resolve="NodeFactory" />
      <ref role="2rZz_L" to="tpee:fz12cDA" resolve="ClassConcept" />
    </node>
    <node concept="3aamgX" id="4UrKinLjLMT" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gR7Wvgx" resolve="NodeFactory" />
      <node concept="j$656" id="4UrKinLjMUe" role="1lVwrX">
        <ref role="v9R2y" node="4UrKinLjMUc" resolve="reduce_NodeFactory" />
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgKcQBa" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
      <node concept="j$656" id="44uAAgKcY41" role="1lVwrX">
        <ref role="v9R2y" node="h8ugEqs" resolve="reduce_NodeSubstituteActionsBuilder" />
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgKcQCT" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
      <node concept="j$656" id="44uAAgKcY83" role="1lVwrX">
        <ref role="v9R2y" node="h8_0iX5" resolve="reduce_SideTransformActionsBuilder" />
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgJXMGt" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gNbuRI4" resolve="NodeSubstitutePreconditionFunction" />
      <node concept="j$656" id="44uAAgJY3y0" role="1lVwrX">
        <ref role="v9R2y" node="gNbFlqZ" resolve="reduce_NodeSubstitutePreconditionFunction" />
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgKb44X" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gNkRJ8Q" resolve="SideTransformHintSubstitutePreconditionFunction" />
      <node concept="j$656" id="44uAAgKb59V" role="1lVwrX">
        <ref role="v9R2y" node="gNl2fTJ" resolve="reduce_SideTransformHintSubstitutePreconditionFunction" />
      </node>
    </node>
    <node concept="2VPoh5" id="h3JFMjA" role="2VS0gm">
      <ref role="2VPoh2" node="gNb$Wqb" resolve="QueriesGenerated" />
      <node concept="2VP$b9" id="2TwMGXXlxh3" role="2VPoh3">
        <node concept="3clFbS" id="2TwMGXXlxh4" role="2VODD2">
          <node concept="3clFbJ" id="2TwMGXXlxyA" role="3cqZAp">
            <node concept="2OqwBi" id="2TwMGXXly1a" role="3clFbw">
              <node concept="Rm8GO" id="2TwMGXXly19" role="2Oq$k0">
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.ACTIONS" resolve="ACTIONS" />
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
              </node>
              <node concept="liA8E" id="2TwMGXXly1e" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.is(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="is" />
                <node concept="2JrnkZ" id="6MGyrQSmUvV" role="37wK5m">
                  <node concept="2OqwBi" id="2TwMGXXlNMH" role="2JrQYb">
                    <node concept="1iwH7S" id="2TwMGXXlNMG" role="2Oq$k0" />
                    <node concept="1st3f0" id="2TwMGXXlNML" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2TwMGXXlxyC" role="3clFbx">
              <node concept="3cpWs6" id="2TwMGXXlNMM" role="3cqZAp">
                <node concept="3clFbT" id="2TwMGXXlNMO" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2TwMGXXlNMT" role="3cqZAp">
            <node concept="22lmx$" id="2TwMGXXlNNC" role="3clFbw">
              <node concept="2OqwBi" id="2TwMGXXlNNx" role="3uHU7B">
                <node concept="2OqwBi" id="2TwMGXXlNNy" role="2Oq$k0">
                  <node concept="2OqwBi" id="2TwMGXXlNNz" role="2Oq$k0">
                    <node concept="1iwH7S" id="2TwMGXXlNN$" role="2Oq$k0" />
                    <node concept="1r8y6K" id="2TwMGXXlNN_" role="2OqNvi" />
                  </node>
                  <node concept="2SmgA7" id="2TwMGXXlNNA" role="2OqNvi">
                    <node concept="chp4Y" id="3MnEEnJ67Mz" role="1dBWTz">
                      <ref role="cht4Q" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2TwMGXXlNNB" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="2TwMGXXlNNF" role="3uHU7w">
                <node concept="2OqwBi" id="2TwMGXXlNNG" role="2Oq$k0">
                  <node concept="2OqwBi" id="2TwMGXXlNNH" role="2Oq$k0">
                    <node concept="1iwH7S" id="2TwMGXXlNNI" role="2Oq$k0" />
                    <node concept="1r8y6K" id="2TwMGXXlNNJ" role="2OqNvi" />
                  </node>
                  <node concept="2SmgA7" id="2TwMGXXlNNK" role="2OqNvi">
                    <node concept="chp4Y" id="3MnEEnJ67M_" role="1dBWTz">
                      <ref role="cht4Q" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2TwMGXXlNNL" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="2TwMGXXlNMU" role="3clFbx">
              <node concept="3cpWs6" id="2TwMGXXlNO6" role="3cqZAp">
                <node concept="3clFbT" id="2TwMGXXlNO8" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2TwMGXXlNMQ" role="3cqZAp">
            <node concept="3clFbT" id="2TwMGXXlNMR" role="3clFbG">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VPoh5" id="52UGxk5rl4I" role="2VS0gm">
      <ref role="2VPoh2" node="52UGxk5s6_K" resolve="ActionAspectDescriptorImpl" />
      <node concept="2VP$b9" id="52UGxk5rm6P" role="2VPoh3">
        <node concept="3clFbS" id="52UGxk5rm6Q" role="2VODD2">
          <node concept="3cpWs6" id="12VdU1xGw32" role="3cqZAp">
            <node concept="1Wc70l" id="4UrKinLj41h" role="3cqZAk">
              <node concept="2OqwBi" id="52UGxk5rmjK" role="3uHU7B">
                <node concept="Rm8GO" id="52UGxk5rmjL" role="2Oq$k0">
                  <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  <ref role="Rm8GQ" to="w1kc:~LanguageAspect.ACTIONS" resolve="ACTIONS" />
                </node>
                <node concept="liA8E" id="52UGxk5rmjM" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~LanguageAspect.is(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="is" />
                  <node concept="2JrnkZ" id="52UGxk5rmjN" role="37wK5m">
                    <node concept="2OqwBi" id="52UGxk5rmjO" role="2JrQYb">
                      <node concept="1iwH7S" id="52UGxk5rmjP" role="2Oq$k0" />
                      <node concept="1st3f0" id="52UGxk5rmjQ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4UrKinLj4g_" role="3uHU7w">
                <node concept="2OqwBi" id="4UrKinLj5DD" role="2Oq$k0">
                  <node concept="2OqwBi" id="4UrKinLj4gB" role="2Oq$k0">
                    <node concept="1iwH7S" id="4UrKinLj4gC" role="2Oq$k0" />
                    <node concept="1r8y6K" id="4UrKinLj4gD" role="2OqNvi" />
                  </node>
                  <node concept="2RRcyG" id="4UrKinLj5Vf" role="2OqNvi">
                    <ref role="2RRcyH" to="tpdg:gR7WgqM" resolve="NodeFactories" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4UrKinLj4gF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="h3JF5th" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:gNbvxuM" resolve="ConceptFunctionParameter_parentNode" />
      <node concept="j$656" id="h3JF8GV" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h8ugp9e" role="3acgRq">
      <property role="36QftV" value="false" />
      <ref role="30HIoZ" to="tpdg:h8ub8Bh" resolve="ConceptFunctionParameter_pattern" />
      <node concept="j$656" id="h8vZ84P" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h_Q9m_L" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h_Q8NCa" resolve="ConceptFunctionParameter_strictly" />
      <node concept="j$656" id="h_Q9qfR" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h8yP4$k" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8yECRK" resolve="ConceptFunctionParameter_nodeToWrap" />
      <node concept="j$656" id="h8yP6bh" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h8vV_OB" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8uNqqV" resolve="ConceptFunctionParameter_parameterObject" />
      <node concept="gft3U" id="3JzLIOkIgPH" role="1lVwrX">
        <node concept="1eOMI4" id="3JzLIOkIgS0" role="gfFT$">
          <node concept="3VmV3z" id="3JzLIOkIgS2" role="1eOMHV">
            <property role="3VnrPo" value="item" />
            <node concept="33vP2l" id="3JzLIOkIgS3" role="3Vn4Tt">
              <node concept="29HgVG" id="3JzLIOkIgS4" role="lGtFl">
                <node concept="3NFfHV" id="3JzLIOkIgS5" role="3NFExx">
                  <node concept="3clFbS" id="3JzLIOkIgS6" role="2VODD2">
                    <node concept="3clFbJ" id="3JzLIOkIgS7" role="3cqZAp">
                      <node concept="3y3z36" id="3JzLIOkIgS8" role="3clFbw">
                        <node concept="2OqwBi" id="3JzLIOkIgS9" role="3uHU7B">
                          <node concept="2OqwBi" id="3JzLIOkIgSa" role="2Oq$k0">
                            <node concept="2Xjw5R" id="3JzLIOkIgSb" role="2OqNvi">
                              <node concept="1xMEDy" id="3JzLIOkIgSc" role="1xVPHs">
                                <node concept="chp4Y" id="3JzLIOkIgSd" role="ri$Ld">
                                  <ref role="cht4Q" to="tpdg:h8uMFyA" resolve="ParameterizedSubstituteMenuPart" />
                                </node>
                              </node>
                            </node>
                            <node concept="30H73N" id="3JzLIOkIgSe" role="2Oq$k0" />
                          </node>
                          <node concept="3TrEf2" id="3JzLIOkIgSf" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="3JzLIOkIgSg" role="3uHU7w" />
                      </node>
                      <node concept="3clFbS" id="3JzLIOkIgSh" role="3clFbx">
                        <node concept="3cpWs6" id="3JzLIOkIgSi" role="3cqZAp">
                          <node concept="2OqwBi" id="3JzLIOkIgSj" role="3cqZAk">
                            <node concept="3TrEf2" id="3JzLIOkIgSk" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
                            </node>
                            <node concept="2OqwBi" id="3JzLIOkIgSl" role="2Oq$k0">
                              <node concept="2Xjw5R" id="3JzLIOkIgSm" role="2OqNvi">
                                <node concept="1xMEDy" id="3JzLIOkIgSn" role="1xVPHs">
                                  <node concept="chp4Y" id="3JzLIOkIgSo" role="ri$Ld">
                                    <ref role="cht4Q" to="tpdg:h8uMFyA" resolve="ParameterizedSubstituteMenuPart" />
                                  </node>
                                </node>
                              </node>
                              <node concept="30H73N" id="3JzLIOkIgSp" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3JzLIOkIgSq" role="3cqZAp">
                      <node concept="3clFbS" id="3JzLIOkIgSr" role="3clFbx">
                        <node concept="3cpWs6" id="3JzLIOkIgSs" role="3cqZAp">
                          <node concept="2OqwBi" id="3JzLIOkIgSt" role="3cqZAk">
                            <node concept="3TrEf2" id="3JzLIOkIgSu" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                            </node>
                            <node concept="2OqwBi" id="3JzLIOkIgSv" role="2Oq$k0">
                              <node concept="30H73N" id="3JzLIOkIgSw" role="2Oq$k0" />
                              <node concept="2Xjw5R" id="3JzLIOkIgSx" role="2OqNvi">
                                <node concept="1xMEDy" id="3JzLIOkIgSy" role="1xVPHs">
                                  <node concept="chp4Y" id="3JzLIOkIgSz" role="ri$Ld">
                                    <ref role="cht4Q" to="tpdg:h8CZtG3" resolve="ParameterizedSideTransformMenuPart" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="3JzLIOkIgS$" role="3clFbw">
                        <node concept="2OqwBi" id="3JzLIOkIgS_" role="3uHU7B">
                          <node concept="2OqwBi" id="3JzLIOkIgSA" role="2Oq$k0">
                            <node concept="30H73N" id="3JzLIOkIgSB" role="2Oq$k0" />
                            <node concept="2Xjw5R" id="3JzLIOkIgSC" role="2OqNvi">
                              <node concept="1xMEDy" id="3JzLIOkIgSD" role="1xVPHs">
                                <node concept="chp4Y" id="3JzLIOkIgSE" role="ri$Ld">
                                  <ref role="cht4Q" to="tpdg:h8CZtG3" resolve="ParameterizedSideTransformMenuPart" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3TrEf2" id="3JzLIOkIgSF" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="3JzLIOkIgSG" role="3uHU7w" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="3JzLIOkIgSH" role="3cqZAp">
                      <node concept="10Nm6u" id="3JzLIOkIgSI" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="h8zrqGt" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8zm4mF" resolve="ConceptFunctionParameter_concept" />
      <node concept="gft3U" id="hc$WINE" role="1lVwrX">
        <node concept="3VmV3z" id="hc$WRBI" role="gfFT$">
          <property role="3VnrPo" value="concept" />
          <node concept="3Tqbb2" id="hc$WT3R" role="3Vn4Tt" />
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="h8SvkpH" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8Svfym" resolve="ConceptFunctionParameter_childConcept" />
      <node concept="j$656" id="h8Svrhj" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h8Cv5Cy" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8Cj7Ib" resolve="ConceptFunctionParameter_sourceNode" />
      <node concept="j$656" id="h8Cv8ec" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h8EasMN" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8E3goq" resolve="ConceptFunctionParameter_result" />
      <node concept="j$656" id="h8Eaut4" role="1lVwrX">
        <ref role="v9R2y" node="h8EahK9" resolve="reduce_ConceptFunctionParameter_result" />
      </node>
    </node>
    <node concept="3aamgX" id="h8G$duY" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h8GyYWS" resolve="ConceptFunctionParameter_currentTargetNode" />
      <node concept="j$656" id="h8G$hAj" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="4HcAOwD$MOi" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4HcAOwD$HKO" resolve="ConceptFunctionParameter_targetNode" />
      <node concept="j$656" id="4HcAOwD$MOk" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="htvQies" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:htvOpk0" resolve="ConceptFunctionParameter_childSetter" />
      <node concept="j$656" id="htvQn0k" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="hFp_THp" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hFp$ohJ" resolve="ConceptFunctionParameter_wrapped" />
      <node concept="j$656" id="hFp_YOD" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="hLJ99ud" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hLJ7k9d" resolve="ConceptFunctionParameter_link" />
      <node concept="j$656" id="hLJ9hmS" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="1uUlb56XEFS" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:ovg3xBSJrQ" resolve="ConceptFunctionParameter_createdNode" />
      <node concept="j$656" id="1uUlb56XG5W" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h3JFgVH" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4PZKMKmrdgZ" resolve="NodeSetupFunction_NewNode" />
      <node concept="j$656" id="h3JFjiQ" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h3JFmtK" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4PZKMKmrf9t" resolve="NodeSetupFunction_SampleNode" />
      <node concept="j$656" id="h3JFoba" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h3JFqv8" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4PZKMKmrfdu" resolve="NodeSetupFunction_EnclosingNode" />
      <node concept="j$656" id="h3JFtl2" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="h9A_Kcs" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:h9AzSZ$" resolve="SubstituteNodeBuilderVariableReference" />
      <node concept="j$656" id="h9A_MwU" role="1lVwrX">
        <ref role="v9R2y" node="h9A_ugw" resolve="reduce_SubstituteNodeBuilderVariableReference" />
      </node>
    </node>
    <node concept="3aamgX" id="hwHcYA3" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hwH8uQd" resolve="SideTransformVariableReference" />
      <node concept="gft3U" id="hwHd0bT" role="1lVwrX">
        <node concept="3VmV3z" id="hwHd44H" role="gfFT$">
          <property role="3VnrPo" value="name" />
          <node concept="3uibUv" id="44uAAgK3lgd" role="3Vn4Tt">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
          <node concept="17Uvod" id="hwHd7zD" role="lGtFl">
            <property role="2qtEX9" value="name" />
            <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1176743162354/1176743296073" />
            <node concept="3zFVjK" id="hwHd7zE" role="3zH0cK">
              <node concept="3clFbS" id="hwHd7zF" role="2VODD2">
                <node concept="3clFbF" id="hwHd8cd" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$ENr" role="3clFbG">
                    <node concept="2OqwBi" id="hxx$WbU" role="2Oq$k0">
                      <node concept="30H73N" id="hwHd8ce" role="2Oq$k0" />
                      <node concept="3TrEf2" id="hwHdblt" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:hwH8uQe" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="hwHdbZh" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="aNPBN" id="hKbqJul" role="aQYdv">
      <ref role="aOQi4" to="tpdg:gR7WgqM" resolve="NodeFactories" />
    </node>
    <node concept="aNPBN" id="hKbqJuQ" role="aQYdv">
      <ref role="aOQi4" to="tpdg:gbFK_dB" resolve="NodeSubstituteActions" />
    </node>
    <node concept="aNPBN" id="hKbqJvm" role="aQYdv">
      <ref role="aOQi4" to="tpdg:gzUOs4m" resolve="SideTransformHintSubstituteActions" />
    </node>
  </node>
  <node concept="312cEu" id="gNb$Wqb">
    <property role="TrG5h" value="QueriesGenerated" />
    <node concept="2YIFZL" id="50ockWX0KL1" role="jymVt">
      <property role="TrG5h" value="nodeSubstActionBuilder" />
      <node concept="2b32R4" id="44uAAgKda$j" role="lGtFl">
        <node concept="3JmXsc" id="44uAAgKda$l" role="2P8S$">
          <node concept="3clFbS" id="44uAAgKda$m" role="2VODD2">
            <node concept="3clFbF" id="44uAAgKda$n" role="3cqZAp">
              <node concept="2OqwBi" id="44uAAgKda$o" role="3clFbG">
                <node concept="2OqwBi" id="44uAAgKda$p" role="2Oq$k0">
                  <node concept="1iwH7S" id="44uAAgKda$q" role="2Oq$k0" />
                  <node concept="1r8y6K" id="44uAAgKda$r" role="2OqNvi" />
                </node>
                <node concept="2SmgA7" id="44uAAgKda$s" role="2OqNvi">
                  <node concept="chp4Y" id="3MnEEnJ67MF" role="1dBWTz">
                    <ref role="cht4Q" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="50ockWX0KL2" role="3clF45" />
      <node concept="3Tm1VV" id="50ockWX0KL3" role="1B3o_S" />
      <node concept="3clFbS" id="50ockWX0KL4" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="50ockWX0KLn" role="jymVt">
      <property role="TrG5h" value="sideTransfActionBuilder" />
      <node concept="2b32R4" id="44uAAgKd3xk" role="lGtFl">
        <node concept="3JmXsc" id="44uAAgKd3xm" role="2P8S$">
          <node concept="3clFbS" id="44uAAgKd3xn" role="2VODD2">
            <node concept="3clFbF" id="44uAAgKd3xo" role="3cqZAp">
              <node concept="2OqwBi" id="44uAAgKd3xp" role="3clFbG">
                <node concept="2OqwBi" id="44uAAgKd3xq" role="2Oq$k0">
                  <node concept="1iwH7S" id="44uAAgKd3xr" role="2Oq$k0" />
                  <node concept="1r8y6K" id="44uAAgKd3xs" role="2OqNvi" />
                </node>
                <node concept="2SmgA7" id="44uAAgKd3xt" role="2OqNvi">
                  <node concept="chp4Y" id="3MnEEnJ67MH" role="1dBWTz">
                    <ref role="cht4Q" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="50ockWX0KLp" role="1B3o_S" />
      <node concept="3cqZAl" id="50ockWX0KLo" role="3clF45" />
      <node concept="3clFbS" id="50ockWX0KLq" role="3clF47" />
    </node>
    <node concept="n94m4" id="h3JFGB5" role="lGtFl" />
    <node concept="3Tm1VV" id="h9B3Lt6" role="1B3o_S" />
    <node concept="17Uvod" id="hdLkV6p" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hdLkV6q" role="3zH0cK">
        <node concept="3clFbS" id="hdLkV6r" role="2VODD2">
          <node concept="3clFbJ" id="hdLkW12" role="3cqZAp">
            <node concept="2OqwBi" id="h_XQIW_" role="3clFbw">
              <node concept="2YIFZM" id="2n9zn0CqMVg" role="2Oq$k0">
                <ref role="37wK5l" to="unno:7WvVJ3rORmu" resolve="getModelLongName" />
                <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
                <node concept="2JrnkZ" id="2n9zn0CqMVh" role="37wK5m">
                  <node concept="2OqwBi" id="2n9zn0CqMVi" role="2JrQYb">
                    <node concept="1iwH7S" id="2n9zn0CqMVj" role="2Oq$k0" />
                    <node concept="1r8y6K" id="2n9zn0CqMVk" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="h_XQIWA" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                <node concept="Xl_RD" id="hdLkYzR" role="37wK5m">
                  <property role="Xl_RC" value=".actions" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="hdLkW14" role="3clFbx">
              <node concept="3cpWs6" id="hdLkZ5_" role="3cqZAp">
                <node concept="Xl_RD" id="hdLkZgA" role="3cqZAk">
                  <property role="Xl_RC" value="QueriesGenerated" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="hdLl0j2" role="9aQIa">
              <node concept="3clFbS" id="hdLl0j3" role="9aQI4">
                <node concept="3cpWs6" id="hdLl0vK" role="3cqZAp">
                  <node concept="Xl_RD" id="hdLl0CO" role="3cqZAk">
                    <property role="Xl_RC" value="ActionsQueriesGenerated" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="gNbFlqZ">
    <property role="TrG5h" value="reduce_NodeSubstitutePreconditionFunction" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:gNbuRI4" resolve="NodeSubstitutePreconditionFunction" />
    <node concept="312cEu" id="gNbFsaE" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="gNbFtVX" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="raruj" id="gNbFIJt" role="lGtFl" />
        <node concept="3clFbS" id="gNbFtVZ" role="3clF47">
          <node concept="29HgVG" id="gNbHFg3" role="lGtFl">
            <node concept="3NFfHV" id="h3JJtPj" role="3NFExx">
              <node concept="3clFbS" id="h3JJtPk" role="2VODD2">
                <node concept="3cpWs6" id="h3JJudw" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx_0O_" role="3cqZAk">
                    <node concept="30H73N" id="h3JJuBq" role="2Oq$k0" />
                    <node concept="3TrEf2" id="h3JJvtT" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="gNbHW7E" role="3cqZAp">
            <node concept="3clFbT" id="gNbHXSI" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm1VV" id="h9AO$Ks" role="1B3o_S" />
        <node concept="10P_77" id="gNbFve2" role="3clF45" />
        <node concept="37vLTG" id="gNbIfJQ" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="gNbIk3Z" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htuqiIp" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$aX1j" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~NodeSubstitutePreconditionContext" resolve="NodeSubstitutePreconditionContext" />
          </node>
        </node>
        <node concept="17Uvod" id="gNbFOeN" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="h3JJcfg" role="3zH0cK">
            <node concept="3clFbS" id="h3JJcfh" role="2VODD2">
              <node concept="3cpWs8" id="h3JJhKp" role="3cqZAp">
                <node concept="3cpWsn" id="h3JJhKq" role="3cpWs9">
                  <property role="TrG5h" value="builder" />
                  <node concept="2OqwBi" id="hxx_11w" role="33vP2m">
                    <node concept="2Xjw5R" id="h3JJdYq" role="2OqNvi">
                      <node concept="1xMEDy" id="h3JJf40" role="1xVPHs">
                        <node concept="chp4Y" id="h_XQNxQ" role="ri$Ld">
                          <ref role="cht4Q" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                        </node>
                      </node>
                    </node>
                    <node concept="30H73N" id="h3JJd8c" role="2Oq$k0" />
                  </node>
                  <node concept="3Tqbb2" id="h3JJhKs" role="1tU5fm">
                    <ref role="ehGHo" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="h3JJjak" role="3cqZAp">
                <node concept="2OqwBi" id="hKuiVQE" role="3cqZAk">
                  <node concept="37vLTw" id="3GM_nagTrRh" role="2Oq$k0">
                    <ref role="3cqZAo" node="h3JJhKq" resolve="builder" />
                  </node>
                  <node concept="2qgKlT" id="hKuiWnU" role="2OqNvi">
                    <ref role="37wK5l" to="tpdr:hKuhHAJ" resolve="getPreconditionQueryMethodName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3LuB" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="gNl2fTJ">
    <property role="TrG5h" value="reduce_SideTransformHintSubstitutePreconditionFunction" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:gNkRJ8Q" resolve="SideTransformHintSubstitutePreconditionFunction" />
    <node concept="312cEu" id="gNl2fTK" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="gNl2fTL" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="3Tm1VV" id="h9AO$HU" role="1B3o_S" />
        <node concept="3clFbS" id="gNl2fTN" role="3clF47">
          <node concept="3cpWs6" id="gNl2fTP" role="3cqZAp">
            <node concept="3clFbT" id="gNl2fTQ" role="3cqZAk" />
          </node>
          <node concept="29HgVG" id="gNl2fTO" role="lGtFl">
            <node concept="3NFfHV" id="h3JJLVw" role="3NFExx">
              <node concept="3clFbS" id="h3JJLVx" role="2VODD2">
                <node concept="3cpWs6" id="h3JJMhK" role="3cqZAp">
                  <node concept="2OqwBi" id="hxx$OII" role="3cqZAk">
                    <node concept="3TrEf2" id="h3JJO44" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                    </node>
                    <node concept="30H73N" id="h3JJN0E" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="10P_77" id="gNl2fTM" role="3clF45" />
        <node concept="raruj" id="gNl2fTR" role="lGtFl" />
        <node concept="37vLTG" id="gNl2fTV" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="gNl2fTW" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="17Uvod" id="gNl2fTS" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="h3JJxcK" role="3zH0cK">
            <node concept="3clFbS" id="h3JJxcL" role="2VODD2">
              <node concept="3cpWs8" id="h3JJBOc" role="3cqZAp">
                <node concept="3cpWsn" id="h3JJBOd" role="3cpWs9">
                  <property role="TrG5h" value="builder" />
                  <node concept="3Tqbb2" id="h3JJBOf" role="1tU5fm">
                    <ref role="ehGHo" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
                  </node>
                  <node concept="2OqwBi" id="hxx$YFS" role="33vP2m">
                    <node concept="2Xjw5R" id="h3JJ_iM" role="2OqNvi">
                      <node concept="1xMEDy" id="h3JJAfA" role="1xVPHs">
                        <node concept="chp4Y" id="h_XQNxR" role="ri$Ld">
                          <ref role="cht4Q" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
                        </node>
                      </node>
                    </node>
                    <node concept="30H73N" id="h3JJ$sk" role="2Oq$k0" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="h3JJCNh" role="3cqZAp">
                <node concept="2OqwBi" id="hKummNP" role="3cqZAk">
                  <node concept="2qgKlT" id="hKumnkl" role="2OqNvi">
                    <ref role="37wK5l" to="tpdr:hKul9fn" resolve="getPreconditionQueryMethodName" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTxWK" role="2Oq$k0">
                    <ref role="3cqZAo" node="h3JJBOd" resolve="builder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="htuyr43" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$b1pJ" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformPreconditionContext" resolve="SideTransformPreconditionContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3LsI" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8ugEqs">
    <property role="TrG5h" value="reduce_NodeSubstituteActionsBuilder" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
    <node concept="312cEu" id="h8ugEqt" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="h8ugEqu" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="3Tm1VV" id="h9AO$JH" role="1B3o_S" />
        <node concept="37vLTG" id="h8uh2wy" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="h8uh2O_" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htuPRA_" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$b732" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
          </node>
        </node>
        <node concept="_YKpA" id="i1GGy7$" role="3clF45">
          <node concept="3uibUv" id="5dLITL9vzbY" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="3clFbS" id="h8uhbT$" role="3clF47">
          <node concept="3cpWs8" id="h8uhckb" role="3cqZAp">
            <node concept="3cpWsn" id="h8uhckc" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2ShNRf" id="hHLoltt" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGyh8" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9vKY6" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="i1GGyct" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9v$P5" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="h9Axnsx" role="3cqZAp">
            <node concept="3cpWsn" id="h9Axnsy" role="3cpWs9">
              <property role="TrG5h" value="variable" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="h9Axnsz" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                <node concept="29HgVG" id="h9Axtkl" role="lGtFl">
                  <node concept="3NFfHV" id="h9Axtkm" role="3NFExx">
                    <node concept="3clFbS" id="h9Axtkn" role="2VODD2">
                      <node concept="3cpWs6" id="h9Axyod" role="3cqZAp">
                        <node concept="2OqwBi" id="hxx_2LL" role="3cqZAk">
                          <node concept="1PxgMI" id="h9Ax$XW" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
                            <node concept="30H73N" id="h9Axzex" role="1PxMeX" />
                          </node>
                          <node concept="3TrEf2" id="h9AxAVZ" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="h9AxBSF" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="h9AxBSG" role="3zH0cK">
                  <node concept="3clFbS" id="h9AxBSH" role="2VODD2">
                    <node concept="3cpWs6" id="h9AxGvq" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$UL4" role="3cqZAk">
                        <node concept="3TrcHB" id="h9AxHRB" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="1PxgMI" id="h9AxGvs" role="2Oq$k0">
                          <ref role="1PxNhF" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
                          <node concept="30H73N" id="h9AxGvt" role="1PxMeX" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4vxQe1gXABl" role="33vP2m">
                <node concept="liA8E" id="4vxQe1gXABm" role="2OqNvi">
                  <ref role="37wK5l" node="4vxQe1gXAB_" resolve="compute" />
                </node>
                <node concept="2ShNRf" id="4vxQe1gXABn" role="2Oq$k0">
                  <node concept="YeOm9" id="4vxQe1gXABo" role="2ShVmc">
                    <node concept="1Y3b0j" id="4vxQe1gXABp" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                      <node concept="3uibUv" id="4vxQe1gXABq" role="2Ghqu4">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        <node concept="29HgVG" id="4vxQe1gXABr" role="lGtFl">
                          <node concept="3NFfHV" id="4vxQe1gXABs" role="3NFExx">
                            <node concept="3clFbS" id="4vxQe1gXABt" role="2VODD2">
                              <node concept="3cpWs6" id="4vxQe1gXABu" role="3cqZAp">
                                <node concept="2OqwBi" id="4vxQe1gXABv" role="3cqZAk">
                                  <node concept="2qgKlT" id="4vxQe1gXABw" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                  </node>
                                  <node concept="2OqwBi" id="4vxQe1gXABx" role="2Oq$k0">
                                    <node concept="30H73N" id="4vxQe1gXABy" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4vxQe1gXABz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4vxQe1gXAB$" role="1B3o_S" />
                      <node concept="3clFb_" id="4vxQe1gXAB_" role="jymVt">
                        <property role="IEkAT" value="false" />
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="compute" />
                        <property role="DiZV1" value="false" />
                        <node concept="3uibUv" id="4vxQe1gXABA" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          <node concept="29HgVG" id="4vxQe1gXABB" role="lGtFl">
                            <node concept="3NFfHV" id="4vxQe1gXABC" role="3NFExx">
                              <node concept="3clFbS" id="4vxQe1gXABD" role="2VODD2">
                                <node concept="3cpWs6" id="4vxQe1gXABE" role="3cqZAp">
                                  <node concept="2OqwBi" id="4vxQe1gXABF" role="3cqZAk">
                                    <node concept="2qgKlT" id="4vxQe1gXABG" role="2OqNvi">
                                      <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                    </node>
                                    <node concept="2OqwBi" id="4vxQe1gXABH" role="2Oq$k0">
                                      <node concept="30H73N" id="4vxQe1gXABI" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="4vxQe1gXABJ" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="4vxQe1gXABK" role="1B3o_S" />
                        <node concept="3clFbS" id="4vxQe1gXABL" role="3clF47">
                          <node concept="3cpWs6" id="4vxQe1gXABM" role="3cqZAp">
                            <node concept="2b32R4" id="4vxQe1gXABN" role="lGtFl">
                              <node concept="3JmXsc" id="4vxQe1gXABO" role="2P8S$">
                                <node concept="3clFbS" id="4vxQe1gXABP" role="2VODD2">
                                  <node concept="3cpWs6" id="4vxQe1gXABQ" role="3cqZAp">
                                    <node concept="2OqwBi" id="4vxQe1gXABR" role="3cqZAk">
                                      <node concept="3Tsc0h" id="4vxQe1gXABS" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                      </node>
                                      <node concept="2OqwBi" id="4vxQe1gXABT" role="2Oq$k0">
                                        <node concept="2OqwBi" id="4vxQe1gXABU" role="2Oq$k0">
                                          <node concept="30H73N" id="4vxQe1gXABV" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="4vxQe1gXABW" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:hat5I28" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="4vxQe1gXABX" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="10Nm6u" id="4vxQe1gXABY" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="h9Axomn" role="lGtFl">
              <node concept="3JmXsc" id="h9Axomo" role="3Jn$fo">
                <node concept="3clFbS" id="h9Axomp" role="2VODD2">
                  <node concept="3cpWs6" id="h9Axp$8" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx_2GN" role="3cqZAk">
                      <node concept="3Tsc0h" id="h9Axr80" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:h9AtXPE" />
                      </node>
                      <node concept="30H73N" id="h9AxqiM" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="h9OSxnD" role="3cqZAp">
            <node concept="1W57fq" id="h9OSAFf" role="lGtFl">
              <node concept="3IZrLx" id="h9OSAFg" role="3IZSJc">
                <node concept="3clFbS" id="h9OSAFh" role="2VODD2">
                  <node concept="3cpWs6" id="h9OSBot" role="3cqZAp">
                    <node concept="3y3z36" id="h9OSCdh" role="3cqZAk">
                      <node concept="2OqwBi" id="hxx$Dbi" role="3uHU7B">
                        <node concept="3TrEf2" id="h9OSC1C" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpdg:h9ORn56" />
                        </node>
                        <node concept="30H73N" id="h9OSByq" role="2Oq$k0" />
                      </node>
                      <node concept="10Nm6u" id="h9OSCsH" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="h9OSxnE" role="9aQI4">
              <node concept="29HgVG" id="h9OSyk3" role="lGtFl">
                <node concept="3NFfHV" id="h9OSyk4" role="3NFExx">
                  <node concept="3clFbS" id="h9OSyk5" role="2VODD2">
                    <node concept="3cpWs6" id="h9OSzf_" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$UQj" role="3cqZAk">
                        <node concept="3TrEf2" id="h9OS$Yf" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                        </node>
                        <node concept="2OqwBi" id="hxx_2RC" role="2Oq$k0">
                          <node concept="30H73N" id="h9OSzqt" role="2Oq$k0" />
                          <node concept="3TrEf2" id="h9OS$7p" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:h9ORn56" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="44uAAgJTZKJ" role="3cqZAp">
            <node concept="1WS0z7" id="44uAAgJU2zT" role="lGtFl">
              <node concept="3JmXsc" id="44uAAgJU2zV" role="3Jn$fo">
                <node concept="3clFbS" id="44uAAgJU2zX" role="2VODD2">
                  <node concept="3clFbF" id="44uAAgJUcyL" role="3cqZAp">
                    <node concept="2OqwBi" id="44uAAgJUcC7" role="3clFbG">
                      <node concept="3Tsc0h" id="44uAAgJUg9M" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:h8tZc0P" />
                      </node>
                      <node concept="30H73N" id="44uAAgJUcyK" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="1WfddY$XHSh" role="lGtFl">
              <ref role="v9R2y" node="44uAAgJVvfM" resolve="RegisterMenuBuilder_subst" />
            </node>
          </node>
          <node concept="3cpWs6" id="h8uhm4b" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTrAp" role="3cqZAk">
              <ref role="3cqZAo" node="h8uhckc" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="raruj" id="h8ugEqD" role="lGtFl" />
        <node concept="17Uvod" id="h8ugEqE" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="h8ugEqF" role="3zH0cK">
            <node concept="3clFbS" id="h8ugEqG" role="2VODD2">
              <node concept="3cpWs6" id="h8ugEqO" role="3cqZAp">
                <node concept="2OqwBi" id="hKujsrb" role="3cqZAk">
                  <node concept="30H73N" id="hKujsmi" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hKujtAE" role="2OqNvi">
                    <ref role="37wK5l" to="tpdr:hKuiFOW" resolve="getBuilderQueryMethodName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="44uAAgJXhzk" role="jymVt">
        <property role="od$2w" value="false" />
        <property role="TrG5h" value="preconditionQuery" />
        <property role="DiZV1" value="false" />
        <node concept="10P_77" id="44uAAgJY7me" role="3clF45" />
        <node concept="3clFbS" id="44uAAgJXhzn" role="3clF47">
          <node concept="3clFbF" id="44uAAgJY7rT" role="3cqZAp">
            <node concept="3clFbT" id="44uAAgJY7rS" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="44uAAgJXfS1" role="1B3o_S" />
        <node concept="raruj" id="44uAAgJXtpd" role="lGtFl" />
        <node concept="29HgVG" id="44uAAgJXtpf" role="lGtFl">
          <node concept="3NFfHV" id="44uAAgJXtpi" role="3NFExx">
            <node concept="3clFbS" id="44uAAgJXtpj" role="2VODD2">
              <node concept="3clFbF" id="44uAAgJXtpp" role="3cqZAp">
                <node concept="2OqwBi" id="44uAAgJXtpk" role="3clFbG">
                  <node concept="3TrEf2" id="44uAAgJXtpn" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:gNbvWY3" />
                  </node>
                  <node concept="30H73N" id="44uAAgJXtpo" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="44uAAgJZWdP" role="jymVt">
        <property role="od$2w" value="false" />
        <property role="TrG5h" value="removeByCondition" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="44uAAgJZWdS" role="3clF47" />
        <node concept="3Tm1VV" id="44uAAgJZUsR" role="1B3o_S" />
        <node concept="3cqZAl" id="44uAAgJZWdH" role="3clF45" />
        <node concept="raruj" id="44uAAgJZYVR" role="lGtFl" />
        <node concept="1WS0z7" id="44uAAgKAzV7" role="lGtFl">
          <node concept="3JmXsc" id="44uAAgKAzVq" role="3Jn$fo">
            <node concept="3clFbS" id="44uAAgKAzVH" role="2VODD2">
              <node concept="3clFbF" id="44uAAgKA$bo" role="3cqZAp">
                <node concept="2OqwBi" id="44uAAgKA$gI" role="3clFbG">
                  <node concept="3Tsc0h" id="44uAAgKA_zr" role="2OqNvi">
                    <ref role="3TtcxE" to="tpdg:h8tZc0P" />
                  </node>
                  <node concept="30H73N" id="44uAAgKA$bn" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1sPUBX" id="1WfddY$XHQ4" role="lGtFl">
          <ref role="v9R2y" node="44uAAgKAvyj" resolve="MenuBuilderPartMethod_subst" />
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3LmX" role="1B3o_S" />
    </node>
  </node>
  <node concept="jVnub" id="h8ujc2f">
    <property role="TrG5h" value="RegisterMenuPart_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <node concept="b5Tf3" id="44uAAgJWU4F" role="jxRDz" />
    <node concept="3aamgX" id="h8yu$mu" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8yp2gW" resolve="ConceptsSubstituteMenuPart" />
      <node concept="j$656" id="h8yvaL6" role="1lVwrX">
        <ref role="v9R2y" node="h8uWps2" resolve="RegisterMenuPart_Concepts_subst" />
      </node>
    </node>
    <node concept="3aamgX" id="htvMSQK" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:htvLhee" resolve="GenericSubstituteMenuPart" />
      <node concept="j$656" id="htvP1MO" role="1lVwrX">
        <ref role="v9R2y" node="htvMWhK" resolve="RegisterMenuPart_Generic_subst" />
      </node>
    </node>
    <node concept="3aamgX" id="h8vJJh9" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8uMFyA" resolve="ParameterizedSubstituteMenuPart" />
      <node concept="j$656" id="h8yva4E" role="1lVwrX">
        <ref role="v9R2y" node="h8yu5mo" resolve="RegisterMenuPart_Parameterized_subst" />
      </node>
    </node>
    <node concept="3aamgX" id="h8ujhPY" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8ucCh3" resolve="SimpleItemSubstitutePart" />
      <node concept="j$656" id="h8urIBS" role="1lVwrX">
        <ref role="v9R2y" node="h8ujkzE" resolve="RegisterMenuPart_Simple_subst" />
      </node>
    </node>
    <node concept="3aamgX" id="4jO$C4ZPHjf" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:6_DAuCqL68Z" resolve="FluentEntrySubstitutePart" />
      <node concept="j$656" id="4jO$C4ZPHjg" role="1lVwrX">
        <ref role="v9R2y" node="h8ujkzE" resolve="RegisterMenuPart_Simple_subst" />
      </node>
    </node>
    <node concept="3aamgX" id="h8yNfKj" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8yEb1F" resolve="WrapperSubstituteMenuPart" />
      <node concept="j$656" id="h8yNhcm" role="1lVwrX">
        <ref role="v9R2y" node="h8yLKh6" resolve="RegisterMenuPart_Wrapper_subst" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h8ujkzE">
    <property role="TrG5h" value="RegisterMenuPart_Simple_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:h8ucCh3" resolve="SimpleItemSubstitutePart" />
    <node concept="2YIFZL" id="h8upCUr" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGy7k" role="3clF45">
        <node concept="3uibUv" id="5dLITL9w8ou" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="h8upCUJ" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="h8upCUK" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htuRGLD" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$cafi" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h8upCUL" role="3clF47">
        <node concept="3cpWs8" id="h8upCUM" role="3cqZAp">
          <node concept="3cpWsn" id="h8upCUN" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGybA" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9w9a3" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolvV" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGygq" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9wa6F" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="h8upCUS" role="3cqZAp">
          <node concept="3clFbS" id="h8upCUT" role="9aQI4">
            <node concept="3cpWs8" id="hKu0L3g" role="3cqZAp">
              <node concept="3cpWsn" id="hKu0L3h" role="3cpWs9">
                <property role="TrG5h" value="outputConcept" />
                <node concept="3THzug" id="hKu0L3i" role="1tU5fm" />
                <node concept="3TUQnm" id="hKu0M8a" role="33vP2m">
                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <node concept="1ZhdrF" id="hKu0OMQ" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                    <node concept="3$xsQk" id="hKu0OMR" role="3$ytzL">
                      <node concept="3clFbS" id="hKu0OMS" role="2VODD2">
                        <node concept="3cpWs8" id="hKu0P5G" role="3cqZAp">
                          <node concept="3cpWsn" id="hKu0P5H" role="3cpWs9">
                            <property role="TrG5h" value="outputConcept" />
                            <node concept="3Tqbb2" id="hKu0P5I" role="1tU5fm">
                              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="hKu0P5J" role="33vP2m">
                              <node concept="1PxgMI" id="hKu0P5K" role="2Oq$k0">
                                <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                <node concept="2OqwBi" id="hKu0P5L" role="1PxMeX">
                                  <node concept="30H73N" id="hKu0P5M" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="hKu0P5N" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="hKu0P5O" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="hKu0P5P" role="3cqZAp">
                          <node concept="3clFbS" id="hKu0P5Q" role="3clFbx">
                            <node concept="3clFbF" id="hKu0P5R" role="3cqZAp">
                              <node concept="2OqwBi" id="hKu0P5S" role="3clFbG">
                                <node concept="1iwH7S" id="hKu0P5T" role="2Oq$k0" />
                                <node concept="2kEO4f" id="hKu0P5U" role="2OqNvi">
                                  <node concept="2OqwBi" id="hKu0P5V" role="2k6f33">
                                    <node concept="30H73N" id="hKu0P5W" role="2Oq$k0" />
                                    <node concept="1mfA1w" id="hKu0P5X" role="2OqNvi" />
                                  </node>
                                  <node concept="Xl_RD" id="hKu0P5Y" role="2k5Stb">
                                    <property role="Xl_RC" value="output concept is not specified" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="hKu0P61" role="3clFbw">
                            <node concept="10Nm6u" id="hKu0P62" role="3uHU7w" />
                            <node concept="37vLTw" id="3GM_nagTszq" role="3uHU7B">
                              <ref role="3cqZAo" node="hKu0P5H" resolve="outputConcept" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hKu0P64" role="3cqZAp">
                          <node concept="37vLTw" id="3GM_nagTvRK" role="3cqZAk">
                            <ref role="3cqZAo" node="hKu0P5H" resolve="outputConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hwpZl1Y" role="3cqZAp">
              <node concept="3cpWsn" id="hwpZl1Z" role="3cpWs9">
                <property role="TrG5h" value="childConcept" />
                <node concept="3THzug" id="hwpZl20" role="1tU5fm" />
                <node concept="10QFUN" id="hwpZl21" role="33vP2m">
                  <node concept="3THzug" id="hwpZl22" role="10QFUM" />
                  <node concept="2OqwBi" id="h_XQIUM" role="10QFUP">
                    <node concept="37vLTw" id="2BHiRxgm8y$" role="2Oq$k0">
                      <ref role="3cqZAo" node="htuRGLD" resolve="_context" />
                    </node>
                    <node concept="liA8E" id="h_XQIUN" role="2OqNvi">
                      <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getChildConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hwpZxBx" role="3cqZAp">
              <node concept="3clFbS" id="hwpZxBy" role="3clFbx">
                <node concept="3clFbF" id="hwpZGnt" role="3cqZAp">
                  <node concept="2OqwBi" id="h_XQIP4" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTvOH" role="2Oq$k0">
                      <ref role="3cqZAo" node="h8upCUN" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="i1GGOAu" role="2OqNvi">
                      <node concept="2ShNRf" id="i1GGOAv" role="25WWJ7">
                        <node concept="YeOm9" id="i1GGOAw" role="2ShVmc">
                          <node concept="1Y3b0j" id="i1GGOAx" role="YeSDq">
                            <ref role="1Y3XeK" to="zce0:~DefaultSimpleSubstituteAction" resolve="DefaultSimpleSubstituteAction" />
                            <ref role="37wK5l" to="zce0:~DefaultSimpleSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter)" resolve="DefaultSimpleSubstituteAction" />
                            <node concept="3clFb_" id="i1GGOAy" role="jymVt">
                              <property role="TrG5h" value="createChildNode" />
                              <node concept="3Tqbb2" id="i2srJwc" role="3clF45" />
                              <node concept="3Tm1VV" id="i1GGOAO" role="1B3o_S" />
                              <node concept="3clFbS" id="i1GGOAE" role="3clF47">
                                <node concept="29HgVG" id="i1GGOAF" role="lGtFl">
                                  <node concept="3NFfHV" id="i1GGOAG" role="3NFExx">
                                    <node concept="3clFbS" id="i1GGOAH" role="2VODD2">
                                      <node concept="3cpWs6" id="i1GGOAI" role="3cqZAp">
                                        <node concept="2OqwBi" id="i1GGOAJ" role="3cqZAk">
                                          <node concept="2OqwBi" id="i1GGOAK" role="2Oq$k0">
                                            <node concept="30H73N" id="i1GGOAL" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="i1GGOAM" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:h8ucMIM" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="i1GGOAN" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="i1GGOAz" role="3clF46">
                                <property role="TrG5h" value="parameterObject" />
                                <node concept="3uibUv" id="i1GGOA$" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="i1GGOA_" role="3clF46">
                                <property role="TrG5h" value="model" />
                                <node concept="H_c77" id="i2s1ZEN" role="1tU5fm" />
                              </node>
                              <node concept="37vLTG" id="i1GGOAB" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOAC" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="31QPSO0Y8Sr" role="jymVt">
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="selectChildNode" />
                              <property role="DiZV1" value="false" />
                              <property role="IEkAT" value="false" />
                              <node concept="1W57fq" id="31QPSO0YbTZ" role="lGtFl">
                                <node concept="3IZrLx" id="31QPSO0YbU1" role="3IZSJc">
                                  <node concept="3clFbS" id="31QPSO0YbU3" role="2VODD2">
                                    <node concept="3clFbF" id="31QPSO0YfXs" role="3cqZAp">
                                      <node concept="3y3z36" id="31QPSO0YfXt" role="3clFbG">
                                        <node concept="10Nm6u" id="31QPSO0YfXu" role="3uHU7w" />
                                        <node concept="2OqwBi" id="31QPSO0YfXv" role="3uHU7B">
                                          <node concept="3TrEf2" id="31QPSO0YfXw" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:ovg3x$dd7u" />
                                          </node>
                                          <node concept="30H73N" id="31QPSO0YfXx" role="2Oq$k0" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tmbuc" id="31QPSO0Y8Ss" role="1B3o_S" />
                              <node concept="3uibUv" id="31QPSO0Y8Su" role="3clF45">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="37vLTG" id="31QPSO0Y8Sv" role="3clF46">
                                <property role="TrG5h" value="createdNode" />
                                <node concept="3uibUv" id="31QPSO0Y8Sw" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="31QPSO0Y8Sz" role="3clF46">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="31QPSO0Y8S$" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                              <node concept="37vLTG" id="31QPSO0Y8S_" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="31QPSO0YwKQ" role="1tU5fm" />
                              </node>
                              <node concept="37vLTG" id="3bBR8pI_J8S" role="3clF46">
                                <property role="TrG5h" value="editorContext" />
                                <node concept="3uibUv" id="3bBR8pIA8e0" role="1tU5fm">
                                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="31QPSO0Y8SD" role="3clF47">
                                <node concept="3cpWs6" id="31QPSO0YhB6" role="3cqZAp">
                                  <node concept="2b32R4" id="31QPSO0YliH" role="lGtFl">
                                    <node concept="3JmXsc" id="31QPSO0YliJ" role="2P8S$">
                                      <node concept="3clFbS" id="31QPSO0YliL" role="2VODD2">
                                        <node concept="3clFbF" id="31QPSO0Ypjl" role="3cqZAp">
                                          <node concept="2OqwBi" id="31QPSO0Ypjm" role="3clFbG">
                                            <node concept="3Tsc0h" id="31QPSO0Ypjn" role="2OqNvi">
                                              <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                            </node>
                                            <node concept="2OqwBi" id="31QPSO0Ypjo" role="2Oq$k0">
                                              <node concept="3TrEf2" id="31QPSO0Ypjp" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                              </node>
                                              <node concept="2OqwBi" id="31QPSO0Ypjq" role="2Oq$k0">
                                                <node concept="3TrEf2" id="3bBR8pIC1aA" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:ovg3x$dd7u" />
                                                </node>
                                                <node concept="30H73N" id="31QPSO0Ypjs" role="2Oq$k0" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="31QPSO0Yj_7" role="3cqZAk">
                                    <ref role="3cqZAo" node="31QPSO0Y8Sv" resolve="createdNode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="31QPSO0Y8SE" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="i1GGOAP" role="jymVt">
                              <property role="TrG5h" value="hasSubstitute" />
                              <node concept="3Tm1VV" id="i1GGOB3" role="1B3o_S" />
                              <node concept="1W57fq" id="i1GGOAU" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOAV" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOAW" role="2VODD2">
                                    <node concept="3cpWs6" id="i1GGOAX" role="3cqZAp">
                                      <node concept="3y3z36" id="i1GGOAY" role="3cqZAk">
                                        <node concept="2OqwBi" id="i1GGOB0" role="3uHU7B">
                                          <node concept="3TrEf2" id="i1GGOB2" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8ucKen" />
                                          </node>
                                          <node concept="30H73N" id="i1GGOB1" role="2Oq$k0" />
                                        </node>
                                        <node concept="10Nm6u" id="i1GGOAZ" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="10P_77" id="i1GGOAQ" role="3clF45" />
                              <node concept="3clFbS" id="i1GGOAR" role="3clF47">
                                <node concept="3cpWs6" id="i1GGOAS" role="3cqZAp">
                                  <node concept="3clFbT" id="i1GGOAT" role="3cqZAk">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="i1GGOB4" role="jymVt">
                              <property role="TrG5h" value="canSubstitute_internal" />
                              <node concept="3Tm1VV" id="i1GGOBt" role="1B3o_S" />
                              <node concept="37vLTG" id="i1GGOBg" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOBh" role="1tU5fm" />
                              </node>
                              <node concept="37vLTG" id="i1GGOBi" role="3clF46">
                                <property role="TrG5h" value="strictly" />
                                <node concept="10P_77" id="i1GGOBj" role="1tU5fm" />
                              </node>
                              <node concept="1W57fq" id="i1GGOBk" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOBl" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOBm" role="2VODD2">
                                    <node concept="3cpWs6" id="i1GGOBn" role="3cqZAp">
                                      <node concept="3y3z36" id="i1GGOBo" role="3cqZAk">
                                        <node concept="2OqwBi" id="i1GGOBq" role="3uHU7B">
                                          <node concept="30H73N" id="i1GGOBr" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="i1GGOBs" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8ucKen" />
                                          </node>
                                        </node>
                                        <node concept="10Nm6u" id="i1GGOBp" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="i1GGOB6" role="3clF47">
                                <node concept="29HgVG" id="i1GGOB7" role="lGtFl">
                                  <node concept="3NFfHV" id="i1GGOB8" role="3NFExx">
                                    <node concept="3clFbS" id="i1GGOB9" role="2VODD2">
                                      <node concept="3cpWs6" id="i1GGOBa" role="3cqZAp">
                                        <node concept="2OqwBi" id="i1GGOBb" role="3cqZAk">
                                          <node concept="3TrEf2" id="i1GGOBf" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                          <node concept="2OqwBi" id="i1GGOBc" role="2Oq$k0">
                                            <node concept="3TrEf2" id="i1GGOBe" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:h8ucKen" />
                                            </node>
                                            <node concept="30H73N" id="i1GGOBd" role="2Oq$k0" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="10P_77" id="i1GGOB5" role="3clF45" />
                            </node>
                            <node concept="3clFb_" id="i1GGOBu" role="jymVt">
                              <property role="TrG5h" value="getDescriptionText" />
                              <node concept="3Tm1VV" id="i1GGOBP" role="1B3o_S" />
                              <node concept="1W57fq" id="i1GGOBG" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOBH" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOBI" role="2VODD2">
                                    <node concept="3cpWs6" id="i1GGOBJ" role="3cqZAp">
                                      <node concept="2OqwBi" id="3JzLIOkzFCD" role="3cqZAk">
                                        <node concept="1mIQ4w" id="3JzLIOkzHnI" role="2OqNvi">
                                          <node concept="chp4Y" id="3JzLIOkzJDd" role="cj9EA">
                                            <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="i1GGOBM" role="2Oq$k0">
                                          <node concept="30H73N" id="i1GGOBN" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="i1GGOBO" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8uGvvm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="17QB3L" id="i1GGOBx" role="3clF45" />
                              <node concept="3clFbS" id="i1GGOBy" role="3clF47">
                                <node concept="29HgVG" id="i1GGOBz" role="lGtFl">
                                  <node concept="3NFfHV" id="i1GGOB$" role="3NFExx">
                                    <node concept="3clFbS" id="i1GGOB_" role="2VODD2">
                                      <node concept="3cpWs6" id="i1GGOBA" role="3cqZAp">
                                        <node concept="2OqwBi" id="i1GGOBB" role="3cqZAk">
                                          <node concept="3TrEf2" id="3JzLIOk$7jc" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                          <node concept="1PxgMI" id="3JzLIOk$3Pr" role="2Oq$k0">
                                            <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                            <node concept="2OqwBi" id="i1GGOBC" role="1PxMeX">
                                              <node concept="30H73N" id="i1GGOBD" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="i1GGOBE" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:h8uGvvm" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="i1GGOBv" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOBw" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="i1GGOBQ" role="jymVt">
                              <property role="TrG5h" value="getMatchingText" />
                              <node concept="17QB3L" id="i1GGOBT" role="3clF45" />
                              <node concept="3clFbS" id="i1GGOBU" role="3clF47">
                                <node concept="29HgVG" id="i1GGOBV" role="lGtFl">
                                  <node concept="3NFfHV" id="i1GGOBW" role="3NFExx">
                                    <node concept="3clFbS" id="i1GGOBX" role="2VODD2">
                                      <node concept="3cpWs6" id="i1GGOBY" role="3cqZAp">
                                        <node concept="2OqwBi" id="i1GGOBZ" role="3cqZAk">
                                          <node concept="3TrEf2" id="3JzLIOk$m$f" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                          <node concept="1PxgMI" id="3JzLIOk$g2Z" role="2Oq$k0">
                                            <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                            <node concept="2OqwBi" id="i1GGOC0" role="1PxMeX">
                                              <node concept="30H73N" id="i1GGOC1" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="i1GGOC2" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:h8uGu7V" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="i1GGOBR" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOBS" role="1tU5fm" />
                              </node>
                              <node concept="1W57fq" id="i1GGOC4" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOC5" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOC6" role="2VODD2">
                                    <node concept="3cpWs6" id="i1GGOC7" role="3cqZAp">
                                      <node concept="2OqwBi" id="3JzLIOk$cpz" role="3cqZAk">
                                        <node concept="1mIQ4w" id="3JzLIOk$dzh" role="2OqNvi">
                                          <node concept="chp4Y" id="3JzLIOk$dS4" role="cj9EA">
                                            <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="i1GGOCa" role="2Oq$k0">
                                          <node concept="30H73N" id="i1GGOCb" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="i1GGOCc" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8uGu7V" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="i1GGOCd" role="1B3o_S" />
                            </node>
                            <node concept="3clFb_" id="i1GGOCe" role="jymVt">
                              <property role="TrG5h" value="getVisibleMatchingText" />
                              <node concept="37vLTG" id="i1GGOCf" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOCg" role="1tU5fm" />
                              </node>
                              <node concept="17QB3L" id="i1GGOCh" role="3clF45" />
                              <node concept="3clFbS" id="i1GGOCi" role="3clF47">
                                <node concept="3cpWs6" id="5zjZZw1exp0" role="3cqZAp">
                                  <node concept="1rXfSq" id="5zjZZw1exZp" role="3cqZAk">
                                    <ref role="37wK5l" node="i1GGOBQ" resolve="getMatchingText" />
                                    <node concept="37vLTw" id="5zjZZw1eysZ" role="37wK5m">
                                      <ref role="3cqZAo" node="i1GGOCf" resolve="pattern" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1W57fq" id="i1GGOCo" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOCp" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOCq" role="2VODD2">
                                    <node concept="3cpWs6" id="3JzLIOk$KdD" role="3cqZAp">
                                      <node concept="2OqwBi" id="3JzLIOk$KdE" role="3cqZAk">
                                        <node concept="1mIQ4w" id="3JzLIOk$KdF" role="2OqNvi">
                                          <node concept="chp4Y" id="3JzLIOk$KdG" role="cj9EA">
                                            <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="3JzLIOk$KdH" role="2Oq$k0">
                                          <node concept="30H73N" id="3JzLIOk$KdI" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="3JzLIOk$KdJ" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8uGu7V" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="i1GGOCx" role="1B3o_S" />
                            </node>
                            <node concept="3clFb_" id="i1GGOCy" role="jymVt">
                              <property role="TrG5h" value="getIconNode" />
                              <node concept="3Tqbb2" id="5zjZZw1rtd8" role="3clF45" />
                              <node concept="3Tm1VV" id="i1GGOCz" role="1B3o_S" />
                              <node concept="37vLTG" id="i1GGOC_" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="i1GGOCA" role="1tU5fm" />
                              </node>
                              <node concept="1W57fq" id="i1GGOCL" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGOCM" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGOCN" role="2VODD2">
                                    <node concept="3clFbF" id="i1GGOCO" role="3cqZAp">
                                      <node concept="3y3z36" id="i1GGOCP" role="3clFbG">
                                        <node concept="2OqwBi" id="i1GGOCR" role="3uHU7B">
                                          <node concept="3TrEf2" id="5zjZZw1s39h" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:5zjZZw1n1lc" />
                                          </node>
                                          <node concept="30H73N" id="i1GGOCS" role="2Oq$k0" />
                                        </node>
                                        <node concept="10Nm6u" id="i1GGOCQ" role="3uHU7w" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="5zjZZw1rHWg" role="3clF47">
                                <node concept="3cpWs6" id="5zjZZw1rHWf" role="3cqZAp">
                                  <node concept="2b32R4" id="5zjZZw1rJ7W" role="lGtFl">
                                    <node concept="3JmXsc" id="5zjZZw1rJ7Y" role="2P8S$">
                                      <node concept="3clFbS" id="5zjZZw1rJ80" role="2VODD2">
                                        <node concept="3clFbF" id="5zjZZw1rJLb" role="3cqZAp">
                                          <node concept="2OqwBi" id="5zjZZw1rTUe" role="3clFbG">
                                            <node concept="3Tsc0h" id="5zjZZw1rX_S" role="2OqNvi">
                                              <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                            </node>
                                            <node concept="2OqwBi" id="5zjZZw1rO3z" role="2Oq$k0">
                                              <node concept="3TrEf2" id="5zjZZw1rRMM" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                              </node>
                                              <node concept="2OqwBi" id="5zjZZw1rJSn" role="2Oq$k0">
                                                <node concept="3TrEf2" id="5zjZZw1rMsG" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:5zjZZw1n1lc" />
                                                </node>
                                                <node concept="30H73N" id="5zjZZw1rJLa" role="2Oq$k0" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="5zjZZw1rI_m" role="3cqZAk" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="i1GGOCU" role="jymVt">
                              <property role="TrG5h" value="getActionType" />
                              <node concept="3Tqbb2" id="i2srIRp" role="3clF45" />
                              <node concept="1W57fq" id="i1GGOD9" role="lGtFl">
                                <node concept="3IZrLx" id="i1GGODa" role="3IZSJc">
                                  <node concept="3clFbS" id="i1GGODb" role="2VODD2">
                                    <node concept="3clFbF" id="i1GGODc" role="3cqZAp">
                                      <node concept="3y3z36" id="i1GGODd" role="3clFbG">
                                        <node concept="10Nm6u" id="i1GGODe" role="3uHU7w" />
                                        <node concept="2OqwBi" id="i1GGODf" role="3uHU7B">
                                          <node concept="3TrEf2" id="i1GGODh" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                          </node>
                                          <node concept="30H73N" id="i1GGODg" role="2Oq$k0" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="i1GGOCV" role="1B3o_S" />
                              <node concept="3clFbS" id="i1GGOCZ" role="3clF47">
                                <node concept="29HgVG" id="i1GGOD0" role="lGtFl">
                                  <node concept="3NFfHV" id="i1GGOD1" role="3NFExx">
                                    <node concept="3clFbS" id="i1GGOD2" role="2VODD2">
                                      <node concept="3clFbF" id="i1GGOD3" role="3cqZAp">
                                        <node concept="2OqwBi" id="i1GGOD4" role="3clFbG">
                                          <node concept="2OqwBi" id="i1GGOD5" role="2Oq$k0">
                                            <node concept="30H73N" id="i1GGOD6" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="i1GGOD7" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="i1GGOD8" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="i1GGOCX" role="3clF46">
                                <property role="TrG5h" value="pattern" />
                                <node concept="17QB3L" id="18nccIwC3Yi" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="3clFb_" id="4jO$C4ZNTK6" role="jymVt">
                              <property role="TrG5h" value="isFluentEntry" />
                              <node concept="10P_77" id="4jO$C4ZOgL9" role="3clF45" />
                              <node concept="1W57fq" id="4jO$C4ZNTK8" role="lGtFl">
                                <node concept="3IZrLx" id="4jO$C4ZNTK9" role="3IZSJc">
                                  <node concept="3clFbS" id="4jO$C4ZNTKa" role="2VODD2">
                                    <node concept="Jncv_" id="4jO$C4ZO7xL" role="3cqZAp">
                                      <ref role="JncvD" to="tpdg:6_DAuCqL68Z" resolve="FluentEntrySubstitutePart" />
                                      <node concept="30H73N" id="4jO$C4ZO7Ho" role="JncvB" />
                                      <node concept="JncvC" id="4jO$C4ZO7xP" role="JncvA">
                                        <property role="TrG5h" value="fluent" />
                                        <node concept="2jxLKc" id="4jO$C4ZO7xQ" role="1tU5fm" />
                                      </node>
                                      <node concept="3clFbS" id="4jO$C4ZO7xS" role="Jncv$">
                                        <node concept="3cpWs6" id="4jO$C4ZO9tn" role="3cqZAp">
                                          <node concept="3clFbT" id="4jO$C4ZO9yS" role="3cqZAk">
                                            <property role="3clFbU" value="true" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="4jO$C4ZO9YG" role="3cqZAp">
                                      <node concept="3clFbT" id="4jO$C4ZOa4l" role="3cqZAk">
                                        <property role="3clFbU" value="false" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="4jO$C4ZNTKh" role="1B3o_S" />
                              <node concept="3clFbS" id="4jO$C4ZNTKi" role="3clF47">
                                <node concept="3cpWs6" id="4jO$C4ZOeYK" role="3cqZAp">
                                  <node concept="3clFbT" id="4jO$C4ZOf4A" role="3cqZAk">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2tJIrI" id="4jO$C4ZNTu3" role="jymVt" />
                            <node concept="3Tm1VV" id="i1GGODv" role="1B3o_S" />
                            <node concept="37vLTw" id="3GM_nagTzH_" role="37wK5m">
                              <ref role="3cqZAo" node="hKu0L3h" resolve="outputConcept" />
                            </node>
                            <node concept="2OqwBi" id="i1GGODj" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxglqgd" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuRGLD" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="i1GGODl" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="i1GGODm" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxgheTX" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuRGLD" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="i1GGODo" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="i1GGODp" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxgm_u6" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuRGLD" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="i1GGODr" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildSetter():jetbrains.mps.smodel.action.IChildNodeSetter" resolve="getChildSetter" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="hwpZZrc" role="3clFbw">
                <node concept="3clFbC" id="hwpZZrd" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTvVb" role="3uHU7B">
                    <ref role="3cqZAo" node="hKu0L3h" resolve="outputConcept" />
                  </node>
                  <node concept="10Nm6u" id="hwpZZrf" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="hxx$DWw" role="3uHU7w">
                  <node concept="37vLTw" id="3GM_nagTBfe" role="2Oq$k0">
                    <ref role="3cqZAo" node="hwpZl1Z" resolve="childConcept" />
                  </node>
                  <node concept="2Za9M6" id="hwpZZri" role="2OqNvi">
                    <node concept="25Kdxt" id="h_XQMYm" role="2ZaTVi">
                      <node concept="37vLTw" id="3GM_nagTrQm" role="25KhWn">
                        <ref role="3cqZAo" node="hKu0L3h" resolve="outputConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="h8upG$C" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="h8upCV4" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTumM" role="3cqZAk">
            <ref role="3cqZAo" node="h8upCUN" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AO$LH" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8uWps2">
    <property role="TrG5h" value="RegisterMenuPart_Concepts_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:h8yp2gW" resolve="ConceptsSubstituteMenuPart" />
    <node concept="2YIFZL" id="h8uWps3" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGyaK" role="3clF45">
        <node concept="3uibUv" id="5dLITL9wvbs" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="h8uWpse" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="h8uWpsf" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htuQCmM" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$bSY0" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h8uWpsg" role="3clF47">
        <node concept="3cpWs8" id="h8uWpsh" role="3cqZAp">
          <node concept="3cpWsn" id="h8uWpsi" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGy4v" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9wvrL" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolwe" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGyes" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9wvQJ" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="h8uWpsn" role="3cqZAp">
          <node concept="3clFbS" id="h8uWpso" role="9aQI4">
            <node concept="3cpWs8" id="h8vKh_l" role="3cqZAp">
              <node concept="3cpWsn" id="h8vKh_m" role="3cpWs9">
                <property role="TrG5h" value="queryResult" />
                <node concept="2OqwBi" id="h_XQI6t" role="33vP2m">
                  <node concept="2ShNRf" id="5zjZZw0OHti" role="2Oq$k0">
                    <node concept="YeOm9" id="5zjZZw0OQPU" role="2ShVmc">
                      <node concept="1Y3b0j" id="5zjZZw0OQPX" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3uibUv" id="5zjZZw0ORsV" role="2Ghqu4">
                          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                          <node concept="3THzug" id="5zjZZw0ORsW" role="11_B2D">
                            <ref role="3qa414" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="5zjZZw0OQPY" role="1B3o_S" />
                        <node concept="3clFb_" id="5zjZZw0OQPZ" role="jymVt">
                          <property role="IEkAT" value="false" />
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="compute" />
                          <property role="DiZV1" value="false" />
                          <node concept="3uibUv" id="5zjZZw0ORHe" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3THzug" id="5zjZZw0OS8c" role="11_B2D">
                              <ref role="3qa414" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="5zjZZw0OQQ0" role="1B3o_S" />
                          <node concept="3clFbS" id="5zjZZw0OQQ3" role="3clF47">
                            <node concept="3clFbF" id="5zjZZw0OTq6" role="3cqZAp">
                              <node concept="2b32R4" id="5zjZZw0OW8R" role="lGtFl">
                                <node concept="3JmXsc" id="5zjZZw0OW8T" role="2P8S$">
                                  <node concept="3clFbS" id="5zjZZw0OW8V" role="2VODD2">
                                    <node concept="3cpWs6" id="5zjZZw0OY$I" role="3cqZAp">
                                      <node concept="2OqwBi" id="5zjZZw0P1st" role="3cqZAk">
                                        <node concept="3Tsc0h" id="5zjZZw0P59i" role="2OqNvi">
                                          <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                        </node>
                                        <node concept="2OqwBi" id="5zjZZw0OY$J" role="2Oq$k0">
                                          <node concept="2OqwBi" id="5zjZZw0OY$K" role="2Oq$k0">
                                            <node concept="30H73N" id="5zjZZw0OY$L" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="5zjZZw0OY$M" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:h8ys1ag" />
                                            </node>
                                          </node>
                                          <node concept="3TrEf2" id="5zjZZw0OY$N" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="10Nm6u" id="5zjZZw0OTq4" role="3clFbG" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="h_XQI6u" role="2OqNvi">
                    <ref role="37wK5l" node="5zjZZw0OQPZ" resolve="compute" />
                  </node>
                </node>
                <node concept="3uibUv" id="h8JCXNC" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                  <node concept="3THzug" id="5zjZZw0DIvd" role="11_B2D">
                    <ref role="3qa414" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hINUb0z" role="3cqZAp">
              <node concept="3clFbS" id="hINUb0$" role="3clFbx">
                <node concept="1DcWWT" id="h8vKxaV" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTtPU" role="1DdaDG">
                    <ref role="3cqZAo" node="h8vKh_m" resolve="queryResult" />
                  </node>
                  <node concept="3cpWsn" id="h8vKxaX" role="1Duv9x">
                    <property role="TrG5h" value="item" />
                    <node concept="3THzug" id="5zjZZw0DJPQ" role="1tU5fm">
                      <ref role="3qa414" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="h8vKxaZ" role="2LFqv$">
                    <node concept="3clFbF" id="h8yumgs" role="3cqZAp">
                      <node concept="2OqwBi" id="h_XQHWq" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTBze" role="2Oq$k0">
                          <ref role="3cqZAo" node="h8uWpsi" resolve="result" />
                        </node>
                        <node concept="X8dFx" id="i1GGONi" role="2OqNvi">
                          <node concept="2YIFZM" id="5dLITL9wBjy" role="25WWJ7">
                            <ref role="1Pybhc" to="zce0:~ChildSubstituteActionsHelper" resolve="ChildSubstituteActionsHelper" />
                            <ref role="37wK5l" to="zce0:~ChildSubstituteActionsHelper.createDefaultSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter):java.util.List" resolve="createDefaultSubstituteActions" />
                            <node concept="37vLTw" id="3GM_nagTw$s" role="37wK5m">
                              <ref role="3cqZAo" node="h8vKxaX" resolve="item" />
                            </node>
                            <node concept="2OqwBi" id="5dLITL9wBjA" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxglMI1" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuQCmM" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="5dLITL9wBjC" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5dLITL9wBjD" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxghfuY" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuQCmM" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="5dLITL9wBjF" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5dLITL9wBjG" role="37wK5m">
                              <node concept="37vLTw" id="2BHiRxgmNHA" role="2Oq$k0">
                                <ref role="3cqZAo" node="htuQCmM" resolve="_context" />
                              </node>
                              <node concept="liA8E" id="5dLITL9wBjI" role="2OqNvi">
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildSetter():jetbrains.mps.smodel.action.IChildNodeSetter" resolve="getChildSetter" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="hINUcTH" role="3clFbw">
                <node concept="10Nm6u" id="hINUcTI" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTBt9" role="3uHU7B">
                  <ref role="3cqZAo" node="h8vKh_m" resolve="queryResult" />
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="h8uWpur" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="h8uWput" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTyfQ" role="3cqZAk">
            <ref role="3cqZAo" node="h8uWpsi" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AO$Lj" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8yu5mo">
    <property role="TrG5h" value="RegisterMenuPart_Parameterized_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:h8uMFyA" resolve="ParameterizedSubstituteMenuPart" />
    <node concept="2YIFZL" id="h8yu9Qs" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGy4Y" role="3clF45">
        <node concept="3uibUv" id="5dLITL9wpR$" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="h8yu9QB" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="h8yu9QC" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htuRhn8" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$c4wk" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h8yu9QD" role="3clF47">
        <node concept="3cpWs8" id="h8yu9QE" role="3cqZAp">
          <node concept="3cpWsn" id="h8yu9QF" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGyde" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9wqT8" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolzx" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGygE" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9wsbZ" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="h8yu9QK" role="3cqZAp">
          <node concept="3clFbS" id="h8yu9QL" role="9aQI4">
            <node concept="3cpWs8" id="hKu08yi" role="3cqZAp">
              <node concept="3cpWsn" id="hKu08yj" role="3cpWs9">
                <property role="TrG5h" value="outputConcept" />
                <node concept="3THzug" id="hKu08yk" role="1tU5fm" />
                <node concept="3TUQnm" id="hKu0zU6" role="33vP2m">
                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <node concept="1ZhdrF" id="hKu0$Qb" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                    <node concept="3$xsQk" id="hKu0$Qc" role="3$ytzL">
                      <node concept="3clFbS" id="hKu0$Qd" role="2VODD2">
                        <node concept="3cpWs8" id="hKu0Akt" role="3cqZAp">
                          <node concept="3cpWsn" id="hKu0Aku" role="3cpWs9">
                            <property role="TrG5h" value="concept" />
                            <node concept="3Tqbb2" id="hKu0Akv" role="1tU5fm">
                              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="hKu0Akw" role="33vP2m">
                              <node concept="1PxgMI" id="hKu0Akx" role="2Oq$k0">
                                <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                <node concept="2OqwBi" id="hKu0Aky" role="1PxMeX">
                                  <node concept="30H73N" id="hKu0Akz" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="hKu0Ak$" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="hKu0Ak_" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="hKu0AkA" role="3cqZAp">
                          <node concept="3clFbS" id="hKu0AkB" role="3clFbx">
                            <node concept="3clFbF" id="hKu0AkC" role="3cqZAp">
                              <node concept="2OqwBi" id="hKu0AkD" role="3clFbG">
                                <node concept="1iwH7S" id="hKu0AkE" role="2Oq$k0" />
                                <node concept="2k5nB$" id="hKu0AkF" role="2OqNvi">
                                  <node concept="30H73N" id="hKu0AkG" role="2k6f33" />
                                  <node concept="Xl_RD" id="hKu0AkH" role="2k5Stb">
                                    <property role="Xl_RC" value="output concept is not specified" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="hKu0AkK" role="3clFbw">
                            <node concept="37vLTw" id="3GM_nagTwZx" role="2Oq$k0">
                              <ref role="3cqZAo" node="hKu0Aku" resolve="concept" />
                            </node>
                            <node concept="3w_OXm" id="hKu0AkM" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3cpWs6" id="hKu0BRf" role="3cqZAp">
                          <node concept="37vLTw" id="3GM_nagT_HO" role="3cqZAk">
                            <ref role="3cqZAo" node="hKu0Aku" resolve="concept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hvmPgUI" role="3cqZAp">
              <node concept="3cpWsn" id="hvmPgUJ" role="3cpWs9">
                <property role="TrG5h" value="childConcept" />
                <node concept="3THzug" id="hvmPleG" role="1tU5fm" />
                <node concept="10QFUN" id="hvmSM9Q" role="33vP2m">
                  <node concept="3THzug" id="hvmSM9R" role="10QFUM" />
                  <node concept="2OqwBi" id="h_XQIAX" role="10QFUP">
                    <node concept="37vLTw" id="2BHiRxgm6GH" role="2Oq$k0">
                      <ref role="3cqZAo" node="htuRhn8" resolve="_context" />
                    </node>
                    <node concept="liA8E" id="h_XQIAY" role="2OqNvi">
                      <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getChildConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="hvmPp54" role="3cqZAp">
              <node concept="3clFbS" id="hvmPp55" role="3clFbx">
                <node concept="3cpWs8" id="hvmRP78" role="3cqZAp">
                  <node concept="3cpWsn" id="hvmRP79" role="3cpWs9">
                    <property role="TrG5h" value="queryResult" />
                    <node concept="2OqwBi" id="5zjZZw0MKZV" role="33vP2m">
                      <node concept="liA8E" id="5zjZZw0N1GZ" role="2OqNvi">
                        <ref role="37wK5l" node="5zjZZw0Lwtj" resolve="compute" />
                      </node>
                      <node concept="2ShNRf" id="5zjZZw0LtG7" role="2Oq$k0">
                        <node concept="YeOm9" id="5zjZZw0Lwte" role="2ShVmc">
                          <node concept="1Y3b0j" id="5zjZZw0Lwth" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3uibUv" id="5zjZZw0LBpE" role="2Ghqu4">
                              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                              <node concept="3uibUv" id="5zjZZw0LI3A" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                <node concept="29HgVG" id="5zjZZw0LSFe" role="lGtFl">
                                  <node concept="3NFfHV" id="5zjZZw0LSFg" role="3NFExx">
                                    <node concept="3clFbS" id="5zjZZw0LSFi" role="2VODD2">
                                      <node concept="3cpWs6" id="5zjZZw0M11m" role="3cqZAp">
                                        <node concept="2OqwBi" id="5zjZZw0M6WU" role="3cqZAk">
                                          <node concept="2qgKlT" id="5zjZZw0M6WV" role="2OqNvi">
                                            <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                          </node>
                                          <node concept="2OqwBi" id="5zjZZw0M6WW" role="2Oq$k0">
                                            <node concept="30H73N" id="5zjZZw0M6WX" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="5zjZZw0M6WY" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="5zjZZw0Lwti" role="1B3o_S" />
                            <node concept="3clFb_" id="5zjZZw0Lwtj" role="jymVt">
                              <property role="IEkAT" value="false" />
                              <property role="1EzhhJ" value="false" />
                              <property role="TrG5h" value="compute" />
                              <property role="DiZV1" value="false" />
                              <node concept="3uibUv" id="5zjZZw0LKvm" role="3clF45">
                                <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                                <node concept="3uibUv" id="5zjZZw0LN5e" role="11_B2D">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                  <node concept="29HgVG" id="5zjZZw0LV6v" role="lGtFl">
                                    <node concept="3NFfHV" id="5zjZZw0LV6x" role="3NFExx">
                                      <node concept="3clFbS" id="5zjZZw0LV6z" role="2VODD2">
                                        <node concept="3cpWs6" id="5zjZZw0Mdng" role="3cqZAp">
                                          <node concept="2OqwBi" id="5zjZZw0Mdnh" role="3cqZAk">
                                            <node concept="2qgKlT" id="5zjZZw0Mdni" role="2OqNvi">
                                              <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                            </node>
                                            <node concept="2OqwBi" id="5zjZZw0Mdnj" role="2Oq$k0">
                                              <node concept="30H73N" id="5zjZZw0Mdnk" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="5zjZZw0Mdnl" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tm1VV" id="5zjZZw0Lwtk" role="1B3o_S" />
                              <node concept="3clFbS" id="5zjZZw0Lwtn" role="3clF47">
                                <node concept="3clFbF" id="5zjZZw0Mer0" role="3cqZAp">
                                  <node concept="2b32R4" id="5zjZZw0MjXT" role="lGtFl">
                                    <node concept="3JmXsc" id="5zjZZw0MjXV" role="2P8S$">
                                      <node concept="3clFbS" id="5zjZZw0MjXX" role="2VODD2">
                                        <node concept="3cpWs6" id="5zjZZw0MmZf" role="3cqZAp">
                                          <node concept="2OqwBi" id="5zjZZw0MrPs" role="3cqZAk">
                                            <node concept="3Tsc0h" id="5zjZZw0My1w" role="2OqNvi">
                                              <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                            </node>
                                            <node concept="2OqwBi" id="5zjZZw0MmZg" role="2Oq$k0">
                                              <node concept="2OqwBi" id="5zjZZw0MmZh" role="2Oq$k0">
                                                <node concept="30H73N" id="5zjZZw0MmZi" role="2Oq$k0" />
                                                <node concept="3TrEf2" id="5zjZZw0MmZj" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8uO7sp" />
                                                </node>
                                              </node>
                                              <node concept="3TrEf2" id="5zjZZw0MmZk" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="10Nm6u" id="5zjZZw0MeqZ" role="3clFbG" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="hvmRP7e" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                      <node concept="3uibUv" id="hvmRP7f" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        <node concept="29HgVG" id="hvmRP7g" role="lGtFl">
                          <node concept="3NFfHV" id="hvmRP7h" role="3NFExx">
                            <node concept="3clFbS" id="hvmRP7i" role="2VODD2">
                              <node concept="3cpWs6" id="hvmRP7j" role="3cqZAp">
                                <node concept="2OqwBi" id="5zjZZw0ISvY" role="3cqZAk">
                                  <node concept="2qgKlT" id="5zjZZw0IUSj" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                  </node>
                                  <node concept="2OqwBi" id="hxx$Whm" role="2Oq$k0">
                                    <node concept="30H73N" id="hvmRP7l" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hvmRP7m" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
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
                <node concept="3clFbJ" id="hINSk92" role="3cqZAp">
                  <node concept="3clFbS" id="hINSk93" role="3clFbx">
                    <node concept="1DcWWT" id="hvmRP7r" role="3cqZAp">
                      <node concept="37vLTw" id="3GM_nagTAxb" role="1DdaDG">
                        <ref role="3cqZAo" node="hvmRP79" resolve="queryResult" />
                      </node>
                      <node concept="3cpWsn" id="hvmRP7t" role="1Duv9x">
                        <property role="TrG5h" value="item" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="hvmRP7u" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          <node concept="29HgVG" id="hvmRP7v" role="lGtFl">
                            <node concept="3NFfHV" id="hvmRP7w" role="3NFExx">
                              <node concept="3clFbS" id="hvmRP7x" role="2VODD2">
                                <node concept="3cpWs6" id="hvmRP7y" role="3cqZAp">
                                  <node concept="2OqwBi" id="hxx$Fac" role="3cqZAk">
                                    <node concept="30H73N" id="hvmRP7$" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hvmRP7_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8uMOUI" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="hvmRP7A" role="2LFqv$">
                        <node concept="3clFbF" id="hvmRP7B" role="3cqZAp">
                          <node concept="2OqwBi" id="h_XQIQm" role="3clFbG">
                            <node concept="37vLTw" id="3GM_nagTxGt" role="2Oq$k0">
                              <ref role="3cqZAo" node="h8yu9QF" resolve="result" />
                            </node>
                            <node concept="TSZUe" id="i1GGOGf" role="2OqNvi">
                              <node concept="2ShNRf" id="i1GGOGg" role="25WWJ7">
                                <node concept="YeOm9" id="i1GGOGh" role="2ShVmc">
                                  <node concept="1Y3b0j" id="i1GGOGi" role="YeSDq">
                                    <ref role="1Y3XeK" to="zce0:~DefaultChildNodeSubstituteAction" resolve="DefaultChildNodeSubstituteAction" />
                                    <ref role="37wK5l" to="zce0:~DefaultChildNodeSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.Object,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter)" resolve="DefaultChildNodeSubstituteAction" />
                                    <node concept="3clFb_" id="i1GGOGj" role="jymVt">
                                      <property role="TrG5h" value="createChildNode" />
                                      <node concept="3Tqbb2" id="i2srHsy" role="3clF45" />
                                      <node concept="37vLTG" id="i1GGOGk" role="3clF46">
                                        <property role="TrG5h" value="parameterObject" />
                                        <node concept="3uibUv" id="i1GGOGl" role="1tU5fm">
                                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="i1GGOGm" role="3clF46">
                                        <property role="TrG5h" value="model" />
                                        <node concept="H_c77" id="i2s1ZE7" role="1tU5fm" />
                                      </node>
                                      <node concept="3clFbS" id="i1GGOGr" role="3clF47">
                                        <node concept="29HgVG" id="i1GGOGs" role="lGtFl">
                                          <node concept="3NFfHV" id="i1GGOGt" role="3NFExx">
                                            <node concept="3clFbS" id="i1GGOGu" role="2VODD2">
                                              <node concept="3cpWs6" id="i1GGOGv" role="3cqZAp">
                                                <node concept="2OqwBi" id="i1GGOGw" role="3cqZAk">
                                                  <node concept="2OqwBi" id="i1GGOGx" role="2Oq$k0">
                                                    <node concept="30H73N" id="i1GGOGy" role="2Oq$k0" />
                                                    <node concept="3TrEf2" id="i1GGOGz" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:h8uTuf$" />
                                                    </node>
                                                  </node>
                                                  <node concept="3TrEf2" id="i1GGOG$" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3Tm1VV" id="i1GGOG_" role="1B3o_S" />
                                      <node concept="37vLTG" id="i1GGOGo" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="i1GGOGp" role="1tU5fm" />
                                      </node>
                                    </node>
                                    <node concept="3clFb_" id="15nbvSlq1gI" role="jymVt">
                                      <property role="1EzhhJ" value="false" />
                                      <property role="TrG5h" value="selectChildNode" />
                                      <property role="DiZV1" value="false" />
                                      <property role="IEkAT" value="false" />
                                      <node concept="1W57fq" id="15nbvSlqcaG" role="lGtFl">
                                        <node concept="3IZrLx" id="15nbvSlqcaI" role="3IZSJc">
                                          <node concept="3clFbS" id="15nbvSlqcaK" role="2VODD2">
                                            <node concept="3clFbF" id="15nbvSlqgrQ" role="3cqZAp">
                                              <node concept="3y3z36" id="15nbvSlql7N" role="3clFbG">
                                                <node concept="10Nm6u" id="15nbvSlqlnd" role="3uHU7w" />
                                                <node concept="2OqwBi" id="15nbvSlqgz2" role="3uHU7B">
                                                  <node concept="3TrEf2" id="15nbvSlqjCi" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:5pQ4spxjJXH" />
                                                  </node>
                                                  <node concept="30H73N" id="15nbvSlqgrP" role="2Oq$k0" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3Tmbuc" id="15nbvSlq1gJ" role="1B3o_S" />
                                      <node concept="3uibUv" id="15nbvSlq1gL" role="3clF45">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTG" id="15nbvSlq1gM" role="3clF46">
                                        <property role="TrG5h" value="createdNode" />
                                        <node concept="3uibUv" id="15nbvSlq1gN" role="1tU5fm">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="15nbvSlq1gQ" role="3clF46">
                                        <property role="TrG5h" value="model" />
                                        <node concept="3uibUv" id="15nbvSlq1gR" role="1tU5fm">
                                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="15nbvSlq1gS" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="15nbvSlqTYf" role="1tU5fm" />
                                      </node>
                                      <node concept="37vLTG" id="15nbvSlq1gU" role="3clF46">
                                        <property role="TrG5h" value="editorContext" />
                                        <node concept="3uibUv" id="15nbvSlq1gV" role="1tU5fm">
                                          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="15nbvSlq1gX" role="3clF47">
                                        <node concept="3cpWs6" id="15nbvSlqZRE" role="3cqZAp">
                                          <node concept="2b32R4" id="15nbvSlr5CI" role="lGtFl">
                                            <node concept="3JmXsc" id="15nbvSlr5CK" role="2P8S$">
                                              <node concept="3clFbS" id="15nbvSlr5CM" role="2VODD2">
                                                <node concept="3clFbF" id="15nbvSlr7rL" role="3cqZAp">
                                                  <node concept="2OqwBi" id="15nbvSlriiq" role="3clFbG">
                                                    <node concept="3Tsc0h" id="15nbvSlrmgk" role="2OqNvi">
                                                      <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                                    </node>
                                                    <node concept="2OqwBi" id="15nbvSlrbv8" role="2Oq$k0">
                                                      <node concept="3TrEf2" id="15nbvSlrgaH" role="2OqNvi">
                                                        <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                      </node>
                                                      <node concept="2OqwBi" id="15nbvSlr7yX" role="2Oq$k0">
                                                        <node concept="3TrEf2" id="15nbvSlra0J" role="2OqNvi">
                                                          <ref role="3Tt5mk" to="tpdg:5pQ4spxjJXH" />
                                                        </node>
                                                        <node concept="30H73N" id="15nbvSlr7rK" role="2Oq$k0" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="15nbvSlr2T8" role="3cqZAk">
                                            <ref role="3cqZAo" node="15nbvSlq1gM" resolve="createdNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2AHcQZ" id="15nbvSlq3qw" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="3clFb_" id="i1GGOGA" role="jymVt">
                                      <property role="TrG5h" value="getMatchingText" />
                                      <node concept="37vLTG" id="i1GGOGM" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="i1GGOGN" role="1tU5fm" />
                                      </node>
                                      <node concept="1W57fq" id="i1GGOGO" role="lGtFl">
                                        <node concept="3IZrLx" id="i1GGOGP" role="3IZSJc">
                                          <node concept="3clFbS" id="i1GGOGQ" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGOGR" role="3cqZAp">
                                              <node concept="3y3z36" id="i1GGOGS" role="3cqZAk">
                                                <node concept="10Nm6u" id="i1GGOGT" role="3uHU7w" />
                                                <node concept="2OqwBi" id="i1GGOGU" role="3uHU7B">
                                                  <node concept="30H73N" id="i1GGOGV" role="2Oq$k0" />
                                                  <node concept="3TrEf2" id="i1GGOGW" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:h8uSyr7" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3Tm1VV" id="i1GGOGX" role="1B3o_S" />
                                      <node concept="17QB3L" id="i1GGOGB" role="3clF45" />
                                      <node concept="3clFbS" id="i1GGOGC" role="3clF47">
                                        <node concept="29HgVG" id="i1GGOGD" role="lGtFl">
                                          <node concept="3NFfHV" id="i1GGOGE" role="3NFExx">
                                            <node concept="3clFbS" id="i1GGOGF" role="2VODD2">
                                              <node concept="3cpWs6" id="i1GGOGG" role="3cqZAp">
                                                <node concept="2OqwBi" id="i1GGOGH" role="3cqZAk">
                                                  <node concept="3TrEf2" id="i1GGOGL" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                  </node>
                                                  <node concept="2OqwBi" id="i1GGOGI" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="i1GGOGK" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:h8uSyr7" />
                                                    </node>
                                                    <node concept="30H73N" id="i1GGOGJ" role="2Oq$k0" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFb_" id="i1GGOGY" role="jymVt">
                                      <property role="TrG5h" value="getVisibleMatchingText" />
                                      <node concept="3Tm1VV" id="i1GGOHh" role="1B3o_S" />
                                      <node concept="37vLTG" id="i1GGOH6" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="i1GGOH7" role="1tU5fm" />
                                      </node>
                                      <node concept="3clFbS" id="i1GGOH0" role="3clF47">
                                        <node concept="3cpWs6" id="i1GGOH1" role="3cqZAp">
                                          <node concept="1rXfSq" id="5zjZZw0VoaU" role="3cqZAk">
                                            <ref role="37wK5l" node="i1GGOGA" resolve="getMatchingText" />
                                            <node concept="37vLTw" id="5zjZZw0Vqvt" role="37wK5m">
                                              <ref role="3cqZAo" node="i1GGOH6" resolve="pattern" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1W57fq" id="i1GGOH8" role="lGtFl">
                                        <node concept="3IZrLx" id="i1GGOH9" role="3IZSJc">
                                          <node concept="3clFbS" id="i1GGOHa" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGOHb" role="3cqZAp">
                                              <node concept="3y3z36" id="i1GGOHc" role="3cqZAk">
                                                <node concept="2OqwBi" id="i1GGOHe" role="3uHU7B">
                                                  <node concept="3TrEf2" id="i1GGOHg" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:h8uSyr7" />
                                                  </node>
                                                  <node concept="30H73N" id="i1GGOHf" role="2Oq$k0" />
                                                </node>
                                                <node concept="10Nm6u" id="i1GGOHd" role="3uHU7w" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="17QB3L" id="i1GGOGZ" role="3clF45" />
                                    </node>
                                    <node concept="3clFb_" id="i1GGOHi" role="jymVt">
                                      <property role="TrG5h" value="getDescriptionText" />
                                      <node concept="3clFbS" id="i1GGOHk" role="3clF47">
                                        <node concept="29HgVG" id="i1GGOHl" role="lGtFl">
                                          <node concept="3NFfHV" id="i1GGOHm" role="3NFExx">
                                            <node concept="3clFbS" id="i1GGOHn" role="2VODD2">
                                              <node concept="3cpWs6" id="i1GGOHo" role="3cqZAp">
                                                <node concept="2OqwBi" id="i1GGOHp" role="3cqZAk">
                                                  <node concept="3TrEf2" id="i1GGOHt" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                  </node>
                                                  <node concept="2OqwBi" id="i1GGOHq" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="i1GGOHs" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:h8uS$R8" />
                                                    </node>
                                                    <node concept="30H73N" id="i1GGOHr" role="2Oq$k0" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="17QB3L" id="i1GGOHj" role="3clF45" />
                                      <node concept="37vLTG" id="i1GGOHu" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="i1GGOHv" role="1tU5fm" />
                                      </node>
                                      <node concept="1W57fq" id="i1GGOHw" role="lGtFl">
                                        <node concept="3IZrLx" id="i1GGOHx" role="3IZSJc">
                                          <node concept="3clFbS" id="i1GGOHy" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGOHz" role="3cqZAp">
                                              <node concept="3y3z36" id="i1GGOH$" role="3cqZAk">
                                                <node concept="10Nm6u" id="i1GGOH_" role="3uHU7w" />
                                                <node concept="2OqwBi" id="i1GGOHA" role="3uHU7B">
                                                  <node concept="30H73N" id="i1GGOHB" role="2Oq$k0" />
                                                  <node concept="3TrEf2" id="i1GGOHC" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:h8uS$R8" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3Tm1VV" id="i1GGOHD" role="1B3o_S" />
                                    </node>
                                    <node concept="3clFb_" id="i1GGOHE" role="jymVt">
                                      <property role="TrG5h" value="getIconNode" />
                                      <node concept="3Tqbb2" id="5zjZZw1a$_7" role="3clF45" />
                                      <node concept="1W57fq" id="i1GGOHU" role="lGtFl">
                                        <node concept="3IZrLx" id="i1GGOHV" role="3IZSJc">
                                          <node concept="3clFbS" id="i1GGOHW" role="2VODD2">
                                            <node concept="3clFbF" id="i1GGOHX" role="3cqZAp">
                                              <node concept="3y3z36" id="i1GGOHY" role="3clFbG">
                                                <node concept="10Nm6u" id="i1GGOHZ" role="3uHU7w" />
                                                <node concept="2OqwBi" id="i1GGOI0" role="3uHU7B">
                                                  <node concept="3TrEf2" id="5zjZZw1azlC" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:5zjZZw0WnQz" />
                                                  </node>
                                                  <node concept="30H73N" id="i1GGOI1" role="2Oq$k0" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="i1GGOHH" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="i1GGOHI" role="1tU5fm" />
                                      </node>
                                      <node concept="3Tm1VV" id="i1GGOHF" role="1B3o_S" />
                                      <node concept="3clFbS" id="5zjZZw1bbCH" role="3clF47">
                                        <node concept="3cpWs6" id="5zjZZw1bNg_" role="3cqZAp">
                                          <node concept="2b32R4" id="5zjZZw1bV2X" role="lGtFl">
                                            <node concept="3JmXsc" id="5zjZZw1bV2Z" role="2P8S$">
                                              <node concept="3clFbS" id="5zjZZw1bV31" role="2VODD2">
                                                <node concept="3clFbF" id="5zjZZw1bn7S" role="3cqZAp">
                                                  <node concept="2OqwBi" id="5zjZZw1bA6c" role="3clFbG">
                                                    <node concept="3Tsc0h" id="5zjZZw1bE5y" role="2OqNvi">
                                                      <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                                    </node>
                                                    <node concept="2OqwBi" id="5zjZZw1btZ3" role="2Oq$k0">
                                                      <node concept="3TrEf2" id="5zjZZw1bxV0" role="2OqNvi">
                                                        <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                      </node>
                                                      <node concept="2OqwBi" id="5zjZZw1bnf4" role="2Oq$k0">
                                                        <node concept="3TrEf2" id="5zjZZw1bqxx" role="2OqNvi">
                                                          <ref role="3Tt5mk" to="tpdg:5zjZZw0WnQz" />
                                                        </node>
                                                        <node concept="30H73N" id="5zjZZw1bn7R" role="2Oq$k0" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="10Nm6u" id="5zjZZw1bQ20" role="3cqZAk" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFb_" id="i1GGOI3" role="jymVt">
                                      <property role="TrG5h" value="getActionType" />
                                      <node concept="3Tqbb2" id="i2srHW3" role="3clF45" />
                                      <node concept="1W57fq" id="i1GGOIi" role="lGtFl">
                                        <node concept="3IZrLx" id="i1GGOIj" role="3IZSJc">
                                          <node concept="3clFbS" id="i1GGOIk" role="2VODD2">
                                            <node concept="3clFbF" id="i1GGOIl" role="3cqZAp">
                                              <node concept="3y3z36" id="i1GGOIm" role="3clFbG">
                                                <node concept="2OqwBi" id="i1GGOIo" role="3uHU7B">
                                                  <node concept="3TrEf2" id="i1GGOIq" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                                  </node>
                                                  <node concept="30H73N" id="i1GGOIp" role="2Oq$k0" />
                                                </node>
                                                <node concept="10Nm6u" id="i1GGOIn" role="3uHU7w" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="i1GGOI8" role="3clF47">
                                        <node concept="29HgVG" id="i1GGOI9" role="lGtFl">
                                          <node concept="3NFfHV" id="i1GGOIa" role="3NFExx">
                                            <node concept="3clFbS" id="i1GGOIb" role="2VODD2">
                                              <node concept="3clFbF" id="i1GGOIc" role="3cqZAp">
                                                <node concept="2OqwBi" id="i1GGOId" role="3clFbG">
                                                  <node concept="3TrEf2" id="i1GGOIh" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                  </node>
                                                  <node concept="2OqwBi" id="i1GGOIe" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="i1GGOIg" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                                    </node>
                                                    <node concept="30H73N" id="i1GGOIf" role="2Oq$k0" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="i1GGOI6" role="3clF46">
                                        <property role="TrG5h" value="pattern" />
                                        <node concept="17QB3L" id="18nccIwC3YM" role="1tU5fm" />
                                      </node>
                                      <node concept="3Tm1VV" id="i1GGOI4" role="1B3o_S" />
                                    </node>
                                    <node concept="3Tm1VV" id="i1GGOID" role="1B3o_S" />
                                    <node concept="37vLTw" id="3GM_nagTr7x" role="37wK5m">
                                      <ref role="3cqZAo" node="hKu08yj" resolve="outputConcept" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTyOs" role="37wK5m">
                                      <ref role="3cqZAo" node="hvmRP7t" resolve="item" />
                                    </node>
                                    <node concept="2OqwBi" id="i1GGOIt" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxghh7T" role="2Oq$k0">
                                        <ref role="3cqZAo" node="htuRhn8" resolve="_context" />
                                      </node>
                                      <node concept="liA8E" id="i1GGOIv" role="2OqNvi">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="i1GGOIw" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxgheUd" role="2Oq$k0">
                                        <ref role="3cqZAo" node="htuRhn8" resolve="_context" />
                                      </node>
                                      <node concept="liA8E" id="i1GGOIy" role="2OqNvi">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="i1GGOIz" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxghggh" role="2Oq$k0">
                                        <ref role="3cqZAo" node="htuRhn8" resolve="_context" />
                                      </node>
                                      <node concept="liA8E" id="i1GGOI_" role="2OqNvi">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildSetter():jetbrains.mps.smodel.action.IChildNodeSetter" resolve="getChildSetter" />
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
                  <node concept="3y3z36" id="hINSlIc" role="3clFbw">
                    <node concept="10Nm6u" id="hINSmdY" role="3uHU7w" />
                    <node concept="37vLTw" id="3GM_nagTvig" role="3uHU7B">
                      <ref role="3cqZAo" node="hvmRP79" resolve="queryResult" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hxx$XHu" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTz2p" role="2Oq$k0">
                  <ref role="3cqZAo" node="hvmPgUJ" resolve="childConcept" />
                </node>
                <node concept="2Za9M6" id="hvmQUnn" role="2OqNvi">
                  <node concept="25Kdxt" id="h_XQMYR" role="2ZaTVi">
                    <node concept="37vLTw" id="3GM_nagTA3C" role="25KhWn">
                      <ref role="3cqZAo" node="hKu08yj" resolve="outputConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="h8yu9SV" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="h8yu9SX" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTsN0" role="3cqZAk">
            <ref role="3cqZAo" node="h8yu9QF" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AO$Hp" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8yLKh6">
    <property role="TrG5h" value="RegisterMenuPart_Wrapper_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:h8yEb1F" resolve="WrapperSubstituteMenuPart" />
    <node concept="2YIFZL" id="h8yLKh7" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGya2" role="3clF45">
        <node concept="3uibUv" id="5dLITL9wIRK" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="h8yLKhi" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="h8yLKhj" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htuRPOg" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$cgCv" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="h8yLKhk" role="3clF47">
        <node concept="3cpWs8" id="h8yLKhl" role="3cqZAp">
          <node concept="3cpWsn" id="h8yLKhm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGyce" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9wJik" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolzf" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGygS" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9wJM_" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="h8yLKhr" role="3cqZAp">
          <node concept="3clFbS" id="h8yLKhs" role="9aQI4">
            <node concept="3cpWs8" id="7rnXos_8_bN" role="3cqZAp">
              <node concept="3cpWsn" id="7rnXos_8_bO" role="3cpWs9">
                <property role="TrG5h" value="outputConcept" />
                <node concept="3THzug" id="7rnXos_8_bP" role="1tU5fm" />
                <node concept="3TUQnm" id="7rnXos_8_bQ" role="33vP2m">
                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <node concept="1ZhdrF" id="7rnXos_8_bR" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                    <node concept="3$xsQk" id="7rnXos_8_bS" role="3$ytzL">
                      <node concept="3clFbS" id="7rnXos_8_bT" role="2VODD2">
                        <node concept="3cpWs8" id="7rnXos_8_bU" role="3cqZAp">
                          <node concept="3cpWsn" id="7rnXos_8_bV" role="3cpWs9">
                            <property role="TrG5h" value="outputConcept" />
                            <node concept="3Tqbb2" id="7rnXos_8_bW" role="1tU5fm">
                              <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="7rnXos_8_bX" role="33vP2m">
                              <node concept="1PxgMI" id="7rnXos_8_bY" role="2Oq$k0">
                                <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                <node concept="2OqwBi" id="7rnXos_8_bZ" role="1PxMeX">
                                  <node concept="30H73N" id="7rnXos_8_c0" role="2Oq$k0" />
                                  <node concept="1mfA1w" id="7rnXos_8_c1" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="7rnXos_8_c2" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7rnXos_8_c3" role="3cqZAp">
                          <node concept="3clFbS" id="7rnXos_8_c4" role="3clFbx">
                            <node concept="3clFbF" id="7rnXos_8_c5" role="3cqZAp">
                              <node concept="2OqwBi" id="7rnXos_8_c6" role="3clFbG">
                                <node concept="1iwH7S" id="7rnXos_8_c7" role="2Oq$k0" />
                                <node concept="2kEO4f" id="7rnXos_8_c8" role="2OqNvi">
                                  <node concept="2OqwBi" id="7rnXos_8_c9" role="2k6f33">
                                    <node concept="30H73N" id="7rnXos_8_ca" role="2Oq$k0" />
                                    <node concept="1mfA1w" id="7rnXos_8_cb" role="2OqNvi" />
                                  </node>
                                  <node concept="Xl_RD" id="7rnXos_8_cc" role="2k5Stb">
                                    <property role="Xl_RC" value="output concept is not specified" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="7rnXos_8_cd" role="3clFbw">
                            <node concept="10Nm6u" id="7rnXos_8_ce" role="3uHU7w" />
                            <node concept="37vLTw" id="3GM_nagTsgP" role="3uHU7B">
                              <ref role="3cqZAo" node="7rnXos_8_bV" resolve="outputConcept" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7rnXos_8_cg" role="3cqZAp">
                          <node concept="37vLTw" id="3GM_nagTvJq" role="3cqZAk">
                            <ref role="3cqZAo" node="7rnXos_8_bV" resolve="outputConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7rnXos_8_ci" role="3cqZAp">
              <node concept="3cpWsn" id="7rnXos_8_cj" role="3cpWs9">
                <property role="TrG5h" value="childConcept" />
                <node concept="3THzug" id="7rnXos_8_ck" role="1tU5fm" />
                <node concept="10QFUN" id="7rnXos_8_cl" role="33vP2m">
                  <node concept="3THzug" id="7rnXos_8_cm" role="10QFUM" />
                  <node concept="2OqwBi" id="7rnXos_8_cn" role="10QFUP">
                    <node concept="37vLTw" id="2BHiRxgm9Dw" role="2Oq$k0">
                      <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                    </node>
                    <node concept="liA8E" id="7rnXos_8_cp" role="2OqNvi">
                      <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getChildConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7rnXos_8_cA" role="3cqZAp">
              <node concept="3clFbS" id="7rnXos_8_cB" role="3clFbx">
                <node concept="3cpWs8" id="h8yMfOM" role="3cqZAp">
                  <node concept="3cpWsn" id="h8yMfON" role="3cpWs9">
                    <property role="TrG5h" value="wrappedConcept" />
                    <node concept="3THzug" id="hKu0ME7" role="1tU5fm" />
                    <node concept="3TUQnm" id="hKu0Ii3" role="33vP2m">
                      <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      <node concept="1ZhdrF" id="hKu0Jdc" role="lGtFl">
                        <property role="2qtEX8" value="conceptDeclaration" />
                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                        <node concept="3$xsQk" id="hKu0Jdd" role="3$ytzL">
                          <node concept="3clFbS" id="hKu0Jde" role="2VODD2">
                            <node concept="3cpWs6" id="hKu0KP_" role="3cqZAp">
                              <node concept="2OqwBi" id="hKu0KXb" role="3cqZAk">
                                <node concept="30H73N" id="hKu0KXc" role="2Oq$k0" />
                                <node concept="3TrEf2" id="hKu0KXd" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:h8yEYLw" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5CM90FY3jJe" role="3cqZAp">
                  <node concept="1W57fq" id="5CM90FY3J0$" role="lGtFl">
                    <node concept="3IZrLx" id="5CM90FY3J0A" role="3IZSJc">
                      <node concept="3clFbS" id="5CM90FY3J0C" role="2VODD2">
                        <node concept="3clFbF" id="5CM90FY3KIX" role="3cqZAp">
                          <node concept="1Wc70l" id="3nLGFDtI0WH" role="3clFbG">
                            <node concept="3y3z36" id="3nLGFDtIcy9" role="3uHU7w">
                              <node concept="10Nm6u" id="3nLGFDtIdQE" role="3uHU7w" />
                              <node concept="2OqwBi" id="3nLGFDtI3OK" role="3uHU7B">
                                <node concept="3TrEf2" id="3nLGFDtI8wq" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:7_Fmlxuo6Wv" />
                                </node>
                                <node concept="30H73N" id="3nLGFDtI3H$" role="2Oq$k0" />
                              </node>
                            </node>
                            <node concept="3y3z36" id="5CM90FY3WxE" role="3uHU7B">
                              <node concept="2OqwBi" id="5CM90FY3KQ9" role="3uHU7B">
                                <node concept="3TrEf2" id="5CM90FY3N6$" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                </node>
                                <node concept="30H73N" id="5CM90FY3KIW" role="2Oq$k0" />
                              </node>
                              <node concept="10Nm6u" id="5CM90FY3XuA" role="3uHU7w" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5CM90FY3jJh" role="3cpWs9">
                    <property role="TrG5h" value="returnSmallPartResult" />
                    <property role="3TUv4t" value="true" />
                    <node concept="2ShNRf" id="5CM90FY3$nf" role="33vP2m">
                      <node concept="3g6Rrh" id="5CM90FY3AXD" role="2ShVmc">
                        <node concept="10P_77" id="5CM90FY3$AQ" role="3g7fb8" />
                        <node concept="3clFbT" id="5CM90FY3BGi" role="3g7hyw">
                          <property role="3clFbU" value="false" />
                        </node>
                      </node>
                    </node>
                    <node concept="10Q1$e" id="5CM90FY3n2H" role="1tU5fm">
                      <node concept="10P_77" id="5CM90FY3jJc" role="10Q1$1" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="h8yM4nS" role="3cqZAp">
                  <node concept="3cpWsn" id="h8yM4nT" role="3cpWs9">
                    <property role="TrG5h" value="setter" />
                    <node concept="3uibUv" id="h8yM4nU" role="1tU5fm">
                      <ref role="3uigEE" to="zce0:~IChildNodeSetter" resolve="IChildNodeSetter" />
                    </node>
                    <node concept="2ShNRf" id="hcYiY0r" role="33vP2m">
                      <node concept="YeOm9" id="hcYiY0s" role="2ShVmc">
                        <node concept="1Y3b0j" id="h8yNGOy" role="YeSDq">
                          <ref role="1Y3XeK" to="zce0:~AbstractChildNodeSetter" resolve="AbstractChildNodeSetter" />
                          <ref role="37wK5l" to="zce0:~AbstractChildNodeSetter.&lt;init&gt;()" resolve="AbstractChildNodeSetter" />
                          <node concept="3clFb_" id="h8yNQsX" role="jymVt">
                            <property role="TrG5h" value="wrapNode" />
                            <node concept="3Tm6S6" id="6sr_aTSCI8T" role="1B3o_S" />
                            <node concept="3Tqbb2" id="i2srLat" role="3clF45" />
                            <node concept="3clFbS" id="h8yNQsZ" role="3clF47">
                              <node concept="29HgVG" id="h8yNYXA" role="lGtFl">
                                <node concept="3NFfHV" id="h8yNYXB" role="3NFExx">
                                  <node concept="3clFbS" id="h8yNYXC" role="2VODD2">
                                    <node concept="3cpWs6" id="h8yO0kg" role="3cqZAp">
                                      <node concept="2OqwBi" id="hxx_16N" role="3cqZAk">
                                        <node concept="2OqwBi" id="hxx_0mS" role="2Oq$k0">
                                          <node concept="30H73N" id="h8yO15i" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="h8yO1Xs" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8yEVIQ" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="h8yO3e8" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="h8yNXP7" role="3clF46">
                              <property role="TrG5h" value="nodeToWrap" />
                              <node concept="3Tqbb2" id="i2s1z4I" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="h8yT8Ey" role="3clF46">
                              <property role="TrG5h" value="model" />
                              <node concept="H_c77" id="i2s1ZDv" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="6sr_aTSCCuC" role="3clF46">
                              <property role="TrG5h" value="editorContext" />
                              <node concept="3uibUv" id="6sr_aTSCNj0" role="1tU5fm">
                                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                              </node>
                              <node concept="2AHcQZ" id="6sr_aTSCCuE" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFb_" id="hzcR9hK" role="jymVt">
                            <property role="TrG5h" value="returnSmallPart" />
                            <node concept="37vLTG" id="hzcUiJ_" role="3clF46">
                              <property role="TrG5h" value="nodeToWrap" />
                              <node concept="3Tqbb2" id="i2s1z5H" role="1tU5fm" />
                            </node>
                            <node concept="10P_77" id="hzcR9WW" role="3clF45" />
                            <node concept="3clFbS" id="hzcR9hN" role="3clF47">
                              <node concept="3clFbH" id="5dLITL9xsim" role="3cqZAp">
                                <node concept="1W57fq" id="5dLITL9xzIm" role="lGtFl">
                                  <node concept="3IZrLx" id="5dLITL9xzIq" role="3IZSJc">
                                    <node concept="3clFbS" id="5dLITL9xzIu" role="2VODD2">
                                      <node concept="3clFbF" id="5dLITL9xFJ5" role="3cqZAp">
                                        <node concept="2OqwBi" id="5dLITL9xFJ6" role="3clFbG">
                                          <node concept="3x8VRR" id="5dLITL9xM0P" role="2OqNvi" />
                                          <node concept="2OqwBi" id="5dLITL9xFJ7" role="2Oq$k0">
                                            <node concept="30H73N" id="5dLITL9xFJ8" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="5dLITL9xFJ9" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2b32R4" id="3$w0tX88AC5" role="lGtFl">
                                  <node concept="3JmXsc" id="3$w0tX88ACf" role="2P8S$">
                                    <node concept="3clFbS" id="3$w0tX88ACp" role="2VODD2">
                                      <node concept="3clFbF" id="3$w0tX88CpV" role="3cqZAp">
                                        <node concept="2OqwBi" id="3buQcoZ_gME" role="3clFbG">
                                          <node concept="3Tsc0h" id="3buQcoZ_lr9" role="2OqNvi">
                                            <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                          </node>
                                          <node concept="2OqwBi" id="5dLITL9xZVG" role="2Oq$k0">
                                            <node concept="3TrEf2" id="3$w0tX88L8e" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                            </node>
                                            <node concept="2OqwBi" id="5dLITL9xXaL" role="2Oq$k0">
                                              <node concept="30H73N" id="5dLITL9xXaM" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="5dLITL9xXaN" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="hzcRoT$" role="3cqZAp">
                                <node concept="1W57fq" id="5dLITL9x_gS" role="lGtFl">
                                  <node concept="3IZrLx" id="5dLITL9x_gU" role="3IZSJc">
                                    <node concept="3clFbS" id="5dLITL9x_gW" role="2VODD2">
                                      <node concept="3clFbF" id="5dLITL9xCjN" role="3cqZAp">
                                        <node concept="2OqwBi" id="5dLITL9xCjO" role="3clFbG">
                                          <node concept="2OqwBi" id="5dLITL9xCjP" role="2Oq$k0">
                                            <node concept="30H73N" id="5dLITL9xCjQ" role="2Oq$k0" />
                                            <node concept="3TrEf2" id="5dLITL9xCjR" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                            </node>
                                          </node>
                                          <node concept="3w_OXm" id="5dLITL9xCjS" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbT" id="hzcRpxC" role="3cqZAk">
                                  <property role="3clFbU" value="false" />
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="hzcR9hM" role="1B3o_S" />
                          </node>
                          <node concept="3clFb_" id="h8yO4x_" role="jymVt">
                            <property role="TrG5h" value="doExecute" />
                            <node concept="37vLTG" id="h8yO67s" role="3clF46">
                              <property role="TrG5h" value="pn" />
                              <node concept="3Tqbb2" id="i2s1z2O" role="1tU5fm" />
                            </node>
                            <node concept="3Tqbb2" id="i2srKfA" role="3clF45" />
                            <node concept="3clFbS" id="h8yO4xB" role="3clF47">
                              <node concept="3cpWs8" id="5zjZZw1ui_p" role="3cqZAp">
                                <node concept="3cpWsn" id="5zjZZw1ui_s" role="3cpWs9">
                                  <property role="TrG5h" value="wrappedNode" />
                                  <node concept="1rXfSq" id="5zjZZw1ukpY" role="33vP2m">
                                    <ref role="37wK5l" node="h8yNQsX" resolve="wrapNode" />
                                    <node concept="37vLTw" id="5zjZZw1ukWy" role="37wK5m">
                                      <ref role="3cqZAo" node="h8yO9l5" resolve="nc" />
                                    </node>
                                    <node concept="2OqwBi" id="5zjZZw1um0L" role="37wK5m">
                                      <node concept="2JrnkZ" id="5zjZZw1um0M" role="2Oq$k0">
                                        <node concept="37vLTw" id="5zjZZw1um0N" role="2JrQYb">
                                          <ref role="3cqZAo" node="h8yO9l5" resolve="nc" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="5zjZZw1um0O" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5zjZZw1undx" role="37wK5m">
                                      <ref role="3cqZAo" node="2GWjkH2IEis" resolve="editorContext" />
                                    </node>
                                  </node>
                                  <node concept="3Tqbb2" id="5zjZZw1ui_n" role="1tU5fm" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="h8yOdX1" role="3cqZAp">
                                <node concept="2OqwBi" id="h_XQI4V" role="3clFbG">
                                  <node concept="2OqwBi" id="h_XQIYr" role="2Oq$k0">
                                    <node concept="liA8E" id="h_XQIYs" role="2OqNvi">
                                      <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildSetter():jetbrains.mps.smodel.action.IChildNodeSetter" resolve="getChildSetter" />
                                    </node>
                                    <node concept="37vLTw" id="2BHiRxghf_4" role="2Oq$k0">
                                      <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="h_XQI4W" role="2OqNvi">
                                    <ref role="37wK5l" to="zce0:~IChildNodeSetter.execute(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.openapi.editor.EditorContext):org.jetbrains.mps.openapi.model.SNode" resolve="execute" />
                                    <node concept="2OqwBi" id="h_XQJ1h" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxgm5Kx" role="2Oq$k0">
                                        <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                                      </node>
                                      <node concept="liA8E" id="h_XQJ1i" role="2OqNvi">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="h_XQI6v" role="37wK5m">
                                      <node concept="37vLTw" id="2BHiRxgm70E" role="2Oq$k0">
                                        <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                                      </node>
                                      <node concept="liA8E" id="h_XQI6w" role="2OqNvi">
                                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTu8t" role="37wK5m">
                                      <ref role="3cqZAo" node="5zjZZw1ui_s" resolve="wrappedNode" />
                                    </node>
                                    <node concept="37vLTw" id="7opA20nmwoG" role="37wK5m">
                                      <ref role="3cqZAo" node="2GWjkH2IEis" resolve="editorContext" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs6" id="5md1fC6SvAN" role="3cqZAp">
                                <node concept="3K4zz7" id="5md1fC6SOC$" role="3cqZAk">
                                  <node concept="37vLTw" id="5md1fC6TWCx" role="3K4GZi">
                                    <ref role="3cqZAo" node="5zjZZw1ui_s" resolve="wrappedNode" />
                                  </node>
                                  <node concept="37vLTw" id="5md1fC6TIfb" role="3K4E3e">
                                    <ref role="3cqZAo" node="h8yO9l5" resolve="nc" />
                                  </node>
                                  <node concept="1eOMI4" id="5md1fC6T6vx" role="3K4Cdx">
                                    <node concept="1W57fq" id="2vmcqdDQRp_" role="lGtFl">
                                      <node concept="3IZrLx" id="2vmcqdDQRpB" role="3IZSJc">
                                        <node concept="3clFbS" id="2vmcqdDQRpD" role="2VODD2">
                                          <node concept="3clFbF" id="2vmcqdDRmok" role="3cqZAp">
                                            <node concept="1Wc70l" id="3nLGFDtIiej" role="3clFbG">
                                              <node concept="3y3z36" id="3nLGFDtInun" role="3uHU7w">
                                                <node concept="10Nm6u" id="3nLGFDtIo$Q" role="3uHU7w" />
                                                <node concept="2OqwBi" id="3nLGFDtIiTi" role="3uHU7B">
                                                  <node concept="3TrEf2" id="3nLGFDtIlOW" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:7_Fmlxuo6Wv" />
                                                  </node>
                                                  <node concept="30H73N" id="3nLGFDtIiM6" role="2Oq$k0" />
                                                </node>
                                              </node>
                                              <node concept="3y3z36" id="2vmcqdDRmom" role="3uHU7B">
                                                <node concept="2OqwBi" id="2vmcqdDRmoo" role="3uHU7B">
                                                  <node concept="3TrEf2" id="2vmcqdDRmop" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                                  </node>
                                                  <node concept="30H73N" id="2vmcqdDRmoq" role="2Oq$k0" />
                                                </node>
                                                <node concept="10Nm6u" id="2vmcqdDRmon" role="3uHU7w" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="gft3U" id="2vmcqdDRFjn" role="UU_$l">
                                        <node concept="1rXfSq" id="2vmcqdDRJOS" role="gfFT$">
                                          <ref role="37wK5l" node="hzcR9hK" resolve="returnSmallPart" />
                                          <node concept="37vLTw" id="2vmcqdDRMi2" role="37wK5m">
                                            <ref role="3cqZAo" node="h8yO9l5" resolve="nc" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTI" id="5md1fC6TvHQ" role="1eOMHV">
                                      <node concept="AH0OO" id="5md1fC6TvHR" role="37vLTJ">
                                        <node concept="3cmrfG" id="5md1fC6TvHS" role="AHEQo">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                        <node concept="37vLTw" id="5md1fC6TvHT" role="AHHXb">
                                          <ref role="3cqZAo" node="5CM90FY3jJh" resolve="returnSmallPartResult" />
                                        </node>
                                      </node>
                                      <node concept="1rXfSq" id="5md1fC6TvHU" role="37vLTx">
                                        <ref role="37wK5l" node="hzcR9hK" resolve="returnSmallPart" />
                                        <node concept="37vLTw" id="5md1fC6TvHV" role="37wK5m">
                                          <ref role="3cqZAo" node="h8yO9l5" resolve="nc" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tm1VV" id="h9AO$iW" role="1B3o_S" />
                            <node concept="37vLTG" id="h8yO7cK" role="3clF46">
                              <property role="TrG5h" value="oc" />
                              <node concept="3Tqbb2" id="i2s1z3z" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="h8yO9l5" role="3clF46">
                              <property role="TrG5h" value="nc" />
                              <node concept="3Tqbb2" id="i2s1z3w" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="2GWjkH2IEis" role="3clF46">
                              <property role="TrG5h" value="editorContext" />
                              <node concept="3uibUv" id="7opA20nkNK3" role="1tU5fm">
                                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                              </node>
                              <node concept="2AHcQZ" id="7opA20nkOE9" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                              </node>
                            </node>
                            <node concept="2AHcQZ" id="7opA20nkOSQ" role="2AJF6D">
                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="h9B3Lng" role="1B3o_S" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="h8yLU56" role="3cqZAp">
                  <node concept="1W57fq" id="5CM90FVIU3j" role="lGtFl">
                    <node concept="3IZrLx" id="5CM90FVIU3l" role="3IZSJc">
                      <node concept="3clFbS" id="5CM90FVIU3n" role="2VODD2">
                        <node concept="3clFbF" id="5CM90FVIYPR" role="3cqZAp">
                          <node concept="3clFbC" id="5CM90FVJ3eU" role="3clFbG">
                            <node concept="10Nm6u" id="5CM90FVJ3YQ" role="3uHU7w" />
                            <node concept="2OqwBi" id="5CM90FVIYX3" role="3uHU7B">
                              <node concept="3TrEf2" id="5CM90FVJ21P" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:7_Fmlxuo6Wv" />
                              </node>
                              <node concept="30H73N" id="5CM90FVIYPQ" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="h_XQIOj" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagTx2I" role="2Oq$k0">
                      <ref role="3cqZAo" node="h8yLKhm" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="i1GGONq" role="2OqNvi">
                      <node concept="2YIFZM" id="5dLITL9xqlB" role="25WWJ7">
                        <ref role="37wK5l" to="zce0:~ModelActions.createChildNodeSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter,jetbrains.mps.smodel.IOperationContext):java.util.List" resolve="createChildNodeSubstituteActions" />
                        <ref role="1Pybhc" to="zce0:~ModelActions" resolve="ModelActions" />
                        <node concept="2OqwBi" id="5dLITL9xqlC" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxglEt6" role="2Oq$k0">
                            <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                          </node>
                          <node concept="liA8E" id="5dLITL9xqlE" role="2OqNvi">
                            <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5dLITL9xqlF" role="37wK5m">
                          <node concept="37vLTw" id="2BHiRxgha56" role="2Oq$k0">
                            <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                          </node>
                          <node concept="liA8E" id="5dLITL9xqlH" role="2OqNvi">
                            <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBYm" role="37wK5m">
                          <ref role="3cqZAo" node="h8yMfON" resolve="wrappedConcept" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagT$i0" role="37wK5m">
                          <ref role="3cqZAo" node="h8yM4nT" resolve="setter" />
                        </node>
                        <node concept="37vLTw" id="2BHiRxgmqgv" role="37wK5m">
                          <ref role="3cqZAo" node="h8yLKhi" resolve="operationContext" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="5CM90FVJiT0" role="3cqZAp">
                  <node concept="1W57fq" id="5CM90FVJHDP" role="lGtFl">
                    <node concept="3IZrLx" id="5CM90FVJHDR" role="3IZSJc">
                      <node concept="3clFbS" id="5CM90FVJHDT" role="2VODD2">
                        <node concept="3clFbF" id="5CM90FVJKMB" role="3cqZAp">
                          <node concept="3y3z36" id="5CM90FVJRip" role="3clFbG">
                            <node concept="10Nm6u" id="5CM90FVJS9q" role="3uHU7w" />
                            <node concept="2OqwBi" id="5CM90FVJKTN" role="3uHU7B">
                              <node concept="3TrEf2" id="5CM90FVJNZ2" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:7_Fmlxuo6Wv" />
                              </node>
                              <node concept="30H73N" id="5CM90FVJKMA" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2GrKxI" id="5CM90FVJiT2" role="2Gsz3X">
                    <property role="TrG5h" value="substituteAction" />
                  </node>
                  <node concept="3clFbS" id="5CM90FVJiT6" role="2LFqv$">
                    <node concept="3clFbF" id="5CM90FVJYIw" role="3cqZAp">
                      <node concept="2OqwBi" id="5CM90FVJZsq" role="3clFbG">
                        <node concept="TSZUe" id="5CM90FVK5UQ" role="2OqNvi">
                          <node concept="2ShNRf" id="5CM90FVK6BY" role="25WWJ7">
                            <node concept="YeOm9" id="5CM90FVKzWx" role="2ShVmc">
                              <node concept="1Y3b0j" id="5CM90FVKzW$" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <ref role="1Y3XeK" to="zce0:~NodeSubstituteActionWrapper" resolve="NodeSubstituteActionWrapper" />
                                <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.SubstituteAction)" resolve="NodeSubstituteActionWrapper" />
                                <node concept="3Tm1VV" id="5CM90FVKzW_" role="1B3o_S" />
                                <node concept="2GrUjf" id="5CM90FVKwKn" role="37wK5m">
                                  <ref role="2Gs0qQ" node="5CM90FVJiT2" resolve="substituteAction" />
                                </node>
                                <node concept="3clFb_" id="5CM90FY5lX0" role="jymVt">
                                  <property role="1EzhhJ" value="false" />
                                  <property role="TrG5h" value="substitute" />
                                  <property role="DiZV1" value="false" />
                                  <property role="IEkAT" value="false" />
                                  <node concept="3Tm1VV" id="5CM90FY5lX1" role="1B3o_S" />
                                  <node concept="3uibUv" id="5CM90FY5lX3" role="3clF45">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="37vLTG" id="5CM90FY5lX4" role="3clF46">
                                    <property role="TrG5h" value="editorContext" />
                                    <node concept="3uibUv" id="5CM90FY5lX5" role="1tU5fm">
                                      <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                    </node>
                                    <node concept="2AHcQZ" id="5CM90FY5lX6" role="2AJF6D">
                                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="5CM90FY5lX7" role="3clF46">
                                    <property role="TrG5h" value="pattern" />
                                    <node concept="17QB3L" id="5CM90FY5r3y" role="1tU5fm" />
                                  </node>
                                  <node concept="3clFbS" id="5CM90FY5lXa" role="3clF47">
                                    <node concept="3cpWs8" id="5CM90FY5zqq" role="3cqZAp">
                                      <node concept="3cpWsn" id="5CM90FY5zqr" role="3cpWs9">
                                        <property role="TrG5h" value="substitutionResult" />
                                        <node concept="3Tqbb2" id="5CM90FY5$il" role="1tU5fm" />
                                        <node concept="3nyPlj" id="5CM90FY5zqs" role="33vP2m">
                                          <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.substitute(jetbrains.mps.openapi.editor.EditorContext,java.lang.String):org.jetbrains.mps.openapi.model.SNode" resolve="substitute" />
                                          <node concept="37vLTw" id="2BHiRxghiDc" role="37wK5m">
                                            <ref role="3cqZAo" node="5CM90FY5lX4" resolve="editorContext" />
                                          </node>
                                          <node concept="37vLTw" id="2BHiRxgmgmt" role="37wK5m">
                                            <ref role="3cqZAo" node="5CM90FY5lX7" resolve="pattern" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="5CM90FY5SI7" role="3cqZAp">
                                      <node concept="1W57fq" id="5CM90FY92ez" role="lGtFl">
                                        <node concept="3IZrLx" id="5CM90FY92e_" role="3IZSJc">
                                          <node concept="3clFbS" id="5CM90FY92eB" role="2VODD2">
                                            <node concept="3clFbF" id="5CM90FY9669" role="3cqZAp">
                                              <node concept="3y3z36" id="5CM90FY966a" role="3clFbG">
                                                <node concept="10Nm6u" id="5CM90FY966b" role="3uHU7w" />
                                                <node concept="2OqwBi" id="5CM90FY966c" role="3uHU7B">
                                                  <node concept="3TrEf2" id="5CM90FY966d" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:hzcQo_d" />
                                                  </node>
                                                  <node concept="30H73N" id="5CM90FY966e" role="2Oq$k0" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="AH0OO" id="5CM90FY5UxW" role="3clFbw">
                                        <node concept="3cmrfG" id="5CM90FY5Uyi" role="AHEQo">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                        <node concept="37vLTw" id="5CM90FY5Txb" role="AHHXb">
                                          <ref role="3cqZAo" node="5CM90FY3jJh" resolve="returnSmallPartResult" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="5CM90FY5SI9" role="3clFbx">
                                        <node concept="3cpWs6" id="5CM90FY5VBm" role="3cqZAp">
                                          <node concept="37vLTw" id="5CM90FY5Xdm" role="3cqZAk">
                                            <ref role="3cqZAo" node="5CM90FY5zqr" resolve="substitutionResult" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="5CM90FY61I3" role="3cqZAp">
                                      <node concept="1rXfSq" id="5CM90FY63kZ" role="3cqZAk">
                                        <ref role="37wK5l" node="5CM90FY5Hgx" resolve="setupSelection" />
                                        <node concept="37vLTw" id="5CM90FY64bq" role="37wK5m">
                                          <ref role="3cqZAo" node="5CM90FY5zqr" resolve="substitutionResult" />
                                        </node>
                                        <node concept="2OqwBi" id="5CM90FYd_7G" role="37wK5m">
                                          <node concept="liA8E" id="5CM90FYdAIJ" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                                          </node>
                                          <node concept="2JrnkZ" id="5CM90FYd$95" role="2Oq$k0">
                                            <node concept="37vLTw" id="5CM90FYdtYa" role="2JrQYb">
                                              <ref role="3cqZAo" node="5CM90FY5zqr" resolve="substitutionResult" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="5CM90FYdnx5" role="37wK5m">
                                          <ref role="3cqZAo" node="5CM90FY5lX7" resolve="pattern" />
                                        </node>
                                        <node concept="37vLTw" id="5CM90FYds5Q" role="37wK5m">
                                          <ref role="3cqZAo" node="5CM90FY5lX4" resolve="editorContext" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2AHcQZ" id="5CM90FY5lXb" role="2AJF6D">
                                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                  </node>
                                </node>
                                <node concept="3clFb_" id="5CM90FY5Hgx" role="jymVt">
                                  <property role="1EzhhJ" value="false" />
                                  <property role="TrG5h" value="setupSelection" />
                                  <property role="od$2w" value="false" />
                                  <property role="DiZV1" value="false" />
                                  <node concept="3Tqbb2" id="5CM90FY60Lp" role="3clF45" />
                                  <node concept="3clFbS" id="5CM90FY5Hg$" role="3clF47">
                                    <node concept="3cpWs6" id="5CM90FYdCJj" role="3cqZAp">
                                      <node concept="2b32R4" id="5CM90FYdGh8" role="lGtFl">
                                        <node concept="3JmXsc" id="5CM90FYdGha" role="2P8S$">
                                          <node concept="3clFbS" id="5CM90FYdGhc" role="2VODD2">
                                            <node concept="3clFbF" id="5CM90FYdHBz" role="3cqZAp">
                                              <node concept="2OqwBi" id="5CM90FYe2Yx" role="3clFbG">
                                                <node concept="3Tsc0h" id="5CM90FYe7le" role="2OqNvi">
                                                  <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                                </node>
                                                <node concept="2OqwBi" id="5CM90FYdOar" role="2Oq$k0">
                                                  <node concept="3TrEf2" id="5CM90FYdRMf" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                  </node>
                                                  <node concept="2OqwBi" id="5CM90FYdHIJ" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="5CM90FYdKAN" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:7_Fmlxuo6Wv" />
                                                    </node>
                                                    <node concept="30H73N" id="5CM90FYdHBy" role="2Oq$k0" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="5CM90FYdEvo" role="3cqZAk">
                                        <ref role="3cqZAo" node="5CM90FY5J7M" resolve="createdNode" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3Tm6S6" id="5CM90FY5FpX" role="1B3o_S" />
                                  <node concept="37vLTG" id="5CM90FY5J7M" role="3clF46">
                                    <property role="TrG5h" value="createdNode" />
                                    <node concept="3Tqbb2" id="5CM90FY5OLl" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="5CM90FY5K0Q" role="3clF46">
                                    <property role="TrG5h" value="model" />
                                    <node concept="H_c77" id="5CM90FY5ONW" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="5CM90FY5LSO" role="3clF46">
                                    <property role="TrG5h" value="pattern" />
                                    <node concept="17QB3L" id="5CM90FY5PMM" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="5CM90FY5PNH" role="3clF46">
                                    <property role="TrG5h" value="editorContext" />
                                    <node concept="3uibUv" id="5CM90FY5RF5" role="1tU5fm">
                                      <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5CM90FVJYIv" role="2Oq$k0">
                          <ref role="3cqZAo" node="h8yLKhm" resolve="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5CM90FVJohr" role="2GsD0m">
                    <ref role="37wK5l" to="zce0:~ModelActions.createChildNodeSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter,jetbrains.mps.smodel.IOperationContext):java.util.List" resolve="createChildNodeSubstituteActions" />
                    <ref role="1Pybhc" to="zce0:~ModelActions" resolve="ModelActions" />
                    <node concept="2OqwBi" id="5CM90FVJohs" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgm_I9" role="2Oq$k0">
                        <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                      </node>
                      <node concept="liA8E" id="5CM90FVJohu" role="2OqNvi">
                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5CM90FVJohv" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgmF1N" role="2Oq$k0">
                        <ref role="3cqZAo" node="htuRPOg" resolve="_context" />
                      </node>
                      <node concept="liA8E" id="5CM90FVJohx" role="2OqNvi">
                        <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTwXI" role="37wK5m">
                      <ref role="3cqZAo" node="h8yMfON" resolve="wrappedConcept" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTyU$" role="37wK5m">
                      <ref role="3cqZAo" node="h8yM4nT" resolve="setter" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxghf5d" role="37wK5m">
                      <ref role="3cqZAo" node="h8yLKhi" resolve="operationContext" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7rnXos_8_cE" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTzXn" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rnXos_8_cj" resolve="childConcept" />
                </node>
                <node concept="2Za9M6" id="7rnXos_8_cG" role="2OqNvi">
                  <node concept="25Kdxt" id="7rnXos_8_cH" role="2ZaTVi">
                    <node concept="37vLTw" id="3GM_nagTwrL" role="25KhWn">
                      <ref role="3cqZAo" node="7rnXos_8_bO" resolve="outputConcept" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="h8yLKjw" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="h8yLKjy" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTrMd" role="3cqZAk">
            <ref role="3cqZAo" node="h8yLKhm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9AO$KQ" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8zoIN1">
    <property role="TrG5h" value="MenuBuilderPartMethodRemoveByCondition_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:h8zlx8_" resolve="RemoveByConditionPart" />
    <node concept="312cEu" id="h8zoMaX" role="13RCb5">
      <property role="TrG5h" value="ContextClass" />
      <node concept="2YIFZL" id="hc$XtQ$" role="jymVt">
        <property role="TrG5h" value="_removeByCondition_" />
        <node concept="3clFbS" id="hc$XtQB" role="3clF47">
          <node concept="3cpWs8" id="hc_8lbu" role="3cqZAp">
            <node concept="3cpWsn" id="hc_8lbv" role="3cpWs9">
              <property role="TrG5h" value="variable" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="hc_8lbw" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                <node concept="29HgVG" id="hc_8lbx" role="lGtFl">
                  <node concept="3NFfHV" id="hc_8lby" role="3NFExx">
                    <node concept="3clFbS" id="hc_8lbz" role="2VODD2">
                      <node concept="3cpWs6" id="hc_8lb$" role="3cqZAp">
                        <node concept="2OqwBi" id="hxx$Z_8" role="3cqZAk">
                          <node concept="1PxgMI" id="hc_8lbA" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
                            <node concept="30H73N" id="hc_8lbB" role="1PxMeX" />
                          </node>
                          <node concept="3TrEf2" id="hc_8lbC" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="hc_8lbD" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="hc_8lbE" role="3zH0cK">
                  <node concept="3clFbS" id="hc_8lbF" role="2VODD2">
                    <node concept="3cpWs6" id="hc_8lbG" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$CT0" role="3cqZAk">
                        <node concept="3TrcHB" id="hc_8lbK" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="1PxgMI" id="hc_8lbI" role="2Oq$k0">
                          <ref role="1PxNhF" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
                          <node concept="30H73N" id="hc_8lbJ" role="1PxMeX" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="hc_8lbM" role="lGtFl">
              <node concept="3JmXsc" id="hc_8lbN" role="3Jn$fo">
                <node concept="3clFbS" id="hc_8lbO" role="2VODD2">
                  <node concept="3cpWs6" id="hc_8lbP" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx$Gw7" role="3cqZAk">
                      <node concept="1PxgMI" id="hc_8pol" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                        <node concept="2OqwBi" id="hxx$TIz" role="1PxMeX">
                          <node concept="30H73N" id="hc_8poo" role="2Oq$k0" />
                          <node concept="1mfA1w" id="hc_8pon" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hc_8qKo" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:h9AtXPE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hc_8urH" role="3cqZAp">
            <node concept="3clFbS" id="hc_8urI" role="9aQI4">
              <node concept="3cpWs8" id="hc_8urJ" role="3cqZAp">
                <node concept="3cpWsn" id="hc_8urK" role="3cpWs9">
                  <property role="TrG5h" value="calc" />
                  <node concept="2ShNRf" id="hcYiY2s" role="33vP2m">
                    <node concept="YeOm9" id="hcYiY2t" role="2ShVmc">
                      <node concept="1Y3b0j" id="hc_8urN" role="YeSDq">
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                        <node concept="3clFb_" id="hc_8urO" role="jymVt">
                          <property role="TrG5h" value="compute" />
                          <node concept="3uibUv" id="hc_8urP" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="3clFbS" id="hc_8urR" role="3clF47">
                            <node concept="29HgVG" id="hc_8urS" role="lGtFl">
                              <node concept="3NFfHV" id="hc_8urT" role="3NFExx">
                                <node concept="3clFbS" id="hc_8urU" role="2VODD2">
                                  <node concept="3cpWs6" id="hc_8urV" role="3cqZAp">
                                    <node concept="2OqwBi" id="hxx$UHJ" role="3cqZAk">
                                      <node concept="3TrEf2" id="hc_8us1" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                      </node>
                                      <node concept="2OqwBi" id="hxx$QlK" role="2Oq$k0">
                                        <node concept="1PxgMI" id="hc_8urY" role="2Oq$k0">
                                          <ref role="1PxNhF" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
                                          <node concept="30H73N" id="hc_8urZ" role="1PxMeX" />
                                        </node>
                                        <node concept="3TrEf2" id="hc_8us0" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:hat5I28" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="hc_8us2" role="3cqZAp">
                              <node concept="10Nm6u" id="hc_8us3" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="hc_8urQ" role="1B3o_S" />
                        </node>
                        <node concept="3Tm1VV" id="hc_8us4" role="1B3o_S" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="4dLaKSOqXZ8" role="1tU5fm">
                    <ref role="3uigEE" to="18ew:~Computable" resolve="Computable" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="hc_8us5" role="3cqZAp">
                <node concept="37vLTI" id="hc_8us6" role="3clFbG">
                  <node concept="10QFUN" id="hc_8us7" role="37vLTx">
                    <node concept="2OqwBi" id="h_XQHVp" role="10QFUP">
                      <node concept="liA8E" id="h_XQHVq" role="2OqNvi">
                        <ref role="37wK5l" to="18ew:~Computable.compute():java.lang.Object" resolve="compute" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagTss6" role="2Oq$k0">
                        <ref role="3cqZAo" node="hc_8urK" resolve="calc" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="hc_8usa" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <node concept="29HgVG" id="hc_8usb" role="lGtFl">
                        <node concept="3NFfHV" id="hc_8usc" role="3NFExx">
                          <node concept="3clFbS" id="hc_8usd" role="2VODD2">
                            <node concept="3cpWs6" id="hc_8use" role="3cqZAp">
                              <node concept="2OqwBi" id="hxx$BEf" role="3cqZAk">
                                <node concept="2qgKlT" id="hei5PoP" role="2OqNvi">
                                  <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                </node>
                                <node concept="2OqwBi" id="hxx$VK4" role="2Oq$k0">
                                  <node concept="3TrEf2" id="hc_8usg" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                                  </node>
                                  <node concept="30H73N" id="hc_8ush" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3GM_nagTuZY" role="37vLTJ">
                    <ref role="3cqZAo" node="hc_8lbv" resolve="variable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="hc_8ust" role="lGtFl">
              <node concept="3JmXsc" id="hc_8usu" role="3Jn$fo">
                <node concept="3clFbS" id="hc_8usv" role="2VODD2">
                  <node concept="3cpWs6" id="hc_8yzH" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx$T5M" role="3cqZAk">
                      <node concept="1PxgMI" id="hc_8yzK" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                        <node concept="2OqwBi" id="hxx$X0j" role="1PxMeX">
                          <node concept="1mfA1w" id="hc_8yzM" role="2OqNvi" />
                          <node concept="30H73N" id="hc_8yzN" role="2Oq$k0" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="hc_8yzJ" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:h9AtXPE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hc_7_Sn" role="3cqZAp">
            <node concept="3clFbS" id="hc_7_So" role="9aQI4">
              <node concept="29HgVG" id="hc_7Cfd" role="lGtFl">
                <node concept="3NFfHV" id="hc_7Cfe" role="3NFExx">
                  <node concept="3clFbS" id="hc_7Cff" role="2VODD2">
                    <node concept="3cpWs6" id="hc_7MLX" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$K0w" role="3cqZAk">
                        <node concept="2OqwBi" id="hxx_15E" role="2Oq$k0">
                          <node concept="1PxgMI" id="hc_7MW3" role="2Oq$k0">
                            <ref role="1PxNhF" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                            <node concept="2OqwBi" id="hxx_3mQ" role="1PxMeX">
                              <node concept="30H73N" id="hc_7MW6" role="2Oq$k0" />
                              <node concept="1mfA1w" id="hc_7MW5" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="hc_7MW2" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:h9ORn56" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="hc_7NWE" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1W57fq" id="hc_7AHt" role="lGtFl">
              <node concept="3IZrLx" id="hc_7AHu" role="3IZSJc">
                <node concept="3clFbS" id="hc_7AHv" role="2VODD2">
                  <node concept="3cpWs6" id="hc_7DsC" role="3cqZAp">
                    <node concept="3y3z36" id="hc_7KkR" role="3cqZAk">
                      <node concept="2OqwBi" id="hxx$X4v" role="3uHU7B">
                        <node concept="3TrEf2" id="hc_7K3Y" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpdg:h9ORn56" />
                        </node>
                        <node concept="1PxgMI" id="hc_7FuP" role="2Oq$k0">
                          <ref role="1PxNhF" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                          <node concept="2OqwBi" id="hxx$Rk1" role="1PxMeX">
                            <node concept="30H73N" id="hc_7DEj" role="2Oq$k0" />
                            <node concept="1mfA1w" id="hc_7ErE" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="hc_7Kz4" role="3uHU7w" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="htv3lFk" role="3cqZAp">
            <node concept="3cpWsn" id="htv3lFl" role="3cpWs9">
              <property role="TrG5h" value="actions" />
              <node concept="2YL$Hu" id="i34fpTw" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9zeoA" role="uOL27">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
              <node concept="2OqwBi" id="h_XQIZW" role="33vP2m">
                <node concept="liA8E" id="h_XQIZX" role="2OqNvi">
                  <ref role="37wK5l" to="zce0:~RemoveSubstituteActionByConditionContext.getSubstituteActions():java.util.Iterator" resolve="getSubstituteActions" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmNyF" role="2Oq$k0">
                  <ref role="3cqZAo" node="htv3bYZ" resolve="_context" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="hc$XIv4" role="3cqZAp">
            <node concept="3clFbS" id="hc$XIv6" role="2LFqv$">
              <node concept="3cpWs8" id="hc$XLgM" role="3cqZAp">
                <node concept="3cpWsn" id="hc$XLgN" role="3cpWs9">
                  <property role="TrG5h" value="current" />
                  <node concept="3uibUv" id="5dLITL9zhW6" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                  <node concept="2OqwBi" id="h_XQIXR" role="33vP2m">
                    <node concept="v1n4t" id="i1GGylU" role="2OqNvi" />
                    <node concept="37vLTw" id="3GM_nagTzhU" role="2Oq$k0">
                      <ref role="3cqZAo" node="htv3lFl" resolve="actions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="hc$Y2g2" role="3cqZAp">
                <node concept="3cpWsn" id="hc$Y2g3" role="3cpWs9">
                  <property role="TrG5h" value="outputConcept" />
                  <property role="3TUv4t" value="false" />
                  <node concept="10QFUN" id="5zjZZw1xf3m" role="33vP2m">
                    <node concept="3THzug" id="5zjZZw1xfIP" role="10QFUM" />
                    <node concept="2OqwBi" id="h_XQHhj" role="10QFUP">
                      <node concept="37vLTw" id="3GM_nagTrZc" role="2Oq$k0">
                        <ref role="3cqZAo" node="hc$XLgN" resolve="current" />
                      </node>
                      <node concept="liA8E" id="h_XQHhk" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~SubstituteAction.getOutputConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getOutputConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="3THzug" id="hwjj1m2" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cpWs8" id="hwjiu1b" role="3cqZAp">
                <node concept="3cpWsn" id="hwjiu1c" role="3cpWs9">
                  <property role="TrG5h" value="applicableConcept" />
                  <node concept="3TUQnm" id="hwjiK_A" role="33vP2m">
                    <ref role="3TV0OU" to="tpee:gEShaYr" resolve="AbstractCreator" />
                    <node concept="1ZhdrF" id="hwjiLOu" role="lGtFl">
                      <property role="2qtEX8" value="conceptDeclaration" />
                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                      <node concept="3$xsQk" id="hwjiLOv" role="3$ytzL">
                        <node concept="3clFbS" id="hwjiLOw" role="2VODD2">
                          <node concept="3clFbF" id="hwjiMxG" role="3cqZAp">
                            <node concept="2OqwBi" id="hxx_2N4" role="3clFbG">
                              <node concept="2OqwBi" id="hxx$Giy" role="2Oq$k0">
                                <node concept="30H73N" id="hwjiMxH" role="2Oq$k0" />
                                <node concept="2Xjw5R" id="hwjiNbx" role="2OqNvi">
                                  <node concept="1xMEDy" id="hwjiN_T" role="1xVPHs">
                                    <node concept="chp4Y" id="h_XQNxO" role="ri$Ld">
                                      <ref role="cht4Q" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3TrEf2" id="hwjiSA4" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:gbFOWO8" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3THzug" id="hwjiWw7" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cpWs8" id="hc$Ybh4" role="3cqZAp">
                <node concept="3cpWsn" id="hc$Ybh5" role="3cpWs9">
                  <property role="TrG5h" value="cond" />
                  <node concept="2ShNRf" id="hcYiXYX" role="33vP2m">
                    <node concept="YeOm9" id="hcYiXYY" role="2ShVmc">
                      <node concept="1Y3b0j" id="hc$YcPh" role="YeSDq">
                        <property role="1sVAO0" value="true" />
                        <ref role="1Y3XeK" to="y49u:~Condition" resolve="Condition" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3THzug" id="5zjZZw1xwnG" role="2Ghqu4" />
                        <node concept="3Tm1VV" id="hc$YcPi" role="1B3o_S" />
                        <node concept="3clFb_" id="hc$YgYY" role="jymVt">
                          <property role="TrG5h" value="met" />
                          <node concept="37vLTG" id="hc$YihS" role="3clF46">
                            <property role="TrG5h" value="concept" />
                            <node concept="3THzug" id="5zjZZw1xBoN" role="1tU5fm" />
                          </node>
                          <node concept="10P_77" id="hc$YhBt" role="3clF45" />
                          <node concept="3clFbS" id="hc$YgZ1" role="3clF47">
                            <node concept="29HgVG" id="hc$Yjrs" role="lGtFl">
                              <node concept="3NFfHV" id="hc$Yjrt" role="3NFExx">
                                <node concept="3clFbS" id="hc$Yjru" role="2VODD2">
                                  <node concept="3cpWs6" id="hc$YtXN" role="3cqZAp">
                                    <node concept="2OqwBi" id="hxx$XU1" role="3cqZAk">
                                      <node concept="2OqwBi" id="hxx$GvL" role="2Oq$k0">
                                        <node concept="3TrEf2" id="hc$YvG4" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:h8zmoBG" />
                                        </node>
                                        <node concept="30H73N" id="hc$YulW" role="2Oq$k0" />
                                      </node>
                                      <node concept="3TrEf2" id="hc$Yy$m" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="hc$YgZ0" role="1B3o_S" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uibUv" id="hc$Ybh6" role="1tU5fm">
                    <ref role="3uigEE" to="y49u:~Condition" resolve="Condition" />
                    <node concept="3THzug" id="5zjZZw1xuGF" role="11_B2D" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hc$Yljf" role="3cqZAp">
                <node concept="3clFbS" id="hc$Yljg" role="3clFbx">
                  <node concept="3clFbF" id="hc$Ynq4" role="3cqZAp">
                    <node concept="2OqwBi" id="i34fvXZ" role="3clFbG">
                      <node concept="2YMH90" id="i34fw4_" role="2OqNvi" />
                      <node concept="37vLTw" id="3GM_nagTANk" role="2Oq$k0">
                        <ref role="3cqZAo" node="htv3lFl" resolve="actions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="hwjj8B$" role="3clFbw">
                  <node concept="2OqwBi" id="h_XQIMw" role="3uHU7w">
                    <node concept="liA8E" id="h_XQIMx" role="2OqNvi">
                      <ref role="37wK5l" to="y49u:~Condition.met(java.lang.Object):boolean" resolve="met" />
                      <node concept="37vLTw" id="3GM_nagTyke" role="37wK5m">
                        <ref role="3cqZAo" node="hc$Y2g3" resolve="outputConcept" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTzZ$" role="2Oq$k0">
                      <ref role="3cqZAo" node="hc$Ybh5" resolve="cond" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hxx$Nm7" role="3uHU7B">
                    <node concept="37vLTw" id="3GM_nagTrfQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="hwjiu1c" resolve="applicableConcept" />
                    </node>
                    <node concept="2Za9M6" id="hwTqukU" role="2OqNvi">
                      <node concept="25Kdxt" id="h_XQMXP" role="2ZaTVi">
                        <node concept="37vLTw" id="3GM_nagT$8X" role="25KhWn">
                          <ref role="3cqZAo" node="hc$Y2g3" resolve="outputConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="h_XQIaP" role="2$JKZa">
              <node concept="37vLTw" id="3GM_nagTATV" role="2Oq$k0">
                <ref role="3cqZAo" node="htv3lFl" resolve="actions" />
              </node>
              <node concept="v0PNk" id="i1GGykQ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="hc$XtQA" role="1B3o_S" />
        <node concept="3cqZAl" id="hc$XtQ_" role="3clF45" />
        <node concept="raruj" id="hc$XuRI" role="lGtFl" />
        <node concept="17Uvod" id="hc$Zgcg" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hc$Zgch" role="3zH0cK">
            <node concept="3clFbS" id="hc$Zgci" role="2VODD2">
              <node concept="3cpWs6" id="hc$ZiSL" role="3cqZAp">
                <node concept="3cpWs3" id="hc$ZiSM" role="3cqZAk">
                  <node concept="2OqwBi" id="1R1KclLA1ay" role="3uHU7w">
                    <node concept="2OqwBi" id="1R1KclLA1az" role="2Oq$k0">
                      <node concept="liA8E" id="24cAaiVCakF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                      <node concept="2JrnkZ" id="UnLKGRV5cc" role="2Oq$k0">
                        <node concept="30H73N" id="1R1KclLA1a$" role="2JrQYb" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1R1KclLA1aA" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="hc$ZiSP" role="3uHU7B">
                    <property role="Xl_RC" value="removeActionsByCondition_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="hc$XDwH" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="hc$XE0$" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htv3bYZ" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$bfDo" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~RemoveSubstituteActionByConditionContext" resolve="RemoveSubstituteActionByConditionContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3Lqe" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8_0iX5">
    <property role="TrG5h" value="reduce_SideTransformActionsBuilder" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
    <node concept="312cEu" id="h8_0iX6" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="h8_0iX7" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="3clFbS" id="h8_0iXu" role="3clF47">
          <node concept="3cpWs8" id="h8_0iXv" role="3cqZAp">
            <node concept="3cpWsn" id="h8_0iXw" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2ShNRf" id="hHLoluO" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGye6" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9esrs" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="i1GGy6I" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9er8f" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="hwHb$jp" role="3cqZAp">
            <node concept="3cpWsn" id="hwHb$jq" role="3cpWs9">
              <property role="TrG5h" value="variable" />
              <property role="3TUv4t" value="true" />
              <node concept="2OqwBi" id="4vxQe1h1fOl" role="33vP2m">
                <node concept="liA8E" id="4vxQe1h1tc1" role="2OqNvi">
                  <ref role="37wK5l" node="4vxQe1gY11I" resolve="compute" />
                </node>
                <node concept="2ShNRf" id="4vxQe1gXZ5V" role="2Oq$k0">
                  <node concept="YeOm9" id="4vxQe1gY11D" role="2ShVmc">
                    <node concept="1Y3b0j" id="4vxQe1gY11G" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3uibUv" id="4vxQe1gY5oK" role="2Ghqu4">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        <node concept="29HgVG" id="4vxQe1gYbRc" role="lGtFl">
                          <node concept="3NFfHV" id="4vxQe1gYbRe" role="3NFExx">
                            <node concept="3clFbS" id="4vxQe1gYbRg" role="2VODD2">
                              <node concept="3clFbF" id="4vxQe1gYdl5" role="3cqZAp">
                                <node concept="2OqwBi" id="4vxQe1gYuiA" role="3clFbG">
                                  <node concept="2qgKlT" id="4vxQe1gYyna" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                  </node>
                                  <node concept="2OqwBi" id="4vxQe1gYexn" role="2Oq$k0">
                                    <node concept="3TrEf2" id="4vxQe1gYoED" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                                    </node>
                                    <node concept="30H73N" id="4vxQe1gYdl4" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="4vxQe1gY11H" role="1B3o_S" />
                      <node concept="3clFb_" id="4vxQe1gY11I" role="jymVt">
                        <property role="IEkAT" value="false" />
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="compute" />
                        <property role="DiZV1" value="false" />
                        <node concept="3uibUv" id="4vxQe1gY11O" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          <node concept="29HgVG" id="4vxQe1gYCII" role="lGtFl">
                            <node concept="3NFfHV" id="4vxQe1gYCIK" role="3NFExx">
                              <node concept="3clFbS" id="4vxQe1gYCIM" role="2VODD2">
                                <node concept="3clFbF" id="4vxQe1gYEdV" role="3cqZAp">
                                  <node concept="2OqwBi" id="4vxQe1gYS$2" role="3clFbG">
                                    <node concept="2qgKlT" id="4vxQe1gYUKg" role="2OqNvi">
                                      <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                    </node>
                                    <node concept="2OqwBi" id="4vxQe1gYFqd" role="2Oq$k0">
                                      <node concept="3TrEf2" id="4vxQe1gYO4g" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                                      </node>
                                      <node concept="30H73N" id="4vxQe1gYEdU" role="2Oq$k0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="4vxQe1gY11J" role="1B3o_S" />
                        <node concept="3clFbS" id="4vxQe1gY11M" role="3clF47">
                          <node concept="3cpWs6" id="4vxQe1gZ8fj" role="3cqZAp">
                            <node concept="2b32R4" id="4vxQe1gZemp" role="lGtFl">
                              <node concept="3JmXsc" id="4vxQe1gZemr" role="2P8S$">
                                <node concept="3clFbS" id="4vxQe1gZemt" role="2VODD2">
                                  <node concept="3clFbF" id="4vxQe1gZlok" role="3cqZAp">
                                    <node concept="2OqwBi" id="4vxQe1gZpHV" role="3clFbG">
                                      <node concept="3Tsc0h" id="4vxQe1gZuOt" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                      </node>
                                      <node concept="2OqwBi" id="4vxQe1gZlom" role="2Oq$k0">
                                        <node concept="2OqwBi" id="4vxQe1gZlon" role="2Oq$k0">
                                          <node concept="30H73N" id="4vxQe1gZloo" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="4vxQe1gZlop" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:hwH6AlA" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="4vxQe1gZloq" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="10Nm6u" id="4vxQe1gZbfk" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="hwHb$jr" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                <node concept="29HgVG" id="hwHbCGD" role="lGtFl">
                  <node concept="3NFfHV" id="hwHbCGE" role="3NFExx">
                    <node concept="3clFbS" id="hwHbCGF" role="2VODD2">
                      <node concept="3clFbF" id="hwHbD82" role="3cqZAp">
                        <node concept="2OqwBi" id="hxx$K4H" role="3clFbG">
                          <node concept="30H73N" id="hwHbD83" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hwHbE1Y" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17Uvod" id="hwHbEQY" role="lGtFl">
                <property role="2qtEX9" value="name" />
                <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                <node concept="3zFVjK" id="hwHbEQZ" role="3zH0cK">
                  <node concept="3clFbS" id="hwHbER0" role="2VODD2">
                    <node concept="3clFbF" id="hwHbFwK" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx_2QI" role="3clFbG">
                        <node concept="3TrcHB" id="hwHbGni" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="30H73N" id="hwHbFwL" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="hwHbAei" role="lGtFl">
              <node concept="3JmXsc" id="hwHbAej" role="3Jn$fo">
                <node concept="3clFbS" id="hwHbAek" role="2VODD2">
                  <node concept="3clFbF" id="hwHbANs" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx_6cK" role="3clFbG">
                      <node concept="30H73N" id="hwHbANt" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="hwHbBtK" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:hwH7PYb" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hwHf6hx" role="3cqZAp">
            <node concept="1W57fq" id="hwHf6O0" role="lGtFl">
              <node concept="3IZrLx" id="hwHf6O1" role="3IZSJc">
                <node concept="3clFbS" id="hwHf6O2" role="2VODD2">
                  <node concept="3clFbF" id="hwHf7pp" role="3cqZAp">
                    <node concept="3y3z36" id="hwHf94F" role="3clFbG">
                      <node concept="10Nm6u" id="hwHf9kP" role="3uHU7w" />
                      <node concept="2OqwBi" id="hxx_2gf" role="3uHU7B">
                        <node concept="3TrEf2" id="hwHf8uO" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpdg:hwHe81G" />
                        </node>
                        <node concept="30H73N" id="hwHf7pq" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="hwHf6hy" role="9aQI4">
              <node concept="29HgVG" id="hwHfa5W" role="lGtFl">
                <node concept="3NFfHV" id="hwHfa5X" role="3NFExx">
                  <node concept="3clFbS" id="hwHfa5Y" role="2VODD2">
                    <node concept="3clFbF" id="hwHfaYR" role="3cqZAp">
                      <node concept="2OqwBi" id="hxx$POm" role="3clFbG">
                        <node concept="3TrEf2" id="hwHfcwU" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                        </node>
                        <node concept="2OqwBi" id="hxx$VMP" role="2Oq$k0">
                          <node concept="3TrEf2" id="hwHfbNc" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:hwHe81G" />
                          </node>
                          <node concept="30H73N" id="hwHfaYS" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="44uAAgK9w7$" role="3cqZAp">
            <node concept="1WS0z7" id="44uAAgK9z3n" role="lGtFl">
              <node concept="3JmXsc" id="44uAAgK9z3p" role="3Jn$fo">
                <node concept="3clFbS" id="44uAAgK9z3r" role="2VODD2">
                  <node concept="3clFbF" id="44uAAgK9EKp" role="3cqZAp">
                    <node concept="2OqwBi" id="44uAAgK9EPJ" role="3clFbG">
                      <node concept="3Tsc0h" id="44uAAgK9HL6" role="2OqNvi">
                        <ref role="3TtcxE" to="tpdg:h8_1QXX" />
                      </node>
                      <node concept="30H73N" id="44uAAgK9EKo" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1sPUBX" id="1WfddY$XIA3" role="lGtFl">
              <ref role="v9R2y" node="44uAAgK9riQ" resolve="RegisterMenuBuilder_st" />
            </node>
          </node>
          <node concept="3cpWs6" id="h8_0iXL" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTsJG" role="3cqZAk">
              <ref role="3cqZAo" node="h8_0iXw" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="h8_0iXs" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="h8_0iXt" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htvbhrH" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$baY2" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformActionsBuilderContext" resolve="SideTransformActionsBuilderContext" />
          </node>
        </node>
        <node concept="raruj" id="h8_0iXa" role="lGtFl" />
        <node concept="3Tm1VV" id="h9AO$M0" role="1B3o_S" />
        <node concept="_YKpA" id="i1GGy6p" role="3clF45">
          <node concept="3uibUv" id="5dLITL9egs9" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="17Uvod" id="h8_0iXb" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="h8_0iXc" role="3zH0cK">
            <node concept="3clFbS" id="h8_0iXd" role="2VODD2">
              <node concept="3cpWs6" id="h8_0iXe" role="3cqZAp">
                <node concept="2OqwBi" id="hKukvBj" role="3cqZAk">
                  <node concept="30H73N" id="hKukv_O" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hKukwqQ" role="2OqNvi">
                    <ref role="37wK5l" to="tpdr:hKujR2X" resolve="getBuilderQueryMethodName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="44uAAgKaQpZ" role="jymVt">
        <property role="od$2w" value="false" />
        <property role="TrG5h" value="preconditionQuery" />
        <property role="DiZV1" value="false" />
        <node concept="10P_77" id="44uAAgKaQq0" role="3clF45" />
        <node concept="3clFbS" id="44uAAgKaQq1" role="3clF47">
          <node concept="3clFbF" id="44uAAgKaQq2" role="3cqZAp">
            <node concept="3clFbT" id="44uAAgKaQq3" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="44uAAgKaQq4" role="1B3o_S" />
        <node concept="raruj" id="44uAAgKaW4h" role="lGtFl" />
        <node concept="29HgVG" id="44uAAgKaZA$" role="lGtFl">
          <node concept="3NFfHV" id="44uAAgKaZAA" role="3NFExx">
            <node concept="3clFbS" id="44uAAgKaZAC" role="2VODD2">
              <node concept="3clFbF" id="44uAAgKaZCV" role="3cqZAp">
                <node concept="2OqwBi" id="44uAAgKaZIh" role="3clFbG">
                  <node concept="3TrEf2" id="44uAAgKb0PC" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:gNkShGo" />
                  </node>
                  <node concept="30H73N" id="44uAAgKaZCU" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZL" id="44uAAgKbKqe" role="jymVt">
        <property role="od$2w" value="false" />
        <property role="TrG5h" value="removeByCondition" />
        <property role="DiZV1" value="false" />
        <node concept="3clFbS" id="44uAAgKbKqf" role="3clF47" />
        <node concept="3Tm1VV" id="44uAAgKbKqg" role="1B3o_S" />
        <node concept="3cqZAl" id="44uAAgKbKqh" role="3clF45" />
        <node concept="raruj" id="44uAAgKbKqi" role="lGtFl" />
        <node concept="1WS0z7" id="44uAAgKAJR0" role="lGtFl">
          <node concept="3JmXsc" id="44uAAgKAJRj" role="3Jn$fo">
            <node concept="3clFbS" id="44uAAgKAJRA" role="2VODD2">
              <node concept="3clFbF" id="44uAAgKAK7h" role="3cqZAp">
                <node concept="2OqwBi" id="44uAAgKAKcB" role="3clFbG">
                  <node concept="3Tsc0h" id="44uAAgKALvk" role="2OqNvi">
                    <ref role="3TtcxE" to="tpdg:h8_1QXX" />
                  </node>
                  <node concept="30H73N" id="44uAAgKAK7g" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1sPUBX" id="1WfddY$XI6O" role="lGtFl">
          <ref role="v9R2y" node="44uAAgKAE_4" resolve="MenuBuilderPartMethod_st" />
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3Lu$" role="1B3o_S" />
    </node>
  </node>
  <node concept="jVnub" id="h8_0XWC">
    <property role="TrG5h" value="RegisterMenuPart_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <node concept="b5Tf3" id="44uAAgKabUZ" role="jxRDz" />
    <node concept="3aamgX" id="h8CsnAH" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8Cmt3G" resolve="SimpleSideTransformMenuPart" />
      <node concept="j$656" id="h8CsAzP" role="1lVwrX">
        <ref role="v9R2y" node="h8CqW$h" resolve="RegisterMenuPart_Simple_st" />
      </node>
    </node>
    <node concept="3aamgX" id="h8D3LFE" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8CZtG3" resolve="ParameterizedSideTransformMenuPart" />
      <node concept="j$656" id="h8D5avD" role="1lVwrX">
        <ref role="v9R2y" node="h8D3PbY" resolve="RegisterMenuPart_Parameterized_st" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="h8CqW$h">
    <property role="TrG5h" value="RegisterMenuPart_Simple_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:h8Cmt3G" resolve="SimpleSideTransformMenuPart" />
    <node concept="312cEu" id="h8Cr2Nw" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="h8Cr2Nx" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="37vLTG" id="h8Cr2NP" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="h8Cr2NQ" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="3clFbS" id="h8Cr2NR" role="3clF47">
          <node concept="3cpWs8" id="h8Cr2NS" role="3cqZAp">
            <node concept="3cpWsn" id="h8Cr2NT" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="i1GGyax" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9hH$c" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
              <node concept="2ShNRf" id="hHLoly7" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGyfG" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9hIpr" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="h8Cr6G6" role="3cqZAp">
            <node concept="2OqwBi" id="h_XQHSR" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTwm9" role="2Oq$k0">
                <ref role="3cqZAo" node="h8Cr2NT" resolve="result" />
              </node>
              <node concept="TSZUe" id="i1GGOKk" role="2OqNvi">
                <node concept="2ShNRf" id="i1GGOKl" role="25WWJ7">
                  <node concept="YeOm9" id="i1GGOKm" role="2ShVmc">
                    <node concept="1Y3b0j" id="i1GGOKn" role="YeSDq">
                      <ref role="1Y3XeK" to="zce0:~AbstractSideTransformHintSubstituteAction" resolve="AbstractSideTransformHintSubstituteAction" />
                      <ref role="37wK5l" to="zce0:~AbstractSideTransformHintSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractSideTransformHintSubstituteAction" />
                      <node concept="3TUQnm" id="4vxQe1he5GA" role="37wK5m">
                        <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                        <node concept="1ZhdrF" id="4vxQe1he5GB" role="lGtFl">
                          <property role="2qtEX8" value="conceptDeclaration" />
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                          <node concept="3$xsQk" id="4vxQe1he5GC" role="3$ytzL">
                            <node concept="3clFbS" id="4vxQe1he5GD" role="2VODD2">
                              <node concept="3cpWs6" id="4vxQe1he5GE" role="3cqZAp">
                                <node concept="2OqwBi" id="4vxQe1he5GF" role="3cqZAk">
                                  <node concept="1PxgMI" id="4vxQe1he5GG" role="2Oq$k0">
                                    <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                    <node concept="2OqwBi" id="4vxQe1he5GH" role="1PxMeX">
                                      <node concept="30H73N" id="4vxQe1he5GI" role="2Oq$k0" />
                                      <node concept="1mfA1w" id="4vxQe1he5GJ" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="4vxQe1he5GK" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="i1GGOKo" role="jymVt">
                        <property role="TrG5h" value="doSubstitute" />
                        <node concept="37vLTG" id="28rIX8TXKla" role="3clF46">
                          <property role="TrG5h" value="editorContext" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="28rIX8TXLmN" role="1tU5fm">
                            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                          </node>
                          <node concept="2AHcQZ" id="28rIX8TXKlc" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="i2srE5y" role="3clF45" />
                        <node concept="3Tm1VV" id="i1GGOKA" role="1B3o_S" />
                        <node concept="3clFbS" id="i1GGOKs" role="3clF47">
                          <node concept="29HgVG" id="i1GGOKt" role="lGtFl">
                            <node concept="3NFfHV" id="i1GGOKu" role="3NFExx">
                              <node concept="3clFbS" id="i1GGOKv" role="2VODD2">
                                <node concept="3cpWs6" id="i1GGOKw" role="3cqZAp">
                                  <node concept="2OqwBi" id="i1GGOKx" role="3cqZAk">
                                    <node concept="3TrEf2" id="i1GGOK_" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                    </node>
                                    <node concept="2OqwBi" id="i1GGOKy" role="2Oq$k0">
                                      <node concept="3TrEf2" id="i1GGOK$" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpdg:h8Cncio" />
                                      </node>
                                      <node concept="30H73N" id="i1GGOKz" role="2Oq$k0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="i1GGOKp" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="i1GGOKq" role="1tU5fm" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="i1GGOKB" role="jymVt">
                        <property role="TrG5h" value="getMatchingText" />
                        <node concept="17QB3L" id="i1GGOKE" role="3clF45" />
                        <node concept="3clFbS" id="i1GGOKF" role="3clF47">
                          <node concept="29HgVG" id="i1GGOKG" role="lGtFl">
                            <node concept="3NFfHV" id="i1GGOKH" role="3NFExx">
                              <node concept="3clFbS" id="i1GGOKI" role="2VODD2">
                                <node concept="3cpWs6" id="i1GGOKJ" role="3cqZAp">
                                  <node concept="2OqwBi" id="i1GGOKK" role="3cqZAk">
                                    <node concept="3TrEf2" id="3JzLIOkBQI6" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                    </node>
                                    <node concept="1PxgMI" id="3JzLIOkBNdO" role="2Oq$k0">
                                      <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                      <node concept="2OqwBi" id="i1GGOKL" role="1PxMeX">
                                        <node concept="3TrEf2" id="i1GGOKN" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:h8Cn2my" />
                                        </node>
                                        <node concept="30H73N" id="i1GGOKM" role="2Oq$k0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="i1GGOKC" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="i1GGOKD" role="1tU5fm" />
                        </node>
                        <node concept="3Tm1VV" id="i1GGOKY" role="1B3o_S" />
                        <node concept="1W57fq" id="i1GGOKP" role="lGtFl">
                          <node concept="3IZrLx" id="i1GGOKQ" role="3IZSJc">
                            <node concept="3clFbS" id="i1GGOKR" role="2VODD2">
                              <node concept="3cpWs6" id="i1GGOKS" role="3cqZAp">
                                <node concept="2OqwBi" id="3JzLIOkBGFa" role="3cqZAk">
                                  <node concept="1mIQ4w" id="3JzLIOkBI38" role="2OqNvi">
                                    <node concept="chp4Y" id="3JzLIOkBJLt" role="cj9EA">
                                      <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="i1GGOKV" role="2Oq$k0">
                                    <node concept="3TrEf2" id="i1GGOKX" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8Cn2my" />
                                    </node>
                                    <node concept="30H73N" id="i1GGOKW" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="i1GGOMv" role="1B3o_S" />
                      <node concept="2OqwBi" id="i1GGOMs" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxghgAK" role="2Oq$k0">
                          <ref role="3cqZAo" node="htvbtzw" resolve="_context" />
                        </node>
                        <node concept="liA8E" id="i1GGOMu" role="2OqNvi">
                          <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="i1GGOKZ" role="jymVt">
                        <property role="TrG5h" value="getVisibleMatchingText" />
                        <node concept="1W57fq" id="i1GGOL9" role="lGtFl">
                          <node concept="3IZrLx" id="i1GGOLa" role="3IZSJc">
                            <node concept="3clFbS" id="i1GGOLb" role="2VODD2">
                              <node concept="3cpWs6" id="3JzLIOkC1KK" role="3cqZAp">
                                <node concept="2OqwBi" id="3JzLIOkC1KL" role="3cqZAk">
                                  <node concept="1mIQ4w" id="3JzLIOkC1KM" role="2OqNvi">
                                    <node concept="chp4Y" id="3JzLIOkC1KN" role="cj9EA">
                                      <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="3JzLIOkC1KO" role="2Oq$k0">
                                    <node concept="3TrEf2" id="3JzLIOkC1KP" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8Cn2my" />
                                    </node>
                                    <node concept="30H73N" id="3JzLIOkC1KQ" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="i1GGOL0" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="i1GGOL1" role="1tU5fm" />
                        </node>
                        <node concept="17QB3L" id="i1GGOL2" role="3clF45" />
                        <node concept="3clFbS" id="i1GGOL3" role="3clF47">
                          <node concept="3cpWs6" id="i1GGOL4" role="3cqZAp">
                            <node concept="1rXfSq" id="4vxQe1hfKdD" role="3cqZAk">
                              <ref role="37wK5l" node="i1GGOKB" resolve="getMatchingText" />
                              <node concept="37vLTw" id="4vxQe1hfKza" role="37wK5m">
                                <ref role="3cqZAo" node="i1GGOL0" resolve="pattern" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="i1GGOLi" role="1B3o_S" />
                      </node>
                      <node concept="3clFb_" id="i1GGOLj" role="jymVt">
                        <property role="TrG5h" value="getDescriptionText" />
                        <node concept="3Tm1VV" id="i1GGOLE" role="1B3o_S" />
                        <node concept="1W57fq" id="i1GGOLx" role="lGtFl">
                          <node concept="3IZrLx" id="i1GGOLy" role="3IZSJc">
                            <node concept="3clFbS" id="i1GGOLz" role="2VODD2">
                              <node concept="3cpWs6" id="i1GGOL$" role="3cqZAp">
                                <node concept="2OqwBi" id="3JzLIOkC9NJ" role="3cqZAk">
                                  <node concept="1mIQ4w" id="3JzLIOkCbbH" role="2OqNvi">
                                    <node concept="chp4Y" id="3JzLIOkCd9M" role="cj9EA">
                                      <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="i1GGOLB" role="2Oq$k0">
                                    <node concept="30H73N" id="i1GGOLC" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="i1GGOLD" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8Cn6e9" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="i1GGOLk" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="i1GGOLl" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="i1GGOLn" role="3clF47">
                          <node concept="29HgVG" id="i1GGOLo" role="lGtFl">
                            <node concept="3NFfHV" id="i1GGOLp" role="3NFExx">
                              <node concept="3clFbS" id="i1GGOLq" role="2VODD2">
                                <node concept="3cpWs6" id="i1GGOLr" role="3cqZAp">
                                  <node concept="2OqwBi" id="i1GGOLs" role="3cqZAk">
                                    <node concept="3TrEf2" id="3JzLIOkCim7" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                    </node>
                                    <node concept="1PxgMI" id="3JzLIOkCfXN" role="2Oq$k0">
                                      <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                      <node concept="2OqwBi" id="i1GGOLt" role="1PxMeX">
                                        <node concept="3TrEf2" id="i1GGOLv" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:h8Cn6e9" />
                                        </node>
                                        <node concept="30H73N" id="i1GGOLu" role="2Oq$k0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="17QB3L" id="i1GGOLm" role="3clF45" />
                      </node>
                      <node concept="3clFb_" id="i1GGOLF" role="jymVt">
                        <property role="TrG5h" value="getIconNode" />
                        <node concept="3Tqbb2" id="4vxQe1hqc0O" role="3clF45" />
                        <node concept="37vLTG" id="i1GGOLI" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="i1GGOLJ" role="1tU5fm" />
                        </node>
                        <node concept="3Tm1VV" id="i1GGOLG" role="1B3o_S" />
                        <node concept="1W57fq" id="i1GGOLU" role="lGtFl">
                          <node concept="3IZrLx" id="i1GGOLV" role="3IZSJc">
                            <node concept="3clFbS" id="i1GGOLW" role="2VODD2">
                              <node concept="3clFbF" id="i1GGOLX" role="3cqZAp">
                                <node concept="3y3z36" id="i1GGOLY" role="3clFbG">
                                  <node concept="10Nm6u" id="i1GGOLZ" role="3uHU7w" />
                                  <node concept="2OqwBi" id="i1GGOM0" role="3uHU7B">
                                    <node concept="3TrEf2" id="4vxQe1hq5Ju" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:4vxQe1hkhge" />
                                    </node>
                                    <node concept="30H73N" id="i1GGOM1" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4vxQe1hqfSz" role="3clF47">
                          <node concept="3cpWs6" id="4vxQe1hqfSy" role="3cqZAp">
                            <node concept="2b32R4" id="4vxQe1hqgSH" role="lGtFl">
                              <node concept="3JmXsc" id="4vxQe1hqgSJ" role="2P8S$">
                                <node concept="3clFbS" id="4vxQe1hqgSL" role="2VODD2">
                                  <node concept="3clFbF" id="4vxQe1hqhoW" role="3cqZAp">
                                    <node concept="2OqwBi" id="4vxQe1hqtgq" role="3clFbG">
                                      <node concept="3Tsc0h" id="4vxQe1hqxcc" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                      </node>
                                      <node concept="2OqwBi" id="4vxQe1hqnbN" role="2Oq$k0">
                                        <node concept="3TrEf2" id="4vxQe1hqr9q" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                        <node concept="2OqwBi" id="4vxQe1hqhw8" role="2Oq$k0">
                                          <node concept="3TrEf2" id="4vxQe1hqlHH" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:4vxQe1hkhge" />
                                          </node>
                                          <node concept="30H73N" id="4vxQe1hqhoV" role="2Oq$k0" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="10Nm6u" id="4vxQe1hqgsc" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="i1GGOM3" role="jymVt">
                        <property role="TrG5h" value="getActionType" />
                        <node concept="3Tqbb2" id="i2srEAh" role="3clF45" />
                        <node concept="3Tm1VV" id="i1GGOM4" role="1B3o_S" />
                        <node concept="37vLTG" id="i1GGOM6" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="17QB3L" id="18nccIwC3Y7" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="i1GGOM8" role="3clF47">
                          <node concept="29HgVG" id="i1GGOM9" role="lGtFl">
                            <node concept="3NFfHV" id="i1GGOMa" role="3NFExx">
                              <node concept="3clFbS" id="i1GGOMb" role="2VODD2">
                                <node concept="3clFbF" id="i1GGOMc" role="3cqZAp">
                                  <node concept="2OqwBi" id="i1GGOMd" role="3clFbG">
                                    <node concept="2OqwBi" id="i1GGOMe" role="2Oq$k0">
                                      <node concept="30H73N" id="i1GGOMf" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="i1GGOMg" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="i1GGOMh" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1W57fq" id="i1GGOMi" role="lGtFl">
                          <node concept="3IZrLx" id="i1GGOMj" role="3IZSJc">
                            <node concept="3clFbS" id="i1GGOMk" role="2VODD2">
                              <node concept="3clFbF" id="i1GGOMl" role="3cqZAp">
                                <node concept="3y3z36" id="i1GGOMm" role="3clFbG">
                                  <node concept="10Nm6u" id="i1GGOMn" role="3uHU7w" />
                                  <node concept="2OqwBi" id="i1GGOMo" role="3uHU7B">
                                    <node concept="30H73N" id="i1GGOMp" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="i1GGOMq" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="2KPNJVWrmIg" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="isEnabled" />
                        <property role="DiZV1" value="false" />
                        <property role="IEkAT" value="false" />
                        <node concept="3Tmbuc" id="2KPNJVWrmIh" role="1B3o_S" />
                        <node concept="10P_77" id="2KPNJVWrmIj" role="3clF45" />
                        <node concept="3clFbS" id="2KPNJVWrmIl" role="3clF47">
                          <node concept="3cpWs8" id="2KPNJVWscjB" role="3cqZAp">
                            <node concept="3cpWsn" id="2KPNJVWscjC" role="3cpWs9">
                              <property role="TrG5h" value="sourceNode" />
                              <node concept="3Tqbb2" id="2KPNJVWscYH" role="1tU5fm" />
                              <node concept="1rXfSq" id="2KPNJVWscjD" role="33vP2m">
                                <ref role="37wK5l" to="zce0:~AbstractNodeSubstituteAction.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2KPNJVWsp$A" role="3cqZAp">
                            <node concept="3cpWsn" id="2KPNJVWsp$B" role="3cpWs9">
                              <property role="TrG5h" value="parent" />
                              <node concept="3Tqbb2" id="2KPNJVWsp$x" role="1tU5fm" />
                              <node concept="2OqwBi" id="2KPNJVWsp$C" role="33vP2m">
                                <node concept="37vLTw" id="2KPNJVWsp$D" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2KPNJVWscjC" resolve="sourceNode" />
                                </node>
                                <node concept="1mfA1w" id="2KPNJVWsp$E" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2KPNJVWsCgO" role="3cqZAp">
                            <node concept="3cpWsn" id="2KPNJVWsCgP" role="3cpWs9">
                              <property role="TrG5h" value="containingLink" />
                              <node concept="3Tqbb2" id="2KPNJVWsCgM" role="1tU5fm">
                                <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                              </node>
                              <node concept="2OqwBi" id="2KPNJVWsCgQ" role="33vP2m">
                                <node concept="37vLTw" id="2KPNJVWsCgR" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2KPNJVWscjC" resolve="sourceNode" />
                                </node>
                                <node concept="25OxAV" id="2KPNJVWsCgS" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2KPNJVWzgzq" role="3cqZAp">
                            <node concept="22lmx$" id="2KPNJVWzqzW" role="3cqZAk">
                              <node concept="1eOMI4" id="2KPNJVWztTf" role="3uHU7w">
                                <node concept="1Wc70l" id="2KPNJVWzxg8" role="1eOMHV">
                                  <node concept="2YIFZM" id="2KPNJVWzxg9" role="3uHU7B">
                                    <ref role="37wK5l" to="ykok:~ModelConstraints.canBeParent(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeParent" />
                                    <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                                    <node concept="37vLTw" id="2KPNJVWzxga" role="37wK5m">
                                      <ref role="3cqZAo" node="2KPNJVWsp$B" resolve="parent" />
                                    </node>
                                    <node concept="3TUQnm" id="2KPNJVWzxgb" role="37wK5m">
                                      <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                      <node concept="1ZhdrF" id="2KPNJVWzxgc" role="lGtFl">
                                        <property role="2qtEX8" value="conceptDeclaration" />
                                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                                        <node concept="3$xsQk" id="2KPNJVWzxgd" role="3$ytzL">
                                          <node concept="3clFbS" id="2KPNJVWzxge" role="2VODD2">
                                            <node concept="3cpWs6" id="2KPNJVWzxgf" role="3cqZAp">
                                              <node concept="2OqwBi" id="2KPNJVWzxgg" role="3cqZAk">
                                                <node concept="1PxgMI" id="2KPNJVWzxgh" role="2Oq$k0">
                                                  <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                                  <node concept="2OqwBi" id="2KPNJVWzxgi" role="1PxMeX">
                                                    <node concept="30H73N" id="2KPNJVWzxgj" role="2Oq$k0" />
                                                    <node concept="1mfA1w" id="2KPNJVWzxgk" role="2OqNvi" />
                                                  </node>
                                                </node>
                                                <node concept="3TrEf2" id="2KPNJVWzxgl" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="2KPNJVWzxgm" role="37wK5m">
                                      <ref role="3cqZAo" node="2KPNJVWsCgP" resolve="containingLink" />
                                    </node>
                                    <node concept="10Nm6u" id="2KPNJVWzxgn" role="37wK5m" />
                                    <node concept="10Nm6u" id="2KPNJVWzxgo" role="37wK5m" />
                                  </node>
                                  <node concept="2YIFZM" id="2KPNJVWzxgp" role="3uHU7w">
                                    <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                                    <ref role="37wK5l" to="ykok:~ModelConstraints.canBeAncestor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeAncestor" />
                                    <node concept="37vLTw" id="2KPNJVWzxgq" role="37wK5m">
                                      <ref role="3cqZAo" node="2KPNJVWsp$B" resolve="parent" />
                                    </node>
                                    <node concept="10Nm6u" id="2KPNJVWzxgr" role="37wK5m" />
                                    <node concept="3TUQnm" id="2KPNJVWzxgs" role="37wK5m">
                                      <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                      <node concept="1ZhdrF" id="2KPNJVWzxgt" role="lGtFl">
                                        <property role="2qtEX8" value="conceptDeclaration" />
                                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                                        <node concept="3$xsQk" id="2KPNJVWzxgu" role="3$ytzL">
                                          <node concept="3clFbS" id="2KPNJVWzxgv" role="2VODD2">
                                            <node concept="3cpWs6" id="2KPNJVWzxgw" role="3cqZAp">
                                              <node concept="2OqwBi" id="2KPNJVWzxgx" role="3cqZAk">
                                                <node concept="1PxgMI" id="2KPNJVWzxgy" role="2Oq$k0">
                                                  <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                                  <node concept="2OqwBi" id="2KPNJVWzxgz" role="1PxMeX">
                                                    <node concept="30H73N" id="2KPNJVWzxg$" role="2Oq$k0" />
                                                    <node concept="1mfA1w" id="2KPNJVWzxg_" role="2OqNvi" />
                                                  </node>
                                                </node>
                                                <node concept="3TrEf2" id="2KPNJVWzxgA" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="2KPNJVWzxgB" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                              <node concept="22lmx$" id="2KPNJVWznbb" role="3uHU7B">
                                <node concept="3clFbC" id="2KPNJVWznbf" role="3uHU7B">
                                  <node concept="37vLTw" id="2KPNJVWznbg" role="3uHU7B">
                                    <ref role="3cqZAo" node="2KPNJVWsp$B" resolve="parent" />
                                  </node>
                                  <node concept="10Nm6u" id="2KPNJVWznbh" role="3uHU7w" />
                                </node>
                                <node concept="3clFbC" id="2KPNJVWznbc" role="3uHU7w">
                                  <node concept="37vLTw" id="2KPNJVWznbe" role="3uHU7B">
                                    <ref role="3cqZAo" node="2KPNJVWsCgP" resolve="containingLink" />
                                  </node>
                                  <node concept="10Nm6u" id="2KPNJVWznbd" role="3uHU7w" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2KPNJVWrp2x" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4vxQe1heRn7" role="lGtFl" />
          </node>
          <node concept="3cpWs6" id="h8Cr2Oa" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTv7J" role="3cqZAk">
              <ref role="3cqZAo" node="h8Cr2NT" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="h9AO$Fd" role="1B3o_S" />
        <node concept="_YKpA" id="i1GGy74" role="3clF45">
          <node concept="3uibUv" id="5dLITL9hELE" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="37vLTG" id="htvbtzw" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$cQA2" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformActionsBuilderContext" resolve="SideTransformActionsBuilderContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3LtR" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8D3PbY">
    <property role="TrG5h" value="RegisterMenuPart_Parameterized_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:h8CZtG3" resolve="ParameterizedSideTransformMenuPart" />
    <node concept="312cEu" id="h8D3PbZ" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="h8D3Pc0" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="3Tm1VV" id="h9AO$Hw" role="1B3o_S" />
        <node concept="_YKpA" id="i1GGycX" role="3clF45">
          <node concept="3uibUv" id="5dLITL9hQD6" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="3clFbS" id="h8D3Pcb" role="3clF47">
          <node concept="3cpWs8" id="h8D3Pcc" role="3cqZAp">
            <node concept="3cpWsn" id="h8D3Pcd" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="i1GGybk" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9hTs0" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
              <node concept="2ShNRf" id="hHLolyG" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGygb" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9hU_j" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="h8D3Pci" role="3cqZAp">
            <node concept="3clFbS" id="h8D3Pcj" role="9aQI4">
              <node concept="3cpWs8" id="h8D4dLo" role="3cqZAp">
                <node concept="3cpWsn" id="h8D4dLp" role="3cpWs9">
                  <property role="TrG5h" value="parameterObjects" />
                  <node concept="2OqwBi" id="4vxQe1hsGpK" role="33vP2m">
                    <node concept="liA8E" id="4vxQe1ht1UP" role="2OqNvi">
                      <ref role="37wK5l" node="4vxQe1hs6Mj" resolve="compute" />
                    </node>
                    <node concept="2ShNRf" id="4vxQe1hrVRn" role="2Oq$k0">
                      <node concept="YeOm9" id="4vxQe1hs6Me" role="2ShVmc">
                        <node concept="1Y3b0j" id="4vxQe1hs6Mh" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3uibUv" id="4vxQe1hsoEe" role="2Ghqu4">
                            <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                            <node concept="3uibUv" id="4vxQe1hsqeX" role="11_B2D">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              <node concept="29HgVG" id="4vxQe1hsrVC" role="lGtFl">
                                <node concept="3NFfHV" id="4vxQe1hsrVE" role="3NFExx">
                                  <node concept="3clFbS" id="4vxQe1hsrVG" role="2VODD2">
                                    <node concept="3cpWs6" id="4vxQe1hsrW3" role="3cqZAp">
                                      <node concept="2OqwBi" id="4vxQe1hsrW4" role="3cqZAk">
                                        <node concept="2qgKlT" id="4vxQe1hsrW5" role="2OqNvi">
                                          <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                        </node>
                                        <node concept="2OqwBi" id="4vxQe1hsrW6" role="2Oq$k0">
                                          <node concept="3TrEf2" id="4vxQe1hsrW7" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                                          </node>
                                          <node concept="30H73N" id="4vxQe1hsrW8" role="2Oq$k0" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tm1VV" id="4vxQe1hs6Mi" role="1B3o_S" />
                          <node concept="3clFb_" id="4vxQe1hs6Mj" role="jymVt">
                            <property role="IEkAT" value="false" />
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="compute" />
                            <property role="DiZV1" value="false" />
                            <node concept="3Tm1VV" id="4vxQe1hs6Mk" role="1B3o_S" />
                            <node concept="3clFbS" id="4vxQe1hs6Mn" role="3clF47">
                              <node concept="3cpWs6" id="4vxQe1ht5VD" role="3cqZAp">
                                <node concept="2b32R4" id="4vxQe1hta2b" role="lGtFl">
                                  <node concept="3JmXsc" id="4vxQe1hta2d" role="2P8S$">
                                    <node concept="3clFbS" id="4vxQe1hta2f" role="2VODD2">
                                      <node concept="3cpWs6" id="4vxQe1htcBV" role="3cqZAp">
                                        <node concept="2OqwBi" id="4vxQe1htflK" role="3cqZAk">
                                          <node concept="3Tsc0h" id="4vxQe1htj19" role="2OqNvi">
                                            <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                          </node>
                                          <node concept="2OqwBi" id="4vxQe1htcBW" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4vxQe1htcBX" role="2Oq$k0">
                                              <node concept="3TrEf2" id="4vxQe1htcBY" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:h8D04f9" />
                                              </node>
                                              <node concept="30H73N" id="4vxQe1htcBZ" role="2Oq$k0" />
                                            </node>
                                            <node concept="3TrEf2" id="4vxQe1htcC0" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="10Nm6u" id="4vxQe1ht7X5" role="3cqZAk" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="4vxQe1hsvNr" role="3clF45">
                              <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                              <node concept="3uibUv" id="4vxQe1hsxYH" role="11_B2D">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                <node concept="29HgVG" id="4vxQe1hsz7I" role="lGtFl">
                                  <node concept="3NFfHV" id="4vxQe1hsz7K" role="3NFExx">
                                    <node concept="3clFbS" id="4vxQe1hsz7M" role="2VODD2">
                                      <node concept="3cpWs6" id="4vxQe1hsz89" role="3cqZAp">
                                        <node concept="2OqwBi" id="4vxQe1hsz8a" role="3cqZAk">
                                          <node concept="2qgKlT" id="4vxQe1hsz8b" role="2OqNvi">
                                            <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                          </node>
                                          <node concept="2OqwBi" id="4vxQe1hsz8c" role="2Oq$k0">
                                            <node concept="3TrEf2" id="4vxQe1hsz8d" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                                            </node>
                                            <node concept="30H73N" id="4vxQe1hsz8e" role="2Oq$k0" />
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
                  <node concept="3uibUv" id="h8D4dLq" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                    <node concept="3uibUv" id="h8D5QnH" role="11_B2D">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      <node concept="29HgVG" id="h8D5TeX" role="lGtFl">
                        <node concept="3NFfHV" id="h8D5TeY" role="3NFExx">
                          <node concept="3clFbS" id="h8D5TeZ" role="2VODD2">
                            <node concept="3cpWs6" id="h8D5Wi1" role="3cqZAp">
                              <node concept="2OqwBi" id="4vxQe1hsbWg" role="3cqZAk">
                                <node concept="2qgKlT" id="4vxQe1hsdIR" role="2OqNvi">
                                  <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                </node>
                                <node concept="2OqwBi" id="hxx_2kD" role="2Oq$k0">
                                  <node concept="3TrEf2" id="h8D5XlY" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                                  </node>
                                  <node concept="30H73N" id="h8D5WxV" role="2Oq$k0" />
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
              <node concept="3clFbJ" id="4vxQe1htvOS" role="3cqZAp">
                <node concept="3y3z36" id="4vxQe1htFMY" role="3clFbw">
                  <node concept="10Nm6u" id="4vxQe1htH8p" role="3uHU7w" />
                  <node concept="37vLTw" id="4vxQe1htxFf" role="3uHU7B">
                    <ref role="3cqZAo" node="h8D4dLp" resolve="parameterObjects" />
                  </node>
                </node>
                <node concept="3clFbS" id="4vxQe1htvOU" role="3clFbx">
                  <node concept="1DcWWT" id="h8D6cLz" role="3cqZAp">
                    <node concept="3clFbS" id="h8D6cLB" role="2LFqv$">
                      <node concept="3clFbF" id="h8D6mBx" role="3cqZAp">
                        <node concept="2OqwBi" id="h_XQISX" role="3clFbG">
                          <node concept="TSZUe" id="i1GGODD" role="2OqNvi">
                            <node concept="2ShNRf" id="i1GGODE" role="25WWJ7">
                              <node concept="YeOm9" id="i1GGODF" role="2ShVmc">
                                <node concept="1Y3b0j" id="i1GGODG" role="YeSDq">
                                  <ref role="1Y3XeK" to="zce0:~AbstractSideTransformHintSubstituteAction" resolve="AbstractSideTransformHintSubstituteAction" />
                                  <ref role="37wK5l" to="zce0:~AbstractSideTransformHintSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.Object,org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractSideTransformHintSubstituteAction" />
                                  <node concept="3TUQnm" id="4vxQe1hrIf2" role="37wK5m">
                                    <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                    <node concept="1ZhdrF" id="4vxQe1hrIf3" role="lGtFl">
                                      <property role="2qtEX8" value="conceptDeclaration" />
                                      <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                                      <node concept="3$xsQk" id="4vxQe1hrIf4" role="3$ytzL">
                                        <node concept="3clFbS" id="4vxQe1hrIf5" role="2VODD2">
                                          <node concept="3cpWs6" id="4vxQe1hrIf6" role="3cqZAp">
                                            <node concept="2OqwBi" id="4vxQe1hrIf7" role="3cqZAk">
                                              <node concept="1PxgMI" id="4vxQe1hrIf8" role="2Oq$k0">
                                                <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                                <node concept="2OqwBi" id="4vxQe1hrIf9" role="1PxMeX">
                                                  <node concept="30H73N" id="4vxQe1hx0$R" role="2Oq$k0" />
                                                  <node concept="1mfA1w" id="4vxQe1hrIfa" role="2OqNvi" />
                                                </node>
                                              </node>
                                              <node concept="3TrEf2" id="4vxQe1hrIfc" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="i1GGODH" role="jymVt">
                                    <property role="TrG5h" value="doSubstitute" />
                                    <node concept="37vLTG" id="28rIX8TXrFz" role="3clF46">
                                      <property role="TrG5h" value="editorContext" />
                                      <property role="3TUv4t" value="true" />
                                      <node concept="3uibUv" id="28rIX8TXEPh" role="1tU5fm">
                                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                      </node>
                                      <node concept="2AHcQZ" id="28rIX8TXEZH" role="2AJF6D">
                                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                      </node>
                                    </node>
                                    <node concept="3Tqbb2" id="i2srCbG" role="3clF45" />
                                    <node concept="37vLTG" id="i1GGODI" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="i1GGODJ" role="1tU5fm" />
                                    </node>
                                    <node concept="3clFbS" id="i1GGODL" role="3clF47">
                                      <node concept="29HgVG" id="i1GGODM" role="lGtFl">
                                        <node concept="3NFfHV" id="i1GGODN" role="3NFExx">
                                          <node concept="3clFbS" id="i1GGODO" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGODP" role="3cqZAp">
                                              <node concept="2OqwBi" id="i1GGODQ" role="3cqZAk">
                                                <node concept="2OqwBi" id="i1GGODR" role="2Oq$k0">
                                                  <node concept="3TrEf2" id="i1GGODT" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:h8D0eYs" />
                                                  </node>
                                                  <node concept="30H73N" id="i1GGODS" role="2Oq$k0" />
                                                </node>
                                                <node concept="3TrEf2" id="i1GGODU" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3Tm1VV" id="i1GGODV" role="1B3o_S" />
                                  </node>
                                  <node concept="3Tm1VV" id="i1GGOG2" role="1B3o_S" />
                                  <node concept="37vLTw" id="3GM_nagTuvP" role="37wK5m">
                                    <ref role="3cqZAo" node="h8D6cL_" resolve="item" />
                                  </node>
                                  <node concept="2OqwBi" id="i1GGOFZ" role="37wK5m">
                                    <node concept="37vLTw" id="2BHiRxgltb3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="htvbWzD" resolve="_context" />
                                    </node>
                                    <node concept="liA8E" id="i1GGOG1" role="2OqNvi">
                                      <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="i1GGOE2" role="jymVt">
                                    <property role="TrG5h" value="getMatchingText" />
                                    <node concept="37vLTG" id="i1GGOEe" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="i1GGOEf" role="1tU5fm" />
                                    </node>
                                    <node concept="17QB3L" id="i1GGOE3" role="3clF45" />
                                    <node concept="3clFbS" id="i1GGOE4" role="3clF47">
                                      <node concept="29HgVG" id="i1GGOE5" role="lGtFl">
                                        <node concept="3NFfHV" id="i1GGOE6" role="3NFExx">
                                          <node concept="3clFbS" id="i1GGOE7" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGOE8" role="3cqZAp">
                                              <node concept="2OqwBi" id="i1GGOE9" role="3cqZAk">
                                                <node concept="3TrEf2" id="3JzLIOkA6XA" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                </node>
                                                <node concept="1PxgMI" id="3JzLIOkA28d" role="2Oq$k0">
                                                  <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                                  <node concept="2OqwBi" id="i1GGOEa" role="1PxMeX">
                                                    <node concept="30H73N" id="i1GGOEb" role="2Oq$k0" />
                                                    <node concept="3TrEf2" id="i1GGOEc" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:h8D06T$" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3Tm1VV" id="i1GGOEr" role="1B3o_S" />
                                    <node concept="1W57fq" id="i1GGOEg" role="lGtFl">
                                      <node concept="3IZrLx" id="i1GGOEh" role="3IZSJc">
                                        <node concept="3clFbS" id="i1GGOEi" role="2VODD2">
                                          <node concept="3cpWs6" id="i1GGOEj" role="3cqZAp">
                                            <node concept="2OqwBi" id="i1GGOEm" role="3cqZAk">
                                              <node concept="2OqwBi" id="i1GGOEn" role="2Oq$k0">
                                                <node concept="30H73N" id="i1GGOEo" role="2Oq$k0" />
                                                <node concept="3TrEf2" id="i1GGOEp" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8D06T$" />
                                                </node>
                                              </node>
                                              <node concept="1mIQ4w" id="3JzLIOk_WHO" role="2OqNvi">
                                                <node concept="chp4Y" id="3JzLIOk_X_w" role="cj9EA">
                                                  <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="i1GGOEs" role="jymVt">
                                    <property role="TrG5h" value="getVisibleMatchingText" />
                                    <node concept="17QB3L" id="i1GGOEt" role="3clF45" />
                                    <node concept="3clFbS" id="i1GGOEu" role="3clF47">
                                      <node concept="3cpWs6" id="4vxQe1hyMgk" role="3cqZAp">
                                        <node concept="1rXfSq" id="4vxQe1hyQuH" role="3cqZAk">
                                          <ref role="37wK5l" node="i1GGOE2" resolve="getMatchingText" />
                                          <node concept="37vLTw" id="4vxQe1hySKB" role="37wK5m">
                                            <ref role="3cqZAo" node="i1GGOE$" resolve="pattern" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1W57fq" id="i1GGOEA" role="lGtFl">
                                      <node concept="3IZrLx" id="i1GGOEB" role="3IZSJc">
                                        <node concept="3clFbS" id="i1GGOEC" role="2VODD2">
                                          <node concept="3cpWs6" id="3JzLIOkAhhm" role="3cqZAp">
                                            <node concept="2OqwBi" id="3JzLIOkAhhn" role="3cqZAk">
                                              <node concept="2OqwBi" id="3JzLIOkAhho" role="2Oq$k0">
                                                <node concept="30H73N" id="3JzLIOkAhhp" role="2Oq$k0" />
                                                <node concept="3TrEf2" id="3JzLIOkAhhq" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8D06T$" />
                                                </node>
                                              </node>
                                              <node concept="1mIQ4w" id="3JzLIOkAhhr" role="2OqNvi">
                                                <node concept="chp4Y" id="3JzLIOkAhhs" role="cj9EA">
                                                  <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTG" id="i1GGOE$" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="i1GGOE_" role="1tU5fm" />
                                    </node>
                                    <node concept="3Tm1VV" id="i1GGOEL" role="1B3o_S" />
                                  </node>
                                  <node concept="3clFb_" id="i1GGOEM" role="jymVt">
                                    <property role="TrG5h" value="getDescriptionText" />
                                    <node concept="3Tm1VV" id="i1GGOFb" role="1B3o_S" />
                                    <node concept="1W57fq" id="i1GGOF0" role="lGtFl">
                                      <node concept="3IZrLx" id="i1GGOF1" role="3IZSJc">
                                        <node concept="3clFbS" id="i1GGOF2" role="2VODD2">
                                          <node concept="3cpWs6" id="i1GGOF3" role="3cqZAp">
                                            <node concept="2OqwBi" id="i1GGOF6" role="3cqZAk">
                                              <node concept="2OqwBi" id="i1GGOF7" role="2Oq$k0">
                                                <node concept="3TrEf2" id="i1GGOF9" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:h8D0cgn" />
                                                </node>
                                                <node concept="30H73N" id="i1GGOF8" role="2Oq$k0" />
                                              </node>
                                              <node concept="1mIQ4w" id="3JzLIOkAC6k" role="2OqNvi">
                                                <node concept="chp4Y" id="3JzLIOkAD5X" role="cj9EA">
                                                  <ref role="cht4Q" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTG" id="i1GGOEY" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="i1GGOEZ" role="1tU5fm" />
                                    </node>
                                    <node concept="17QB3L" id="i1GGOEN" role="3clF45" />
                                    <node concept="3clFbS" id="i1GGOEO" role="3clF47">
                                      <node concept="29HgVG" id="i1GGOEP" role="lGtFl">
                                        <node concept="3NFfHV" id="i1GGOEQ" role="3NFExx">
                                          <node concept="3clFbS" id="i1GGOER" role="2VODD2">
                                            <node concept="3cpWs6" id="i1GGOES" role="3cqZAp">
                                              <node concept="2OqwBi" id="i1GGOET" role="3cqZAk">
                                                <node concept="3TrEf2" id="3JzLIOkAJW_" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                </node>
                                                <node concept="1PxgMI" id="3JzLIOkAGk_" role="2Oq$k0">
                                                  <ref role="1PxNhF" to="tpee:gyVMwX8" resolve="ConceptFunction" />
                                                  <node concept="2OqwBi" id="i1GGOEU" role="1PxMeX">
                                                    <node concept="30H73N" id="i1GGOEV" role="2Oq$k0" />
                                                    <node concept="3TrEf2" id="i1GGOEW" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:h8D0cgn" />
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
                                  <node concept="3clFb_" id="i1GGOFc" role="jymVt">
                                    <property role="TrG5h" value="getIconNode" />
                                    <node concept="3Tqbb2" id="4vxQe1hCCtH" role="3clF45" />
                                    <node concept="3Tm1VV" id="i1GGOFd" role="1B3o_S" />
                                    <node concept="37vLTG" id="i1GGOFf" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="i1GGOFg" role="1tU5fm" />
                                    </node>
                                    <node concept="1W57fq" id="i1GGOFr" role="lGtFl">
                                      <node concept="3IZrLx" id="i1GGOFs" role="3IZSJc">
                                        <node concept="3clFbS" id="i1GGOFt" role="2VODD2">
                                          <node concept="3clFbF" id="i1GGOFu" role="3cqZAp">
                                            <node concept="3y3z36" id="i1GGOFv" role="3clFbG">
                                              <node concept="2OqwBi" id="i1GGOFy" role="3uHU7B">
                                                <node concept="3TrEf2" id="4vxQe1hCtBI" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:4vxQe1hzArQ" />
                                                </node>
                                                <node concept="30H73N" id="i1GGOFz" role="2Oq$k0" />
                                              </node>
                                              <node concept="10Nm6u" id="i1GGOFw" role="3uHU7w" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4vxQe1hCQ0I" role="3clF47">
                                      <node concept="3cpWs6" id="4vxQe1hCQ0H" role="3cqZAp">
                                        <node concept="2b32R4" id="4vxQe1hCXjD" role="lGtFl">
                                          <node concept="3JmXsc" id="4vxQe1hCXjF" role="2P8S$">
                                            <node concept="3clFbS" id="4vxQe1hCXjH" role="2VODD2">
                                              <node concept="3clFbF" id="4vxQe1hCZC7" role="3cqZAp">
                                                <node concept="2OqwBi" id="4vxQe1hD6gI" role="3clFbG">
                                                  <node concept="3Tsc0h" id="4vxQe1hD8bO" role="2OqNvi">
                                                    <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                                  </node>
                                                  <node concept="2OqwBi" id="4vxQe1hD2mM" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="4vxQe1hD4ev" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                    </node>
                                                    <node concept="2OqwBi" id="4vxQe1hCZJj" role="2Oq$k0">
                                                      <node concept="3TrEf2" id="4vxQe1hD0Xw" role="2OqNvi">
                                                        <ref role="3Tt5mk" to="tpdg:4vxQe1hzArQ" />
                                                      </node>
                                                      <node concept="30H73N" id="4vxQe1hCZC6" role="2Oq$k0" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="10Nm6u" id="4vxQe1hCT8N" role="3cqZAk" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="i1GGOFA" role="jymVt">
                                    <property role="TrG5h" value="getActionType" />
                                    <node concept="3clFbS" id="i1GGOFF" role="3clF47">
                                      <node concept="29HgVG" id="i1GGOFG" role="lGtFl">
                                        <node concept="3NFfHV" id="i1GGOFH" role="3NFExx">
                                          <node concept="3clFbS" id="i1GGOFI" role="2VODD2">
                                            <node concept="3clFbF" id="i1GGOFJ" role="3cqZAp">
                                              <node concept="2OqwBi" id="i1GGOFK" role="3clFbG">
                                                <node concept="3TrEf2" id="i1GGOFO" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                                </node>
                                                <node concept="2OqwBi" id="i1GGOFL" role="2Oq$k0">
                                                  <node concept="30H73N" id="i1GGOFM" role="2Oq$k0" />
                                                  <node concept="3TrEf2" id="i1GGOFN" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTG" id="i1GGOFD" role="3clF46">
                                      <property role="TrG5h" value="pattern" />
                                      <node concept="17QB3L" id="18nccIwC3Y0" role="1tU5fm" />
                                    </node>
                                    <node concept="3Tm1VV" id="i1GGOFB" role="1B3o_S" />
                                    <node concept="1W57fq" id="i1GGOFP" role="lGtFl">
                                      <node concept="3IZrLx" id="i1GGOFQ" role="3IZSJc">
                                        <node concept="3clFbS" id="i1GGOFR" role="2VODD2">
                                          <node concept="3clFbF" id="i1GGOFS" role="3cqZAp">
                                            <node concept="3y3z36" id="i1GGOFT" role="3clFbG">
                                              <node concept="10Nm6u" id="i1GGOFU" role="3uHU7w" />
                                              <node concept="2OqwBi" id="i1GGOFV" role="3uHU7B">
                                                <node concept="30H73N" id="i1GGOFW" role="2Oq$k0" />
                                                <node concept="3TrEf2" id="i1GGOFX" role="2OqNvi">
                                                  <ref role="3Tt5mk" to="tpdg:hTNDbYj" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3Tqbb2" id="i2srAXN" role="3clF45" />
                                  </node>
                                  <node concept="3clFb_" id="2KPNJVW$9U2" role="jymVt">
                                    <property role="1EzhhJ" value="false" />
                                    <property role="TrG5h" value="isEnabled" />
                                    <property role="DiZV1" value="false" />
                                    <property role="IEkAT" value="false" />
                                    <node concept="3Tmbuc" id="2KPNJVW$9U3" role="1B3o_S" />
                                    <node concept="10P_77" id="2KPNJVW$9U5" role="3clF45" />
                                    <node concept="3clFbS" id="2KPNJVW$9U7" role="3clF47">
                                      <node concept="3cpWs8" id="2KPNJVW$ibA" role="3cqZAp">
                                        <node concept="3cpWsn" id="2KPNJVW$ibB" role="3cpWs9">
                                          <property role="TrG5h" value="sourceNode" />
                                          <node concept="3Tqbb2" id="2KPNJVW$ibC" role="1tU5fm" />
                                          <node concept="1rXfSq" id="2KPNJVW$ibD" role="33vP2m">
                                            <ref role="37wK5l" to="zce0:~AbstractNodeSubstituteAction.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="2KPNJVW$ibE" role="3cqZAp">
                                        <node concept="3cpWsn" id="2KPNJVW$ibF" role="3cpWs9">
                                          <property role="TrG5h" value="parent" />
                                          <node concept="3Tqbb2" id="2KPNJVW$ibG" role="1tU5fm" />
                                          <node concept="2OqwBi" id="2KPNJVW$ibH" role="33vP2m">
                                            <node concept="37vLTw" id="2KPNJVW$ibI" role="2Oq$k0">
                                              <ref role="3cqZAo" node="2KPNJVW$ibB" resolve="sourceNode" />
                                            </node>
                                            <node concept="1mfA1w" id="2KPNJVW$ibJ" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs8" id="2KPNJVW$ibK" role="3cqZAp">
                                        <node concept="3cpWsn" id="2KPNJVW$ibL" role="3cpWs9">
                                          <property role="TrG5h" value="containingLink" />
                                          <node concept="3Tqbb2" id="2KPNJVW$ibM" role="1tU5fm">
                                            <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                                          </node>
                                          <node concept="2OqwBi" id="2KPNJVW$ibN" role="33vP2m">
                                            <node concept="37vLTw" id="2KPNJVW$ibO" role="2Oq$k0">
                                              <ref role="3cqZAo" node="2KPNJVW$ibB" resolve="sourceNode" />
                                            </node>
                                            <node concept="25OxAV" id="2KPNJVW$ibP" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWs6" id="2KPNJVW$ibQ" role="3cqZAp">
                                        <node concept="22lmx$" id="2KPNJVW$ibR" role="3cqZAk">
                                          <node concept="1eOMI4" id="2KPNJVW$ibS" role="3uHU7w">
                                            <node concept="1Wc70l" id="2KPNJVW$ibT" role="1eOMHV">
                                              <node concept="2YIFZM" id="2KPNJVW$ibU" role="3uHU7B">
                                                <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                                                <ref role="37wK5l" to="ykok:~ModelConstraints.canBeParent(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeParent" />
                                                <node concept="37vLTw" id="2KPNJVW$ibV" role="37wK5m">
                                                  <ref role="3cqZAo" node="2KPNJVW$ibF" resolve="parent" />
                                                </node>
                                                <node concept="3TUQnm" id="2KPNJVW$ibW" role="37wK5m">
                                                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                                  <node concept="1ZhdrF" id="2KPNJVW$ibX" role="lGtFl">
                                                    <property role="2qtEX8" value="conceptDeclaration" />
                                                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                                                    <node concept="3$xsQk" id="2KPNJVW$ibY" role="3$ytzL">
                                                      <node concept="3clFbS" id="2KPNJVW$ibZ" role="2VODD2">
                                                        <node concept="3cpWs6" id="2KPNJVW$ic0" role="3cqZAp">
                                                          <node concept="2OqwBi" id="2KPNJVW$ic1" role="3cqZAk">
                                                            <node concept="1PxgMI" id="2KPNJVW$ic2" role="2Oq$k0">
                                                              <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                                              <node concept="2OqwBi" id="2KPNJVW$ic3" role="1PxMeX">
                                                                <node concept="30H73N" id="2KPNJVW$ic4" role="2Oq$k0" />
                                                                <node concept="1mfA1w" id="2KPNJVW$ic5" role="2OqNvi" />
                                                              </node>
                                                            </node>
                                                            <node concept="3TrEf2" id="2KPNJVW$ic6" role="2OqNvi">
                                                              <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="2KPNJVW$ic7" role="37wK5m">
                                                  <ref role="3cqZAo" node="2KPNJVW$ibL" resolve="containingLink" />
                                                </node>
                                                <node concept="10Nm6u" id="2KPNJVW$ic8" role="37wK5m" />
                                                <node concept="10Nm6u" id="2KPNJVW$ic9" role="37wK5m" />
                                              </node>
                                              <node concept="2YIFZM" id="2KPNJVW$ica" role="3uHU7w">
                                                <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                                                <ref role="37wK5l" to="ykok:~ModelConstraints.canBeAncestor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeAncestor" />
                                                <node concept="37vLTw" id="2KPNJVW$icb" role="37wK5m">
                                                  <ref role="3cqZAo" node="2KPNJVW$ibF" resolve="parent" />
                                                </node>
                                                <node concept="10Nm6u" id="2KPNJVW$icc" role="37wK5m" />
                                                <node concept="3TUQnm" id="2KPNJVW$icd" role="37wK5m">
                                                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                                                  <node concept="1ZhdrF" id="2KPNJVW$ice" role="lGtFl">
                                                    <property role="2qtEX8" value="conceptDeclaration" />
                                                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                                                    <node concept="3$xsQk" id="2KPNJVW$icf" role="3$ytzL">
                                                      <node concept="3clFbS" id="2KPNJVW$icg" role="2VODD2">
                                                        <node concept="3cpWs6" id="2KPNJVW$ich" role="3cqZAp">
                                                          <node concept="2OqwBi" id="2KPNJVW$ici" role="3cqZAk">
                                                            <node concept="1PxgMI" id="2KPNJVW$icj" role="2Oq$k0">
                                                              <ref role="1PxNhF" to="tpdg:h8uyZJX" resolve="ConceptPart" />
                                                              <node concept="2OqwBi" id="2KPNJVW$ick" role="1PxMeX">
                                                                <node concept="30H73N" id="2KPNJVW$icl" role="2Oq$k0" />
                                                                <node concept="1mfA1w" id="2KPNJVW$icm" role="2OqNvi" />
                                                              </node>
                                                            </node>
                                                            <node concept="3TrEf2" id="2KPNJVW$icn" role="2OqNvi">
                                                              <ref role="3Tt5mk" to="tpdg:h8uz4YJ" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="10Nm6u" id="2KPNJVW$ico" role="37wK5m" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="22lmx$" id="2KPNJVW$icp" role="3uHU7B">
                                            <node concept="3clFbC" id="2KPNJVW$icq" role="3uHU7B">
                                              <node concept="37vLTw" id="2KPNJVW$icr" role="3uHU7B">
                                                <ref role="3cqZAo" node="2KPNJVW$ibF" resolve="parent" />
                                              </node>
                                              <node concept="10Nm6u" id="2KPNJVW$ics" role="3uHU7w" />
                                            </node>
                                            <node concept="3clFbC" id="2KPNJVW$ict" role="3uHU7w">
                                              <node concept="37vLTw" id="2KPNJVW$icu" role="3uHU7B">
                                                <ref role="3cqZAo" node="2KPNJVW$ibL" resolve="containingLink" />
                                              </node>
                                              <node concept="10Nm6u" id="2KPNJVW$icv" role="3uHU7w" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="2KPNJVW$9U8" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTBUm" role="2Oq$k0">
                            <ref role="3cqZAo" node="h8D3Pcd" resolve="result" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="h8D6cL_" role="1Duv9x">
                      <property role="TrG5h" value="item" />
                      <property role="3TUv4t" value="true" />
                      <node concept="3uibUv" id="h8D6dpl" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        <node concept="29HgVG" id="h8D6giU" role="lGtFl">
                          <node concept="3NFfHV" id="h8D6giV" role="3NFExx">
                            <node concept="3clFbS" id="h8D6giW" role="2VODD2">
                              <node concept="3cpWs6" id="h8D6hd5" role="3cqZAp">
                                <node concept="2OqwBi" id="4vxQe1huCsQ" role="3cqZAk">
                                  <node concept="2qgKlT" id="4vxQe1huFbg" role="2OqNvi">
                                    <ref role="37wK5l" to="tpek:hEwIzNC" resolve="getBoxedType" />
                                  </node>
                                  <node concept="2OqwBi" id="hxx$NB2" role="2Oq$k0">
                                    <node concept="3TrEf2" id="h8D6i16" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:h8D02pH" />
                                    </node>
                                    <node concept="30H73N" id="h8D6hri" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTrrC" role="1DdaDG">
                      <ref role="3cqZAo" node="h8D4dLp" resolve="parameterObjects" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="h8D3PdE" role="lGtFl" />
          </node>
          <node concept="3cpWs6" id="h8D3PdG" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTyfk" role="3cqZAk">
              <ref role="3cqZAo" node="h8D3Pcd" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="h8D3Pc9" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="h8D3Pca" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htvbWzD" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$cNbK" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformActionsBuilderContext" resolve="SideTransformActionsBuilderContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3Lpv" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h8EahK9">
    <property role="TrG5h" value="reduce_ConceptFunctionParameter_result" />
    <ref role="3gUMe" to="tpdg:h8E3goq" resolve="ConceptFunctionParameter_result" />
    <node concept="312cEu" id="h8EahKa" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="3clFb_" id="h8EahKb" role="jymVt">
        <property role="TrG5h" value="_method_" />
        <node concept="3Tqbb2" id="44uAAgK4w1i" role="3clF45" />
        <node concept="3Tm1VV" id="h9AO$pE" role="1B3o_S" />
        <node concept="37vLTG" id="7aOaZHqcpzB" role="3clF46">
          <property role="TrG5h" value="result" />
          <node concept="3Tqbb2" id="7aOaZHqcpzD" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="h8EahKd" role="3clF47">
          <node concept="3cpWs6" id="7aOaZHqcpzH" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxgm5Xv" role="3cqZAk">
              <ref role="3cqZAo" node="7aOaZHqcpzB" resolve="result" />
              <node concept="raruj" id="7aOaZHqcpzN" role="lGtFl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3LqT" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="h9A_ugw">
    <property role="TrG5h" value="reduce_SubstituteNodeBuilderVariableReference" />
    <ref role="3gUMe" to="tpdg:h9AzSZ$" resolve="SubstituteNodeBuilderVariableReference" />
    <node concept="9aQIb" id="hAUGKXh" role="13RCb5">
      <node concept="3clFbS" id="hAUGKXi" role="9aQI4">
        <node concept="3clFbF" id="hAUGLhN" role="3cqZAp">
          <node concept="3VmV3z" id="hAUGLhO" role="3clFbG">
            <property role="3VnrPo" value="name" />
            <node concept="3uibUv" id="hAUGLhP" role="3Vn4Tt">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              <node concept="29HgVG" id="hAUGLhQ" role="lGtFl">
                <node concept="3NFfHV" id="hAUGLhR" role="3NFExx">
                  <node concept="3clFbS" id="hAUGLhS" role="2VODD2">
                    <node concept="3clFbF" id="hAUGN0w" role="3cqZAp">
                      <node concept="2OqwBi" id="hAUGLhU" role="3clFbG">
                        <node concept="2OqwBi" id="hAUGLhV" role="2Oq$k0">
                          <node concept="30H73N" id="hAUGLhW" role="2Oq$k0" />
                          <node concept="3TrEf2" id="hAUGLhX" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpdg:h9A$1f_" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="hAUGLhY" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="hAUGLhZ" role="lGtFl" />
            <node concept="17Uvod" id="hAUGLi0" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1176743162354/1176743296073" />
              <node concept="3zFVjK" id="hAUGLi1" role="3zH0cK">
                <node concept="3clFbS" id="hAUGLi2" role="2VODD2">
                  <node concept="3clFbF" id="hAUFkkb" role="3cqZAp">
                    <node concept="2OqwBi" id="hAUGLi4" role="3clFbG">
                      <node concept="2OqwBi" id="hAUGLi5" role="2Oq$k0">
                        <node concept="30H73N" id="hAUGLi6" role="2Oq$k0" />
                        <node concept="3TrEf2" id="hAUGLi7" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpdg:h9A$1f_" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="hAUGLi8" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
  <node concept="13MO4I" id="hb4jLoe">
    <property role="TrG5h" value="RegisterMenuBuilder_Include_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:hb46O4k" resolve="IncludeRightTransformForNodePart" />
    <node concept="312cEu" id="hb4jLof" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="hb4jLog" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="37vLTG" id="hb4jLop" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="hb4jLoq" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="3clFbS" id="hb4jLor" role="3clF47">
          <node concept="3cpWs8" id="hb4jLos" role="3cqZAp">
            <node concept="3cpWsn" id="hb4jLot" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2ShNRf" id="hHLolv6" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGyhO" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9irb_" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="i1GGyb1" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9iqHL" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hb4jLpg" role="3cqZAp">
            <node concept="2OqwBi" id="hG7RpQJ" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTz$m" role="2Oq$k0">
                <ref role="3cqZAo" node="hb4jLot" resolve="result" />
              </node>
              <node concept="X8dFx" id="i1GGOMQ" role="2OqNvi">
                <node concept="2YIFZM" id="5dLITL9q1s9" role="25WWJ7">
                  <ref role="37wK5l" to="zce0:~ModelActions.createSideTransformHintSubstituteActions(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.CellSide,java.lang.String,jetbrains.mps.smodel.IOperationContext):java.util.List" resolve="createSideTransformHintSubstituteActions" />
                  <ref role="1Pybhc" to="zce0:~ModelActions" resolve="ModelActions" />
                  <node concept="2OqwBi" id="4vxQe1hbI5j" role="37wK5m">
                    <node concept="liA8E" id="4vxQe1hbJHi" role="2OqNvi">
                      <ref role="37wK5l" node="4vxQe1hbFYK" resolve="compute" />
                    </node>
                    <node concept="2ShNRf" id="4vxQe1hbFjb" role="2Oq$k0">
                      <node concept="YeOm9" id="4vxQe1hbFYF" role="2ShVmc">
                        <node concept="1Y3b0j" id="4vxQe1hbFYI" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <node concept="3Tqbb2" id="4vxQe1hbGyZ" role="2Ghqu4" />
                          <node concept="3Tm1VV" id="4vxQe1hbFYJ" role="1B3o_S" />
                          <node concept="3clFb_" id="4vxQe1hbFYK" role="jymVt">
                            <property role="IEkAT" value="false" />
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="compute" />
                            <property role="DiZV1" value="false" />
                            <node concept="3Tqbb2" id="4vxQe1hbGK8" role="3clF45" />
                            <node concept="3Tm1VV" id="4vxQe1hbFYL" role="1B3o_S" />
                            <node concept="3clFbS" id="4vxQe1hbFYO" role="3clF47">
                              <node concept="3cpWs6" id="4vxQe1hbHaM" role="3cqZAp">
                                <node concept="2b32R4" id="4vxQe1hbM0I" role="lGtFl">
                                  <node concept="3JmXsc" id="4vxQe1hbM0K" role="2P8S$">
                                    <node concept="3clFbS" id="4vxQe1hbM0M" role="2VODD2">
                                      <node concept="3clFbF" id="4vxQe1hbMwJ" role="3cqZAp">
                                        <node concept="2OqwBi" id="4vxQe1hbPoA" role="3clFbG">
                                          <node concept="3Tsc0h" id="4vxQe1hbT3S" role="2OqNvi">
                                            <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                          </node>
                                          <node concept="2OqwBi" id="4vxQe1hbMwL" role="2Oq$k0">
                                            <node concept="3TrEf2" id="4vxQe1hbMwM" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                            </node>
                                            <node concept="2OqwBi" id="4vxQe1hbMwN" role="2Oq$k0">
                                              <node concept="30H73N" id="4vxQe1hbMwO" role="2Oq$k0" />
                                              <node concept="3TrEf2" id="4vxQe1hbMwP" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:hb484IO" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="10Nm6u" id="4vxQe1hbHnj" role="3cqZAk" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5dLITL9q1sb" role="37wK5m">
                    <node concept="liA8E" id="5dLITL9q1sc" role="2OqNvi">
                      <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getSide():jetbrains.mps.nodeEditor.CellSide" resolve="getSide" />
                    </node>
                    <node concept="37vLTw" id="5dLITL9q1sd" role="2Oq$k0">
                      <ref role="3cqZAo" node="htvch_0" resolve="_context" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5dLITL9q1se" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgm6Lo" role="2Oq$k0">
                      <ref role="3cqZAo" node="htvch_0" resolve="_context" />
                    </node>
                    <node concept="liA8E" id="5dLITL9q1sg" role="2OqNvi">
                      <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getTransformationTag():java.lang.String" resolve="getTransformationTag" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgheMr" role="37wK5m">
                    <ref role="3cqZAo" node="hb4jLop" resolve="operationContext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4vxQe1hc4ns" role="lGtFl" />
          </node>
          <node concept="3cpWs6" id="hb4jLpp" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTu7I" role="3cqZAk">
              <ref role="3cqZAo" node="hb4jLot" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="hb4jLpr" role="1B3o_S" />
        <node concept="_YKpA" id="i1GGy5t" role="3clF45">
          <node concept="3uibUv" id="5dLITL9ipx5" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="37vLTG" id="htvch_0" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$cAqO" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformActionsBuilderContext" resolve="SideTransformActionsBuilderContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hb4jLps" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="hb5AaIy">
    <property role="TrG5h" value="RegisterMenuBuilder_Concept_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:hb5xCbf" resolve="ConceptSubstitutePart" />
    <node concept="2YIFZL" id="hb5AaIz" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGy7N" role="3clF45">
        <node concept="3uibUv" id="5dLITL9yhkT" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="hb5AaII" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="hb5AaIJ" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htuQ7fT" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$bMeO" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="hb5AaIK" role="3clF47">
        <node concept="3cpWs8" id="hb5AaIL" role="3cqZAp">
          <node concept="3cpWsn" id="hb5AaIM" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGy4c" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9yhxp" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolx_" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGyhA" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9yhYV" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hb5AaJ_" role="3cqZAp">
          <node concept="2OqwBi" id="h_XQI81" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTyj8" role="2Oq$k0">
              <ref role="3cqZAo" node="hb5AaIM" resolve="result" />
            </node>
            <node concept="X8dFx" id="i1GGONE" role="2OqNvi">
              <node concept="2YIFZM" id="5dLITL9ynqD" role="25WWJ7">
                <ref role="1Pybhc" to="zce0:~ChildSubstituteActionsHelper" resolve="ChildSubstituteActionsHelper" />
                <ref role="37wK5l" to="zce0:~ChildSubstituteActionsHelper.createDefaultSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter):java.util.List" resolve="createDefaultSubstituteActions" />
                <node concept="3TUQnm" id="hKtYGKb" role="37wK5m">
                  <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                  <node concept="1ZhdrF" id="hKtYITM" role="lGtFl">
                    <property role="2qtEX8" value="conceptDeclaration" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                    <node concept="3$xsQk" id="hKtYITN" role="3$ytzL">
                      <node concept="3clFbS" id="hKtYITO" role="2VODD2">
                        <node concept="3clFbF" id="hKtYJJg" role="3cqZAp">
                          <node concept="2OqwBi" id="hKtYJK1" role="3clFbG">
                            <node concept="30H73N" id="hKtYJJh" role="2Oq$k0" />
                            <node concept="3TrEf2" id="hKtYL6W" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpdg:hb5y76X" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="5dLITL9ynqF" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgld_3" role="2Oq$k0">
                    <ref role="3cqZAo" node="htuQ7fT" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="5dLITL9ynqH" role="2OqNvi">
                    <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getParentNode():org.jetbrains.mps.openapi.model.SNode" resolve="getParentNode" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5dLITL9ynqI" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgh9Vb" role="2Oq$k0">
                    <ref role="3cqZAo" node="htuQ7fT" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="5dLITL9ynqK" role="2OqNvi">
                    <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getCurrentTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getCurrentTargetNode" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5dLITL9ynqL" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgm2tb" role="2Oq$k0">
                    <ref role="3cqZAo" node="htuQ7fT" resolve="_context" />
                  </node>
                  <node concept="liA8E" id="5dLITL9ynqN" role="2OqNvi">
                    <ref role="37wK5l" to="zce0:~NodeSubstituteActionsFactoryContext.getChildSetter():jetbrains.mps.smodel.action.IChildNodeSetter" resolve="getChildSetter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5zjZZw0AMZI" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="hb5AaJF" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTuVA" role="3cqZAk">
            <ref role="3cqZAo" node="hb5AaIM" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hb5AaJH" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="hd_BLa9">
    <property role="TrG5h" value="RegisterMenuBuilder_Concept_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:hd_wSsX" resolve="ConceptRightTransformPart" />
    <node concept="312cEu" id="hd_BLaa" role="13RCb5">
      <property role="TrG5h" value="_class_" />
      <node concept="2YIFZL" id="hd_BLab" role="jymVt">
        <property role="TrG5h" value="_query_method_" />
        <node concept="3Tm1VV" id="hd_BLc$" role="1B3o_S" />
        <node concept="_YKpA" id="i1GGy4I" role="3clF45">
          <node concept="3uibUv" id="5dLITL9lOhs" role="_ZDj9">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="3clFbS" id="hd_BLam" role="3clF47">
          <node concept="3cpWs8" id="hd_BLan" role="3cqZAp">
            <node concept="3cpWsn" id="hd_BLao" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="2ShNRf" id="hHLoltZ" role="33vP2m">
                <node concept="Tc6Ow" id="i1GGyhn" role="2ShVmc">
                  <node concept="3uibUv" id="5dLITL9lR0a" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
              <node concept="_YKpA" id="i1GGy5e" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9lQdi" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="hd_BLat" role="3cqZAp">
            <node concept="raruj" id="hd_BLcw" role="lGtFl" />
            <node concept="3clFbS" id="hd_BLau" role="9aQI4">
              <node concept="3cpWs8" id="28bwcmSSTBz" role="3cqZAp">
                <node concept="3cpWsn" id="28bwcmSSTB$" role="3cpWs9">
                  <property role="TrG5h" value="lastPattern" />
                  <property role="3TUv4t" value="true" />
                  <node concept="2ShNRf" id="28bwcmSSTBH" role="33vP2m">
                    <node concept="3$_iS1" id="28bwcmSSTBK" role="2ShVmc">
                      <node concept="3$GHV9" id="28bwcmSSTBL" role="3$GQph">
                        <node concept="3cmrfG" id="28bwcmSSXGe" role="3$I4v7">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="17QB3L" id="28bwcmSSTBN" role="3$_nBY" />
                    </node>
                  </node>
                  <node concept="10Q1$e" id="28bwcmSSTBB" role="1tU5fm">
                    <node concept="17QB3L" id="28bwcmSSTB_" role="10Q1$1" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4HcAOwD$Wl3" role="3cqZAp">
                <node concept="1W57fq" id="4HcAOwD_p$o" role="lGtFl">
                  <node concept="3IZrLx" id="4HcAOwD_p$p" role="3IZSJc">
                    <node concept="3clFbS" id="4HcAOwD_p$q" role="2VODD2">
                      <node concept="3clFbF" id="4HcAOwD_p_k" role="3cqZAp">
                        <node concept="22lmx$" id="4HcAOwD_p_l" role="3clFbG">
                          <node concept="2OqwBi" id="4HcAOwD_p_m" role="3uHU7w">
                            <node concept="2OqwBi" id="4HcAOwD_p_n" role="2Oq$k0">
                              <node concept="2Rf3mk" id="4HcAOwD_p_r" role="2OqNvi">
                                <node concept="1xMEDy" id="4HcAOwD_p_s" role="1xVPHs">
                                  <node concept="chp4Y" id="4HcAOwD_p_t" role="ri$Ld">
                                    <ref role="cht4Q" to="tpdg:4HcAOwD$HKO" resolve="ConceptFunctionParameter_targetNode" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4HcAOwD_p_o" role="2Oq$k0">
                                <node concept="3TrEf2" id="4HcAOwD_p_q" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:hd_xdhi" />
                                </node>
                                <node concept="30H73N" id="4HcAOwD_p_p" role="2Oq$k0" />
                              </node>
                            </node>
                            <node concept="3GX2aA" id="4HcAOwD_p_u" role="2OqNvi" />
                          </node>
                          <node concept="2OqwBi" id="4HcAOwD_p_v" role="3uHU7B">
                            <node concept="2OqwBi" id="4HcAOwD_p_w" role="2Oq$k0">
                              <node concept="30H73N" id="4HcAOwD_p_x" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4HcAOwD_p_y" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
                              </node>
                            </node>
                            <node concept="3x8VRR" id="4HcAOwD_p_z" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="4HcAOwD$Wl4" role="3cpWs9">
                  <property role="TrG5h" value="targetNode" />
                  <property role="3TUv4t" value="true" />
                  <node concept="2OqwBi" id="VCSzvn$t2i" role="33vP2m">
                    <node concept="2ShNRf" id="VCSzvn$t1F" role="2Oq$k0">
                      <node concept="YeOm9" id="VCSzvn$t1G" role="2ShVmc">
                        <node concept="1Y3b0j" id="VCSzvn$t1H" role="YeSDq">
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                          <node concept="3Tqbb2" id="4vxQe1h6Y_A" role="2Ghqu4" />
                          <node concept="3Tm1VV" id="VCSzvn$t1X" role="1B3o_S" />
                          <node concept="3clFb_" id="VCSzvn$t1I" role="jymVt">
                            <property role="TrG5h" value="compute" />
                            <node concept="3Tqbb2" id="4vxQe1h6ZxF" role="3clF45" />
                            <node concept="3Tm1VV" id="VCSzvn$t1K" role="1B3o_S" />
                            <node concept="3clFbS" id="VCSzvn$t1L" role="3clF47">
                              <node concept="3cpWs6" id="VCSzvn$t1V" role="3cqZAp">
                                <node concept="10Nm6u" id="VCSzvn$t1W" role="3cqZAk" />
                              </node>
                              <node concept="29HgVG" id="VCSzvn$t1M" role="lGtFl">
                                <node concept="3NFfHV" id="VCSzvn$t1N" role="3NFExx">
                                  <node concept="3clFbS" id="VCSzvn$t1O" role="2VODD2">
                                    <node concept="3cpWs6" id="VCSzvn$t1P" role="3cqZAp">
                                      <node concept="2OqwBi" id="VCSzvn$t1Q" role="3cqZAk">
                                        <node concept="3TrEf2" id="VCSzvn$t1U" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                        <node concept="2OqwBi" id="VCSzvn$t1R" role="2Oq$k0">
                                          <node concept="30H73N" id="VCSzvn$t1S" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="VCSzvn$t2y" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
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
                    <node concept="liA8E" id="VCSzvn$t2o" role="2OqNvi">
                      <ref role="37wK5l" node="VCSzvn$t1I" resolve="compute" />
                    </node>
                    <node concept="1W57fq" id="4HcAOwD_p__" role="lGtFl">
                      <node concept="gft3U" id="4HcAOwD_pAw" role="UU_$l">
                        <node concept="2OqwBi" id="4HcAOwD_pAy" role="gfFT$">
                          <node concept="liA8E" id="4HcAOwD_pA$" role="2OqNvi">
                            <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                          </node>
                          <node concept="37vLTw" id="2BHiRxglK7d" role="2Oq$k0">
                            <ref role="3cqZAo" node="htvcswb" resolve="_context" />
                          </node>
                        </node>
                      </node>
                      <node concept="3IZrLx" id="4HcAOwD_p_A" role="3IZSJc">
                        <node concept="3clFbS" id="4HcAOwD_p_B" role="2VODD2">
                          <node concept="3clFbF" id="4HcAOwD_p_C" role="3cqZAp">
                            <node concept="2OqwBi" id="4HcAOwD_pAq" role="3clFbG">
                              <node concept="3x8VRR" id="4HcAOwD_pAv" role="2OqNvi" />
                              <node concept="2OqwBi" id="4HcAOwD_p_Y" role="2Oq$k0">
                                <node concept="3TrEf2" id="4HcAOwD_pA4" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
                                </node>
                                <node concept="30H73N" id="4HcAOwD_p_D" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="4HcAOwD$Wl6" role="1tU5fm" />
                </node>
              </node>
              <node concept="3cpWs8" id="28bwcmSSFzy" role="3cqZAp">
                <node concept="3cpWsn" id="28bwcmSSFzz" role="3cpWs9">
                  <property role="TrG5h" value="list" />
                  <node concept="2YIFZM" id="5dLITL9pJul" role="33vP2m">
                    <ref role="37wK5l" to="zce0:~ModelActions.createChildNodeSubstituteActions(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.action.IChildNodeSetter,jetbrains.mps.smodel.IOperationContext):java.util.List" resolve="createChildNodeSubstituteActions" />
                    <ref role="1Pybhc" to="zce0:~ModelActions" resolve="ModelActions" />
                    <node concept="37vLTw" id="3GM_nagTy8n" role="37wK5m">
                      <ref role="3cqZAo" node="4HcAOwD$Wl4" resolve="targetNode" />
                      <node concept="1W57fq" id="5dLITL9pJun" role="lGtFl">
                        <node concept="gft3U" id="5dLITL9pJuo" role="UU_$l">
                          <node concept="2OqwBi" id="5dLITL9pJup" role="gfFT$">
                            <node concept="liA8E" id="5dLITL9pJuq" role="2OqNvi">
                              <ref role="37wK5l" to="zce0:~SideTransformActionsBuilderContext.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxglXPy" role="2Oq$k0">
                              <ref role="3cqZAo" node="htvcswb" resolve="_context" />
                            </node>
                          </node>
                        </node>
                        <node concept="3IZrLx" id="5dLITL9pJus" role="3IZSJc">
                          <node concept="3clFbS" id="5dLITL9pJut" role="2VODD2">
                            <node concept="3clFbF" id="5dLITL9pJuu" role="3cqZAp">
                              <node concept="22lmx$" id="5dLITL9pJuv" role="3clFbG">
                                <node concept="2OqwBi" id="5dLITL9pJuw" role="3uHU7B">
                                  <node concept="2OqwBi" id="5dLITL9pJux" role="2Oq$k0">
                                    <node concept="30H73N" id="5dLITL9pJuy" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="5dLITL9pJuz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
                                    </node>
                                  </node>
                                  <node concept="3x8VRR" id="5dLITL9pJu$" role="2OqNvi" />
                                </node>
                                <node concept="2OqwBi" id="5dLITL9pJu_" role="3uHU7w">
                                  <node concept="3GX2aA" id="5dLITL9pJuA" role="2OqNvi" />
                                  <node concept="2OqwBi" id="5dLITL9pJuB" role="2Oq$k0">
                                    <node concept="2Rf3mk" id="5dLITL9pJuC" role="2OqNvi">
                                      <node concept="1xMEDy" id="5dLITL9pJuD" role="1xVPHs">
                                        <node concept="chp4Y" id="5dLITL9pJuE" role="ri$Ld">
                                          <ref role="cht4Q" to="tpdg:4HcAOwD$HKO" resolve="ConceptFunctionParameter_targetNode" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="5dLITL9pJuF" role="2Oq$k0">
                                      <node concept="3TrEf2" id="5dLITL9pJuG" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpdg:hd_xdhi" />
                                      </node>
                                      <node concept="30H73N" id="5dLITL9pJuH" role="2Oq$k0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="10Nm6u" id="5dLITL9pJuI" role="37wK5m" />
                    <node concept="3TUQnm" id="5dLITL9pJuJ" role="37wK5m">
                      <ref role="3TV0OU" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                      <node concept="1ZhdrF" id="5dLITL9pJuK" role="lGtFl">
                        <property role="2qtEX8" value="conceptDeclaration" />
                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
                        <node concept="3$xsQk" id="5dLITL9pJuL" role="3$ytzL">
                          <node concept="3clFbS" id="5dLITL9pJuM" role="2VODD2">
                            <node concept="3clFbF" id="5dLITL9pJuN" role="3cqZAp">
                              <node concept="2OqwBi" id="5dLITL9pJuO" role="3clFbG">
                                <node concept="30H73N" id="5dLITL9pJuP" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5dLITL9pJuQ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:hd_xjhm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ShNRf" id="5dLITL9pJuR" role="37wK5m">
                      <node concept="YeOm9" id="5dLITL9pJuS" role="2ShVmc">
                        <node concept="1Y3b0j" id="5dLITL9pJuT" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="zce0:~AbstractChildNodeSetter" resolve="AbstractChildNodeSetter" />
                          <ref role="37wK5l" to="zce0:~AbstractChildNodeSetter.&lt;init&gt;()" resolve="AbstractChildNodeSetter" />
                          <node concept="3clFb_" id="5dLITL9pJuU" role="jymVt">
                            <property role="IEkAT" value="false" />
                            <property role="1EzhhJ" value="false" />
                            <property role="TrG5h" value="doExecute" />
                            <property role="DiZV1" value="false" />
                            <node concept="3clFbS" id="5dLITL9pJuV" role="3clF47">
                              <node concept="3clFbF" id="5dLITL9pJuW" role="3cqZAp">
                                <node concept="1rXfSq" id="4hiugqyz8K$" role="3clFbG">
                                  <ref role="37wK5l" node="5dLITL9pJv_" resolve="substitute" />
                                  <node concept="37vLTw" id="2BHiRxgllmV" role="37wK5m">
                                    <ref role="3cqZAo" node="5dLITL9pJvr" resolve="newChild" />
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagT$NJ" role="37wK5m">
                                    <ref role="3cqZAo" node="4HcAOwD$Wl4" resolve="targetNode" />
                                    <node concept="1W57fq" id="5dLITL9pJv0" role="lGtFl">
                                      <node concept="3IZrLx" id="5dLITL9pJv1" role="3IZSJc">
                                        <node concept="3clFbS" id="5dLITL9pJv2" role="2VODD2">
                                          <node concept="3clFbF" id="5dLITL9pJv3" role="3cqZAp">
                                            <node concept="22lmx$" id="5dLITL9pJv4" role="3clFbG">
                                              <node concept="2OqwBi" id="5dLITL9pJv5" role="3uHU7B">
                                                <node concept="2OqwBi" id="5dLITL9pJv6" role="2Oq$k0">
                                                  <node concept="3TrEf2" id="5dLITL9pJv7" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
                                                  </node>
                                                  <node concept="30H73N" id="5dLITL9pJv8" role="2Oq$k0" />
                                                </node>
                                                <node concept="3x8VRR" id="5dLITL9pJv9" role="2OqNvi" />
                                              </node>
                                              <node concept="2OqwBi" id="5dLITL9pJva" role="3uHU7w">
                                                <node concept="3GX2aA" id="5dLITL9pJvb" role="2OqNvi" />
                                                <node concept="2OqwBi" id="5dLITL9pJvc" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="5dLITL9pJvd" role="2Oq$k0">
                                                    <node concept="3TrEf2" id="5dLITL9pJve" role="2OqNvi">
                                                      <ref role="3Tt5mk" to="tpdg:hd_xdhi" />
                                                    </node>
                                                    <node concept="30H73N" id="5dLITL9pJvf" role="2Oq$k0" />
                                                  </node>
                                                  <node concept="2Rf3mk" id="5dLITL9pJvg" role="2OqNvi">
                                                    <node concept="1xMEDy" id="5dLITL9pJvh" role="1xVPHs">
                                                      <node concept="chp4Y" id="5dLITL9pJvi" role="ri$Ld">
                                                        <ref role="cht4Q" to="tpdg:4HcAOwD$HKO" resolve="ConceptFunctionParameter_targetNode" />
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
                                  <node concept="AH0OO" id="5dLITL9pJvj" role="37wK5m">
                                    <node concept="3cmrfG" id="5dLITL9pJvk" role="AHEQo">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="37vLTw" id="3GM_nagTBvB" role="AHHXb">
                                      <ref role="3cqZAo" node="28bwcmSSTB$" resolve="lastPattern" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="5dLITL9pJvm" role="37wK5m">
                                    <ref role="3cqZAo" node="5dLITL9pJvv" resolve="editorContext" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJvn" role="3clF46">
                              <property role="TrG5h" value="parentNode" />
                              <node concept="3uibUv" id="5dLITL9pJvo" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJvp" role="3clF46">
                              <property role="TrG5h" value="oldChild" />
                              <node concept="3uibUv" id="5dLITL9pJvq" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJvr" role="3clF46">
                              <property role="TrG5h" value="newChild" />
                              <node concept="3uibUv" id="5dLITL9pJvs" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJvv" role="3clF46">
                              <property role="TrG5h" value="editorContext" />
                              <node concept="3uibUv" id="5dLITL9pJvw" role="1tU5fm">
                                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                              </node>
                              <node concept="2AHcQZ" id="5dLITL9pJvx" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="5dLITL9pJvy" role="3clF45">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="3Tm1VV" id="5dLITL9pJvz" role="1B3o_S" />
                          </node>
                          <node concept="3Tm1VV" id="5dLITL9pJv$" role="1B3o_S" />
                          <node concept="3clFb_" id="5dLITL9pJv_" role="jymVt">
                            <property role="TrG5h" value="substitute" />
                            <node concept="3clFbS" id="5dLITL9pJvA" role="3clF47">
                              <node concept="29HgVG" id="5dLITL9pJvB" role="lGtFl">
                                <node concept="3NFfHV" id="5dLITL9pJvC" role="3NFExx">
                                  <node concept="3clFbS" id="5dLITL9pJvD" role="2VODD2">
                                    <node concept="3clFbF" id="5dLITL9pJvE" role="3cqZAp">
                                      <node concept="2OqwBi" id="5dLITL9pJvF" role="3clFbG">
                                        <node concept="2OqwBi" id="5dLITL9pJvG" role="2Oq$k0">
                                          <node concept="30H73N" id="5dLITL9pJvH" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="5dLITL9pJvI" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:hd_xdhi" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="5dLITL9pJvJ" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3Tqbb2" id="5dLITL9pJvK" role="3clF45" />
                            <node concept="3Tm6S6" id="5dLITL9pJvL" role="1B3o_S" />
                            <node concept="37vLTG" id="5dLITL9pJvM" role="3clF46">
                              <property role="TrG5h" value="result" />
                              <node concept="3Tqbb2" id="5dLITL9pJvN" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJvO" role="3clF46">
                              <property role="TrG5h" value="targetNode" />
                              <node concept="1W57fq" id="5dLITL9pJvP" role="lGtFl">
                                <node concept="3IZrLx" id="5dLITL9pJvQ" role="3IZSJc">
                                  <node concept="3clFbS" id="5dLITL9pJvR" role="2VODD2">
                                    <node concept="3clFbF" id="5dLITL9pJvS" role="3cqZAp">
                                      <node concept="22lmx$" id="5dLITL9pJvT" role="3clFbG">
                                        <node concept="2OqwBi" id="5dLITL9pJvU" role="3uHU7B">
                                          <node concept="3x8VRR" id="5dLITL9pJvV" role="2OqNvi" />
                                          <node concept="2OqwBi" id="5dLITL9pJvW" role="2Oq$k0">
                                            <node concept="3TrEf2" id="5dLITL9pJvX" role="2OqNvi">
                                              <ref role="3Tt5mk" to="tpdg:VCSzvnzIbE" />
                                            </node>
                                            <node concept="30H73N" id="5dLITL9pJvY" role="2Oq$k0" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="5dLITL9pJvZ" role="3uHU7w">
                                          <node concept="3GX2aA" id="5dLITL9pJw0" role="2OqNvi" />
                                          <node concept="2OqwBi" id="5dLITL9pJw1" role="2Oq$k0">
                                            <node concept="2Rf3mk" id="5dLITL9pJw2" role="2OqNvi">
                                              <node concept="1xMEDy" id="5dLITL9pJw3" role="1xVPHs">
                                                <node concept="chp4Y" id="5dLITL9pJw4" role="ri$Ld">
                                                  <ref role="cht4Q" to="tpdg:4HcAOwD$HKO" resolve="ConceptFunctionParameter_targetNode" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="5dLITL9pJw5" role="2Oq$k0">
                                              <node concept="3TrEf2" id="5dLITL9pJw6" role="2OqNvi">
                                                <ref role="3Tt5mk" to="tpdg:hd_xdhi" />
                                              </node>
                                              <node concept="30H73N" id="5dLITL9pJw7" role="2Oq$k0" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3Tqbb2" id="5dLITL9pJw8" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJw9" role="3clF46">
                              <property role="TrG5h" value="pattern" />
                              <node concept="17QB3L" id="5dLITL9pJwa" role="1tU5fm" />
                            </node>
                            <node concept="37vLTG" id="5dLITL9pJwb" role="3clF46">
                              <property role="TrG5h" value="editorContext" />
                              <node concept="3uibUv" id="5dLITL9pJwc" role="1tU5fm">
                                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                              </node>
                              <node concept="2AHcQZ" id="5dLITL9pJwd" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2BHiRxgkWuN" role="37wK5m">
                      <ref role="3cqZAo" node="hd_BLak" resolve="operationContext" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="28bwcmSSFz$" role="1tU5fm">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="5dLITL9m8wp" role="11_B2D">
                      <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1DcWWT" id="hd_BLb0" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTzY1" role="1DdaDG">
                  <ref role="3cqZAo" node="28bwcmSSFzz" resolve="list" />
                </node>
                <node concept="3cpWsn" id="hwsvQNc" role="1Duv9x">
                  <property role="TrG5h" value="action" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="5dLITL9pNFm" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
                <node concept="3clFbS" id="hd_BLb8" role="2LFqv$">
                  <node concept="3clFbF" id="hd_BLbZ" role="3cqZAp">
                    <node concept="2OqwBi" id="h_XQIDx" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagT$KK" role="2Oq$k0">
                        <ref role="3cqZAo" node="hd_BLao" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="i1GGOIK" role="2OqNvi">
                        <node concept="2ShNRf" id="i1GGOIL" role="25WWJ7">
                          <node concept="YeOm9" id="i1GGOIM" role="2ShVmc">
                            <node concept="1Y3b0j" id="i1GGOIN" role="YeSDq">
                              <ref role="1Y3XeK" to="zce0:~NodeSubstituteActionWrapper" resolve="NodeSubstituteActionWrapper" />
                              <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.&lt;init&gt;(jetbrains.mps.openapi.editor.cells.SubstituteAction)" resolve="NodeSubstituteActionWrapper" />
                              <node concept="3clFb_" id="28bwcmSSZa5" role="jymVt">
                                <property role="IEkAT" value="false" />
                                <property role="1EzhhJ" value="false" />
                                <property role="TrG5h" value="substitute" />
                                <property role="DiZV1" value="false" />
                                <node concept="2AHcQZ" id="28bwcmSSZae" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                                <node concept="3clFbS" id="28bwcmSSZad" role="3clF47">
                                  <node concept="3clFbF" id="28bwcmSSU8k" role="3cqZAp">
                                    <node concept="37vLTI" id="28bwcmSSU8u" role="3clFbG">
                                      <node concept="AH0OO" id="28bwcmSSU8o" role="37vLTJ">
                                        <node concept="37vLTw" id="3GM_nagTB4N" role="AHHXb">
                                          <ref role="3cqZAo" node="28bwcmSSTB$" resolve="lastPattern" />
                                        </node>
                                        <node concept="3cmrfG" id="28bwcmSSU8r" role="AHEQo">
                                          <property role="3cmrfH" value="0" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="2BHiRxgm_o3" role="37vLTx">
                                        <ref role="3cqZAo" node="28bwcmSSZab" resolve="pattern" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="28bwcmSSZaf" role="3cqZAp">
                                    <node concept="3nyPlj" id="28bwcmSSZag" role="3clFbG">
                                      <ref role="37wK5l" to="zce0:~NodeSubstituteActionWrapper.substitute(jetbrains.mps.openapi.editor.EditorContext,java.lang.String):org.jetbrains.mps.openapi.model.SNode" resolve="substitute" />
                                      <node concept="37vLTw" id="2BHiRxgmv1o" role="37wK5m">
                                        <ref role="3cqZAo" node="28bwcmSSZa8" resolve="context" />
                                      </node>
                                      <node concept="37vLTw" id="2BHiRxgma1p" role="37wK5m">
                                        <ref role="3cqZAo" node="28bwcmSSZab" resolve="pattern" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="28bwcmSSZa8" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="7_FmpBqUaAW" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                  <node concept="2AHcQZ" id="28bwcmSSZaa" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="28bwcmSSZab" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="17QB3L" id="5dLITL9m6XP" role="1tU5fm" />
                                </node>
                                <node concept="3uibUv" id="28bwcmSSZa7" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="3Tm1VV" id="28bwcmSSZa6" role="1B3o_S" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTxD3" role="37wK5m">
                                <ref role="3cqZAo" node="hwsvQNc" resolve="action" />
                              </node>
                              <node concept="3Tm1VV" id="i1GGOJf" role="1B3o_S" />
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
          <node concept="3cpWs6" id="hd_BLcy" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTvf$" role="3cqZAk">
              <ref role="3cqZAo" node="hd_BLao" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="hd_BLak" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="hd_BLal" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="37vLTG" id="htvcswb" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$cuIB" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~SideTransformActionsBuilderContext" resolve="SideTransformActionsBuilderContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hd_BLc_" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="hqh2e5f">
    <property role="TrG5h" value="reduce_SideTransform_SimpleString" />
    <property role="3GE5qa" value="Sugar" />
    <ref role="3gUMe" to="tpdg:hqh1dX7" resolve="SideTransform_SimpleString" />
    <node concept="CmF0q" id="hqh2jXJ" role="13RCb5">
      <node concept="3clFbS" id="hqh2jXK" role="2VODD2">
        <node concept="3cpWs6" id="hqh2jXL" role="3cqZAp">
          <node concept="Xl_RD" id="hqh2jXM" role="3cqZAk">
            <property role="Xl_RC" value="text" />
            <node concept="17Uvod" id="hqh2mJ6" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="hqh2mJ7" role="3zH0cK">
                <node concept="3clFbS" id="hqh2mJ8" role="2VODD2">
                  <node concept="3clFbF" id="hqh2nnE" role="3cqZAp">
                    <node concept="2OqwBi" id="hxx_0d9" role="3clFbG">
                      <node concept="30H73N" id="hqh2nnF" role="2Oq$k0" />
                      <node concept="3TrcHB" id="hqh2nG0" role="2OqNvi">
                        <ref role="3TsBF5" to="tpdg:hqh1iwD" resolve="text" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="hqh2kwI" role="lGtFl" />
    </node>
  </node>
  <node concept="bUwia" id="hqh340Q">
    <property role="TrG5h" value="ACTL_sugar" />
    <property role="3GE5qa" value="Sugar" />
    <node concept="3aamgX" id="hqh38_P" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hqh1dX7" resolve="SideTransform_SimpleString" />
      <node concept="j$656" id="hqh38_Q" role="1lVwrX">
        <ref role="v9R2y" node="hqh2e5f" resolve="reduce_SideTransform_SimpleString" />
      </node>
    </node>
    <node concept="3aamgX" id="hqh5Zcc" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hqh3Z8b" resolve="Substitute_SimpleString" />
      <node concept="j$656" id="hqh60So" role="1lVwrX">
        <ref role="v9R2y" node="hqh4vwO" resolve="reduce_Substitute_SimpleString" />
      </node>
    </node>
    <node concept="avzCv" id="5A5fOV$LpLV" role="avys_">
      <node concept="3clFbS" id="5A5fOV$LpLW" role="2VODD2">
        <node concept="3clFbF" id="5A5fOV$Lx7l" role="3cqZAp">
          <node concept="22lmx$" id="5A5fOV$LDwH" role="3clFbG">
            <node concept="3fqX7Q" id="5A5fOV$LKFv" role="3uHU7w">
              <node concept="2OqwBi" id="5A5fOV$LKFx" role="3fr31v">
                <node concept="2OqwBi" id="5A5fOV$LKFy" role="2Oq$k0">
                  <node concept="2OqwBi" id="5A5fOV$LKFz" role="2Oq$k0">
                    <node concept="1iwH7S" id="5A5fOV$LKF$" role="2Oq$k0" />
                    <node concept="1r8y6K" id="5A5fOV$LKF_" role="2OqNvi" />
                  </node>
                  <node concept="2SmgA7" id="5A5fOV$LKFA" role="2OqNvi">
                    <node concept="chp4Y" id="3MnEEnJ67MB" role="1dBWTz">
                      <ref role="cht4Q" to="tpdg:hqh3Z8b" resolve="Substitute_SimpleString" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5A5fOV$LKFB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="5A5fOV$LD9h" role="3uHU7B">
              <node concept="2OqwBi" id="5A5fOV$LD9j" role="3fr31v">
                <node concept="2OqwBi" id="5A5fOV$LD9k" role="2Oq$k0">
                  <node concept="2OqwBi" id="5A5fOV$LD9l" role="2Oq$k0">
                    <node concept="1iwH7S" id="5A5fOV$LD9m" role="2Oq$k0" />
                    <node concept="1r8y6K" id="5A5fOV$LD9n" role="2OqNvi" />
                  </node>
                  <node concept="2SmgA7" id="5A5fOV$LD9o" role="2OqNvi">
                    <node concept="chp4Y" id="3MnEEnJ67MD" role="1dBWTz">
                      <ref role="cht4Q" to="tpdg:hqh1dX7" resolve="SideTransform_SimpleString" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5A5fOV$LD9p" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty():boolean" resolve="isEmpty" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hqh4vwO">
    <property role="TrG5h" value="reduce_Substitute_SimpleString" />
    <property role="3GE5qa" value="Sugar" />
    <ref role="3gUMe" to="tpdg:hqh3Z8b" resolve="Substitute_SimpleString" />
    <node concept="uGdhv" id="1ld5iMQnELM" role="13RCb5">
      <node concept="3clFbS" id="1ld5iMQnGVl" role="2VODD2">
        <node concept="3cpWs6" id="1ld5iMQo3Xp" role="3cqZAp">
          <node concept="Xl_RD" id="1ld5iMQo448" role="3cqZAk">
            <property role="Xl_RC" value="text" />
            <node concept="17Uvod" id="1ld5iMQo4pB" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="1ld5iMQo4pC" role="3zH0cK">
                <node concept="3clFbS" id="1ld5iMQo4pD" role="2VODD2">
                  <node concept="3clFbF" id="1ld5iMQo6FN" role="3cqZAp">
                    <node concept="2OqwBi" id="1ld5iMQo6N3" role="3clFbG">
                      <node concept="3TrcHB" id="1ld5iMQobsC" role="2OqNvi">
                        <ref role="3TsBF5" to="tpdg:hqh4Kkn" resolve="text" />
                      </node>
                      <node concept="30H73N" id="1ld5iMQo6FM" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="1ld5iMQnHKa" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="hrdSTSw">
    <property role="TrG5h" value="MenuBuilderPartMethod_RemoveByCondition_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <ref role="3gUMe" to="tpdg:hrdQSR_" resolve="RemoveSTByConditionPart" />
    <node concept="312cEu" id="hrdT6k_" role="13RCb5">
      <property role="TrG5h" value="ContextClass" />
      <node concept="2YIFZL" id="hre0cNA" role="jymVt">
        <property role="TrG5h" value="removeRTBuild" />
        <node concept="37vLTG" id="hre0w5W" role="3clF46">
          <property role="TrG5h" value="operationContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="hre0wx$" role="1tU5fm">
            <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
          </node>
        </node>
        <node concept="raruj" id="hre0gcv" role="lGtFl" />
        <node concept="17Uvod" id="hre0gcw" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hre0g$I" role="3zH0cK">
            <node concept="3clFbS" id="hre0g$J" role="2VODD2">
              <node concept="3clFbF" id="hG7tcCP" role="3cqZAp">
                <node concept="2OqwBi" id="hKulUhV" role="3clFbG">
                  <node concept="30H73N" id="hKulUdx" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hKulUBH" role="2OqNvi">
                    <ref role="37wK5l" to="tpdr:hKukL$h" resolve="getQueryMethodName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="hre0cNB" role="3clF45" />
        <node concept="3Tm1VV" id="hre0cNC" role="1B3o_S" />
        <node concept="3clFbS" id="hre0cND" role="3clF47">
          <node concept="3cpWs8" id="htvflZ_" role="3cqZAp">
            <node concept="3cpWsn" id="htvflZA" role="3cpWs9">
              <property role="TrG5h" value="actions" />
              <node concept="2YL$Hu" id="i34fzTO" role="1tU5fm">
                <node concept="3uibUv" id="5dLITL9zo_n" role="uOL27">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
              <node concept="2OqwBi" id="h_XQIdS" role="33vP2m">
                <node concept="37vLTw" id="2BHiRxgmuZc" role="2Oq$k0">
                  <ref role="3cqZAo" node="htvfeap" resolve="_context" />
                </node>
                <node concept="liA8E" id="h_XQIdT" role="2OqNvi">
                  <ref role="37wK5l" to="zce0:~RemoveSideTransformActionByConditionContext.getSideTransformActions():java.util.Iterator" resolve="getSideTransformActions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2$JKZl" id="hre0$zF" role="3cqZAp">
            <node concept="2OqwBi" id="h_XQIiX" role="2$JKZa">
              <node concept="v0PNk" id="i1GGyi$" role="2OqNvi" />
              <node concept="37vLTw" id="3GM_nagTuCf" role="2Oq$k0">
                <ref role="3cqZAo" node="htvflZA" resolve="actions" />
              </node>
            </node>
            <node concept="3clFbS" id="hre0$zH" role="2LFqv$">
              <node concept="3cpWs8" id="hre0DEY" role="3cqZAp">
                <node concept="3cpWsn" id="hre0DEZ" role="3cpWs9">
                  <property role="TrG5h" value="current" />
                  <node concept="3uibUv" id="5dLITL9zq87" role="1tU5fm">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                  <node concept="2OqwBi" id="h_XQIFk" role="33vP2m">
                    <node concept="v1n4t" id="i1GGyln" role="2OqNvi" />
                    <node concept="37vLTw" id="3GM_nagTBch" role="2Oq$k0">
                      <ref role="3cqZAo" node="htvflZA" resolve="actions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hre0FAE" role="3cqZAp">
                <node concept="3clFbS" id="hre0FAF" role="3clFbx">
                  <node concept="3N13vt" id="hre0IwH" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="hrt4hQL" role="3clFbw">
                  <node concept="2OqwBi" id="hSxAAZb" role="3fr31v">
                    <node concept="1eOMI4" id="hSxAr9d" role="2Oq$k0">
                      <node concept="10QFUN" id="hSxAr9e" role="1eOMHV">
                        <node concept="3Tqbb2" id="hSxAxhS" role="10QFUM" />
                        <node concept="2OqwBi" id="hSxAr9f" role="10QFUP">
                          <node concept="37vLTw" id="3GM_nagTsxY" role="2Oq$k0">
                            <ref role="3cqZAo" node="hre0DEZ" resolve="current" />
                          </node>
                          <node concept="liA8E" id="hSxAr9h" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~SubstituteAction.getOutputConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getOutputConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1mIQ4w" id="hSxABMJ" role="2OqNvi">
                      <node concept="chp4Y" id="hSxAHHV" role="cj9EA">
                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="hre0JGF" role="3cqZAp">
                <node concept="3cpWsn" id="hre0JGG" role="3cpWs9">
                  <property role="TrG5h" value="concept" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3Tqbb2" id="i2s1z3c" role="1tU5fm" />
                  <node concept="2OqwBi" id="h_XQI9y" role="33vP2m">
                    <node concept="37vLTw" id="3GM_nagTw_H" role="2Oq$k0">
                      <ref role="3cqZAo" node="hre0DEZ" resolve="current" />
                    </node>
                    <node concept="liA8E" id="h_XQI9z" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~SubstituteAction.getOutputConcept():org.jetbrains.mps.openapi.model.SNode" resolve="getOutputConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="hre0Q_v" role="3cqZAp">
                <node concept="3cpWsn" id="hre0Q_w" role="3cpWs9">
                  <property role="TrG5h" value="condition" />
                  <node concept="3uibUv" id="hre0Q_x" role="1tU5fm">
                    <ref role="3uigEE" to="y49u:~Condition" resolve="Condition" />
                  </node>
                  <node concept="2ShNRf" id="hre0RxB" role="33vP2m">
                    <node concept="YeOm9" id="hre0RxC" role="2ShVmc">
                      <node concept="1Y3b0j" id="hre0RxD" role="YeSDq">
                        <property role="1sVAO0" value="true" />
                        <ref role="1Y3XeK" to="y49u:~Condition" resolve="Condition" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3clFb_" id="hre0SCJ" role="jymVt">
                          <property role="TrG5h" value="met" />
                          <node concept="10P_77" id="hre0SCL" role="3clF45" />
                          <node concept="3Tm1VV" id="hre0SCK" role="1B3o_S" />
                          <node concept="37vLTG" id="hre0SCM" role="3clF46">
                            <property role="TrG5h" value="p0" />
                            <node concept="3uibUv" id="hre1inx" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="hre0SCO" role="3clF47">
                            <node concept="29HgVG" id="hre0TnI" role="lGtFl">
                              <node concept="3NFfHV" id="hre0TnJ" role="3NFExx">
                                <node concept="3clFbS" id="hre0TnK" role="2VODD2">
                                  <node concept="3clFbF" id="hre0UEM" role="3cqZAp">
                                    <node concept="2OqwBi" id="hxx_2Rw" role="3clFbG">
                                      <node concept="2OqwBi" id="hxx_3k9" role="2Oq$k0">
                                        <node concept="30H73N" id="hre0UEN" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="hre0V99" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:hrdQV7p" />
                                        </node>
                                      </node>
                                      <node concept="3TrEf2" id="hre0Vvr" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="hre0RxE" role="1B3o_S" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="hre0Xgw" role="3cqZAp">
                <node concept="2OqwBi" id="h_XQIEN" role="3clFbw">
                  <node concept="liA8E" id="h_XQIEO" role="2OqNvi">
                    <ref role="37wK5l" to="y49u:~Condition.met(java.lang.Object):boolean" resolve="met" />
                    <node concept="10Nm6u" id="hre0YM5" role="37wK5m" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTtOo" role="2Oq$k0">
                    <ref role="3cqZAo" node="hre0Q_w" resolve="condition" />
                  </node>
                </node>
                <node concept="3clFbS" id="hre0Xgx" role="3clFbx">
                  <node concept="3clFbF" id="hre0Zqo" role="3cqZAp">
                    <node concept="2OqwBi" id="i34fSJA" role="3clFbG">
                      <node concept="2YMH90" id="i34fSWh" role="2OqNvi" />
                      <node concept="37vLTw" id="3GM_nagTyvG" role="2Oq$k0">
                        <ref role="3cqZAo" node="htvflZA" resolve="actions" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="htvfeap" role="3clF46">
          <property role="TrG5h" value="_context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="ht$bmXb" role="1tU5fm">
            <ref role="3uigEE" to="zce0:~RemoveSideTransformActionByConditionContext" resolve="RemoveSideTransformActionByConditionContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hrdT6kA" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="htvMWhK">
    <property role="TrG5h" value="RegisterMenuPart_Generic_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <ref role="3gUMe" to="tpdg:htvLhee" resolve="GenericSubstituteMenuPart" />
    <node concept="2YIFZL" id="htvMWhL" role="13RCb5">
      <property role="TrG5h" value="_query_method_" />
      <node concept="_YKpA" id="i1GGycI" role="3clF45">
        <node concept="3uibUv" id="5dLITL9yqGI" role="_ZDj9">
          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
        </node>
      </node>
      <node concept="37vLTG" id="htvMWhO" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="htvMWhP" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="37vLTG" id="htvMWhQ" role="3clF46">
        <property role="TrG5h" value="_context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="ht$c1kc" role="1tU5fm">
          <ref role="3uigEE" to="zce0:~NodeSubstituteActionsFactoryContext" resolve="NodeSubstituteActionsFactoryContext" />
        </node>
      </node>
      <node concept="3clFbS" id="htvMWhS" role="3clF47">
        <node concept="3cpWs8" id="htvMWhT" role="3cqZAp">
          <node concept="3cpWsn" id="htvMWhU" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGy64" role="1tU5fm">
              <node concept="3uibUv" id="5dLITL9yqXf" role="_ZDj9">
                <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="hHLolx3" role="33vP2m">
              <node concept="Tc6Ow" id="i1GGyfV" role="2ShVmc">
                <node concept="3uibUv" id="5dLITL9yriK" role="HW$YZ">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="htvNamS" role="3cqZAp">
          <node concept="2OqwBi" id="h_XQILe" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTBd8" role="2Oq$k0">
              <ref role="3cqZAo" node="htvMWhU" resolve="result" />
            </node>
            <node concept="X8dFx" id="i1GGOMB" role="2OqNvi">
              <node concept="2OqwBi" id="5zjZZw0EWkH" role="25WWJ7">
                <node concept="liA8E" id="5zjZZw0EYxy" role="2OqNvi">
                  <ref role="37wK5l" node="5zjZZw0ESm4" resolve="compute" />
                </node>
                <node concept="2ShNRf" id="5zjZZw0Ev43" role="2Oq$k0">
                  <node concept="YeOm9" id="5zjZZw0ESlZ" role="2ShVmc">
                    <node concept="1Y3b0j" id="5zjZZw0ESm2" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="18ew:~Computable" resolve="Computable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="_YKpA" id="5zjZZw0ESJm" role="2Ghqu4">
                        <node concept="3uibUv" id="5zjZZw0ET9S" role="_ZDj9">
                          <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="5zjZZw0ESm3" role="1B3o_S" />
                      <node concept="3clFb_" id="5zjZZw0ESm4" role="jymVt">
                        <property role="IEkAT" value="false" />
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="compute" />
                        <property role="DiZV1" value="false" />
                        <node concept="_YKpA" id="5zjZZw0EUfx" role="3clF45">
                          <node concept="3uibUv" id="5zjZZw0EUux" role="_ZDj9">
                            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                          </node>
                        </node>
                        <node concept="3Tm1VV" id="5zjZZw0ESm5" role="1B3o_S" />
                        <node concept="3clFbS" id="5zjZZw0ESm8" role="3clF47">
                          <node concept="3cpWs6" id="5zjZZw0FbUl" role="3cqZAp">
                            <node concept="2b32R4" id="5zjZZw0FYrL" role="lGtFl">
                              <node concept="3JmXsc" id="5zjZZw0FYrX" role="2P8S$">
                                <node concept="3clFbS" id="5zjZZw0FYs9" role="2VODD2">
                                  <node concept="3clFbF" id="5zjZZw0FdAV" role="3cqZAp">
                                    <node concept="2OqwBi" id="5zjZZw0FN3K" role="3clFbG">
                                      <node concept="3Tsc0h" id="5zjZZw0FQBR" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                                      </node>
                                      <node concept="2OqwBi" id="5zjZZw0FdAW" role="2Oq$k0">
                                        <node concept="2OqwBi" id="5zjZZw0FdAX" role="2Oq$k0">
                                          <node concept="3TrEf2" id="5zjZZw0FdAY" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpdg:htvL_Pt" />
                                          </node>
                                          <node concept="30H73N" id="5zjZZw0FdAZ" role="2Oq$k0" />
                                        </node>
                                        <node concept="3TrEf2" id="5zjZZw0FdB0" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="10Nm6u" id="5zjZZw0FcdU" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="raruj" id="5zjZZw0Flww" role="lGtFl" />
        </node>
        <node concept="3cpWs6" id="htvMWjT" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTAMX" role="3cqZAk">
            <ref role="3cqZAo" node="htvMWhU" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="htvMWjV" role="1B3o_S" />
    </node>
  </node>
  <node concept="bUwia" id="hLhsnfI">
    <property role="TrG5h" value="pasteWrappers" />
    <property role="3GE5qa" value="PasteWrappers" />
    <node concept="3aamgX" id="hLhwD26" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hLht00O" resolve="ConceptFunctionParameter_nodeToPasteWrap" />
      <node concept="j$656" id="hLhwYLu" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="2VPoh5" id="hLhx609" role="2VS0gm">
      <ref role="2VPoh2" node="hLhs_ja" resolve="PasteWrappers" />
      <node concept="2VP$b9" id="hLhx6H5" role="2VPoh3">
        <node concept="3clFbS" id="hLhx6H6" role="2VODD2">
          <node concept="3clFbF" id="hLhx7z4" role="3cqZAp">
            <node concept="2OqwBi" id="hLhx9ty" role="3clFbG">
              <node concept="2OqwBi" id="hLhx85_" role="2Oq$k0">
                <node concept="2OqwBi" id="hLhx7H7" role="2Oq$k0">
                  <node concept="1iwH7S" id="hLhx7z5" role="2Oq$k0" />
                  <node concept="1r8y6K" id="hLhx7Yv" role="2OqNvi" />
                </node>
                <node concept="2SmgA7" id="hLhx8N3" role="2OqNvi">
                  <node concept="chp4Y" id="3MnEEnJ67MJ" role="1dBWTz">
                    <ref role="cht4Q" to="tpdg:hLhlz9g" resolve="PasteWrapper" />
                  </node>
                </node>
              </node>
              <node concept="3GX2aA" id="hLhx9Qg" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="aNPBN" id="hLhy0RQ" role="aQYdv">
      <ref role="aOQi4" to="tpdg:hLhljPe" resolve="PasteWrappers" />
    </node>
  </node>
  <node concept="312cEu" id="hLhs_ja">
    <property role="TrG5h" value="PasteWrappers" />
    <property role="3GE5qa" value="PasteWrappers" />
    <node concept="2YIFZL" id="hLhsLFx" role="jymVt">
      <property role="TrG5h" value="createPasteWrappers" />
      <node concept="_YKpA" id="i1GGy3P" role="3clF45">
        <node concept="3uibUv" id="i1GGy3Q" role="_ZDj9">
          <ref role="3uigEE" to="qzxn:~PasteWrapper" resolve="PasteWrapper" />
        </node>
      </node>
      <node concept="3Tm1VV" id="hLhsLFz" role="1B3o_S" />
      <node concept="3clFbS" id="hLhsLF$" role="3clF47">
        <node concept="3cpWs8" id="hLhvGp3" role="3cqZAp">
          <node concept="3cpWsn" id="hLhvGp4" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="_YKpA" id="i1GGybT" role="1tU5fm">
              <node concept="3uibUv" id="i1GGybU" role="_ZDj9">
                <ref role="3uigEE" to="qzxn:~PasteWrapper" resolve="PasteWrapper" />
              </node>
            </node>
            <node concept="2ShNRf" id="hLhvHzB" role="33vP2m">
              <node concept="Tc6Ow" id="i34fkan" role="2ShVmc">
                <node concept="3uibUv" id="i34flta" role="HW$YZ">
                  <ref role="3uigEE" to="qzxn:~PasteWrapper" resolve="PasteWrapper" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hLhvW5W" role="3cqZAp">
          <node concept="2OqwBi" id="hLhvWiq" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzYE" role="2Oq$k0">
              <ref role="3cqZAo" node="hLhvGp4" resolve="result" />
            </node>
            <node concept="TSZUe" id="i1GGOJm" role="2OqNvi">
              <node concept="2ShNRf" id="i1GGOJn" role="25WWJ7">
                <node concept="YeOm9" id="i1GGOJo" role="2ShVmc">
                  <node concept="1Y3b0j" id="i1GGOJp" role="YeSDq">
                    <ref role="1Y3XeK" to="qzxn:~PasteWrapper" resolve="PasteWrapper" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="i1GGOJq" role="1B3o_S" />
                    <node concept="3clFb_" id="i1GGOJr" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getSourceConceptFqName" />
                      <node concept="3clFbS" id="i1GGOJu" role="3clF47">
                        <node concept="3cpWs6" id="i1GGOJv" role="3cqZAp">
                          <node concept="Xl_RD" id="i1GGOJw" role="3cqZAk">
                            <property role="Xl_RC" value="concept.fq.name" />
                            <node concept="17Uvod" id="i1GGOJx" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="i1GGOJy" role="3zH0cK">
                                <node concept="3clFbS" id="i1GGOJz" role="2VODD2">
                                  <node concept="3clFbF" id="i1GGOJ$" role="3cqZAp">
                                    <node concept="2OqwBi" id="i1GGOJ_" role="3clFbG">
                                      <node concept="2qgKlT" id="i1GGOJD" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                      </node>
                                      <node concept="2OqwBi" id="i1GGOJA" role="2Oq$k0">
                                        <node concept="3TrEf2" id="i1GGOJC" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:hLhmvLo" />
                                        </node>
                                        <node concept="30H73N" id="i1GGOJB" role="2Oq$k0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="i1GGOJs" role="1B3o_S" />
                      <node concept="17QB3L" id="i1GGOJt" role="3clF45" />
                    </node>
                    <node concept="3clFb_" id="i1GGOJE" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getTargetConceptFqName" />
                      <node concept="3clFbS" id="i1GGOJH" role="3clF47">
                        <node concept="3cpWs6" id="i1GGOJI" role="3cqZAp">
                          <node concept="Xl_RD" id="i1GGOJJ" role="3cqZAk">
                            <property role="Xl_RC" value="concept.fq.name" />
                            <node concept="17Uvod" id="i1GGOJK" role="lGtFl">
                              <property role="2qtEX9" value="value" />
                              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                              <node concept="3zFVjK" id="i1GGOJL" role="3zH0cK">
                                <node concept="3clFbS" id="i1GGOJM" role="2VODD2">
                                  <node concept="3clFbF" id="i1GGOJN" role="3cqZAp">
                                    <node concept="2OqwBi" id="i1GGOJO" role="3clFbG">
                                      <node concept="2qgKlT" id="i1GGOJS" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                                      </node>
                                      <node concept="2OqwBi" id="i1GGOJP" role="2Oq$k0">
                                        <node concept="30H73N" id="i1GGOJQ" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="i1GGOJR" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:hLhszyZ" />
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
                      <node concept="17QB3L" id="i1GGOJG" role="3clF45" />
                      <node concept="3Tm1VV" id="i1GGOJF" role="1B3o_S" />
                    </node>
                    <node concept="3clFb_" id="i1GGOJT" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="wrap" />
                      <node concept="37vLTG" id="i1GGOJW" role="3clF46">
                        <property role="TrG5h" value="_context" />
                        <node concept="3uibUv" id="i1GGOJX" role="1tU5fm">
                          <ref role="3uigEE" to="qzxn:~PasteWrapperContext" resolve="PasteWrapperContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="i1GGOJY" role="3clF47">
                        <node concept="29HgVG" id="i1GGOJZ" role="lGtFl">
                          <node concept="3NFfHV" id="i1GGOK0" role="3NFExx">
                            <node concept="3clFbS" id="i1GGOK1" role="2VODD2">
                              <node concept="3clFbF" id="i1GGOK2" role="3cqZAp">
                                <node concept="2OqwBi" id="i1GGOK3" role="3clFbG">
                                  <node concept="2OqwBi" id="i1GGOK4" role="2Oq$k0">
                                    <node concept="30H73N" id="i1GGOK5" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="i1GGOK6" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:hLhsNvi" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="i1GGOK7" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="i1GGOJU" role="1B3o_S" />
                      <node concept="3Tqbb2" id="i2srMKP" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="hLhw2KH" role="lGtFl">
            <node concept="3JmXsc" id="hLhw2KI" role="3Jn$fo">
              <node concept="3clFbS" id="hLhw2KJ" role="2VODD2">
                <node concept="3clFbF" id="hLhw4xM" role="3cqZAp">
                  <node concept="2OqwBi" id="hLhw5_1" role="3clFbG">
                    <node concept="2SmgA7" id="hLhw5ZV" role="2OqNvi">
                      <node concept="chp4Y" id="3MnEEnJ67Mx" role="1dBWTz">
                        <ref role="cht4Q" to="tpdg:hLhlz9g" resolve="PasteWrapper" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="hLhw4ER" role="2Oq$k0">
                      <node concept="1iwH7S" id="hLhw4xN" role="2Oq$k0" />
                      <node concept="1r8y6K" id="hLhw5sX" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="hLhvUO5" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTzoG" role="3cqZAk">
            <ref role="3cqZAo" node="hLhvGp4" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="hLhApYF" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hLhApYG" role="3zH0cK">
          <node concept="3clFbS" id="hLhApYH" role="2VODD2">
            <node concept="3clFbF" id="hLhAzdD" role="3cqZAp">
              <node concept="10M0yZ" id="hLhAzdE" role="3clFbG">
                <ref role="1PxDUh" to="qzxn:~PasteWrappersManager" resolve="PasteWrappersManager" />
                <ref role="3cqZAo" to="qzxn:~PasteWrappersManager.PASTE_WRAPPERS_FACTORY_METHOD" resolve="PASTE_WRAPPERS_FACTORY_METHOD" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="hLhs_jb" role="1B3o_S" />
    <node concept="n94m4" id="hLhs_jw" role="lGtFl" />
    <node concept="17Uvod" id="hLhA7Lq" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="hLhA7Lr" role="3zH0cK">
        <node concept="3clFbS" id="hLhA7Ls" role="2VODD2">
          <node concept="3clFbF" id="hLhAgXW" role="3cqZAp">
            <node concept="10M0yZ" id="hLhAgXX" role="3clFbG">
              <ref role="1PxDUh" to="qzxn:~PasteWrappersManager" resolve="PasteWrappersManager" />
              <ref role="3cqZAo" to="qzxn:~PasteWrappersManager.PASTE_WRAPPER_CLASS_NAME" resolve="PASTE_WRAPPER_CLASS_NAME" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hYfMkTk">
    <property role="TrG5h" value="SmartActions_Generated" />
    <node concept="3clFbW" id="hYfMkTm" role="jymVt">
      <node concept="3Tm1VV" id="hYfMkTo" role="1B3o_S" />
      <node concept="3clFbS" id="hYfMkTp" role="3clF47" />
      <node concept="3cqZAl" id="hYfMkTn" role="3clF45" />
    </node>
    <node concept="3clFb_" id="hYfMqv2" role="jymVt">
      <property role="TrG5h" value="getGenerateCodeAction" />
      <node concept="3uibUv" id="hYl1y$6" role="3clF45">
        <ref role="3uigEE" to="hvbn:~SmartAction_Runtime" resolve="SmartAction_Runtime" />
      </node>
      <node concept="37vLTG" id="hYSgirT" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="hYSgirU" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
      <node concept="1WS0z7" id="hYl1B4N" role="lGtFl">
        <node concept="3JmXsc" id="hYl1B4O" role="3Jn$fo">
          <node concept="3clFbS" id="hYl1B4P" role="2VODD2">
            <node concept="3cpWs8" id="hYMF9yZ" role="3cqZAp">
              <node concept="3cpWsn" id="hYMF9z0" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="2ShNRf" id="hYMFbBM" role="33vP2m">
                  <node concept="Tc6Ow" id="hYMFY8F" role="2ShVmc">
                    <node concept="3Tqbb2" id="hYMFYHH" role="HW$YZ">
                      <ref role="ehGHo" to="tpdg:hYeMx5V" resolve="GenerateCodeAction" />
                    </node>
                  </node>
                </node>
                <node concept="_YKpA" id="hYMFSN0" role="1tU5fm">
                  <node concept="3Tqbb2" id="hYMFTkn" role="_ZDj9">
                    <ref role="ehGHo" to="tpdg:hYeMx5V" resolve="GenerateCodeAction" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="hYMFy5Y" role="3cqZAp">
              <node concept="3cpWsn" id="hYMFy5Z" role="3cpWs9">
                <property role="TrG5h" value="smartEditorActions" />
                <node concept="2OqwBi" id="hYMFy61" role="33vP2m">
                  <node concept="2RRcyG" id="hYMFy65" role="2OqNvi">
                    <ref role="2RRcyH" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
                  </node>
                  <node concept="2OqwBi" id="hYMFy62" role="2Oq$k0">
                    <node concept="1r8y6K" id="hYMFy64" role="2OqNvi" />
                    <node concept="1iwH7S" id="hYMFy63" role="2Oq$k0" />
                  </node>
                </node>
                <node concept="2I9FWS" id="hYMFy60" role="1tU5fm">
                  <ref role="2I9WkF" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="hYMFDig" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTspm" role="1DdaDG">
                <ref role="3cqZAo" node="hYMFy5Z" resolve="smartEditorActions" />
              </node>
              <node concept="3cpWsn" id="hYMFDil" role="1Duv9x">
                <property role="TrG5h" value="actionsContainer" />
                <node concept="3Tqbb2" id="hYMFFT6" role="1tU5fm">
                  <ref role="ehGHo" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
                </node>
              </node>
              <node concept="3clFbS" id="hYMFDih" role="2LFqv$">
                <node concept="3clFbF" id="hYMFO6A" role="3cqZAp">
                  <node concept="2OqwBi" id="hYMFOnQ" role="3clFbG">
                    <node concept="37vLTw" id="3GM_nagT_vM" role="2Oq$k0">
                      <ref role="3cqZAo" node="hYMF9z0" resolve="result" />
                    </node>
                    <node concept="X8dFx" id="hYMGddM" role="2OqNvi">
                      <node concept="2OqwBi" id="hYMGegz" role="25WWJ7">
                        <node concept="37vLTw" id="3GM_nagTy1V" role="2Oq$k0">
                          <ref role="3cqZAo" node="hYMFDil" resolve="actionsContainer" />
                        </node>
                        <node concept="3Tsc0h" id="hYMGf_g" role="2OqNvi">
                          <ref role="3TtcxE" to="tpdg:hYeN5TI" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="hYMGgWJ" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT$Wv" role="3cqZAk">
                <ref role="3cqZAo" node="hYMF9z0" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hYfMqv4" role="1B3o_S" />
      <node concept="3clFbS" id="hYfMqv5" role="3clF47">
        <node concept="3cpWs6" id="hYl1zSG" role="3cqZAp">
          <node concept="2ShNRf" id="hYl1$dl" role="3cqZAk">
            <node concept="YeOm9" id="hYl1$Un" role="2ShVmc">
              <node concept="1Y3b0j" id="hYl1$Uo" role="YeSDq">
                <ref role="1Y3XeK" to="hvbn:~SmartAction_Runtime" resolve="SmartAction_Runtime" />
                <ref role="37wK5l" to="hvbn:~SmartAction_Runtime.&lt;init&gt;(jetbrains.mps.smodel.IOperationContext)" resolve="SmartAction_Runtime" />
                <node concept="3clFb_" id="hYl1$Uq" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="execute" />
                  <node concept="3Tm1VV" id="hYl1$Ur" role="1B3o_S" />
                  <node concept="3cqZAl" id="hYl1$Us" role="3clF45" />
                  <node concept="37vLTG" id="hYl1$Ut" role="3clF46">
                    <property role="TrG5h" value="selectedCell" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="hYl1$Uu" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="17Uvod" id="1KBnK_bFHPv" role="lGtFl">
                      <property role="2qtEX9" value="name" />
                      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                      <node concept="3zFVjK" id="1KBnK_bFHR9" role="3zH0cK">
                        <node concept="3clFbS" id="1KBnK_bFHRa" role="2VODD2">
                          <node concept="3clFbF" id="1KBnK_bFWTI" role="3cqZAp">
                            <node concept="2OqwBi" id="3Jh9EXPiLDa" role="3clFbG">
                              <node concept="3TrcHB" id="3Jh9EXPiOhn" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                              </node>
                              <node concept="3TUQnm" id="3Jh9EXPiC0Z" role="2Oq$k0">
                                <ref role="3TV0OU" to="tpdg:hYf4wkz" resolve="ConceptFunctionParameter_EditorCell" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="hYl1$Uz" role="3clF47">
                    <node concept="29HgVG" id="hYl2aKj" role="lGtFl">
                      <node concept="3NFfHV" id="hYl2aKk" role="3NFExx">
                        <node concept="3clFbS" id="hYl2aKl" role="2VODD2">
                          <node concept="3clFbF" id="hYl2bBf" role="3cqZAp">
                            <node concept="2OqwBi" id="hYl2cuI" role="3clFbG">
                              <node concept="2OqwBi" id="hYl2bFe" role="2Oq$k0">
                                <node concept="30H73N" id="hYl2bBg" role="2Oq$k0" />
                                <node concept="3TrEf2" id="hYl2cdP" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:hYfl8Zm" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="hYl2c_4" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:gyVODHa" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3Tm1VV" id="hYl1$Up" role="1B3o_S" />
                <node concept="37vLTw" id="2BHiRxgm5Dz" role="37wK5m">
                  <ref role="3cqZAo" node="hYSgirT" resolve="operationContext" />
                </node>
                <node concept="3clFb_" id="hYl1$U$" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="getUI" />
                  <node concept="3Tm1VV" id="hYl1$U_" role="1B3o_S" />
                  <node concept="3clFbS" id="hYl1$UD" role="3clF47">
                    <node concept="9aQIb" id="hYl2dOT" role="3cqZAp">
                      <node concept="3clFbS" id="hYl2dOU" role="9aQI4">
                        <node concept="29HgVG" id="hYl2zM$" role="lGtFl">
                          <node concept="3NFfHV" id="hYl2zM_" role="3NFExx">
                            <node concept="3clFbS" id="hYl2zMA" role="2VODD2">
                              <node concept="3clFbF" id="hYl2$C2" role="3cqZAp">
                                <node concept="2OqwBi" id="hYl2_mG" role="3clFbG">
                                  <node concept="3TrEf2" id="hYl2_w$" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                  </node>
                                  <node concept="2OqwBi" id="hYl2$FM" role="2Oq$k0">
                                    <node concept="3TrEf2" id="hYl2_0f" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:hYfl47N" />
                                    </node>
                                    <node concept="30H73N" id="hYl2$C3" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1W57fq" id="hYl2fhk" role="lGtFl">
                        <node concept="3IZrLx" id="hYl2fhl" role="3IZSJc">
                          <node concept="3clFbS" id="hYl2fhm" role="2VODD2">
                            <node concept="3clFbF" id="hYl2wDK" role="3cqZAp">
                              <node concept="2OqwBi" id="hYl2xDB" role="3clFbG">
                                <node concept="3x8VRR" id="hYl2xS0" role="2OqNvi" />
                                <node concept="2OqwBi" id="hYl2wHJ" role="2Oq$k0">
                                  <node concept="3TrEf2" id="hYl2xiY" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:hYfl47N" />
                                  </node>
                                  <node concept="30H73N" id="hYl2wDL" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="hYl2g9i" role="3cqZAp">
                      <node concept="1W57fq" id="hYl2ia5" role="lGtFl">
                        <node concept="3IZrLx" id="hYl2ia6" role="3IZSJc">
                          <node concept="3clFbS" id="hYl2ia7" role="2VODD2">
                            <node concept="3clFbF" id="hYl2jbQ" role="3cqZAp">
                              <node concept="2OqwBi" id="hYl2u$6" role="3clFbG">
                                <node concept="2OqwBi" id="hYl2jfP" role="2Oq$k0">
                                  <node concept="30H73N" id="hYl2jbR" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="hYl2ukh" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:hYfl47N" />
                                  </node>
                                </node>
                                <node concept="3w_OXm" id="hYl2vCX" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="hYMqlqy" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="hYMqmHO" role="3clF45">
                    <ref role="3uigEE" to="hvbn:~SmartActionUIPanel" resolve="SmartActionUIPanel" />
                  </node>
                </node>
                <node concept="3clFb_" id="hYl1$UE" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="isApplicable" />
                  <node concept="3clFbS" id="hYl1$UL" role="3clF47">
                    <node concept="9aQIb" id="hYl38OS" role="3cqZAp">
                      <node concept="1W57fq" id="hYl3aEo" role="lGtFl">
                        <node concept="3IZrLx" id="hYl3aEp" role="3IZSJc">
                          <node concept="3clFbS" id="hYl3aEq" role="2VODD2">
                            <node concept="3clFbF" id="hYl3eSd" role="3cqZAp">
                              <node concept="2OqwBi" id="hYl3fyN" role="3clFbG">
                                <node concept="2OqwBi" id="hYl3eVV" role="2Oq$k0">
                                  <node concept="3TrEf2" id="hYl3fmE" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:hYf7BoM" />
                                  </node>
                                  <node concept="30H73N" id="hYl3eSe" role="2Oq$k0" />
                                </node>
                                <node concept="3x8VRR" id="hYl3fLd" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="hYl38OT" role="9aQI4">
                        <node concept="29HgVG" id="hYl3gKK" role="lGtFl">
                          <node concept="3NFfHV" id="hYl3gKL" role="3NFExx">
                            <node concept="3clFbS" id="hYl3gKM" role="2VODD2">
                              <node concept="3clFbF" id="hYl3hwB" role="3cqZAp">
                                <node concept="2OqwBi" id="hYl3ifT" role="3clFbG">
                                  <node concept="2OqwBi" id="hYl3h$l" role="2Oq$k0">
                                    <node concept="30H73N" id="hYl3hwC" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hYl3i0f" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:hYf7BoM" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="hYl3iqD" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="hYl39k6" role="3cqZAp">
                      <node concept="3clFbT" id="hYl39Sw" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="1W57fq" id="hYl3bP5" role="lGtFl">
                        <node concept="3IZrLx" id="hYl3bP6" role="3IZSJc">
                          <node concept="3clFbS" id="hYl3bP7" role="2VODD2">
                            <node concept="3clFbF" id="hYl3cCN" role="3cqZAp">
                              <node concept="2OqwBi" id="hYl3dHp" role="3clFbG">
                                <node concept="3w_OXm" id="hYl3dXj" role="2OqNvi" />
                                <node concept="2OqwBi" id="hYl3cGu" role="2Oq$k0">
                                  <node concept="3TrEf2" id="hYl3duu" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpdg:hYf7BoM" />
                                  </node>
                                  <node concept="30H73N" id="hYl3cCO" role="2Oq$k0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="hYl1$UF" role="1B3o_S" />
                  <node concept="37vLTG" id="hYl1$UH" role="3clF46">
                    <property role="TrG5h" value="selectedCell" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="hYl1$UI" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="17Uvod" id="1KBnK_bG3Fd" role="lGtFl">
                      <property role="2qtEX9" value="name" />
                      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                      <node concept="3zFVjK" id="1KBnK_bG3Fe" role="3zH0cK">
                        <node concept="3clFbS" id="1KBnK_bG3Ff" role="2VODD2">
                          <node concept="3clFbF" id="1KBnK_bG4ek" role="3cqZAp">
                            <node concept="2OqwBi" id="1KBnK_bG4el" role="3clFbG">
                              <node concept="3TrcHB" id="1KBnK_bG4em" role="2OqNvi">
                                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                              </node>
                              <node concept="3TUQnm" id="1KBnK_bG4en" role="2Oq$k0">
                                <ref role="3TV0OU" to="tpdg:hYf4wkz" resolve="ConceptFunctionParameter_EditorCell" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10P_77" id="hYl1$UG" role="3clF45" />
                </node>
                <node concept="3clFb_" id="hYN2ljA" role="jymVt">
                  <property role="TrG5h" value="getDescriptionText" />
                  <node concept="3clFbS" id="hYN2ljD" role="3clF47">
                    <node concept="3cpWs6" id="hYN2vMA" role="3cqZAp">
                      <node concept="Xl_RD" id="hYN2w3v" role="3cqZAk">
                        <property role="Xl_RC" value="description" />
                        <node concept="17Uvod" id="hYN2OQm" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="hYN2OQn" role="3zH0cK">
                            <node concept="3clFbS" id="hYN2OQo" role="2VODD2">
                              <node concept="3clFbF" id="hYN2PuF" role="3cqZAp">
                                <node concept="2OqwBi" id="hYN2PyR" role="3clFbG">
                                  <node concept="30H73N" id="hYN2PuG" role="2Oq$k0" />
                                  <node concept="3TrcHB" id="hYN2U3y" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpdg:hYfsvcg" resolve="description" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="hYN2ljB" role="1B3o_S" />
                  <node concept="17QB3L" id="18nccIwC3Yw" role="3clF45" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="hYl1WA6" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="hYl1WA7" role="3zH0cK">
          <node concept="3clFbS" id="hYl1WA8" role="2VODD2">
            <node concept="3clFbF" id="hYl1Xlu" role="3cqZAp">
              <node concept="3cpWs3" id="hYl20Xx" role="3clFbG">
                <node concept="2OqwBi" id="1R1KclLA1gC" role="3uHU7w">
                  <node concept="liA8E" id="1R1KclLA1gH" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                  </node>
                  <node concept="2OqwBi" id="1R1KclLA1gD" role="2Oq$k0">
                    <node concept="liA8E" id="24cAaiVCamn" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                    </node>
                    <node concept="2JrnkZ" id="1R1KclLA1gE" role="2Oq$k0">
                      <node concept="30H73N" id="1R1KclLA1gF" role="2JrQYb" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="hYl1Xlv" role="3uHU7B">
                  <property role="Xl_RC" value="getGenerateCodeAction_" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="hYfMkTl" role="1B3o_S" />
    <node concept="n94m4" id="hYN2M0V" role="lGtFl" />
  </node>
  <node concept="13MO4I" id="hYpSyHO">
    <property role="TrG5h" value="reduce_SmartActionParameterReference_lValue" />
    <ref role="3gUMe" to="tpdg:hYeW1s5" resolve="SmartActionParameterReference" />
    <node concept="312cEu" id="hYS78jb" role="13RCb5">
      <property role="TrG5h" value="SmartAction_Runtime" />
      <node concept="3clFbW" id="hYS78jd" role="jymVt">
        <node concept="3Tm1VV" id="hYS78jf" role="1B3o_S" />
        <node concept="3cqZAl" id="hYS78je" role="3clF45" />
        <node concept="3clFbS" id="hYS78jg" role="3clF47" />
      </node>
      <node concept="3clFb_" id="hYS7loc" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3Tm1VV" id="hYS7loe" role="1B3o_S" />
        <node concept="3clFbS" id="hYS7lof" role="3clF47">
          <node concept="3clFbF" id="hYSH4Uj" role="3cqZAp">
            <node concept="AH0OO" id="hYSH4Uk" role="3clFbG">
              <node concept="3cmrfG" id="hYSH4Ul" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="hYSH4Um" role="AHHXb">
                <node concept="liA8E" id="hYSH4Un" role="2OqNvi">
                  <ref role="37wK5l" to="hvbn:~SmartActionContext.get(java.lang.String):java.lang.Object[]" resolve="get" />
                  <node concept="Xl_RD" id="hYSH4Uo" role="37wK5m">
                    <property role="Xl_RC" value="propertyName" />
                    <node concept="17Uvod" id="hYSH4Up" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="hYSH4Uq" role="3zH0cK">
                        <node concept="3clFbS" id="hYSH4Ur" role="2VODD2">
                          <node concept="3clFbF" id="hYSH4Us" role="3cqZAp">
                            <node concept="2OqwBi" id="hYSH4Ut" role="3clFbG">
                              <node concept="2OqwBi" id="hYSH4Uu" role="2Oq$k0">
                                <node concept="30H73N" id="hYSH4Uv" role="2Oq$k0" />
                                <node concept="3TrEf2" id="hYSH4Uw" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpdg:hYeWbzl" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="hYSH4Ux" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="hYSH4Uy" role="2Oq$k0">
                  <node concept="1DoJHT" id="hYSH4Uz" role="1eOMHV">
                    <property role="1Dpdpm" value="getSmartActionContext" />
                    <node concept="3uibUv" id="hYSH4U$" role="1Ez5kq">
                      <ref role="3uigEE" to="hvbn:~SmartActionContext" resolve="SmartActionContext" />
                    </node>
                    <node concept="eJtiG" id="hYSH4U_" role="1EMhIo" />
                  </node>
                </node>
              </node>
              <node concept="raruj" id="hYSHk8x" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="hYS7lod" role="3clF45" />
        <node concept="37vLTG" id="hYS7loG" role="3clF46">
          <property role="TrG5h" value="smartActionContext" />
          <node concept="3uibUv" id="hYS7loH" role="1tU5fm">
            <ref role="3uigEE" to="hvbn:~SmartActionContext" resolve="SmartActionContext" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hYS78jc" role="1B3o_S" />
    </node>
  </node>
  <node concept="bUwia" id="hYpTJ39">
    <property role="TrG5h" value="smartActions" />
    <node concept="aNPBN" id="hYSksas" role="aQYdv">
      <ref role="aOQi4" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
    </node>
    <node concept="2VPoh5" id="hYME6h6" role="2VS0gm">
      <ref role="2VPoh2" node="hYfMkTk" resolve="SmartActions_Generated" />
      <node concept="2VP$b9" id="hYME6WO" role="2VPoh3">
        <node concept="3clFbS" id="hYME6WP" role="2VODD2">
          <node concept="3clFbF" id="hYMEa7_" role="3cqZAp">
            <node concept="2OqwBi" id="hYMEfnZ" role="3clFbG">
              <node concept="2OqwBi" id="hYMEb2j" role="2Oq$k0">
                <node concept="2OqwBi" id="hYMEaoX" role="2Oq$k0">
                  <node concept="1iwH7S" id="hYMEa7A" role="2Oq$k0" />
                  <node concept="1r8y6K" id="hYMEaHL" role="2OqNvi" />
                </node>
                <node concept="2RRcyG" id="hYMEcVt" role="2OqNvi">
                  <ref role="2RRcyH" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
                </node>
              </node>
              <node concept="3GX2aA" id="hYMEkAz" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hYpTNyd" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hYeW1s5" resolve="SmartActionParameterReference" />
      <node concept="j$656" id="hYpTS06" role="1lVwrX">
        <ref role="v9R2y" node="hYpSyHO" resolve="reduce_SmartActionParameterReference_lValue" />
      </node>
      <node concept="30G5F_" id="hYSIWmO" role="30HLyM">
        <node concept="3clFbS" id="hYSIWmP" role="2VODD2">
          <node concept="3clFbF" id="hYSIWrY" role="3cqZAp">
            <node concept="1Wc70l" id="hYSIWrZ" role="3clFbG">
              <node concept="3clFbC" id="hYSIWs0" role="3uHU7w">
                <node concept="30H73N" id="hYSIWs1" role="3uHU7w" />
                <node concept="2OqwBi" id="hYSIWs2" role="3uHU7B">
                  <node concept="1PxgMI" id="hYSIWs3" role="2Oq$k0">
                    <ref role="1PxNhF" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                    <node concept="2OqwBi" id="hYSIWs4" role="1PxMeX">
                      <node concept="30H73N" id="hYSIWs5" role="2Oq$k0" />
                      <node concept="1mfA1w" id="hYSIWs6" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="hYSIWs7" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz7vLUn" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="hYSIWs8" role="3uHU7B">
                <node concept="2OqwBi" id="hYSIWs9" role="2Oq$k0">
                  <node concept="30H73N" id="hYSIWsa" role="2Oq$k0" />
                  <node concept="1mfA1w" id="hYSIWsb" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="hYSIWsc" role="2OqNvi">
                  <node concept="chp4Y" id="hYSIWsd" role="cj9EA">
                    <ref role="cht4Q" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="hYSIFiO" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hYeW1s5" resolve="SmartActionParameterReference" />
      <node concept="j$656" id="hYSIGhQ" role="1lVwrX">
        <ref role="v9R2y" node="hYSHJBN" resolve="reduce_SmartActionParameterReference_NonlValue" />
      </node>
      <node concept="30G5F_" id="hYSIH3r" role="30HLyM">
        <node concept="3clFbS" id="hYSIH3s" role="2VODD2">
          <node concept="3clFbF" id="hYSIHuj" role="3cqZAp">
            <node concept="3fqX7Q" id="hYSIXYB" role="3clFbG">
              <node concept="1eOMI4" id="3$myXoLqmn0" role="3fr31v">
                <node concept="1Wc70l" id="hYSIXYC" role="1eOMHV">
                  <node concept="3clFbC" id="hYSIXYD" role="3uHU7w">
                    <node concept="30H73N" id="hYSIXYE" role="3uHU7w" />
                    <node concept="2OqwBi" id="hYSIXYF" role="3uHU7B">
                      <node concept="1PxgMI" id="hYSIXYG" role="2Oq$k0">
                        <ref role="1PxNhF" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                        <node concept="2OqwBi" id="hYSIXYH" role="1PxMeX">
                          <node concept="30H73N" id="hYSIXYI" role="2Oq$k0" />
                          <node concept="1mfA1w" id="hYSIXYJ" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="hYSIXYK" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fz7vLUn" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="hYSIXYL" role="3uHU7B">
                    <node concept="2OqwBi" id="hYSIXYM" role="2Oq$k0">
                      <node concept="30H73N" id="hYSIXYN" role="2Oq$k0" />
                      <node concept="1mfA1w" id="hYSIXYO" role="2OqNvi" />
                    </node>
                    <node concept="1mIQ4w" id="hYSIXYP" role="2OqNvi">
                      <node concept="chp4Y" id="hYSIXYQ" role="cj9EA">
                        <ref role="cht4Q" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
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
    <node concept="3aamgX" id="hYSbX6c" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:hYf4TGt" resolve="ConceptFunctionParameter_OperationContext" />
      <node concept="j$656" id="hYSbYO_" role="1lVwrX">
        <ref role="v9R2y" node="hYSbs24" resolve="reduce_ConceptFunctionParameter_OperationContext" />
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="hYSbs24">
    <property role="TrG5h" value="reduce_ConceptFunctionParameter_OperationContext" />
    <ref role="3gUMe" to="tpdg:hYf4TGt" resolve="ConceptFunctionParameter_OperationContext" />
    <node concept="312cEu" id="hYSbDxS" role="13RCb5">
      <property role="TrG5h" value="SAction_Runtime" />
      <node concept="3clFbW" id="hYSbDxU" role="jymVt">
        <node concept="3cqZAl" id="hYSbDxV" role="3clF45" />
        <node concept="3clFbS" id="hYSbDxX" role="3clF47" />
        <node concept="3Tm1VV" id="hYSbDxW" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="hYSbEHT" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="3clFbS" id="hYSujYU" role="3clF47">
          <node concept="3clFbF" id="hYSukDq" role="3cqZAp">
            <node concept="1DoJHT" id="hYSukDr" role="3clFbG">
              <property role="1Dpdpm" value="getOperationContext" />
              <node concept="3uibUv" id="hYSukDs" role="1Ez5kq">
                <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
              </node>
              <node concept="eJtiG" id="hYSukDt" role="1EMhIo" />
              <node concept="raruj" id="hYSuls1" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="hYSbEHU" role="3clF45" />
        <node concept="3Tm1VV" id="hYSbEHV" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="hYSbDxT" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="hYSHJBN">
    <property role="TrG5h" value="reduce_SmartActionParameterReference_NonlValue" />
    <ref role="3gUMe" to="tpdg:hYeW1s5" resolve="SmartActionParameterReference" />
    <node concept="312cEu" id="hYSHXw2" role="13RCb5">
      <property role="TrG5h" value="SmartAction_Runtime" />
      <node concept="3clFbW" id="hYSHXwu" role="jymVt">
        <node concept="3clFbS" id="hYSHXwx" role="3clF47" />
        <node concept="3Tm1VV" id="hYSHXww" role="1B3o_S" />
        <node concept="3cqZAl" id="hYSHXwv" role="3clF45" />
      </node>
      <node concept="3clFb_" id="hYSHXw3" role="jymVt">
        <property role="TrG5h" value="method" />
        <node concept="37vLTG" id="hYSHXwr" role="3clF46">
          <property role="TrG5h" value="smartActionContext" />
          <node concept="3uibUv" id="hYSHXws" role="1tU5fm">
            <ref role="3uigEE" to="hvbn:~SmartActionContext" resolve="SmartActionContext" />
          </node>
        </node>
        <node concept="3clFbS" id="hYSHXw6" role="3clF47">
          <node concept="3clFbF" id="hYSHXw7" role="3cqZAp">
            <node concept="1eOMI4" id="hYSI3J4" role="3clFbG">
              <node concept="raruj" id="hYSIcXK" role="lGtFl" />
              <node concept="10QFUN" id="hYSI3J5" role="1eOMHV">
                <node concept="AH0OO" id="hYSI3J6" role="10QFUP">
                  <node concept="3cmrfG" id="hYSI3J7" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="hYSI3J8" role="AHHXb">
                    <node concept="1eOMI4" id="hYSI3Jk" role="2Oq$k0">
                      <node concept="1DoJHT" id="hYSI3Jl" role="1eOMHV">
                        <property role="1Dpdpm" value="getSmartActionContext" />
                        <node concept="eJtiG" id="hYSI3Jn" role="1EMhIo" />
                        <node concept="3uibUv" id="hYSI3Jm" role="1Ez5kq">
                          <ref role="3uigEE" to="hvbn:~SmartActionContext" resolve="SmartActionContext" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="hYSI3J9" role="2OqNvi">
                      <ref role="37wK5l" to="hvbn:~SmartActionContext.get(java.lang.String):java.lang.Object[]" resolve="get" />
                      <node concept="Xl_RD" id="hYSI3Ja" role="37wK5m">
                        <property role="Xl_RC" value="propertyName" />
                        <node concept="17Uvod" id="hYSI3Jb" role="lGtFl">
                          <property role="2qtEX9" value="value" />
                          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                          <node concept="3zFVjK" id="hYSI3Jc" role="3zH0cK">
                            <node concept="3clFbS" id="hYSI3Jd" role="2VODD2">
                              <node concept="3clFbF" id="hYSI3Je" role="3cqZAp">
                                <node concept="2OqwBi" id="hYSI3Jf" role="3clFbG">
                                  <node concept="2OqwBi" id="hYSI3Jg" role="2Oq$k0">
                                    <node concept="30H73N" id="hYSI3Jh" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="hYSI3Ji" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpdg:hYeWbzl" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="hYSI3Jj" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
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
                <node concept="3uibUv" id="hYSIc5A" role="10QFUM">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <node concept="29HgVG" id="hYSIeKO" role="lGtFl">
                    <node concept="3NFfHV" id="hYSIeKP" role="3NFExx">
                      <node concept="3clFbS" id="hYSIeKQ" role="2VODD2">
                        <node concept="3clFbF" id="hYSIfEw" role="3cqZAp">
                          <node concept="2OqwBi" id="hYSIyQb" role="3clFbG">
                            <node concept="3TrEf2" id="hYSIzpD" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpdg:hYeVN14" />
                            </node>
                            <node concept="2OqwBi" id="hYSIfFg" role="2Oq$k0">
                              <node concept="3TrEf2" id="hYSIys2" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpdg:hYeWbzl" />
                              </node>
                              <node concept="30H73N" id="hYSIfEx" role="2Oq$k0" />
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
        <node concept="3Tm1VV" id="hYSHXw5" role="1B3o_S" />
        <node concept="3cqZAl" id="hYSHXw4" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="hYSHXwt" role="1B3o_S" />
    </node>
  </node>
  <node concept="bUwia" id="4IXs4YUzncg">
    <property role="TrG5h" value="PasteProcessing" />
    <property role="3GE5qa" value="copyPaste" />
    <node concept="aNPBN" id="5abCRRje4ha" role="aQYdv">
      <ref role="aOQi4" to="tpdg:5abCRRje3Su" resolve="CopyPasteHandlers" />
    </node>
    <node concept="3aamgX" id="4IXs4YU_yei" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:5eziI4W3ixV" resolve="ConceptFunctionParameter_nodeToPastePostProcess" />
      <node concept="j$656" id="4IXs4YU_yek" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="5abCRRjcApn" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:5abCRRjcA0O" resolve="ConceptFunctionParameter_nodeToCopyPreProcess" />
      <node concept="j$656" id="5abCRRjcApp" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3aamgX" id="5abCRRjcAps" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:5abCRRjcA1C" resolve="ConceptFunctionParameter_nodeToCopyPreProcessOriginal" />
      <node concept="j$656" id="5abCRRjcApt" role="1lVwrX">
        <ref role="v9R2y" to="tpe8:gCCYkhx" resolve="reduce_ConceptFunctionParameter_default" />
      </node>
    </node>
    <node concept="3lhOvk" id="4IXs4YUzns1" role="3lj3bC">
      <ref role="30HIoZ" to="tpdg:vkUVjS$P5G" resolve="PastePostProcessor" />
      <ref role="3lhOvi" node="4IXs4YUzns2" resolve="PastePostProcessor" />
    </node>
    <node concept="3lhOvk" id="5abCRRjcApm" role="3lj3bC">
      <ref role="30HIoZ" to="tpdg:5abCRRjch_6" resolve="CopyPreProcessor" />
      <ref role="3lhOvi" node="5abCRRjcA9d" resolve="CopyPreProcessor" />
    </node>
  </node>
  <node concept="312cEu" id="4IXs4YUzns2">
    <property role="TrG5h" value="PastePostProcessor" />
    <property role="3GE5qa" value="copyPaste" />
    <node concept="3clFb_" id="4IXs4YUznsm" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <node concept="3THzug" id="4IXs4YUznsn" role="3clF45" />
      <node concept="3clFbS" id="4IXs4YUznsp" role="3clF47">
        <node concept="3clFbF" id="4IXs4YUz$iz" role="3cqZAp">
          <node concept="3TUQnm" id="4IXs4YUz$i$" role="3clFbG">
            <node concept="1ZhdrF" id="4IXs4YUz$i_" role="lGtFl">
              <property role="2qtEX8" value="conceptDeclaration" />
              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
              <node concept="3$xsQk" id="4IXs4YUz$iA" role="3$ytzL">
                <node concept="3clFbS" id="4IXs4YUz$iB" role="2VODD2">
                  <node concept="3clFbF" id="4IXs4YUz$iC" role="3cqZAp">
                    <node concept="2OqwBi" id="4IXs4YUz$iF" role="3clFbG">
                      <node concept="3TrEf2" id="4IXs4YUz$iJ" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:5eziI4W39hV" />
                      </node>
                      <node concept="30H73N" id="4IXs4YUz$iE" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4IXs4YUznso" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="4IXs4YUznsq" role="jymVt">
      <property role="TrG5h" value="postProcesNode" />
      <node concept="37vLTG" id="4IXs4YU_xTw" role="3clF46">
        <property role="TrG5h" value="pastedNode" />
        <node concept="3Tqbb2" id="4IXs4YU_xTy" role="1tU5fm">
          <node concept="1ZhdrF" id="4IXs4YU_xT_" role="lGtFl">
            <property role="2qtEX8" value="concept" />
            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
            <node concept="3$xsQk" id="4IXs4YU_xTA" role="3$ytzL">
              <node concept="3clFbS" id="4IXs4YU_xTB" role="2VODD2">
                <node concept="3clFbF" id="4IXs4YU_xTC" role="3cqZAp">
                  <node concept="2OqwBi" id="4IXs4YU_xTF" role="3clFbG">
                    <node concept="30H73N" id="4IXs4YU_xTE" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4IXs4YU_xTJ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:5eziI4W39hV" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="4IXs4YU_y3L" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="4IXs4YU_y3M" role="3zH0cK">
            <node concept="3clFbS" id="4IXs4YU_y3N" role="2VODD2">
              <node concept="3clFbF" id="4IXs4YU_y3O" role="3cqZAp">
                <node concept="2OqwBi" id="2wdLO7Kg4ks" role="3clFbG">
                  <node concept="3TrcHB" id="2wdLO7Kg4kt" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                  <node concept="3TUQnm" id="2wdLO7Kg4ku" role="2Oq$k0">
                    <ref role="3TV0OU" to="tpdg:5eziI4W3ixV" resolve="ConceptFunctionParameter_nodeToPastePostProcess" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4IXs4YUznst" role="3clF45" />
      <node concept="3clFbS" id="4IXs4YUznsv" role="3clF47">
        <node concept="29HgVG" id="4IXs4YUz$iL" role="lGtFl">
          <node concept="3NFfHV" id="4IXs4YUz$iM" role="3NFExx">
            <node concept="3clFbS" id="4IXs4YUz$iN" role="2VODD2">
              <node concept="3clFbF" id="4IXs4YUz$iO" role="3cqZAp">
                <node concept="2OqwBi" id="4IXs4YUz$j2" role="3clFbG">
                  <node concept="3TrEf2" id="4IXs4YUz$j6" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                  </node>
                  <node concept="2OqwBi" id="4IXs4YUz$iX" role="2Oq$k0">
                    <node concept="3TrEf2" id="4IXs4YUz$j1" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:3nLT6rk5m7N" />
                    </node>
                    <node concept="30H73N" id="4IXs4YUz$iV" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4IXs4YUznsu" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4IXs4YUzns3" role="1B3o_S" />
    <node concept="n94m4" id="4IXs4YUzns8" role="lGtFl">
      <ref role="n9lRv" to="tpdg:vkUVjS$P5G" resolve="PastePostProcessor" />
    </node>
    <node concept="17Uvod" id="4IXs4YUzns9" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4IXs4YUznsa" role="3zH0cK">
        <node concept="3clFbS" id="4IXs4YUznsb" role="2VODD2">
          <node concept="3clFbF" id="4IXs4YUznsc" role="3cqZAp">
            <node concept="2OqwBi" id="4IXs4YUznsf" role="3clFbG">
              <node concept="30H73N" id="4IXs4YUznse" role="2Oq$k0" />
              <node concept="2qgKlT" id="4IXs4YUz$ik" role="2OqNvi">
                <ref role="37wK5l" to="tpdr:4IXs4YUz$e_" resolve="getClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="4IXs4YUznsl" role="EKbjA">
      <ref role="3uigEE" to="iaml:1930B_DWgES" resolve="PastePostProcessor" />
    </node>
  </node>
  <node concept="312cEu" id="5abCRRjcA9d">
    <property role="TrG5h" value="CopyPreProcessor" />
    <property role="3GE5qa" value="copyPaste" />
    <node concept="3clFb_" id="5abCRRjcWFj" role="jymVt">
      <property role="TrG5h" value="getApplicableConcept" />
      <node concept="3THzug" id="5abCRRjcWFk" role="3clF45" />
      <node concept="3Tm1VV" id="5abCRRjcWFl" role="1B3o_S" />
      <node concept="3clFbS" id="5abCRRjcWFm" role="3clF47">
        <node concept="3clFbF" id="5abCRRjcWFn" role="3cqZAp">
          <node concept="3TUQnm" id="5abCRRjcWFo" role="3clFbG">
            <node concept="1ZhdrF" id="5abCRRjcWFp" role="lGtFl">
              <property role="2qtEX8" value="conceptDeclaration" />
              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1172424058054/1172424100906" />
              <node concept="3$xsQk" id="5abCRRjcWFq" role="3$ytzL">
                <node concept="3clFbS" id="5abCRRjcWFr" role="2VODD2">
                  <node concept="3clFbF" id="5abCRRjcWFs" role="3cqZAp">
                    <node concept="2OqwBi" id="5abCRRjcWFt" role="3clFbG">
                      <node concept="30H73N" id="5abCRRjcWFu" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5abCRRjcWFw" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:5abCRRjcnId" />
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
    <node concept="3clFb_" id="5abCRRjcWF_" role="jymVt">
      <property role="TrG5h" value="preProcesNode" />
      <node concept="37vLTG" id="5abCRRjcWFA" role="3clF46">
        <property role="TrG5h" value="copy" />
        <node concept="17Uvod" id="5abCRRjcWFJ" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="5abCRRjcWFK" role="3zH0cK">
            <node concept="3clFbS" id="5abCRRjcWFL" role="2VODD2">
              <node concept="3clFbF" id="5abCRRjcWFM" role="3cqZAp">
                <node concept="2OqwBi" id="2wdLO7Keg_O" role="3clFbG">
                  <node concept="3TUQnm" id="2wdLO7Keg_Q" role="2Oq$k0">
                    <ref role="3TV0OU" to="tpdg:5abCRRjcA0O" resolve="ConceptFunctionParameter_nodeToCopyPreProcess" />
                  </node>
                  <node concept="3TrcHB" id="2wdLO7Keg_P" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="5abCRRjcWFB" role="1tU5fm">
          <node concept="1ZhdrF" id="5abCRRjcWFC" role="lGtFl">
            <property role="2qtEX8" value="concept" />
            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
            <node concept="3$xsQk" id="5abCRRjcWFD" role="3$ytzL">
              <node concept="3clFbS" id="5abCRRjcWFE" role="2VODD2">
                <node concept="3clFbF" id="5abCRRjcWFF" role="3cqZAp">
                  <node concept="2OqwBi" id="5abCRRjcWFG" role="3clFbG">
                    <node concept="30H73N" id="5abCRRjcWFH" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5abCRRjcWG2" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:5abCRRjcnId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5abCRRjcWFS" role="3clF47">
        <node concept="29HgVG" id="5abCRRjcWFT" role="lGtFl">
          <node concept="3NFfHV" id="5abCRRjcWFU" role="3NFExx">
            <node concept="3clFbS" id="5abCRRjcWFV" role="2VODD2">
              <node concept="3clFbF" id="5abCRRjcWFW" role="3cqZAp">
                <node concept="2OqwBi" id="5abCRRjcWFX" role="3clFbG">
                  <node concept="2OqwBi" id="5abCRRjcWFY" role="2Oq$k0">
                    <node concept="30H73N" id="5abCRRjcWFZ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5abCRRjcWGr" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:5abCRRjcivp" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5abCRRjcWG1" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5abCRRjcWFQ" role="3clF45" />
      <node concept="3Tm1VV" id="5abCRRjcWFR" role="1B3o_S" />
      <node concept="37vLTG" id="5abCRRjcWG7" role="3clF46">
        <property role="TrG5h" value="original" />
        <node concept="17Uvod" id="5abCRRjcWGk" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="5abCRRjcWGl" role="3zH0cK">
            <node concept="3clFbS" id="5abCRRjcWGm" role="2VODD2">
              <node concept="3clFbF" id="5abCRRjcWGn" role="3cqZAp">
                <node concept="2OqwBi" id="2wdLO7Kez9V" role="3clFbG">
                  <node concept="3TUQnm" id="2wdLO7Kez9X" role="2Oq$k0">
                    <ref role="3TV0OU" to="tpdg:5abCRRjcA1C" resolve="ConceptFunctionParameter_nodeToCopyPreProcessOriginal" />
                  </node>
                  <node concept="3TrcHB" id="2wdLO7Kez9W" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tqbb2" id="5abCRRjcWG9" role="1tU5fm">
          <node concept="1ZhdrF" id="5abCRRjcWGa" role="lGtFl">
            <property role="2qtEX8" value="concept" />
            <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
            <node concept="3$xsQk" id="5abCRRjcWGb" role="3$ytzL">
              <node concept="3clFbS" id="5abCRRjcWGc" role="2VODD2">
                <node concept="3clFbF" id="5abCRRjcWGd" role="3cqZAp">
                  <node concept="2OqwBi" id="5abCRRjcWGf" role="3clFbG">
                    <node concept="3TrEf2" id="5abCRRjcWGj" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:5abCRRjcnId" />
                    </node>
                    <node concept="30H73N" id="5abCRRjcWGe" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5abCRRjcA9e" role="1B3o_S" />
    <node concept="n94m4" id="5abCRRjcA9j" role="lGtFl">
      <ref role="n9lRv" to="tpdg:5abCRRjch_6" resolve="CopyPreProcessor" />
    </node>
    <node concept="17Uvod" id="5abCRRjcA9l" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5abCRRjcA9m" role="3zH0cK">
        <node concept="3clFbS" id="5abCRRjcA9n" role="2VODD2">
          <node concept="3clFbF" id="5abCRRjcA9o" role="3cqZAp">
            <node concept="2OqwBi" id="5abCRRjcA9q" role="3clFbG">
              <node concept="30H73N" id="5abCRRjcA9p" role="2Oq$k0" />
              <node concept="2qgKlT" id="5abCRRjcA9u" role="2OqNvi">
                <ref role="37wK5l" to="tpdr:5abCRRjcnXl" resolve="getClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="5abCRRjcWFi" role="EKbjA">
      <ref role="3uigEE" to="iaml:5abCRRjcQjK" resolve="CopyPreProcessor" />
    </node>
  </node>
  <node concept="13MO4I" id="5bXc4ftgJgq">
    <property role="TrG5h" value="reduce_GenericNewExpression_with_SNodeCreatorAndInitializer" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpee:gEShNN5" resolve="GenericNewExpression" />
    <node concept="2YIFZM" id="4w5s_OWHbi" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.createNewNode(org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="createNewNode" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="2YIFZM" id="4Dv5UFPd8Ir" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWHbj" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWHbk" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWHbl" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWHbm" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWHbn" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWHbo" role="3clFbG">
                    <node concept="1PxgMI" id="4w5s_OWHbp" role="2Oq$k0">
                      <ref role="1PxNhF" to="tp25:gzTqbfa" resolve="SNodeType" />
                      <node concept="2OqwBi" id="4w5s_OWHbq" role="1PxMeX">
                        <node concept="1PxgMI" id="4w5s_OWHbr" role="2Oq$k0">
                          <ref role="1PxNhF" to="tp25:hbzrR4P" resolve="SNodeCreator" />
                          <node concept="2OqwBi" id="4w5s_OWHbs" role="1PxMeX">
                            <node concept="30H73N" id="4w5s_OWHbt" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4w5s_OWHbu" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:gEShVi6" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="4w5s_OWHbv" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:hbzrR4S" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4w5s_OWHbw" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:g$ehGDh" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="4w5s_OWHbx" role="37wK5m">
        <node concept="1W57fq" id="4w5s_OWHby" role="lGtFl">
          <node concept="3IZrLx" id="4w5s_OWHbz" role="3IZSJc">
            <node concept="3clFbS" id="4w5s_OWHb$" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWHb_" role="3cqZAp">
                <node concept="3y3z36" id="4w5s_OWHbA" role="3clFbG">
                  <node concept="10Nm6u" id="4w5s_OWHbB" role="3uHU7w" />
                  <node concept="2OqwBi" id="4w5s_OWHbC" role="3uHU7B">
                    <node concept="1PxgMI" id="4w5s_OWHbD" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpdg:5bXc4ftgJeD" resolve="SNodeCreatorAndInitializer" />
                      <node concept="2OqwBi" id="4w5s_OWHbE" role="1PxMeX">
                        <node concept="30H73N" id="4w5s_OWHbF" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4w5s_OWHbG" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:gEShVi6" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrEf2" id="4w5s_OWHbH" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:3g_g2DkJS5u" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="4w5s_OWHbI" role="UU_$l">
            <node concept="10Nm6u" id="4w5s_OWHbJ" role="gfFT$" />
          </node>
        </node>
        <node concept="29HgVG" id="4w5s_OWHbK" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWHbL" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWHbM" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWHbN" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWHbO" role="3clFbG">
                  <node concept="1PxgMI" id="4w5s_OWHbP" role="2Oq$k0">
                    <ref role="1PxNhF" to="tpdg:5bXc4ftgJeD" resolve="SNodeCreatorAndInitializer" />
                    <node concept="2OqwBi" id="4w5s_OWHbQ" role="1PxMeX">
                      <node concept="30H73N" id="4w5s_OWHbR" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4w5s_OWHbS" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:gEShVi6" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4w5s_OWHbT" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:3g_g2DkJS5u" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWHbU" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="6JEpOPLvunT">
    <property role="TrG5h" value="reduce_NF_Concept_NewInstance" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:6JEpOPLvunO" resolve="NF_Concept_NewInstance" />
    <node concept="2YIFZM" id="6JEpOPLvunZ" role="13RCb5">
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.createNewNode(org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="createNewNode" />
      <node concept="2YIFZM" id="4w5s_OWr_5" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWr_6" role="37wK5m">
          <node concept="29HgVG" id="4w5s_OWr_7" role="lGtFl">
            <node concept="3NFfHV" id="4w5s_OWr_8" role="3NFExx">
              <node concept="3clFbS" id="4w5s_OWr_9" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWr_a" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWr_b" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWr_c" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4w5s_OWr_d" role="2OqNvi">
                      <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="6JEpOPLvuo9" role="37wK5m">
        <node concept="1W57fq" id="6JEpOPLvuoa" role="lGtFl">
          <node concept="3IZrLx" id="6JEpOPLvuob" role="3IZSJc">
            <node concept="3clFbS" id="6JEpOPLvuoc" role="2VODD2">
              <node concept="3clFbF" id="6JEpOPLvuod" role="3cqZAp">
                <node concept="3y3z36" id="6JEpOPLvuoe" role="3clFbG">
                  <node concept="2OqwBi" id="6JEpOPLvuof" role="3uHU7B">
                    <node concept="30H73N" id="6JEpOPLvuog" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3g_g2DkJPWQ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:3g_g2DkJPWO" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6JEpOPLvuoi" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="6JEpOPLvuoj" role="UU_$l">
            <node concept="10Nm6u" id="6JEpOPLvuok" role="gfFT$" />
          </node>
        </node>
        <node concept="29HgVG" id="6JEpOPLvuol" role="lGtFl">
          <node concept="3NFfHV" id="6JEpOPLvuom" role="3NFExx">
            <node concept="3clFbS" id="6JEpOPLvuon" role="2VODD2">
              <node concept="3clFbF" id="6JEpOPLvuoo" role="3cqZAp">
                <node concept="2OqwBi" id="6JEpOPLvuop" role="3clFbG">
                  <node concept="30H73N" id="6JEpOPLvuoq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="3g_g2DkJPWR" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:3g_g2DkJPWO" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="6JEpOPLvuos" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4KfPOs9Uvrr">
    <property role="TrG5h" value="reduce_NF_Model_CreateNewNodeOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:4KfPOs9Uu4C" resolve="NF_Model_CreateNewNodeOperation" />
    <node concept="2YIFZM" id="4w5s_OWKOU" role="13RCb5">
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.createNewNode(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="createNewNode" />
      <node concept="10Nm6u" id="4w5s_OWKOV" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWKOW" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWKOX" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWKOY" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWKOZ" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWKP0" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWKP1" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWKP2" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdniX" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWKP3" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWKP4" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWKP5" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWKP6" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWKP7" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWKP8" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWKP9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWKPa" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:gCI8USK" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="4w5s_OWKPb" role="37wK5m">
        <node concept="1W57fq" id="4w5s_OWKPc" role="lGtFl">
          <node concept="3IZrLx" id="4w5s_OWKPd" role="3IZSJc">
            <node concept="3clFbS" id="4w5s_OWKPe" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWKPf" role="3cqZAp">
                <node concept="3y3z36" id="4w5s_OWKPg" role="3clFbG">
                  <node concept="10Nm6u" id="4w5s_OWKPh" role="3uHU7w" />
                  <node concept="2OqwBi" id="4w5s_OWKPi" role="3uHU7B">
                    <node concept="30H73N" id="4w5s_OWKPj" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWKPk" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:3g_g2DkJPbE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="4w5s_OWKPl" role="UU_$l">
            <node concept="10Nm6u" id="4w5s_OWKPm" role="gfFT$" />
          </node>
        </node>
        <node concept="29HgVG" id="4w5s_OWKPn" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWKPo" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWKPp" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWKPq" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWKPr" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWKPs" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4w5s_OWKPt" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:3g_g2DkJPbE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWKPu" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4KfPOs9Uvse">
    <property role="TrG5h" value="reduce_NF_Model_CreateNewRootNodeOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:4KfPOs9Uvsc" resolve="NF_Model_CreateNewRootNodeOperation" />
    <node concept="2YIFZM" id="4w5s_OWM2g" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.createNewRootNode(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNode):org.jetbrains.mps.openapi.model.SNode" resolve="createNewRootNode" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OWM2h" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWM2i" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWM2j" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWM2k" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWM2l" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWM2m" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWM2n" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWM2o" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdp2w" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWM2p" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWM2q" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWM2r" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWM2s" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWM2t" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWM2u" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWM2v" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWM2w" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:gCI8USK" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="4w5s_OWM2x" role="37wK5m">
        <node concept="1W57fq" id="4w5s_OWM2y" role="lGtFl">
          <node concept="3IZrLx" id="4w5s_OWM2z" role="3IZSJc">
            <node concept="3clFbS" id="4w5s_OWM2$" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWM2_" role="3cqZAp">
                <node concept="3y3z36" id="4w5s_OWM2A" role="3clFbG">
                  <node concept="2OqwBi" id="4w5s_OWM2B" role="3uHU7B">
                    <node concept="30H73N" id="4w5s_OWM2C" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWM2D" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:3g_g2DkJPbC" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="4w5s_OWM2E" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="gft3U" id="4w5s_OWM2F" role="UU_$l">
            <node concept="10Nm6u" id="4w5s_OWM2G" role="gfFT$" />
          </node>
        </node>
        <node concept="29HgVG" id="4w5s_OWM2H" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWM2I" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWM2J" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWM2K" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWM2L" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWM2M" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4w5s_OWM2N" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpdg:3g_g2DkJPbC" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWM2O" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="E_sK2zBUyf">
    <property role="TrG5h" value="reduce_NF_LinkList_AddNewChildOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:E_sK2zBSs1" resolve="NF_LinkList_AddNewChildOperation" />
    <node concept="2YIFZM" id="4w5s_OW_SQ" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.addNewChild(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="addNewChild" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OW_SR" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OW_SS" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OW_ST" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OW_SU" role="2VODD2">
              <node concept="3SKdUt" id="4w5s_OW_SV" role="3cqZAp">
                <node concept="3SKdUq" id="4w5s_OW_SW" role="3SKWNk">
                  <property role="3SKdUp" value="&lt;expr-to-copy&gt; . linklist-access . add-new-child-op" />
                </node>
              </node>
              <node concept="3clFbF" id="4w5s_OW_SX" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OW_SY" role="3clFbG">
                  <node concept="2qgKlT" id="4w5s_OW_SZ" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGS" resolve="getLeftExpressionLeftExpression" />
                  </node>
                  <node concept="30H73N" id="4w5s_OW_T0" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="4w5s_OW_T1" role="37wK5m">
        <node concept="1sPUBX" id="4w5s_OW_T2" role="lGtFl">
          <ref role="v9R2y" to="tp27:hyDntTh" resolve="switch_toLinkRoleSLinkExp" />
          <node concept="3NFfHV" id="4w5s_OW_T3" role="1sPUBK">
            <node concept="3clFbS" id="4w5s_OW_T4" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OW_T5" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OW_T6" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OW_T7" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OW_T8" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdg0y" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OW_T9" role="37wK5m">
          <node concept="xERo3" id="4w5s_OW_Ta" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OW_Tb" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OW_Tc" role="2VODD2">
                <node concept="3cpWs8" id="4w5s_OW_Td" role="3cqZAp">
                  <node concept="3cpWsn" id="4w5s_OW_Te" role="3cpWs9">
                    <property role="TrG5h" value="parmConcept" />
                    <node concept="3THzug" id="4w5s_OW_Tf" role="1tU5fm" />
                    <node concept="2OqwBi" id="4w5s_OW_Tg" role="33vP2m">
                      <node concept="3TrEf2" id="4w5s_OW_Th" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp25:g_A0v_Z" />
                      </node>
                      <node concept="30H73N" id="4w5s_OW_Ti" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4w5s_OW_Tj" role="3cqZAp">
                  <node concept="3clFbS" id="4w5s_OW_Tk" role="3clFbx">
                    <node concept="3cpWs8" id="4w5s_OW_Tl" role="3cqZAp">
                      <node concept="3cpWsn" id="4w5s_OW_Tm" role="3cpWs9">
                        <property role="TrG5h" value="leftOperation" />
                        <node concept="3Tqbb2" id="4w5s_OW_Tn" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
                        </node>
                        <node concept="2OqwBi" id="4w5s_OW_To" role="33vP2m">
                          <node concept="2qgKlT" id="4w5s_OW_Tp" role="2OqNvi">
                            <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                          </node>
                          <node concept="30H73N" id="4w5s_OW_Tq" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w5s_OW_Tr" role="3cqZAp">
                      <node concept="37vLTI" id="4w5s_OW_Ts" role="3clFbG">
                        <node concept="2OqwBi" id="4w5s_OW_Tt" role="37vLTx">
                          <node concept="1PxgMI" id="4w5s_OW_Tu" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp25:3vpu_siOTrb" resolve="ILinkAccess" />
                            <node concept="37vLTw" id="4w5s_OW_Tv" role="1PxMeX">
                              <ref role="3cqZAo" node="4w5s_OW_Tm" resolve="leftOperation" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4w5s_OW_Tw" role="2OqNvi">
                            <ref role="37wK5l" to="tpeu:3vpu_siOTrr" resolve="getTargetConcept" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w5s_OW_Tx" role="37vLTJ">
                          <ref role="3cqZAo" node="4w5s_OW_Te" resolve="parmConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4w5s_OW_Ty" role="3clFbw">
                    <node concept="37vLTw" id="4w5s_OW_Tz" role="3uHU7B">
                      <ref role="3cqZAo" node="4w5s_OW_Te" resolve="parmConcept" />
                    </node>
                    <node concept="10Nm6u" id="4w5s_OW_T$" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3cpWs6" id="4w5s_OW_T_" role="3cqZAp">
                  <node concept="37vLTw" id="4w5s_OW_TA" role="3cqZAk">
                    <ref role="3cqZAo" node="4w5s_OW_Te" resolve="parmConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OW_TB" role="lGtFl" />
      <node concept="1W57fq" id="4w5s_OW_TC" role="lGtFl">
        <node concept="3IZrLx" id="4w5s_OW_TD" role="3IZSJc">
          <node concept="3clFbS" id="4w5s_OW_TE" role="2VODD2">
            <node concept="3clFbF" id="4w5s_OW_TF" role="3cqZAp">
              <node concept="3fqX7Q" id="4w5s_OW_TG" role="3clFbG">
                <node concept="2OqwBi" id="4w5s_OW_TH" role="3fr31v">
                  <node concept="2OqwBi" id="4w5s_OW_TI" role="2Oq$k0">
                    <node concept="30H73N" id="4w5s_OW_TJ" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4w5s_OW_TK" role="2OqNvi">
                      <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="4w5s_OW_TL" role="2OqNvi">
                    <node concept="chp4Y" id="4w5s_OW_TM" role="cj9EA">
                      <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="gft3U" id="4w5s_OW_TN" role="UU_$l">
          <node concept="2YIFZM" id="4w5s_OWAy_" role="gfFT$">
            <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.addNewAttribute(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="addNewAttribute" />
            <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
            <node concept="10Nm6u" id="4w5s_OWAyA" role="37wK5m">
              <node concept="29HgVG" id="4w5s_OWAyB" role="lGtFl">
                <node concept="3NFfHV" id="4w5s_OWAyC" role="3NFExx">
                  <node concept="3clFbS" id="4w5s_OWAyD" role="2VODD2">
                    <node concept="3SKdUt" id="4w5s_OWAyE" role="3cqZAp">
                      <node concept="3SKdUq" id="4w5s_OWAyF" role="3SKWNk">
                        <property role="3SKdUp" value="&lt;expr-to-copy&gt; . link-access . set-new-child-op" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w5s_OWAyG" role="3cqZAp">
                      <node concept="2OqwBi" id="4w5s_OWAyH" role="3clFbG">
                        <node concept="2qgKlT" id="4w5s_OWAyI" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:hEwJdGS" resolve="getLeftExpressionLeftExpression" />
                        </node>
                        <node concept="30H73N" id="4w5s_OWAyJ" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="4w5s_OWAyK" role="37wK5m">
              <node concept="29HgVG" id="4w5s_OWAyL" role="lGtFl">
                <node concept="3NFfHV" id="4w5s_OWAyM" role="3NFExx">
                  <node concept="3clFbS" id="4w5s_OWAyN" role="2VODD2">
                    <node concept="3clFbF" id="4w5s_OWAyO" role="3cqZAp">
                      <node concept="2OqwBi" id="4w5s_OWAyP" role="3clFbG">
                        <node concept="1PxgMI" id="4w5s_OWAyQ" role="2Oq$k0">
                          <ref role="1PxNhF" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                          <node concept="2OqwBi" id="4w5s_OWAyR" role="1PxMeX">
                            <node concept="30H73N" id="4w5s_OWAyS" role="2Oq$k0" />
                            <node concept="2qgKlT" id="4w5s_OWAyT" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="4w5s_OWAyU" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:5zEkxuKhrAO" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4Dv5UFPdho8" role="37wK5m">
              <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
              <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
              <node concept="10Nm6u" id="4w5s_OWAyV" role="37wK5m">
                <node concept="xERo3" id="4w5s_OWAyW" role="lGtFl">
                  <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
                  <node concept="3NFfHV" id="4w5s_OWAyX" role="xEYEz">
                    <node concept="3clFbS" id="4w5s_OWAyY" role="2VODD2">
                      <node concept="3cpWs8" id="4w5s_OWAyZ" role="3cqZAp">
                        <node concept="3cpWsn" id="4w5s_OWAz0" role="3cpWs9">
                          <property role="TrG5h" value="parmConcept" />
                          <node concept="3THzug" id="4w5s_OWAz1" role="1tU5fm" />
                          <node concept="2OqwBi" id="4w5s_OWAz2" role="33vP2m">
                            <node concept="3TrEf2" id="4w5s_OWAz3" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp25:g_A0v_Z" />
                            </node>
                            <node concept="30H73N" id="4w5s_OWAz4" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4w5s_OWAz5" role="3cqZAp">
                        <node concept="3clFbS" id="4w5s_OWAz6" role="3clFbx">
                          <node concept="3cpWs8" id="4w5s_OWAz7" role="3cqZAp">
                            <node concept="3cpWsn" id="4w5s_OWAz8" role="3cpWs9">
                              <property role="TrG5h" value="leftOperation" />
                              <node concept="3Tqbb2" id="4w5s_OWAz9" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
                              </node>
                              <node concept="2OqwBi" id="4w5s_OWAza" role="33vP2m">
                                <node concept="2qgKlT" id="4w5s_OWAzb" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                                </node>
                                <node concept="30H73N" id="4w5s_OWAzc" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4w5s_OWAzd" role="3cqZAp">
                            <node concept="37vLTI" id="4w5s_OWAze" role="3clFbG">
                              <node concept="2OqwBi" id="4w5s_OWAzf" role="37vLTx">
                                <node concept="1PxgMI" id="4w5s_OWAzg" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tp25:3vpu_siOTrb" resolve="ILinkAccess" />
                                  <node concept="37vLTw" id="4w5s_OWAzh" role="1PxMeX">
                                    <ref role="3cqZAo" node="4w5s_OWAz8" resolve="leftOperation" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4w5s_OWAzi" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:3vpu_siOTrr" resolve="getTargetConcept" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="4w5s_OWAzj" role="37vLTJ">
                                <ref role="3cqZAo" node="4w5s_OWAz0" resolve="parmConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="4w5s_OWAzk" role="3clFbw">
                          <node concept="37vLTw" id="4w5s_OWAzl" role="3uHU7B">
                            <ref role="3cqZAo" node="4w5s_OWAz0" resolve="parmConcept" />
                          </node>
                          <node concept="10Nm6u" id="4w5s_OWAzm" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="4w5s_OWAzn" role="3cqZAp">
                        <node concept="37vLTw" id="4w5s_OWAzo" role="3cqZAk">
                          <ref role="3cqZAo" node="4w5s_OWAz0" resolve="parmConcept" />
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
  <node concept="13MO4I" id="E_sK2zBUyl">
    <property role="TrG5h" value="reduce_NF_Link_SetNewChildOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:E_sK2zBSrY" resolve="NF_Link_SetNewChildOperation" />
    <node concept="2YIFZM" id="4w5s_OWFPy" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.setNewChild(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="setNewChild" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OWFPz" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWFP$" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWFP_" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWFPA" role="2VODD2">
              <node concept="3SKdUt" id="4w5s_OWFPB" role="3cqZAp">
                <node concept="3SKdUq" id="4w5s_OWFPC" role="3SKWNk">
                  <property role="3SKdUp" value="&lt;expr-to-copy&gt; . link-access . set-new-child-op" />
                </node>
              </node>
              <node concept="3clFbF" id="4w5s_OWFPD" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWFPE" role="3clFbG">
                  <node concept="2qgKlT" id="4w5s_OWFPF" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGS" resolve="getLeftExpressionLeftExpression" />
                  </node>
                  <node concept="30H73N" id="4w5s_OWFPG" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10Nm6u" id="4w5s_OWFPH" role="37wK5m">
        <node concept="1sPUBX" id="4w5s_OWFPI" role="lGtFl">
          <ref role="v9R2y" to="tp27:hyDntTh" resolve="switch_toLinkRoleSLinkExp" />
          <node concept="3NFfHV" id="4w5s_OWFPJ" role="1sPUBK">
            <node concept="3clFbS" id="4w5s_OWFPK" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWFPL" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWFPM" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWFPN" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWFPO" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdjSj" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWFPP" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWFPQ" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWFPR" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWFPS" role="2VODD2">
                <node concept="3cpWs8" id="4w5s_OWFPT" role="3cqZAp">
                  <node concept="3cpWsn" id="4w5s_OWFPU" role="3cpWs9">
                    <property role="TrG5h" value="parmConcept" />
                    <node concept="3THzug" id="4w5s_OWFPV" role="1tU5fm" />
                    <node concept="2OqwBi" id="4w5s_OWFPW" role="33vP2m">
                      <node concept="3TrEf2" id="4w5s_OWFPX" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp25:g_A9B6W" />
                      </node>
                      <node concept="30H73N" id="4w5s_OWFPY" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4w5s_OWFPZ" role="3cqZAp">
                  <node concept="3clFbS" id="4w5s_OWFQ0" role="3clFbx">
                    <node concept="3cpWs8" id="4w5s_OWFQ1" role="3cqZAp">
                      <node concept="3cpWsn" id="4w5s_OWFQ2" role="3cpWs9">
                        <property role="TrG5h" value="leftOperation" />
                        <node concept="3Tqbb2" id="4w5s_OWFQ3" role="1tU5fm">
                          <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
                        </node>
                        <node concept="2OqwBi" id="4w5s_OWFQ4" role="33vP2m">
                          <node concept="2qgKlT" id="4w5s_OWFQ5" role="2OqNvi">
                            <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                          </node>
                          <node concept="30H73N" id="4w5s_OWFQ6" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w5s_OWFQ7" role="3cqZAp">
                      <node concept="37vLTI" id="4w5s_OWFQ8" role="3clFbG">
                        <node concept="2OqwBi" id="4w5s_OWFQ9" role="37vLTx">
                          <node concept="1PxgMI" id="4w5s_OWFQa" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp25:3vpu_siOTrb" resolve="ILinkAccess" />
                            <node concept="37vLTw" id="4w5s_OWFQb" role="1PxMeX">
                              <ref role="3cqZAo" node="4w5s_OWFQ2" resolve="leftOperation" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4w5s_OWFQc" role="2OqNvi">
                            <ref role="37wK5l" to="tpeu:3vpu_siOTrr" resolve="getTargetConcept" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4w5s_OWFQd" role="37vLTJ">
                          <ref role="3cqZAo" node="4w5s_OWFPU" resolve="parmConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="4w5s_OWFQe" role="3clFbw">
                    <node concept="37vLTw" id="4w5s_OWFQf" role="3uHU7B">
                      <ref role="3cqZAo" node="4w5s_OWFPU" resolve="parmConcept" />
                    </node>
                    <node concept="10Nm6u" id="4w5s_OWFQg" role="3uHU7w" />
                  </node>
                </node>
                <node concept="3cpWs6" id="4w5s_OWFQh" role="3cqZAp">
                  <node concept="37vLTw" id="4w5s_OWFQi" role="3cqZAk">
                    <ref role="3cqZAo" node="4w5s_OWFPU" resolve="parmConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWFQj" role="lGtFl" />
      <node concept="1W57fq" id="4w5s_OWFQk" role="lGtFl">
        <node concept="3IZrLx" id="4w5s_OWFQl" role="3IZSJc">
          <node concept="3clFbS" id="4w5s_OWFQm" role="2VODD2">
            <node concept="3clFbF" id="4w5s_OWFQn" role="3cqZAp">
              <node concept="3fqX7Q" id="4w5s_OWFQo" role="3clFbG">
                <node concept="2OqwBi" id="4w5s_OWFQp" role="3fr31v">
                  <node concept="2OqwBi" id="4w5s_OWFQq" role="2Oq$k0">
                    <node concept="30H73N" id="4w5s_OWFQr" role="2Oq$k0" />
                    <node concept="2qgKlT" id="4w5s_OWFQs" role="2OqNvi">
                      <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                    </node>
                  </node>
                  <node concept="1mIQ4w" id="4w5s_OWFQt" role="2OqNvi">
                    <node concept="chp4Y" id="4w5s_OWFQu" role="cj9EA">
                      <ref role="cht4Q" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="gft3U" id="4w5s_OWFQv" role="UU_$l">
          <node concept="2YIFZM" id="4w5s_OWFQw" role="gfFT$">
            <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.setNewAttribute(org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="setNewAttribute" />
            <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
            <node concept="10Nm6u" id="4w5s_OWFQx" role="37wK5m">
              <node concept="29HgVG" id="4w5s_OWFQy" role="lGtFl">
                <node concept="3NFfHV" id="4w5s_OWFQz" role="3NFExx">
                  <node concept="3clFbS" id="4w5s_OWFQ$" role="2VODD2">
                    <node concept="3SKdUt" id="4w5s_OWFQ_" role="3cqZAp">
                      <node concept="3SKdUq" id="4w5s_OWFQA" role="3SKWNk">
                        <property role="3SKdUp" value="&lt;expr-to-copy&gt; . link-access . set-new-child-op" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4w5s_OWFQB" role="3cqZAp">
                      <node concept="2OqwBi" id="4w5s_OWFQC" role="3clFbG">
                        <node concept="2qgKlT" id="4w5s_OWFQD" role="2OqNvi">
                          <ref role="37wK5l" to="tpeu:hEwJdGS" resolve="getLeftExpressionLeftExpression" />
                        </node>
                        <node concept="30H73N" id="4w5s_OWFQE" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="4w5s_OWFQF" role="37wK5m">
              <node concept="29HgVG" id="4w5s_OWFQG" role="lGtFl">
                <node concept="3NFfHV" id="4w5s_OWFQH" role="3NFExx">
                  <node concept="3clFbS" id="4w5s_OWFQI" role="2VODD2">
                    <node concept="3clFbF" id="4w5s_OWFQJ" role="3cqZAp">
                      <node concept="2OqwBi" id="4w5s_OWFQK" role="3clFbG">
                        <node concept="1PxgMI" id="4w5s_OWFQL" role="2Oq$k0">
                          <ref role="1PxNhF" to="tp25:5zEkxuKhqeM" resolve="AttributeAccess" />
                          <node concept="2OqwBi" id="4w5s_OWFQM" role="1PxMeX">
                            <node concept="30H73N" id="4w5s_OWFQN" role="2Oq$k0" />
                            <node concept="2qgKlT" id="4w5s_OWFQO" role="2OqNvi">
                              <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                            </node>
                          </node>
                        </node>
                        <node concept="3TrEf2" id="4w5s_OWFQP" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:5zEkxuKhrAO" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2YIFZM" id="4Dv5UFPdleK" role="37wK5m">
              <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
              <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
              <node concept="10Nm6u" id="4w5s_OWFQQ" role="37wK5m">
                <node concept="xERo3" id="4w5s_OWFQR" role="lGtFl">
                  <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
                  <node concept="3NFfHV" id="4w5s_OWFQS" role="xEYEz">
                    <node concept="3clFbS" id="4w5s_OWFQT" role="2VODD2">
                      <node concept="3cpWs8" id="4w5s_OWFQU" role="3cqZAp">
                        <node concept="3cpWsn" id="4w5s_OWFQV" role="3cpWs9">
                          <property role="TrG5h" value="parmConcept" />
                          <node concept="3THzug" id="4w5s_OWFQW" role="1tU5fm" />
                          <node concept="2OqwBi" id="4w5s_OWFQX" role="33vP2m">
                            <node concept="3TrEf2" id="4w5s_OWFQY" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp25:g_A9B6W" />
                            </node>
                            <node concept="30H73N" id="4w5s_OWFQZ" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4w5s_OWFR0" role="3cqZAp">
                        <node concept="3clFbS" id="4w5s_OWFR1" role="3clFbx">
                          <node concept="3cpWs8" id="4w5s_OWFR2" role="3cqZAp">
                            <node concept="3cpWsn" id="4w5s_OWFR3" role="3cpWs9">
                              <property role="TrG5h" value="leftOperation" />
                              <node concept="3Tqbb2" id="4w5s_OWFR4" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:hqOqG0K" resolve="IOperation" />
                              </node>
                              <node concept="2OqwBi" id="4w5s_OWFR5" role="33vP2m">
                                <node concept="2qgKlT" id="4w5s_OWFR6" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:hEwJdHi" resolve="getLeftExpressionOperation" />
                                </node>
                                <node concept="30H73N" id="4w5s_OWFR7" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4w5s_OWFR8" role="3cqZAp">
                            <node concept="37vLTI" id="4w5s_OWFR9" role="3clFbG">
                              <node concept="2OqwBi" id="4w5s_OWFRa" role="37vLTx">
                                <node concept="1PxgMI" id="4w5s_OWFRb" role="2Oq$k0">
                                  <ref role="1PxNhF" to="tp25:3vpu_siOTrb" resolve="ILinkAccess" />
                                  <node concept="37vLTw" id="4w5s_OWFRc" role="1PxMeX">
                                    <ref role="3cqZAo" node="4w5s_OWFR3" resolve="leftOperation" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4w5s_OWFRd" role="2OqNvi">
                                  <ref role="37wK5l" to="tpeu:3vpu_siOTrr" resolve="getTargetConcept" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="4w5s_OWFRe" role="37vLTJ">
                                <ref role="3cqZAo" node="4w5s_OWFQV" resolve="parmConcept" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="4w5s_OWFRf" role="3clFbw">
                          <node concept="37vLTw" id="4w5s_OWFRg" role="3uHU7B">
                            <ref role="3cqZAo" node="4w5s_OWFQV" resolve="parmConcept" />
                          </node>
                          <node concept="10Nm6u" id="4w5s_OWFRh" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="4w5s_OWFRi" role="3cqZAp">
                        <node concept="37vLTw" id="4w5s_OWFRj" role="3cqZAk">
                          <ref role="3cqZAo" node="4w5s_OWFQV" resolve="parmConcept" />
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
  <node concept="13MO4I" id="E_sK2zBUyq">
    <property role="TrG5h" value="reduce_NF_Node_InsertNewNextSiblingOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:E_sK2zBSrS" resolve="NF_Node_InsertNewNextSiblingOperation" />
    <node concept="2YIFZM" id="4w5s_OWN59" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.insertNewNextSiblingChild(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="insertNewNextSiblingChild" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OWN5a" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWN5b" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWN5c" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWN5d" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWN5e" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWN5f" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWN5g" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWN5h" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdq3z" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWN5i" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWN5j" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWN5k" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWN5l" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWN5m" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWN5n" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWN5o" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWN5p" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:g_$SOQw" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWN5q" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="E_sK2zBUyv">
    <property role="TrG5h" value="reduce_NF_Node_InsertNewPrevSiblingOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:E_sK2zBSrU" resolve="NF_Node_InsertNewPrevSiblingOperation" />
    <node concept="2YIFZM" id="4w5s_OWNUy" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.insertNewPrevSiblingChild(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="insertNewPrevSiblingChild" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OWNUz" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWNU$" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWNU_" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWNUA" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWNUB" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWNUC" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWNUD" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWNUE" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdqFv" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWNUF" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWNUG" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWNUH" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWNUI" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWNUJ" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWNUK" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWNUL" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWNUM" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:gCHik1_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWNUN" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="E_sK2zBUy$">
    <property role="TrG5h" value="reduce_NF_Node_ReplaceWithNewOperation" />
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="3gUMe" to="tpdg:E_sK2zBSrW" resolve="NF_Node_ReplaceWithNewOperation" />
    <node concept="2YIFZM" id="4w5s_OWOJJ" role="13RCb5">
      <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.replaceWithNewChild(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SConcept):org.jetbrains.mps.openapi.model.SNode" resolve="replaceWithNewChild" />
      <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
      <node concept="10Nm6u" id="4w5s_OWOJK" role="37wK5m">
        <node concept="29HgVG" id="4w5s_OWOJL" role="lGtFl">
          <node concept="3NFfHV" id="4w5s_OWOJM" role="3NFExx">
            <node concept="3clFbS" id="4w5s_OWOJN" role="2VODD2">
              <node concept="3clFbF" id="4w5s_OWOJO" role="3cqZAp">
                <node concept="2OqwBi" id="4w5s_OWOJP" role="3clFbG">
                  <node concept="30H73N" id="4w5s_OWOJQ" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4w5s_OWOJR" role="2OqNvi">
                    <ref role="37wK5l" to="tpeu:hEwJdGu" resolve="getLeftExpression" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="4Dv5UFPdrgb" role="37wK5m">
        <ref role="37wK5l" to="zce0:~SNodeFactoryOperations.asInstanceConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):org.jetbrains.mps.openapi.language.SConcept" resolve="asInstanceConcept" />
        <ref role="1Pybhc" to="zce0:~SNodeFactoryOperations" resolve="SNodeFactoryOperations" />
        <node concept="10Nm6u" id="4w5s_OWOJS" role="37wK5m">
          <node concept="xERo3" id="4w5s_OWOJT" role="lGtFl">
            <ref role="xH3mL" to="tp27:5DcBNiM8Rtt" resolve="reduce_ConceptDeclaration2SAbstractConcept" />
            <node concept="3NFfHV" id="4w5s_OWOJU" role="xEYEz">
              <node concept="3clFbS" id="4w5s_OWOJV" role="2VODD2">
                <node concept="3clFbF" id="4w5s_OWOJW" role="3cqZAp">
                  <node concept="2OqwBi" id="4w5s_OWOJX" role="3clFbG">
                    <node concept="30H73N" id="4w5s_OWOJY" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4w5s_OWOJZ" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:g__rbu9" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4w5s_OWOK0" role="lGtFl" />
    </node>
  </node>
  <node concept="bUwia" id="5VEoCtDlcm4">
    <property role="TrG5h" value="node_operations" />
    <node concept="3aamgX" id="5VEoCtDlcn4" role="3acgRq">
      <ref role="30HIoZ" to="tpee:gEShNN5" resolve="GenericNewExpression" />
      <node concept="30G5F_" id="5VEoCtDlcn5" role="30HLyM">
        <node concept="3clFbS" id="5VEoCtDlcn6" role="2VODD2">
          <node concept="3clFbF" id="5VEoCtDlcn7" role="3cqZAp">
            <node concept="2OqwBi" id="5VEoCtDlcn8" role="3clFbG">
              <node concept="2OqwBi" id="5VEoCtDlcn9" role="2Oq$k0">
                <node concept="2OqwBi" id="5VEoCtDlcna" role="2Oq$k0">
                  <node concept="30H73N" id="5VEoCtDlcnb" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5VEoCtDlcnc" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gEShVi6" />
                  </node>
                </node>
                <node concept="3NT_Vc" id="5VEoCtDlcnd" role="2OqNvi" />
              </node>
              <node concept="3O6GUB" id="5VEoCtDlcne" role="2OqNvi">
                <node concept="chp4Y" id="5VEoCtDlcnf" role="3QVz_e">
                  <ref role="cht4Q" to="tpdg:5bXc4ftgJeD" resolve="SNodeCreatorAndInitializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="j$656" id="5VEoCtDlcng" role="1lVwrX">
        <ref role="v9R2y" node="5bXc4ftgJgq" resolve="reduce_GenericNewExpression_with_SNodeCreatorAndInitializer" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnh" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:6JEpOPLvunO" resolve="NF_Concept_NewInstance" />
      <node concept="j$656" id="5VEoCtDlcni" role="1lVwrX">
        <ref role="v9R2y" node="6JEpOPLvunT" resolve="reduce_NF_Concept_NewInstance" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnj" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4KfPOs9Uu4C" resolve="NF_Model_CreateNewNodeOperation" />
      <node concept="j$656" id="5VEoCtDlcnk" role="1lVwrX">
        <ref role="v9R2y" node="4KfPOs9Uvrr" resolve="reduce_NF_Model_CreateNewNodeOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnl" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:4KfPOs9Uvsc" resolve="NF_Model_CreateNewRootNodeOperation" />
      <node concept="j$656" id="5VEoCtDlcnm" role="1lVwrX">
        <ref role="v9R2y" node="4KfPOs9Uvse" resolve="reduce_NF_Model_CreateNewRootNodeOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnn" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:E_sK2zBSs1" resolve="NF_LinkList_AddNewChildOperation" />
      <node concept="j$656" id="5VEoCtDlcno" role="1lVwrX">
        <ref role="v9R2y" node="E_sK2zBUyf" resolve="reduce_NF_LinkList_AddNewChildOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnp" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:E_sK2zBSrY" resolve="NF_Link_SetNewChildOperation" />
      <node concept="j$656" id="5VEoCtDlcnq" role="1lVwrX">
        <ref role="v9R2y" node="E_sK2zBUyl" resolve="reduce_NF_Link_SetNewChildOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnr" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:E_sK2zBSrS" resolve="NF_Node_InsertNewNextSiblingOperation" />
      <node concept="j$656" id="5VEoCtDlcns" role="1lVwrX">
        <ref role="v9R2y" node="E_sK2zBUyq" resolve="reduce_NF_Node_InsertNewNextSiblingOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnt" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:E_sK2zBSrU" resolve="NF_Node_InsertNewPrevSiblingOperation" />
      <node concept="j$656" id="5VEoCtDlcnu" role="1lVwrX">
        <ref role="v9R2y" node="E_sK2zBUyv" resolve="reduce_NF_Node_InsertNewPrevSiblingOperation" />
      </node>
    </node>
    <node concept="3aamgX" id="5VEoCtDlcnv" role="3acgRq">
      <ref role="30HIoZ" to="tpdg:E_sK2zBSrW" resolve="NF_Node_ReplaceWithNewOperation" />
      <node concept="j$656" id="5VEoCtDlcnw" role="1lVwrX">
        <ref role="v9R2y" node="E_sK2zBUy$" resolve="reduce_NF_Node_ReplaceWithNewOperation" />
      </node>
    </node>
  </node>
  <node concept="jVnub" id="44uAAgK9riQ">
    <property role="TrG5h" value="RegisterMenuBuilder_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <node concept="3aamgX" id="44uAAgK9QOc" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8tYCj$" resolve="AddMenuPart" />
      <node concept="gft3U" id="44uAAgK9ZtV" role="1lVwrX">
        <node concept="9aQIb" id="44uAAgK9Zu1" role="gfFT$">
          <node concept="3clFbS" id="44uAAgK9Zu3" role="9aQI4">
            <node concept="3clFbH" id="44uAAgK9Zu7" role="3cqZAp">
              <node concept="1WS0z7" id="44uAAgKa0C3" role="lGtFl">
                <node concept="3JmXsc" id="44uAAgKa0C5" role="3Jn$fo">
                  <node concept="3clFbS" id="44uAAgKa0C7" role="2VODD2">
                    <node concept="3clFbF" id="44uAAgKa1$P" role="3cqZAp">
                      <node concept="2OqwBi" id="44uAAgKa1GH" role="3clFbG">
                        <node concept="3Tsc0h" id="44uAAgKa5iZ" role="2OqNvi">
                          <ref role="3TtcxE" to="tpdg:h8uz6W0" />
                        </node>
                        <node concept="30H73N" id="44uAAgKa1$O" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="1WfddY$XIBm" role="lGtFl">
                <ref role="v9R2y" node="h8_0XWC" resolve="RegisterMenuPart_st" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgK9Qq9" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:hd_wSsX" resolve="ConceptRightTransformPart" />
      <node concept="j$656" id="44uAAgK9WTA" role="1lVwrX">
        <ref role="v9R2y" node="hd_BLa9" resolve="RegisterMenuBuilder_Concept_st" />
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgK9PtE" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:hb46O4k" resolve="IncludeRightTransformForNodePart" />
      <node concept="j$656" id="44uAAgK9WT$" role="1lVwrX">
        <ref role="v9R2y" node="hb4jLoe" resolve="RegisterMenuBuilder_Include_st" />
      </node>
    </node>
    <node concept="b5Tf3" id="44uAAgK9RCk" role="jxRDz" />
  </node>
  <node concept="jVnub" id="44uAAgKAvyj">
    <property role="TrG5h" value="MenuBuilderPartMethod_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <node concept="3aamgX" id="44uAAgKAx$i" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8zlx8_" resolve="RemoveByConditionPart" />
      <node concept="j$656" id="44uAAgKAyK$" role="1lVwrX">
        <ref role="v9R2y" node="h8zoIN1" resolve="MenuBuilderPartMethodRemoveByCondition_subst" />
      </node>
    </node>
    <node concept="b5Tf3" id="44uAAgKAwus" role="jxRDz" />
  </node>
  <node concept="jVnub" id="44uAAgJVvfM">
    <property role="TrG5h" value="RegisterMenuBuilder_subst" />
    <property role="3GE5qa" value="MenuParts.Substitute" />
    <node concept="3aamgX" id="44uAAgJVTKn" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:h8tYCj$" resolve="AddMenuPart" />
      <node concept="gft3U" id="44uAAgJWzNu" role="1lVwrX">
        <node concept="9aQIb" id="44uAAgJWzNA" role="gfFT$">
          <node concept="3clFbS" id="44uAAgJWzNC" role="9aQI4">
            <node concept="3clFbH" id="44uAAgJWzNG" role="3cqZAp">
              <node concept="1WS0z7" id="44uAAgJWzNK" role="lGtFl">
                <node concept="3JmXsc" id="44uAAgJWzNM" role="3Jn$fo">
                  <node concept="3clFbS" id="44uAAgJWzNO" role="2VODD2">
                    <node concept="3clFbF" id="44uAAgJW_gR" role="3cqZAp">
                      <node concept="2OqwBi" id="44uAAgJW_oJ" role="3clFbG">
                        <node concept="3Tsc0h" id="44uAAgJWBSL" role="2OqNvi">
                          <ref role="3TtcxE" to="tpdg:h8uz6W0" />
                        </node>
                        <node concept="30H73N" id="44uAAgJW_gQ" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1sPUBX" id="1WfddY$XHPN" role="lGtFl">
                <ref role="v9R2y" node="h8ujc2f" resolve="RegisterMenuPart_subst" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="44uAAgJVxjP" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:hb5xCbf" resolve="ConceptSubstitutePart" />
      <node concept="j$656" id="44uAAgK9Y7v" role="1lVwrX">
        <ref role="v9R2y" node="hb5AaIy" resolve="RegisterMenuBuilder_Concept_subst" />
      </node>
    </node>
    <node concept="b5Tf3" id="44uAAgJVwdh" role="jxRDz" />
  </node>
  <node concept="jVnub" id="44uAAgKAE_4">
    <property role="TrG5h" value="MenuBuilderPartMethod_st" />
    <property role="3GE5qa" value="MenuParts.SideTransform" />
    <node concept="3aamgX" id="44uAAgKAHp5" role="3aUrZf">
      <ref role="30HIoZ" to="tpdg:hrdQSR_" resolve="RemoveSTByConditionPart" />
      <node concept="j$656" id="44uAAgKAHvm" role="1lVwrX">
        <ref role="v9R2y" node="hrdSTSw" resolve="MenuBuilderPartMethod_RemoveByCondition_st" />
      </node>
    </node>
    <node concept="b5Tf3" id="44uAAgKAIwf" role="jxRDz" />
  </node>
  <node concept="312cEu" id="52UGxk5s6_K">
    <property role="TrG5h" value="ActionAspectDescriptorImpl" />
    <node concept="Wx3nA" id="4UrKinLbqhr" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="LANGUAGE_FQ_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4UrKinLbq2P" role="1B3o_S" />
      <node concept="17QB3L" id="4UrKinLbqgv" role="1tU5fm" />
      <node concept="Xl_RD" id="4UrKinLbqoX" role="33vP2m">
        <property role="Xl_RC" value="" />
        <node concept="17Uvod" id="4UrKinLbqq7" role="lGtFl">
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <property role="2qtEX9" value="value" />
          <node concept="3zFVjK" id="4UrKinLbqq8" role="3zH0cK">
            <node concept="3clFbS" id="4UrKinLbqq9" role="2VODD2">
              <node concept="3clFbF" id="rsmmUzk0ye" role="3cqZAp">
                <node concept="2OqwBi" id="rsmmUzk1IP" role="3clFbG">
                  <node concept="2OqwBi" id="rsmmUzk1b9" role="2Oq$k0">
                    <node concept="2OqwBi" id="rsmmUzk0D4" role="2Oq$k0">
                      <node concept="1iwH7S" id="rsmmUzk0yc" role="2Oq$k0" />
                      <node concept="1st3f0" id="rsmmUzk0TQ" role="2OqNvi" />
                    </node>
                    <node concept="13u695" id="rsmmUzk1rO" role="2OqNvi" />
                  </node>
                  <node concept="2qgKlT" id="rsmmUzk26F" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="4UrKinLbS46" role="lGtFl">
        <node concept="3IZrLx" id="4UrKinLbS48" role="3IZSJc">
          <node concept="3clFbS" id="4UrKinLbS4a" role="2VODD2">
            <node concept="3clFbF" id="4UrKinLbSkG" role="3cqZAp">
              <node concept="2OqwBi" id="4UrKinLbSkH" role="3clFbG">
                <node concept="2OqwBi" id="4UrKinLbSkI" role="2Oq$k0">
                  <node concept="2OqwBi" id="4UrKinLbSkJ" role="2Oq$k0">
                    <node concept="1r8y6K" id="4UrKinLbSkK" role="2OqNvi" />
                    <node concept="1iwH7S" id="4UrKinLbSkL" role="2Oq$k0" />
                  </node>
                  <node concept="2RRcyG" id="4UrKinLbSkM" role="2OqNvi">
                    <ref role="2RRcyH" to="tpdg:gR7WgqM" resolve="NodeFactories" />
                  </node>
                </node>
                <node concept="3GX2aA" id="4UrKinLbSkN" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="52UGxk5s6_L" role="1B3o_S" />
    <node concept="n94m4" id="52UGxk5s6_M" role="lGtFl" />
    <node concept="3uibUv" id="12VdU1xEzV1" role="EKbjA">
      <ref role="3uigEE" to="9eus:~ActionAspectDescriptor" resolve="ActionAspectDescriptor" />
    </node>
    <node concept="2tJIrI" id="4UrKinLbUoi" role="jymVt" />
    <node concept="3clFb_" id="4UrKinL9X61" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFactories" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4UrKinL9X62" role="1B3o_S" />
      <node concept="3uibUv" id="4UrKinL9X64" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="4UrKinL9X65" role="11_B2D">
          <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
        </node>
      </node>
      <node concept="37vLTG" id="4UrKinL9X66" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4UrKinL9X67" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="4UrKinL9X68" role="3clF47">
        <node concept="3clFbJ" id="4UrKinLb$nL" role="3cqZAp">
          <node concept="3clFbS" id="4UrKinLb$nO" role="3clFbx">
            <node concept="2ignYC" id="4UrKinLcu$o" role="3cqZAp">
              <node concept="3KbdKl" id="4UrKinLcDsE" role="3KbHQx">
                <node concept="Xl_RD" id="4UrKinLcEy8" role="3Kbmr1">
                  <property role="Xl_RC" value="conceptName" />
                  <node concept="17Uvod" id="4UrKinLdbl7" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="4UrKinLdbl8" role="3zH0cK">
                      <node concept="3clFbS" id="4UrKinLdbl9" role="2VODD2">
                        <node concept="3clFbF" id="4UrKinLdHym" role="3cqZAp">
                          <node concept="2OqwBi" id="4UrKinLdHEg" role="3clFbG">
                            <node concept="30H73N" id="4UrKinLdHyl" role="2Oq$k0" />
                            <node concept="3TrcHB" id="4UrKinLdIPI" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4UrKinLcDsG" role="3Kbo56">
                  <node concept="3cpWs6" id="4UrKinLf3bB" role="3cqZAp">
                    <node concept="2YIFZM" id="4UrKinLfQyS" role="3cqZAk">
                      <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="2ShNRf" id="4UrKinLgFbq" role="37wK5m">
                        <node concept="HV5vD" id="4UrKinLgFby" role="2ShVmc">
                          <ref role="HV5vE" node="4UrKinLjOkv" resolve="container.NodeFacotryImpl" />
                          <node concept="1ZhdrF" id="4UrKinLgFbz" role="lGtFl">
                            <property role="2qtEX8" value="classifier" />
                            <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/2820489544401957797/2820489544401957798" />
                            <node concept="3$xsQk" id="4UrKinLgFb$" role="3$ytzL">
                              <node concept="3clFbS" id="4UrKinLgFb_" role="2VODD2">
                                <node concept="3clFbF" id="4UrKinLgFbA" role="3cqZAp">
                                  <node concept="2OqwBi" id="4UrKinLgFbB" role="3clFbG">
                                    <node concept="1iwH70" id="4UrKinLgFbC" role="2OqNvi">
                                      <ref role="1iwH77" node="4UrKinLgfIh" resolve="nodeFactory" />
                                      <node concept="2OqwBi" id="4UrKinLgMLi" role="1iwH7V">
                                        <node concept="2OqwBi" id="4UrKinLgMn7" role="2Oq$k0">
                                          <node concept="1iwH7S" id="4UrKinLgMk6" role="2Oq$k0" />
                                          <node concept="1bhEwm" id="4UrKinLgMtH" role="2OqNvi">
                                            <ref role="1bhEwk" node="4UrKinLfA4z" resolve="nodeFactories" />
                                          </node>
                                        </node>
                                        <node concept="1uHKPH" id="4UrKinLgOJs" role="2OqNvi" />
                                      </node>
                                    </node>
                                    <node concept="1iwH7S" id="4UrKinLgFbE" role="2Oq$k0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="4UrKinLfRdH" role="3PaCim">
                        <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
                      </node>
                      <node concept="1W57fq" id="4UrKinLfSAe" role="lGtFl">
                        <node concept="3IZrLx" id="4UrKinLfSAg" role="3IZSJc">
                          <node concept="3clFbS" id="4UrKinLfSAi" role="2VODD2">
                            <node concept="3clFbF" id="4UrKinLfSVE" role="3cqZAp">
                              <node concept="3clFbC" id="4UrKinLg50W" role="3clFbG">
                                <node concept="3cmrfG" id="4UrKinLg57T" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="4UrKinLg0qZ" role="3uHU7B">
                                  <node concept="2OqwBi" id="4UrKinLfT29" role="2Oq$k0">
                                    <node concept="1iwH7S" id="4UrKinLfSVD" role="2Oq$k0" />
                                    <node concept="1bhEwm" id="4UrKinLfTgz" role="2OqNvi">
                                      <ref role="1bhEwk" node="4UrKinLfA4z" resolve="nodeFactories" />
                                    </node>
                                  </node>
                                  <node concept="34oBXx" id="4UrKinLg3GA" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gft3U" id="4UrKinLg6t$" role="UU_$l">
                          <node concept="2YIFZM" id="7GwiKMqakmc" role="gfFT$">
                            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                            <node concept="2ShNRf" id="7GwiKMqakmd" role="37wK5m">
                              <node concept="3g6Rrh" id="7GwiKMqakme" role="2ShVmc">
                                <node concept="3uibUv" id="4UrKinLgc_l" role="3g7fb8">
                                  <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
                                </node>
                                <node concept="2ShNRf" id="7GwiKMqakmg" role="3g7hyw">
                                  <node concept="1WS0z7" id="7GwiKMqakmh" role="lGtFl">
                                    <node concept="3JmXsc" id="7GwiKMqakmi" role="3Jn$fo">
                                      <node concept="3clFbS" id="7GwiKMqakmj" role="2VODD2">
                                        <node concept="3clFbF" id="7GwiKMqakmk" role="3cqZAp">
                                          <node concept="2OqwBi" id="7GwiKMqakml" role="3clFbG">
                                            <node concept="1bhEwm" id="4UrKinLgcXN" role="2OqNvi">
                                              <ref role="1bhEwk" node="4UrKinLfA4z" resolve="nodeFactories" />
                                            </node>
                                            <node concept="1iwH7S" id="7GwiKMqakmn" role="2Oq$k0" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="HV5vD" id="7GwiKMqakmo" role="2ShVmc">
                                    <ref role="HV5vE" node="4UrKinLjOkv" resolve="container.NodeFacotryImpl" />
                                    <node concept="1ZhdrF" id="7GwiKMqakmp" role="lGtFl">
                                      <property role="2qtEX8" value="classifier" />
                                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/2820489544401957797/2820489544401957798" />
                                      <node concept="3$xsQk" id="7GwiKMqakmq" role="3$ytzL">
                                        <node concept="3clFbS" id="7GwiKMqakmr" role="2VODD2">
                                          <node concept="3clFbF" id="7GwiKMqakms" role="3cqZAp">
                                            <node concept="2OqwBi" id="7GwiKMqakmt" role="3clFbG">
                                              <node concept="1iwH70" id="7GwiKMqakmu" role="2OqNvi">
                                                <ref role="1iwH77" node="4UrKinLgfIh" resolve="nodeFactory" />
                                                <node concept="30H73N" id="7GwiKMqakmv" role="1iwH7V" />
                                              </node>
                                              <node concept="1iwH7S" id="7GwiKMqakmw" role="2Oq$k0" />
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
                </node>
                <node concept="1WS0z7" id="4UrKinLdb_e" role="lGtFl">
                  <node concept="3JmXsc" id="4UrKinLdb_g" role="3Jn$fo">
                    <node concept="3clFbS" id="4UrKinLdb_i" role="2VODD2">
                      <node concept="3clFbF" id="4UrKinLdcPN" role="3cqZAp">
                        <node concept="2OqwBi" id="4UrKinLdBMr" role="3clFbG">
                          <node concept="2OqwBi" id="4UrKinLdtLQ" role="2Oq$k0">
                            <node concept="2OqwBi" id="4UrKinLdpNj" role="2Oq$k0">
                              <node concept="2OqwBi" id="4UrKinLdeOU" role="2Oq$k0">
                                <node concept="2OqwBi" id="4UrKinLdcPP" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4UrKinLdcPQ" role="2Oq$k0">
                                    <node concept="1r8y6K" id="4UrKinLdcPR" role="2OqNvi" />
                                    <node concept="1iwH7S" id="4UrKinLdcPS" role="2Oq$k0" />
                                  </node>
                                  <node concept="2RRcyG" id="4UrKinLdcPT" role="2OqNvi">
                                    <ref role="2RRcyH" to="tpdg:gR7WgqM" resolve="NodeFactories" />
                                  </node>
                                </node>
                                <node concept="13MTOL" id="4UrKinLdji0" role="2OqNvi">
                                  <ref role="13MTZf" to="tpdg:gR7WGoD" />
                                </node>
                              </node>
                              <node concept="3$u5V9" id="4UrKinLdr9P" role="2OqNvi">
                                <node concept="1bVj0M" id="4UrKinLdr9R" role="23t8la">
                                  <node concept="3clFbS" id="4UrKinLdr9S" role="1bW5cS">
                                    <node concept="3clFbF" id="4UrKinLdrrN" role="3cqZAp">
                                      <node concept="2OqwBi" id="4UrKinLdrzG" role="3clFbG">
                                        <node concept="37vLTw" id="4UrKinLdrrM" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4UrKinLdr9T" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="4UrKinLds0j" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:gR7XksO" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="4UrKinLdr9T" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="4UrKinLdr9U" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1VAtEI" id="4UrKinLdASQ" role="2OqNvi" />
                          </node>
                          <node concept="2S7cBI" id="4UrKinLdEsT" role="2OqNvi">
                            <node concept="1bVj0M" id="4UrKinLdEsV" role="23t8la">
                              <node concept="3clFbS" id="4UrKinLdEsW" role="1bW5cS">
                                <node concept="3clFbF" id="4UrKinLdES9" role="3cqZAp">
                                  <node concept="2OqwBi" id="4UrKinLdF7m" role="3clFbG">
                                    <node concept="37vLTw" id="4UrKinLdES8" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4UrKinLdEsX" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4UrKinLdFVR" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="4UrKinLdEsX" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="4UrKinLdEsY" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1nlBCl" id="4UrKinLdEsZ" role="2S7zOq">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2jeGV$" id="4UrKinLfA4z" role="lGtFl">
                  <property role="TrG5h" value="nodeFactories" />
                  <node concept="2jfdEK" id="4UrKinLfA4_" role="2jfP_Y">
                    <node concept="3clFbS" id="4UrKinLfA4B" role="2VODD2">
                      <node concept="3clFbF" id="7GwiKMqaklm" role="3cqZAp">
                        <node concept="2OqwBi" id="7GwiKMqakln" role="3clFbG">
                          <node concept="2S7cBI" id="7GwiKMqaklo" role="2OqNvi">
                            <node concept="1bVj0M" id="7GwiKMqaklp" role="23t8la">
                              <node concept="3clFbS" id="7GwiKMqaklq" role="1bW5cS">
                                <node concept="3clFbF" id="7GwiKMqaklr" role="3cqZAp">
                                  <node concept="2OqwBi" id="4UrKinLfJPW" role="3clFbG">
                                    <node concept="2OqwBi" id="4UrKinLfJ1J" role="2Oq$k0">
                                      <node concept="2JrnkZ" id="4UrKinLfIJO" role="2Oq$k0">
                                        <node concept="37vLTw" id="7GwiKMqaklu" role="2JrQYb">
                                          <ref role="3cqZAo" node="7GwiKMqaklv" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4UrKinLfJt6" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4UrKinLfKIP" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="7GwiKMqaklv" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="7GwiKMqaklw" role="1tU5fm" />
                              </node>
                            </node>
                            <node concept="1nlBCl" id="7GwiKMqaklx" role="2S7zOq">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7GwiKMqakly" role="2Oq$k0">
                            <node concept="3zZkjj" id="7GwiKMqaklz" role="2OqNvi">
                              <node concept="1bVj0M" id="7GwiKMqakl$" role="23t8la">
                                <node concept="3clFbS" id="7GwiKMqakl_" role="1bW5cS">
                                  <node concept="3clFbF" id="7GwiKMqaklA" role="3cqZAp">
                                    <node concept="3clFbC" id="7GwiKMqaklB" role="3clFbG">
                                      <node concept="30H73N" id="7GwiKMqaklC" role="3uHU7w" />
                                      <node concept="2OqwBi" id="7GwiKMqaklD" role="3uHU7B">
                                        <node concept="37vLTw" id="7GwiKMqaklE" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7GwiKMqaklG" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="4UrKinLfGSG" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpdg:gR7XksO" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="7GwiKMqaklG" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="7GwiKMqaklH" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4UrKinLfC4P" role="2Oq$k0">
                              <node concept="2OqwBi" id="7GwiKMqaklI" role="2Oq$k0">
                                <node concept="2RRcyG" id="7GwiKMqaklJ" role="2OqNvi">
                                  <ref role="2RRcyH" to="tpdg:gR7WgqM" resolve="NodeFactories" />
                                </node>
                                <node concept="2OqwBi" id="7GwiKMqaklK" role="2Oq$k0">
                                  <node concept="1r8y6K" id="7GwiKMqaklL" role="2OqNvi" />
                                  <node concept="1iwH7S" id="7GwiKMqaklM" role="2Oq$k0" />
                                </node>
                              </node>
                              <node concept="13MTOL" id="4UrKinLfGri" role="2OqNvi">
                                <ref role="13MTZf" to="tpdg:gR7WGoD" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="A3Dl8" id="4UrKinLfY3r" role="2jfP_h">
                    <node concept="3Tqbb2" id="4UrKinLfY3u" role="A3Ik2">
                      <ref role="ehGHo" to="tpdg:gR7Wvgx" resolve="NodeFactory" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4UrKinLcCdS" role="3KbGdf">
                <node concept="37vLTw" id="4UrKinLcC9S" role="2Oq$k0">
                  <ref role="3cqZAo" node="4UrKinL9X66" resolve="concept" />
                </node>
                <node concept="liA8E" id="4UrKinLcCnt" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="3clFbS" id="4UrKinLcu$q" role="3Kb1Dw" />
            </node>
          </node>
          <node concept="2OqwBi" id="4UrKinLbH5x" role="3clFbw">
            <node concept="37vLTw" id="4UrKinLbFNl" role="2Oq$k0">
              <ref role="3cqZAo" node="4UrKinLbqhr" resolve="LANGUAGE_FQ_NAME" />
            </node>
            <node concept="liA8E" id="4UrKinLbHCs" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
              <node concept="2OqwBi" id="4UrKinLbgWT" role="37wK5m">
                <node concept="2OqwBi" id="4UrKinLbgA0" role="2Oq$k0">
                  <node concept="37vLTw" id="4UrKinLbfMu" role="2Oq$k0">
                    <ref role="3cqZAo" node="4UrKinL9X66" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="4UrKinLbgTv" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                  </node>
                </node>
                <node concept="liA8E" id="4UrKinLbh9i" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SLanguage.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="4UrKinLbJln" role="lGtFl">
            <node concept="3IZrLx" id="4UrKinLbJlp" role="3IZSJc">
              <node concept="3clFbS" id="4UrKinLbJlr" role="2VODD2">
                <node concept="3clFbF" id="4UrKinLbLTs" role="3cqZAp">
                  <node concept="2OqwBi" id="4UrKinLbOpI" role="3clFbG">
                    <node concept="2OqwBi" id="4UrKinLbMw0" role="2Oq$k0">
                      <node concept="2OqwBi" id="4UrKinLbLTu" role="2Oq$k0">
                        <node concept="1r8y6K" id="4UrKinLbLTv" role="2OqNvi" />
                        <node concept="1iwH7S" id="4UrKinLbLTw" role="2Oq$k0" />
                      </node>
                      <node concept="2RRcyG" id="4UrKinLbMKV" role="2OqNvi">
                        <ref role="2RRcyH" to="tpdg:gR7WgqM" resolve="NodeFactories" />
                      </node>
                    </node>
                    <node concept="3GX2aA" id="4UrKinLbQIl" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4UrKinLb1YF" role="3cqZAp">
          <node concept="2YIFZM" id="7GwiKMqakmO" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
            <node concept="3uibUv" id="4UrKinLbcv4" role="3PaCim">
              <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4UrKinLguy3">
    <property role="TrG5h" value="NodeFactories" />
    <node concept="312cEu" id="4UrKinLjYq0" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="NodeFactoryImpl" />
      <node concept="3Tm1VV" id="4UrKinLjXTA" role="1B3o_S" />
      <node concept="2b32R4" id="4UrKinLjYVb" role="lGtFl">
        <node concept="3JmXsc" id="4UrKinLjYVd" role="2P8S$">
          <node concept="3clFbS" id="4UrKinLjYVf" role="2VODD2">
            <node concept="3clFbF" id="4UrKinLjZ6i" role="3cqZAp">
              <node concept="2OqwBi" id="4UrKinLjZbs" role="3clFbG">
                <node concept="30H73N" id="4UrKinLjZ6h" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4UrKinLjZwS" role="2OqNvi">
                  <ref role="3TtcxE" to="tpdg:gR7WGoD" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4UrKinLkpCa" role="EKbjA">
        <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
      </node>
      <node concept="3clFb_" id="4UrKinLkqZ5" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setup" />
        <property role="DiZV1" value="false" />
        <property role="IEkAT" value="false" />
        <node concept="3Tm1VV" id="4UrKinLkqZ6" role="1B3o_S" />
        <node concept="3cqZAl" id="4UrKinLkqZ8" role="3clF45" />
        <node concept="37vLTG" id="4UrKinLkqZ9" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="4UrKinLkqZa" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="4UrKinLkqZb" role="3clF46">
          <property role="TrG5h" value="node1" />
          <node concept="3uibUv" id="4UrKinLkqZc" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="4UrKinLkqZd" role="3clF46">
          <property role="TrG5h" value="node2" />
          <node concept="3uibUv" id="4UrKinLkqZe" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="37vLTG" id="4UrKinLkqZf" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="4UrKinLkqZg" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="4UrKinLkqZh" role="3clF47" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4UrKinLguy4" role="1B3o_S" />
    <node concept="n94m4" id="4UrKinLguy5" role="lGtFl">
      <ref role="n9lRv" to="tpdg:gR7WgqM" resolve="NodeFactories" />
    </node>
    <node concept="17Uvod" id="4UrKinLhO_G" role="lGtFl">
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <property role="2qtEX9" value="name" />
      <node concept="3zFVjK" id="4UrKinLhO_H" role="3zH0cK">
        <node concept="3clFbS" id="4UrKinLhO_I" role="2VODD2">
          <node concept="3clFbJ" id="1EKi9wqH36d" role="3cqZAp">
            <node concept="3clFbS" id="1EKi9wqH36f" role="3clFbx">
              <node concept="3cpWs6" id="1EKi9wqH8qj" role="3cqZAp">
                <node concept="2OqwBi" id="1EKi9wqH9xK" role="3cqZAk">
                  <node concept="1iwH7S" id="1EKi9wqH8OU" role="2Oq$k0" />
                  <node concept="2piZGk" id="1EKi9wqH9MY" role="2OqNvi">
                    <node concept="Xl_RD" id="1EKi9wqHa0C" role="2piZGb">
                      <property role="Xl_RC" value="DefaultNodeFactory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="1EKi9wqH62N" role="3clFbw">
              <node concept="10Nm6u" id="1EKi9wqH636" role="3uHU7w" />
              <node concept="2OqwBi" id="1EKi9wqH4ym" role="3uHU7B">
                <node concept="30H73N" id="1EKi9wqH3j2" role="2Oq$k0" />
                <node concept="3TrcHB" id="1EKi9wqH5wD" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4UrKinLhQbe" role="3cqZAp">
            <node concept="2OqwBi" id="4UrKinLhQgE" role="3clFbG">
              <node concept="30H73N" id="4UrKinLhQbd" role="2Oq$k0" />
              <node concept="3TrcHB" id="4UrKinLhQBe" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4UrKinLjMUc">
    <property role="TrG5h" value="reduce_NodeFactory" />
    <ref role="3gUMe" to="tpdg:gR7Wvgx" resolve="NodeFactory" />
    <node concept="312cEu" id="4UrKinLjO04" role="13RCb5">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="container" />
      <node concept="312cEu" id="4UrKinLjOkv" role="jymVt">
        <property role="2bfB8j" value="false" />
        <property role="TrG5h" value="NodeFacotryImpl" />
        <node concept="3Tm1VV" id="4UrKinLjOkw" role="1B3o_S" />
        <node concept="raruj" id="4UrKinLjOkP" role="lGtFl" />
        <node concept="17Uvod" id="4UrKinLjQ2_" role="lGtFl">
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <property role="2qtEX9" value="name" />
          <node concept="3zFVjK" id="4UrKinLjQ2A" role="3zH0cK">
            <node concept="3clFbS" id="4UrKinLjQ2B" role="2VODD2">
              <node concept="3clFbF" id="4UrKinLjQdQ" role="3cqZAp">
                <node concept="3cpWs3" id="4UrKinLjQdR" role="3clFbG">
                  <node concept="2OqwBi" id="4UrKinLjQdS" role="3uHU7w">
                    <node concept="2OqwBi" id="4UrKinLjQdT" role="2Oq$k0">
                      <node concept="2JrnkZ" id="4UrKinLjQdU" role="2Oq$k0">
                        <node concept="30H73N" id="4UrKinLjQdV" role="2JrQYb" />
                      </node>
                      <node concept="liA8E" id="4UrKinLjQdW" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4UrKinLjQdX" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4UrKinLjQdY" role="3uHU7B">
                    <property role="Xl_RC" value="NodeFactory_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2ZBi8u" id="4UrKinLjSng" role="lGtFl">
          <ref role="2rW$FS" node="4UrKinLgfIh" resolve="nodeFactory" />
        </node>
        <node concept="3uibUv" id="4UrKinLjVIs" role="EKbjA">
          <ref role="3uigEE" to="9eus:~NodeFactory" resolve="NodeFactory" />
        </node>
        <node concept="3clFb_" id="4UrKinLkgta" role="jymVt">
          <property role="1EzhhJ" value="false" />
          <property role="TrG5h" value="setup" />
          <property role="DiZV1" value="false" />
          <property role="IEkAT" value="false" />
          <node concept="3Tm1VV" id="4UrKinLkgtb" role="1B3o_S" />
          <node concept="3cqZAl" id="4UrKinLkgtd" role="3clF45" />
          <node concept="37vLTG" id="4UrKinLkgte" role="3clF46">
            <property role="TrG5h" value="newNode" />
            <node concept="3uibUv" id="4UrKinLkgtf" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTG" id="4UrKinLkgtg" role="3clF46">
            <property role="TrG5h" value="sampleNode" />
            <node concept="3uibUv" id="4UrKinLkgth" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTG" id="4UrKinLkgti" role="3clF46">
            <property role="TrG5h" value="enclosingNode" />
            <node concept="3uibUv" id="4UrKinLkgtj" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="37vLTG" id="4UrKinLkgtk" role="3clF46">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="4UrKinLkgtl" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="3clFbS" id="4UrKinLkgtm" role="3clF47">
            <node concept="3clFbH" id="rsmmUzofft" role="3cqZAp">
              <node concept="2b32R4" id="rsmmUzoffH" role="lGtFl">
                <node concept="3JmXsc" id="rsmmUzoffJ" role="2P8S$">
                  <node concept="3clFbS" id="rsmmUzoffL" role="2VODD2">
                    <node concept="3clFbF" id="rsmmUzofr1" role="3cqZAp">
                      <node concept="2OqwBi" id="rsmmUzoh7V" role="3clFbG">
                        <node concept="2OqwBi" id="rsmmUzog97" role="2Oq$k0">
                          <node concept="2OqwBi" id="rsmmUzofvQ" role="2Oq$k0">
                            <node concept="30H73N" id="rsmmUzofr0" role="2Oq$k0" />
                            <node concept="3TrEf2" id="rsmmUzofOM" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpdg:gR7ZfP6" />
                            </node>
                          </node>
                          <node concept="3TrEf2" id="rsmmUzogD6" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:gyVODHa" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="rsmmUzohFf" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:fzcqZ_x" />
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
      <node concept="3Tm1VV" id="4UrKinLjO05" role="1B3o_S" />
    </node>
  </node>
</model>

