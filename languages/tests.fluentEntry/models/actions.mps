<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:42498927-2cd7-4a23-b40a-99ad0153c80a(tests.fluentEntry.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpfp" ref="r:00000000-0000-4000-0000-011c89590519(jetbrains.mps.baseLanguage.regexp.jetbrains.mps.regexp.accessory)" implicit="true" />
    <import index="s19v" ref="r:39e13498-05ec-4946-8a75-c6bf0e9d7512(tests.fluentEntry.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271546410" name="jetbrains.mps.baseLanguage.structure.TrimOperation" flags="nn" index="17S1cR" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1196434649611" name="jetbrains.mps.lang.actions.structure.Substitute_SimpleString" flags="ng" index="2h3Zct">
        <property id="1196434851095" name="text" index="2h4Kg1" />
      </concept>
      <concept id="1177323996388" name="jetbrains.mps.lang.actions.structure.AddMenuPart" flags="ng" index="tYCnQ" />
      <concept id="1177327161126" name="jetbrains.mps.lang.actions.structure.QueryFunction_CanSubstitute" flags="in" index="uaGSO" />
      <concept id="1177327274449" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_pattern" flags="nn" index="ub8z3" />
      <concept id="1177327570013" name="jetbrains.mps.lang.actions.structure.QueryFunction_Substitute_Handler" flags="in" index="ucgPf" />
      <concept id="1177327666243" name="jetbrains.mps.lang.actions.structure.SimpleItemSubstitutePart" flags="ng" index="ucClh">
        <child id="1177327698839" name="canSubstitute" index="ucKa5" />
        <child id="1177327709106" name="handler" index="ucMEw" />
        <child id="1177336013307" name="matchingText" index="uGu3D" />
        <child id="1177336018902" name="descriptionText" index="uGvr4" />
      </concept>
      <concept id="1177333529597" name="jetbrains.mps.lang.actions.structure.ConceptPart" flags="ng" index="uyZFJ">
        <reference id="1177333551023" name="concept" index="uz4UX" />
        <child id="1177333559040" name="part" index="uz6Si" />
      </concept>
      <concept id="1177335944525" name="jetbrains.mps.lang.actions.structure.QueryFunction_SubstituteString" flags="in" index="uGdhv" />
      <concept id="1177568407352" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_currentTargetNode" flags="nn" index="GyYSE" />
      <concept id="1112056943463" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActions" flags="ng" index="3FK_9_">
        <child id="1112058057696" name="actionsBuilder" index="3FOPby" />
      </concept>
      <concept id="1112058030570" name="jetbrains.mps.lang.actions.structure.NodeSubstituteActionsBuilder" flags="ig" index="3FOIzC">
        <property id="1158952412335" name="description" index="3mWAmy" />
        <reference id="1112058088712" name="applicableConcept" index="3FOWKa" />
        <child id="1177324142645" name="part" index="tZc4B" />
      </concept>
      <concept id="7595771477287526975" name="jetbrains.mps.lang.actions.structure.FluentEntrySubstitutePart" flags="ng" index="1NFvJl" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="daafa647-f1f7-4b0b-b096-69cd7c8408c0" name="jetbrains.mps.baseLanguage.regexp">
      <concept id="1174482804200" name="jetbrains.mps.baseLanguage.regexp.structure.PlusRegexp" flags="ng" index="1OClNT" />
      <concept id="1174484562151" name="jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp" flags="ng" index="1OJ37Q" />
      <concept id="1174485167097" name="jetbrains.mps.baseLanguage.regexp.structure.BinaryRegexp" flags="ng" index="1OLmFC">
        <child id="1174485176897" name="left" index="1OLpdg" />
        <child id="1174485181039" name="right" index="1OLqdY" />
      </concept>
      <concept id="1174485235885" name="jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp" flags="ng" index="1OLBAW">
        <child id="1174485243418" name="regexp" index="1OLDsb" />
      </concept>
      <concept id="1174510540317" name="jetbrains.mps.baseLanguage.regexp.structure.InlineRegexpExpression" flags="nn" index="1Qi9sc">
        <child id="1174510571016" name="regexp" index="1QigWp" />
      </concept>
      <concept id="1174512414484" name="jetbrains.mps.baseLanguage.regexp.structure.MatchRegexpStatement" flags="nn" index="1QpiS5">
        <child id="1174512427594" name="body" index="1Qpmdr" />
        <child id="1174512569438" name="expr" index="1QpSPf" />
      </concept>
      <concept id="1174554186090" name="jetbrains.mps.baseLanguage.regexp.structure.SymbolClassRegexp" flags="ng" index="1SSD1V">
        <child id="1174557628217" name="part" index="1T5LoC" />
      </concept>
      <concept id="1174554211468" name="jetbrains.mps.baseLanguage.regexp.structure.PositiveSymbolClassRegexp" flags="ng" index="1SSJmt" />
      <concept id="1174555732504" name="jetbrains.mps.baseLanguage.regexp.structure.PredefinedSymbolClassRegexp" flags="ng" index="1SYyG9">
        <reference id="1174555843709" name="symbolClass" index="1SYXPG" />
      </concept>
      <concept id="1174557878319" name="jetbrains.mps.baseLanguage.regexp.structure.CharacterSymbolClassPart" flags="ng" index="1T6I$Y">
        <property id="1174557887320" name="character" index="1T6KD9" />
      </concept>
      <concept id="1174653354106" name="jetbrains.mps.baseLanguage.regexp.structure.RegexpUsingConstruction" flags="ng" index="1YMW5F">
        <child id="1174653387388" name="regexp" index="1YN4dH" />
      </concept>
    </language>
  </registry>
  <node concept="3FK_9_" id="4jO$C4ZR7lI">
    <property role="TrG5h" value="FluentExample" />
    <node concept="3FOIzC" id="4jO$C4ZR7lJ" role="3FOPby">
      <property role="3mWAmy" value="Replace Expr with Integer with fluent or simple action '1 ' for fluent, '1' for simple. Notice how becomes visible only when no other action can substitute." />
      <ref role="3FOWKa" to="s19v:4jO$C4ZR7lB" resolve="Expr" />
      <node concept="tYCnQ" id="4jO$C4ZR7lM" role="tZc4B">
        <ref role="uz4UX" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
        <node concept="1NFvJl" id="4jO$C4ZR7lO" role="uz6Si">
          <node concept="ucgPf" id="4jO$C4ZR7lP" role="ucMEw">
            <node concept="3clFbS" id="4jO$C4ZR7lQ" role="2VODD2">
              <node concept="3cpWs8" id="4jO$C4ZRmwd" role="3cqZAp">
                <node concept="3cpWsn" id="4jO$C4ZRmwj" role="3cpWs9">
                  <property role="TrG5h" value="b" />
                  <node concept="3Tqbb2" id="4jO$C4ZRmDG" role="1tU5fm">
                    <ref role="ehGHo" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
                  </node>
                  <node concept="2ShNRf" id="4jO$C4ZRo1S" role="33vP2m">
                    <node concept="3zrR0B" id="4jO$C4ZRo1l" role="2ShVmc">
                      <node concept="3Tqbb2" id="4jO$C4ZRo1m" role="3zrR0E">
                        <ref role="ehGHo" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4jO$C4ZRokD" role="3cqZAp">
                <node concept="37vLTI" id="4jO$C4ZRpuG" role="3clFbG">
                  <node concept="2OqwBi" id="4jO$C4ZRouL" role="37vLTJ">
                    <node concept="37vLTw" id="4jO$C4ZRokB" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jO$C4ZRmwj" resolve="b" />
                    </node>
                    <node concept="3TrcHB" id="4jO$C4ZS8gr" role="2OqNvi">
                      <ref role="3TsBF5" to="s19v:4jO$C4ZS7cJ" resolve="number" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4jO$C4ZRm5Z" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                    <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                    <node concept="2OqwBi" id="4jO$C4ZS5Og" role="37wK5m">
                      <node concept="ub8z3" id="4jO$C4ZRPLL" role="2Oq$k0" />
                      <node concept="liA8E" id="4jO$C4ZS6if" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.trim():java.lang.String" resolve="trim" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4jO$C4ZRqeD" role="3cqZAp">
                <node concept="37vLTw" id="4jO$C4ZRqeB" role="3clFbG">
                  <ref role="3cqZAo" node="4jO$C4ZRmwj" resolve="b" />
                </node>
              </node>
            </node>
          </node>
          <node concept="uaGSO" id="4jO$C4ZRiPe" role="ucKa5">
            <node concept="3clFbS" id="4jO$C4ZRiPf" role="2VODD2">
              <node concept="3SKdUt" id="64EUFCoyrM3" role="3cqZAp">
                <node concept="3SKdUq" id="64EUFCoyrMu" role="3SKWNk">
                  <property role="3SKdUp" value="fluent entry expects an integer followed by exactly one space " />
                </node>
              </node>
              <node concept="34ab3g" id="4jO$C4ZRRKR" role="3cqZAp">
                <property role="35gtTG" value="info" />
                <node concept="3cpWs3" id="4jO$C4ZRYYq" role="34bqiv">
                  <node concept="Xl_RD" id="4jO$C4ZRYYw" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="4jO$C4ZRSi2" role="3uHU7B">
                    <node concept="Xl_RD" id="4jO$C4ZRRKT" role="3uHU7B">
                      <property role="Xl_RC" value="pattern='" />
                    </node>
                    <node concept="ub8z3" id="4jO$C4ZRSnB" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="1QpiS5" id="4jO$C4ZROJd" role="3cqZAp">
                <node concept="1Qi9sc" id="4jO$C4ZROJf" role="1YN4dH">
                  <node concept="1OJ37Q" id="4jO$C4ZS1da" role="1QigWp">
                    <node concept="1OClNT" id="4jO$C4ZS17I" role="1OLpdg">
                      <node concept="1SYyG9" id="4jO$C4ZRWog" role="1OLDsb">
                        <ref role="1SYXPG" to="tpfp:h5SUwpi" resolve="\d" />
                      </node>
                    </node>
                    <node concept="1SSJmt" id="4jO$C4ZS1d9" role="1OLqdY">
                      <node concept="1T6I$Y" id="4jO$C4ZS1nS" role="1T5LoC">
                        <property role="1T6KD9" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ub8z3" id="4jO$C4ZROP5" role="1QpSPf" />
                <node concept="3clFbS" id="4jO$C4ZROJj" role="1Qpmdr">
                  <node concept="34ab3g" id="4jO$C4ZRVne" role="3cqZAp">
                    <property role="35gtTG" value="info" />
                    <node concept="Xl_RD" id="4jO$C4ZRVng" role="34bqiv">
                      <property role="Xl_RC" value="fluent returning true" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4jO$C4ZS4Xx" role="3cqZAp">
                    <node concept="3clFbT" id="4jO$C4ZS4XK" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4jO$C4ZRPun" role="3cqZAp">
                <node concept="3clFbT" id="4jO$C4ZRPuF" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2h3Zct" id="4jO$C4ZRl2Z" role="uGvr4">
            <property role="2h4Kg1" value="Fluent Entry" />
          </node>
          <node concept="uGdhv" id="4jO$C4ZRNAk" role="uGu3D">
            <node concept="3clFbS" id="4jO$C4ZRNAl" role="2VODD2">
              <node concept="3clFbF" id="4jO$C4ZRNIq" role="3cqZAp">
                <node concept="2OqwBi" id="4jO$C4ZS2j1" role="3clFbG">
                  <node concept="ub8z3" id="4jO$C4ZRNIp" role="2Oq$k0" />
                  <node concept="17S1cR" id="4jO$C4ZS2HJ" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ucClh" id="4jO$C4ZRqso" role="uz6Si">
          <node concept="ucgPf" id="4jO$C4ZRqsq" role="ucMEw">
            <node concept="3clFbS" id="4jO$C4ZRqss" role="2VODD2">
              <node concept="3cpWs8" id="4jO$C4ZR$Q3" role="3cqZAp">
                <node concept="3cpWsn" id="4jO$C4ZR$Q4" role="3cpWs9">
                  <property role="TrG5h" value="b" />
                  <node concept="3Tqbb2" id="4jO$C4ZR$Q5" role="1tU5fm">
                    <ref role="ehGHo" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
                  </node>
                  <node concept="2ShNRf" id="4jO$C4ZR$Q6" role="33vP2m">
                    <node concept="3zrR0B" id="4jO$C4ZR$Q7" role="2ShVmc">
                      <node concept="3Tqbb2" id="4jO$C4ZR$Q8" role="3zrR0E">
                        <ref role="ehGHo" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4jO$C4ZS6ry" role="3cqZAp">
                <node concept="37vLTI" id="4jO$C4ZS6rz" role="3clFbG">
                  <node concept="2OqwBi" id="4jO$C4ZS6r$" role="37vLTJ">
                    <node concept="37vLTw" id="4jO$C4ZS6r_" role="2Oq$k0">
                      <ref role="3cqZAo" node="4jO$C4ZR$Q4" resolve="b" />
                    </node>
                    <node concept="3TrcHB" id="4jO$C4ZS6rA" role="2OqNvi">
                      <ref role="3TsBF5" to="s19v:4jO$C4ZS7cJ" resolve="number" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4jO$C4ZS6rB" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                    <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                    <node concept="2OqwBi" id="4jO$C4ZS6rC" role="37wK5m">
                      <node concept="ub8z3" id="4jO$C4ZS6rD" role="2Oq$k0" />
                      <node concept="liA8E" id="4jO$C4ZS6rE" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.trim():java.lang.String" resolve="trim" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4jO$C4ZRFYO" role="3cqZAp">
                <node concept="2OqwBi" id="4jO$C4ZRG3E" role="3clFbG">
                  <node concept="GyYSE" id="4jO$C4ZRFYM" role="2Oq$k0" />
                  <node concept="1P9Npp" id="4jO$C4ZRGbx" role="2OqNvi">
                    <node concept="37vLTw" id="4jO$C4ZRGfa" role="1P9ThW">
                      <ref role="3cqZAo" node="4jO$C4ZR$Q4" resolve="b" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="uGdhv" id="4jO$C4ZScR9" role="uGu3D">
            <node concept="3clFbS" id="4jO$C4ZScRb" role="2VODD2">
              <node concept="3clFbF" id="4jO$C4ZScV3" role="3cqZAp">
                <node concept="2OqwBi" id="4jO$C4ZScV4" role="3clFbG">
                  <node concept="ub8z3" id="4jO$C4ZScV5" role="2Oq$k0" />
                  <node concept="17S1cR" id="4jO$C4ZScV6" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2h3Zct" id="4jO$C4ZR$Uo" role="uGvr4">
            <property role="2h4Kg1" value="Simple Item Substitution" />
          </node>
          <node concept="uaGSO" id="4jO$C4ZSbQQ" role="ucKa5">
            <node concept="3clFbS" id="4jO$C4ZSbQR" role="2VODD2">
              <node concept="3SKdUt" id="64EUFCoys13" role="3cqZAp">
                <node concept="3SKdUq" id="64EUFCoys1r" role="3SKWNk">
                  <property role="3SKdUp" value="imple item expects an integer without any trailing space" />
                </node>
              </node>
              <node concept="34ab3g" id="4jO$C4ZSbY9" role="3cqZAp">
                <property role="35gtTG" value="info" />
                <node concept="3cpWs3" id="4jO$C4ZSbYa" role="34bqiv">
                  <node concept="Xl_RD" id="4jO$C4ZSbYb" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="4jO$C4ZSbYc" role="3uHU7B">
                    <node concept="Xl_RD" id="4jO$C4ZSbYd" role="3uHU7B">
                      <property role="Xl_RC" value="pattern='" />
                    </node>
                    <node concept="ub8z3" id="4jO$C4ZSbYe" role="3uHU7w" />
                  </node>
                </node>
              </node>
              <node concept="1QpiS5" id="4jO$C4ZSbYf" role="3cqZAp">
                <node concept="1Qi9sc" id="4jO$C4ZSbYg" role="1YN4dH">
                  <node concept="1OClNT" id="4jO$C4ZSbYi" role="1QigWp">
                    <node concept="1SYyG9" id="4jO$C4ZSbYj" role="1OLDsb">
                      <ref role="1SYXPG" to="tpfp:h5SUwpi" resolve="\d" />
                    </node>
                  </node>
                </node>
                <node concept="ub8z3" id="4jO$C4ZSbYm" role="1QpSPf" />
                <node concept="3clFbS" id="4jO$C4ZSbYn" role="1Qpmdr">
                  <node concept="34ab3g" id="4jO$C4ZSbYo" role="3cqZAp">
                    <property role="35gtTG" value="info" />
                    <node concept="Xl_RD" id="4jO$C4ZSbYp" role="34bqiv">
                      <property role="Xl_RC" value="simple item returning true" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4jO$C4ZSbYq" role="3cqZAp">
                    <node concept="3clFbT" id="4jO$C4ZSbYr" role="3cqZAk">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4jO$C4ZSbYs" role="3cqZAp">
                <node concept="3clFbT" id="4jO$C4ZSbYt" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

