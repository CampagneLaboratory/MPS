<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:306699ac-7981-4117-bc07-ec2d425bff05(TestBehavior.test@tests)">
  <persistence version="9" />
  <languages>
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="2b679aa1-c9e8-4a47-84b9-ce94c2202df5" name="L4" version="-1" />
    <use id="b4fa1e36-714a-4c77-8e95-3eae9632decb" name="L5" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
  </languages>
  <imports>
    <import index="8jon" ref="r:28855287-2116-4523-9c44-f18e3449e08d(L1.structure)" />
    <import index="ynox" ref="r:d5b954f8-51a0-4e5e-8222-e5ceaabb7619(UtilSolution.util)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="9x1z" ref="r:e2b20dd3-debc-4be6-b7ff-17ade77d9a0f(L2.structure)" />
    <import index="b361" ref="r:550e598c-d156-49bb-9397-c8a08d52175e(L3.structure)" />
    <import index="g0pg" ref="r:d510b5d3-1f95-49d0-a4ec-479ac64c820d(L4.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="ew0j" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.tool.environment(MPS.Platform/)" />
    <import index="cky9" ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)" />
    <import index="8srx" ref="r:d9b04982-8178-43b9-a21d-72c89abb9e5e(L3.behavior)" />
    <import index="se8q" ref="r:e73a8882-1348-4cf4-beed-84a174b963cd(L4.behavior)" />
    <import index="442" ref="r:2721a314-71a4-4f87-8d33-9d2d1cd9ce6c(L5.structure)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="5fgz" ref="r:306699ac-7981-4117-bc07-ec2d425bff05(TestBehavior.test@tests)" />
    <import index="y8hp" ref="r:5b70af1a-32d2-494c-b96c-b52619ec490d(L2.behavior)" implicit="true" />
    <import index="4uhy" ref="r:e76e445e-2173-496b-9059-50cca123009f(L1.behavior)" implicit="true" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
        <child id="8243879142738613219" name="beforeTest" index="1KhZu4" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
      <concept id="1171985735491" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertSame" flags="nn" index="3vMLTj" />
      <concept id="8243879142738608185" name="jetbrains.mps.baseLanguage.unitTest.structure.BeforeTest" flags="in" index="1KhYhu" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
  </registry>
  <node concept="3s_ewN" id="6EMTxOPT2R6">
    <property role="3s_ewP" value="BHTest" />
    <node concept="312cEg" id="4uPaNIY9iLm" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="4uPaNIY9iKP" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6EMTxOPT2R7" role="1B3o_S" />
    <node concept="3s_gsd" id="6EMTxOPT2R8" role="3s_ewO">
      <node concept="3s$Bmu" id="6EMTxOPT2R9" role="3s_gse">
        <property role="3s$Bm0" value="defaultMethodWorks" />
        <node concept="3cqZAl" id="6EMTxOPT2Rb" role="3clF45" />
        <node concept="3Tm1VV" id="6EMTxOPT2Rd" role="1B3o_S" />
        <node concept="3clFbS" id="6EMTxOPT2Re" role="3clF47">
          <node concept="3cpWs8" id="6EMTxOPT3yX" role="3cqZAp">
            <node concept="3cpWsn" id="6EMTxOPT3z0" role="3cpWs9">
              <property role="TrG5h" value="nodeI1" />
              <node concept="3Tqbb2" id="6EMTxOPT3yW" role="1tU5fm">
                <ref role="ehGHo" to="8jon:7Ts2tYwvl$v" resolve="I1" />
              </node>
              <node concept="2pJPEk" id="6EMTxOPT3zX" role="33vP2m">
                <node concept="2pJPED" id="6EMTxOPT3$o" role="2pJPEn">
                  <ref role="2pJxaS" to="8jon:7Ts2tYwvl$u" resolve="A1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="6LXMTdV4Fcj" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4FhW" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4Fg1" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT3z0" resolve="nodeI1" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4FsR" role="2OqNvi">
                <ref role="37wK5l" to="4uhy:7Ts2tYwvl$V" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4FdL" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT4pe" resolve="DEFAULT_METHOD" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6EMTxOPT5IP" role="3s_gse">
        <property role="3s$Bm0" value="simplePolymorphism" />
        <node concept="3cqZAl" id="6EMTxOPT5IR" role="3clF45" />
        <node concept="3Tm1VV" id="6EMTxOPT5IT" role="1B3o_S" />
        <node concept="3clFbS" id="6EMTxOPT5IU" role="3clF47">
          <node concept="3cpWs8" id="6EMTxOPT6sZ" role="3cqZAp">
            <node concept="3cpWsn" id="6EMTxOPT6t2" role="3cpWs9">
              <property role="TrG5h" value="nodeA" />
              <node concept="3Tqbb2" id="6EMTxOPT6sY" role="1tU5fm">
                <ref role="ehGHo" to="9x1z:6EMTxOPT5Lt" resolve="A" />
              </node>
              <node concept="2pJPEk" id="6EMTxOPT6yg" role="33vP2m">
                <node concept="2pJPED" id="6EMTxOPT6yW" role="2pJPEn">
                  <ref role="2pJxaS" to="9x1z:6EMTxOPT61_" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="6LXMTdV4ERG" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4EXD" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4EWb" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT6t2" resolve="nodeA" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4F9p" role="2OqNvi">
                <ref role="37wK5l" to="y8hp:6EMTxOPT5LT" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4ETx" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT5U5" resolve="POLYMORPHIC_CHILD" />
            </node>
          </node>
          <node concept="3clFbF" id="6EMTxOPT6Qy" role="3cqZAp">
            <node concept="37vLTI" id="6EMTxOPT6SZ" role="3clFbG">
              <node concept="2pJPEk" id="6EMTxOPT6VK" role="37vLTx">
                <node concept="2pJPED" id="6EMTxOPT6Wu" role="2pJPEn">
                  <ref role="2pJxaS" to="9x1z:6EMTxOPT5Lt" resolve="A" />
                </node>
              </node>
              <node concept="37vLTw" id="6EMTxOPT6Qw" role="37vLTJ">
                <ref role="3cqZAo" node="6EMTxOPT6t2" resolve="nodeA" />
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="6LXMTdV4EvE" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4EA4" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4E$v" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT6t2" resolve="nodeA" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4ELV" role="2OqNvi">
                <ref role="37wK5l" to="y8hp:6EMTxOPT5LT" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4ExB" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT5P8" resolve="POLYMORPHIC_PARENT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6EMTxOPT72H" role="3s_gse">
        <property role="3s$Bm0" value="nonVirtualMethod" />
        <node concept="3cqZAl" id="6EMTxOPT72J" role="3clF45" />
        <node concept="3Tm1VV" id="6EMTxOPT72L" role="1B3o_S" />
        <node concept="3clFbS" id="6EMTxOPT72M" role="3clF47">
          <node concept="3cpWs8" id="6EMTxOPT801" role="3cqZAp">
            <node concept="3cpWsn" id="6EMTxOPT804" role="3cpWs9">
              <property role="TrG5h" value="nodeA" />
              <node concept="3Tqbb2" id="6EMTxOPT800" role="1tU5fm">
                <ref role="ehGHo" to="b361:6EMTxOPT7d_" resolve="A" />
              </node>
              <node concept="2pJPEk" id="6EMTxOPT82C" role="33vP2m">
                <node concept="2pJPED" id="6EMTxOPT83V" role="2pJPEn">
                  <ref role="2pJxaS" to="b361:6EMTxOPT7nG" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="6LXMTdV4Ds3" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4D_A" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4DzN" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT804" resolve="nodeA" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4DLF" role="2OqNvi">
                <ref role="37wK5l" to="8srx:6EMTxOPT7e1" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4Dvb" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT7fo" resolve="NON_VIRTUAL_PARENT" />
            </node>
          </node>
          <node concept="3cpWs8" id="6EMTxOPT8hx" role="3cqZAp">
            <node concept="3cpWsn" id="6EMTxOPT8hy" role="3cpWs9">
              <property role="TrG5h" value="nodeB" />
              <node concept="3Tqbb2" id="6EMTxOPT8hz" role="1tU5fm">
                <ref role="ehGHo" to="b361:6EMTxOPT7nG" resolve="B" />
              </node>
              <node concept="2pJPEk" id="6EMTxOPT8h$" role="33vP2m">
                <node concept="2pJPED" id="6EMTxOPT8h_" role="2pJPEn">
                  <ref role="2pJxaS" to="b361:6EMTxOPT7nG" resolve="B" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vMLTj" id="6LXMTdV4DQU" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4E1t" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4DY7" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT8hy" resolve="nodeB" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4EhJ" role="2OqNvi">
                <ref role="37wK5l" to="8srx:6EMTxOPT7e1" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4DTH" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT7fo" resolve="NON_VIRTUAL_PARENT" />
            </node>
          </node>
          <node concept="3vMLTj" id="4Z_250NI_U5" role="3cqZAp">
            <node concept="10M0yZ" id="6LXMTdV4EiK" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT7j8" resolve="NON_VIRTUAL_CHILD" />
            </node>
            <node concept="2OqwBi" id="6LXMTdV4Eoi" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4Eoj" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT8hy" resolve="nodeB" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4Eok" role="2OqNvi">
                <ref role="37wK5l" to="8srx:6EMTxOPT7o8" resolve="foo" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6EMTxOPT9ea" role="3s_gse">
        <property role="3s$Bm0" value="simpleDiamond1" />
        <node concept="3cqZAl" id="6EMTxOPT9ec" role="3clF45" />
        <node concept="3Tm1VV" id="6EMTxOPT9ee" role="1B3o_S" />
        <node concept="3clFbS" id="6EMTxOPT9ef" role="3clF47">
          <node concept="3cpWs8" id="6EMTxOPT9Jw" role="3cqZAp">
            <node concept="3cpWsn" id="6EMTxOPT9Jz" role="3cpWs9">
              <property role="TrG5h" value="nodeI" />
              <node concept="3Tqbb2" id="6EMTxOPT9Jv" role="1tU5fm">
                <ref role="ehGHo" to="g0pg:6EMTxOPT9mz" resolve="I" />
              </node>
              <node concept="2pJPEk" id="6EMTxOPTacI" role="33vP2m">
                <node concept="2pJPED" id="6EMTxOPTad9" role="2pJPEn">
                  <ref role="2pJxaS" to="g0pg:6EMTxOPT9mD" resolve="C1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="6LXMTdV4rz5" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV4rC6" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV4rAN" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPT9Jz" resolve="nodeI" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV4$T8" role="2OqNvi">
                <ref role="37wK5l" to="se8q:6EMTxOPT9nl" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV4r$z" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT9yv" resolve="DIAMOND_C1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6LXMTdV54qk" role="3s_gse">
        <property role="3s$Bm0" value="simpleDiamond2" />
        <node concept="3cqZAl" id="6LXMTdV54ql" role="3clF45" />
        <node concept="3Tm1VV" id="6LXMTdV54qm" role="1B3o_S" />
        <node concept="3clFbS" id="6LXMTdV54qn" role="3clF47">
          <node concept="3cpWs8" id="6LXMTdV54qo" role="3cqZAp">
            <node concept="3cpWsn" id="6LXMTdV54qp" role="3cpWs9">
              <property role="TrG5h" value="nodeI" />
              <node concept="3Tqbb2" id="6LXMTdV54qq" role="1tU5fm">
                <ref role="ehGHo" to="g0pg:6EMTxOPT9mz" resolve="I" />
              </node>
              <node concept="2pJPEk" id="6LXMTdV54qr" role="33vP2m">
                <node concept="2pJPED" id="6LXMTdV54tA" role="2pJPEn">
                  <ref role="2pJxaS" to="g0pg:6LXMTdV54ol" resolve="C2" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="6LXMTdV54qt" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV54qu" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV54qv" role="2Oq$k0">
                <ref role="3cqZAo" node="6LXMTdV54qp" resolve="nodeI" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV54qw" role="2OqNvi">
                <ref role="37wK5l" to="se8q:6EMTxOPT9nl" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV54qx" role="3tpDZB">
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
              <ref role="3cqZAo" to="ynox:6EMTxOPT9vr" resolve="DIAMOND_I1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6LXMTdV54Hf" role="3s_gse">
        <property role="3s$Bm0" value="simpleDiamond3" />
        <node concept="3cqZAl" id="6LXMTdV54Hg" role="3clF45" />
        <node concept="3Tm1VV" id="6LXMTdV54Hh" role="1B3o_S" />
        <node concept="3clFbS" id="6LXMTdV54Hi" role="3clF47">
          <node concept="3cpWs8" id="6LXMTdV54Hj" role="3cqZAp">
            <node concept="3cpWsn" id="6LXMTdV54Hk" role="3cpWs9">
              <property role="TrG5h" value="nodeI" />
              <node concept="3Tqbb2" id="6LXMTdV54Hl" role="1tU5fm">
                <ref role="ehGHo" to="g0pg:6EMTxOPT9mz" resolve="I" />
              </node>
              <node concept="2pJPEk" id="6LXMTdV54Hm" role="33vP2m">
                <node concept="2pJPED" id="6LXMTdV54Lv" role="2pJPEn">
                  <ref role="2pJxaS" to="g0pg:6LXMTdV54wE" resolve="C3" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3vlDli" id="6LXMTdV54Ho" role="3cqZAp">
            <node concept="2OqwBi" id="6LXMTdV54Hp" role="3tpDZA">
              <node concept="37vLTw" id="6LXMTdV54Hq" role="2Oq$k0">
                <ref role="3cqZAo" node="6LXMTdV54Hk" resolve="nodeI" />
              </node>
              <node concept="2qgKlT" id="6LXMTdV54Hr" role="2OqNvi">
                <ref role="37wK5l" to="se8q:6EMTxOPT9nl" resolve="foo" />
              </node>
            </node>
            <node concept="10M0yZ" id="6LXMTdV54Hs" role="3tpDZB">
              <ref role="3cqZAo" to="ynox:6EMTxOPT9vr" resolve="DIAMOND_I1" />
              <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6LXMTdV54Zw" role="3s_gse">
        <property role="3s$Bm0" value="constructorInvocation1" />
        <node concept="3cqZAl" id="6LXMTdV54Zy" role="3clF45" />
        <node concept="3Tm1VV" id="6LXMTdV54Z$" role="1B3o_S" />
        <node concept="3clFbS" id="6LXMTdV54Z_" role="3clF47">
          <node concept="3clFbF" id="4uPaNIY9j1P" role="3cqZAp">
            <node concept="2OqwBi" id="4uPaNIY9jnn" role="3clFbG">
              <node concept="2OqwBi" id="4uPaNIY9j59" role="2Oq$k0">
                <node concept="37vLTw" id="4uPaNIY9j1N" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uPaNIY9iLm" resolve="myProject" />
                </node>
                <node concept="liA8E" id="4uPaNIY9jmB" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="4uPaNIY9jrz" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                <node concept="1bVj0M" id="4uPaNIY9njL" role="37wK5m">
                  <node concept="3clFbS" id="4uPaNIY9njM" role="1bW5cS">
                    <node concept="3cpWs8" id="3lthDWbCIh$" role="3cqZAp">
                      <node concept="3cpWsn" id="3lthDWbCIhB" role="3cpWs9">
                        <property role="TrG5h" value="nodeI1" />
                        <node concept="3Tqbb2" id="3lthDWbCIhz" role="1tU5fm">
                          <ref role="ehGHo" to="442:3lthDWbChjb" resolve="I1" />
                        </node>
                        <node concept="2ShNRf" id="hx_P8re" role="33vP2m">
                          <node concept="2fJWfE" id="3nElHYn1gs_" role="2ShVmc">
                            <node concept="3Tqbb2" id="3nElHYn1gsA" role="3zrR0E">
                              <ref role="ehGHo" to="442:3lthDWbCGoB" resolve="C0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3vlDli" id="3lthDWbCIpp" role="3cqZAp">
                      <node concept="2OqwBi" id="3lthDWbCIs8" role="3tpDZA">
                        <node concept="37vLTw" id="3lthDWbCIr3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3lthDWbCIhB" resolve="nodeI1" />
                        </node>
                        <node concept="3TrcHB" id="3lthDWbCIAR" role="2OqNvi">
                          <ref role="3TsBF5" to="442:3lthDWbChjD" resolve="a" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="3lthDWbCIqk" role="3tpDZB">
                        <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
                        <ref role="3cqZAo" to="ynox:3lthDWbC$3W" resolve="I1_DEFAULT_VALUE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3lthDWbCIC6" role="3s_gse">
        <property role="3s$Bm0" value="constructorInvocation2" />
        <node concept="3cqZAl" id="3lthDWbCIC7" role="3clF45" />
        <node concept="3Tm1VV" id="3lthDWbCIC8" role="1B3o_S" />
        <node concept="3clFbS" id="3lthDWbCIC9" role="3clF47">
          <node concept="3clFbF" id="4uPaNIY9nGR" role="3cqZAp">
            <node concept="2OqwBi" id="4uPaNIY9nGT" role="3clFbG">
              <node concept="2OqwBi" id="4uPaNIY9nGU" role="2Oq$k0">
                <node concept="37vLTw" id="4uPaNIY9nGV" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uPaNIY9iLm" resolve="myProject" />
                </node>
                <node concept="liA8E" id="4uPaNIY9nGW" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="4uPaNIY9nGX" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                <node concept="1bVj0M" id="4uPaNIY9nGY" role="37wK5m">
                  <node concept="3clFbS" id="4uPaNIY9nGZ" role="1bW5cS">
                    <node concept="3cpWs8" id="4uPaNIY9o2e" role="3cqZAp">
                      <node concept="3cpWsn" id="4uPaNIY9o2f" role="3cpWs9">
                        <property role="TrG5h" value="nodeI1" />
                        <node concept="3Tqbb2" id="4uPaNIY9o2g" role="1tU5fm">
                          <ref role="ehGHo" to="442:3lthDWbChjb" resolve="I1" />
                        </node>
                        <node concept="2ShNRf" id="4uPaNIY9o2h" role="33vP2m">
                          <node concept="2fJWfE" id="4uPaNIY9o2i" role="2ShVmc">
                            <node concept="3Tqbb2" id="4uPaNIY9o2j" role="3zrR0E">
                              <ref role="ehGHo" to="442:3lthDWbCzJ7" resolve="C1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3vlDli" id="4uPaNIY9o2k" role="3cqZAp">
                      <node concept="2OqwBi" id="4uPaNIY9o2l" role="3tpDZA">
                        <node concept="37vLTw" id="4uPaNIY9o2m" role="2Oq$k0">
                          <ref role="3cqZAo" node="4uPaNIY9o2f" resolve="nodeI1" />
                        </node>
                        <node concept="3TrcHB" id="4uPaNIY9o2n" role="2OqNvi">
                          <ref role="3TsBF5" to="442:3lthDWbChjD" resolve="a" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="4uPaNIY9o2o" role="3tpDZB">
                        <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
                        <ref role="3cqZAo" to="ynox:3lthDWbC$77" resolve="C1_DEFAULT_VALUE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3lthDWbCIH7" role="3s_gse">
        <property role="3s$Bm0" value="constructorInvocation3" />
        <node concept="3cqZAl" id="3lthDWbCIH8" role="3clF45" />
        <node concept="3Tm1VV" id="3lthDWbCIH9" role="1B3o_S" />
        <node concept="3clFbS" id="3lthDWbCIHa" role="3clF47">
          <node concept="3clFbF" id="4uPaNIY9nK8" role="3cqZAp">
            <node concept="2OqwBi" id="4uPaNIY9nKa" role="3clFbG">
              <node concept="2OqwBi" id="4uPaNIY9nKb" role="2Oq$k0">
                <node concept="37vLTw" id="4uPaNIY9nKc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uPaNIY9iLm" resolve="myProject" />
                </node>
                <node concept="liA8E" id="4uPaNIY9nKd" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="4uPaNIY9nKe" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                <node concept="1bVj0M" id="4uPaNIY9nKf" role="37wK5m">
                  <node concept="3clFbS" id="4uPaNIY9nKg" role="1bW5cS">
                    <node concept="3cpWs8" id="3lthDWbCIHb" role="3cqZAp">
                      <node concept="3cpWsn" id="3lthDWbCIHc" role="3cpWs9">
                        <property role="TrG5h" value="nodeI1" />
                        <node concept="3Tqbb2" id="3lthDWbCIHd" role="1tU5fm">
                          <ref role="ehGHo" to="442:3lthDWbChjb" resolve="I1" />
                        </node>
                        <node concept="2ShNRf" id="4uPaNIY92fC" role="33vP2m">
                          <node concept="2fJWfE" id="4uPaNIY92fD" role="2ShVmc">
                            <node concept="3Tqbb2" id="4uPaNIY92fE" role="3zrR0E">
                              <ref role="ehGHo" to="442:3lthDWbCJ67" resolve="C2" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3vlDli" id="3lthDWbCIHg" role="3cqZAp">
                      <node concept="2OqwBi" id="3lthDWbCIHh" role="3tpDZA">
                        <node concept="37vLTw" id="3lthDWbCIHi" role="2Oq$k0">
                          <ref role="3cqZAo" node="3lthDWbCIHc" resolve="nodeI1" />
                        </node>
                        <node concept="3TrcHB" id="3lthDWbCIHj" role="2OqNvi">
                          <ref role="3TsBF5" to="442:3lthDWbChjD" resolve="a" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="3lthDWbCIHk" role="3tpDZB">
                        <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
                        <ref role="3cqZAo" to="ynox:3lthDWbC$5x" resolve="I2_DEFAULT_VALUE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="3lthDWbCJsi" role="3s_gse">
        <property role="3s$Bm0" value="constructorInvocationDiamond" />
        <node concept="3cqZAl" id="3lthDWbCJsj" role="3clF45" />
        <node concept="3Tm1VV" id="3lthDWbCJsk" role="1B3o_S" />
        <node concept="3clFbS" id="3lthDWbCJsl" role="3clF47">
          <node concept="3clFbF" id="4uPaNIY9nNp" role="3cqZAp">
            <node concept="2OqwBi" id="4uPaNIY9nNr" role="3clFbG">
              <node concept="2OqwBi" id="4uPaNIY9nNs" role="2Oq$k0">
                <node concept="37vLTw" id="4uPaNIY9nNt" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uPaNIY9iLm" resolve="myProject" />
                </node>
                <node concept="liA8E" id="4uPaNIY9nNu" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="4uPaNIY9nNv" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                <node concept="1bVj0M" id="4uPaNIY9nNw" role="37wK5m">
                  <node concept="3clFbS" id="4uPaNIY9nNx" role="1bW5cS">
                    <node concept="3cpWs8" id="4uPaNIY9nRB" role="3cqZAp">
                      <node concept="3cpWsn" id="4uPaNIY9nRC" role="3cpWs9">
                        <property role="TrG5h" value="nodeI1" />
                        <node concept="3Tqbb2" id="4uPaNIY9nRD" role="1tU5fm">
                          <ref role="ehGHo" to="442:3lthDWbChjb" resolve="I1" />
                        </node>
                        <node concept="2ShNRf" id="4uPaNIY9nRE" role="33vP2m">
                          <node concept="2fJWfE" id="4uPaNIY9nRF" role="2ShVmc">
                            <node concept="3Tqbb2" id="4uPaNIY9nRG" role="3zrR0E">
                              <ref role="ehGHo" to="442:3lthDWbCKy6" resolve="C4" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3vlDli" id="4uPaNIY9nRH" role="3cqZAp">
                      <node concept="2OqwBi" id="4uPaNIY9nRI" role="3tpDZA">
                        <node concept="37vLTw" id="4uPaNIY9nRJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="4uPaNIY9nRC" resolve="nodeI1" />
                        </node>
                        <node concept="3TrcHB" id="4uPaNIY9nRK" role="2OqNvi">
                          <ref role="3TsBF5" to="442:3lthDWbChjD" resolve="a" />
                        </node>
                      </node>
                      <node concept="10M0yZ" id="4uPaNIY9nRL" role="3tpDZB">
                        <ref role="3cqZAo" to="ynox:3lthDWbCKsA" resolve="C3_DEFAULT_VALUE" />
                        <ref role="1PxDUh" to="ynox:6EMTxOPT4es" resolve="TestResults" />
                      </node>
                    </node>
                    <node concept="3clFbH" id="4uPaNIY9nQE" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KhYhu" id="6EMTxOPT4XR" role="1KhZu4">
      <node concept="3clFbS" id="6EMTxOPT4XS" role="2VODD2">
        <node concept="3cpWs8" id="6EMTxOPTaUZ" role="3cqZAp">
          <node concept="3cpWsn" id="6EMTxOPTaV0" role="3cpWs9">
            <property role="TrG5h" value="env" />
            <node concept="3uibUv" id="6EMTxOPTaUY" role="1tU5fm">
              <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
            </node>
            <node concept="2YIFZM" id="6EMTxOPTaV1" role="33vP2m">
              <ref role="1Pybhc" to="79ha:6rx4kZDk6yp" resolve="MpsEnvironment" />
              <ref role="37wK5l" to="79ha:6LlhC3WJZzD" resolve="getOrCreate" />
              <node concept="2YIFZM" id="6LXMTdV54dD" role="37wK5m">
                <ref role="37wK5l" to="79ha:6rx4kZDkZ7z" resolve="defaultConfig" />
                <ref role="1Pybhc" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4uPaNIY9iOs" role="3cqZAp">
          <node concept="37vLTI" id="4uPaNIY9iS_" role="3clFbG">
            <node concept="37vLTw" id="4uPaNIY9iOq" role="37vLTJ">
              <ref role="3cqZAo" node="4uPaNIY9iLm" resolve="myProject" />
            </node>
            <node concept="2OqwBi" id="4uPaNIY9iFu" role="37vLTx">
              <node concept="37vLTw" id="4uPaNIY9iFv" role="2Oq$k0">
                <ref role="3cqZAo" node="6EMTxOPTaV0" resolve="env" />
              </node>
              <node concept="liA8E" id="4uPaNIY9iFw" role="2OqNvi">
                <ref role="37wK5l" to="79ha:6rx4kZDjWg4" resolve="openProject" />
                <node concept="2ShNRf" id="4uPaNIY9iFx" role="37wK5m">
                  <node concept="1pGfFk" id="4uPaNIY9iFy" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="Xl_RD" id="4uPaNIY9iFz" role="37wK5m">
                      <property role="Xl_RC" value="/home/apyshkin/MPSProjects/BehaviorTest" />
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
</model>

