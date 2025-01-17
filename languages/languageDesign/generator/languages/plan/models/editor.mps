<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f2ba8024-88b1-43d0-afb0-7856ed64ccb1(jetbrains.mps.lang.generator.plan.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bjdw" ref="r:4a23ef0d-9c2f-48a6-8597-fbdd5b11f792(jetbrains.mps.lang.generator.plan.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpeu" ref="r:00000000-0000-4000-0000-011c895902fa(jetbrains.mps.lang.smodel.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622665029" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_model" flags="nn" index="1Q6Npb" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
      </concept>
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="in" index="1ouSdP" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="1165347032372" name="elementMenuDescriptor" index="1k68KV" />
      </concept>
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="in" index="3GJtP1" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="nn" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="24kQdi" id="2ztrlDPiwxF">
    <ref role="1XX52x" to="bjdw:1_4co2y1LvV" resolve="Plan" />
    <node concept="3EZMnI" id="2ztrlDPiwxH" role="2wV5jI">
      <node concept="3F0A7n" id="2ztrlDPiwy3" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2ztrlDPiwxY" role="3EZMnx" />
      <node concept="3F2HdR" id="2ztrlDPiwxO" role="3EZMnx">
        <ref role="1NtTu8" to="bjdw:1_4co2y1Lw7" />
        <node concept="2iRkQZ" id="2ztrlDPiwxR" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="2ztrlDPiwxK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2ztrlDPiwyx">
    <ref role="1XX52x" to="bjdw:1_4co2y1Lw1" resolve="Checkpoint" />
    <node concept="3EZMnI" id="2ztrlDPiwyJ" role="2wV5jI">
      <node concept="2iRfu4" id="2ztrlDPiwz5" role="2iSdaV" />
      <node concept="3F0ifn" id="2ztrlDPiwyL" role="3EZMnx">
        <property role="3F0ifm" value="checkpoint" />
      </node>
      <node concept="3F0A7n" id="2ztrlDPiwyM" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2ztrlDPiwzB">
    <ref role="1XX52x" to="bjdw:1_4co2y1Lw2" resolve="Transform" />
    <node concept="3EZMnI" id="2ztrlDPix4y" role="2wV5jI">
      <node concept="2iRkQZ" id="2ztrlDPix4E" role="2iSdaV" />
      <node concept="3F0ifn" id="2ztrlDPix4H" role="3EZMnx">
        <property role="3F0ifm" value="transform" />
      </node>
      <node concept="3EZMnI" id="4nEGcLMemkd" role="3EZMnx">
        <node concept="l2Vlx" id="4nEGcLMemke" role="2iSdaV" />
        <node concept="3F2HdR" id="2ztrlDPix4M" role="3EZMnx">
          <ref role="1NtTu8" to="bjdw:2ztrlDPivEd" />
          <node concept="2iRkQZ" id="2ztrlDPix4P" role="2czzBx" />
          <node concept="OXEIz" id="2ztrlDPixWm" role="1k68KV">
            <node concept="1ou48o" id="34EJa6aIpE7" role="OY2wv">
              <node concept="1ouSdP" id="34EJa6aIpE8" role="1ou48m">
                <node concept="3clFbS" id="34EJa6aIpE9" role="2VODD2">
                  <node concept="3cpWs8" id="34EJa6aIrBN" role="3cqZAp">
                    <node concept="3cpWsn" id="34EJa6aIrBO" role="3cpWs9">
                      <property role="TrG5h" value="lid" />
                      <node concept="3Tqbb2" id="34EJa6aIrBK" role="1tU5fm">
                        <ref role="ehGHo" to="tp25:34EJa6aIcz0" resolve="LanguageId" />
                      </node>
                      <node concept="2OqwBi" id="34EJa6aIrBP" role="33vP2m">
                        <node concept="1Q6Npb" id="34EJa6aIrBQ" role="2Oq$k0" />
                        <node concept="I8ghe" id="34EJa6aIrBR" role="2OqNvi">
                          <ref role="I8UWU" to="tp25:34EJa6aIcz0" resolve="LanguageId" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="34EJa6aIrIT" role="3cqZAp">
                    <node concept="2OqwBi" id="34EJa6aIrLx" role="3clFbG">
                      <node concept="37vLTw" id="34EJa6aIrIR" role="2Oq$k0">
                        <ref role="3cqZAo" node="34EJa6aIrBO" resolve="lid" />
                      </node>
                      <node concept="2qgKlT" id="34EJa6aIs4N" role="2OqNvi">
                        <ref role="37wK5l" to="tpeu:34EJa6aIcyw" resolve="setLanguage" />
                        <node concept="3GLrbK" id="34EJa6aIs69" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="34EJa6aIqfK" role="3cqZAp">
                    <node concept="2OqwBi" id="2ztrlDPi$vH" role="3clFbG">
                      <node concept="2OqwBi" id="34EJa6aIqhq" role="2Oq$k0">
                        <node concept="3GMtW1" id="34EJa6aIqfI" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="2ztrlDPi$8g" role="2OqNvi">
                          <ref role="3TtcxE" to="bjdw:2ztrlDPivEd" />
                        </node>
                      </node>
                      <node concept="TSZUe" id="2ztrlDPi_Kv" role="2OqNvi">
                        <node concept="37vLTw" id="2ztrlDPi_US" role="25WWJ7">
                          <ref role="3cqZAo" node="34EJa6aIrBO" resolve="lid" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3GJtP1" id="34EJa6aIpEf" role="1ou48n">
                <node concept="3clFbS" id="34EJa6aIpEg" role="2VODD2">
                  <node concept="3cpWs8" id="34EJa6aIpEh" role="3cqZAp">
                    <node concept="3cpWsn" id="34EJa6aIpEi" role="3cpWs9">
                      <property role="TrG5h" value="allLanguages" />
                      <node concept="3uibUv" id="34EJa6aIpEj" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="34EJa6aIpEk" role="11_B2D">
                          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="34EJa6aIpEl" role="33vP2m">
                        <node concept="2YIFZM" id="34EJa6aIpEm" role="2Oq$k0">
                          <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                          <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance():jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                        </node>
                        <node concept="liA8E" id="34EJa6aIpEn" role="2OqNvi">
                          <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages():java.util.Collection" resolve="getAllLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="34EJa6aIpEo" role="3cqZAp">
                    <node concept="2ShNRf" id="34EJa6aIpEp" role="3cqZAk">
                      <node concept="1pGfFk" id="34EJa6aIpEq" role="2ShVmc">
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                        <node concept="37vLTw" id="34EJa6aIpEr" role="37wK5m">
                          <ref role="3cqZAo" node="34EJa6aIpEi" resolve="allLanguages" />
                        </node>
                        <node concept="3uibUv" id="34EJa6aIpEs" role="1pMfVU">
                          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="34EJa6aIpEt" role="1eyP2E">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
          </node>
          <node concept="lj46D" id="4nEGcLMellg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

