<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc08a4fa-e4f1-443c-b8f2-4a41972141bb(jetbrains.mps.ide.platform.actions.core)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.lang.classLike" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
  </languages>
  <imports>
    <import index="u42p" ref="r:986938bb-bdb1-4307-b062-e4647a4db0f9(jetbrains.mps.ide.platform.refactoring)" />
    <import index="2yc6" ref="r:d9efd362-28b8-4f70-9bcd-fb582528d11c(jetbrains.mps.lang.core.refactorings)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="dbrf" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(javax.swing@java_stub)" />
    <import index="n55e" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.language(jetbrains.mps.smodel.language@java_stub)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(jetbrains.mps.smodel@java_stub)" />
    <import index="fwv2" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.runtime(jetbrains.mps.smodel.runtime@java_stub)" />
    <import index="5xh9" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.actions(jetbrains.mps.ide.actions@java_stub)" />
    <import index="jrbx" ref="f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.project(jetbrains.mps.project@java_stub)" />
    <import index="xabr" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.featureStatistics(com.intellij.featureStatistics@java_stub)" />
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="ec5l" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.model(org.jetbrains.mps.openapi.model@java_stub)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(jetbrains.mps.project@java_stub)" />
    <import index="ff4b" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.progress(MPS.Core/jetbrains.mps.progress@java_stub)" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="pt5l" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/f:java_stub#742f6602-5a2f-4313-aa6e-ae1cd4ffdc61#jetbrains.mps.ide.project(MPS.Platform/jetbrains.mps.ide.project@java_stub)" />
    <import index="g4jo" ref="r:d98d04fb-4a60-4106-81cf-6cb40b67de4d(jetbrains.mps.ide.findusages.model)" />
    <import index="t3eg" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.language(MPS.OpenAPI/org.jetbrains.mps.openapi.language@java_stub)" />
    <import index="bltl" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel.structure(MPS.Core/jetbrains.mps.smodel.structure@java_stub)" />
    <import index="nx1" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.openapi.actionSystem(MPS.IDEA/com.intellij.openapi.actionSystem@java_stub)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="997079742910640235" name="fillActionContext" index="1teQrl" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <property id="6368583333374291912" name="isPluginXmlGroup" index="3OnEW4" />
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <property id="8646726056720906098" name="isPluginXmlKeymap" index="Z2u3V" />
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="lg" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
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
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="3729007189729192406" name="jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration" flags="ng" index="vrV6u">
        <child id="8029776554053057803" name="objectType" index="luc8K" />
      </concept>
      <concept id="3364452211985679813" name="jetbrains.mps.lang.extension.structure.ExtensionPointOverlappingDeclaration" flags="ng" index="xBYEN">
        <child id="195736285282456458" name="resultType" index="1bnjqn" />
        <child id="195736285282384856" name="argumentType" index="1bn_V5" />
      </concept>
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3ecd7c84-cde3-45de-886c-135ecc69b742" name="jetbrains.mps.lang.refactoring">
      <concept id="6598645150040035709" name="jetbrains.mps.lang.refactoring.structure.IsRefactoringApplicable" flags="nn" index="3trCAK">
        <reference id="6598645150040035710" name="refactoring" index="3trCAN" />
        <child id="6598645150040036518" name="target" index="3trCLF" />
      </concept>
      <concept id="2298239814950983788" name="jetbrains.mps.lang.refactoring.structure.ExecuteRefactoringStatement" flags="nn" index="1Xdei3">
        <reference id="2298239814950983795" name="refactoring" index="1Xdeis" />
        <child id="2298239814950983794" name="project" index="1Xdeit" />
        <child id="2298239814950983793" name="parameters" index="1Xdeiu" />
        <child id="2298239814950983792" name="target" index="1Xdeiv" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
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
      <concept id="1235566831861" name="jetbrains.mps.baseLanguage.collections.structure.AllOperation" flags="nn" index="2HxqBE" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="7125221305512719026" name="jetbrains.mps.baseLanguage.collections.structure.CollectionType" flags="in" index="3vKaQO" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
    </language>
  </registry>
  <node concept="tC5Ba" id="7BBQIYkR45R">
    <property role="TrG5h" value="CoreNodeRefactorings" />
    <property role="3OnEW4" value="true" />
    <node concept="ftmFs" id="7BBQIYkR474" role="ftER_">
      <node concept="tCFHf" id="7BBQIYkR475" role="ftvYc">
        <ref role="tCJdB" node="7BBQIYkR45T" resolve="Rename" />
      </node>
      <node concept="tCFHf" id="I5wdVHTnQe" role="ftvYc">
        <ref role="tCJdB" node="I5wdVHTn$t" resolve="MoveNodes" />
      </node>
    </node>
    <node concept="tT9cl" id="7BBQIYkR4ln" role="2f5YQi">
      <ref role="tU$_T" to="9oh:5OJQJ_HXTB6" resolve="NodeRefactoring" />
    </node>
  </node>
  <node concept="sE7Ow" id="7BBQIYkR45T">
    <property role="TrG5h" value="Rename" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Rename" />
    <property role="1teQrl" value="true" />
    <node concept="2S4$dB" id="7BBQIYkR45U" role="1NuT2Z">
      <property role="TrG5h" value="target" />
      <node concept="3Tm6S6" id="7BBQIYkR45V" role="1B3o_S" />
      <node concept="3Tqbb2" id="7BBQIYkR45W" role="1tU5fm">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
      <node concept="1oajcY" id="7BBQIYkR45X" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7BBQIYkR45Y" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7BBQIYkR45Z" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7BBQIYkR460" role="1NuT2Z">
      <property role="TrG5h" value="frame" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.FRAME" resolve="FRAME" />
      <node concept="1oajcY" id="7BBQIYkR461" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7BBQIYkR462" role="tncku">
      <node concept="3clFbS" id="7BBQIYkR463" role="2VODD2">
        <node concept="3clFbF" id="1wPwVvaJhqh" role="3cqZAp">
          <node concept="2OqwBi" id="1wPwVvaJhqi" role="3clFbG">
            <node concept="2YIFZM" id="1wPwVvaJhqj" role="2Oq$k0">
              <ref role="37wK5l" to="xabr:~FeatureUsageTracker.getInstance():com.intellij.featureStatistics.FeatureUsageTracker" resolve="getInstance" />
              <ref role="1Pybhc" to="xabr:~FeatureUsageTracker" resolve="FeatureUsageTracker" />
            </node>
            <node concept="liA8E" id="1wPwVvaJhqk" role="2OqNvi">
              <ref role="37wK5l" to="xabr:~FeatureUsageTracker.triggerFeatureUsed(java.lang.String):void" resolve="triggerFeatureUsed" />
              <node concept="Xl_RD" id="1wPwVvaJhql" role="37wK5m">
                <property role="Xl_RC" value="refactoring.rename" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4oi2Bf2ke6o" role="3cqZAp">
          <node concept="3cpWsn" id="4oi2Bf2ke6p" role="3cpWs9">
            <property role="TrG5h" value="modelAccess" />
            <node concept="2OqwBi" id="4oi2Bf2ke6q" role="33vP2m">
              <node concept="liA8E" id="4oi2Bf2ke6r" role="2OqNvi">
                <ref role="37wK5l" to="88zw:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
              <node concept="2OqwBi" id="4oi2Bf2ke6s" role="2Oq$k0">
                <node concept="liA8E" id="4oi2Bf2ke6t" role="2OqNvi">
                  <ref role="37wK5l" to="vsqj:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                </node>
                <node concept="2OqwBi" id="4oi2Bf2ke6u" role="2Oq$k0">
                  <node concept="2WthIp" id="4oi2Bf2ke6v" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4oi2Bf2ke6w" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4oi2Bf2ke6x" role="1tU5fm">
              <ref role="3uigEE" to="88zw:~ModelAccess" resolve="ModelAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4oi2Bf2ke4e" role="3cqZAp" />
        <node concept="3cpWs8" id="73QkbSJR3DL" role="3cqZAp">
          <node concept="3cpWsn" id="73QkbSJR3DM" role="3cpWs9">
            <property role="TrG5h" value="oldName" />
            <node concept="17QB3L" id="73QkbSJR3DN" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="73QkbSJR3Do" role="3cqZAp">
          <node concept="3cpWsn" id="73QkbSJR3Dp" role="3cpWs9">
            <property role="TrG5h" value="canBeRenamed" />
            <node concept="10P_77" id="73QkbSJR3Dq" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="4oi2Bf2keRy" role="3cqZAp">
          <node concept="2OqwBi" id="4oi2Bf2keXl" role="3clFbG">
            <node concept="liA8E" id="4oi2Bf2kfSY" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
              <node concept="1bVj0M" id="4oi2Bf2kfTs" role="37wK5m">
                <node concept="3clFbS" id="4oi2Bf2kfTt" role="1bW5cS">
                  <node concept="3clFbF" id="73QkbSJR3DE" role="3cqZAp">
                    <node concept="37vLTI" id="73QkbSJR3DF" role="3clFbG">
                      <node concept="2YIFZM" id="7BBQIYkR46n" role="37vLTx">
                        <ref role="37wK5l" node="7BBQIYkR5mi" resolve="canBeRenamed" />
                        <ref role="1Pybhc" node="7BBQIYkR5mh" resolve="RenameUtil" />
                        <node concept="2OqwBi" id="7BBQIYkR46o" role="37wK5m">
                          <node concept="2WthIp" id="7BBQIYkR46p" role="2Oq$k0" />
                          <node concept="3gHZIF" id="7BBQIYkR46q" role="2OqNvi">
                            <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_cj" role="37vLTJ">
                        <ref role="3cqZAo" node="73QkbSJR3Dp" resolve="canBeRenamed" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="73QkbSJR3DP" role="3cqZAp">
                    <node concept="37vLTI" id="73QkbSJR3Eb" role="3clFbG">
                      <node concept="2OqwBi" id="73QkbSJR3F0" role="37vLTx">
                        <node concept="2OqwBi" id="73QkbSJR3Ee" role="2Oq$k0">
                          <node concept="2WthIp" id="73QkbSJR3Ef" role="2Oq$k0" />
                          <node concept="3gHZIF" id="73QkbSJR3Eg" role="2OqNvi">
                            <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="73QkbSJR3F5" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTucj" role="37vLTJ">
                        <ref role="3cqZAo" node="73QkbSJR3DM" resolve="oldName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4oi2Bf2keRx" role="2Oq$k0">
              <ref role="3cqZAo" node="4oi2Bf2ke6p" resolve="modelAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BBQIYkR46b" role="3cqZAp">
          <node concept="3clFbS" id="7BBQIYkR46c" role="3clFbx">
            <node concept="3clFbF" id="7BBQIYkR46d" role="3cqZAp">
              <node concept="2YIFZM" id="7BBQIYkR46e" role="3clFbG">
                <ref role="1Pybhc" to="dbrf:~JOptionPane" resolve="JOptionPane" />
                <ref role="37wK5l" to="dbrf:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object,java.lang.String,int):void" resolve="showMessageDialog" />
                <node concept="2OqwBi" id="7BBQIYkR46f" role="37wK5m">
                  <node concept="2WthIp" id="7BBQIYkR46g" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7BBQIYkR46h" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR460" resolve="frame" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7BBQIYkR46i" role="37wK5m">
                  <property role="Xl_RC" value="Nodes with getter for the \&quot;name\&quot; property can't be renamed" />
                </node>
                <node concept="Xl_RD" id="7BBQIYkR46j" role="37wK5m">
                  <property role="Xl_RC" value="Node can't be renamed" />
                </node>
                <node concept="10M0yZ" id="7BBQIYkR46k" role="37wK5m">
                  <ref role="1PxDUh" to="dbrf:~JOptionPane" resolve="JOptionPane" />
                  <ref role="3cqZAo" to="dbrf:~JOptionPane.INFORMATION_MESSAGE" resolve="INFORMATION_MESSAGE" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7BBQIYkR46l" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="7BBQIYkR46m" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTBu1" role="3fr31v">
              <ref role="3cqZAo" node="73QkbSJR3Dp" resolve="canBeRenamed" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="10ucugRFVG4" role="3cqZAp">
          <node concept="3cpWsn" id="10ucugRFVG5" role="3cpWs9">
            <property role="TrG5h" value="newName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="10ucugRFVG6" role="1tU5fm" />
            <node concept="2YIFZM" id="10ucugRFVG7" role="33vP2m">
              <ref role="1Pybhc" to="u42p:1t_LRy89_0M" resolve="RenameDialog" />
              <ref role="37wK5l" to="u42p:1t_LRy89_0Z" resolve="getNewName" />
              <node concept="2OqwBi" id="10ucugRFVG8" role="37wK5m">
                <node concept="2OqwBi" id="10ucugRFVG9" role="2Oq$k0">
                  <node concept="2WthIp" id="10ucugRFVGa" role="2Oq$k0" />
                  <node concept="1DTwFV" id="10ucugRFVGb" role="2OqNvi">
                    <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="10ucugRFVGc" role="2OqNvi">
                  <ref role="37wK5l" to="jrbx:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="3GM_nagTzol" role="37wK5m">
                <ref role="3cqZAo" node="73QkbSJR3DM" resolve="oldName" />
              </node>
              <node concept="Xl_RD" id="10ucugRFVGe" role="37wK5m">
                <property role="Xl_RC" value="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BBQIYkR46F" role="3cqZAp">
          <node concept="3clFbS" id="7BBQIYkR46G" role="3clFbx">
            <node concept="3cpWs6" id="7BBQIYkR46H" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7BBQIYkR46I" role="3clFbw">
            <node concept="10Nm6u" id="7BBQIYkR46J" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvRb" role="3uHU7B">
              <ref role="3cqZAo" node="10ucugRFVG5" resolve="newName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="73QkbSJR3F9" role="3cqZAp">
          <node concept="2OqwBi" id="73QkbSJR3Fw" role="3clFbG">
            <node concept="37vLTw" id="4oi2Bf2kgAL" role="2Oq$k0">
              <ref role="3cqZAo" node="4oi2Bf2ke6p" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="73QkbSJR3FA" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~ModelAccess.runReadInEDT(java.lang.Runnable):void" resolve="runReadInEDT" />
              <node concept="2ShNRf" id="73QkbSJR3FB" role="37wK5m">
                <node concept="YeOm9" id="73QkbSJR3FF" role="2ShVmc">
                  <node concept="1Y3b0j" id="73QkbSJR3FG" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="e2lb:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="e2lb:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="73QkbSJR3FH" role="1B3o_S" />
                    <node concept="3clFb_" id="73QkbSJR3FI" role="jymVt">
                      <property role="IEkAT" value="false" />
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="run" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tm1VV" id="73QkbSJR3FJ" role="1B3o_S" />
                      <node concept="3cqZAl" id="73QkbSJR3FK" role="3clF45" />
                      <node concept="3clFbS" id="73QkbSJR3FL" role="3clF47">
                        <node concept="3cpWs8" id="6HfXUkaV81V" role="3cqZAp">
                          <node concept="3cpWsn" id="6HfXUkaV81T" role="3cpWs9">
                            <property role="TrG5h" value="node" />
                            <node concept="3uibUv" id="6HfXUkaV81U" role="1tU5fm">
                              <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                            </node>
                            <node concept="1eOMI4" id="4$FQhXeSnBy" role="33vP2m">
                              <node concept="10QFUN" id="4$FQhXeSnBz" role="1eOMHV">
                                <node concept="3uibUv" id="4$FQhXeSnB$" role="10QFUM">
                                  <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                                </node>
                                <node concept="2OqwBi" id="4$FQhXeSnB_" role="10QFUP">
                                  <node concept="2WthIp" id="4$FQhXeSnBA" role="2Oq$k0">
                                    <ref role="32nkFo" node="7BBQIYkR45T" resolve="Rename" />
                                  </node>
                                  <node concept="3gHZIF" id="4$FQhXeSnBB" role="2OqNvi">
                                    <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6HfXUkaV823" role="3cqZAp">
                          <node concept="3clFbS" id="6HfXUkaV824" role="3clFbx">
                            <node concept="3cpWs6" id="6HfXUkaV825" role="3cqZAp" />
                          </node>
                          <node concept="3fqX7Q" id="3GwZr6skLnZ" role="3clFbw">
                            <node concept="2YIFZM" id="3GwZr6skLo0" role="3fr31v">
                              <ref role="37wK5l" to="ec5l:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository):boolean" resolve="isAccessible" />
                              <ref role="1Pybhc" to="ec5l:~SNodeUtil" resolve="SNodeUtil" />
                              <node concept="37vLTw" id="3GwZr6s7Cf4" role="37wK5m">
                                <ref role="3cqZAo" node="6HfXUkaV81T" resolve="node" />
                              </node>
                              <node concept="2YIFZM" id="3GwZr6skLo1" role="37wK5m">
                                <ref role="37wK5l" to="cu2c:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                                <ref role="1Pybhc" to="cu2c:~MPSModuleRepository" resolve="MPSModuleRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Xdei3" id="7BBQIYkR46L" role="3cqZAp">
                          <ref role="1Xdeis" to="2yc6:1aNzB2zVRgC" resolve="Rename" />
                          <node concept="2OqwBi" id="7BBQIYkR46M" role="1Xdeiv">
                            <node concept="2WthIp" id="7BBQIYkR46N" role="2Oq$k0" />
                            <node concept="3gHZIF" id="7BBQIYkR46O" role="2OqNvi">
                              <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7BBQIYkR46P" role="1Xdeit">
                            <node concept="2WthIp" id="7BBQIYkR46Q" role="2Oq$k0" />
                            <node concept="1DTwFV" id="7BBQIYkR46R" role="2OqNvi">
                              <ref role="2WH_rO" node="7BBQIYkR45Y" resolve="project" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagTsF4" role="1Xdeiu">
                            <ref role="3cqZAo" node="10ucugRFVG5" resolve="newName" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="3tYsUK_SeSQ" role="2AJF6D">
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
    <node concept="2ScWuX" id="7BBQIYkR46T" role="tmbBb">
      <node concept="3clFbS" id="7BBQIYkR46U" role="2VODD2">
        <node concept="3clFbF" id="7BBQIYkR46V" role="3cqZAp">
          <node concept="3trCAK" id="7BBQIYkR46W" role="3clFbG">
            <ref role="3trCAN" to="2yc6:1aNzB2zVRgC" resolve="Rename" />
            <node concept="2OqwBi" id="7BBQIYkR46X" role="3trCLF">
              <node concept="2WthIp" id="7BBQIYkR46Y" role="2Oq$k0" />
              <node concept="3gHZIF" id="7BBQIYkR46Z" role="2OqNvi">
                <ref role="2WH_rO" node="7BBQIYkR45U" resolve="target" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="Zd50a" id="7BBQIYkR470">
    <property role="Z2u3V" value="true" />
    <property role="TrG5h" value="DefaultCore" />
    <node concept="Zd509" id="7BBQIYkR472" role="Zd508">
      <ref role="1bYAoF" node="7BBQIYkR45T" resolve="Rename" />
      <node concept="pLAjd" id="5GUQLVLhlPO" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
        <property role="pLAjc" value="shift" />
      </node>
    </node>
    <node concept="Zd509" id="I5wdVHTnQg" role="Zd508">
      <ref role="1bYAoF" node="I5wdVHTn$t" resolve="MoveNodes" />
      <node concept="pLAjd" id="I5wdVHTnQh" role="Zd501">
        <property role="pLAjf" value="VK_F6" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7BBQIYkR5mh">
    <property role="TrG5h" value="RenameUtil" />
    <node concept="3Tm1VV" id="7BBQIYkR5mO" role="1B3o_S" />
    <node concept="2YIFZL" id="7BBQIYkR5mi" role="jymVt">
      <property role="TrG5h" value="canBeRenamed" />
      <node concept="10P_77" id="7BBQIYkR5mj" role="3clF45" />
      <node concept="3Tm1VV" id="7BBQIYkR5mk" role="1B3o_S" />
      <node concept="3clFbS" id="7BBQIYkR5ml" role="3clF47">
        <node concept="3SKdUt" id="7BBQIYkR5mm" role="3cqZAp">
          <node concept="3SKdUq" id="7BBQIYkR5mn" role="3SKWNk">
            <property role="3SKdUp" value="we won't rename nodes, for which there are registered name constrints" />
          </node>
        </node>
        <node concept="3SKdUt" id="7BBQIYkR5mo" role="3cqZAp">
          <node concept="3SKdUq" id="7BBQIYkR5mp" role="3SKWNk">
            <property role="3SKdUp" value="if there are constrints, but they are not compiled, we can rename it" />
          </node>
        </node>
        <node concept="3cpWs8" id="7BBQIYkR5mq" role="3cqZAp">
          <node concept="3cpWsn" id="7BBQIYkR5mr" role="3cpWs9">
            <property role="TrG5h" value="nameProperty" />
            <node concept="17QB3L" id="7BBQIYkR5ms" role="1tU5fm" />
            <node concept="2OqwBi" id="7BBQIYkR5mt" role="33vP2m">
              <node concept="2OqwBi" id="7BBQIYkR5mu" role="2Oq$k0">
                <node concept="2OqwBi" id="7BBQIYkR5mv" role="2Oq$k0">
                  <node concept="3TUQnm" id="7BBQIYkR5mw" role="2Oq$k0">
                    <ref role="3TV0OU" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                  <node concept="3Tsc0h" id="7BBQIYkR5mx" role="2OqNvi">
                    <ref role="3TtcxE" to="tpce:f_TKVDG" />
                  </node>
                </node>
                <node concept="1uHKPH" id="7BBQIYkR5my" role="2OqNvi" />
              </node>
              <node concept="3TrcHB" id="7BBQIYkR5mz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="LaLafJXgTz" role="3cqZAp">
          <node concept="3cpWsn" id="LaLafJXgT$" role="3cpWs9">
            <property role="TrG5h" value="cd" />
            <node concept="3uibUv" id="LaLafJXgTt" role="1tU5fm">
              <ref role="3uigEE" to="fwv2:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="LaLafJXgT_" role="33vP2m">
              <node concept="2YIFZM" id="LaLafJXgTA" role="2Oq$k0">
                <ref role="1Pybhc" to="n55e:~ConceptRegistry" resolve="ConceptRegistry" />
                <ref role="37wK5l" to="n55e:~ConceptRegistry.getInstance():jetbrains.mps.smodel.language.ConceptRegistry" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="LaLafJXgTB" role="2OqNvi">
                <ref role="37wK5l" to="n55e:~ConceptRegistry.getConstraintsDescriptor(org.jetbrains.mps.openapi.language.SAbstractConcept):jetbrains.mps.smodel.runtime.ConstraintsDescriptor" resolve="getConstraintsDescriptor" />
                <node concept="2OqwBi" id="LaLafJXgTE" role="37wK5m">
                  <node concept="2JrnkZ" id="LaLafJXgTF" role="2Oq$k0">
                    <node concept="37vLTw" id="LaLafJXgTG" role="2JrQYb">
                      <ref role="3cqZAo" node="7BBQIYkR5mM" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="LaLafJXgTH" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1yYqhLB_7zt" role="3cqZAp">
          <node concept="3cpWsn" id="1yYqhLB_7zu" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="1yYqhLB_7zp" role="1tU5fm">
              <ref role="3uigEE" to="fwv2:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="1yYqhLB_7zv" role="33vP2m">
              <node concept="37vLTw" id="1yYqhLB_7zw" role="2Oq$k0">
                <ref role="3cqZAo" node="LaLafJXgT$" resolve="cd" />
              </node>
              <node concept="liA8E" id="1yYqhLB_7zx" role="2OqNvi">
                <ref role="37wK5l" to="fwv2:~ConstraintsDescriptor.getProperty(java.lang.String):jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor" resolve="getProperty" />
                <node concept="37vLTw" id="1yYqhLB_7zy" role="37wK5m">
                  <ref role="3cqZAo" node="7BBQIYkR5mr" resolve="nameProperty" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="LaLafJXhng" role="3cqZAp">
          <node concept="3clFbC" id="LaLafJXhnh" role="3clFbw">
            <node concept="37vLTw" id="1yYqhLB_AlN" role="3uHU7B">
              <ref role="3cqZAo" node="1yYqhLB_7zu" resolve="property" />
            </node>
            <node concept="10Nm6u" id="LaLafJXhnj" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="LaLafJXhnl" role="3clFbx">
            <node concept="34ab3g" id="LaLafJXvYg" role="3cqZAp">
              <property role="35gtTG" value="error" />
              <node concept="3cpWs3" id="LaLafJXhno" role="34bqiv">
                <node concept="3cpWs3" id="1yYqhLB_ACQ" role="3uHU7B">
                  <node concept="3cpWs3" id="1yYqhLB_B7n" role="3uHU7B">
                    <node concept="37vLTw" id="1yYqhLB_CEn" role="3uHU7w">
                      <ref role="3cqZAo" node="7BBQIYkR5mr" resolve="nameProperty" />
                    </node>
                    <node concept="Xl_RD" id="1yYqhLB_ACW" role="3uHU7B">
                      <property role="Xl_RC" value="RenameUtil.canBeRenamed() called for property " />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1yYqhLB_ACY" role="3uHU7w">
                    <property role="Xl_RC" value=" with no constrints descriptor. Node:" />
                  </node>
                </node>
                <node concept="2OqwBi" id="LaLafJXrVm" role="3uHU7w">
                  <node concept="2JrnkZ" id="LaLafJXwvG" role="2Oq$k0">
                    <node concept="37vLTw" id="LaLafJXrVl" role="2JrQYb">
                      <ref role="3cqZAo" node="7BBQIYkR5mM" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="LaLafJXrVn" role="2OqNvi">
                    <ref role="37wK5l" to="ec5l:~SNode.getPresentation():java.lang.String" resolve="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="LaLafJXhnr" role="3cqZAp">
              <node concept="3clFbT" id="LaLafJXhns" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="LaLafJXhnt" role="3cqZAp">
          <node concept="3fqX7Q" id="LaLafJXhnu" role="3cqZAk">
            <node concept="1eOMI4" id="LaLafJXhnz" role="3fr31v">
              <node concept="2OqwBi" id="LaLafJXhnv" role="1eOMHV">
                <node concept="37vLTw" id="1yYqhLB_7zz" role="2Oq$k0">
                  <ref role="3cqZAo" node="1yYqhLB_7zu" resolve="property" />
                </node>
                <node concept="liA8E" id="LaLafJXhny" role="2OqNvi">
                  <ref role="37wK5l" to="fwv2:~PropertyConstraintsDescriptor.isReadOnly():boolean" resolve="isReadOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7BBQIYkR5mM" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7BBQIYkR5mN" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="I5wdVHTn$t">
    <property role="TrG5h" value="MoveNodes" />
    <property role="72QZ$" value="true" />
    <property role="1teQrl" value="true" />
    <property role="2uzpH1" value="Move Nodes" />
    <node concept="2XrIbr" id="1F5g4zQxiY7" role="32lrUH">
      <property role="TrG5h" value="getRefactoring" />
      <node concept="3clFbS" id="1F5g4zQxiY8" role="3clF47">
        <node concept="3cpWs8" id="1F5g4zQxhiQ" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQxhiR" role="3cpWs9">
            <property role="TrG5h" value="specialRefactorings" />
            <node concept="A3Dl8" id="1F5g4zQxhiS" role="1tU5fm">
              <node concept="3uibUv" id="1F5g4zQxhiT" role="A3Ik2">
                <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
              </node>
            </node>
            <node concept="2OqwBi" id="1F5g4zQxhiU" role="33vP2m">
              <node concept="2O5UvJ" id="1F5g4zQxhiV" role="2Oq$k0">
                <ref role="2O5UnU" node="1F5g4zQqSPo" resolve="MoveNodes" />
              </node>
              <node concept="SfwO_" id="1F5g4zQxhiW" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1F5g4zQxhiX" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQxhiY" role="3cpWs9">
            <property role="TrG5h" value="applicableRefactorings" />
            <node concept="A3Dl8" id="1F5g4zQxhiZ" role="1tU5fm">
              <node concept="3uibUv" id="1F5g4zQxhj0" role="A3Ik2">
                <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
              </node>
            </node>
            <node concept="2OqwBi" id="1F5g4zQxhj1" role="33vP2m">
              <node concept="37vLTw" id="1F5g4zQxhj2" role="2Oq$k0">
                <ref role="3cqZAo" node="1F5g4zQxhiR" resolve="specialRefactorings" />
              </node>
              <node concept="3zZkjj" id="1F5g4zQxhj3" role="2OqNvi">
                <node concept="1bVj0M" id="1F5g4zQxhj4" role="23t8la">
                  <node concept="3clFbS" id="1F5g4zQxhj5" role="1bW5cS">
                    <node concept="3clFbF" id="1F5g4zQxhj6" role="3cqZAp">
                      <node concept="2OqwBi" id="1F5g4zQxhj7" role="3clFbG">
                        <node concept="37vLTw" id="1F5g4zQxhj8" role="2Oq$k0">
                          <ref role="3cqZAo" node="1F5g4zQxhjg" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1F5g4zQxhj9" role="2OqNvi">
                          <ref role="37wK5l" node="1F5g4zQqTc8" resolve="isApplicable" />
                          <node concept="2OqwBi" id="1F5g4zQxhja" role="37wK5m">
                            <node concept="2WthIp" id="1F5g4zQxhjb" role="2Oq$k0" />
                            <node concept="1DTwFV" id="1F5g4zQxhjc" role="2OqNvi">
                              <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1F5g4zQxhjd" role="37wK5m">
                            <node concept="2WthIp" id="1F5g4zQxhje" role="2Oq$k0" />
                            <node concept="3gHZIF" id="1F5g4zQxhjf" role="2OqNvi">
                              <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1F5g4zQxhjg" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1F5g4zQxhjh" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1F5g4zQxhjl" role="3cqZAp">
          <node concept="3clFbS" id="1F5g4zQxhjm" role="3clFbx">
            <node concept="3cpWs6" id="1F5g4zQxjWb" role="3cqZAp">
              <node concept="2ShNRf" id="1F5g4zQxk0r" role="3cqZAk">
                <node concept="HV5vD" id="1F5g4zQxkxC" role="2ShVmc">
                  <ref role="HV5vE" node="1F5g4zQqVSR" resolve="MoveNodesDefault" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1F5g4zQxhjs" role="3clFbw">
            <node concept="37vLTw" id="1F5g4zQxhjt" role="2Oq$k0">
              <ref role="3cqZAo" node="1F5g4zQxhiY" resolve="applicableRefactorings" />
            </node>
            <node concept="1v1jN8" id="1F5g4zQxhju" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="1F5g4zQxhjv" role="9aQIa">
            <node concept="3clFbS" id="1F5g4zQxhjw" role="9aQI4">
              <node concept="3clFbJ" id="1F5g4zQxmCh" role="3cqZAp">
                <node concept="3clFbS" id="1F5g4zQxmCj" role="3clFbx">
                  <node concept="34ab3g" id="1F5g4zQxnZT" role="3cqZAp">
                    <property role="35gtTG" value="error" />
                    <node concept="3cpWs3" id="1F5g4zQxohu" role="34bqiv">
                      <node concept="2OqwBi" id="1F5g4zQxpHj" role="3uHU7w">
                        <node concept="2OqwBi" id="1F5g4zQxosb" role="2Oq$k0">
                          <node concept="37vLTw" id="1F5g4zQxoi2" role="2Oq$k0">
                            <ref role="3cqZAo" node="1F5g4zQxhiY" resolve="applicableRefactorings" />
                          </node>
                          <node concept="3$u5V9" id="1F5g4zQxoIW" role="2OqNvi">
                            <node concept="1bVj0M" id="1F5g4zQxoIY" role="23t8la">
                              <node concept="3clFbS" id="1F5g4zQxoIZ" role="1bW5cS">
                                <node concept="3clFbF" id="1F5g4zQxoQU" role="3cqZAp">
                                  <node concept="3cpWs3" id="1F5g4zQxs0s" role="3clFbG">
                                    <node concept="Xl_RD" id="1F5g4zQxs6w" role="3uHU7w">
                                      <property role="Xl_RC" value="\&quot;" />
                                    </node>
                                    <node concept="3cpWs3" id="1F5g4zQxsqI" role="3uHU7B">
                                      <node concept="Xl_RD" id="1F5g4zQxswT" role="3uHU7B">
                                        <property role="Xl_RC" value="\&quot;" />
                                      </node>
                                      <node concept="2OqwBi" id="1F5g4zQxoW5" role="3uHU7w">
                                        <node concept="37vLTw" id="1F5g4zQxoQT" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1F5g4zQxoJ0" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="1F5g4zQxp2b" role="2OqNvi">
                                          <ref role="37wK5l" node="1F5g4zQxi0e" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1F5g4zQxoJ0" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1F5g4zQxoJ1" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1MD8d$" id="1F5g4zQxqpV" role="2OqNvi">
                          <node concept="1bVj0M" id="1F5g4zQxqpX" role="23t8la">
                            <node concept="3clFbS" id="1F5g4zQxqpY" role="1bW5cS">
                              <node concept="3clFbF" id="1F5g4zQxqNi" role="3cqZAp">
                                <node concept="3cpWs3" id="1F5g4zQxrCt" role="3clFbG">
                                  <node concept="37vLTw" id="1F5g4zQxrIK" role="3uHU7w">
                                    <ref role="3cqZAo" node="1F5g4zQxqq1" resolve="it" />
                                  </node>
                                  <node concept="3cpWs3" id="1F5g4zQxr4r" role="3uHU7B">
                                    <node concept="37vLTw" id="1F5g4zQxqNh" role="3uHU7B">
                                      <ref role="3cqZAo" node="1F5g4zQxqpZ" resolve="s" />
                                    </node>
                                    <node concept="Xl_RD" id="1F5g4zQxrau" role="3uHU7w">
                                      <property role="Xl_RC" value=", " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="1F5g4zQxqpZ" role="1bW2Oz">
                              <property role="TrG5h" value="s" />
                              <node concept="17QB3L" id="1F5g4zQxqDw" role="1tU5fm" />
                            </node>
                            <node concept="Rh6nW" id="1F5g4zQxqq1" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="1F5g4zQxqq2" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="1F5g4zQxqtE" role="1MDeny">
                            <property role="Xl_RC" value="" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="1F5g4zQxnZV" role="3uHU7B">
                        <property role="Xl_RC" value="More than one MoveNodes refactoring applicable: " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eOSWO" id="1F5g4zQxnTH" role="3clFbw">
                  <node concept="3cmrfG" id="1F5g4zQxnTU" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQxmT2" role="3uHU7B">
                    <node concept="37vLTw" id="1F5g4zQxmJ_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1F5g4zQxhiY" resolve="applicableRefactorings" />
                    </node>
                    <node concept="34oBXx" id="1F5g4zQxnbG" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1F5g4zQxkGq" role="3cqZAp">
                <node concept="2OqwBi" id="1F5g4zQxkWI" role="3cqZAk">
                  <node concept="37vLTw" id="1F5g4zQxkKH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1F5g4zQxhiY" resolve="applicableRefactorings" />
                  </node>
                  <node concept="1uHKPH" id="1F5g4zQxli_" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1F5g4zQxjq9" role="3clF45">
        <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
      </node>
      <node concept="3Tm6S6" id="1F5g4zQxjiT" role="1B3o_S" />
    </node>
    <node concept="2S4$dB" id="I5wdVHTn$u" role="1NuT2Z">
      <property role="TrG5h" value="nodesToMove" />
      <node concept="3Tm6S6" id="I5wdVHTn$v" role="1B3o_S" />
      <node concept="2I9FWS" id="I5wdVHTn$w" role="1tU5fm" />
      <node concept="1oajcY" id="I5wdVHTn$x" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="I5wdVHTn$y" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="5xh9:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="I5wdVHTn$z" role="1oa70y" />
    </node>
    <node concept="tnohg" id="I5wdVHTn$$" role="tncku">
      <node concept="3clFbS" id="I5wdVHTn$_" role="2VODD2">
        <node concept="3clFbF" id="1F5g4zQxfxV" role="3cqZAp">
          <node concept="2OqwBi" id="1F5g4zQxfC7" role="3clFbG">
            <node concept="2OqwBi" id="1F5g4zQxly3" role="2Oq$k0">
              <node concept="2WthIp" id="1F5g4zQxly6" role="2Oq$k0" />
              <node concept="2XshWL" id="1F5g4zQxly8" role="2OqNvi">
                <ref role="2WH_rO" node="1F5g4zQxiY7" resolve="getRefactoring" />
              </node>
            </node>
            <node concept="liA8E" id="1F5g4zQxfIn" role="2OqNvi">
              <ref role="37wK5l" node="1F5g4zQqUnD" resolve="apply" />
              <node concept="2OqwBi" id="1F5g4zQxfJc" role="37wK5m">
                <node concept="2WthIp" id="1F5g4zQxfJf" role="2Oq$k0" />
                <node concept="1DTwFV" id="1F5g4zQxfJh" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="1F5g4zQxfMc" role="37wK5m">
                <node concept="2WthIp" id="1F5g4zQxfMf" role="2Oq$k0" />
                <node concept="3gHZIF" id="1F5g4zQxfMh" role="2OqNvi">
                  <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="2W$k3RWu0dk" role="tmbBb">
      <node concept="3clFbS" id="2W$k3RWu0dl" role="2VODD2">
        <node concept="3cpWs8" id="1F5g4zQxlXA" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQxlXB" role="3cpWs9">
            <property role="TrG5h" value="refactoring" />
            <node concept="3uibUv" id="1F5g4zQxlX$" role="1tU5fm">
              <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
            </node>
            <node concept="2OqwBi" id="1F5g4zQxlXC" role="33vP2m">
              <node concept="2WthIp" id="1F5g4zQxlXD" role="2Oq$k0" />
              <node concept="2XshWL" id="1F5g4zQxlXE" role="2OqNvi">
                <ref role="2WH_rO" node="1F5g4zQxiY7" resolve="getRefactoring" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1F5g4zQxm6q" role="3cqZAp">
          <node concept="2OqwBi" id="1F5g4zQxm6r" role="3clFbG">
            <node concept="2OqwBi" id="1F5g4zQxm6s" role="2Oq$k0">
              <node concept="tl45R" id="1F5g4zQxm6t" role="2Oq$k0" />
              <node concept="liA8E" id="1F5g4zQxm6u" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="1F5g4zQxm6v" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~Presentation.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="1F5g4zQxm6w" role="37wK5m">
                <node concept="37vLTw" id="1F5g4zQxm6x" role="2Oq$k0">
                  <ref role="3cqZAo" node="1F5g4zQxlXB" resolve="refactoring" />
                </node>
                <node concept="liA8E" id="1F5g4zQxm6y" role="2OqNvi">
                  <ref role="37wK5l" node="1F5g4zQxi0e" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2W$k3RWuy9$" role="3cqZAp">
          <node concept="2OqwBi" id="2W$k3RWuyr0" role="3clFbG">
            <node concept="2OqwBi" id="2W$k3RWuycU" role="2Oq$k0">
              <node concept="tl45R" id="2W$k3RWuy9z" role="2Oq$k0" />
              <node concept="liA8E" id="2W$k3RWuyq7" role="2OqNvi">
                <ref role="37wK5l" to="nx1:~AnActionEvent.getPresentation():com.intellij.openapi.actionSystem.Presentation" resolve="getPresentation" />
              </node>
            </node>
            <node concept="liA8E" id="2W$k3RWuyvZ" role="2OqNvi">
              <ref role="37wK5l" to="nx1:~Presentation.setEnabled(boolean):void" resolve="setEnabled" />
              <node concept="2OqwBi" id="2W$k3RWuyyt" role="37wK5m">
                <node concept="37vLTw" id="1F5g4zQxm5a" role="2Oq$k0">
                  <ref role="3cqZAo" node="1F5g4zQxlXB" resolve="refactoring" />
                </node>
                <node concept="liA8E" id="1F5g4zQxmiw" role="2OqNvi">
                  <ref role="37wK5l" node="1F5g4zQqTc8" resolve="isApplicable" />
                  <node concept="2OqwBi" id="1F5g4zQxmjY" role="37wK5m">
                    <node concept="2WthIp" id="1F5g4zQxmk1" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1F5g4zQxmk3" role="2OqNvi">
                      <ref role="2WH_rO" node="I5wdVHTn$y" resolve="project" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQxmor" role="37wK5m">
                    <node concept="2WthIp" id="1F5g4zQxmou" role="2Oq$k0" />
                    <node concept="3gHZIF" id="1F5g4zQxmow" role="2OqNvi">
                      <ref role="2WH_rO" node="I5wdVHTn$u" resolve="nodesToMove" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1F5g4zQxm7Y" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="xBYEN" id="14xGDffemN1">
    <property role="TrG5h" value="MoveNodesAction_Old" />
    <node concept="3uibUv" id="14xGDffeQPS" role="1bnjqn">
      <ref role="3uigEE" to="e2lb:~Void" resolve="Void" />
    </node>
    <node concept="1LlUBW" id="14xGDffemXJ" role="1bn_V5">
      <node concept="2I9FWS" id="14xGDffen42" role="1Lm7xW" />
      <node concept="3uibUv" id="14xGDffenhU" role="1Lm7xW">
        <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
  </node>
  <node concept="vrV6u" id="1F5g4zQqSPo">
    <property role="TrG5h" value="MoveNodes" />
    <node concept="3uibUv" id="1F5g4zQwWpf" role="luc8K">
      <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
    </node>
  </node>
  <node concept="3HP615" id="1F5g4zQqSPt">
    <property role="TrG5h" value="MoveNodesRefactoring" />
    <node concept="3clFb_" id="1F5g4zQxi0e" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="1F5g4zQxi0h" role="3clF47" />
      <node concept="3Tm1VV" id="1F5g4zQxi0i" role="1B3o_S" />
      <node concept="17QB3L" id="1F5g4zQxhZ9" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1F5g4zQqTc8" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1F5g4zQqTiW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqTLZ" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqTMj" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1F5g4zQqUbb" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1F5g4zQwRA$" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqTcb" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqTcc" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1F5g4zQqUnD" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1F5g4zQqUoH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqUoI" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqUoJ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="2I9FWS" id="1F5g4zQqUoK" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1F5g4zQqUnF" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqUnG" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqUnH" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="1F5g4zQqSPu" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1F5g4zQqVSR">
    <property role="TrG5h" value="MoveNodesDefault" />
    <node concept="2tJIrI" id="1F5g4zQxAv$" role="jymVt" />
    <node concept="2tJIrI" id="1F5g4zQxAAa" role="jymVt" />
    <node concept="3clFb_" id="1F5g4zQxB4Q" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="1F5g4zQxB4S" role="1B3o_S" />
      <node concept="17QB3L" id="1F5g4zQxB4T" role="3clF45" />
      <node concept="3clFbS" id="1F5g4zQxB4U" role="3clF47">
        <node concept="3clFbF" id="1F5g4zQxBI2" role="3cqZAp">
          <node concept="Xl_RD" id="1F5g4zQxBI1" role="3clFbG">
            <property role="Xl_RC" value="Move Nodes" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1F5g4zQx1RH" role="jymVt" />
    <node concept="2YIFZL" id="56Uxmw9MZPZ" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="moveNodes" />
      <node concept="37vLTG" id="56Uxmw9N0Cu" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="2I9FWS" id="56Uxmw9N0JZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="56Uxmw9N0Kh" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="56Uxmw9N0Si" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="56Uxmw9MZ61" role="3clF47">
        <node concept="3cpWs8" id="56Uxmw9N15m" role="3cqZAp">
          <node concept="3cpWsn" id="56Uxmw9N15n" role="3cpWs9">
            <property role="TrG5h" value="moveNodesDefault" />
            <node concept="3uibUv" id="1F5g4zQwMo4" role="1tU5fm">
              <ref role="3uigEE" node="1F5g4zQqVSR" resolve="MoveNodesDefault" />
            </node>
            <node concept="2ShNRf" id="56Uxmw9N1d2" role="33vP2m">
              <node concept="HV5vD" id="1F5g4zQwMHR" role="2ShVmc">
                <ref role="HV5vE" node="1F5g4zQqVSR" resolve="MoveNodesDefault" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56Uxmw9N3Ey" role="3cqZAp">
          <node concept="3clFbS" id="56Uxmw9N3E$" role="3clFbx">
            <node concept="3clFbF" id="56Uxmw9N4eg" role="3cqZAp">
              <node concept="2OqwBi" id="56Uxmw9N4hv" role="3clFbG">
                <node concept="37vLTw" id="56Uxmw9N4ee" role="2Oq$k0">
                  <ref role="3cqZAo" node="56Uxmw9N15n" resolve="moveNodesDefault" />
                </node>
                <node concept="liA8E" id="56Uxmw9N4oK" role="2OqNvi">
                  <ref role="37wK5l" node="1F5g4zQqVTC" resolve="apply" />
                  <node concept="37vLTw" id="1F5g4zQwRMB" role="37wK5m">
                    <ref role="3cqZAo" node="56Uxmw9N0Kh" resolve="mpsProject" />
                  </node>
                  <node concept="37vLTw" id="1F5g4zQwRMC" role="37wK5m">
                    <ref role="3cqZAo" node="56Uxmw9N0Cu" resolve="nodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="56Uxmw9N3VN" role="3clFbw">
            <node concept="37vLTw" id="56Uxmw9N3Su" role="2Oq$k0">
              <ref role="3cqZAo" node="56Uxmw9N15n" resolve="moveNodesDefault" />
            </node>
            <node concept="liA8E" id="56Uxmw9N43J" role="2OqNvi">
              <ref role="37wK5l" node="1F5g4zQqVTv" resolve="isApplicable" />
              <node concept="37vLTw" id="1F5g4zQwNlI" role="37wK5m">
                <ref role="3cqZAo" node="56Uxmw9N0Kh" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="1F5g4zQwNvw" role="37wK5m">
                <ref role="3cqZAo" node="56Uxmw9N0Cu" resolve="nodes" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="56Uxmw9MZ5Z" role="3clF45" />
      <node concept="3Tm1VV" id="56Uxmw9MZ60" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1F5g4zQwKQW" role="jymVt" />
    <node concept="3clFb_" id="1F5g4zQqVTv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <node concept="37vLTG" id="1F5g4zQqVTw" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqVTx" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqVTy" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="1F5g4zQqVTz" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1F5g4zQwQdJ" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqVT_" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqVTB" role="3clF47">
        <node concept="3clFbF" id="1F5g4zQwQY9" role="3cqZAp">
          <node concept="1rXfSq" id="1F5g4zQwQY8" role="3clFbG">
            <ref role="37wK5l" node="1F5g4zQwUGb" resolve="canBeMoved" />
            <node concept="37vLTw" id="1F5g4zQwRdz" role="37wK5m">
              <ref role="3cqZAo" node="1F5g4zQqVTy" resolve="nodesToMove" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1F5g4zQwSYJ" role="jymVt" />
    <node concept="2YIFZL" id="1F5g4zQwUGb" role="jymVt">
      <property role="TrG5h" value="canBeMoved" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1F5g4zQwUGf" role="3clF47">
        <node concept="3clFbJ" id="1F5g4zQwUGg" role="3cqZAp">
          <node concept="3clFbS" id="1F5g4zQwUGh" role="3clFbx">
            <node concept="3cpWs6" id="1F5g4zQwUGi" role="3cqZAp">
              <node concept="3clFbT" id="1F5g4zQwUGj" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1F5g4zQwUGk" role="3clFbw">
            <node concept="37vLTw" id="1F5g4zQwUGl" role="2Oq$k0">
              <ref role="3cqZAo" node="1F5g4zQwUHp" resolve="nodesToMove" />
            </node>
            <node concept="1v1jN8" id="1F5g4zQwUGm" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="1F5g4zQwUGn" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQwUGo" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10P_77" id="1F5g4zQwUGp" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="1F5g4zQwUGq" role="3cqZAp">
          <node concept="1QHqEC" id="1F5g4zQwUGr" role="1QHqEI">
            <node concept="3clFbS" id="1F5g4zQwUGs" role="1bW5cS">
              <node concept="3cpWs8" id="1F5g4zQwUGt" role="3cqZAp">
                <node concept="3cpWsn" id="1F5g4zQwUGu" role="3cpWs9">
                  <property role="TrG5h" value="firstNode" />
                  <node concept="3Tqbb2" id="1F5g4zQwUGv" role="1tU5fm" />
                  <node concept="2OqwBi" id="1F5g4zQwUGw" role="33vP2m">
                    <node concept="37vLTw" id="1F5g4zQwUGx" role="2Oq$k0">
                      <ref role="3cqZAo" node="1F5g4zQwUHp" resolve="nodesToMove" />
                    </node>
                    <node concept="1uHKPH" id="1F5g4zQwUGy" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1F5g4zQwUGz" role="3cqZAp">
                <node concept="3cpWsn" id="1F5g4zQwUG$" role="3cpWs9">
                  <property role="TrG5h" value="containmentLink" />
                  <node concept="3uibUv" id="1F5g4zQwUG_" role="1tU5fm">
                    <ref role="3uigEE" to="t3eg:~SContainmentLink" resolve="SContainmentLink" />
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQwUGA" role="33vP2m">
                    <node concept="2JrnkZ" id="1F5g4zQwUGB" role="2Oq$k0">
                      <node concept="37vLTw" id="1F5g4zQwUGC" role="2JrQYb">
                        <ref role="3cqZAo" node="1F5g4zQwUGu" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1F5g4zQwUGD" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SNode.getContainmentLink():org.jetbrains.mps.openapi.language.SContainmentLink" resolve="getContainmentLink" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1F5g4zQwUGE" role="3cqZAp">
                <node concept="3cpWsn" id="1F5g4zQwUGF" role="3cpWs9">
                  <property role="TrG5h" value="parent" />
                  <node concept="3uibUv" id="1F5g4zQwUGG" role="1tU5fm">
                    <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQwUGH" role="33vP2m">
                    <node concept="2JrnkZ" id="1F5g4zQwUGI" role="2Oq$k0">
                      <node concept="37vLTw" id="1F5g4zQwUGJ" role="2JrQYb">
                        <ref role="3cqZAo" node="1F5g4zQwUGu" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1F5g4zQwUGK" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SNode.getParent():org.jetbrains.mps.openapi.model.SNode" resolve="getParent" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1F5g4zQwUGL" role="3cqZAp">
                <node concept="3cpWsn" id="1F5g4zQwUGM" role="3cpWs9">
                  <property role="TrG5h" value="model" />
                  <node concept="3uibUv" id="1F5g4zQwUGN" role="1tU5fm">
                    <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQwUGO" role="33vP2m">
                    <node concept="2JrnkZ" id="1F5g4zQwUGP" role="2Oq$k0">
                      <node concept="37vLTw" id="1F5g4zQwUGQ" role="2JrQYb">
                        <ref role="3cqZAo" node="1F5g4zQwUGu" resolve="firstNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1F5g4zQwUGR" role="2OqNvi">
                      <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1F5g4zQwUGS" role="3cqZAp">
                <node concept="37vLTI" id="1F5g4zQwUGT" role="3clFbG">
                  <node concept="37vLTw" id="1F5g4zQwUGU" role="37vLTJ">
                    <ref role="3cqZAo" node="1F5g4zQwUGo" resolve="result" />
                  </node>
                  <node concept="2OqwBi" id="1F5g4zQwUGV" role="37vLTx">
                    <node concept="37vLTw" id="1F5g4zQwUGW" role="2Oq$k0">
                      <ref role="3cqZAo" node="1F5g4zQwUHp" resolve="nodesToMove" />
                    </node>
                    <node concept="2HxqBE" id="1F5g4zQwUGX" role="2OqNvi">
                      <node concept="1bVj0M" id="1F5g4zQwUGY" role="23t8la">
                        <node concept="3clFbS" id="1F5g4zQwUGZ" role="1bW5cS">
                          <node concept="3clFbF" id="1F5g4zQwUH0" role="3cqZAp">
                            <node concept="1Wc70l" id="1F5g4zQwUH1" role="3clFbG">
                              <node concept="3clFbC" id="1F5g4zQwUH2" role="3uHU7w">
                                <node concept="37vLTw" id="1F5g4zQwUH3" role="3uHU7w">
                                  <ref role="3cqZAo" node="1F5g4zQwUGM" resolve="model" />
                                </node>
                                <node concept="2OqwBi" id="1F5g4zQwUH4" role="3uHU7B">
                                  <node concept="2JrnkZ" id="1F5g4zQwUH5" role="2Oq$k0">
                                    <node concept="37vLTw" id="1F5g4zQwUH6" role="2JrQYb">
                                      <ref role="3cqZAo" node="1F5g4zQwUHl" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1F5g4zQwUH7" role="2OqNvi">
                                    <ref role="37wK5l" to="ec5l:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1Wc70l" id="1F5g4zQwUH8" role="3uHU7B">
                                <node concept="17R0WA" id="1F5g4zQwUH9" role="3uHU7B">
                                  <node concept="2OqwBi" id="1F5g4zQwUHa" role="3uHU7B">
                                    <node concept="2JrnkZ" id="1F5g4zQwUHb" role="2Oq$k0">
                                      <node concept="37vLTw" id="1F5g4zQwUHc" role="2JrQYb">
                                        <ref role="3cqZAo" node="1F5g4zQwUHl" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1F5g4zQwUHd" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SNode.getContainmentLink():org.jetbrains.mps.openapi.language.SContainmentLink" resolve="getContainmentLink" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1F5g4zQwUHe" role="3uHU7w">
                                    <ref role="3cqZAo" node="1F5g4zQwUG$" resolve="containmentLink" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="1F5g4zQwUHf" role="3uHU7w">
                                  <node concept="2OqwBi" id="1F5g4zQwUHg" role="3uHU7B">
                                    <node concept="2JrnkZ" id="1F5g4zQwUHh" role="2Oq$k0">
                                      <node concept="37vLTw" id="1F5g4zQwUHi" role="2JrQYb">
                                        <ref role="3cqZAo" node="1F5g4zQwUHl" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="1F5g4zQwUHj" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SNode.getParent():org.jetbrains.mps.openapi.model.SNode" resolve="getParent" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1F5g4zQwUHk" role="3uHU7w">
                                    <ref role="3cqZAo" node="1F5g4zQwUGF" resolve="parent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1F5g4zQwUHl" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1F5g4zQwUHm" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1F5g4zQwUHn" role="3cqZAp">
          <node concept="37vLTw" id="1F5g4zQwUHo" role="3cqZAk">
            <ref role="3cqZAo" node="1F5g4zQwUGo" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1F5g4zQwUGd" role="3clF45" />
      <node concept="37vLTG" id="1F5g4zQwUHp" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="1F5g4zQwUHq" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1F5g4zQwUHs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1F5g4zQtbZE" role="jymVt" />
    <node concept="3clFb_" id="1F5g4zQqVTC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="apply" />
      <node concept="37vLTG" id="1F5g4zQqVTD" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1F5g4zQqVTE" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="1F5g4zQqVTF" role="3clF46">
        <property role="TrG5h" value="nodesToMove" />
        <node concept="2I9FWS" id="1F5g4zQqVTG" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="1F5g4zQqVTH" role="3clF45" />
      <node concept="3Tm1VV" id="1F5g4zQqVTI" role="1B3o_S" />
      <node concept="3clFbS" id="1F5g4zQqVTK" role="3clF47">
        <node concept="3clFbH" id="5zDW7NrMSgS" role="3cqZAp" />
        <node concept="3cpWs8" id="1F5g4zQrlbl" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQrlbo" role="3cpWs9">
            <property role="TrG5h" value="currentModel" />
            <node concept="H_c77" id="1F5g4zQrlbj" role="1tU5fm" />
          </node>
        </node>
        <node concept="1QHqEK" id="1F5g4zQrjkW" role="3cqZAp">
          <node concept="1QHqEC" id="1F5g4zQrjkY" role="1QHqEI">
            <node concept="3clFbS" id="1F5g4zQrjl0" role="1bW5cS">
              <node concept="3clFbF" id="1F5g4zQrjGf" role="3cqZAp">
                <node concept="37vLTI" id="5t_qJH4NZ76" role="3clFbG">
                  <node concept="2JrnkZ" id="5t_qJH4NZ77" role="37vLTx">
                    <node concept="2OqwBi" id="5t_qJH4NZ78" role="2JrQYb">
                      <node concept="2OqwBi" id="5t_qJH4NZ79" role="2Oq$k0">
                        <node concept="37vLTw" id="5t_qJH4NZ7a" role="2Oq$k0">
                          <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                        </node>
                        <node concept="1uHKPH" id="5t_qJH4NZ7b" role="2OqNvi" />
                      </node>
                      <node concept="I4A8Y" id="5t_qJH4NZ7c" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5t_qJH4NZ7d" role="37vLTJ">
                    <ref role="3cqZAo" node="1F5g4zQrlbo" resolve="currentModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1F5g4zQrfyN" role="3cqZAp">
          <node concept="3cpWsn" id="1F5g4zQrfyO" role="3cpWs9">
            <property role="TrG5h" value="newLocation" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1F5g4zQwifY" role="1tU5fm">
              <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
            </node>
            <node concept="2YIFZM" id="1F5g4zQra7o" role="33vP2m">
              <ref role="37wK5l" to="u42p:5zhJtEaVXFl" resolve="getSelectedObject" />
              <ref role="1Pybhc" to="u42p:5zhJtEaVXEd" resolve="MoveNodesDialog" />
              <node concept="2OqwBi" id="1F5g4zQra7p" role="37wK5m">
                <node concept="37vLTw" id="1F5g4zQra7q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1F5g4zQqVTD" resolve="project" />
                </node>
                <node concept="liA8E" id="1F5g4zQra7r" role="2OqNvi">
                  <ref role="37wK5l" to="jrbx:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                </node>
              </node>
              <node concept="37vLTw" id="1F5g4zQra7s" role="37wK5m">
                <ref role="3cqZAo" node="1F5g4zQrlbo" resolve="currentModel" />
              </node>
              <node concept="2ShNRf" id="1F5g4zQra7t" role="37wK5m">
                <node concept="YeOm9" id="1F5g4zQra7u" role="2ShVmc">
                  <node concept="1Y3b0j" id="1F5g4zQra7v" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="u42p:5zhJtEaVXEN" resolve="MoveNodesDialog.ModelFilter" />
                    <ref role="1Y3XeK" to="u42p:5zhJtEaVXEe" resolve="MoveNodesDialog.ModelFilter" />
                    <node concept="3Tm1VV" id="1F5g4zQra7w" role="1B3o_S" />
                    <node concept="Xl_RD" id="1F5g4zQra7x" role="37wK5m">
                      <property role="Xl_RC" value="Choose Node or Model" />
                    </node>
                    <node concept="3clFb_" id="1F5g4zQra7y" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="check" />
                      <node concept="3Tm1VV" id="1F5g4zQra7z" role="1B3o_S" />
                      <node concept="10P_77" id="1F5g4zQra7$" role="3clF45" />
                      <node concept="37vLTG" id="1F5g4zQra7_" role="3clF46">
                        <property role="TrG5h" value="selectedObject" />
                        <node concept="3uibUv" id="1F5g4zQwHZ6" role="1tU5fm">
                          <ref role="3uigEE" to="u42p:1F5g4zQtlkd" resolve="NodeLocation" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="1F5g4zQra7B" role="3clF46">
                        <property role="TrG5h" value="model" />
                        <node concept="3uibUv" id="1F5g4zQra7C" role="1tU5fm">
                          <ref role="3uigEE" to="ec5l:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1F5g4zQra7D" role="3clF47">
                        <node concept="3clFbF" id="1F5g4zQwKcC" role="3cqZAp">
                          <node concept="3clFbT" id="1F5g4zQwKcB" role="3clFbG">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1F5g4zQra7M" role="2AJF6D">
                        <ref role="2AI5Lk" to="e2lb:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5t_qJH4NZ7I" role="3cqZAp">
          <node concept="3clFbS" id="5t_qJH4NZ7J" role="3clFbx">
            <node concept="3cpWs6" id="5t_qJH4NZ7K" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5t_qJH4NZ7L" role="3clFbw">
            <node concept="10Nm6u" id="5t_qJH4NZ7M" role="3uHU7w" />
            <node concept="37vLTw" id="5t_qJH4NZ7N" role="3uHU7B">
              <ref role="3cqZAo" node="1F5g4zQrfyO" resolve="newLocation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5t_qJH4NZ7O" role="3cqZAp" />
        <node concept="1QHqEK" id="1F5g4zQt1qg" role="3cqZAp">
          <node concept="1QHqEC" id="1F5g4zQt1qi" role="1QHqEI">
            <node concept="3clFbS" id="1F5g4zQt1qk" role="1bW5cS">
              <node concept="2Gpval" id="5t_qJH4NZ7V" role="3cqZAp">
                <node concept="2GrKxI" id="5t_qJH4NZ7W" role="2Gsz3X">
                  <property role="TrG5h" value="node" />
                </node>
                <node concept="37vLTw" id="5t_qJH4NZ7X" role="2GsD0m">
                  <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                </node>
                <node concept="3clFbS" id="5t_qJH4NZ7Y" role="2LFqv$">
                  <node concept="3clFbJ" id="5t_qJH4NZ7Z" role="3cqZAp">
                    <node concept="3clFbS" id="5t_qJH4NZ80" role="3clFbx">
                      <node concept="3cpWs6" id="5t_qJH4NZ81" role="3cqZAp" />
                    </node>
                    <node concept="3fqX7Q" id="5t_qJH4NZ82" role="3clFbw">
                      <node concept="2YIFZM" id="5t_qJH4NZ83" role="3fr31v">
                        <ref role="37wK5l" to="ec5l:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository):boolean" resolve="isAccessible" />
                        <ref role="1Pybhc" to="ec5l:~SNodeUtil" resolve="SNodeUtil" />
                        <node concept="2GrUjf" id="5t_qJH4NZ84" role="37wK5m">
                          <ref role="2Gs0qQ" node="5t_qJH4NZ7W" resolve="node" />
                        </node>
                        <node concept="2OqwBi" id="1F5g4zQsEY$" role="37wK5m">
                          <node concept="37vLTw" id="1F5g4zQsEY_" role="2Oq$k0">
                            <ref role="3cqZAo" node="1F5g4zQqVTD" resolve="project" />
                          </node>
                          <node concept="liA8E" id="1F5g4zQsEYA" role="2OqNvi">
                            <ref role="37wK5l" to="vsqj:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1F5g4zQwkyY" role="3cqZAp">
                <node concept="3clFbS" id="1F5g4zQwkz0" role="3clFbx">
                  <node concept="3cpWs6" id="1F5g4zQwq2u" role="3cqZAp" />
                </node>
                <node concept="3fqX7Q" id="1F5g4zQwmwr" role="3clFbw">
                  <node concept="2OqwBi" id="1F5g4zQwmwt" role="3fr31v">
                    <node concept="37vLTw" id="1F5g4zQwmwu" role="2Oq$k0">
                      <ref role="3cqZAo" node="1F5g4zQrfyO" resolve="newLocation" />
                    </node>
                    <node concept="liA8E" id="1F5g4zQwmwv" role="2OqNvi">
                      <ref role="37wK5l" to="u42p:1F5g4zQtm7Z" resolve="isValid" />
                      <node concept="37vLTw" id="1F5g4zQwprB" role="37wK5m">
                        <ref role="3cqZAo" node="1F5g4zQqVTD" resolve="project" />
                      </node>
                      <node concept="37vLTw" id="1F5g4zQwnHw" role="37wK5m">
                        <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="5t_qJH4OEJC" role="3cqZAp" />
              <node concept="3cpWs8" id="79lWSGMeOKe" role="3cqZAp">
                <node concept="3cpWsn" id="79lWSGMeOKh" role="3cpWs9">
                  <property role="TrG5h" value="usages" />
                  <node concept="3rvAFt" id="79lWSGMeOK8" role="1tU5fm">
                    <node concept="3Tqbb2" id="79lWSGMeP2M" role="3rvQeY" />
                    <node concept="_YKpA" id="79lWSGMfZ_u" role="3rvSg0">
                      <node concept="3uibUv" id="79lWSGMfZ_w" role="_ZDj9">
                        <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ShNRf" id="79lWSGMeQds" role="33vP2m">
                    <node concept="3rGOSV" id="79lWSGMeQcq" role="2ShVmc">
                      <node concept="3Tqbb2" id="79lWSGMeQcr" role="3rHrn6" />
                      <node concept="_YKpA" id="79lWSGMg3AY" role="3rHtpV">
                        <node concept="3uibUv" id="79lWSGMg3B0" role="_ZDj9">
                          <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="79lWSGMfV99" role="3cqZAp">
                <node concept="3cpWsn" id="79lWSGMfV9a" role="3cpWs9">
                  <property role="TrG5h" value="allUsages" />
                  <node concept="2hMVRd" id="79lWSGMfV95" role="1tU5fm">
                    <node concept="3uibUv" id="79lWSGMfV98" role="2hN53Y">
                      <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="79lWSGMfV9b" role="33vP2m">
                    <ref role="37wK5l" node="3UfZsCnQbNy" resolve="findUsages" />
                    <node concept="37vLTw" id="79lWSGMfV9c" role="37wK5m">
                      <ref role="3cqZAo" node="1F5g4zQqVTD" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="79lWSGMfV9d" role="37wK5m">
                      <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Gpval" id="79lWSGMeQ_h" role="3cqZAp">
                <node concept="2GrKxI" id="79lWSGMeQ_j" role="2Gsz3X">
                  <property role="TrG5h" value="ref" />
                </node>
                <node concept="3clFbS" id="79lWSGMeQ_l" role="2LFqv$">
                  <node concept="3clFbJ" id="2WBcnCOAJ11" role="3cqZAp">
                    <node concept="3clFbS" id="2WBcnCOAJ13" role="3clFbx">
                      <node concept="3clFbF" id="2WBcnCOAP4F" role="3cqZAp">
                        <node concept="37vLTI" id="2WBcnCOAQ63" role="3clFbG">
                          <node concept="2ShNRf" id="2WBcnCOAQvn" role="37vLTx">
                            <node concept="Tc6Ow" id="2WBcnCOAYzB" role="2ShVmc">
                              <node concept="3uibUv" id="2WBcnCOAZZT" role="HW$YZ">
                                <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
                              </node>
                            </node>
                          </node>
                          <node concept="3EllGN" id="2WBcnCOAP4H" role="37vLTJ">
                            <node concept="2OqwBi" id="2WBcnCOAP4I" role="3ElVtu">
                              <node concept="2GrUjf" id="2WBcnCOAP4J" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="79lWSGMeQ_j" resolve="ref" />
                              </node>
                              <node concept="liA8E" id="2WBcnCOAP4K" role="2OqNvi">
                                <ref role="37wK5l" to="ec5l:~SReference.getTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getTargetNode" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2WBcnCOAP4L" role="3ElQJh">
                              <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="2WBcnCOAOuN" role="3clFbw">
                      <node concept="10Nm6u" id="2WBcnCOAOMT" role="3uHU7w" />
                      <node concept="3EllGN" id="2WBcnCOAKQY" role="3uHU7B">
                        <node concept="2OqwBi" id="2WBcnCOALWk" role="3ElVtu">
                          <node concept="2GrUjf" id="2WBcnCOALga" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="79lWSGMeQ_j" resolve="ref" />
                          </node>
                          <node concept="liA8E" id="2WBcnCOAMlL" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SReference.getTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getTargetNode" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2WBcnCOAJoN" role="3ElQJh">
                          <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2WBcnCOB0jn" role="3cqZAp">
                    <node concept="2OqwBi" id="2WBcnCOB0QN" role="3clFbG">
                      <node concept="3EllGN" id="2WBcnCOB0jp" role="2Oq$k0">
                        <node concept="2OqwBi" id="2WBcnCOB0jq" role="3ElVtu">
                          <node concept="2GrUjf" id="2WBcnCOB0jr" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="79lWSGMeQ_j" resolve="ref" />
                          </node>
                          <node concept="liA8E" id="2WBcnCOB0js" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SReference.getTargetNode():org.jetbrains.mps.openapi.model.SNode" resolve="getTargetNode" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2WBcnCOB0jt" role="3ElQJh">
                          <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="2WBcnCOB1Vo" role="2OqNvi">
                        <node concept="2GrUjf" id="2WBcnCOB2jX" role="25WWJ7">
                          <ref role="2Gs0qQ" node="79lWSGMeQ_j" resolve="ref" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2WBcnCOAHLp" role="2GsD0m">
                  <ref role="3cqZAo" node="79lWSGMfV9a" resolve="allUsages" />
                </node>
              </node>
              <node concept="3cpWs8" id="79lWSGMgbB0" role="3cqZAp">
                <node concept="3cpWsn" id="79lWSGMgbB1" role="3cpWs9">
                  <property role="TrG5h" value="searchResults" />
                  <node concept="3uibUv" id="79lWSGMgbAZ" role="1tU5fm">
                    <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
                    <node concept="3uibUv" id="79lWSGMgwLQ" role="11_B2D">
                      <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="79lWSGMgbB2" role="33vP2m">
                    <ref role="37wK5l" node="79lWSGMf_9n" resolve="usagesToSearchResults" />
                    <node concept="37vLTw" id="2WBcnCOBjhL" role="37wK5m">
                      <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                    </node>
                    <node concept="37vLTw" id="79lWSGMgbB3" role="37wK5m">
                      <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="79lWSGMfPRL" role="3cqZAp" />
              <node concept="3clFbF" id="6nZLqty3sNw" role="3cqZAp">
                <node concept="2OqwBi" id="6nZLqty3tH2" role="3clFbG">
                  <node concept="2YIFZM" id="6nZLqty3tn5" role="2Oq$k0">
                    <ref role="37wK5l" to="u42p:1dH5fOG2bPt" resolve="getInstance" />
                    <ref role="1Pybhc" to="u42p:1dH5fOG2bOi" resolve="RefactoringAccessEx" />
                  </node>
                  <node concept="liA8E" id="6nZLqty3x$h" role="2OqNvi">
                    <ref role="37wK5l" to="u42p:3g3N8kb3vlF" resolve="showRefactoringView" />
                    <node concept="2YIFZM" id="79lWSGMgfq3" role="37wK5m">
                      <ref role="1Pybhc" to="pt5l:~ProjectHelper" resolve="ProjectHelper" />
                      <ref role="37wK5l" to="pt5l:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                      <node concept="37vLTw" id="79lWSGMgfIO" role="37wK5m">
                        <ref role="3cqZAo" node="1F5g4zQqVTD" resolve="project" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="79lWSGMggR$" role="37wK5m">
                      <node concept="3clFbS" id="79lWSGMggRA" role="1bW5cS">
                        <node concept="1QHqEO" id="1F5g4zQt9XW" role="3cqZAp">
                          <node concept="1QHqEC" id="1F5g4zQt9XY" role="1QHqEI">
                            <node concept="3clFbS" id="1F5g4zQt9Y0" role="1bW5cS">
                              <node concept="3clFbF" id="1F5g4zQyJZY" role="3cqZAp">
                                <node concept="2OqwBi" id="1F5g4zQyKkw" role="3clFbG">
                                  <node concept="37vLTw" id="1F5g4zQyJZW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1F5g4zQrfyO" resolve="newLocation" />
                                  </node>
                                  <node concept="liA8E" id="1F5g4zQyKC_" role="2OqNvi">
                                    <ref role="37wK5l" to="u42p:1F5g4zQw_bc" resolve="insertNodes" />
                                    <node concept="37vLTw" id="1F5g4zQyKXf" role="37wK5m">
                                      <ref role="3cqZAo" node="1F5g4zQqVTF" resolve="nodesToMove" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2Gpval" id="79lWSGMgBEi" role="3cqZAp">
                                <node concept="2GrKxI" id="79lWSGMgBEk" role="2Gsz3X">
                                  <property role="TrG5h" value="node" />
                                </node>
                                <node concept="3clFbS" id="79lWSGMgBEm" role="2LFqv$">
                                  <node concept="3clFbF" id="79lWSGMgFXR" role="3cqZAp">
                                    <node concept="1rXfSq" id="79lWSGMgFXQ" role="3clFbG">
                                      <ref role="37wK5l" node="3UfZsCnQvus" resolve="updateUsages" />
                                      <node concept="3EllGN" id="79lWSGMgEKI" role="37wK5m">
                                        <node concept="2GrUjf" id="79lWSGMgF2B" role="3ElVtu">
                                          <ref role="2Gs0qQ" node="79lWSGMgBEk" resolve="node" />
                                        </node>
                                        <node concept="37vLTw" id="79lWSGMgEja" role="3ElQJh">
                                          <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                                        </node>
                                      </node>
                                      <node concept="2GrUjf" id="79lWSGMgGKE" role="37wK5m">
                                        <ref role="2Gs0qQ" node="79lWSGMgBEk" resolve="node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="79lWSGMgCxu" role="2GsD0m">
                                  <node concept="37vLTw" id="79lWSGMgC2S" role="2Oq$k0">
                                    <ref role="3cqZAo" node="79lWSGMeOKh" resolve="usages" />
                                  </node>
                                  <node concept="3lbrtF" id="79lWSGMgDqw" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="6nZLqty3x$t" role="3cqZAp">
                          <node concept="2OqwBi" id="6nZLqty3x$u" role="3clFbG">
                            <node concept="37vLTw" id="79lWSGMgpfJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="79lWSGMghAB" resolve="refactoringViewItem" />
                            </node>
                            <node concept="liA8E" id="6nZLqty3x$w" role="2OqNvi">
                              <ref role="37wK5l" to="u42p:3g3N8kb3DkX" resolve="close" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="79lWSGMghAB" role="1bW2Oz">
                        <property role="TrG5h" value="refactoringViewItem" />
                        <node concept="3uibUv" id="79lWSGMgrGx" role="1tU5fm">
                          <ref role="3uigEE" to="u42p:3g3N8kb3DkV" resolve="RefactoringViewItem" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="79lWSGMgu30" role="37wK5m">
                      <ref role="3cqZAo" node="79lWSGMgbB1" resolve="searchResults" />
                    </node>
                    <node concept="3clFbT" id="6nZLqty3x$C" role="37wK5m">
                      <property role="3clFbU" value="false" />
                    </node>
                    <node concept="Xl_RD" id="79lWSGMgxfN" role="37wK5m">
                      <property role="Xl_RC" value="Move nodes" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="79lWSGMgKpW" role="3cqZAp" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1F5g4zQt5Br" role="jymVt" />
    <node concept="3clFb_" id="3UfZsCnQbNy" role="jymVt">
      <property role="TrG5h" value="findUsages" />
      <node concept="2hMVRd" id="79lWSGMd2FQ" role="3clF45">
        <node concept="3uibUv" id="79lWSGMd7Xu" role="2hN53Y">
          <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3UfZsCnQbN_" role="1B3o_S" />
      <node concept="3clFbS" id="3UfZsCnQbNA" role="3clF47">
        <node concept="3cpWs6" id="79lWSGMdJGT" role="3cqZAp">
          <node concept="2OqwBi" id="79lWSGMd4mP" role="3cqZAk">
            <node concept="2YIFZM" id="79lWSGMd4mQ" role="2Oq$k0">
              <ref role="37wK5l" to="88zw:~FindUsagesFacade.getInstance():org.jetbrains.mps.openapi.module.FindUsagesFacade" resolve="getInstance" />
              <ref role="1Pybhc" to="88zw:~FindUsagesFacade" resolve="FindUsagesFacade" />
            </node>
            <node concept="liA8E" id="79lWSGMd4mR" role="2OqNvi">
              <ref role="37wK5l" to="88zw:~FindUsagesFacade.findUsages(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,org.jetbrains.mps.openapi.util.ProgressMonitor):java.util.Set" resolve="findUsages" />
              <node concept="2OqwBi" id="79lWSGMd4mS" role="37wK5m">
                <node concept="37vLTw" id="79lWSGMd4mT" role="2Oq$k0">
                  <ref role="3cqZAo" node="79lWSGMc$Ea" resolve="project" />
                </node>
                <node concept="liA8E" id="79lWSGMd4mU" role="2OqNvi">
                  <ref role="37wK5l" to="vsqj:~Project.getScope():jetbrains.mps.project.Project$ProjectScope" resolve="getScope" />
                </node>
              </node>
              <node concept="2ShNRf" id="79lWSGMd4mV" role="37wK5m">
                <node concept="2i4dXS" id="79lWSGMd4mW" role="2ShVmc">
                  <node concept="2OqwBi" id="79lWSGMd4mX" role="I$8f6">
                    <node concept="37vLTw" id="79lWSGMdGZF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3UfZsCnQlUt" resolve="node" />
                    </node>
                    <node concept="3goQfb" id="79lWSGMfTcc" role="2OqNvi">
                      <node concept="1bVj0M" id="79lWSGMfTce" role="23t8la">
                        <node concept="3clFbS" id="79lWSGMfTcf" role="1bW5cS">
                          <node concept="3clFbF" id="79lWSGMfTAT" role="3cqZAp">
                            <node concept="2OqwBi" id="79lWSGMfTQT" role="3clFbG">
                              <node concept="37vLTw" id="79lWSGMfTAS" role="2Oq$k0">
                                <ref role="3cqZAo" node="79lWSGMfTcg" resolve="it" />
                              </node>
                              <node concept="2Rf3mk" id="79lWSGMfUfu" role="2OqNvi">
                                <node concept="1xIGOp" id="3ZahVvp1Wy4" role="1xVPHs" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="79lWSGMfTcg" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="79lWSGMfTch" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3Tqbb2" id="79lWSGMd4n8" role="HW$YZ" />
                </node>
              </node>
              <node concept="2ShNRf" id="79lWSGMd4n9" role="37wK5m">
                <node concept="1pGfFk" id="79lWSGMd4na" role="2ShVmc">
                  <ref role="37wK5l" to="ff4b:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="79lWSGMc$Ea" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="79lWSGMcA0P" role="1tU5fm">
          <ref role="3uigEE" to="jrbx:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="3UfZsCnQlUt" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="2I9FWS" id="79lWSGMfQ_S" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="79lWSGMfyGQ" role="jymVt" />
    <node concept="3clFb_" id="79lWSGMf_9n" role="jymVt">
      <property role="TrG5h" value="usagesToSearchResults" />
      <node concept="3uibUv" id="79lWSGMfAaj" role="3clF45">
        <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
      </node>
      <node concept="3Tm1VV" id="79lWSGMf_9q" role="1B3o_S" />
      <node concept="3clFbS" id="79lWSGMf_9r" role="3clF47">
        <node concept="3cpWs8" id="79lWSGMeU5k" role="3cqZAp">
          <node concept="3cpWsn" id="79lWSGMeU5l" role="3cpWs9">
            <property role="TrG5h" value="searchResults" />
            <node concept="3uibUv" id="79lWSGMeYP8" role="1tU5fm">
              <ref role="3uigEE" to="g4jo:J2bOg02HbG" resolve="SearchResults" />
              <node concept="3uibUv" id="79lWSGMf5zn" role="11_B2D">
                <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="79lWSGMeUXs" role="33vP2m">
              <node concept="1pGfFk" id="79lWSGMeVwW" role="2ShVmc">
                <ref role="37wK5l" to="g4jo:J2bOg02HbW" resolve="SearchResults" />
                <node concept="3uibUv" id="79lWSGMf5Us" role="1pMfVU">
                  <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="79lWSGMeWSh" role="3cqZAp">
          <node concept="2OqwBi" id="79lWSGMf2tv" role="3clFbG">
            <node concept="2OqwBi" id="79lWSGMeX0W" role="2Oq$k0">
              <node concept="37vLTw" id="79lWSGMeWSg" role="2Oq$k0">
                <ref role="3cqZAo" node="79lWSGMeU5l" resolve="searchResults" />
              </node>
              <node concept="liA8E" id="79lWSGMf2dK" role="2OqNvi">
                <ref role="37wK5l" to="g4jo:J2bOg02Hcu" resolve="getSearchedNodes" />
              </node>
            </node>
            <node concept="liA8E" id="79lWSGMf3R6" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Set.addAll(java.util.Collection):boolean" resolve="addAll" />
              <node concept="37vLTw" id="2WBcnCOBoxh" role="37wK5m">
                <ref role="3cqZAo" node="2WBcnCOBjCK" resolve="originalNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="79lWSGMeVVt" role="3cqZAp">
          <node concept="2GrKxI" id="79lWSGMeVVv" role="2Gsz3X">
            <property role="TrG5h" value="node" />
          </node>
          <node concept="3clFbS" id="79lWSGMeVVx" role="2LFqv$">
            <node concept="3clFbF" id="79lWSGMf7Jy" role="3cqZAp">
              <node concept="2OqwBi" id="79lWSGMf8Bh" role="3clFbG">
                <node concept="2OqwBi" id="79lWSGMf7Xi" role="2Oq$k0">
                  <node concept="37vLTw" id="79lWSGMf7Jw" role="2Oq$k0">
                    <ref role="3cqZAo" node="79lWSGMeU5l" resolve="searchResults" />
                  </node>
                  <node concept="liA8E" id="79lWSGMf8jb" role="2OqNvi">
                    <ref role="37wK5l" to="g4jo:J2bOg02Hc_" resolve="getSearchResults" />
                  </node>
                </node>
                <node concept="liA8E" id="79lWSGMf9ug" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~List.addAll(java.util.Collection):boolean" resolve="addAll" />
                  <node concept="2OqwBi" id="79lWSGMfkV9" role="37wK5m">
                    <node concept="2OqwBi" id="79lWSGMfiEe" role="2Oq$k0">
                      <node concept="3EllGN" id="79lWSGMfajk" role="2Oq$k0">
                        <node concept="2GrUjf" id="79lWSGMfaE3" role="3ElVtu">
                          <ref role="2Gs0qQ" node="79lWSGMeVVv" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="79lWSGMf9Nu" role="3ElQJh">
                          <ref role="3cqZAo" node="79lWSGMfFZZ" resolve="usages" />
                        </node>
                      </node>
                      <node concept="3$u5V9" id="79lWSGMfjyG" role="2OqNvi">
                        <node concept="1bVj0M" id="79lWSGMfjyI" role="23t8la">
                          <node concept="3clFbS" id="79lWSGMfjyJ" role="1bW5cS">
                            <node concept="3clFbF" id="79lWSGMfk0C" role="3cqZAp">
                              <node concept="2ShNRf" id="79lWSGMfonL" role="3clFbG">
                                <node concept="1pGfFk" id="79lWSGMfqp7" role="2ShVmc">
                                  <ref role="37wK5l" to="g4jo:J2bOg02GJx" resolve="SearchResult" />
                                  <node concept="3uibUv" id="79lWSGMfrHA" role="1pMfVU">
                                    <ref role="3uigEE" to="ec5l:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="2OqwBi" id="79lWSGMfkiX" role="37wK5m">
                                    <node concept="37vLTw" id="79lWSGMfk0B" role="2Oq$k0">
                                      <ref role="3cqZAo" node="79lWSGMfjyK" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="79lWSGMfkzT" role="2OqNvi">
                                      <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="79lWSGMfsW7" role="37wK5m">
                                    <property role="Xl_RC" value="" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="79lWSGMfjyK" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="79lWSGMfjyL" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="79lWSGMflIw" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="79lWSGMfLxH" role="2GsD0m">
            <node concept="37vLTw" id="79lWSGMfIjp" role="2Oq$k0">
              <ref role="3cqZAo" node="79lWSGMfFZZ" resolve="usages" />
            </node>
            <node concept="3lbrtF" id="79lWSGMfMoP" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="79lWSGMfHqM" role="3cqZAp">
          <node concept="37vLTw" id="79lWSGMfHTF" role="3cqZAk">
            <ref role="3cqZAo" node="79lWSGMeU5l" resolve="searchResults" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2WBcnCOBjCK" role="3clF46">
        <property role="TrG5h" value="originalNodes" />
        <node concept="3vKaQO" id="2WBcnCOBpka" role="1tU5fm">
          <node concept="3Tqbb2" id="2WBcnCOBpkc" role="3O5elw" />
        </node>
      </node>
      <node concept="37vLTG" id="79lWSGMfFZZ" role="3clF46">
        <property role="TrG5h" value="usages" />
        <node concept="3rvAFt" id="79lWSGMfFZW" role="1tU5fm">
          <node concept="3Tqbb2" id="79lWSGMfGtQ" role="3rvQeY" />
          <node concept="_YKpA" id="79lWSGMgbb0" role="3rvSg0">
            <node concept="3uibUv" id="79lWSGMgbb2" role="_ZDj9">
              <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="79lWSGMf$wQ" role="jymVt" />
    <node concept="3clFb_" id="3UfZsCnQvus" role="jymVt">
      <property role="TrG5h" value="updateUsages" />
      <node concept="3cqZAl" id="79lWSGMdFTH" role="3clF45" />
      <node concept="3Tm1VV" id="3UfZsCnQvuu" role="1B3o_S" />
      <node concept="3clFbS" id="3UfZsCnQvuv" role="3clF47">
        <node concept="3clFbF" id="3UfZsCnQxgX" role="3cqZAp">
          <node concept="2OqwBi" id="3UfZsCnQxJU" role="3clFbG">
            <node concept="37vLTw" id="3UfZsCnQxgW" role="2Oq$k0">
              <ref role="3cqZAo" node="3UfZsCnQvuM" resolve="usages" />
            </node>
            <node concept="2es0OD" id="79lWSGMd98U" role="2OqNvi">
              <node concept="1bVj0M" id="79lWSGMd98W" role="23t8la">
                <node concept="3clFbS" id="79lWSGMd98X" role="1bW5cS">
                  <node concept="3clFbF" id="79lWSGMd9fT" role="3cqZAp">
                    <node concept="2OqwBi" id="79lWSGMdEZq" role="3clFbG">
                      <node concept="2OqwBi" id="79lWSGMd9hT" role="2Oq$k0">
                        <node concept="37vLTw" id="79lWSGMd9fS" role="2Oq$k0">
                          <ref role="3cqZAo" node="79lWSGMd98Y" resolve="it" />
                        </node>
                        <node concept="liA8E" id="79lWSGMdEX0" role="2OqNvi">
                          <ref role="37wK5l" to="ec5l:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                        </node>
                      </node>
                      <node concept="liA8E" id="79lWSGMdFjm" role="2OqNvi">
                        <ref role="37wK5l" to="ec5l:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode):void" resolve="setReferenceTarget" />
                        <node concept="2OqwBi" id="79lWSGMdFsp" role="37wK5m">
                          <node concept="37vLTw" id="79lWSGMdFnF" role="2Oq$k0">
                            <ref role="3cqZAo" node="79lWSGMd98Y" resolve="it" />
                          </node>
                          <node concept="liA8E" id="79lWSGMdFy4" role="2OqNvi">
                            <ref role="37wK5l" to="ec5l:~SReference.getLink():org.jetbrains.mps.openapi.language.SReferenceLink" resolve="getLink" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="79lWSGMdFN6" role="37wK5m">
                          <ref role="3cqZAo" node="79lWSGMd9oE" resolve="newTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="79lWSGMd98Y" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="79lWSGMd98Z" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3UfZsCnQvuM" role="3clF46">
        <property role="TrG5h" value="usages" />
        <node concept="A3Dl8" id="79lWSGMd8Qx" role="1tU5fm">
          <node concept="3uibUv" id="79lWSGMd8Qz" role="A3Ik2">
            <ref role="3uigEE" to="ec5l:~SReference" resolve="SReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="79lWSGMd9oE" role="3clF46">
        <property role="TrG5h" value="newTarget" />
        <node concept="3Tqbb2" id="79lWSGMdFGz" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1F5g4zQt6wH" role="jymVt" />
    <node concept="3Tm1VV" id="1F5g4zQqVSS" role="1B3o_S" />
    <node concept="3uibUv" id="1F5g4zQqVTe" role="EKbjA">
      <ref role="3uigEE" node="1F5g4zQqSPt" resolve="MoveNodesRefactoring" />
    </node>
  </node>
</model>

