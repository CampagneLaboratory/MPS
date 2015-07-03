<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590354(jetbrains.mps.lang.intentions.generator.baseLanguage.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tp3m" ref="r:00000000-0000-4000-0000-011c8959034e(jetbrains.mps.lang.intentions.behavior)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ud4o" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.intentions(MPS.Editor/jetbrains.mps.intentions@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="kqhl" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(MPS.OpenAPI/org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="srng" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="qx6n" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/org.jetbrains.mps.openapi.persistence@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="a7z3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.adapter.ids(MPS.Core/jetbrains.mps.smodel.adapter.ids@java_stub)" />
    <import index="as9o" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/f:java_stub#3f233e7f-b8a6-46d2-a57f-795d56775243#org.jetbrains.annotations(Annotations/org.jetbrains.annotations@java_stub)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
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
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
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
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
        <child id="1167087469900" name="conditionFunction" index="2VPoh3" />
      </concept>
      <concept id="1167087518662" name="jetbrains.mps.lang.generator.structure.CreateRootRule_Condition" flags="in" index="2VP$b9" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
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
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ" />
      <concept id="982871510068000147" name="jetbrains.mps.lang.generator.structure.TemplateSwitchMacro" flags="lg" index="1sPUBX" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1194989344771" name="alternativeConsequence" index="UU_$l" />
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <property id="7430509679011668804" name="counterVarName" index="1qytDF" />
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
      <concept id="1229477454423" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalCopiedInputByOutput" flags="nn" index="12$id9">
        <child id="1229477520175" name="outputNode" index="12$y8L" />
      </concept>
      <concept id="2721957369897614808" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef" flags="nn" index="1bhEwm">
        <reference id="2721957369897614810" name="varmacro" index="1bhEwk" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="7430509679014182526" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ContextVarRef" flags="ng" index="1qCSth">
        <property id="7430509679014182818" name="contextVarName" index="1qCSqd" />
      </concept>
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144146199828" name="jetbrains.mps.lang.smodel.structure.Node_CopyOperation" flags="nn" index="1$rogu" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" flags="nn" index="2S7cBI">
        <child id="1205679832066" name="ascending" index="2S7zOq" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" flags="nn" index="1nlBCl" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="bUwia" id="hmSlX70">
    <property role="TrG5h" value="mc_main" />
    <node concept="3lhOvk" id="zWYlCGIIqj" role="3lj3bC">
      <property role="36QftV" value="true" />
      <ref role="3lhOvi" node="zWYlCGIiYB" resolve="IntentionFactoryClass" />
      <ref role="30HIoZ" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    </node>
    <node concept="2VPoh5" id="3jb7BNzCVp9" role="2VS0gm">
      <ref role="2VPoh2" node="6h71hRDS6Lm" resolve="IntentionsDescriptor" />
      <node concept="2VP$b9" id="3jb7BNzEnYS" role="2VPoh3">
        <node concept="3clFbS" id="3jb7BNzEnYT" role="2VODD2">
          <node concept="3cpWs8" id="3jb7BNzEsYB" role="3cqZAp">
            <node concept="3cpWsn" id="3jb7BNzEsYC" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="H_c77" id="3jb7BNzEsYD" role="1tU5fm" />
              <node concept="2OqwBi" id="3jb7BNzEsYE" role="33vP2m">
                <node concept="1iwH7S" id="3jb7BNzEsYF" role="2Oq$k0" />
                <node concept="1st3f0" id="3jb7BNzEsYG" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3jb7BNzEnYU" role="3cqZAp">
            <node concept="1Wc70l" id="3jb7BNzEsYI" role="3clFbG">
              <node concept="2OqwBi" id="3jb7BNzEnZ6" role="3uHU7B">
                <node concept="2OqwBi" id="3jb7BNzEnZ1" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTsbv" role="2Oq$k0">
                    <ref role="3cqZAo" node="3jb7BNzEsYC" resolve="model" />
                  </node>
                  <node concept="2RRcyG" id="3jb7BNzEnZ5" role="2OqNvi">
                    <ref role="2RRcyH" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3jb7BNzEnZa" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="7IH442cVWHG" role="3uHU7w">
                <node concept="Rm8GO" id="3jb7BNzEtiB" role="2Oq$k0">
                  <ref role="Rm8GQ" to="cu2c:~LanguageAspect.INTENTIONS" resolve="INTENTIONS" />
                  <ref role="1Px2BO" to="cu2c:~LanguageAspect" resolve="LanguageAspect" />
                </node>
                <node concept="liA8E" id="7IH442cVX9x" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~LanguageAspect.is(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="is" />
                  <node concept="37vLTw" id="7IH442cVXlt" role="37wK5m">
                    <ref role="3cqZAo" node="3jb7BNzEsYC" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2rT7sh" id="3jb7BNzCVpn" role="2rTMjI">
      <property role="TrG5h" value="map_IntentionConstructor" />
      <ref role="2rZz_L" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
      <ref role="2rTdP9" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    </node>
    <node concept="2rT7sh" id="zWYlCGIwHb" role="2rTMjI">
      <property role="TrG5h" value="map_IntentionFactoryConstructor" />
      <ref role="2rZz_L" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
      <ref role="2rTdP9" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    </node>
    <node concept="3aamgX" id="i3e4tD2" role="3acgRq">
      <ref role="30HIoZ" to="tp3j:i38ZlvV" resolve="IntentionParameter" />
      <node concept="1Koe21" id="4$eSjNy2TCJ" role="1lVwrX">
        <node concept="9aQIb" id="4$eSjNy2TCP" role="1Koe22">
          <node concept="3clFbS" id="4$eSjNy2TCR" role="9aQI4">
            <node concept="3cpWs8" id="4$eSjNy2TCW" role="3cqZAp">
              <node concept="3cpWsn" id="4$eSjNy2TCZ" role="3cpWs9">
                <property role="TrG5h" value="myParameter" />
                <node concept="10Oyi0" id="4$eSjNy2TCV" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="4$eSjNy2TDe" role="3cqZAp">
              <node concept="37vLTI" id="4$eSjNy2W9s" role="3clFbG">
                <node concept="3cmrfG" id="4$eSjNy2W9A" role="37vLTx">
                  <property role="3cmrfH" value="10" />
                </node>
                <node concept="37vLTw" id="4$eSjNy2TDd" role="37vLTJ">
                  <ref role="3cqZAo" node="4$eSjNy2TCZ" resolve="myParameter" />
                  <node concept="raruj" id="4$eSjNy2X3l" role="lGtFl" />
                  <node concept="1ZhdrF" id="4$eSjNy2ZeQ" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="4$eSjNy2ZeR" role="3$ytzL">
                      <node concept="3clFbS" id="4$eSjNy2ZeS" role="2VODD2">
                        <node concept="3clFbF" id="4$eSjNy2ZT1" role="3cqZAp">
                          <node concept="Xl_RD" id="4$eSjNy2ZT0" role="3clFbG">
                            <property role="Xl_RC" value="myParameter" />
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
    <node concept="3aamgX" id="38RcvkhOst1" role="3acgRq">
      <property role="3GE5qa" value="childfilter" />
      <ref role="30HIoZ" to="tp3j:38RcvkhOs6V" resolve="ChildFilterFunction" />
      <node concept="gft3U" id="4$eSjNy3geL" role="1lVwrX">
        <node concept="3clFbS" id="4$eSjNy3h7L" role="gfFT$">
          <node concept="29HgVG" id="4$eSjNy3h7P" role="lGtFl">
            <node concept="3NFfHV" id="4$eSjNy3h7R" role="3NFExx">
              <node concept="3clFbS" id="4$eSjNy3h7T" role="2VODD2">
                <node concept="3clFbF" id="4$eSjNy3h8s" role="3cqZAp">
                  <node concept="2OqwBi" id="4$eSjNy3hii" role="3clFbG">
                    <node concept="3TrEf2" id="4$eSjNy3hMl" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                    </node>
                    <node concept="30H73N" id="4$eSjNy3h8r" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6h71hRDS6Lm">
    <property role="TrG5h" value="IntentionsDescriptor" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="7ZU0Lz4JDI8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myId2Index" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ZU0Lz4JDF4" role="1B3o_S" />
      <node concept="10Q1$e" id="7ZU0Lz4JDHu" role="1tU5fm">
        <node concept="3cpWsb" id="7ZU0Lz4JDGQ" role="10Q1$1" />
      </node>
    </node>
    <node concept="312cEg" id="3pZGE0vtlCZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIntentionsForConcept" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3pZGE0vtl2X" role="1B3o_S" />
      <node concept="10Q1$e" id="3pZGE0vtlCp" role="1tU5fm">
        <node concept="3uibUv" id="3pZGE0vtlBP" role="10Q1$1">
          <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
        </node>
      </node>
      <node concept="1WS0z7" id="3pZGE0vtmez" role="lGtFl">
        <property role="1qytDF" value="c" />
        <node concept="3JmXsc" id="3pZGE0vtme_" role="3Jn$fo">
          <node concept="3clFbS" id="3pZGE0vtmeB" role="2VODD2">
            <node concept="3clFbF" id="3pZGE0vtmky" role="3cqZAp">
              <node concept="2OqwBi" id="3pZGE0vtmnY" role="3clFbG">
                <node concept="1iwH7S" id="3pZGE0vtmkx" role="2Oq$k0" />
                <node concept="1bhEwm" id="3pZGE0vtmvD" role="2OqNvi">
                  <ref role="1bhEwk" node="1M8MwyYfMD" resolve="sortedConcepts" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="3pZGE0vtmTz" role="lGtFl">
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <property role="2qtEX9" value="name" />
        <node concept="3zFVjK" id="3pZGE0vtmT$" role="3zH0cK">
          <node concept="3clFbS" id="3pZGE0vtmT_" role="2VODD2">
            <node concept="3clFbF" id="3pZGE0vtmZs" role="3cqZAp">
              <node concept="3cpWs3" id="3pZGE0vtrI6" role="3clFbG">
                <node concept="2OqwBi" id="3pZGE0vtrY5" role="3uHU7w">
                  <node concept="1iwH7S" id="3pZGE0vtrSy" role="2Oq$k0" />
                  <node concept="1qCSth" id="3pZGE0vts8f" role="2OqNvi">
                    <property role="1qCSqd" value="c" />
                  </node>
                </node>
                <node concept="Xl_RD" id="3pZGE0vtpXH" role="3uHU7B">
                  <property role="Xl_RC" value="myIntentions" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1M8MwyYbMf" role="jymVt" />
    <node concept="3clFbW" id="1M8MwyYbTX" role="jymVt">
      <node concept="3cqZAl" id="1M8MwyYbTY" role="3clF45" />
      <node concept="3clFbS" id="1M8MwyYbU0" role="3clF47">
        <node concept="3clFbF" id="1M8MwyYbWB" role="3cqZAp">
          <node concept="37vLTI" id="1M8MwyYbXF" role="3clFbG">
            <node concept="2ShNRf" id="1M8MwyYbYu" role="37vLTx">
              <node concept="3$_iS1" id="1M8MwyYdlm" role="2ShVmc">
                <node concept="3$GHV9" id="1M8MwyYdln" role="3$GQph">
                  <node concept="3cmrfG" id="1M8MwyYdmK" role="3$I4v7">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="1M8MwyYtgL" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="1M8MwyYtgM" role="3zH0cK">
                        <node concept="3clFbS" id="1M8MwyYtgN" role="2VODD2">
                          <node concept="3clFbF" id="1M8MwyYuqq" role="3cqZAp">
                            <node concept="2OqwBi" id="1M8MwyYvUi" role="3clFbG">
                              <node concept="2OqwBi" id="1M8MwyYuy6" role="2Oq$k0">
                                <node concept="1iwH7S" id="1M8MwyYuqp" role="2Oq$k0" />
                                <node concept="1bhEwm" id="1M8MwyYuMK" role="2OqNvi">
                                  <ref role="1bhEwk" node="1M8MwyYfMD" resolve="sortedConcepts" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="1M8MwyYAKM" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsb" id="1M8MwyYdkt" role="3$_nBY" />
              </node>
            </node>
            <node concept="37vLTw" id="1M8MwyYbWA" role="37vLTJ">
              <ref role="3cqZAo" node="7ZU0Lz4JDI8" resolve="myId2Index" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ZU0Lz4JZkx" role="3cqZAp">
          <node concept="37vLTI" id="7ZU0Lz4JZFf" role="3clFbG">
            <node concept="AH0OO" id="7ZU0Lz4JZmY" role="37vLTJ">
              <node concept="3cmrfG" id="7ZU0Lz4JZot" role="AHEQo">
                <property role="3cmrfH" value="0" />
                <node concept="17Uvod" id="7ZU0Lz4K55Y" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="7ZU0Lz4K55Z" role="3zH0cK">
                    <node concept="3clFbS" id="7ZU0Lz4K560" role="2VODD2">
                      <node concept="3clFbF" id="7ZU0Lz4K5Mi" role="3cqZAp">
                        <node concept="2OqwBi" id="7ZU0Lz4K5TW" role="3clFbG">
                          <node concept="1iwH7S" id="7ZU0Lz4K5Mh" role="2Oq$k0" />
                          <node concept="1qCSth" id="7ZU0Lz4K6a_" role="2OqNvi">
                            <property role="1qCSqd" value="c" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7ZU0Lz4JZkv" role="AHHXb">
                <ref role="3cqZAo" node="7ZU0Lz4JDI8" resolve="myId2Index" />
              </node>
            </node>
            <node concept="1adDum" id="7ZU0Lz4KkVf" role="37vLTx">
              <property role="1adDun" value="42l" />
              <node concept="17Uvod" id="7ZU0Lz4Klkg" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/4269842503726207156/4269842503726207157" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="7ZU0Lz4Klkh" role="3zH0cK">
                  <node concept="3clFbS" id="7ZU0Lz4Klki" role="2VODD2">
                    <node concept="3cpWs8" id="7ZU0Lz4Km_9" role="3cqZAp">
                      <node concept="3cpWsn" id="7ZU0Lz4Km_a" role="3cpWs9">
                        <property role="TrG5h" value="value" />
                        <node concept="3cpWsb" id="7ZU0Lz4Km_0" role="1tU5fm" />
                        <node concept="2OqwBi" id="7ZU0Lz4Km_b" role="33vP2m">
                          <node concept="2YIFZM" id="7ZU0Lz4Km_c" role="2Oq$k0">
                            <ref role="37wK5l" to="a7z3:~MetaIdByDeclaration.getConceptId(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.smodel.adapter.ids.SConceptId" resolve="getConceptId" />
                            <ref role="1Pybhc" to="a7z3:~MetaIdByDeclaration" resolve="MetaIdByDeclaration" />
                            <node concept="30H73N" id="7ZU0Lz4Km_e" role="37wK5m" />
                          </node>
                          <node concept="liA8E" id="7ZU0Lz4Km_g" role="2OqNvi">
                            <ref role="37wK5l" to="a7z3:~SConceptId.getIdValue():long" resolve="getIdValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7ZU0Lz4Kn6Y" role="3cqZAp">
                      <node concept="3cpWs3" id="7ZU0Lz4KoPa" role="3cqZAk">
                        <node concept="Xl_RD" id="7ZU0Lz4KoWA" role="3uHU7w">
                          <property role="Xl_RC" value="L" />
                        </node>
                        <node concept="3cpWs3" id="7ZU0Lz4KpxG" role="3uHU7B">
                          <node concept="Xl_RD" id="7ZU0Lz4KpDa" role="3uHU7B">
                            <property role="Xl_RC" value="0x" />
                          </node>
                          <node concept="2YIFZM" id="7ZU0Lz4KoxI" role="3uHU7w">
                            <ref role="37wK5l" to="e2lb:~Long.toHexString(long):java.lang.String" resolve="toHexString" />
                            <ref role="1Pybhc" to="e2lb:~Long" resolve="Long" />
                            <node concept="37vLTw" id="7ZU0Lz4KoDu" role="37wK5m">
                              <ref role="3cqZAo" node="7ZU0Lz4Km_a" resolve="value" />
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
          <node concept="1WS0z7" id="7ZU0Lz4JZYg" role="lGtFl">
            <property role="1qytDF" value="c" />
            <node concept="3JmXsc" id="7ZU0Lz4JZYi" role="3Jn$fo">
              <node concept="3clFbS" id="7ZU0Lz4JZYk" role="2VODD2">
                <node concept="3clFbF" id="7ZU0Lz4K48D" role="3cqZAp">
                  <node concept="2OqwBi" id="7ZU0Lz4K4c1" role="3clFbG">
                    <node concept="1iwH7S" id="7ZU0Lz4K48C" role="2Oq$k0" />
                    <node concept="1bhEwm" id="1M8MwyYBaZ" role="2OqNvi">
                      <ref role="1bhEwk" node="1M8MwyYfMD" resolve="sortedConcepts" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1M8MwyYbQg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1M8MwyY7Cv" role="jymVt" />
    <node concept="3clFb_" id="1M8MwyY7Il" role="jymVt">
      <property role="TrG5h" value="getIntentions" />
      <node concept="3uibUv" id="3pZGE0vo4g8" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="3pZGE0vo4SR" role="11_B2D">
          <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
        </node>
      </node>
      <node concept="3clFbS" id="1M8MwyY7Ip" role="3clF47">
        <node concept="3cpWs8" id="7ZU0Lz4JFBW" role="3cqZAp">
          <node concept="3cpWsn" id="7ZU0Lz4JFBX" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="7ZU0Lz4JFBO" role="1tU5fm" />
            <node concept="2YIFZM" id="7ZU0Lz4JFBY" role="33vP2m">
              <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
              <ref role="37wK5l" to="k7g3:~Arrays.binarySearch(long[],long):int" resolve="binarySearch" />
              <node concept="37vLTw" id="7ZU0Lz4JFBZ" role="37wK5m">
                <ref role="3cqZAo" node="7ZU0Lz4JDI8" resolve="myId2Index" />
              </node>
              <node concept="2OqwBi" id="7ZU0Lz4JFC0" role="37wK5m">
                <node concept="37vLTw" id="1M8MwyYdCD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1M8MwyY7Wf" resolve="conceptId" />
                </node>
                <node concept="liA8E" id="7ZU0Lz4JFC2" role="2OqNvi">
                  <ref role="37wK5l" to="a7z3:~SConceptId.getIdValue():long" resolve="getIdValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="1M8MwyYdF6" role="3cqZAp">
          <node concept="3clFbS" id="1M8MwyYdF8" role="3Kb1Dw">
            <node concept="3cpWs6" id="1M8MwyYdH_" role="3cqZAp">
              <node concept="10Nm6u" id="1M8MwyYdKa" role="3cqZAk" />
            </node>
          </node>
          <node concept="37vLTw" id="1M8MwyYdGy" role="3KbGdf">
            <ref role="3cqZAo" node="7ZU0Lz4JFBX" resolve="index" />
          </node>
          <node concept="3KbdKl" id="1M8MwyYdMB" role="3KbHQx">
            <node concept="3cmrfG" id="1M8MwyYdPl" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
              <node concept="17Uvod" id="1M8MwyYEQk" role="lGtFl">
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                <property role="2qtEX9" value="value" />
                <node concept="3zFVjK" id="1M8MwyYEQl" role="3zH0cK">
                  <node concept="3clFbS" id="1M8MwyYEQm" role="2VODD2">
                    <node concept="3clFbF" id="1M8MwyYF4M" role="3cqZAp">
                      <node concept="2OqwBi" id="1M8MwyYFcC" role="3clFbG">
                        <node concept="1iwH7S" id="1M8MwyYF4L" role="2Oq$k0" />
                        <node concept="1qCSth" id="1M8MwyYGMu" role="2OqNvi">
                          <property role="1qCSqd" value="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1M8MwyYdMD" role="3Kbo56">
              <node concept="9aQIb" id="3pZGE0vqKmN" role="3cqZAp">
                <node concept="3clFbS" id="3pZGE0vqKmP" role="9aQI4">
                  <node concept="3SKdUt" id="3pZGE0vl2PD" role="3cqZAp">
                    <node concept="3SKdUq" id="3pZGE0vl5NQ" role="3SKWNk">
                      <property role="3SKdUp" value="Concept:" />
                    </node>
                    <node concept="3SKdUq" id="3pZGE0vl3iO" role="3SKWNk">
                      <property role="3SKdUp" value="concept" />
                      <node concept="17Uvod" id="3pZGE0vl4kA" role="lGtFl">
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/6329021646629104957/6329021646629104958" />
                        <property role="2qtEX9" value="text" />
                        <node concept="3zFVjK" id="3pZGE0vl4kB" role="3zH0cK">
                          <node concept="3clFbS" id="3pZGE0vl4kC" role="2VODD2">
                            <node concept="3clFbF" id="3pZGE0vl4pM" role="3cqZAp">
                              <node concept="2OqwBi" id="3pZGE0vl5gD" role="3clFbG">
                                <node concept="30H73N" id="3pZGE0vl4pL" role="2Oq$k0" />
                                <node concept="3TrcHB" id="3pZGE0vl5$2" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3pZGE0vtsVB" role="3cqZAp">
                    <node concept="3clFbS" id="3pZGE0vtsVD" role="3clFbx">
                      <node concept="3clFbF" id="3pZGE0vttKa" role="3cqZAp">
                        <node concept="37vLTI" id="3pZGE0vttPa" role="3clFbG">
                          <node concept="2ShNRf" id="3pZGE0vttUc" role="37vLTx">
                            <node concept="3$_iS1" id="3pZGE0vtuC5" role="2ShVmc">
                              <node concept="3$GHV9" id="3pZGE0vtuC6" role="3$GQph">
                                <node concept="3cmrfG" id="3pZGE0vtuH6" role="3$I4v7">
                                  <property role="3cmrfH" value="0" />
                                  <node concept="17Uvod" id="3pZGE0vtuTK" role="lGtFl">
                                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                                    <property role="2qtEX9" value="value" />
                                    <node concept="3zFVjK" id="3pZGE0vtuTL" role="3zH0cK">
                                      <node concept="3clFbS" id="3pZGE0vtuTM" role="2VODD2">
                                        <node concept="3clFbF" id="3pZGE0vtvbq" role="3cqZAp">
                                          <node concept="2OqwBi" id="3pZGE0vtw5b" role="3clFbG">
                                            <node concept="2OqwBi" id="3pZGE0vtvmt" role="2Oq$k0">
                                              <node concept="1iwH7S" id="3pZGE0vtvbp" role="2Oq$k0" />
                                              <node concept="1bhEwm" id="3pZGE0vtvGQ" role="2OqNvi">
                                                <ref role="1bhEwk" node="3pZGE0voq26" resolve="intentions" />
                                              </node>
                                            </node>
                                            <node concept="34oBXx" id="3pZGE0vtwrc" role="2OqNvi" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="3pZGE0vtuwB" role="3$_nBY">
                                <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="3pZGE0vttK8" role="37vLTJ">
                            <ref role="3cqZAo" node="3pZGE0vtlCZ" resolve="myIntentionsForConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3pZGE0vtC$B" role="3cqZAp">
                        <node concept="37vLTI" id="3pZGE0vtCVZ" role="3clFbG">
                          <node concept="AH0OO" id="3pZGE0vtCLv" role="37vLTJ">
                            <node concept="3cmrfG" id="3pZGE0vtCQS" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                              <node concept="17Uvod" id="3pZGE0vtDOc" role="lGtFl">
                                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                                <property role="2qtEX9" value="value" />
                                <node concept="3zFVjK" id="3pZGE0vtDOd" role="3zH0cK">
                                  <node concept="3clFbS" id="3pZGE0vtDOe" role="2VODD2">
                                    <node concept="3clFbF" id="3pZGE0vtE8I" role="3cqZAp">
                                      <node concept="2OqwBi" id="3pZGE0vtEkh" role="3clFbG">
                                        <node concept="1iwH7S" id="3pZGE0vtE8H" role="2Oq$k0" />
                                        <node concept="1qCSth" id="3pZGE0vtECM" role="2OqNvi">
                                          <property role="1qCSqd" value="k" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="3pZGE0vtC$_" role="AHHXb">
                              <ref role="3cqZAo" node="3pZGE0vtlCZ" resolve="myIntentionsForConcept" />
                            </node>
                          </node>
                          <node concept="2ShNRf" id="3pZGE0vtD1J" role="37vLTx">
                            <node concept="1pGfFk" id="3pZGE0vtD1K" role="2ShVmc">
                              <ref role="37wK5l" node="zWYlCGIiYD" resolve="IntentionFactoryClass" />
                              <node concept="1ZhdrF" id="3pZGE0vtD1L" role="lGtFl">
                                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                                <property role="2qtEX8" value="baseMethodDeclaration" />
                                <node concept="3$xsQk" id="3pZGE0vtD1M" role="3$ytzL">
                                  <node concept="3clFbS" id="3pZGE0vtD1N" role="2VODD2">
                                    <node concept="3clFbF" id="3pZGE0vtD1O" role="3cqZAp">
                                      <node concept="2OqwBi" id="3pZGE0vtD1P" role="3clFbG">
                                        <node concept="1iwH7S" id="3pZGE0vtD1Q" role="2Oq$k0" />
                                        <node concept="1iwH70" id="3pZGE0vtD1R" role="2OqNvi">
                                          <ref role="1iwH77" node="zWYlCGIwHb" resolve="map_IntentionFactoryConstructor" />
                                          <node concept="30H73N" id="3pZGE0vtD1S" role="1iwH7V" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1WS0z7" id="3pZGE0vtDgx" role="lGtFl">
                          <property role="1qytDF" value="k" />
                          <node concept="3JmXsc" id="3pZGE0vtDgz" role="3Jn$fo">
                            <node concept="3clFbS" id="3pZGE0vtDg_" role="2VODD2">
                              <node concept="3clFbF" id="3pZGE0vtDsZ" role="3cqZAp">
                                <node concept="2OqwBi" id="3pZGE0vtDt0" role="3clFbG">
                                  <node concept="1iwH7S" id="3pZGE0vtDt1" role="2Oq$k0" />
                                  <node concept="1bhEwm" id="3pZGE0vtDt2" role="2OqNvi">
                                    <ref role="1bhEwk" node="3pZGE0voq26" resolve="intentions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="3pZGE0vttBb" role="3clFbw">
                      <node concept="10Nm6u" id="3pZGE0vttFR" role="3uHU7w" />
                      <node concept="37vLTw" id="3pZGE0vttxW" role="3uHU7B">
                        <ref role="3cqZAo" node="3pZGE0vtlCZ" resolve="myIntentionsForConcept" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="3pZGE0vtxnX" role="3cqZAp">
                    <node concept="2YIFZM" id="3pZGE0vtyVD" role="3cqZAk">
                      <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                      <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
                      <node concept="37vLTw" id="3pZGE0vtzvo" role="37wK5m">
                        <ref role="3cqZAo" node="3pZGE0vtlCZ" resolve="myIntentionsForConcept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="1M8MwyYD_w" role="lGtFl">
              <property role="1qytDF" value="c" />
              <node concept="3JmXsc" id="1M8MwyYD_y" role="3Jn$fo">
                <node concept="3clFbS" id="1M8MwyYD_$" role="2VODD2">
                  <node concept="3clFbF" id="1M8MwyYE6i" role="3cqZAp">
                    <node concept="2OqwBi" id="1M8MwyYE9S" role="3clFbG">
                      <node concept="1iwH7S" id="1M8MwyYE6h" role="2Oq$k0" />
                      <node concept="1bhEwm" id="1M8MwyYEhH" role="2OqNvi">
                        <ref role="1bhEwk" node="1M8MwyYfMD" resolve="sortedConcepts" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2jeGV$" id="3pZGE0voq26" role="lGtFl">
              <property role="TrG5h" value="intentions" />
              <node concept="2jfdEK" id="3pZGE0voq28" role="2jfP_Y">
                <node concept="3clFbS" id="3pZGE0voq2a" role="2VODD2">
                  <node concept="3clFbF" id="3pZGE0vosj6" role="3cqZAp">
                    <node concept="2OqwBi" id="3pZGE0vosj7" role="3clFbG">
                      <node concept="2OqwBi" id="3pZGE0vosj8" role="2Oq$k0">
                        <node concept="2OqwBi" id="3pZGE0vosj9" role="2Oq$k0">
                          <node concept="1iwH7S" id="3pZGE0vosja" role="2Oq$k0" />
                          <node concept="1r8y6K" id="3pZGE0vosjb" role="2OqNvi" />
                        </node>
                        <node concept="2RRcyG" id="3pZGE0vosjc" role="2OqNvi">
                          <ref role="2RRcyH" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="3pZGE0vosjd" role="2OqNvi">
                        <node concept="1bVj0M" id="3pZGE0vosje" role="23t8la">
                          <node concept="3clFbS" id="3pZGE0vosjf" role="1bW5cS">
                            <node concept="3clFbF" id="3pZGE0vosjg" role="3cqZAp">
                              <node concept="3clFbC" id="3pZGE0vosjh" role="3clFbG">
                                <node concept="30H73N" id="3pZGE0vosji" role="3uHU7w" />
                                <node concept="2OqwBi" id="3pZGE0vosjj" role="3uHU7B">
                                  <node concept="37vLTw" id="3pZGE0vosjk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3pZGE0vosjm" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="3pZGE0vosjl" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3j:2c3oNEsfAwi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="3pZGE0vosjm" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="3pZGE0vosjn" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="3pZGE0vosqj" role="2jfP_h">
                <node concept="3Tqbb2" id="3pZGE0votmo" role="A3Ik2">
                  <ref role="ehGHo" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1M8MwyY7Wf" role="3clF46">
        <property role="TrG5h" value="conceptId" />
        <node concept="3uibUv" id="1M8MwyY7We" role="1tU5fm">
          <ref role="3uigEE" to="a7z3:~SConceptId" resolve="SConceptId" />
        </node>
        <node concept="2AHcQZ" id="3pZGE0vwqlT" role="2AJF6D">
          <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3pZGE0vwnQW" role="1B3o_S" />
      <node concept="2AHcQZ" id="3pZGE0vwpFX" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="3pZGE0vwsk7" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4E$B1NvPnP_" role="jymVt" />
    <node concept="3clFb_" id="4E$B1NvPoPq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAllIntentions" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="4E$B1NvPoPr" role="1B3o_S" />
      <node concept="3uibUv" id="4E$B1NvPoPt" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="4E$B1NvPoPu" role="11_B2D">
          <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4E$B1NvPoPv" role="2AJF6D">
        <ref role="2AI5Lk" to="as9o:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4E$B1NvPoPy" role="3clF47">
        <node concept="3cpWs8" id="4E$B1NvPqUm" role="3cqZAp">
          <node concept="3cpWsn" id="4E$B1NvPqUn" role="3cpWs9">
            <property role="TrG5h" value="rv" />
            <node concept="10Q1$e" id="4E$B1NvPx5N" role="1tU5fm">
              <node concept="3uibUv" id="4E$B1NvPqUo" role="10Q1$1">
                <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
              </node>
            </node>
            <node concept="2ShNRf" id="4E$B1NvPqWE" role="33vP2m">
              <node concept="3$_iS1" id="4E$B1NvPsX5" role="2ShVmc">
                <node concept="3$GHV9" id="4E$B1NvPsX6" role="3$GQph">
                  <node concept="3cmrfG" id="4E$B1NvPCa9" role="3$I4v7">
                    <property role="3cmrfH" value="0" />
                    <node concept="17Uvod" id="4E$B1NvPCaa" role="lGtFl">
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                      <property role="2qtEX9" value="value" />
                      <node concept="3zFVjK" id="4E$B1NvPCab" role="3zH0cK">
                        <node concept="3clFbS" id="4E$B1NvPCac" role="2VODD2">
                          <node concept="3clFbF" id="4E$B1NvPCad" role="3cqZAp">
                            <node concept="2OqwBi" id="4E$B1NvPCae" role="3clFbG">
                              <node concept="2OqwBi" id="4E$B1NvPE73" role="2Oq$k0">
                                <node concept="2OqwBi" id="4E$B1NvPCaf" role="2Oq$k0">
                                  <node concept="1iwH7S" id="4E$B1NvPCag" role="2Oq$k0" />
                                  <node concept="1r8y6K" id="4E$B1NvPDOR" role="2OqNvi" />
                                </node>
                                <node concept="2RRcyG" id="4E$B1NvPErO" role="2OqNvi">
                                  <ref role="2RRcyH" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="4E$B1NvPCai" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4E$B1NvPsTf" role="3$_nBY">
                  <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4E$B1NvPzgW" role="3cqZAp">
          <node concept="37vLTI" id="4E$B1NvPzgX" role="3clFbG">
            <node concept="AH0OO" id="4E$B1NvPzgY" role="37vLTJ">
              <node concept="3cmrfG" id="4E$B1NvPzgZ" role="AHEQo">
                <property role="3cmrfH" value="0" />
                <node concept="17Uvod" id="4E$B1NvPzh0" role="lGtFl">
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" />
                  <property role="2qtEX9" value="value" />
                  <node concept="3zFVjK" id="4E$B1NvPzh1" role="3zH0cK">
                    <node concept="3clFbS" id="4E$B1NvPzh2" role="2VODD2">
                      <node concept="3clFbF" id="4E$B1NvPzh3" role="3cqZAp">
                        <node concept="2OqwBi" id="4E$B1NvPzh4" role="3clFbG">
                          <node concept="1iwH7S" id="4E$B1NvPzh5" role="2Oq$k0" />
                          <node concept="1qCSth" id="4E$B1NvPzh6" role="2OqNvi">
                            <property role="1qCSqd" value="k" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4E$B1NvRNUA" role="AHHXb">
                <ref role="3cqZAo" node="4E$B1NvPqUn" resolve="rv" />
              </node>
            </node>
            <node concept="2ShNRf" id="4E$B1NvPzh8" role="37vLTx">
              <node concept="1pGfFk" id="4E$B1NvPzh9" role="2ShVmc">
                <ref role="37wK5l" node="zWYlCGIiYD" resolve="IntentionFactoryClass" />
                <node concept="1ZhdrF" id="4E$B1NvPzha" role="lGtFl">
                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                  <property role="2qtEX8" value="baseMethodDeclaration" />
                  <node concept="3$xsQk" id="4E$B1NvPzhb" role="3$ytzL">
                    <node concept="3clFbS" id="4E$B1NvPzhc" role="2VODD2">
                      <node concept="3clFbF" id="4E$B1NvPzhd" role="3cqZAp">
                        <node concept="2OqwBi" id="4E$B1NvPzhe" role="3clFbG">
                          <node concept="1iwH7S" id="4E$B1NvPzhf" role="2Oq$k0" />
                          <node concept="1iwH70" id="4E$B1NvPzhg" role="2OqNvi">
                            <ref role="1iwH77" node="zWYlCGIwHb" resolve="map_IntentionFactoryConstructor" />
                            <node concept="30H73N" id="4E$B1NvPzhh" role="1iwH7V" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="4E$B1NvPzhi" role="lGtFl">
            <property role="1qytDF" value="k" />
            <node concept="3JmXsc" id="4E$B1NvPzhj" role="3Jn$fo">
              <node concept="3clFbS" id="4E$B1NvPzhk" role="2VODD2">
                <node concept="3clFbF" id="4E$B1NvPAhS" role="3cqZAp">
                  <node concept="2OqwBi" id="4E$B1NvPAZH" role="3clFbG">
                    <node concept="2OqwBi" id="4E$B1NvPAFQ" role="2Oq$k0">
                      <node concept="1iwH7S" id="4E$B1NvPAhN" role="2Oq$k0" />
                      <node concept="1r8y6K" id="4E$B1NvPARn" role="2OqNvi" />
                    </node>
                    <node concept="2RRcyG" id="4E$B1NvPBvG" role="2OqNvi">
                      <ref role="2RRcyH" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4E$B1NvPt1j" role="3cqZAp">
          <node concept="2YIFZM" id="4E$B1NvPtLG" role="3cqZAk">
            <ref role="37wK5l" to="k7g3:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
            <ref role="1Pybhc" to="k7g3:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="4E$B1NvPuln" role="37wK5m">
              <ref role="3cqZAo" node="4E$B1NvPqUn" resolve="rv" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4E$B1NvPFE6" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6h71hRDS6Ln" role="1B3o_S" />
    <node concept="n94m4" id="6h71hRDS6Ls" role="lGtFl">
      <ref role="n9lRv" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    </node>
    <node concept="3uibUv" id="1M8MwyY7oY" role="1zkMxy">
      <ref role="3uigEE" to="ud4o:~IntentionAspectBase" resolve="IntentionAspectBase" />
    </node>
    <node concept="17Uvod" id="6VBrDoslaqw" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="6VBrDoslaqx" role="3zH0cK">
        <node concept="3clFbS" id="6VBrDoslaqy" role="2VODD2">
          <node concept="3cpWs8" id="6VBrDosld5l" role="3cqZAp">
            <node concept="3cpWsn" id="6VBrDosld5m" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <node concept="2OqwBi" id="256tImPkKBf" role="33vP2m">
                <node concept="2JrnkZ" id="256tImPkKBi" role="2Oq$k0">
                  <node concept="2OqwBi" id="256tImPkKBj" role="2JrQYb">
                    <node concept="1iwH7S" id="256tImPkKBk" role="2Oq$k0" />
                    <node concept="1st3f0" id="256tImPkKBl" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="256tImPkKBg" role="2OqNvi">
                  <ref role="37wK5l" to="ec5l:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                </node>
              </node>
              <node concept="3uibUv" id="6VBrDosld5n" role="1tU5fm">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
            </node>
          </node>
          <node concept="1gVbGN" id="6VBrDosld5x" role="3cqZAp">
            <node concept="2ZW3vV" id="6VBrDosljAL" role="1gVkn0">
              <node concept="3uibUv" id="6VBrDosljAO" role="2ZW6by">
                <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
              </node>
              <node concept="37vLTw" id="3GM_nagT_2t" role="2ZW6bz">
                <ref role="3cqZAo" node="6VBrDosld5m" resolve="module" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6VBrDosljAQ" role="3cqZAp">
            <node concept="2YIFZM" id="6VBrDosljAT" role="3cqZAk">
              <ref role="1Pybhc" to="ud4o:~IntentionsManager" resolve="IntentionsManager" />
              <ref role="37wK5l" to="ud4o:~IntentionsManager.getDescriptorClassName(org.jetbrains.mps.openapi.module.SModuleReference):java.lang.String" resolve="getDescriptorClassName" />
              <node concept="2OqwBi" id="6VBrDosljAV" role="37wK5m">
                <node concept="37vLTw" id="3GM_nagT_XX" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VBrDosld5m" resolve="module" />
                </node>
                <node concept="liA8E" id="6VBrDosljZ7" role="2OqNvi">
                  <ref role="37wK5l" to="88zw:~SModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2jeGV$" id="1M8MwyYfMD" role="lGtFl">
      <property role="TrG5h" value="sortedConcepts" />
      <node concept="2jfdEK" id="1M8MwyYfMF" role="2jfP_Y">
        <node concept="3clFbS" id="1M8MwyYfMH" role="2VODD2">
          <node concept="3cpWs8" id="1M8MwyYhAW" role="3cqZAp">
            <node concept="3cpWsn" id="1M8MwyYhAX" role="3cpWs9">
              <property role="TrG5h" value="forConcepts" />
              <node concept="A3Dl8" id="3pZGE0vnFNE" role="1tU5fm">
                <node concept="3Tqbb2" id="3pZGE0vnHYR" role="A3Ik2">
                  <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
                </node>
              </node>
              <node concept="2OqwBi" id="3pZGE0vteCC" role="33vP2m">
                <node concept="2OqwBi" id="3pZGE0vny_L" role="2Oq$k0">
                  <node concept="2OqwBi" id="1M8MwyYhAY" role="2Oq$k0">
                    <node concept="2OqwBi" id="1M8MwyYhAZ" role="2Oq$k0">
                      <node concept="1iwH7S" id="1M8MwyYhB0" role="2Oq$k0" />
                      <node concept="1r8y6K" id="1M8MwyYhB1" role="2OqNvi" />
                    </node>
                    <node concept="2RRcyG" id="1M8MwyYhB2" role="2OqNvi">
                      <ref role="2RRcyH" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
                    </node>
                  </node>
                  <node concept="13MTOL" id="3pZGE0vnB37" role="2OqNvi">
                    <ref role="13MTZf" to="tp3j:2c3oNEsfAwi" />
                  </node>
                </node>
                <node concept="1VAtEI" id="3pZGE0vtfp0" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1M8MwyYhtI" role="3cqZAp">
            <node concept="2OqwBi" id="1M8MwyYrfk" role="3clFbG">
              <node concept="2OqwBi" id="1M8MwyYjaq" role="2Oq$k0">
                <node concept="37vLTw" id="1M8MwyYhB3" role="2Oq$k0">
                  <ref role="3cqZAo" node="1M8MwyYhAX" resolve="forConcepts" />
                </node>
                <node concept="2S7cBI" id="1M8MwyYnl7" role="2OqNvi">
                  <node concept="1bVj0M" id="1M8MwyYnl9" role="23t8la">
                    <node concept="3clFbS" id="1M8MwyYnla" role="1bW5cS">
                      <node concept="3clFbF" id="1M8MwyYnp5" role="3cqZAp">
                        <node concept="2OqwBi" id="7gHklTe9v4o" role="3clFbG">
                          <node concept="2YIFZM" id="7gHklTe9v4p" role="2Oq$k0">
                            <ref role="37wK5l" to="a7z3:~MetaIdByDeclaration.getConceptId(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.smodel.adapter.ids.SConceptId" resolve="getConceptId" />
                            <ref role="1Pybhc" to="a7z3:~MetaIdByDeclaration" resolve="MetaIdByDeclaration" />
                            <node concept="37vLTw" id="7gHklTe9whK" role="37wK5m">
                              <ref role="3cqZAo" node="1M8MwyYnlb" resolve="it" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7gHklTe9v4t" role="2OqNvi">
                            <ref role="37wK5l" to="a7z3:~SConceptId.getIdValue():long" resolve="getIdValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1M8MwyYnlb" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1M8MwyYnlc" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1nlBCl" id="1M8MwyYnld" role="2S7zOq">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="1M8MwyYrF9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2I9FWS" id="1M8MwyYrPM" role="2jfP_h">
        <ref role="2I9WkF" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="zWYlCGIiYB">
    <property role="TrG5h" value="IntentionFactoryClass" />
    <property role="1EXbeo" value="true" />
    <node concept="3Tm1VV" id="zWYlCGIiYC" role="1B3o_S" />
    <node concept="n94m4" id="zWYlCGIiYH" role="lGtFl">
      <ref role="n9lRv" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
    </node>
    <node concept="3uibUv" id="zWYlCGIj9S" role="EKbjA">
      <ref role="3uigEE" to="ud4o:~IntentionFactory" resolve="IntentionFactory" />
    </node>
    <node concept="17Uvod" id="zWYlCGKjZY" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="zWYlCGKjZZ" role="3zH0cK">
        <node concept="3clFbS" id="zWYlCGKk00" role="2VODD2">
          <node concept="3clFbF" id="zWYlCGKk5r" role="3cqZAp">
            <node concept="2OqwBi" id="zWYlCGKkfl" role="3clFbG">
              <node concept="2qgKlT" id="6FPcSnNyrYp" role="2OqNvi">
                <ref role="37wK5l" to="tp3m:5rGvd38DcHL" resolve="getGeneratedName" />
              </node>
              <node concept="30H73N" id="zWYlCGKk5q" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1VQ0jyzqHbT" role="jymVt">
      <property role="TrG5h" value="myCachedExecutable" />
      <node concept="1W57fq" id="1VQ0jyzqIhr" role="lGtFl">
        <node concept="3IZrLx" id="1VQ0jyzqIht" role="3IZSJc">
          <node concept="3clFbS" id="1VQ0jyzqIhv" role="2VODD2">
            <node concept="3clFbF" id="1VQ0jyzqIky" role="3cqZAp">
              <node concept="3fqX7Q" id="1VQ0jyzqJC0" role="3clFbG">
                <node concept="2OqwBi" id="1VQ0jyzqJC2" role="3fr31v">
                  <node concept="1mIQ4w" id="1VQ0jyzqJC3" role="2OqNvi">
                    <node concept="chp4Y" id="1VQ0jyzqJC4" role="cj9EA">
                      <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                    </node>
                  </node>
                  <node concept="30H73N" id="1VQ0jyzqJC5" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1VQ0jyzqIdz" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="1VQ0jyzqIdU" role="11_B2D">
          <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1VQ0jyzqHbU" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="zWYlCGIiYD" role="jymVt">
      <node concept="1pdMLZ" id="zWYlCGKtK6" role="lGtFl">
        <ref role="2rW$FS" node="zWYlCGIwHb" resolve="map_IntentionFactoryConstructor" />
      </node>
      <node concept="3cqZAl" id="zWYlCGIiYE" role="3clF45" />
      <node concept="3Tm1VV" id="zWYlCGIiYF" role="1B3o_S" />
      <node concept="3clFbS" id="zWYlCGIiYG" role="3clF47">
        <node concept="XkiVB" id="3pZGE0vla4N" role="3cqZAp">
          <ref role="37wK5l" to="ud4o:~IntentionDescriptorBase.&lt;init&gt;(org.jetbrains.mps.openapi.language.SAbstractConcept,jetbrains.mps.intentions.IntentionType,boolean,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="IntentionDescriptorBase" />
          <node concept="35c_gC" id="3pZGE0vlao8" role="37wK5m">
            <ref role="35c_gD" to="tpck:gw2VY9q" resolve="BaseConcept" />
            <node concept="1ZhdrF" id="3pZGE0vlao9" role="lGtFl">
              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/2644386474300074836/2644386474300074837" />
              <property role="2qtEX8" value="conceptDeclaration" />
              <node concept="3$xsQk" id="3pZGE0vlaoa" role="3$ytzL">
                <node concept="3clFbS" id="3pZGE0vlaob" role="2VODD2">
                  <node concept="3clFbF" id="3pZGE0vlaoc" role="3cqZAp">
                    <node concept="2OqwBi" id="3pZGE0vlaod" role="3clFbG">
                      <node concept="30H73N" id="3pZGE0vlaoe" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3pZGE0vlaof" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3j:2c3oNEsfAwi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="Rm8GO" id="3pZGE0vlaog" role="37wK5m">
            <ref role="1Px2BO" to="ud4o:~IntentionType" resolve="IntentionType" />
            <ref role="Rm8GQ" to="ud4o:~IntentionType.ERROR" resolve="ERROR" />
            <node concept="1W57fq" id="3pZGE0vlaoh" role="lGtFl">
              <node concept="3IZrLx" id="3pZGE0vlaoi" role="3IZSJc">
                <node concept="3clFbS" id="3pZGE0vlaoj" role="2VODD2">
                  <node concept="3clFbF" id="3pZGE0vlaok" role="3cqZAp">
                    <node concept="2OqwBi" id="3pZGE0vlaol" role="3clFbG">
                      <node concept="3TrcHB" id="3pZGE0vlaom" role="2OqNvi">
                        <ref role="3TsBF5" to="tp3j:2c3oNEsfcpT" resolve="isErrorIntention" />
                      </node>
                      <node concept="30H73N" id="3pZGE0vlaon" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="gft3U" id="3pZGE0vlaoo" role="UU_$l">
                <node concept="Rm8GO" id="3pZGE0vlaop" role="gfFT$">
                  <ref role="1Px2BO" to="ud4o:~IntentionType" resolve="IntentionType" />
                  <ref role="Rm8GQ" to="ud4o:~IntentionType.NORMAL" resolve="NORMAL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="3pZGE0vlaoq" role="37wK5m">
            <property role="3clFbU" value="true" />
            <node concept="17Uvod" id="3pZGE0vlaor" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
              <node concept="3zFVjK" id="3pZGE0vlaos" role="3zH0cK">
                <node concept="3clFbS" id="3pZGE0vlaot" role="2VODD2">
                  <node concept="3clFbF" id="3pZGE0vlaou" role="3cqZAp">
                    <node concept="2OqwBi" id="3pZGE0vlaov" role="3clFbG">
                      <node concept="30H73N" id="3pZGE0vlaow" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3pZGE0vlaox" role="2OqNvi">
                        <ref role="3TsBF5" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ShNRf" id="3pZGE0vlaoy" role="37wK5m">
            <node concept="1pGfFk" id="3pZGE0vlaoz" role="2ShVmc">
              <ref role="37wK5l" to="cu2c:~SNodePointer.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="SNodePointer" />
              <node concept="Xl_RD" id="3pZGE0vlao$" role="37wK5m">
                <property role="Xl_RC" value="modelUID" />
                <node concept="17Uvod" id="3pZGE0vlao_" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="3pZGE0vlaoA" role="3zH0cK">
                    <node concept="3clFbS" id="3pZGE0vlaoB" role="2VODD2">
                      <node concept="3cpWs8" id="3pZGE0vlaoC" role="3cqZAp">
                        <node concept="3cpWsn" id="3pZGE0vlaoD" role="3cpWs9">
                          <property role="TrG5h" value="original" />
                          <node concept="3Tqbb2" id="3pZGE0vlaoE" role="1tU5fm" />
                          <node concept="2OqwBi" id="3pZGE0vlaoF" role="33vP2m">
                            <node concept="12$id9" id="3pZGE0vlaoG" role="2OqNvi">
                              <node concept="30H73N" id="3pZGE0vlaoH" role="12$y8L" />
                            </node>
                            <node concept="1iwH7S" id="3pZGE0vlaoI" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3pZGE0vlaoJ" role="3cqZAp">
                        <node concept="2OqwBi" id="3pZGE0vlaoK" role="3clFbG">
                          <node concept="2OqwBi" id="3pZGE0vlaoL" role="2Oq$k0">
                            <node concept="liA8E" id="3pZGE0vlaoM" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                            </node>
                            <node concept="2JrnkZ" id="3pZGE0vlaoN" role="2Oq$k0">
                              <node concept="2OqwBi" id="3pZGE0vlaoO" role="2JrQYb">
                                <node concept="I4A8Y" id="3pZGE0vlaoP" role="2OqNvi" />
                                <node concept="37vLTw" id="3pZGE0vlaoQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3pZGE0vlaoD" resolve="original" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="3pZGE0vlaoR" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3pZGE0vlaoS" role="37wK5m">
                <property role="Xl_RC" value="nodeId" />
                <node concept="17Uvod" id="3pZGE0vlaoT" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="3pZGE0vlaoU" role="3zH0cK">
                    <node concept="3clFbS" id="3pZGE0vlaoV" role="2VODD2">
                      <node concept="3cpWs8" id="3pZGE0vlaoW" role="3cqZAp">
                        <node concept="3cpWsn" id="3pZGE0vlaoX" role="3cpWs9">
                          <property role="TrG5h" value="original" />
                          <node concept="3Tqbb2" id="3pZGE0vlaoY" role="1tU5fm" />
                          <node concept="2OqwBi" id="3pZGE0vlaoZ" role="33vP2m">
                            <node concept="12$id9" id="3pZGE0vlap0" role="2OqNvi">
                              <node concept="30H73N" id="3pZGE0vlap1" role="12$y8L" />
                            </node>
                            <node concept="1iwH7S" id="3pZGE0vlap2" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="3pZGE0vlap3" role="3cqZAp">
                        <node concept="2OqwBi" id="3pZGE0vlap4" role="3clFbG">
                          <node concept="liA8E" id="3pZGE0vlap5" role="2OqNvi">
                            <ref role="37wK5l" to="e2lb:~Object.toString():java.lang.String" resolve="toString" />
                          </node>
                          <node concept="2OqwBi" id="3pZGE0vlap6" role="2Oq$k0">
                            <node concept="liA8E" id="3pZGE0vlap7" role="2OqNvi">
                              <ref role="37wK5l" to="ec5l:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                            </node>
                            <node concept="2JrnkZ" id="3pZGE0vlap8" role="2Oq$k0">
                              <node concept="37vLTw" id="3pZGE0vlap9" role="2JrQYb">
                                <ref role="3cqZAo" node="3pZGE0vlaoX" resolve="original" />
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
    <node concept="3clFb_" id="1VQ0jyzp1UJ" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="1VQ0jyzp1UK" role="3clF45" />
      <node concept="3Tm1VV" id="1VQ0jyzp1UL" role="1B3o_S" />
      <node concept="3clFbS" id="1VQ0jyzp1UM" role="3clF47">
        <node concept="3cpWs6" id="1VQ0jyzp1UN" role="3cqZAp">
          <node concept="Xl_RD" id="1VQ0jyzp1UO" role="3cqZAk">
            <property role="Xl_RC" value="presentation" />
            <node concept="17Uvod" id="1VQ0jyzp1UP" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
              <node concept="3zFVjK" id="1VQ0jyzp1UQ" role="3zH0cK">
                <node concept="3clFbS" id="1VQ0jyzp1UR" role="2VODD2">
                  <node concept="3clFbF" id="1VQ0jyzp1US" role="3cqZAp">
                    <node concept="2OqwBi" id="1VQ0jyzp1UT" role="3clFbG">
                      <node concept="3TrcHB" id="1VQ0jyzp1UU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="1VQ0jyzp1UV" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1M8MwyY1g4" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3a9F6X8MEhW" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="10P_77" id="3a9F6X8MEhX" role="3clF45" />
      <node concept="3Tm1VV" id="3a9F6X8MEhY" role="1B3o_S" />
      <node concept="37vLTG" id="3a9F6X8MEhZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="3a9F6X8MEi0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3a9F6X8MEi1" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3a9F6X8MEi2" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="3a9F6X8MEi3" role="3clF47">
        <node concept="3clFbJ" id="3a9F6X8MEi4" role="3cqZAp">
          <node concept="3fqX7Q" id="3a9F6X8MEi5" role="3clFbw">
            <node concept="1rXfSq" id="3a9F6X8MEi6" role="3fr31v">
              <ref role="37wK5l" node="5OVV9w1gzyJ" resolve="isApplicableToNode" />
              <node concept="37vLTw" id="2BHiRxghf9G" role="37wK5m">
                <ref role="3cqZAo" node="3a9F6X8MEhZ" resolve="node" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm8JX" role="37wK5m">
                <ref role="3cqZAo" node="3a9F6X8MEi1" resolve="editorContext" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3a9F6X8MEi9" role="3clFbx">
            <node concept="3cpWs6" id="3a9F6X8MEia" role="3cqZAp">
              <node concept="3clFbT" id="3a9F6X8MEib" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="3a9F6X8MEic" role="lGtFl">
            <node concept="3IZrLx" id="3a9F6X8MEid" role="3IZSJc">
              <node concept="3clFbS" id="3a9F6X8MEie" role="2VODD2">
                <node concept="3clFbF" id="3a9F6X8MEif" role="3cqZAp">
                  <node concept="3y3z36" id="3a9F6X8MEig" role="3clFbG">
                    <node concept="10Nm6u" id="3a9F6X8MEih" role="3uHU7w" />
                    <node concept="2OqwBi" id="3a9F6X8MEii" role="3uHU7B">
                      <node concept="30H73N" id="3a9F6X8MEij" role="2Oq$k0" />
                      <node concept="3TrEf2" id="3a9F6X8MEik" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2F" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3a9F6X8MEil" role="3cqZAp">
          <node concept="3clFbS" id="3a9F6X8MEim" role="3clFbx">
            <node concept="3cpWs6" id="3a9F6X8MEin" role="3cqZAp">
              <node concept="3clFbT" id="3a9F6X8MEio" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3a9F6X8MEip" role="3clFbw">
            <node concept="3fqX7Q" id="3a9F6X8MEiq" role="3uHU7w">
              <node concept="1rXfSq" id="3a9F6X8MEir" role="3fr31v">
                <ref role="37wK5l" node="5OVV9w1gzz9" resolve="isVisibleInChild" />
                <node concept="37vLTw" id="2BHiRxgm$O6" role="37wK5m">
                  <ref role="3cqZAo" node="3a9F6X8MEhZ" resolve="node" />
                </node>
                <node concept="2OqwBi" id="3a9F6X8MEit" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxgmpLd" role="2Oq$k0">
                    <ref role="3cqZAo" node="3a9F6X8MEi1" resolve="editorContext" />
                  </node>
                  <node concept="liA8E" id="3a9F6X8MEiv" role="2OqNvi">
                    <ref role="37wK5l" to="srng:~EditorContext.getSelectedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSelectedNode" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BHiRxgmaLg" role="37wK5m">
                  <ref role="3cqZAo" node="3a9F6X8MEi1" resolve="editorContext" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="3a9F6X8MEix" role="3uHU7B">
              <node concept="2OqwBi" id="3a9F6X8MEiy" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgheZU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3a9F6X8MEi1" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="3a9F6X8MEi$" role="2OqNvi">
                  <ref role="37wK5l" to="srng:~EditorContext.getSelectedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSelectedNode" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxglavF" role="3uHU7w">
                <ref role="3cqZAo" node="3a9F6X8MEhZ" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="1W57fq" id="3a9F6X8MEiA" role="lGtFl">
            <node concept="3IZrLx" id="3a9F6X8MEiB" role="3IZSJc">
              <node concept="3clFbS" id="3a9F6X8MEiC" role="2VODD2">
                <node concept="3clFbF" id="3a9F6X8MEiD" role="3cqZAp">
                  <node concept="1Wc70l" id="3a9F6X8MEiE" role="3clFbG">
                    <node concept="2OqwBi" id="3a9F6X8MEiF" role="3uHU7w">
                      <node concept="2OqwBi" id="3a9F6X8MEiG" role="2Oq$k0">
                        <node concept="30H73N" id="3a9F6X8MEiH" role="2Oq$k0" />
                        <node concept="3TrEf2" id="3a9F6X8MEiI" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2E" />
                        </node>
                      </node>
                      <node concept="3x8VRR" id="3a9F6X8MEiJ" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="3a9F6X8MEiK" role="3uHU7B">
                      <node concept="30H73N" id="3a9F6X8MEiL" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3a9F6X8MEiM" role="2OqNvi">
                        <ref role="3TsBF5" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3a9F6X8MEiN" role="3cqZAp">
          <node concept="3clFbT" id="3a9F6X8MEiO" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1M8MwyY4$x" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5OVV9w1gzyJ" role="jymVt">
      <property role="TrG5h" value="isApplicableToNode" />
      <node concept="3Tm6S6" id="5OVV9w1gzyK" role="1B3o_S" />
      <node concept="10P_77" id="5OVV9w1gzyL" role="3clF45" />
      <node concept="37vLTG" id="5OVV9w1gzyM" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="5OVV9w1gzyN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5OVV9w1gzyO" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5OVV9w1gzyP" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="5OVV9w1gzyQ" role="3clF47">
        <node concept="29HgVG" id="5OVV9w1gzyR" role="lGtFl">
          <node concept="3NFfHV" id="5OVV9w1gzyS" role="3NFExx">
            <node concept="3clFbS" id="5OVV9w1gzyT" role="2VODD2">
              <node concept="3clFbF" id="5OVV9w1gzyU" role="3cqZAp">
                <node concept="2OqwBi" id="5OVV9w1gzyV" role="3clFbG">
                  <node concept="2OqwBi" id="5OVV9w1gzyW" role="2Oq$k0">
                    <node concept="30H73N" id="5OVV9w1gzyX" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5OVV9w1gzyY" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2F" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5OVV9w1gzyZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:gyVODHa" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="5OVV9w1gzz0" role="lGtFl">
        <node concept="3IZrLx" id="5OVV9w1gzz1" role="3IZSJc">
          <node concept="3clFbS" id="5OVV9w1gzz2" role="2VODD2">
            <node concept="3clFbF" id="5OVV9w1gzz3" role="3cqZAp">
              <node concept="3y3z36" id="5OVV9w1gzz4" role="3clFbG">
                <node concept="10Nm6u" id="5OVV9w1gzz5" role="3uHU7w" />
                <node concept="2OqwBi" id="5OVV9w1gzz6" role="3uHU7B">
                  <node concept="30H73N" id="5OVV9w1gzz7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OVV9w1gzz8" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2F" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5OVV9w1gzz9" role="jymVt">
      <property role="TrG5h" value="isVisibleInChild" />
      <node concept="3Tm6S6" id="5OVV9w1gzza" role="1B3o_S" />
      <node concept="37vLTG" id="5OVV9w1gzzb" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="5OVV9w1gzzc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5OVV9w1gzzd" role="3clF46">
        <property role="TrG5h" value="childNode" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="5OVV9w1gzze" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5OVV9w1gzzf" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="5OVV9w1gzzg" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="10P_77" id="5OVV9w1gzzh" role="3clF45" />
      <node concept="3clFbS" id="5OVV9w1gzzi" role="3clF47">
        <node concept="29HgVG" id="5OVV9w1gzzj" role="lGtFl">
          <node concept="3NFfHV" id="5OVV9w1gzzk" role="3NFExx">
            <node concept="3clFbS" id="5OVV9w1gzzl" role="2VODD2">
              <node concept="3clFbF" id="5OVV9w1gzzm" role="3cqZAp">
                <node concept="2OqwBi" id="5OVV9w1gzzn" role="3clFbG">
                  <node concept="30H73N" id="5OVV9w1gzzo" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5OVV9w1gzzp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2E" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1W57fq" id="5OVV9w1gzzq" role="lGtFl">
        <node concept="3IZrLx" id="5OVV9w1gzzr" role="3IZSJc">
          <node concept="3clFbS" id="5OVV9w1gzzs" role="2VODD2">
            <node concept="3clFbF" id="5OVV9w1gzzt" role="3cqZAp">
              <node concept="1Wc70l" id="5OVV9w1gzzu" role="3clFbG">
                <node concept="2OqwBi" id="5OVV9w1gzzv" role="3uHU7w">
                  <node concept="2OqwBi" id="5OVV9w1gzzw" role="2Oq$k0">
                    <node concept="30H73N" id="5OVV9w1gzzx" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5OVV9w1gzzy" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2E" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="5OVV9w1gzzz" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="5OVV9w1gzz$" role="3uHU7B">
                  <node concept="30H73N" id="5OVV9w1gzz_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="5OVV9w1gzzA" role="2OqNvi">
                    <ref role="3TsBF5" to="tp3j:2c3oNEsfcpU" resolve="isAvailableInChildNodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="fT7D_ZYaA5" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSurroundWith" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="fT7D_ZYaA6" role="1B3o_S" />
      <node concept="10P_77" id="fT7D_ZYaA8" role="3clF45" />
      <node concept="3clFbS" id="fT7D_ZYaA9" role="3clF47">
        <node concept="3clFbF" id="fT7D_ZYcnk" role="3cqZAp">
          <node concept="3clFbT" id="fT7D_ZYcnj" role="3clFbG">
            <node concept="17Uvod" id="fT7D_ZY$o2" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" />
              <node concept="3zFVjK" id="fT7D_ZY$pG" role="3zH0cK">
                <node concept="3clFbS" id="fT7D_ZY$pH" role="2VODD2">
                  <node concept="3clFbF" id="fT7D_ZYD3P" role="3cqZAp">
                    <node concept="2OqwBi" id="fT7D_ZYDcY" role="3clFbG">
                      <node concept="1mIQ4w" id="fT7D_ZZjAh" role="2OqNvi">
                        <node concept="chp4Y" id="fT7D_ZZmmb" role="cj9EA">
                          <ref role="cht4Q" to="tp3j:2c3oNEsfAwl" resolve="SurroundWithIntentionDeclaration" />
                        </node>
                      </node>
                      <node concept="30H73N" id="fT7D_ZYD3O" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4E$B1NvPk96" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="zWYlCGKrEe" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="instances" />
      <property role="DiZV1" value="false" />
      <node concept="1sPUBX" id="1WfddY$XIzT" role="lGtFl">
        <ref role="v9R2y" node="1VQ0jyzqrEa" resolve="InstancesMethod" />
      </node>
      <node concept="3Tm1VV" id="zWYlCGKrEf" role="1B3o_S" />
      <node concept="3uibUv" id="zWYlCGKrEh" role="3clF45">
        <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="1VQ0jyzpG3s" role="11_B2D">
          <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
        </node>
      </node>
      <node concept="37vLTG" id="zWYlCGKrEj" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="zWYlCGLxwj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="zWYlCGKrEl" role="3clF46">
        <property role="TrG5h" value="context" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="zWYlCGKrEm" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="zWYlCGKrEn" role="3clF47">
        <node concept="3cpWs6" id="1VQ0jyzrsIk" role="3cqZAp">
          <node concept="10Nm6u" id="1VQ0jyzrtPn" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3pZGE0vnuvk" role="2AJF6D">
        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="312cEu" id="zWYlCGLS8r" role="jymVt">
      <property role="TrG5h" value="IntentionImplementation" />
      <property role="2bfB8j" value="true" />
      <property role="1EXbeo" value="true" />
      <node concept="312cEg" id="zWYlCGM0hK" role="jymVt">
        <property role="TrG5h" value="myParameter" />
        <node concept="1W57fq" id="1VQ0jyzrVzd" role="lGtFl">
          <node concept="3IZrLx" id="1VQ0jyzrVzf" role="3IZSJc">
            <node concept="3clFbS" id="1VQ0jyzrVzh" role="2VODD2">
              <node concept="3clFbF" id="1VQ0jyzrW84" role="3cqZAp">
                <node concept="2OqwBi" id="1VQ0jyzrWge" role="3clFbG">
                  <node concept="1mIQ4w" id="1VQ0jyzrWH7" role="2OqNvi">
                    <node concept="chp4Y" id="1VQ0jyzrWL6" role="cj9EA">
                      <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                    </node>
                  </node>
                  <node concept="30H73N" id="1VQ0jyzrW83" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="zWYlCGM0hL" role="1B3o_S" />
        <node concept="3uibUv" id="zWYlCGM0hM" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
          <node concept="29HgVG" id="zWYlCGM0hN" role="lGtFl">
            <node concept="3NFfHV" id="zWYlCGM0hO" role="3NFExx">
              <node concept="3clFbS" id="zWYlCGM0hP" role="2VODD2">
                <node concept="3clFbF" id="zWYlCGM0hQ" role="3cqZAp">
                  <node concept="2OqwBi" id="zWYlCGM0hR" role="3clFbG">
                    <node concept="1$rogu" id="zWYlCGM0hS" role="2OqNvi" />
                    <node concept="2OqwBi" id="zWYlCGM0hT" role="2Oq$k0">
                      <node concept="2OqwBi" id="zWYlCGM0hU" role="2Oq$k0">
                        <node concept="3TrEf2" id="1VQ0jyzs1IK" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                        </node>
                        <node concept="1PxgMI" id="1VQ0jyzrZ7P" role="2Oq$k0">
                          <ref role="1PxNhF" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                          <node concept="30H73N" id="1VQ0jyzrYn4" role="1PxMeX" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="zWYlCGM0hY" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3j:i3ddBrI" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="zWYlCGLS8v" role="jymVt">
        <node concept="1pdMLZ" id="1VQ0jyzss8j" role="lGtFl">
          <ref role="2rW$FS" node="3jb7BNzCVpn" resolve="map_IntentionConstructor" />
        </node>
        <node concept="37vLTG" id="zWYlCGM1Bt" role="3clF46">
          <property role="TrG5h" value="parameter" />
          <node concept="1W57fq" id="1VQ0jyzs3Y1" role="lGtFl">
            <node concept="3IZrLx" id="1VQ0jyzs3Y3" role="3IZSJc">
              <node concept="3clFbS" id="1VQ0jyzs3Y5" role="2VODD2">
                <node concept="3clFbF" id="1VQ0jyzs4xH" role="3cqZAp">
                  <node concept="2OqwBi" id="1VQ0jyzs4DR" role="3clFbG">
                    <node concept="1mIQ4w" id="1VQ0jyzs54e" role="2OqNvi">
                      <node concept="chp4Y" id="1VQ0jyzs58h" role="cj9EA">
                        <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                      </node>
                    </node>
                    <node concept="30H73N" id="1VQ0jyzs4xG" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="zWYlCGM1BA" role="1tU5fm">
            <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
            <node concept="29HgVG" id="zWYlCGM1BB" role="lGtFl">
              <node concept="3NFfHV" id="zWYlCGM1BC" role="3NFExx">
                <node concept="3clFbS" id="zWYlCGM1BD" role="2VODD2">
                  <node concept="3clFbF" id="zWYlCGM1BE" role="3cqZAp">
                    <node concept="2OqwBi" id="zWYlCGM1BF" role="3clFbG">
                      <node concept="1$rogu" id="zWYlCGM1BG" role="2OqNvi" />
                      <node concept="2OqwBi" id="zWYlCGM1BH" role="2Oq$k0">
                        <node concept="2OqwBi" id="zWYlCGM1BI" role="2Oq$k0">
                          <node concept="3TrEf2" id="1VQ0jyzs7cO" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                          </node>
                          <node concept="1PxgMI" id="1VQ0jyzs5Xk" role="2Oq$k0">
                            <ref role="1PxNhF" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                            <node concept="30H73N" id="zWYlCGM20V" role="1PxMeX" />
                          </node>
                        </node>
                        <node concept="3TrEf2" id="zWYlCGM1BM" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp3j:i3ddBrI" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="zWYlCGLS8w" role="3clF45" />
        <node concept="3Tm1VV" id="zWYlCGLS8x" role="1B3o_S" />
        <node concept="3clFbS" id="zWYlCGLS8y" role="3clF47">
          <node concept="3clFbF" id="zWYlCGM2lw" role="3cqZAp">
            <node concept="1W57fq" id="1VQ0jyzsUI1" role="lGtFl">
              <node concept="3IZrLx" id="1VQ0jyzsUI3" role="3IZSJc">
                <node concept="3clFbS" id="1VQ0jyzsUI5" role="2VODD2">
                  <node concept="3clFbF" id="1VQ0jyzsV4z" role="3cqZAp">
                    <node concept="2OqwBi" id="1VQ0jyzsV4$" role="3clFbG">
                      <node concept="1mIQ4w" id="1VQ0jyzsV4_" role="2OqNvi">
                        <node concept="chp4Y" id="1VQ0jyzsV4A" role="cj9EA">
                          <ref role="cht4Q" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
                        </node>
                      </node>
                      <node concept="30H73N" id="1VQ0jyzsV4B" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTI" id="zWYlCGM6TY" role="3clFbG">
              <node concept="37vLTw" id="1VQ0jyzssIE" role="37vLTJ">
                <ref role="3cqZAo" node="zWYlCGM0hK" resolve="myParameter" />
              </node>
              <node concept="37vLTw" id="zWYlCGM75g" role="37vLTx">
                <ref role="3cqZAo" node="zWYlCGM1Bt" resolve="parameter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="1VQ0jyzsei_" role="jymVt">
        <property role="TrG5h" value="getDescription" />
        <node concept="3Tm1VV" id="1VQ0jyzseiA" role="1B3o_S" />
        <node concept="37vLTG" id="1VQ0jyzseiB" role="3clF46">
          <property role="TrG5h" value="node" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="1VQ0jyzseiC" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1VQ0jyzseiD" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="1VQ0jyzseiE" role="1tU5fm">
            <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
          </node>
        </node>
        <node concept="3clFbS" id="1VQ0jyzseiF" role="3clF47">
          <node concept="29HgVG" id="1VQ0jyzseiG" role="lGtFl">
            <node concept="3NFfHV" id="1VQ0jyzseiH" role="3NFExx">
              <node concept="3clFbS" id="1VQ0jyzseiI" role="2VODD2">
                <node concept="3clFbF" id="1VQ0jyzseiJ" role="3cqZAp">
                  <node concept="2OqwBi" id="1VQ0jyzseiK" role="3clFbG">
                    <node concept="2OqwBi" id="1VQ0jyzseiL" role="2Oq$k0">
                      <node concept="30H73N" id="1VQ0jyzseiM" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1VQ0jyzseiN" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3j:2c3oNEsfd2D" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="1VQ0jyzseiO" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17QB3L" id="1VQ0jyzseiP" role="3clF45" />
        <node concept="2AHcQZ" id="3pZGE0vw7LG" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5OVV9w1g_Xu" role="jymVt">
        <property role="TrG5h" value="execute" />
        <node concept="3cqZAl" id="5OVV9w1g_Xv" role="3clF45" />
        <node concept="3Tm1VV" id="5OVV9w1g_Xw" role="1B3o_S" />
        <node concept="37vLTG" id="5OVV9w1g_Xx" role="3clF46">
          <property role="TrG5h" value="node" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="5OVV9w1g_Xy" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5OVV9w1g_Xz" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="5OVV9w1g_X$" role="1tU5fm">
            <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
          </node>
        </node>
        <node concept="3clFbS" id="5OVV9w1g_X_" role="3clF47">
          <node concept="29HgVG" id="5OVV9w1g_XA" role="lGtFl">
            <node concept="3NFfHV" id="5OVV9w1g_XB" role="3NFExx">
              <node concept="3clFbS" id="5OVV9w1g_XC" role="2VODD2">
                <node concept="3clFbF" id="5OVV9w1g_XD" role="3cqZAp">
                  <node concept="2OqwBi" id="5OVV9w1g_XE" role="3clFbG">
                    <node concept="2OqwBi" id="5OVV9w1g_XF" role="2Oq$k0">
                      <node concept="30H73N" id="5OVV9w1g_XG" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5OVV9w1g_XH" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp3j:2c3oNEsfAwj" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="5OVV9w1g_XI" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:gyVODHa" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3pZGE0vw8sQ" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1VQ0jyzsOwZ" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDescriptor" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1VQ0jyzsOx0" role="1B3o_S" />
        <node concept="3uibUv" id="1VQ0jyzsOx2" role="3clF45">
          <ref role="3uigEE" to="ud4o:~IntentionDescriptor" resolve="IntentionDescriptor" />
        </node>
        <node concept="3clFbS" id="1VQ0jyzsOx3" role="3clF47">
          <node concept="3clFbF" id="1VQ0jyzsOx5" role="3cqZAp">
            <node concept="Xjq3P" id="1VQ0jyzsPqO" role="3clFbG">
              <ref role="1HBi2w" node="zWYlCGIiYB" resolve="IntentionFactoryClass" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4E$B1NvPhZ3" role="2AJF6D">
          <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="3pZGE0vw75u" role="1zkMxy">
        <ref role="3uigEE" to="ud4o:~IntentionExecutableBase" resolve="IntentionExecutableBase" />
      </node>
    </node>
    <node concept="3uibUv" id="1M8MwyXBML" role="1zkMxy">
      <ref role="3uigEE" to="ud4o:~IntentionDescriptorBase" resolve="IntentionDescriptorBase" />
    </node>
  </node>
  <node concept="jVnub" id="1VQ0jyzqrEa">
    <property role="TrG5h" value="InstancesMethod" />
    <node concept="3aamgX" id="1VQ0jyzqtod" role="3aUrZf">
      <ref role="30HIoZ" to="tp3j:i3dkpKH" resolve="ParameterizedIntentionDeclaration" />
      <node concept="1Koe21" id="1VQ0jyzqurM" role="1lVwrX">
        <node concept="312cEu" id="1VQ0jyzqurS" role="1Koe22">
          <property role="TrG5h" value="container" />
          <property role="2bfB8j" value="true" />
          <node concept="3Tm1VV" id="1VQ0jyzqurT" role="1B3o_S" />
          <node concept="3clFbW" id="1VQ0jyzqurV" role="jymVt">
            <node concept="3cqZAl" id="1VQ0jyzqurW" role="3clF45" />
            <node concept="3Tm1VV" id="1VQ0jyzqurX" role="1B3o_S" />
            <node concept="3clFbS" id="1VQ0jyzqurY" role="3clF47" />
          </node>
          <node concept="3clFb_" id="1VQ0jyzqvlC" role="jymVt">
            <property role="IEkAT" value="false" />
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="instances" />
            <property role="DiZV1" value="false" />
            <node concept="3Tm1VV" id="1VQ0jyzqvlD" role="1B3o_S" />
            <node concept="3uibUv" id="1VQ0jyzqvlE" role="3clF45">
              <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="1VQ0jyzqvlF" role="11_B2D">
                <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
              </node>
            </node>
            <node concept="37vLTG" id="1VQ0jyzqvlG" role="3clF46">
              <property role="TrG5h" value="node" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="1VQ0jyzqvlH" role="1tU5fm" />
            </node>
            <node concept="37vLTG" id="1VQ0jyzqvlI" role="3clF46">
              <property role="TrG5h" value="context" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1VQ0jyzqvlJ" role="1tU5fm">
                <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
              </node>
            </node>
            <node concept="3clFbS" id="1VQ0jyzqvlK" role="3clF47">
              <node concept="3cpWs8" id="1VQ0jyzqvlN" role="3cqZAp">
                <node concept="3cpWsn" id="1VQ0jyzqvlO" role="3cpWs9">
                  <property role="TrG5h" value="list" />
                  <node concept="_YKpA" id="1VQ0jyzqvlP" role="1tU5fm">
                    <node concept="3uibUv" id="1VQ0jyzq$6q" role="_ZDj9">
                      <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="1VQ0jyzqvlR" role="33vP2m">
                    <node concept="Tc6Ow" id="1VQ0jyzqvlS" role="2ShVmc">
                      <node concept="3uibUv" id="1VQ0jyzq_kv" role="HW$YZ">
                        <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1VQ0jyzqvlU" role="3cqZAp">
                <node concept="3cpWsn" id="1VQ0jyzqvlV" role="3cpWs9">
                  <property role="TrG5h" value="paramList" />
                  <node concept="1rXfSq" id="1VQ0jyzqvlW" role="33vP2m">
                    <ref role="37wK5l" node="1VQ0jyzqvmE" resolve="parameter" />
                    <node concept="37vLTw" id="1VQ0jyzqvlX" role="37wK5m">
                      <ref role="3cqZAo" node="1VQ0jyzqvlG" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="1VQ0jyzqvlY" role="37wK5m">
                      <ref role="3cqZAo" node="1VQ0jyzqvlI" resolve="context" />
                    </node>
                  </node>
                  <node concept="_YKpA" id="1VQ0jyzqvlZ" role="1tU5fm">
                    <node concept="3cqZAl" id="1VQ0jyzqvm0" role="_ZDj9">
                      <node concept="29HgVG" id="1VQ0jyzqvm1" role="lGtFl">
                        <node concept="3NFfHV" id="1VQ0jyzqvm2" role="3NFExx">
                          <node concept="3clFbS" id="1VQ0jyzqvm3" role="2VODD2">
                            <node concept="3clFbF" id="1VQ0jyzqvm4" role="3cqZAp">
                              <node concept="2OqwBi" id="1VQ0jyzqvm5" role="3clFbG">
                                <node concept="1$rogu" id="1VQ0jyzqvm6" role="2OqNvi" />
                                <node concept="2OqwBi" id="1VQ0jyzqvm7" role="2Oq$k0">
                                  <node concept="2OqwBi" id="1VQ0jyzqvm8" role="2Oq$k0">
                                    <node concept="30H73N" id="1VQ0jyzqvm9" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="1VQ0jyzqvma" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="1VQ0jyzqvmb" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tp3j:i3ddBrI" />
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
              <node concept="3clFbJ" id="1VQ0jyzqvmc" role="3cqZAp">
                <node concept="3clFbS" id="1VQ0jyzqvmd" role="3clFbx">
                  <node concept="1DcWWT" id="1VQ0jyzqvme" role="3cqZAp">
                    <node concept="3clFbS" id="1VQ0jyzqvmf" role="2LFqv$">
                      <node concept="3clFbF" id="1VQ0jyzqvmg" role="3cqZAp">
                        <node concept="2OqwBi" id="1VQ0jyzqvmh" role="3clFbG">
                          <node concept="TSZUe" id="1VQ0jyzqvmi" role="2OqNvi">
                            <node concept="2ShNRf" id="1VQ0jyzqvmj" role="25WWJ7">
                              <node concept="1pGfFk" id="1VQ0jyzqvmk" role="2ShVmc">
                                <ref role="37wK5l" node="1VQ0jyzrGvI" resolve="IntentionImplementationStub" />
                                <node concept="37vLTw" id="1VQ0jyzqvml" role="37wK5m">
                                  <ref role="3cqZAo" node="1VQ0jyzqvmn" resolve="param" />
                                </node>
                                <node concept="1ZhdrF" id="1VQ0jyzs_29" role="lGtFl">
                                  <property role="2qtEX8" value="baseMethodDeclaration" />
                                  <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                                  <node concept="3$xsQk" id="1VQ0jyzs_2a" role="3$ytzL">
                                    <node concept="3clFbS" id="1VQ0jyzs_2b" role="2VODD2">
                                      <node concept="3clFbF" id="1VQ0jyzs_ZP" role="3cqZAp">
                                        <node concept="2OqwBi" id="1VQ0jyzsB0C" role="3clFbG">
                                          <node concept="1iwH70" id="1VQ0jyzsC19" role="2OqNvi">
                                            <ref role="1iwH77" node="3jb7BNzCVpn" resolve="map_IntentionConstructor" />
                                            <node concept="30H73N" id="1VQ0jyzsDVz" role="1iwH7V" />
                                          </node>
                                          <node concept="1iwH7S" id="1VQ0jyzs_ZO" role="2Oq$k0" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="1VQ0jyzqvmm" role="2Oq$k0">
                            <ref role="3cqZAo" node="1VQ0jyzqvlO" resolve="list" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWsn" id="1VQ0jyzqvmn" role="1Duv9x">
                      <property role="TrG5h" value="param" />
                      <node concept="3uibUv" id="1VQ0jyzqvmo" role="1tU5fm">
                        <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
                        <node concept="29HgVG" id="1VQ0jyzqvmp" role="lGtFl">
                          <node concept="3NFfHV" id="1VQ0jyzqvmq" role="3NFExx">
                            <node concept="3clFbS" id="1VQ0jyzqvmr" role="2VODD2">
                              <node concept="3clFbF" id="1VQ0jyzqvms" role="3cqZAp">
                                <node concept="2OqwBi" id="1VQ0jyzqvmt" role="3clFbG">
                                  <node concept="1$rogu" id="1VQ0jyzqvmu" role="2OqNvi" />
                                  <node concept="2OqwBi" id="1VQ0jyzqvmv" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1VQ0jyzqvmw" role="2Oq$k0">
                                      <node concept="30H73N" id="1VQ0jyzqvmx" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="1VQ0jyzqvmy" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="1VQ0jyzqvmz" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tp3j:i3ddBrI" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagTtEZ" role="1DdaDG">
                      <ref role="3cqZAo" node="1VQ0jyzqvlV" resolve="paramList" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1VQ0jyzqvm_" role="3clFbw">
                  <node concept="10Nm6u" id="1VQ0jyzqvmA" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTAND" role="3uHU7B">
                    <ref role="3cqZAo" node="1VQ0jyzqvlV" resolve="paramList" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1VQ0jyzqvmC" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagT_yL" role="3cqZAk">
                  <ref role="3cqZAo" node="1VQ0jyzqvlO" resolve="list" />
                </node>
              </node>
            </node>
            <node concept="raruj" id="1VQ0jyzqwnq" role="lGtFl" />
          </node>
          <node concept="3clFb_" id="1VQ0jyzqvmE" role="jymVt">
            <property role="TrG5h" value="parameter" />
            <node concept="37vLTG" id="1VQ0jyzqvmF" role="3clF46">
              <property role="TrG5h" value="node" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="1VQ0jyzqvmG" role="1tU5fm" />
            </node>
            <node concept="37vLTG" id="1VQ0jyzqvmH" role="3clF46">
              <property role="TrG5h" value="editorContext" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1VQ0jyzqvmI" role="1tU5fm">
                <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
              </node>
            </node>
            <node concept="3Tm6S6" id="1VQ0jyzqvmJ" role="1B3o_S" />
            <node concept="_YKpA" id="1VQ0jyzqvmK" role="3clF45">
              <node concept="3cqZAl" id="1VQ0jyzqvmL" role="_ZDj9">
                <node concept="29HgVG" id="1VQ0jyzqvmM" role="lGtFl">
                  <node concept="3NFfHV" id="1VQ0jyzqvmN" role="3NFExx">
                    <node concept="3clFbS" id="1VQ0jyzqvmO" role="2VODD2">
                      <node concept="3clFbF" id="1VQ0jyzqvmP" role="3cqZAp">
                        <node concept="2OqwBi" id="1VQ0jyzqvmQ" role="3clFbG">
                          <node concept="1$rogu" id="1VQ0jyzqvmR" role="2OqNvi" />
                          <node concept="2OqwBi" id="1VQ0jyzqvmS" role="2Oq$k0">
                            <node concept="2OqwBi" id="1VQ0jyzqvmT" role="2Oq$k0">
                              <node concept="30H73N" id="1VQ0jyzqvmU" role="2Oq$k0" />
                              <node concept="3TrEf2" id="1VQ0jyzqvmV" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="1VQ0jyzqvmW" role="2OqNvi">
                              <ref role="3Tt5mk" to="tp3j:i3ddBrI" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1VQ0jyzqvmX" role="3clF47">
              <node concept="3cpWs6" id="1VQ0jyzqvmY" role="3cqZAp">
                <node concept="2b32R4" id="1VQ0jyzqvmZ" role="lGtFl">
                  <node concept="3JmXsc" id="1VQ0jyzqvn0" role="2P8S$">
                    <node concept="3clFbS" id="1VQ0jyzqvn1" role="2VODD2">
                      <node concept="3clFbF" id="1VQ0jyzqvn2" role="3cqZAp">
                        <node concept="2OqwBi" id="1VQ0jyzqvn3" role="3clFbG">
                          <node concept="3Tsc0h" id="1VQ0jyzqvn4" role="2OqNvi">
                            <ref role="3TtcxE" to="tpee:fzcqZ_x" />
                          </node>
                          <node concept="2OqwBi" id="1VQ0jyzqvn5" role="2Oq$k0">
                            <node concept="3TrEf2" id="1VQ0jyzqvn6" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpee:gyVODHa" />
                            </node>
                            <node concept="2OqwBi" id="1VQ0jyzqvn7" role="2Oq$k0">
                              <node concept="3TrEf2" id="1VQ0jyzqvn8" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp3j:i3dlsyr" />
                              </node>
                              <node concept="30H73N" id="1VQ0jyzqvn9" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="10Nm6u" id="1VQ0jyzqvna" role="3cqZAk" />
              </node>
            </node>
            <node concept="raruj" id="1VQ0jyzqxjl" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="1VQ0jyzquRT" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="tp3j:2c3oNEsfcpP" resolve="BaseIntentionDeclaration" />
      <node concept="1Koe21" id="1VQ0jyzqKaW" role="1lVwrX">
        <node concept="312cEu" id="1VQ0jyzqKb0" role="1Koe22">
          <property role="TrG5h" value="container" />
          <property role="2bfB8j" value="true" />
          <node concept="3Tm1VV" id="1VQ0jyzqKb1" role="1B3o_S" />
          <node concept="312cEg" id="1VQ0jyzqKr_" role="jymVt">
            <property role="TrG5h" value="myCachedExecutable" />
            <node concept="3uibUv" id="1VQ0jyzqKrJ" role="1tU5fm">
              <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="1VQ0jyzqKrK" role="11_B2D">
                <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
              </node>
            </node>
            <node concept="3Tm6S6" id="1VQ0jyzqKrL" role="1B3o_S" />
          </node>
          <node concept="3clFbW" id="1VQ0jyzqKb3" role="jymVt">
            <node concept="3cqZAl" id="1VQ0jyzqKb4" role="3clF45" />
            <node concept="3Tm1VV" id="1VQ0jyzqKb5" role="1B3o_S" />
            <node concept="3clFbS" id="1VQ0jyzqKb6" role="3clF47" />
          </node>
          <node concept="3clFb_" id="1VQ0jyzqKK2" role="jymVt">
            <property role="TrG5h" value="instances" />
            <node concept="37vLTG" id="1VQ0jyzqQ6c" role="3clF46">
              <property role="TrG5h" value="node" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="1VQ0jyzqQ6d" role="1tU5fm" />
            </node>
            <node concept="37vLTG" id="1VQ0jyzqQ6e" role="3clF46">
              <property role="TrG5h" value="context" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1VQ0jyzqQ6f" role="1tU5fm">
                <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
              </node>
            </node>
            <node concept="3Tm1VV" id="1VQ0jyzqKK4" role="1B3o_S" />
            <node concept="3clFbS" id="1VQ0jyzqKK5" role="3clF47">
              <node concept="3clFbJ" id="1VQ0jyzqXpS" role="3cqZAp">
                <node concept="3clFbC" id="1VQ0jyzqZPI" role="3clFbw">
                  <node concept="10Nm6u" id="1VQ0jyzqZPX" role="3uHU7w" />
                  <node concept="37vLTw" id="1VQ0jyzqYj8" role="3uHU7B">
                    <ref role="3cqZAo" node="1VQ0jyzqKr_" resolve="myCachedExecutable" />
                  </node>
                </node>
                <node concept="3clFbS" id="1VQ0jyzqXpU" role="3clFbx">
                  <node concept="3clFbF" id="1VQ0jyzr1c1" role="3cqZAp">
                    <node concept="37vLTI" id="1VQ0jyzr2F_" role="3clFbG">
                      <node concept="2YIFZM" id="1VQ0jyzr4Ex" role="37vLTx">
                        <ref role="37wK5l" to="k7g3:~Collections.singletonList(java.lang.Object):java.util.List" resolve="singletonList" />
                        <ref role="1Pybhc" to="k7g3:~Collections" resolve="Collections" />
                        <node concept="3uibUv" id="1VQ0jyzrrmv" role="3PaCim">
                          <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
                        </node>
                        <node concept="2ShNRf" id="1VQ0jyzr5Er" role="37wK5m">
                          <node concept="1pGfFk" id="1VQ0jyzriL5" role="2ShVmc">
                            <ref role="37wK5l" node="1VQ0jyzrGtE" resolve="IntentionImplementationStub" />
                            <node concept="1ZhdrF" id="1VQ0jyzsF5_" role="lGtFl">
                              <property role="2qtEX8" value="baseMethodDeclaration" />
                              <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" />
                              <node concept="3$xsQk" id="1VQ0jyzsF5A" role="3$ytzL">
                                <node concept="3clFbS" id="1VQ0jyzsF5B" role="2VODD2">
                                  <node concept="3clFbF" id="1VQ0jyzsG8h" role="3cqZAp">
                                    <node concept="2OqwBi" id="1VQ0jyzsHbW" role="3clFbG">
                                      <node concept="1iwH70" id="1VQ0jyzsIdD" role="2OqNvi">
                                        <ref role="1iwH77" node="3jb7BNzCVpn" resolve="map_IntentionConstructor" />
                                        <node concept="30H73N" id="1VQ0jyzsKar" role="1iwH7V" />
                                      </node>
                                      <node concept="1iwH7S" id="1VQ0jyzsG8g" role="2Oq$k0" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1VQ0jyzr1c0" role="37vLTJ">
                        <ref role="3cqZAo" node="1VQ0jyzqKr_" resolve="myCachedExecutable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1VQ0jyzqS75" role="3cqZAp">
                <node concept="37vLTw" id="1VQ0jyzqTMV" role="3cqZAk">
                  <ref role="3cqZAo" node="1VQ0jyzqKr_" resolve="myCachedExecutable" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1VQ0jyzqPc_" role="3clF45">
              <ref role="3uigEE" to="k7g3:~Collection" resolve="Collection" />
              <node concept="3uibUv" id="1VQ0jyzqPcA" role="11_B2D">
                <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
              </node>
            </node>
            <node concept="raruj" id="1VQ0jyzqQZq" role="lGtFl" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1VQ0jyzrGtC">
    <property role="TrG5h" value="IntentionImplementationStub" />
    <property role="3GE5qa" value="stub" />
    <node concept="3Tm1VV" id="1VQ0jyzrGtD" role="1B3o_S" />
    <node concept="3uibUv" id="1VQ0jyzrGvD" role="EKbjA">
      <ref role="3uigEE" to="ud4o:~IntentionExecutable" resolve="IntentionExecutable" />
    </node>
    <node concept="3clFbW" id="1VQ0jyzrGtE" role="jymVt">
      <node concept="3cqZAl" id="1VQ0jyzrGtF" role="3clF45" />
      <node concept="3Tm1VV" id="1VQ0jyzrGtG" role="1B3o_S" />
      <node concept="3clFbS" id="1VQ0jyzrGtH" role="3clF47" />
    </node>
    <node concept="3clFbW" id="1VQ0jyzrGvI" role="jymVt">
      <node concept="3cqZAl" id="1VQ0jyzrGvJ" role="3clF45" />
      <node concept="3Tm1VV" id="1VQ0jyzrGvK" role="1B3o_S" />
      <node concept="3clFbS" id="1VQ0jyzrGvL" role="3clF47" />
      <node concept="37vLTG" id="1VQ0jyzrGvX" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="3uibUv" id="1VQ0jyzrGvW" role="1tU5fm">
          <ref role="3uigEE" to="e2lb:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1VQ0jyzrGKz" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="1VQ0jyzrHnb" role="3clF45" />
      <node concept="3Tm1VV" id="1VQ0jyzrGK$" role="1B3o_S" />
      <node concept="37vLTG" id="1VQ0jyzrGKB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1VQ0jyzrGKC" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1VQ0jyzrGKD" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1VQ0jyzrGKE" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1VQ0jyzrGKF" role="3clF47">
        <node concept="3clFbF" id="1VQ0jyzrGKH" role="3cqZAp">
          <node concept="10Nm6u" id="1VQ0jyzrGKG" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1VQ0jyzrH2p" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1VQ0jyzrH2q" role="1B3o_S" />
      <node concept="10P_77" id="1VQ0jyzrH2s" role="3clF45" />
      <node concept="37vLTG" id="1VQ0jyzrH2t" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1VQ0jyzrH2u" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1VQ0jyzrH2v" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1VQ0jyzrH2w" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1VQ0jyzrH2x" role="3clF47">
        <node concept="3clFbF" id="1VQ0jyzrH2z" role="3cqZAp">
          <node concept="3clFbT" id="1VQ0jyzrH2y" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1VQ0jyzrH2$" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1VQ0jyzrH2_" role="1B3o_S" />
      <node concept="3cqZAl" id="1VQ0jyzrH2B" role="3clF45" />
      <node concept="37vLTG" id="1VQ0jyzrH2C" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1VQ0jyzrH2D" role="1tU5fm">
          <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1VQ0jyzrH2E" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1VQ0jyzrH2F" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="1VQ0jyzrH2G" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1VQ0jyzrH2H" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="1VQ0jyzrH2I" role="1B3o_S" />
      <node concept="3uibUv" id="1VQ0jyzrH2K" role="3clF45">
        <ref role="3uigEE" to="ud4o:~IntentionDescriptor" resolve="IntentionDescriptor" />
      </node>
      <node concept="3clFbS" id="1VQ0jyzrH2L" role="3clF47">
        <node concept="3clFbF" id="1VQ0jyzrH2N" role="3cqZAp">
          <node concept="10Nm6u" id="1VQ0jyzrH2M" role="3clFbG" />
        </node>
      </node>
    </node>
  </node>
</model>

