<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de44096e-4e5d-49b5-9935-e04d24a272d2(jetbrains.mps.build.mps.testManifest.pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="1" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="jjwj" ref="r:d58a0a69-0655-46ea-90b9-604f6da8b24f(jetbrains.mps.build.mps.testManifest.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="byr9" ref="r:83437316-51a8-44ee-b386-4989e30943c4(jetbrains.mps.build.mps.testManifest.behavior)" />
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tken" ref="r:38bad86e-d92c-4ea7-ad52-a111dc6c2457(jetbrains.mps.build.mps.util)" />
    <import index="5tjl" ref="r:5315d75f-2eea-4bf2-899f-f3d94810cea5(jetbrains.mps.build.mps.tests.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="jkny" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm(MPS.IDEA/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
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
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
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
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
      </concept>
      <concept id="4560297596904469361" name="jetbrains.mps.build.mps.tests.structure.BuildMpsLayout_TestModules_Content" flags="nn" index="22LTRL" />
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785118" name="jetbrains.mps.lang.quotation.structure.ListAntiquotation" flags="ng" index="2c44t8" />
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262398947" name="heapSize" index="2_GNG2" />
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
        <property id="2059109515400425365" name="compiler" index="3fwGa$" />
        <child id="927724900262033863" name="resourceSelectors" index="2_Ic$A" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1140725362528" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetOperation" flags="nn" index="2oxUTD">
        <child id="1140725362529" name="linkTarget" index="2oxUTC" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1145567426890" name="jetbrains.mps.lang.smodel.structure.SNodeListCreator" flags="nn" index="2T8Vx0">
        <child id="1145567471833" name="createdType" index="2T96Bj" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
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
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC" />
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="7vU6U504Cn0" />
  <node concept="sE7Ow" id="7vU6U504Cn1">
    <property role="TrG5h" value="RefreshTestProject" />
    <property role="2uzpH1" value="Refresh Test Project" />
    <property role="72QZ$" value="true" />
    <property role="fJN8o" value="true" />
    <node concept="2XrIbr" id="7vU6U507d58" role="32lrUH">
      <property role="TrG5h" value="doExecute" />
      <node concept="37vLTG" id="4KDfkUwMp5U" role="3clF46">
        <property role="TrG5h" value="proInd" />
        <node concept="3uibUv" id="4KDfkUwMp5V" role="1tU5fm">
          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
        </node>
      </node>
      <node concept="3clFbS" id="7vU6U507d59" role="3clF47">
        <node concept="3cpWs8" id="7vU6U507h7z" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U507h7A" role="3cpWs9">
            <property role="TrG5h" value="target" />
            <node concept="H_c77" id="7vU6U507h7y" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="5HWqn7op77W" role="3cqZAp">
          <node concept="3cpWsn" id="5HWqn7op77Z" role="3cpWs9">
            <property role="TrG5h" value="ok" />
            <node concept="10P_77" id="5HWqn7op77U" role="1tU5fm" />
            <node concept="3clFbT" id="5HWqn7op8uX" role="33vP2m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="6DW_AMA_6L2" role="3cqZAp">
          <node concept="1QHqEC" id="6DW_AMA_6L4" role="1QHqEI">
            <node concept="3clFbS" id="6DW_AMA_6L6" role="1bW5cS">
              <node concept="3SKdUt" id="6DW_AMA$TDn" role="3cqZAp">
                <node concept="3SKdUq" id="6DW_AMA$UOQ" role="3SKWNk">
                  <property role="3SKdUp" value="shamelessly copypasted from the smodel lang's generator" />
                </node>
              </node>
              <node concept="3cpWs8" id="6DW_AMA$l8A" role="3cqZAp">
                <node concept="3cpWsn" id="6DW_AMA$l8B" role="3cpWs9">
                  <property role="TrG5h" value="targetRef" />
                  <node concept="3Tqbb2" id="6DW_AMA$l8y" role="1tU5fm">
                    <ref role="ehGHo" to="tp25:v3WHCwUiHy" resolve="ModelReferenceExpression" />
                  </node>
                  <node concept="2OqwBi" id="6DW_AMA$l8C" role="33vP2m">
                    <node concept="2OqwBi" id="6DW_AMA$l8D" role="2Oq$k0">
                      <node concept="2WthIp" id="6DW_AMA$l8E" role="2Oq$k0" />
                      <node concept="3gHZIF" id="6DW_AMA$l8F" role="2OqNvi">
                        <ref role="2WH_rO" node="7vU6U507fxQ" resolve="conf" />
                      </node>
                    </node>
                    <node concept="3TrEf2" id="6DW_AMA$l8G" role="2OqNvi">
                      <ref role="3Tt5mk" to="jjwj:6DW_AMA$3Cx" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6DW_AMA$pqD" role="3cqZAp">
                <node concept="3cpWsn" id="6DW_AMA$pqG" role="3cpWs9">
                  <property role="TrG5h" value="targetName" />
                  <node concept="17QB3L" id="6DW_AMA$pqB" role="1tU5fm" />
                  <node concept="2OqwBi" id="6DW_AMA$qHb" role="33vP2m">
                    <node concept="37vLTw" id="6DW_AMA$qEF" role="2Oq$k0">
                      <ref role="3cqZAo" node="6DW_AMA$l8B" resolve="targetRef" />
                    </node>
                    <node concept="3TrcHB" id="6DW_AMA$qPx" role="2OqNvi">
                      <ref role="3TsBF5" to="tp25:v3WHCwUiHA" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6DW_AMA$s1Q" role="3cqZAp">
                <node concept="3clFbS" id="6DW_AMA$s1S" role="3clFbx">
                  <node concept="3clFbF" id="6DW_AMA$whU" role="3cqZAp">
                    <node concept="d57v9" id="6DW_AMA$wnJ" role="3clFbG">
                      <node concept="3cpWs3" id="6DW_AMA$wHq" role="37vLTx">
                        <node concept="2OqwBi" id="6DW_AMA$wMQ" role="3uHU7w">
                          <node concept="37vLTw" id="6DW_AMA$wIm" role="2Oq$k0">
                            <ref role="3cqZAo" node="6DW_AMA$l8B" resolve="targetRef" />
                          </node>
                          <node concept="3TrcHB" id="6DW_AMA$x3b" role="2OqNvi">
                            <ref role="3TsBF5" to="tp25:v3WHCwUjHJ" resolve="stereotype" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6DW_AMA$wsJ" role="3uHU7B">
                          <property role="Xl_RC" value="@" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6DW_AMA$whS" role="37vLTJ">
                        <ref role="3cqZAo" node="6DW_AMA$pqG" resolve="targetName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6DW_AMA$uZZ" role="3clFbw">
                  <node concept="2OqwBi" id="6DW_AMA$tRm" role="2Oq$k0">
                    <node concept="37vLTw" id="6DW_AMA$thM" role="2Oq$k0">
                      <ref role="3cqZAo" node="6DW_AMA$l8B" resolve="targetRef" />
                    </node>
                    <node concept="3TrcHB" id="6DW_AMA$uJk" role="2OqNvi">
                      <ref role="3TsBF5" to="tp25:v3WHCwUjHJ" resolve="stereotype" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="6DW_AMA$wbg" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="6DW_AMA$YTz" role="3cqZAp">
                <node concept="37vLTI" id="6DW_AMA$YT_" role="3clFbG">
                  <node concept="2OqwBi" id="6DW_AMA$QZ3" role="37vLTx">
                    <node concept="2YIFZM" id="6DW_AMA$QZ4" role="2Oq$k0">
                      <ref role="37wK5l" to="w1kc:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
                      <ref role="1Pybhc" to="w1kc:~SModelRepository" resolve="SModelRepository" />
                    </node>
                    <node concept="liA8E" id="6DW_AMA$QZ5" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SModelRepository.getModelDescriptor(java.lang.String):org.jetbrains.mps.openapi.model.SModel" resolve="getModelDescriptor" />
                      <node concept="37vLTw" id="6DW_AMA$QZ6" role="37wK5m">
                        <ref role="3cqZAo" node="6DW_AMA$pqG" resolve="targetName" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6DW_AMA$YTD" role="37vLTJ">
                    <ref role="3cqZAo" node="7vU6U507h7A" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5HWqn7ooxUS" role="3cqZAp">
                <node concept="3clFbS" id="5HWqn7ooxUU" role="3clFbx">
                  <node concept="3clFbF" id="5HWqn7ooAVc" role="3cqZAp">
                    <node concept="2YIFZM" id="5HWqn7ooGGF" role="3clFbG">
                      <ref role="37wK5l" to="jkm4:~Messages.showErrorDialog(com.intellij.openapi.project.Project,java.lang.String,java.lang.String):void" resolve="showErrorDialog" />
                      <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
                      <node concept="2OqwBi" id="5HWqn7ooHrt" role="37wK5m">
                        <node concept="2WthIp" id="5HWqn7ooHrw" role="2Oq$k0" />
                        <node concept="1DTwFV" id="5HWqn7ooHry" role="2OqNvi">
                          <ref role="2WH_rO" node="4KDfkUwMpc9" resolve="project" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="5HWqn7ooSjP" role="37wK5m">
                        <node concept="37vLTw" id="5HWqn7ooT0g" role="3uHU7w">
                          <ref role="3cqZAo" node="6DW_AMA$pqG" resolve="targetName" />
                        </node>
                        <node concept="Xl_RD" id="5HWqn7ooINz" role="3uHU7B">
                          <property role="Xl_RC" value="Not found target model: " />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5HWqn7ooUol" role="37wK5m">
                        <property role="Xl_RC" value="Model Not Found" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5HWqn7opa0K" role="3cqZAp">
                    <node concept="37vLTI" id="5HWqn7opaTm" role="3clFbG">
                      <node concept="3clFbT" id="5HWqn7opbyq" role="37vLTx">
                        <property role="3clFbU" value="false" />
                      </node>
                      <node concept="37vLTw" id="5HWqn7opa0I" role="37vLTJ">
                        <ref role="3cqZAo" node="5HWqn7op77Z" resolve="ok" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5HWqn7ooy6C" role="3clFbw">
                  <node concept="10Nm6u" id="5HWqn7ooybn" role="3uHU7w" />
                  <node concept="37vLTw" id="5HWqn7ooy1H" role="3uHU7B">
                    <ref role="3cqZAo" node="7vU6U507h7A" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6DW_AMA_8Q4" role="ukAjM">
            <node concept="2OqwBi" id="6DW_AMA_857" role="2Oq$k0">
              <node concept="2WthIp" id="6DW_AMA_85a" role="2Oq$k0" />
              <node concept="1DTwFV" id="6DW_AMA_85c" role="2OqNvi">
                <ref role="2WH_rO" node="1ouvi_zvvb" resolve="mpsProject" />
              </node>
            </node>
            <node concept="liA8E" id="6DW_AMA_9Va" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5HWqn7opckJ" role="3cqZAp">
          <node concept="3clFbS" id="5HWqn7opckL" role="3clFbx">
            <node concept="3cpWs6" id="5HWqn7opetp" role="3cqZAp">
              <node concept="3clFbT" id="5HWqn7opfKX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5HWqn7opdEM" role="3clFbw">
            <node concept="37vLTw" id="5HWqn7opdF4" role="3fr31v">
              <ref role="3cqZAo" node="5HWqn7op77Z" resolve="ok" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5HWqn7opgWm" role="3cqZAp" />
        <node concept="3cpWs8" id="7vU6U507wBq" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U507wBt" role="3cpWs9">
            <property role="TrG5h" value="manifests" />
            <node concept="2I9FWS" id="7vU6U507wBo" role="1tU5fm">
              <ref role="2I9WkF" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
            </node>
            <node concept="2ShNRf" id="7vU6U507xdj" role="33vP2m">
              <node concept="2T8Vx0" id="7vU6U507xd5" role="2ShVmc">
                <node concept="2I9FWS" id="7vU6U507xd6" role="2T96Bj">
                  <ref role="2I9WkF" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="7vU6U507iUM" role="3cqZAp">
          <node concept="1QHqEC" id="7vU6U507iUO" role="1QHqEI">
            <node concept="3clFbS" id="7vU6U507iUQ" role="1bW5cS">
              <node concept="1DcWWT" id="7vU6U507lJi" role="3cqZAp">
                <node concept="3clFbS" id="7vU6U507lJk" role="2LFqv$">
                  <node concept="3cpWs8" id="7vU6U507tPC" role="3cqZAp">
                    <node concept="3cpWsn" id="7vU6U507tPD" role="3cpWs9">
                      <property role="TrG5h" value="manifest" />
                      <node concept="3Tqbb2" id="7vU6U507tPB" role="1tU5fm">
                        <ref role="ehGHo" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
                      </node>
                      <node concept="2OqwBi" id="7vU6U507tPE" role="33vP2m">
                        <node concept="37vLTw" id="7vU6U507tPF" role="2Oq$k0">
                          <ref role="3cqZAo" node="7vU6U507lJm" resolve="mref" />
                        </node>
                        <node concept="3TrEf2" id="7vU6U507tPG" role="2OqNvi">
                          <ref role="3Tt5mk" to="jjwj:2R6x4Anyc75" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7vU6U507uVs" role="3cqZAp" />
                  <node concept="3clFbF" id="7vU6U507xjY" role="3cqZAp">
                    <node concept="2OqwBi" id="7vU6U507ykw" role="3clFbG">
                      <node concept="37vLTw" id="7vU6U507xjW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U507wBt" resolve="manifests" />
                      </node>
                      <node concept="TSZUe" id="7vU6U507AiT" role="2OqNvi">
                        <node concept="37vLTw" id="7vU6U507ASJ" role="25WWJ7">
                          <ref role="3cqZAo" node="7vU6U507tPD" resolve="manifest" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="7vU6U507lJm" role="1Duv9x">
                  <property role="TrG5h" value="mref" />
                  <node concept="3Tqbb2" id="7vU6U507mpY" role="1tU5fm">
                    <ref role="ehGHo" to="jjwj:2R6x4Anyc74" resolve="TestModuleManifestRef" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7vU6U507lJr" role="1DdaDG">
                  <node concept="2OqwBi" id="7vU6U507lJs" role="2Oq$k0">
                    <node concept="2WthIp" id="7vU6U507lJt" role="2Oq$k0" />
                    <node concept="3gHZIF" id="7vU6U507lJu" role="2OqNvi">
                      <ref role="2WH_rO" node="7vU6U507fxQ" resolve="conf" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="7vU6U507lJv" role="2OqNvi">
                    <ref role="3TtcxE" to="jjwj:2R6x4AnydJ4" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7vU6U507j9i" role="ukAjM">
            <node concept="2OqwBi" id="7vU6U507iWq" role="2Oq$k0">
              <node concept="2WthIp" id="7vU6U507iWt" role="2Oq$k0" />
              <node concept="1DTwFV" id="7vU6U507iWv" role="2OqNvi">
                <ref role="2WH_rO" node="1ouvi_zvvb" resolve="mpsProject" />
              </node>
            </node>
            <node concept="liA8E" id="7vU6U507jA0" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U507h8e" role="3cqZAp" />
        <node concept="3clFbF" id="vgcurb_gp6" role="3cqZAp">
          <node concept="2YIFZM" id="vgcurb_ifB" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable):boolean" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="vgcurb_ikp" role="37wK5m">
              <node concept="3clFbS" id="vgcurb_ikq" role="1bW5cS">
                <node concept="3clFbH" id="vgcurb_jNu" role="3cqZAp" />
                <node concept="1QHqEO" id="vgcurb_29L" role="3cqZAp">
                  <node concept="1QHqEC" id="vgcurb_29N" role="1QHqEI">
                    <node concept="3clFbS" id="vgcurb_29P" role="1bW5cS">
                      <node concept="3cpWs8" id="7vU6U5088XY" role="3cqZAp">
                        <node concept="3cpWsn" id="7vU6U5088XZ" role="3cpWs9">
                          <property role="TrG5h" value="template" />
                          <node concept="3uibUv" id="7vU6U5088XN" role="1tU5fm">
                            <ref role="3uigEE" node="7vU6U504CTS" resolve="TestModuleBuildProjectTemplate" />
                          </node>
                          <node concept="2ShNRf" id="7vU6U5088Y0" role="33vP2m">
                            <node concept="1pGfFk" id="7vU6U5088Y1" role="2ShVmc">
                              <ref role="37wK5l" node="7vU6U507CVm" resolve="TestModuleBuildProjectTemplate" />
                              <node concept="2OqwBi" id="7vU6U5088Y2" role="37wK5m">
                                <node concept="2WthIp" id="7vU6U5088Y3" role="2Oq$k0" />
                                <node concept="1DTwFV" id="7vU6U5088Y4" role="2OqNvi">
                                  <ref role="2WH_rO" node="1ouvi_zvvb" resolve="mpsProject" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="7vU6U5089HI" role="37wK5m">
                                <ref role="3cqZAo" node="7vU6U507h7A" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7vU6U50894h" role="3cqZAp" />
                      <node concept="3cpWs8" id="vgcurbAulz" role="3cqZAp">
                        <node concept="3cpWsn" id="vgcurbAul$" role="3cpWs9">
                          <property role="TrG5h" value="bproj" />
                          <node concept="3Tqbb2" id="vgcurbAulx" role="1tU5fm">
                            <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
                          </node>
                          <node concept="2OqwBi" id="vgcurbAul_" role="33vP2m">
                            <node concept="37vLTw" id="vgcurbAulA" role="2Oq$k0">
                              <ref role="3cqZAo" node="7vU6U5088XZ" resolve="template" />
                            </node>
                            <node concept="liA8E" id="vgcurbAulB" role="2OqNvi">
                              <ref role="37wK5l" node="7vU6U504DaD" resolve="createBuildProject" />
                              <node concept="2OqwBi" id="6DW_AMAyWJ_" role="37wK5m">
                                <node concept="2WthIp" id="6DW_AMAyWJC" role="2Oq$k0" />
                                <node concept="3gHZIF" id="6DW_AMAyWJE" role="2OqNvi">
                                  <ref role="2WH_rO" node="7vU6U507fxQ" resolve="conf" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="6DW_AMAyUbn" role="37wK5m">
                                <ref role="3cqZAo" node="7vU6U507wBt" resolve="manifests" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="vgcurbAKE2" role="3cqZAp">
                        <node concept="2OqwBi" id="vgcurbANbM" role="3clFbG">
                          <node concept="2OqwBi" id="vgcurbALpN" role="2Oq$k0">
                            <node concept="37vLTw" id="vgcurbAKE0" role="2Oq$k0">
                              <ref role="3cqZAo" node="vgcurbAul$" resolve="bproj" />
                            </node>
                            <node concept="3TrcHB" id="vgcurbAMgz" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                            </node>
                          </node>
                          <node concept="tyxLq" id="vgcurbAO33" role="2OqNvi">
                            <node concept="Xl_RD" id="vgcurbAOAM" role="tz02z">
                              <property role="Xl_RC" value="generated" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2hkCNA7Z2nt" role="3cqZAp">
                        <node concept="3cpWsn" id="2hkCNA7Z2nu" role="3cpWs9">
                          <property role="TrG5h" value="pathConverter" />
                          <node concept="3uibUv" id="2hkCNA7Z2nv" role="1tU5fm">
                            <ref role="3uigEE" to="tken:2hkCNA7Z0MW" resolve="PathConverter" />
                          </node>
                          <node concept="2ShNRf" id="2hkCNA7Z2ny" role="33vP2m">
                            <node concept="1pGfFk" id="2hkCNA7Z2n$" role="2ShVmc">
                              <ref role="37wK5l" to="tken:2hkCNA7Z0MY" resolve="PathConverter" />
                              <node concept="37vLTw" id="vgcurbABn0" role="37wK5m">
                                <ref role="3cqZAo" node="vgcurbAul$" resolve="bproj" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="vgcurbAA8_" role="3cqZAp" />
                      <node concept="3cpWs8" id="vgcurbA$BU" role="3cqZAp">
                        <node concept="3cpWsn" id="vgcurbA$BV" role="3cpWs9">
                          <property role="TrG5h" value="modules" />
                          <node concept="_YKpA" id="vgcurbA$BC" role="1tU5fm">
                            <node concept="3Tqbb2" id="vgcurbA$BF" role="_ZDj9">
                              <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="vgcurbA$BW" role="33vP2m">
                            <node concept="2OqwBi" id="vgcurbA$BX" role="2Oq$k0">
                              <node concept="37vLTw" id="vgcurbA$BY" role="2Oq$k0">
                                <ref role="3cqZAo" node="vgcurbAul$" resolve="bproj" />
                              </node>
                              <node concept="2Rf3mk" id="vgcurbA$BZ" role="2OqNvi">
                                <node concept="1xMEDy" id="vgcurbA$C0" role="1xVPHs">
                                  <node concept="chp4Y" id="vgcurbA$C1" role="ri$Ld">
                                    <ref role="cht4Q" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="ANE8D" id="vgcurbA$C2" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="1DcWWT" id="vgcurbA$Ty" role="3cqZAp">
                        <node concept="3clFbS" id="vgcurbA$T$" role="2LFqv$">
                          <node concept="SfApY" id="50RHf4RGiIR" role="3cqZAp">
                            <node concept="3clFbS" id="50RHf4RGiIS" role="SfCbr">
                              <node concept="3cpWs8" id="50RHf4RGXGr" role="3cqZAp">
                                <node concept="3cpWsn" id="50RHf4RGXGs" role="3cpWs9">
                                  <property role="TrG5h" value="visible" />
                                  <node concept="3uibUv" id="50RHf4RGXGt" role="1tU5fm">
                                    <ref role="3uigEE" to="tken:50RHf4RGVPk" resolve="VisibleModules" />
                                  </node>
                                  <node concept="2ShNRf" id="50RHf4RGXGv" role="33vP2m">
                                    <node concept="1pGfFk" id="50RHf4RGXGx" role="2ShVmc">
                                      <ref role="37wK5l" to="tken:50RHf4RGVPm" resolve="VisibleModules" />
                                      <node concept="37vLTw" id="vgcurbACAq" role="37wK5m">
                                        <ref role="3cqZAo" node="vgcurbAul$" resolve="bproj" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="50RHf4RGXGA" role="3cqZAp">
                                <node concept="2OqwBi" id="50RHf4RGXGQ" role="3clFbG">
                                  <node concept="37vLTw" id="3GM_nagTu5g" role="2Oq$k0">
                                    <ref role="3cqZAo" node="50RHf4RGXGs" resolve="visible" />
                                  </node>
                                  <node concept="liA8E" id="50RHf4RGXGV" role="2OqNvi">
                                    <ref role="37wK5l" to="tken:50RHf4RGXFc" resolve="collect" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="6tgFcy$Ah9a" role="3cqZAp">
                                <node concept="2OqwBi" id="6tgFcy$AhmV" role="3clFbG">
                                  <node concept="liA8E" id="6tgFcy$AhMd" role="2OqNvi">
                                    <ref role="37wK5l" to="tken:6m8wrPAZvU9" resolve="check" />
                                    <node concept="Rm8GO" id="6m8wrPD7zrM" role="37wK5m">
                                      <ref role="1Px2BO" to="tken:6m8wrPAZ5Tf" resolve="ModuleChecker.CheckType" />
                                      <ref role="Rm8GQ" to="tken:6m8wrPAZbkd" resolve="LOAD_IMPORTANT_PART" />
                                    </node>
                                  </node>
                                  <node concept="2YIFZM" id="6tgFcy$Ahbz" role="2Oq$k0">
                                    <ref role="37wK5l" to="tken:6tgFcy$_wKX" resolve="createModuleChecker" />
                                    <ref role="1Pybhc" to="tken:3HwLahs69DJ" resolve="ModuleLoader" />
                                    <node concept="37vLTw" id="vgcurbADdH" role="37wK5m">
                                      <ref role="3cqZAo" node="vgcurbA$TA" resolve="mod" />
                                    </node>
                                    <node concept="37vLTw" id="6tgFcy$AhbG" role="37wK5m">
                                      <ref role="3cqZAo" node="50RHf4RGXGs" resolve="visible" />
                                    </node>
                                    <node concept="37vLTw" id="6tgFcy$AhbP" role="37wK5m">
                                      <ref role="3cqZAo" node="2hkCNA7Z2nu" resolve="pathConverter" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="vgcurbADOM" role="3cqZAp" />
                            </node>
                            <node concept="TDmWw" id="50RHf4RGiIU" role="TEbGg">
                              <node concept="3cpWsn" id="50RHf4RGiIV" role="TDEfY">
                                <property role="TrG5h" value="ex" />
                                <node concept="3uibUv" id="6tgFcy$9fsK" role="1tU5fm">
                                  <ref role="3uigEE" to="tken:6tgFcyzWR3Q" resolve="ModuleLoaderException" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="50RHf4RGiIX" role="TDEfX">
                                <node concept="34ab3g" id="50RHf4RGvKZ" role="3cqZAp">
                                  <property role="35gtTG" value="error" />
                                  <property role="34fQS0" value="true" />
                                  <node concept="2OqwBi" id="50RHf4RGvLi" role="34bqiv">
                                    <node concept="37vLTw" id="3GM_nagTrgK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="50RHf4RGiIV" resolve="ex" />
                                    </node>
                                    <node concept="liA8E" id="50RHf4RGw41" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="3GM_nagTu0z" role="34bMjA">
                                    <ref role="3cqZAo" node="50RHf4RGiIV" resolve="ex" />
                                  </node>
                                </node>
                                <node concept="3zACq4" id="6DW_AMAz2l8" role="3cqZAp" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="vgcurbA$TA" role="1Duv9x">
                          <property role="TrG5h" value="mod" />
                          <node concept="3Tqbb2" id="vgcurbA$TE" role="1tU5fm">
                            <ref role="ehGHo" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="vgcurbA$TF" role="1DdaDG">
                          <ref role="3cqZAo" node="vgcurbA$BV" resolve="modules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="vgcurb_35e" role="ukAjM">
                    <node concept="2OqwBi" id="vgcurb_2Q_" role="2Oq$k0">
                      <node concept="2WthIp" id="vgcurb_2QC" role="2Oq$k0" />
                      <node concept="1DTwFV" id="vgcurb_2QE" role="2OqNvi">
                        <ref role="2WH_rO" node="1ouvi_zvvb" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="vgcurb_3zF" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="vgcurb_jTo" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5HWqn7opkZL" role="3cqZAp" />
        <node concept="3clFbF" id="5HWqn7opjBr" role="3cqZAp">
          <node concept="37vLTw" id="5HWqn7opjBp" role="3clFbG">
            <ref role="3cqZAo" node="5HWqn7op77Z" resolve="ok" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="7vU6U507dpO" role="3clF45" />
      <node concept="3Tm6S6" id="7vU6U507dmi" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="4KDfkUwMpaS" role="32lrUH">
      <property role="TrG5h" value="displayInfo" />
      <node concept="3cqZAl" id="4KDfkUwMpaT" role="3clF45" />
      <node concept="3clFbS" id="4KDfkUwMpaU" role="3clF47">
        <node concept="3cpWs8" id="4KDfkUwMpaV" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwMpaW" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="4KDfkUwMpaX" role="1tU5fm">
              <ref role="3uigEE" to="jkny:~IdeFrame" resolve="IdeFrame" />
            </node>
            <node concept="2OqwBi" id="4KDfkUwMpaY" role="33vP2m">
              <node concept="2YIFZM" id="4KDfkUwMpaZ" role="2Oq$k0">
                <ref role="1Pybhc" to="jkny:~WindowManager" resolve="WindowManager" />
                <ref role="37wK5l" to="jkny:~WindowManager.getInstance():com.intellij.openapi.wm.WindowManager" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="4KDfkUwMpb0" role="2OqNvi">
                <ref role="37wK5l" to="jkny:~WindowManager.getIdeFrame(com.intellij.openapi.project.Project):com.intellij.openapi.wm.IdeFrame" resolve="getIdeFrame" />
                <node concept="2OqwBi" id="4KDfkUwMpb1" role="37wK5m">
                  <node concept="2WthIp" id="4KDfkUwMpb2" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4KDfkUwMpb3" role="2OqNvi">
                    <ref role="2WH_rO" node="4KDfkUwMpc9" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4KDfkUwMpb4" role="3cqZAp">
          <node concept="3clFbS" id="4KDfkUwMpb5" role="3clFbx">
            <node concept="3clFbF" id="4KDfkUwMpb6" role="3cqZAp">
              <node concept="2OqwBi" id="4KDfkUwMpb7" role="3clFbG">
                <node concept="2OqwBi" id="4KDfkUwMpb8" role="2Oq$k0">
                  <node concept="37vLTw" id="3GM_nagTBYI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KDfkUwMpaW" resolve="frame" />
                  </node>
                  <node concept="liA8E" id="4KDfkUwMpba" role="2OqNvi">
                    <ref role="37wK5l" to="jkny:~IdeFrame.getStatusBar():com.intellij.openapi.wm.StatusBar" resolve="getStatusBar" />
                  </node>
                </node>
                <node concept="liA8E" id="4KDfkUwMpbb" role="2OqNvi">
                  <ref role="37wK5l" to="jkny:~StatusBarInfo.setInfo(java.lang.String):void" resolve="setInfo" />
                  <node concept="37vLTw" id="2BHiRxgm_$U" role="37wK5m">
                    <ref role="3cqZAo" node="4KDfkUwMpbh" resolve="info" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4KDfkUwMpbd" role="3clFbw">
            <node concept="10Nm6u" id="4KDfkUwMpbe" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTzON" role="3uHU7B">
              <ref role="3cqZAo" node="4KDfkUwMpaW" resolve="frame" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4KDfkUwMpbg" role="1B3o_S" />
      <node concept="37vLTG" id="4KDfkUwMpbh" role="3clF46">
        <property role="TrG5h" value="info" />
        <node concept="17QB3L" id="4KDfkUwMpbi" role="1tU5fm" />
      </node>
    </node>
    <node concept="1DS2jV" id="4KDfkUwMpc9" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="4KDfkUwMpca" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1ouvi_zvvb" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1ouvi_zvvc" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="7vU6U507fxQ" role="1NuT2Z">
      <property role="TrG5h" value="conf" />
      <node concept="3Tm6S6" id="7vU6U507fxR" role="1B3o_S" />
      <node concept="1oajcY" id="7vU6U507fxS" role="1oa70y" />
      <node concept="3Tqbb2" id="7vU6U507fr6" role="1tU5fm">
        <ref role="ehGHo" to="jjwj:2R6x4AnxQy5" resolve="TestProjectConfiguration" />
      </node>
    </node>
    <node concept="tnohg" id="7vU6U504Cn2" role="tncku">
      <node concept="3clFbS" id="7vU6U504Cn3" role="2VODD2">
        <node concept="3cpWs8" id="6DW_AMAxJ0m" role="3cqZAp">
          <node concept="3cpWsn" id="6DW_AMAxJ0n" role="3cpWs9">
            <property role="TrG5h" value="action" />
            <node concept="17QB3L" id="6DW_AMAxJ0l" role="1tU5fm" />
            <node concept="Xl_RD" id="6DW_AMAxJ0o" role="33vP2m">
              <property role="Xl_RC" value="Refresh Test Project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4KDfkUwMpbl" role="3cqZAp">
          <node concept="3cpWsn" id="4KDfkUwMpbm" role="3cpWs9">
            <property role="TrG5h" value="done" />
            <node concept="10P_77" id="4KDfkUwMpbn" role="1tU5fm" />
            <node concept="3clFbT" id="4KDfkUwMpbo" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwMpbp" role="3cqZAp">
          <node concept="2OqwBi" id="4KDfkUwMpbq" role="3clFbG">
            <node concept="2YIFZM" id="4KDfkUwMpbr" role="2Oq$k0">
              <ref role="1Pybhc" to="ddhc:~IdeEventQueue" resolve="IdeEventQueue" />
              <ref role="37wK5l" to="ddhc:~IdeEventQueue.getInstance():com.intellij.ide.IdeEventQueue" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4KDfkUwMpbs" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~IdeEventQueue.flushQueue():void" resolve="flushQueue" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4KDfkUwMpbt" role="3cqZAp">
          <node concept="2OqwBi" id="4KDfkUwMpbu" role="3clFbG">
            <node concept="2YIFZM" id="4KDfkUwMpbv" role="2Oq$k0">
              <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
              <ref role="37wK5l" to="xygl:~ProgressManager.getInstance():com.intellij.openapi.progress.ProgressManager" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="4KDfkUwMpbw" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~ProgressManager.runProcessWithProgressSynchronously(java.lang.Runnable,java.lang.String,boolean,com.intellij.openapi.project.Project):boolean" resolve="runProcessWithProgressSynchronously" />
              <node concept="1bVj0M" id="4KDfkUwMpbx" role="37wK5m">
                <node concept="3clFbS" id="4KDfkUwMpby" role="1bW5cS">
                  <node concept="3cpWs8" id="4KDfkUwMpbz" role="3cqZAp">
                    <node concept="3cpWsn" id="4KDfkUwMpb$" role="3cpWs9">
                      <property role="TrG5h" value="proInd" />
                      <node concept="3uibUv" id="4KDfkUwMpb_" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2OqwBi" id="4KDfkUwMpbA" role="33vP2m">
                        <node concept="2YIFZM" id="4KDfkUwMpbB" role="2Oq$k0">
                          <ref role="37wK5l" to="xygl:~ProgressManager.getInstance():com.intellij.openapi.progress.ProgressManager" resolve="getInstance" />
                          <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                        </node>
                        <node concept="liA8E" id="4KDfkUwMpbC" role="2OqNvi">
                          <ref role="37wK5l" to="xygl:~ProgressManager.getProgressIndicator():com.intellij.openapi.progress.ProgressIndicator" resolve="getProgressIndicator" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4KDfkUwMpbD" role="3cqZAp">
                    <node concept="2OqwBi" id="4KDfkUwMpbE" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTsb5" role="2Oq$k0">
                        <ref role="3cqZAo" node="4KDfkUwMpb$" resolve="proInd" />
                      </node>
                      <node concept="liA8E" id="4KDfkUwMpbG" role="2OqNvi">
                        <ref role="37wK5l" to="xygl:~ProgressIndicator.pushState():void" resolve="pushState" />
                      </node>
                    </node>
                  </node>
                  <node concept="2GUZhq" id="4KDfkUwMpbH" role="3cqZAp">
                    <node concept="TDmWw" id="vgcurb$RBJ" role="TEXxN">
                      <node concept="3cpWsn" id="vgcurb$RBK" role="TDEfY">
                        <property role="TrG5h" value="ex" />
                        <node concept="3uibUv" id="vgcurb$RKp" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="vgcurb$RBM" role="TDEfX">
                        <node concept="34ab3g" id="vgcurb$RYF" role="3cqZAp">
                          <property role="35gtTG" value="error" />
                          <property role="34fQS0" value="true" />
                          <node concept="Xl_RD" id="vgcurb$RYH" role="34bqiv">
                            <property role="Xl_RC" value="error processing test project" />
                          </node>
                          <node concept="37vLTw" id="vgcurb$RYJ" role="34bMjA">
                            <ref role="3cqZAo" node="vgcurb$RBK" resolve="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4KDfkUwMpbI" role="2GV8ay">
                      <node concept="3clFbF" id="4KDfkUwMpbJ" role="3cqZAp">
                        <node concept="37vLTI" id="4KDfkUwMpbK" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTsBc" role="37vLTJ">
                            <ref role="3cqZAo" node="4KDfkUwMpbm" resolve="done" />
                          </node>
                          <node concept="2OqwBi" id="4KDfkUwMpbM" role="37vLTx">
                            <node concept="2WthIp" id="4KDfkUwMpbN" role="2Oq$k0" />
                            <node concept="2XshWL" id="4KDfkUwMpbO" role="2OqNvi">
                              <ref role="2WH_rO" node="7vU6U507d58" resolve="doExecute" />
                              <node concept="37vLTw" id="3GM_nagTB7d" role="2XxRq1">
                                <ref role="3cqZAo" node="4KDfkUwMpb$" resolve="proInd" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="4KDfkUwMpbQ" role="2GVbov">
                      <node concept="3clFbF" id="4KDfkUwMpbR" role="3cqZAp">
                        <node concept="2OqwBi" id="4KDfkUwMpbS" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTvHU" role="2Oq$k0">
                            <ref role="3cqZAo" node="4KDfkUwMpb$" resolve="proInd" />
                          </node>
                          <node concept="liA8E" id="4KDfkUwMpbU" role="2OqNvi">
                            <ref role="37wK5l" to="xygl:~ProgressIndicator.popState():void" resolve="popState" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6DW_AMAxJno" role="37wK5m">
                <ref role="3cqZAo" node="6DW_AMAxJ0n" resolve="action" />
              </node>
              <node concept="3clFbT" id="4KDfkUwMpbW" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="4KDfkUwMpbX" role="37wK5m">
                <node concept="2WthIp" id="4KDfkUwMpbY" role="2Oq$k0" />
                <node concept="1DTwFV" id="4KDfkUwMpbZ" role="2OqNvi">
                  <ref role="2WH_rO" node="4KDfkUwMpc9" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4KDfkUwMpc0" role="3cqZAp">
          <node concept="3clFbS" id="4KDfkUwMpc1" role="3clFbx">
            <node concept="3clFbF" id="4KDfkUwMpc2" role="3cqZAp">
              <node concept="2OqwBi" id="4KDfkUwMpc3" role="3clFbG">
                <node concept="2WthIp" id="4KDfkUwMpc4" role="2Oq$k0" />
                <node concept="2XshWL" id="4KDfkUwMpc5" role="2OqNvi">
                  <ref role="2WH_rO" node="4KDfkUwMpaS" resolve="displayInfo" />
                  <node concept="3cpWs3" id="6DW_AMAxJGz" role="2XxRq1">
                    <node concept="37vLTw" id="6DW_AMAxJHI" role="3uHU7B">
                      <ref role="3cqZAo" node="6DW_AMAxJ0n" resolve="action" />
                    </node>
                    <node concept="Xl_RD" id="4KDfkUwMpc6" role="3uHU7w">
                      <property role="Xl_RC" value=" action cancelled" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4KDfkUwMpc7" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagT$jr" role="3fr31v">
              <ref role="3cqZAo" node="4KDfkUwMpbm" resolve="done" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7vU6U507fO7" role="tmbBb">
      <node concept="3clFbS" id="7vU6U507fO8" role="2VODD2">
        <node concept="3clFbF" id="7vU6U507gd1" role="3cqZAp">
          <node concept="2OqwBi" id="7vU6U507ggE" role="3clFbG">
            <node concept="2OqwBi" id="7vU6U507gcV" role="2Oq$k0">
              <node concept="2WthIp" id="7vU6U507gcY" role="2Oq$k0" />
              <node concept="3gHZIF" id="7vU6U507gd0" role="2OqNvi">
                <ref role="2WH_rO" node="7vU6U507fxQ" resolve="conf" />
              </node>
            </node>
            <node concept="1mIQ4w" id="7vU6U507gt5" role="2OqNvi">
              <node concept="chp4Y" id="7vU6U507gQh" role="cj9EA">
                <ref role="cht4Q" to="jjwj:2R6x4AnxQy5" resolve="TestProjectConfiguration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7vU6U504Cne">
    <property role="TrG5h" value="TestBuildProject" />
    <node concept="ftmFs" id="7vU6U504Cng" role="ftER_">
      <node concept="tCFHf" id="7vU6U506AoK" role="ftvYc">
        <ref role="tCJdB" node="7vU6U504Cn1" resolve="RefreshTestProject" />
      </node>
    </node>
    <node concept="tT9cl" id="7vU6U506AoM" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:28s6IYZxj4I" resolve="showGeneratedText" />
    </node>
  </node>
  <node concept="312cEu" id="7vU6U504CTS">
    <property role="TrG5h" value="TestModuleBuildProjectTemplate" />
    <node concept="2tJIrI" id="7vU6U504CUa" role="jymVt" />
    <node concept="3clFbW" id="7vU6U507CVm" role="jymVt">
      <node concept="37vLTG" id="7vU6U507DaS" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7vU6U507Dnp" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="7vU6U507DdZ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="H_c77" id="7vU6U507Dk9" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7vU6U507CVo" role="3clF45" />
      <node concept="3Tm1VV" id="7vU6U507CVp" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U507CVq" role="3clF47">
        <node concept="3clFbF" id="7vU6U507DnC" role="3cqZAp">
          <node concept="37vLTI" id="7vU6U507DnE" role="3clFbG">
            <node concept="2OqwBi" id="7vU6U507DnI" role="37vLTJ">
              <node concept="Xjq3P" id="7vU6U507DnL" role="2Oq$k0" />
              <node concept="2OwXpG" id="7vU6U507DnH" role="2OqNvi">
                <ref role="2Oxat5" node="7vU6U507Dn$" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="7vU6U507DnM" role="37vLTx">
              <ref role="3cqZAo" node="7vU6U507DaS" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vU6U507DC4" role="3cqZAp">
          <node concept="37vLTI" id="7vU6U507DC6" role="3clFbG">
            <node concept="2OqwBi" id="7vU6U507DCa" role="37vLTJ">
              <node concept="Xjq3P" id="7vU6U507DCd" role="2Oq$k0" />
              <node concept="2OwXpG" id="7vU6U507DC9" role="2OqNvi">
                <ref role="2Oxat5" node="7vU6U507DC0" resolve="target" />
              </node>
            </node>
            <node concept="37vLTw" id="7vU6U507DCe" role="37vLTx">
              <ref role="3cqZAo" node="7vU6U507DdZ" resolve="target" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U504CUf" role="jymVt" />
    <node concept="3clFb_" id="7vU6U504DaD" role="jymVt">
      <property role="TrG5h" value="createBuildProject" />
      <node concept="37vLTG" id="6DW_AMAxPO9" role="3clF46">
        <property role="TrG5h" value="conf" />
        <node concept="3Tqbb2" id="6DW_AMAxRzj" role="1tU5fm">
          <ref role="ehGHo" to="jjwj:2R6x4AnxQy5" resolve="TestProjectConfiguration" />
        </node>
      </node>
      <node concept="37vLTG" id="7vU6U505bu4" role="3clF46">
        <property role="TrG5h" value="tmms" />
        <node concept="2I9FWS" id="6DW_AMAxO3R" role="1tU5fm">
          <ref role="2I9WkF" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7vU6U504DaG" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U504DaH" role="3clF47">
        <node concept="3cpWs8" id="7vU6U505TO0" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U505TO3" role="3cpWs9">
            <property role="TrG5h" value="languageElements" />
            <node concept="2I9FWS" id="7vU6U505TNY" role="1tU5fm">
              <ref role="2I9WkF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vU6U505UAW" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U505UAX" role="3cpWs9">
            <property role="TrG5h" value="testsElements" />
            <node concept="2I9FWS" id="7vU6U505UAY" role="1tU5fm">
              <ref role="2I9WkF" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vU6U506hV1" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U506hV4" role="3cpWs9">
            <property role="TrG5h" value="testGroup" />
            <node concept="3Tqbb2" id="7vU6U506hUZ" role="1tU5fm">
              <ref role="ehGHo" to="5tjl:3X9rC2XzJdF" resolve="BuildMpsLayout_TestModuleGroup" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U506gbP" role="3cqZAp" />
        <node concept="3cpWs8" id="7vU6U506kQ0" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U506kQ1" role="3cpWs9">
            <property role="TrG5h" value="root" />
            <node concept="3Tqbb2" id="7vU6U506kPj" role="1tU5fm">
              <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
            </node>
            <node concept="2c44tf" id="7vU6U506kQ2" role="33vP2m">
              <node concept="1l3spW" id="7vU6U506kQ3" role="2c44tc">
                <property role="2DA0ip" value="../../../../" />
                <property role="TrG5h" value="test" />
                <property role="turDy" value="test.xml" />
                <node concept="2_Ic$z" id="7vU6U506kQ4" role="3989C9">
                  <property role="2_Ic$$" value="true" />
                  <property role="2_Ic$B" value="true" />
                  <property role="3fwGa$" value="IntelliJ" />
                  <property role="2_GNG2" value="1024" />
                  <property role="TZNOO" value="1.6" />
                  <node concept="3qWCbU" id="7vU6U506kQ5" role="2_Ic$A">
                    <property role="3qWCbO" value="**/*.properties, **/*.xml, **/*.html, **/*.png, **/*.txt, **/*.ico, **/*.zip, **/*.info" />
                  </node>
                </node>
                <node concept="2G$12M" id="7vU6U506kQ6" role="3989C9">
                  <property role="TrG5h" value="test-languages" />
                  <node concept="2EMmih" id="7vU6U506kQ7" role="lGtFl">
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <property role="2qtEX9" value="name" />
                    <node concept="3cpWs3" id="7vU6U506kQ8" role="2c44t1">
                      <node concept="Xl_RD" id="7vU6U506kQ9" role="3uHU7w">
                        <property role="Xl_RC" value="-test-languages" />
                      </node>
                      <node concept="2OqwBi" id="7vU6U506kQa" role="3uHU7B">
                        <node concept="37vLTw" id="6DW_AMAxRI3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DW_AMAxPO9" resolve="conf" />
                        </node>
                        <node concept="3TrcHB" id="7vU6U506kQc" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1E1JtD" id="6DW_AMAwfm5" role="2G$12L">
                    <property role="BnDLt" value="true" />
                    <property role="TrG5h" value="lang1" />
                    <property role="3LESm3" value="12345" />
                    <node concept="55IIr" id="6DW_AMAwfm8" role="3LF7KH" />
                    <node concept="2c44t8" id="6DW_AMAwozW" role="lGtFl">
                      <node concept="1eOMI4" id="6DW_AMAwfs2" role="2c44t1">
                        <node concept="37vLTI" id="6DW_AMAwfs3" role="1eOMHV">
                          <node concept="37vLTw" id="6DW_AMAwfs4" role="37vLTJ">
                            <ref role="3cqZAo" node="7vU6U505TO3" resolve="languageElements" />
                          </node>
                          <node concept="1rXfSq" id="6DW_AMAwfs5" role="37vLTx">
                            <ref role="37wK5l" node="7vU6U504Mti" resolve="createLanguageElements" />
                            <node concept="37vLTw" id="6DW_AMAwfs6" role="37wK5m">
                              <ref role="3cqZAo" node="7vU6U505bu4" resolve="tmms" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2G$12M" id="7vU6U506kQn" role="3989C9">
                  <property role="TrG5h" value="tests" />
                  <node concept="2EMmih" id="7vU6U506kQo" role="lGtFl">
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <property role="2qtEX9" value="name" />
                    <node concept="3cpWs3" id="7vU6U506kQp" role="2c44t1">
                      <node concept="Xl_RD" id="7vU6U506kQq" role="3uHU7w">
                        <property role="Xl_RC" value="-tests" />
                      </node>
                      <node concept="2OqwBi" id="7vU6U506kQr" role="3uHU7B">
                        <node concept="37vLTw" id="6DW_AMAxRNw" role="2Oq$k0">
                          <ref role="3cqZAo" node="6DW_AMAxPO9" resolve="conf" />
                        </node>
                        <node concept="3TrcHB" id="7vU6U506kQt" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1E1JtA" id="6DW_AMAwgYa" role="2G$12L">
                    <property role="BnDLt" value="true" />
                    <property role="TrG5h" value="solution1" />
                    <property role="3LESm3" value="54321" />
                    <node concept="55IIr" id="6DW_AMAwgYd" role="3LF7KH" />
                    <node concept="2c44t8" id="6DW_AMAwyP1" role="lGtFl">
                      <node concept="1eOMI4" id="6DW_AMAwh47" role="2c44t1">
                        <node concept="37vLTI" id="6DW_AMAwh48" role="1eOMHV">
                          <node concept="37vLTw" id="6DW_AMAwh49" role="37vLTJ">
                            <ref role="3cqZAo" node="7vU6U505UAX" resolve="testsElements" />
                          </node>
                          <node concept="1rXfSq" id="6DW_AMAwh4a" role="37vLTx">
                            <ref role="37wK5l" node="7vU6U505wtq" resolve="createTestElements" />
                            <node concept="37vLTw" id="6DW_AMAwh4b" role="37wK5m">
                              <ref role="3cqZAo" node="7vU6U505bu4" resolve="tmms" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="13uUGR" id="7vU6U506kQC" role="1l3spa">
                  <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
                  <node concept="398BVA" id="7vU6U506kQD" role="13uUGP">
                    <ref role="398BVh" node="7vU6U506kQH" resolve="idea_home" />
                  </node>
                </node>
                <node concept="2sgV4H" id="7vU6U506kQE" role="1l3spa">
                  <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
                  <node concept="398BVA" id="7vU6U506kQF" role="2JcizS">
                    <ref role="398BVh" node="7vU6U506kQG" resolve="mps_home" />
                  </node>
                </node>
                <node concept="398rNT" id="7vU6U506kQG" role="1l3spd">
                  <property role="TrG5h" value="mps_home" />
                </node>
                <node concept="398rNT" id="7vU6U506kQH" role="1l3spd">
                  <property role="TrG5h" value="idea_home" />
                  <node concept="398BVA" id="7vU6U506kQI" role="398pKh">
                    <ref role="398BVh" node="7vU6U506kQG" resolve="mps_home" />
                  </node>
                </node>
                <node concept="10PD9b" id="7vU6U506kQJ" role="10PD9s" />
                <node concept="3b7kt6" id="7vU6U506kQK" role="10PD9s" />
                <node concept="1gjT0q" id="7vU6U506kQL" role="10PD9s" />
                <node concept="1l3spV" id="7vU6U506kQN" role="1l3spN">
                  <node concept="398223" id="7vU6U506kQO" role="39821P">
                    <node concept="3_J27D" id="7vU6U506kQP" role="Nbhlr">
                      <node concept="3Mxwew" id="7vU6U506kQQ" role="3MwsjC">
                        <property role="3MwjfP" value="languages" />
                      </node>
                    </node>
                    <node concept="L2wRC" id="7vU6U506kQR" role="39821P">
                      <node concept="2c44t8" id="7vU6U506kQS" role="lGtFl">
                        <node concept="1rXfSq" id="7vU6U506kQT" role="2c44t1">
                          <ref role="37wK5l" node="7vU6U505Sgn" resolve="createLanguageFolderElements" />
                          <node concept="37vLTw" id="7vU6U506kQU" role="37wK5m">
                            <ref role="3cqZAo" node="7vU6U505TO3" resolve="languageElements" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="398223" id="7vU6U506kQW" role="39821P">
                    <node concept="3_J27D" id="7vU6U506kQX" role="Nbhlr">
                      <node concept="3Mxwew" id="7vU6U506kQY" role="3MwsjC">
                        <property role="3MwjfP" value="tests" />
                      </node>
                    </node>
                    <node concept="L2wRC" id="7vU6U506kQZ" role="39821P">
                      <node concept="2c44t8" id="7vU6U506kR0" role="lGtFl">
                        <node concept="1rXfSq" id="7vU6U506kR1" role="2c44t1">
                          <ref role="37wK5l" node="7vU6U5067tw" resolve="createTestFolderElements" />
                          <node concept="37vLTw" id="7vU6U506kR2" role="37wK5m">
                            <ref role="3cqZAo" node="7vU6U505UAX" resolve="testsElements" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EMmih" id="7vU6U506kR4" role="lGtFl">
                  <property role="P4ACc" value="798100da-4f0a-421a-b991-71f8c50ce5d2/5617550519002745363/4915877860348071612" />
                  <property role="2qtEX9" value="fileName" />
                  <node concept="3cpWs3" id="7vU6U506kR5" role="2c44t1">
                    <node concept="Xl_RD" id="7vU6U506kR6" role="3uHU7w">
                      <property role="Xl_RC" value=".xml" />
                    </node>
                    <node concept="2OqwBi" id="7vU6U506kR7" role="3uHU7B">
                      <node concept="37vLTw" id="6DW_AMAxRD_" role="2Oq$k0">
                        <ref role="3cqZAo" node="6DW_AMAxPO9" resolve="conf" />
                      </node>
                      <node concept="3TrcHB" id="7vU6U506kR9" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2igEWh" id="4KSZR7W9qAL" role="1hWBAP">
                  <property role="2igJW4" value="true" />
                </node>
                <node concept="22LTRH" id="7vU6U506kRa" role="1hWBAP">
                  <property role="TrG5h" value="test" />
                  <node concept="22LTRL" id="7vU6U506kRb" role="22LTRK">
                    <node concept="2c44te" id="7vU6U506kRc" role="lGtFl">
                      <node concept="1eOMI4" id="7vU6U506kRd" role="2c44t1">
                        <node concept="37vLTI" id="7vU6U506kRe" role="1eOMHV">
                          <node concept="1rXfSq" id="7vU6U506kRf" role="37vLTx">
                            <ref role="37wK5l" node="7vU6U506iAy" resolve="createTestModuleGroup" />
                          </node>
                          <node concept="37vLTw" id="7vU6U506kRh" role="37vLTJ">
                            <ref role="3cqZAo" node="7vU6U506hV4" resolve="testGroup" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2EMmih" id="7vU6U506kRi" role="lGtFl">
                    <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                    <property role="2qtEX9" value="name" />
                    <node concept="2OqwBi" id="7vU6U506kRj" role="2c44t1">
                      <node concept="37vLTw" id="6DW_AMAxUUB" role="2Oq$k0">
                        <ref role="3cqZAo" node="6DW_AMAxPO9" resolve="conf" />
                      </node>
                      <node concept="3TrcHB" id="7vU6U506kRl" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2EMmih" id="vgcurbBqrq" role="lGtFl">
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <property role="2qtEX9" value="name" />
                  <node concept="2OqwBi" id="vgcurbBqRk" role="2c44t1">
                    <node concept="37vLTw" id="6DW_AMAxRAH" role="2Oq$k0">
                      <ref role="3cqZAo" node="6DW_AMAxPO9" resolve="conf" />
                    </node>
                    <node concept="3TrcHB" id="vgcurbBqZI" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="55IIr" id="53PdBITeUcM" role="auvoZ">
                  <node concept="2Ry0Ak" id="53PdBITeUcN" role="iGT6I">
                    <property role="2Ry0Am" value="build" />
                    <node concept="2Ry0Ak" id="6DW_AMABfBy" role="2Ry0An">
                      <property role="2Ry0Am" value="testModules" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U506lc9" role="3cqZAp" />
        <node concept="3clFbF" id="7vU6U508a0z" role="3cqZAp">
          <node concept="2OqwBi" id="7vU6U508a7v" role="3clFbG">
            <node concept="37vLTw" id="7vU6U508a0x" role="2Oq$k0">
              <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
            </node>
            <node concept="3BYIHo" id="7vU6U508aeI" role="2OqNvi">
              <node concept="1rXfSq" id="7vU6U508ahj" role="3BYIHq">
                <ref role="37wK5l" node="7vU6U506u8b" resolve="updateReferences" />
                <node concept="37vLTw" id="7vU6U508ahk" role="37wK5m">
                  <ref role="3cqZAo" node="7vU6U506kQ1" resolve="root" />
                </node>
                <node concept="37vLTw" id="7vU6U508ahl" role="37wK5m">
                  <ref role="3cqZAo" node="7vU6U506hV4" resolve="testGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="vgcurbArbH" role="3clF45">
        <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U504LaN" role="jymVt" />
    <node concept="3clFb_" id="7vU6U504Mti" role="jymVt">
      <property role="TrG5h" value="createLanguageElements" />
      <node concept="2I9FWS" id="7vU6U50533i" role="3clF45">
        <ref role="2I9WkF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
      </node>
      <node concept="3Tm6S6" id="7vU6U505b0D" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U504Mtm" role="3clF47">
        <node concept="3cpWs8" id="1w$c60CMRJc" role="3cqZAp">
          <node concept="3cpWsn" id="1w$c60CMRJd" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="1w$c60CMRJ7" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="1w$c60CMRJe" role="33vP2m">
              <node concept="37vLTw" id="7vU6U504QB_" role="2Oq$k0">
                <ref role="3cqZAo" node="7vU6U507Dn$" resolve="project" />
              </node>
              <node concept="liA8E" id="1w$c60CMRJk" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getProjectFile():java.io.File" resolve="getProjectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vU6U502$mf" role="3cqZAp">
          <node concept="3clFbS" id="7vU6U502$mg" role="3clFbx">
            <node concept="34ab3g" id="7vU6U505ua4" role="3cqZAp">
              <property role="35gtTG" value="error" />
              <node concept="Xl_RD" id="7vU6U505ua6" role="34bqiv">
                <property role="Xl_RC" value="project file is null" />
              </node>
            </node>
            <node concept="3cpWs6" id="7vU6U502$mm" role="3cqZAp">
              <node concept="10Nm6u" id="7vU6U505uBK" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7vU6U502$mn" role="3clFbw">
            <node concept="10Nm6u" id="7vU6U502$mo" role="3uHU7w" />
            <node concept="37vLTw" id="7vU6U502$mp" role="3uHU7B">
              <ref role="3cqZAo" node="1w$c60CMRJd" resolve="projectFile" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vU6U504NKQ" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U504NKT" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="7vU6U504NKO" role="1tU5fm">
              <ref role="2I9WkF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
            </node>
            <node concept="2ShNRf" id="7vU6U504NPq" role="33vP2m">
              <node concept="2T8Vx0" id="7vU6U504NPj" role="2ShVmc">
                <node concept="2I9FWS" id="7vU6U504NPk" role="2T96Bj">
                  <ref role="2I9WkF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U504NPG" role="3cqZAp" />
        <node concept="1DcWWT" id="6DW_AMAy266" role="3cqZAp">
          <node concept="3clFbS" id="6DW_AMAy268" role="2LFqv$">
            <node concept="3cpWs8" id="7vU6U504Nsk" role="3cqZAp">
              <node concept="3cpWsn" id="7vU6U504Nsl" role="3cpWs9">
                <property role="TrG5h" value="triples" />
                <node concept="_YKpA" id="7vU6U504NrQ" role="1tU5fm">
                  <node concept="1LlUBW" id="7vU6U504Ns1" role="_ZDj9">
                    <node concept="17QB3L" id="7vU6U504Ns2" role="1Lm7xW" />
                    <node concept="17QB3L" id="7vU6U504Ns3" role="1Lm7xW" />
                    <node concept="17QB3L" id="vgcurbA2KB" role="1Lm7xW" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7vU6U504Nsm" role="33vP2m">
                  <node concept="37vLTw" id="7vU6U504Nsn" role="2Oq$k0">
                    <ref role="3cqZAo" node="6DW_AMAy26a" resolve="testManifest" />
                  </node>
                  <node concept="2qgKlT" id="7vU6U504Nso" role="2OqNvi">
                    <ref role="37wK5l" to="byr9:2R6x4AnylYu" resolve="languagesToInclude" />
                    <node concept="37vLTw" id="7vU6U504Nsp" role="37wK5m">
                      <ref role="3cqZAo" node="7vU6U507Dn$" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="vgcurb_yBi" role="3cqZAp" />
            <node concept="1DcWWT" id="7vU6U504OPj" role="3cqZAp">
              <node concept="3clFbS" id="7vU6U504OPl" role="2LFqv$">
                <node concept="3cpWs8" id="7vU6U504Ot4" role="3cqZAp">
                  <node concept="3cpWsn" id="7vU6U504Ot5" role="3cpWs9">
                    <property role="TrG5h" value="la" />
                    <node concept="3Tqbb2" id="7vU6U504Ot1" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
                    </node>
                    <node concept="2OqwBi" id="7vU6U504Ot6" role="33vP2m">
                      <node concept="37vLTw" id="7vU6U507KR5" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                      </node>
                      <node concept="I8ghe" id="7vU6U504Ot8" role="2OqNvi">
                        <ref role="I8UWU" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2R6x4An$0aZ" role="3cqZAp">
                  <node concept="2OqwBi" id="2R6x4An$0Zz" role="3clFbG">
                    <node concept="2OqwBi" id="2R6x4An$0bS" role="2Oq$k0">
                      <node concept="37vLTw" id="2R6x4An$0aX" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U504Ot5" resolve="la" />
                      </node>
                      <node concept="3TrcHB" id="2R6x4An$0EH" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="2R6x4An$1f1" role="2OqNvi">
                      <node concept="1LFfDK" id="2R6x4An$1og" role="tz02z">
                        <node concept="3cmrfG" id="2R6x4An$1oK" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7vU6U505arh" role="1LFl5Q">
                          <ref role="3cqZAo" node="7vU6U504OPn" resolve="t" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="SfApY" id="1w$c60CEqV4" role="3cqZAp">
                  <node concept="3clFbS" id="1w$c60CEqV6" role="SfCbr">
                    <node concept="3cpWs8" id="2R6x4An$gnl" role="3cqZAp">
                      <node concept="3cpWsn" id="2R6x4An$gnm" role="3cpWs9">
                        <property role="TrG5h" value="path" />
                        <node concept="3Tqbb2" id="1w$c60CMTfu" role="1tU5fm">
                          <ref role="ehGHo" to="3ior:6mpuAlRavrV" resolve="BuildRelativePath" />
                        </node>
                        <node concept="2YIFZM" id="1w$c60CMPGj" role="33vP2m">
                          <ref role="37wK5l" to="tken:1w$c60CLQYU" resolve="createRelative" />
                          <ref role="1Pybhc" to="tken:2hkCNA7Z0MW" resolve="PathConverter" />
                          <node concept="2OqwBi" id="1w$c60CMSfT" role="37wK5m">
                            <node concept="37vLTw" id="1w$c60CMS3H" role="2Oq$k0">
                              <ref role="3cqZAo" node="1w$c60CMRJd" resolve="projectFile" />
                            </node>
                            <node concept="liA8E" id="1w$c60CMSO1" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.getPath():java.lang.String" resolve="getPath" />
                            </node>
                          </node>
                          <node concept="1LFfDK" id="1w$c60CMQOJ" role="37wK5m">
                            <node concept="3cmrfG" id="1w$c60CMQOU" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="1w$c60CMQDs" role="1LFl5Q">
                              <ref role="3cqZAo" node="7vU6U504OPn" resolve="t" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7vU6U507KW7" role="37wK5m">
                            <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2R6x4An$f2o" role="3cqZAp">
                      <node concept="2OqwBi" id="2R6x4An$fQu" role="3clFbG">
                        <node concept="2OqwBi" id="2R6x4An$f5V" role="2Oq$k0">
                          <node concept="37vLTw" id="2R6x4An$f2m" role="2Oq$k0">
                            <ref role="3cqZAo" node="7vU6U504Ot5" resolve="la" />
                          </node>
                          <node concept="3TrEf2" id="2R6x4An$flt" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                          </node>
                        </node>
                        <node concept="2oxUTD" id="2R6x4An$gf3" role="2OqNvi">
                          <node concept="37vLTw" id="2R6x4An$gxT" role="2oxUTC">
                            <ref role="3cqZAo" node="2R6x4An$gnm" resolve="path" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="vgcurbA9Rx" role="3cqZAp">
                      <node concept="2OqwBi" id="vgcurbAaXS" role="3clFbG">
                        <node concept="2OqwBi" id="vgcurbA9WW" role="2Oq$k0">
                          <node concept="37vLTw" id="vgcurbA9Rv" role="2Oq$k0">
                            <ref role="3cqZAo" node="7vU6U504Ot5" resolve="la" />
                          </node>
                          <node concept="3TrcHB" id="vgcurbAaz9" role="2OqNvi">
                            <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
                          </node>
                        </node>
                        <node concept="tyxLq" id="vgcurbAbi9" role="2OqNvi">
                          <node concept="1LFfDK" id="vgcurbAb$f" role="tz02z">
                            <node concept="3cmrfG" id="vgcurbAbA3" role="1LF_Uc">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="37vLTw" id="vgcurbAbr8" role="1LFl5Q">
                              <ref role="3cqZAo" node="7vU6U504OPn" resolve="t" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="vgcurbAbjF" role="3cqZAp" />
                    <node concept="3clFbF" id="vgcurb_Cck" role="3cqZAp">
                      <node concept="2OqwBi" id="vgcurb_DaC" role="3clFbG">
                        <node concept="37vLTw" id="vgcurb_Cci" role="2Oq$k0">
                          <ref role="3cqZAo" node="7vU6U504NKT" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="vgcurb_IxS" role="2OqNvi">
                          <node concept="37vLTw" id="vgcurb_ICB" role="25WWJ7">
                            <ref role="3cqZAo" node="7vU6U504Ot5" resolve="la" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="TDmWw" id="1w$c60CEqV7" role="TEbGg">
                    <node concept="3cpWsn" id="1w$c60CEqV9" role="TDEfY">
                      <property role="TrG5h" value="ex" />
                      <node concept="3uibUv" id="1w$c60CErjE" role="1tU5fm">
                        <ref role="3uigEE" to="tken:2hkCNA7Z0QY" resolve="PathConverter.PathConvertException" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1w$c60CEqVd" role="TDEfX">
                      <node concept="34ab3g" id="7vU6U505snW" role="3cqZAp">
                        <property role="35gtTG" value="error" />
                        <property role="34fQS0" value="true" />
                        <node concept="37vLTw" id="7vU6U505so0" role="34bMjA">
                          <ref role="3cqZAo" node="1w$c60CEqV9" resolve="ex" />
                        </node>
                        <node concept="Xl_RD" id="7vU6U505sph" role="34bqiv">
                          <property role="Xl_RC" value="path converter threw exception" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="7vU6U505suF" role="3cqZAp">
                        <node concept="10Nm6u" id="7vU6U505sTM" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7vU6U504OPn" role="1Duv9x">
                <property role="TrG5h" value="t" />
                <node concept="1LlUBW" id="7vU6U504OPr" role="1tU5fm">
                  <node concept="17QB3L" id="7vU6U504OPs" role="1Lm7xW" />
                  <node concept="17QB3L" id="7vU6U504OPt" role="1Lm7xW" />
                  <node concept="17QB3L" id="vgcurbA8ND" role="1Lm7xW" />
                </node>
              </node>
              <node concept="37vLTw" id="7vU6U504OPu" role="1DdaDG">
                <ref role="3cqZAo" node="7vU6U504Nsl" resolve="triples" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6DW_AMAy26a" role="1Duv9x">
            <property role="TrG5h" value="testManifest" />
            <node concept="3Tqbb2" id="6DW_AMAyoNg" role="1tU5fm">
              <ref role="ehGHo" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
            </node>
          </node>
          <node concept="37vLTw" id="6DW_AMAyg4M" role="1DdaDG">
            <ref role="3cqZAo" node="6DW_AMAydH7" resolve="tmms" />
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U5052uY" role="3cqZAp" />
        <node concept="3clFbF" id="7vU6U5051xw" role="3cqZAp">
          <node concept="37vLTw" id="7vU6U5051xu" role="3clFbG">
            <ref role="3cqZAo" node="7vU6U504NKT" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6DW_AMAydH7" role="3clF46">
        <property role="TrG5h" value="tmms" />
        <node concept="2I9FWS" id="6DW_AMAydH6" role="1tU5fm">
          <ref role="2I9WkF" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U505x4T" role="jymVt" />
    <node concept="3clFb_" id="7vU6U505wtq" role="jymVt">
      <property role="TrG5h" value="createTestElements" />
      <node concept="37vLTG" id="6DW_AMAyE4H" role="3clF46">
        <property role="TrG5h" value="tmms" />
        <node concept="2I9FWS" id="6DW_AMAyFGW" role="1tU5fm">
          <ref role="2I9WkF" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
        </node>
      </node>
      <node concept="2I9FWS" id="7vU6U505wtx" role="3clF45">
        <ref role="2I9WkF" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
      </node>
      <node concept="3Tm6S6" id="7vU6U505wty" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U505wtz" role="3clF47">
        <node concept="3cpWs8" id="7vU6U505wt$" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U505wt_" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="7vU6U505wtA" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="7vU6U505wtB" role="33vP2m">
              <node concept="37vLTw" id="7vU6U505wtC" role="2Oq$k0">
                <ref role="3cqZAo" node="7vU6U507Dn$" resolve="project" />
              </node>
              <node concept="liA8E" id="7vU6U505wtD" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getProjectFile():java.io.File" resolve="getProjectFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7vU6U505wtE" role="3cqZAp">
          <node concept="3clFbS" id="7vU6U505wtF" role="3clFbx">
            <node concept="34ab3g" id="7vU6U505wtG" role="3cqZAp">
              <property role="35gtTG" value="error" />
              <node concept="Xl_RD" id="7vU6U505wtH" role="34bqiv">
                <property role="Xl_RC" value="project file is null" />
              </node>
            </node>
            <node concept="3cpWs6" id="7vU6U505wtI" role="3cqZAp">
              <node concept="10Nm6u" id="7vU6U505wtJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="7vU6U505wtK" role="3clFbw">
            <node concept="10Nm6u" id="7vU6U505wtL" role="3uHU7w" />
            <node concept="37vLTw" id="7vU6U505wtM" role="3uHU7B">
              <ref role="3cqZAo" node="7vU6U505wt_" resolve="projectFile" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7vU6U505wtN" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U505wtO" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="7vU6U505wtP" role="1tU5fm">
              <ref role="2I9WkF" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
            </node>
            <node concept="2ShNRf" id="7vU6U505wtQ" role="33vP2m">
              <node concept="2T8Vx0" id="7vU6U505wtR" role="2ShVmc">
                <node concept="2I9FWS" id="7vU6U505wtS" role="2T96Bj">
                  <ref role="2I9WkF" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U505wtT" role="3cqZAp" />
        <node concept="1DcWWT" id="6DW_AMAyBWq" role="3cqZAp">
          <node concept="3clFbS" id="6DW_AMAyBWs" role="2LFqv$">
            <node concept="3cpWs8" id="7vU6U505wtU" role="3cqZAp">
              <node concept="3cpWsn" id="7vU6U505wtV" role="3cpWs9">
                <property role="TrG5h" value="triples" />
                <node concept="_YKpA" id="7vU6U505wtW" role="1tU5fm">
                  <node concept="1LlUBW" id="7vU6U505wtX" role="_ZDj9">
                    <node concept="17QB3L" id="7vU6U505wtY" role="1Lm7xW" />
                    <node concept="17QB3L" id="7vU6U505wtZ" role="1Lm7xW" />
                    <node concept="17QB3L" id="vgcurbAceg" role="1Lm7xW" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7vU6U505wu0" role="33vP2m">
                  <node concept="37vLTw" id="7vU6U505wu1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6DW_AMAyBWt" resolve="testManifest" />
                  </node>
                  <node concept="2qgKlT" id="7vU6U505wu2" role="2OqNvi">
                    <ref role="37wK5l" to="byr9:7vU6U5026IG" resolve="testModulesToInclude" />
                    <node concept="37vLTw" id="7vU6U505wu3" role="37wK5m">
                      <ref role="3cqZAo" node="7vU6U507Dn$" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="7vU6U505wu4" role="3cqZAp">
              <node concept="3clFbS" id="7vU6U505wu5" role="2LFqv$">
                <node concept="3cpWs8" id="7vU6U505wu6" role="3cqZAp">
                  <node concept="3cpWsn" id="7vU6U505wu7" role="3cpWs9">
                    <property role="TrG5h" value="sol" />
                    <node concept="3Tqbb2" id="7vU6U505wu8" role="1tU5fm">
                      <ref role="ehGHo" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
                    </node>
                    <node concept="2OqwBi" id="7vU6U505wu9" role="33vP2m">
                      <node concept="37vLTw" id="7vU6U507PDY" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                      </node>
                      <node concept="I8ghe" id="7vU6U505wub" role="2OqNvi">
                        <ref role="I8UWU" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7vU6U505wuc" role="3cqZAp">
                  <node concept="2OqwBi" id="7vU6U505wud" role="3clFbG">
                    <node concept="2OqwBi" id="7vU6U505wue" role="2Oq$k0">
                      <node concept="37vLTw" id="7vU6U505wuf" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U505wu7" resolve="sol" />
                      </node>
                      <node concept="3TrcHB" id="7vU6U505wug" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="7vU6U505wuh" role="2OqNvi">
                      <node concept="1LFfDK" id="7vU6U505wui" role="tz02z">
                        <node concept="3cmrfG" id="7vU6U505wuj" role="1LF_Uc">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="37vLTw" id="7vU6U505wuk" role="1LFl5Q">
                          <ref role="3cqZAo" node="7vU6U505wuN" resolve="t" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="vgcurbAihJ" role="3cqZAp">
                  <node concept="2OqwBi" id="vgcurbAkIL" role="3clFbG">
                    <node concept="2OqwBi" id="vgcurbAjHL" role="2Oq$k0">
                      <node concept="37vLTw" id="vgcurbAihH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U505wu7" resolve="sol" />
                      </node>
                      <node concept="3TrcHB" id="vgcurbAkfJ" role="2OqNvi">
                        <ref role="3TsBF5" to="kdzh:hS0KzPOSqb" resolve="uuid" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="vgcurbAl32" role="2OqNvi">
                      <node concept="1LFfDK" id="vgcurbAlfR" role="tz02z">
                        <node concept="3cmrfG" id="vgcurbAlhF" role="1LF_Uc">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="37vLTw" id="vgcurbAl6K" role="1LFl5Q">
                          <ref role="3cqZAo" node="7vU6U505wuN" resolve="t" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="vgcurbAlky" role="3cqZAp" />
                <node concept="3clFbF" id="7vU6U50393J" role="3cqZAp">
                  <node concept="2OqwBi" id="7vU6U503eib" role="3clFbG">
                    <node concept="2OqwBi" id="7vU6U5039bD" role="2Oq$k0">
                      <node concept="37vLTw" id="7vU6U50393H" role="2Oq$k0">
                        <ref role="3cqZAo" node="7vU6U505wu7" resolve="sol" />
                      </node>
                      <node concept="3TrcHB" id="7vU6U503dXl" role="2OqNvi">
                        <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                      </node>
                    </node>
                    <node concept="tyxLq" id="7vU6U503f1z" role="2OqNvi">
                      <node concept="uoxfO" id="7vU6U503fUT" role="tz02z">
                        <ref role="uo_Cq" to="kdzh:eYcmk9QOlj" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="SfApY" id="7vU6U505wul" role="3cqZAp">
                  <node concept="3clFbS" id="7vU6U505wum" role="SfCbr">
                    <node concept="3cpWs8" id="7vU6U505wun" role="3cqZAp">
                      <node concept="3cpWsn" id="7vU6U505wuo" role="3cpWs9">
                        <property role="TrG5h" value="path" />
                        <node concept="3Tqbb2" id="7vU6U505wup" role="1tU5fm">
                          <ref role="ehGHo" to="3ior:6mpuAlRavrV" resolve="BuildRelativePath" />
                        </node>
                        <node concept="2YIFZM" id="7vU6U505wuq" role="33vP2m">
                          <ref role="37wK5l" to="tken:1w$c60CLQYU" resolve="createRelative" />
                          <ref role="1Pybhc" to="tken:2hkCNA7Z0MW" resolve="PathConverter" />
                          <node concept="2OqwBi" id="7vU6U505wur" role="37wK5m">
                            <node concept="37vLTw" id="7vU6U505wus" role="2Oq$k0">
                              <ref role="3cqZAo" node="7vU6U505wt_" resolve="projectFile" />
                            </node>
                            <node concept="liA8E" id="7vU6U505wut" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~File.getPath():java.lang.String" resolve="getPath" />
                            </node>
                          </node>
                          <node concept="1LFfDK" id="7vU6U505wuu" role="37wK5m">
                            <node concept="3cmrfG" id="7vU6U505wuv" role="1LF_Uc">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="7vU6U505wuw" role="1LFl5Q">
                              <ref role="3cqZAo" node="7vU6U505wuN" resolve="t" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7vU6U507PFu" role="37wK5m">
                            <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7vU6U505wuy" role="3cqZAp">
                      <node concept="2OqwBi" id="7vU6U505wuz" role="3clFbG">
                        <node concept="2OqwBi" id="7vU6U505wu$" role="2Oq$k0">
                          <node concept="37vLTw" id="7vU6U505wu_" role="2Oq$k0">
                            <ref role="3cqZAo" node="7vU6U505wu7" resolve="sol" />
                          </node>
                          <node concept="3TrEf2" id="7vU6U505wuA" role="2OqNvi">
                            <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                          </node>
                        </node>
                        <node concept="2oxUTD" id="7vU6U505wuB" role="2OqNvi">
                          <node concept="37vLTw" id="7vU6U505wuC" role="2oxUTC">
                            <ref role="3cqZAo" node="7vU6U505wuo" resolve="path" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="vgcurb_INK" role="3cqZAp">
                      <node concept="2OqwBi" id="vgcurb_JLi" role="3clFbG">
                        <node concept="37vLTw" id="vgcurb_INI" role="2Oq$k0">
                          <ref role="3cqZAo" node="7vU6U505wtO" resolve="result" />
                        </node>
                        <node concept="TSZUe" id="vgcurb_P9P" role="2OqNvi">
                          <node concept="37vLTw" id="vgcurb_Pka" role="25WWJ7">
                            <ref role="3cqZAo" node="7vU6U505wu7" resolve="sol" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="TDmWw" id="7vU6U505wuE" role="TEbGg">
                    <node concept="3cpWsn" id="7vU6U505wuF" role="TDEfY">
                      <property role="TrG5h" value="ex" />
                      <node concept="3uibUv" id="7vU6U505wuG" role="1tU5fm">
                        <ref role="3uigEE" to="tken:2hkCNA7Z0QY" resolve="PathConverter.PathConvertException" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7vU6U505wuH" role="TDEfX">
                      <node concept="34ab3g" id="7vU6U505wuI" role="3cqZAp">
                        <property role="35gtTG" value="error" />
                        <property role="34fQS0" value="true" />
                        <node concept="37vLTw" id="7vU6U505wuJ" role="34bMjA">
                          <ref role="3cqZAo" node="7vU6U505wuF" resolve="ex" />
                        </node>
                        <node concept="Xl_RD" id="7vU6U505wuK" role="34bqiv">
                          <property role="Xl_RC" value="path converter threw exception" />
                        </node>
                      </node>
                      <node concept="3cpWs6" id="7vU6U505wuL" role="3cqZAp">
                        <node concept="10Nm6u" id="7vU6U505wuM" role="3cqZAk" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="7vU6U505wuN" role="1Duv9x">
                <property role="TrG5h" value="t" />
                <node concept="1LlUBW" id="7vU6U505wuO" role="1tU5fm">
                  <node concept="17QB3L" id="7vU6U505wuP" role="1Lm7xW" />
                  <node concept="17QB3L" id="7vU6U505wuQ" role="1Lm7xW" />
                  <node concept="17QB3L" id="vgcurbAddU" role="1Lm7xW" />
                </node>
              </node>
              <node concept="37vLTw" id="7vU6U505wuR" role="1DdaDG">
                <ref role="3cqZAo" node="7vU6U505wtV" resolve="triples" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6DW_AMAyBWt" role="1Duv9x">
            <property role="TrG5h" value="testManifest" />
            <node concept="3Tqbb2" id="6DW_AMAyDG2" role="1tU5fm">
              <ref role="ehGHo" to="jjwj:2R6x4AnxQy2" resolve="TestModuleManifest" />
            </node>
          </node>
          <node concept="37vLTw" id="6DW_AMAyNwB" role="1DdaDG">
            <ref role="3cqZAo" node="6DW_AMAyE4H" resolve="tmms" />
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U505wuS" role="3cqZAp" />
        <node concept="3clFbF" id="7vU6U505wuT" role="3cqZAp">
          <node concept="37vLTw" id="7vU6U505wuU" role="3clFbG">
            <ref role="3cqZAo" node="7vU6U505wtO" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U505RPo" role="jymVt" />
    <node concept="3clFb_" id="7vU6U505Sgn" role="jymVt">
      <property role="TrG5h" value="createLanguageFolderElements" />
      <node concept="2I9FWS" id="7vU6U505SDW" role="3clF45" />
      <node concept="3Tm6S6" id="7vU6U505Src" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U505Sgr" role="3clF47">
        <node concept="3cpWs8" id="7vU6U505VPt" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U505VPw" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="7vU6U505VPs" role="1tU5fm" />
            <node concept="2ShNRf" id="7vU6U505VSs" role="33vP2m">
              <node concept="2T8Vx0" id="7vU6U505VS7" role="2ShVmc">
                <node concept="2I9FWS" id="7vU6U505VS8" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U505VSW" role="3cqZAp" />
        <node concept="1DcWWT" id="7vU6U505Zk2" role="3cqZAp">
          <node concept="3clFbS" id="7vU6U505Zk4" role="2LFqv$">
            <node concept="3cpWs8" id="7vU6U505W7H" role="3cqZAp">
              <node concept="3cpWsn" id="7vU6U505W7I" role="3cpWs9">
                <property role="TrG5h" value="jars" />
                <node concept="3Tqbb2" id="7vU6U505W7D" role="1tU5fm">
                  <ref role="ehGHo" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
                </node>
                <node concept="2OqwBi" id="7vU6U505W7J" role="33vP2m">
                  <node concept="37vLTw" id="7vU6U507VdX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                  </node>
                  <node concept="I8ghe" id="7vU6U505W7L" role="2OqNvi">
                    <ref role="I8UWU" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vU6U5021UM" role="3cqZAp">
              <node concept="2OqwBi" id="7vU6U5021UN" role="3clFbG">
                <node concept="2OqwBi" id="7vU6U5021UO" role="2Oq$k0">
                  <node concept="37vLTw" id="7vU6U5021UP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vU6U505W7I" resolve="jars" />
                  </node>
                  <node concept="3TrEf2" id="7vU6U5021UQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7vU6U5021UR" role="2OqNvi">
                  <node concept="37vLTw" id="7vU6U5063B9" role="2oxUTC">
                    <ref role="3cqZAo" node="7vU6U505Zk6" resolve="la" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vU6U505WlE" role="3cqZAp">
              <node concept="2OqwBi" id="7vU6U505WEA" role="3clFbG">
                <node concept="37vLTw" id="7vU6U505WlC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7vU6U505VPw" resolve="result" />
                </node>
                <node concept="TSZUe" id="7vU6U505YCM" role="2OqNvi">
                  <node concept="37vLTw" id="7vU6U505YHo" role="25WWJ7">
                    <ref role="3cqZAo" node="7vU6U505W7I" resolve="jars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7vU6U505Zk6" role="1Duv9x">
            <property role="TrG5h" value="la" />
            <node concept="3Tqbb2" id="7vU6U505ZPP" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
            </node>
          </node>
          <node concept="37vLTw" id="7vU6U505Zkb" role="1DdaDG">
            <ref role="3cqZAo" node="7vU6U505Twh" resolve="languageElements" />
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U505YLM" role="3cqZAp" />
        <node concept="3clFbF" id="7vU6U5065Ib" role="3cqZAp">
          <node concept="37vLTw" id="7vU6U5065I9" role="3clFbG">
            <ref role="3cqZAo" node="7vU6U505VPw" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7vU6U505Twh" role="3clF46">
        <property role="TrG5h" value="languageElements" />
        <node concept="2I9FWS" id="7vU6U507QeW" role="1tU5fm">
          <ref role="2I9WkF" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U504XJM" role="jymVt" />
    <node concept="3clFb_" id="7vU6U5067tw" role="jymVt">
      <property role="TrG5h" value="createTestFolderElements" />
      <node concept="2I9FWS" id="7vU6U5067t_" role="3clF45" />
      <node concept="3Tm6S6" id="7vU6U5067tA" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U5067tB" role="3clF47">
        <node concept="3cpWs8" id="7vU6U5067tC" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U5067tD" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2I9FWS" id="7vU6U5067tE" role="1tU5fm" />
            <node concept="2ShNRf" id="7vU6U5067tF" role="33vP2m">
              <node concept="2T8Vx0" id="7vU6U5067tG" role="2ShVmc">
                <node concept="2I9FWS" id="7vU6U5067tH" role="2T96Bj" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U5067tI" role="3cqZAp" />
        <node concept="1DcWWT" id="7vU6U5067tJ" role="3cqZAp">
          <node concept="3clFbS" id="7vU6U5067tK" role="2LFqv$">
            <node concept="3cpWs8" id="7vU6U5067tL" role="3cqZAp">
              <node concept="3cpWsn" id="7vU6U5067tM" role="3cpWs9">
                <property role="TrG5h" value="jars" />
                <node concept="3Tqbb2" id="7vU6U5067tN" role="1tU5fm">
                  <ref role="ehGHo" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
                </node>
                <node concept="2OqwBi" id="7vU6U5067tO" role="33vP2m">
                  <node concept="37vLTw" id="7vU6U5080pq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
                  </node>
                  <node concept="I8ghe" id="7vU6U5067tQ" role="2OqNvi">
                    <ref role="I8UWU" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vU6U5067tR" role="3cqZAp">
              <node concept="2OqwBi" id="7vU6U5067tS" role="3clFbG">
                <node concept="2OqwBi" id="7vU6U5067tT" role="2Oq$k0">
                  <node concept="37vLTw" id="7vU6U5067tU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7vU6U5067tM" resolve="jars" />
                  </node>
                  <node concept="3TrEf2" id="7vU6U5067tV" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:16hzwWwASfD" />
                  </node>
                </node>
                <node concept="2oxUTD" id="7vU6U5067tW" role="2OqNvi">
                  <node concept="37vLTw" id="7vU6U5067tX" role="2oxUTC">
                    <ref role="3cqZAo" node="7vU6U5067u3" resolve="sol" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7vU6U5067tY" role="3cqZAp">
              <node concept="2OqwBi" id="7vU6U5067tZ" role="3clFbG">
                <node concept="37vLTw" id="7vU6U5067u0" role="2Oq$k0">
                  <ref role="3cqZAo" node="7vU6U5067tD" resolve="result" />
                </node>
                <node concept="TSZUe" id="7vU6U5067u1" role="2OqNvi">
                  <node concept="37vLTw" id="7vU6U5067u2" role="25WWJ7">
                    <ref role="3cqZAo" node="7vU6U5067tM" resolve="jars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7vU6U5067u3" role="1Duv9x">
            <property role="TrG5h" value="sol" />
            <node concept="3Tqbb2" id="7vU6U5067u4" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
            </node>
          </node>
          <node concept="37vLTw" id="7vU6U5067u5" role="1DdaDG">
            <ref role="3cqZAo" node="7vU6U5067tx" resolve="testElements" />
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U5067u6" role="3cqZAp" />
        <node concept="3clFbF" id="7vU6U5067u7" role="3cqZAp">
          <node concept="37vLTw" id="7vU6U5067u8" role="3clFbG">
            <ref role="3cqZAo" node="7vU6U5067tD" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7vU6U5067tx" role="3clF46">
        <property role="TrG5h" value="testElements" />
        <node concept="2I9FWS" id="7vU6U507Vm3" role="1tU5fm">
          <ref role="2I9WkF" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U5067tv" role="jymVt" />
    <node concept="3clFb_" id="7vU6U506iAy" role="jymVt">
      <property role="TrG5h" value="createTestModuleGroup" />
      <node concept="3Tqbb2" id="7vU6U506j3g" role="3clF45">
        <ref role="ehGHo" to="5tjl:3X9rC2XzJdF" resolve="BuildMpsLayout_TestModuleGroup" />
      </node>
      <node concept="3Tm6S6" id="7vU6U506iOU" role="1B3o_S" />
      <node concept="3clFbS" id="7vU6U506iAA" role="3clF47">
        <node concept="3clFbF" id="7vU6U506kuO" role="3cqZAp">
          <node concept="2OqwBi" id="7vU6U506kyV" role="3clFbG">
            <node concept="37vLTw" id="7vU6U506kuN" role="2Oq$k0">
              <ref role="3cqZAo" node="7vU6U507DC0" resolve="target" />
            </node>
            <node concept="I8ghe" id="7vU6U506kCz" role="2OqNvi">
              <ref role="I8UWU" to="5tjl:3X9rC2XzJdF" resolve="BuildMpsLayout_TestModuleGroup" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7vU6U506wm4" role="jymVt" />
    <node concept="3clFb_" id="7vU6U506u8b" role="jymVt">
      <property role="TrG5h" value="updateReferences" />
      <node concept="3Tm6S6" id="7vU6U506u8c" role="1B3o_S" />
      <node concept="3Tqbb2" id="7vU6U506x1$" role="3clF45">
        <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
      </node>
      <node concept="37vLTG" id="7vU6U506u83" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="7vU6U506u84" role="1tU5fm">
          <ref role="ehGHo" to="3ior:4RPz6WoY4Cj" resolve="BuildProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7vU6U506u85" role="3clF46">
        <property role="TrG5h" value="testGroup" />
        <node concept="3Tqbb2" id="7vU6U506u86" role="1tU5fm">
          <ref role="ehGHo" to="5tjl:3X9rC2XzJdF" resolve="BuildMpsLayout_TestModuleGroup" />
        </node>
      </node>
      <node concept="3clFbS" id="7vU6U506u7A" role="3clF47">
        <node concept="3cpWs8" id="7vU6U506u7B" role="3cqZAp">
          <node concept="3cpWsn" id="7vU6U506u7C" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3Tqbb2" id="7vU6U506u7D" role="1tU5fm">
              <ref role="ehGHo" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
            </node>
            <node concept="2OqwBi" id="7vU6U506u7E" role="33vP2m">
              <node concept="2OqwBi" id="7vU6U506u7F" role="2Oq$k0">
                <node concept="37vLTw" id="7vU6U506u87" role="2Oq$k0">
                  <ref role="3cqZAo" node="7vU6U506u83" resolve="root" />
                </node>
                <node concept="2Rf3mk" id="7vU6U506u7H" role="2OqNvi">
                  <node concept="1xMEDy" id="7vU6U506u7I" role="1xVPHs">
                    <node concept="chp4Y" id="7vU6U506u7J" role="ri$Ld">
                      <ref role="cht4Q" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="7vU6U506u7K" role="2OqNvi">
                <node concept="1bVj0M" id="7vU6U506u7L" role="23t8la">
                  <node concept="3clFbS" id="7vU6U506u7M" role="1bW5cS">
                    <node concept="3clFbF" id="7vU6U506u7N" role="3cqZAp">
                      <node concept="2OqwBi" id="7vU6U506u7O" role="3clFbG">
                        <node concept="2OqwBi" id="7vU6U506u7P" role="2Oq$k0">
                          <node concept="37vLTw" id="7vU6U506u7Q" role="2Oq$k0">
                            <ref role="3cqZAo" node="7vU6U506u7U" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="7vU6U506u7R" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7vU6U506u7S" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                          <node concept="Xl_RD" id="7vU6U506u7T" role="37wK5m">
                            <property role="Xl_RC" value="-tests" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7vU6U506u7U" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7vU6U506u7V" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7vU6U506u7W" role="3cqZAp">
          <node concept="2OqwBi" id="7vU6U506u7X" role="3clFbG">
            <node concept="2OqwBi" id="7vU6U506u7Y" role="2Oq$k0">
              <node concept="37vLTw" id="7vU6U506u88" role="2Oq$k0">
                <ref role="3cqZAo" node="7vU6U506u85" resolve="testGroup" />
              </node>
              <node concept="3TrEf2" id="7vU6U506u80" role="2OqNvi">
                <ref role="3Tt5mk" to="5tjl:3X9rC2XzJdG" />
              </node>
            </node>
            <node concept="2oxUTD" id="7vU6U506u81" role="2OqNvi">
              <node concept="37vLTw" id="7vU6U506u82" role="2oxUTC">
                <ref role="3cqZAo" node="7vU6U506u7C" resolve="group" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7vU6U506wA6" role="3cqZAp" />
        <node concept="3cpWs6" id="7vU6U506wHz" role="3cqZAp">
          <node concept="37vLTw" id="7vU6U506wP5" role="3cqZAk">
            <ref role="3cqZAo" node="7vU6U506u83" resolve="root" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7vU6U504CTT" role="1B3o_S" />
    <node concept="312cEg" id="7vU6U507Dn$" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="7vU6U507Dn_" role="1B3o_S" />
      <node concept="3uibUv" id="7vU6U507DnB" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="7vU6U507DC0" role="jymVt">
      <property role="TrG5h" value="target" />
      <node concept="3Tm6S6" id="7vU6U507DC1" role="1B3o_S" />
      <node concept="H_c77" id="7vU6U507DC3" role="1tU5fm" />
    </node>
  </node>
</model>

