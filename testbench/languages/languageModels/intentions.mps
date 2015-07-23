<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7344827c-92d1-4046-9d4e-c93304e0d649(jetbrains.mps.testbench.suite.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pop3" ref="r:c8b27be8-26f9-4593-9ae5-f70dd005d131(jetbrains.mps.testbench.suite.structure)" />
    <import index="9a8" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" />
    <import index="srng" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1194033889146" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1XNTG" />
    </language>
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="2S6QgY" id="7tF7F0nWWmE">
    <property role="2ZfUl0" value="true" />
    <property role="TrG5h" value="editoMute" />
    <ref role="2ZfgGC" to="pop3:3U1VhSFTRMU" resolve="ITestRef" />
    <node concept="2S6ZIM" id="7tF7F0nWWmF" role="2ZfVej">
      <node concept="3clFbS" id="7tF7F0nWWmG" role="2VODD2">
        <node concept="3clFbF" id="7tF7F0nX6Xl" role="3cqZAp">
          <node concept="3K4zz7" id="7tF7F0nX6Xs" role="3clFbG">
            <node concept="Xl_RD" id="7tF7F0nX6Xw" role="3K4E3e">
              <property role="Xl_RC" value="Unmute TestCase" />
            </node>
            <node concept="Xl_RD" id="7tF7F0nX6Xx" role="3K4GZi">
              <property role="Xl_RC" value="Mute TestCase" />
            </node>
            <node concept="2OqwBi" id="7tF7F0nX6Xn" role="3K4Cdx">
              <node concept="2Sf5sV" id="7tF7F0nX6Xm" role="2Oq$k0" />
              <node concept="3TrcHB" id="7tF7F0nX6Xr" role="2OqNvi">
                <ref role="3TsBF5" to="pop3:7tF7F0nXrLu" resolve="muted" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="7tF7F0nWWmH" role="2ZfgGD">
      <node concept="3clFbS" id="7tF7F0nWWmI" role="2VODD2">
        <node concept="3clFbF" id="7tF7F0nX6Xy" role="3cqZAp">
          <node concept="37vLTI" id="7tF7F0nX6XD" role="3clFbG">
            <node concept="3fqX7Q" id="7tF7F0nX6XG" role="37vLTx">
              <node concept="2OqwBi" id="7tF7F0nX6XJ" role="3fr31v">
                <node concept="2Sf5sV" id="7tF7F0nX6XI" role="2Oq$k0" />
                <node concept="3TrcHB" id="7tF7F0nX6XN" role="2OqNvi">
                  <ref role="3TsBF5" to="pop3:7tF7F0nXrLu" resolve="muted" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7tF7F0nX6X$" role="37vLTJ">
              <node concept="2Sf5sV" id="7tF7F0nX6Xz" role="2Oq$k0" />
              <node concept="3TrcHB" id="7tF7F0nX6XC" role="2OqNvi">
                <ref role="3TsBF5" to="pop3:7tF7F0nXrLu" resolve="muted" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tF7F0nX94l" role="3cqZAp">
          <node concept="2OqwBi" id="7tF7F0nXkfV" role="3clFbG">
            <node concept="2OqwBi" id="7tF7F0nXgmH" role="2Oq$k0">
              <node concept="1XNTG" id="7tF7F0nXgmG" role="2Oq$k0" />
              <node concept="liA8E" id="7tF7F0nXgmL" role="2OqNvi">
                <ref role="37wK5l" to="srng:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="liA8E" id="7tF7F0nXq99" role="2OqNvi">
              <ref role="37wK5l" to="srng:~EditorComponent.rebuildEditorContent():void" resolve="rebuildEditorContent" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

