<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c7fd1483-2eda-4417-bb41-aecb48302c10(jetbrains.mps.testbench)">
  <persistence version="9" />
  <languages>
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="e2lb" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(java.lang@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(java.util@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(java.io@java_stub)" />
    <import index="zwkq" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#org.jdom(org.jdom@java_stub)" />
    <import index="msyo" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.util(jetbrains.mps.util@java_stub)" />
    <import index="qjxg" ref="f:java_stub#83f155ff-422c-4b5a-a2f2-b459302dd215#org.junit(org.junit@java_stub)" />
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
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
  <node concept="312cEu" id="4_TMdeLkPNQ">
    <property role="TrG5h" value="PerformanceMessenger" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="4_TMdeLkPNS" role="1B3o_S" />
    <node concept="3UR2Jj" id="4_TMdeLkPRT" role="lGtFl">
      <node concept="TZ5HA" id="4_TMdeLkPSE" role="TZ5H$">
        <node concept="1dT_AC" id="4_TMdeLkPSF" role="1dT_Ay">
          <property role="1dT_AB" value="Evgeny Gryaznov, Oct 7, 2010" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4_TMdeLkPNT" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="mySingleValues" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="4_TMdeLlBr3" role="33vP2m">
        <node concept="1pGfFk" id="4_TMdeLlBr4" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="17QB3L" id="3SJmozgBlCP" role="1pMfVU" />
          <node concept="3uibUv" id="4_TMdeLkPO0" role="1pMfVU">
            <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4_TMdeLkPNV" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="3SJmozgBlCM" role="11_B2D" />
        <node concept="3uibUv" id="4_TMdeLkPNX" role="11_B2D">
          <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4_TMdeLkPO1" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4_TMdeLkPO2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myPercentValues" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="4_TMdeLlBr5" role="33vP2m">
        <node concept="1pGfFk" id="4_TMdeLlBr6" role="2ShVmc">
          <ref role="37wK5l" to="k7g3:~LinkedHashMap.&lt;init&gt;()" resolve="LinkedHashMap" />
          <node concept="17QB3L" id="3SJmozgBlCQ" role="1pMfVU" />
          <node concept="10Q1$e" id="4_TMdeLkPOb" role="1pMfVU">
            <node concept="3uibUv" id="4_TMdeLkPOa" role="10Q1$1">
              <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4_TMdeLkPO4" role="1tU5fm">
        <ref role="3uigEE" to="k7g3:~Map" resolve="Map" />
        <node concept="17QB3L" id="3SJmozgBlCK" role="11_B2D" />
        <node concept="10Q1$e" id="4_TMdeLkPO7" role="11_B2D">
          <node concept="3uibUv" id="4_TMdeLkPO6" role="10Q1$1">
            <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4_TMdeLkPOc" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="4_TMdeLkPOd" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="false" />
      <node concept="2ShNRf" id="4_TMdeLlBr7" role="33vP2m">
        <node concept="1pGfFk" id="4_TMdeLlBr8" role="2ShVmc">
          <ref role="37wK5l" node="4_TMdeLkPOh" resolve="PerformanceMessenger" />
        </node>
      </node>
      <node concept="3uibUv" id="4_TMdeLkPOe" role="1tU5fm">
        <ref role="3uigEE" node="4_TMdeLkPNQ" resolve="PerformanceMessenger" />
      </node>
      <node concept="3Tm6S6" id="4_TMdeLkPOg" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="4_TMdeLkPOh" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3cqZAl" id="4_TMdeLkPOi" role="3clF45" />
      <node concept="3clFbS" id="4_TMdeLkPOj" role="3clF47" />
      <node concept="3Tm1VV" id="4_TMdeLkPOk" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="4_TMdeLkPOl" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4_TMdeLkPOm" role="3clF47">
        <node concept="3cpWs6" id="4_TMdeLkPOn" role="3cqZAp">
          <node concept="37vLTw" id="4_TMdeLkPOo" role="3cqZAk">
            <ref role="3cqZAo" node="4_TMdeLkPOd" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_TMdeLkPOp" role="1B3o_S" />
      <node concept="3uibUv" id="4_TMdeLkPOq" role="3clF45">
        <ref role="3uigEE" node="4_TMdeLkPNQ" resolve="PerformanceMessenger" />
      </node>
    </node>
    <node concept="3clFb_" id="4_TMdeLkPOr" role="jymVt">
      <property role="TrG5h" value="report" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4_TMdeLkPOs" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="3SJmozgBlCN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_TMdeLkPOu" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3cpWsb" id="4_TMdeLkPOv" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4_TMdeLkPOw" role="3clF47">
        <node concept="3clFbF" id="4_TMdeLkPOx" role="3cqZAp">
          <node concept="2YIFZM" id="4_TMdeLlBBs" role="3clFbG">
            <ref role="1Pybhc" to="qjxg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="qjxg:~Assert.assertFalse(boolean):void" resolve="assertFalse" />
            <node concept="2OqwBi" id="4_TMdeLlBBv" role="37wK5m">
              <node concept="37vLTw" id="4_TMdeLlBBu" role="2Oq$k0">
                <ref role="3cqZAo" node="4_TMdeLkPO2" resolve="myPercentValues" />
              </node>
              <node concept="liA8E" id="4_TMdeLlBBw" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="4_TMdeLkPOA" role="37wK5m">
                  <ref role="3cqZAo" node="4_TMdeLkPOs" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_TMdeLkPOC" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkPOB" role="3cpWs9">
            <property role="TrG5h" value="l" />
            <property role="3TUv4t" value="false" />
            <node concept="2OqwBi" id="4_TMdeLlBBz" role="33vP2m">
              <node concept="37vLTw" id="4_TMdeLlBBy" role="2Oq$k0">
                <ref role="3cqZAo" node="4_TMdeLkPNT" resolve="mySingleValues" />
              </node>
              <node concept="liA8E" id="4_TMdeLlBB$" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.remove(java.lang.Object):java.lang.Object" resolve="remove" />
                <node concept="37vLTw" id="4_TMdeLkPOG" role="37wK5m">
                  <ref role="3cqZAo" node="4_TMdeLkPOs" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4_TMdeLkPOD" role="1tU5fm">
              <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_TMdeLkPOH" role="3cqZAp">
          <node concept="3y3z36" id="4_TMdeLkPOI" role="3clFbw">
            <node concept="37vLTw" id="4_TMdeLkPOJ" role="3uHU7B">
              <ref role="3cqZAo" node="4_TMdeLkPOB" resolve="l" />
            </node>
            <node concept="10Nm6u" id="4_TMdeLkPOK" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="4_TMdeLkPOM" role="3clFbx">
            <node concept="3clFbF" id="4_TMdeLkPON" role="3cqZAp">
              <node concept="d57v9" id="4_TMdeLkPOO" role="3clFbG">
                <node concept="37vLTw" id="4_TMdeLkPOP" role="37vLTJ">
                  <ref role="3cqZAo" node="4_TMdeLkPOu" resolve="value" />
                </node>
                <node concept="37vLTw" id="4_TMdeLkPOQ" role="37vLTx">
                  <ref role="3cqZAo" node="4_TMdeLkPOB" resolve="l" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_TMdeLkPOR" role="3cqZAp">
          <node concept="2OqwBi" id="4_TMdeLlBBB" role="3clFbG">
            <node concept="37vLTw" id="4_TMdeLlBBA" role="2Oq$k0">
              <ref role="3cqZAo" node="4_TMdeLkPNT" resolve="mySingleValues" />
            </node>
            <node concept="liA8E" id="4_TMdeLlBBC" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
              <node concept="37vLTw" id="4_TMdeLkPOU" role="37wK5m">
                <ref role="3cqZAo" node="4_TMdeLkPOs" resolve="key" />
              </node>
              <node concept="37vLTw" id="4_TMdeLkPOV" role="37wK5m">
                <ref role="3cqZAo" node="4_TMdeLkPOu" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_TMdeLkPOW" role="1B3o_S" />
      <node concept="3cqZAl" id="4_TMdeLkPOX" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4_TMdeLkPOY" role="jymVt">
      <property role="TrG5h" value="reportPercent" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="4_TMdeLkPOZ" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="17QB3L" id="3SJmozgBlCO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_TMdeLkPP1" role="3clF46">
        <property role="TrG5h" value="amount" />
        <node concept="3cpWsb" id="4_TMdeLkPP2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4_TMdeLkPP3" role="3clF46">
        <property role="TrG5h" value="total" />
        <node concept="3cpWsb" id="4_TMdeLkPP4" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4_TMdeLkPP5" role="3clF47">
        <node concept="3clFbF" id="4_TMdeLkPP6" role="3cqZAp">
          <node concept="2YIFZM" id="4_TMdeLlBBE" role="3clFbG">
            <ref role="1Pybhc" to="qjxg:~Assert" resolve="Assert" />
            <ref role="37wK5l" to="qjxg:~Assert.assertFalse(boolean):void" resolve="assertFalse" />
            <node concept="2OqwBi" id="4_TMdeLlBBH" role="37wK5m">
              <node concept="37vLTw" id="4_TMdeLlBBG" role="2Oq$k0">
                <ref role="3cqZAo" node="4_TMdeLkPNT" resolve="mySingleValues" />
              </node>
              <node concept="liA8E" id="4_TMdeLlBBI" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.containsKey(java.lang.Object):boolean" resolve="containsKey" />
                <node concept="37vLTw" id="4_TMdeLkPPb" role="37wK5m">
                  <ref role="3cqZAo" node="4_TMdeLkPOZ" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_TMdeLkPPd" role="3cqZAp">
          <node concept="3cpWsn" id="4_TMdeLkPPc" role="3cpWs9">
            <property role="TrG5h" value="l" />
            <property role="3TUv4t" value="false" />
            <node concept="2OqwBi" id="4_TMdeLlBBL" role="33vP2m">
              <node concept="37vLTw" id="4_TMdeLlBBK" role="2Oq$k0">
                <ref role="3cqZAo" node="4_TMdeLkPO2" resolve="myPercentValues" />
              </node>
              <node concept="liA8E" id="4_TMdeLlBBM" role="2OqNvi">
                <ref role="37wK5l" to="k7g3:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                <node concept="37vLTw" id="4_TMdeLkPPi" role="37wK5m">
                  <ref role="3cqZAo" node="4_TMdeLkPOZ" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="10Q1$e" id="4_TMdeLkPPf" role="1tU5fm">
              <node concept="3uibUv" id="4_TMdeLkPPe" role="10Q1$1">
                <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_TMdeLkPPj" role="3cqZAp">
          <node concept="3y3z36" id="4_TMdeLkPPk" role="3clFbw">
            <node concept="37vLTw" id="4_TMdeLkPPl" role="3uHU7B">
              <ref role="3cqZAo" node="4_TMdeLkPPc" resolve="l" />
            </node>
            <node concept="10Nm6u" id="4_TMdeLkPPm" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="4_TMdeLkPP_" role="9aQIa">
            <node concept="3clFbS" id="4_TMdeLkPPA" role="9aQI4">
              <node concept="3clFbF" id="4_TMdeLkPPB" role="3cqZAp">
                <node concept="2OqwBi" id="4_TMdeLlBBP" role="3clFbG">
                  <node concept="37vLTw" id="4_TMdeLlBBO" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_TMdeLkPO2" resolve="myPercentValues" />
                  </node>
                  <node concept="liA8E" id="4_TMdeLlBBQ" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                    <node concept="37vLTw" id="4_TMdeLkPPE" role="37wK5m">
                      <ref role="3cqZAo" node="4_TMdeLkPOZ" resolve="key" />
                    </node>
                    <node concept="2ShNRf" id="4_TMdeLkPPJ" role="37wK5m">
                      <node concept="3g6Rrh" id="4_TMdeLkPPI" role="2ShVmc">
                        <node concept="37vLTw" id="4_TMdeLkPPG" role="3g7hyw">
                          <ref role="3cqZAo" node="4_TMdeLkPP1" resolve="amount" />
                        </node>
                        <node concept="37vLTw" id="4_TMdeLkPPH" role="3g7hyw">
                          <ref role="3cqZAo" node="4_TMdeLkPP3" resolve="total" />
                        </node>
                        <node concept="3uibUv" id="4_TMdeLkPPF" role="3g7fb8">
                          <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4_TMdeLkPPo" role="3clFbx">
            <node concept="3clFbF" id="4_TMdeLkPPp" role="3cqZAp">
              <node concept="d57v9" id="4_TMdeLkPPq" role="3clFbG">
                <node concept="AH0OO" id="4_TMdeLkPPr" role="37vLTJ">
                  <node concept="37vLTw" id="4_TMdeLkPPs" role="AHHXb">
                    <ref role="3cqZAo" node="4_TMdeLkPPc" resolve="l" />
                  </node>
                  <node concept="3cmrfG" id="4_TMdeLkPPt" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="37vLTw" id="4_TMdeLkPPu" role="37vLTx">
                  <ref role="3cqZAo" node="4_TMdeLkPP1" resolve="amount" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4_TMdeLkPPv" role="3cqZAp">
              <node concept="d57v9" id="4_TMdeLkPPw" role="3clFbG">
                <node concept="AH0OO" id="4_TMdeLkPPx" role="37vLTJ">
                  <node concept="37vLTw" id="4_TMdeLkPPy" role="AHHXb">
                    <ref role="3cqZAo" node="4_TMdeLkPPc" resolve="l" />
                  </node>
                  <node concept="3cmrfG" id="4_TMdeLkPPz" role="AHEQo">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="37vLTw" id="4_TMdeLkPP$" role="37vLTx">
                  <ref role="3cqZAo" node="4_TMdeLkPP3" resolve="total" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_TMdeLkPPK" role="1B3o_S" />
      <node concept="3cqZAl" id="4_TMdeLkPPL" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4_TMdeLkPPM" role="jymVt">
      <property role="TrG5h" value="generateReport" />
      <property role="od$2w" value="true" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="4_TMdeLkPPN" role="3clF47">
        <node concept="SfApY" id="4_TMdeLkPRP" role="3cqZAp">
          <node concept="TDmWw" id="4_TMdeLkPRQ" role="TEbGg">
            <node concept="3clFbS" id="4_TMdeLkPRJ" role="TDEfX">
              <node concept="3clFbF" id="4_TMdeLkPRK" role="3cqZAp">
                <node concept="2YIFZM" id="4_TMdeLlBBS" role="3clFbG">
                  <ref role="1Pybhc" to="qjxg:~Assert" resolve="Assert" />
                  <ref role="37wK5l" to="qjxg:~Assert.fail(java.lang.String):void" resolve="fail" />
                  <node concept="2OqwBi" id="4_TMdeLlBBV" role="37wK5m">
                    <node concept="37vLTw" id="4_TMdeLlBBU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPRF" resolve="ex" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlBBW" role="2OqNvi">
                      <ref role="37wK5l" to="e2lb:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="4_TMdeLkPRF" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="4_TMdeLkPRH" role="1tU5fm">
                <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4_TMdeLkPPP" role="SfCbr">
            <node concept="3cpWs8" id="4_TMdeLkPPR" role="3cqZAp">
              <node concept="3cpWsn" id="4_TMdeLkPPQ" role="3cpWs9">
                <property role="TrG5h" value="file" />
                <property role="3TUv4t" value="false" />
                <node concept="2ShNRf" id="4_TMdeLlBBX" role="33vP2m">
                  <node concept="1pGfFk" id="4_TMdeLlBBY" role="2ShVmc">
                    <ref role="37wK5l" to="fxg7:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="3cpWs3" id="4_TMdeLkPPU" role="37wK5m">
                      <node concept="2YIFZM" id="4_TMdeLlBC0" role="3uHU7B">
                        <ref role="1Pybhc" to="e2lb:~System" resolve="System" />
                        <ref role="37wK5l" to="e2lb:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
                        <node concept="Xl_RD" id="4_TMdeLkPPX" role="37wK5m">
                          <property role="Xl_RC" value="user.dir" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4_TMdeLkPPY" role="3uHU7w">
                        <property role="Xl_RC" value="/teamcity-info.xml" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4_TMdeLkPPS" role="1tU5fm">
                  <ref role="3uigEE" to="fxg7:~File" resolve="File" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4_TMdeLkPPZ" role="3cqZAp">
              <node concept="1Wc70l" id="4_TMdeLkPQ0" role="3clFbw">
                <node concept="2OqwBi" id="4_TMdeLlBC7" role="3uHU7w">
                  <node concept="37vLTw" id="4_TMdeLlBC6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_TMdeLkPO2" resolve="myPercentValues" />
                  </node>
                  <node concept="liA8E" id="4_TMdeLlBC8" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Map.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4_TMdeLlBC3" role="3uHU7B">
                  <node concept="37vLTw" id="4_TMdeLlBC2" role="2Oq$k0">
                    <ref role="3cqZAo" node="4_TMdeLkPNT" resolve="mySingleValues" />
                  </node>
                  <node concept="liA8E" id="4_TMdeLlBC4" role="2OqNvi">
                    <ref role="37wK5l" to="k7g3:~Map.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4_TMdeLkPQ6" role="3clFbx">
                <node concept="3clFbF" id="4_TMdeLkPQ7" role="3cqZAp">
                  <node concept="2YIFZM" id="4_TMdeLlBCa" role="3clFbG">
                    <ref role="1Pybhc" to="msyo:~FileUtil" resolve="FileUtil" />
                    <ref role="37wK5l" to="msyo:~FileUtil.delete(java.io.File):boolean" resolve="delete" />
                    <node concept="37vLTw" id="4_TMdeLkPQa" role="37wK5m">
                      <ref role="3cqZAo" node="4_TMdeLkPPQ" resolve="file" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="4_TMdeLkPQb" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="4_TMdeLkPQd" role="3cqZAp">
              <node concept="3cpWsn" id="4_TMdeLkPQc" role="3cpWs9">
                <property role="TrG5h" value="build" />
                <property role="3TUv4t" value="false" />
                <node concept="2ShNRf" id="4_TMdeLlCtu" role="33vP2m">
                  <node concept="1pGfFk" id="4_TMdeLlCtv" role="2ShVmc">
                    <ref role="37wK5l" to="zwkq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="Xl_RD" id="4_TMdeLkPQg" role="37wK5m">
                      <property role="Xl_RC" value="build" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="4_TMdeLkPQe" role="1tU5fm">
                  <ref role="3uigEE" to="zwkq:~Element" resolve="Element" />
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4_TMdeLkPQh" role="3cqZAp">
              <node concept="2OqwBi" id="4_TMdeLlCty" role="1DdaDG">
                <node concept="37vLTw" id="4_TMdeLlCtx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_TMdeLkPNT" resolve="mySingleValues" />
                </node>
                <node concept="liA8E" id="4_TMdeLlCtz" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Map.entrySet():java.util.Set" resolve="entrySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="4_TMdeLkPQF" role="1Duv9x">
                <property role="TrG5h" value="e" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="4_TMdeLkPQH" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~Map$Entry" resolve="Map.Entry" />
                  <node concept="17QB3L" id="3SJmozgBlCJ" role="11_B2D" />
                  <node concept="3uibUv" id="4_TMdeLkPQJ" role="11_B2D">
                    <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4_TMdeLkPQj" role="2LFqv$">
                <node concept="3cpWs8" id="4_TMdeLkPQl" role="3cqZAp">
                  <node concept="3cpWsn" id="4_TMdeLkPQk" role="3cpWs9">
                    <property role="TrG5h" value="child" />
                    <property role="3TUv4t" value="false" />
                    <node concept="2ShNRf" id="4_TMdeLlCt$" role="33vP2m">
                      <node concept="1pGfFk" id="4_TMdeLlCt_" role="2ShVmc">
                        <ref role="37wK5l" to="zwkq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="Xl_RD" id="4_TMdeLkPQo" role="37wK5m">
                          <property role="Xl_RC" value="statisticValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4_TMdeLkPQm" role="1tU5fm">
                      <ref role="3uigEE" to="zwkq:~Element" resolve="Element" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPQp" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCtC" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCtB" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPQk" resolve="child" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCtD" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="Xl_RD" id="4_TMdeLkPQs" role="37wK5m">
                        <property role="Xl_RC" value="key" />
                      </node>
                      <node concept="2OqwBi" id="4_TMdeLlCtG" role="37wK5m">
                        <node concept="37vLTw" id="4_TMdeLlCtF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_TMdeLkPQF" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4_TMdeLlCtH" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPQv" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCtK" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCtJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPQk" resolve="child" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCtL" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="Xl_RD" id="4_TMdeLkPQy" role="37wK5m">
                        <property role="Xl_RC" value="value" />
                      </node>
                      <node concept="2YIFZM" id="4_TMdeLlCtN" role="37wK5m">
                        <ref role="1Pybhc" to="e2lb:~Long" resolve="Long" />
                        <ref role="37wK5l" to="e2lb:~Long.toString(long):java.lang.String" resolve="toString" />
                        <node concept="2OqwBi" id="4_TMdeLlCtQ" role="37wK5m">
                          <node concept="37vLTw" id="4_TMdeLlCtP" role="2Oq$k0">
                            <ref role="3cqZAo" node="4_TMdeLkPQF" resolve="e" />
                          </node>
                          <node concept="liA8E" id="4_TMdeLlCtR" role="2OqNvi">
                            <ref role="37wK5l" to="k7g3:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPQB" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCtU" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCtT" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPQc" resolve="build" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCtV" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="37vLTw" id="4_TMdeLkPQE" role="37wK5m">
                        <ref role="3cqZAo" node="4_TMdeLkPQk" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4_TMdeLkPQM" role="3cqZAp">
              <node concept="2OqwBi" id="4_TMdeLlCtY" role="1DdaDG">
                <node concept="37vLTw" id="4_TMdeLlCtX" role="2Oq$k0">
                  <ref role="3cqZAo" node="4_TMdeLkPO2" resolve="myPercentValues" />
                </node>
                <node concept="liA8E" id="4_TMdeLlCtZ" role="2OqNvi">
                  <ref role="37wK5l" to="k7g3:~Map.entrySet():java.util.Set" resolve="entrySet" />
                </node>
              </node>
              <node concept="3cpWsn" id="4_TMdeLkPRt" role="1Duv9x">
                <property role="TrG5h" value="e" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="4_TMdeLkPRv" role="1tU5fm">
                  <ref role="3uigEE" to="k7g3:~Map$Entry" resolve="Map.Entry" />
                  <node concept="17QB3L" id="3SJmozgBlCL" role="11_B2D" />
                  <node concept="10Q1$e" id="4_TMdeLkPRy" role="11_B2D">
                    <node concept="3uibUv" id="4_TMdeLkPRx" role="10Q1$1">
                      <ref role="3uigEE" to="e2lb:~Long" resolve="Long" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4_TMdeLkPQO" role="2LFqv$">
                <node concept="3cpWs8" id="4_TMdeLkPQQ" role="3cqZAp">
                  <node concept="3cpWsn" id="4_TMdeLkPQP" role="3cpWs9">
                    <property role="TrG5h" value="amount" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3cpWsb" id="4_TMdeLkPQR" role="1tU5fm" />
                    <node concept="AH0OO" id="4_TMdeLkPQS" role="33vP2m">
                      <node concept="2OqwBi" id="4_TMdeLlCu2" role="AHHXb">
                        <node concept="37vLTw" id="4_TMdeLlCu1" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_TMdeLkPRt" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4_TMdeLlCu3" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="4_TMdeLkPQV" role="AHEQo">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4_TMdeLkPQX" role="3cqZAp">
                  <node concept="3cpWsn" id="4_TMdeLkPQW" role="3cpWs9">
                    <property role="TrG5h" value="total" />
                    <property role="3TUv4t" value="false" />
                    <node concept="3cpWsb" id="4_TMdeLkPQY" role="1tU5fm" />
                    <node concept="AH0OO" id="4_TMdeLkPQZ" role="33vP2m">
                      <node concept="2OqwBi" id="4_TMdeLlCu6" role="AHHXb">
                        <node concept="37vLTw" id="4_TMdeLlCu5" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_TMdeLkPRt" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4_TMdeLlCu7" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getValue():java.lang.Object" resolve="getValue" />
                        </node>
                      </node>
                      <node concept="3cmrfG" id="4_TMdeLkPR2" role="AHEQo">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4_TMdeLkPR4" role="3cqZAp">
                  <node concept="3cpWsn" id="4_TMdeLkPR3" role="3cpWs9">
                    <property role="TrG5h" value="child" />
                    <property role="3TUv4t" value="false" />
                    <node concept="2ShNRf" id="4_TMdeLlCu8" role="33vP2m">
                      <node concept="1pGfFk" id="4_TMdeLlCu9" role="2ShVmc">
                        <ref role="37wK5l" to="zwkq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                        <node concept="Xl_RD" id="4_TMdeLkPR7" role="37wK5m">
                          <property role="Xl_RC" value="statisticValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4_TMdeLkPR5" role="1tU5fm">
                      <ref role="3uigEE" to="zwkq:~Element" resolve="Element" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPR8" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCuc" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCub" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPR3" resolve="child" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCud" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="Xl_RD" id="4_TMdeLkPRb" role="37wK5m">
                        <property role="Xl_RC" value="key" />
                      </node>
                      <node concept="2OqwBi" id="4_TMdeLlCug" role="37wK5m">
                        <node concept="37vLTw" id="4_TMdeLlCuf" role="2Oq$k0">
                          <ref role="3cqZAo" node="4_TMdeLkPRt" resolve="e" />
                        </node>
                        <node concept="liA8E" id="4_TMdeLlCuh" role="2OqNvi">
                          <ref role="37wK5l" to="k7g3:~Map$Entry.getKey():java.lang.Object" resolve="getKey" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPRe" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCuk" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCuj" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPR3" resolve="child" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCul" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.setAttribute(java.lang.String,java.lang.String):org.jdom.Element" resolve="setAttribute" />
                      <node concept="Xl_RD" id="4_TMdeLkPRh" role="37wK5m">
                        <property role="Xl_RC" value="value" />
                      </node>
                      <node concept="2YIFZM" id="4_TMdeLlCun" role="37wK5m">
                        <ref role="1Pybhc" to="e2lb:~Long" resolve="Long" />
                        <ref role="37wK5l" to="e2lb:~Long.toString(long):java.lang.String" resolve="toString" />
                        <node concept="FJ1c_" id="4_TMdeLkPRk" role="37wK5m">
                          <node concept="17qRlL" id="4_TMdeLkPRl" role="3uHU7B">
                            <node concept="37vLTw" id="4_TMdeLkPRm" role="3uHU7B">
                              <ref role="3cqZAo" node="4_TMdeLkPQP" resolve="amount" />
                            </node>
                            <node concept="3cmrfG" id="4_TMdeLkPRn" role="3uHU7w">
                              <property role="3cmrfH" value="100" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4_TMdeLkPRo" role="3uHU7w">
                            <ref role="3cqZAo" node="4_TMdeLkPQW" resolve="total" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4_TMdeLkPRp" role="3cqZAp">
                  <node concept="2OqwBi" id="4_TMdeLlCuq" role="3clFbG">
                    <node concept="37vLTw" id="4_TMdeLlCup" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_TMdeLkPQc" resolve="build" />
                    </node>
                    <node concept="liA8E" id="4_TMdeLlCur" role="2OqNvi">
                      <ref role="37wK5l" to="zwkq:~Element.addContent(org.jdom.Element):org.jdom.Element" resolve="addContent" />
                      <node concept="37vLTw" id="4_TMdeLkPRs" role="37wK5m">
                        <ref role="3cqZAo" node="4_TMdeLkPR3" resolve="child" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4_TMdeLkPR_" role="3cqZAp">
              <node concept="2YIFZM" id="4_TMdeLlCut" role="3clFbG">
                <ref role="1Pybhc" to="msyo:~JDOMUtil" resolve="JDOMUtil" />
                <ref role="37wK5l" to="msyo:~JDOMUtil.writeDocument(org.jdom.Document,java.io.File):void" resolve="writeDocument" />
                <node concept="2ShNRf" id="4_TMdeLlCuu" role="37wK5m">
                  <node concept="1pGfFk" id="4_TMdeLlCuv" role="2ShVmc">
                    <ref role="37wK5l" to="zwkq:~Document.&lt;init&gt;(org.jdom.Element)" resolve="Document" />
                    <node concept="37vLTw" id="4_TMdeLkPRD" role="37wK5m">
                      <ref role="3cqZAo" node="4_TMdeLkPQc" resolve="build" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4_TMdeLkPRE" role="37wK5m">
                  <ref role="3cqZAo" node="4_TMdeLkPPQ" resolve="file" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4_TMdeLkPRR" role="1B3o_S" />
      <node concept="3cqZAl" id="4_TMdeLkPRS" role="3clF45" />
    </node>
  </node>
</model>

