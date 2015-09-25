<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902a5(jetbrains.mps.lang.actions.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpdg" ref="r:00000000-0000-4000-0000-011c895902a8(jetbrains.mps.lang.actions.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpep" ref="r:00000000-0000-4000-0000-011c895902fd(jetbrains.mps.lang.smodel.editor)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450555" name="gridLayout" index="2czwfM" />
        <property id="1140524450554" name="vertical" index="2czwfN" />
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1140524450556" name="usesBraces" index="2czwfP" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <property id="1073389446426" name="gridLayout" index="3EZMnz" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="gbFPXre">
    <ref role="1XX52x" to="tpdg:gbFOIBE" resolve="NodeSubstituteActionsBuilder" />
    <node concept="3EZMnI" id="h8Hug_4" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8Hug_5" role="3EZMnx">
        <node concept="3F0ifn" id="h8Hug_6" role="3EZMnx">
          <property role="3F0ifm" value="substituted node:" />
        </node>
        <node concept="1iCGBv" id="h8Hug_7" role="3EZMnx">
          <property role="1$x2rV" value="&lt;choose concept&gt;" />
          <ref role="1NtTu8" to="tpdg:gbFOWO8" />
          <node concept="1sVBvm" id="h8Hug_8" role="1sWHZn">
            <node concept="3F0A7n" id="h8Hug_9" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8y$" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="hawR0LP" role="3EZMnx">
          <property role="3F0ifm" value=" //" />
          <node concept="VPM3Z" id="hEU$Py3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VechU" id="hEZR8qL" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="3F0A7n" id="hawR55e" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no description&gt;" />
          <ref role="1NtTu8" to="tpdg:gRmWAiJ" resolve="description" />
          <node concept="VechU" id="hEZR8sj" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P_C" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTN" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8Hug_a" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIkxqK" role="3EZMnx" />
        <node concept="3EZMnI" id="h8Hug_c" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="hawQhTN" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hawQhTO" role="3EZMnx">
              <property role="3F0ifm" value="condition :" />
            </node>
            <node concept="VPM3Z" id="hEU$Pb7" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKU9" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hawQMVK" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOIkwR6" role="3EZMnx" />
            <node concept="3F1sOY" id="hawQMVM" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpdg:gNbvWY3" />
            </node>
            <node concept="VPM3Z" id="hEU$PKa" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSS" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="haxEUoZ" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PyA" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="h9ORuDc" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="h9ORuWR" role="3EZMnx">
              <property role="3F0ifm" value="common initializer :" />
            </node>
            <node concept="VPM3Z" id="hEU$PTk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQF" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h9AtVy7" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOIkuAL" role="3EZMnx" />
            <node concept="3F2HdR" id="h9AtW_g" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <ref role="1NtTu8" to="tpdg:h9AtXPE" />
              <node concept="3F0ifn" id="hax1hAA" role="2czzBI">
                <property role="ilYzB" value="&lt;no common variables&gt;" />
                <node concept="VPxyj" id="hEZKQxH" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2iRkQZ" id="i2IBKUH" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hEU$PsW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSf" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hax18Bj" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOIkvoP" role="3EZMnx" />
            <node concept="3F0ifn" id="hax1a06" role="3EZMnx">
              <property role="3F0ifm" value="...................................." />
              <node concept="VPM3Z" id="hEU$Pnb" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="VechU" id="hEZR8xy" role="3F10Kt">
                <property role="Vb096" value="gray" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$Pks" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTj" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h9ORy8N" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="h9ORy8O" role="3EZMnx">
              <property role="3F0ifm" value="  " />
              <node concept="VPM3Z" id="hEU$Pn6" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="h9ORzip" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no supplemental initializer&gt;" />
              <ref role="1NtTu8" to="tpdg:h9ORn56" />
            </node>
            <node concept="VPM3Z" id="hEU$PvH" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRc" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hax5l_g" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$P6j" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8HugAP" role="3EZMnx">
            <node concept="3F0ifn" id="h8HugAQ" role="3EZMnx">
              <property role="3F0ifm" value="actions :" />
            </node>
            <node concept="VPM3Z" id="hEU$OV1" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRm" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h8HugAS" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIkw2m" role="3EZMnx" />
            <node concept="3F2HdR" id="h8HugAU" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <property role="2czwfO" value="----------" />
              <ref role="1NtTu8" to="tpdg:h8tZc0P" />
              <node concept="2iRkQZ" id="i2IBKUE" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hEU$P0z" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKR8" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PEX" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKSh" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PtU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKS9" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKTv" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gbJtPRI">
    <ref role="1XX52x" to="tpdg:gbFK_dB" resolve="NodeSubstituteActions" />
    <node concept="3EZMnI" id="gbJtTfN" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gEl0dUz" role="3EZMnx">
        <node concept="3F0ifn" id="gEl0eZX" role="3EZMnx">
          <property role="3F0ifm" value="node substitute actions" />
        </node>
        <node concept="3F0A7n" id="gEl0gon" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="hEZR8_p" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PGa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRK" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gbJuao2" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PXJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gbJu0GR" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F2HdR" id="gbJuao4" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfM" value="true" />
          <property role="2czwfO" value="----------" />
          <ref role="1NtTu8" to="tpdg:gbFOPfw" />
          <node concept="VPM3Z" id="hEU$PyC" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IBKUy" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$Pu4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRr" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKQx" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gzUO7gA">
    <ref role="1XX52x" to="tpdg:gzUNGri" resolve="SideTransformHintSubstituteActionsBuilder" />
    <node concept="3EZMnI" id="h8_1WMD" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <property role="1ayjP4" value="true" />
      <node concept="3EZMnI" id="h8_1WME" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0A7n" id="hG7I64f" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hG7I3o2" resolve="side" />
          <node concept="Vb9p2" id="hG7IMDT" role="3F10Kt">
            <property role="Vbekb" value="BOLD" />
          </node>
        </node>
        <node concept="3F0ifn" id="h8_1WMF" role="3EZMnx">
          <property role="3F0ifm" value="transformed node:" />
        </node>
        <node concept="1iCGBv" id="h8_1WMG" role="3EZMnx">
          <property role="1$x2rV" value="&lt;choose concept&gt;" />
          <ref role="1NtTu8" to="tpdg:gzUNGrm" />
          <node concept="1sVBvm" id="h8_1WMH" role="1sWHZn">
            <node concept="3F0A7n" id="h8_1WMI" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8z3" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="h8_1WMJ" role="3EZMnx">
          <property role="3F0ifm" value="tag:" />
        </node>
        <node concept="3F0A7n" id="h8_1WMK" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:gAuHTzT" resolve="transformTag" />
          <node concept="VechU" id="hEZR8_$" role="3F10Kt">
            <property role="Vb096" value="DARK_MAGENTA" />
          </node>
        </node>
        <node concept="3F0ifn" id="haxGaBg" role="3EZMnx">
          <property role="3F0ifm" value=" //" />
          <node concept="VPM3Z" id="hEU$P_y" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VechU" id="hEZR8yr" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
          <node concept="11LMrY" id="hXbXGZA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="haxGaBh" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no description&gt;" />
          <ref role="1NtTu8" to="tpdg:gRmWRRv" resolve="description" />
          <node concept="VechU" id="hEZR8n_" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PQ7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRt" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8_1Yxb" role="3EZMnx">
        <node concept="3XFhqQ" id="hOImd7R" role="3EZMnx" />
        <node concept="3EZMnI" id="h8_30wz" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="haxFVyQ" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="haxFVyR" role="3EZMnx">
              <property role="3F0ifm" value="condition :" />
            </node>
            <node concept="VPM3Z" id="hEU$P4h" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKU3" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="haxFVyS" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOImeHV" role="3EZMnx" />
            <node concept="3F1sOY" id="haxFVyU" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpdg:gNkShGo" />
            </node>
            <node concept="VPM3Z" id="hEU$P0$" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSJ" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="haxFVyV" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$Py_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="hwH7NUC" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hwH7NUD" role="3EZMnx">
              <property role="3F0ifm" value="common initializer :" />
            </node>
            <node concept="VPM3Z" id="hEU$P7p" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQJ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hwH7NUE" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOImfZY" role="3EZMnx" />
            <node concept="3F2HdR" id="hwH7NUG" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <ref role="1NtTu8" to="tpdg:hwH7PYb" />
              <node concept="3F0ifn" id="hwH7NUH" role="2czzBI">
                <property role="ilYzB" value="&lt;no common variables&gt;" />
                <node concept="VPxyj" id="hEZKQwU" role="3F10Kt">
                  <property role="VOm3f" value="true" />
                </node>
              </node>
              <node concept="2iRkQZ" id="i2IBKU_" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hEU$Pbd" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRJ" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hwH7NUI" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOImiaE" role="3EZMnx" />
            <node concept="3F0ifn" id="hwH7NUK" role="3EZMnx">
              <property role="3F0ifm" value="...................................." />
              <node concept="VPM3Z" id="hEU$PEz" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="VechU" id="hEZR8tm" role="3F10Kt">
                <property role="Vb096" value="gray" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$OVm" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQs" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hwH7NUL" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hOImjfL" role="3EZMnx" />
            <node concept="3F1sOY" id="hwHebNq" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no common initializer&gt;" />
              <ref role="1NtTu8" to="tpdg:hwHe81G" />
            </node>
            <node concept="VPM3Z" id="hEU$PKk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSD" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hwH7NUO" role="3EZMnx">
            <node concept="VPM3Z" id="hEU$PVj" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8_36Qo" role="3EZMnx">
            <node concept="3F0ifn" id="h8_36Qp" role="3EZMnx">
              <property role="3F0ifm" value="actions :" />
            </node>
            <node concept="VPM3Z" id="hEU$PDU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKS5" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h8_30VO" role="3EZMnx">
            <node concept="3XFhqQ" id="hOImjQm" role="3EZMnx" />
            <node concept="3F2HdR" id="h8_30VQ" role="3EZMnx">
              <property role="2czwfN" value="true" />
              <property role="2czwfO" value="----------" />
              <ref role="1NtTu8" to="tpdg:h8_1QXX" />
              <node concept="2iRkQZ" id="i2IBKUr" role="2czzBx" />
            </node>
            <node concept="VPM3Z" id="hEU$Pkh" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKT0" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Pvy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKTl" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PI2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKUe" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$Pje" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="2iRkQZ" id="i2IBKQW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gzUOOs4">
    <ref role="1XX52x" to="tpdg:gzUOs4m" resolve="SideTransformHintSubstituteActions" />
    <node concept="3EZMnI" id="gzUOOs5" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gEl0GYk" role="3EZMnx">
        <node concept="3F0ifn" id="gEl0GYl" role="3EZMnx">
          <property role="3F0ifm" value="side transform actions" />
        </node>
        <node concept="3F0A7n" id="gEl0GYm" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="hEZR8u9" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$Pnj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKT$" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gzUOOs7" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$Pv_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gzUOOs8" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F2HdR" id="gzUOOsa" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfO" value="----------" />
          <property role="2czwfM" value="true" />
          <ref role="1NtTu8" to="tpdg:gzUOs4n" />
          <node concept="VPM3Z" id="hEU$PgU" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IBKUw" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$P2m" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRv" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKUo" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="gNm1pvf">
    <property role="TrG5h" value="Disable_Delete" />
    <node concept="1hA7zw" id="gNm1u6q" role="1h_SK8">
      <property role="1hHO97" value="disable delete" />
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="gNm1u6r" role="1hA7z_">
        <node concept="3clFbS" id="gNm1u6s" role="2VODD2" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="gR7WSOy">
    <ref role="1XX52x" to="tpdg:gR7WgqM" resolve="NodeFactories" />
    <node concept="3EZMnI" id="gR7WTwP" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="gR7WTwQ" role="3EZMnx">
        <node concept="3F0ifn" id="gR7WTwR" role="3EZMnx">
          <property role="3F0ifm" value="node factories" />
        </node>
        <node concept="3F0A7n" id="gR7WTwS" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="hEZR8_s" role="3F10Kt">
            <property role="Vb096" value="DARK_GREEN" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$P_O" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQ_" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="gR7WTwT" role="3EZMnx">
        <node concept="VPM3Z" id="hEU$PvY" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="gR7WTwU" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F2HdR" id="gR7WTwV" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfM" value="true" />
          <ref role="1NtTu8" to="tpdg:gR7WGoD" />
          <node concept="VPM3Z" id="hEU$PcC" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IBKU$" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$P6i" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQq" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKT8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="gR7ZmLd">
    <ref role="1XX52x" to="tpdg:gR7Wvgx" resolve="NodeFactory" />
    <node concept="3EZMnI" id="h9VT3cP" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h9VT3tU" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="h9VT3tV" role="3EZMnx">
          <property role="3F0ifm" value="node concept:" />
        </node>
        <node concept="1iCGBv" id="h9VT3tW" role="3EZMnx">
          <property role="1$x2rV" value="&lt;choose concept&gt;" />
          <ref role="1NtTu8" to="tpdg:gR7XksO" />
          <node concept="1sVBvm" id="h9VT3tX" role="1sWHZn">
            <node concept="3F0A7n" id="h9VT3tY" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <property role="1$x2rV" value="&lt;no name&gt;" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8rq" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="i2IBKRX" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h9VTcK0" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="h9VTcK1" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$PMR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="h9VTevL" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="h9VTevM" role="3EZMnx">
            <node concept="3F0ifn" id="h9VTevN" role="3EZMnx">
              <property role="3F0ifm" value="description" />
            </node>
            <node concept="3F0ifn" id="h9VTevO" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$PTY" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F0A7n" id="h9VTevP" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpdg:gRmWdrd" resolve="description" />
              <node concept="VechU" id="hEZR8wp" role="3F10Kt">
                <property role="Vb096" value="DARK_GREEN" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PS7" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRN" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="h9VTevQ" role="3EZMnx">
            <node concept="3F0ifn" id="h9VTevR" role="3EZMnx">
              <property role="3F0ifm" value="set-up" />
            </node>
            <node concept="3F0ifn" id="h9VTevS" role="3EZMnx">
              <property role="3F0ifm" value=":" />
              <node concept="VPM3Z" id="hEU$Q0Z" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="h9VTevT" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpdg:gR7ZfP6" />
            </node>
            <node concept="VPM3Z" id="hEU$Pld" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTo" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h9VTevU" role="3EZMnx">
            <ref role="1ERwB7" node="gNm1pvf" resolve="Disable_Delete" />
          </node>
          <node concept="VPM3Z" id="hEU$PvM" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2EHx9g" id="i2IBKT4" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="i2IBKUl" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKSP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8tYLTd">
    <property role="3GE5qa" value="NodeBuilderParts" />
    <ref role="1XX52x" to="tpdg:h8tYCj$" resolve="AddMenuPart" />
    <node concept="3EZMnI" id="h8tYM83" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8tYM84" role="3EZMnx">
        <node concept="3F0ifn" id="h8tYM85" role="3EZMnx">
          <property role="3F0ifm" value="add custom items " />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="3EZMnI" id="hqbQ_qs" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hqbQEpR" role="3EZMnx">
            <property role="3F0ifm" value="(output concept:" />
            <node concept="VechU" id="hEZR8yw" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="1iCGBv" id="hqbQ_w6" role="3EZMnx">
            <property role="1$x2rV" value="&lt;no concept&gt;" />
            <ref role="1NtTu8" to="tpdg:h8uz4YJ" />
            <node concept="1sVBvm" id="hqbQ_w7" role="1sWHZn">
              <node concept="3F0A7n" id="hqbQ_w8" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                <node concept="VechU" id="hEZR8yV" role="3F10Kt">
                  <property role="Vb096" value="DARK_MAGENTA" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="hqbQW9i" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="11L4FC" id="hZ7BTRX" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="VechU" id="hEZR8qF" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PDE" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKTF" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P$m" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRR" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8tYM89" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlKlw" role="3EZMnx" />
        <node concept="3F2HdR" id="h8tYM8b" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfP" value="false" />
          <property role="2czwfO" value="=============" />
          <ref role="1NtTu8" to="tpdg:h8uz6W0" />
          <node concept="2iRkQZ" id="i2IBKUB" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$PbP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQB" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="h8uHtNa" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hEU$Pjy" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i2IBKSN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8udsTd">
    <property role="3GE5qa" value="menuParts" />
    <ref role="1XX52x" to="tpdg:h8ucCh3" resolve="SimpleItemSubstitutePart" />
    <node concept="3EZMnI" id="h8udtYB" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8udtYC" role="3EZMnx">
        <node concept="3F0ifn" id="h8uduTw" role="3EZMnx">
          <property role="3F0ifm" value="simple item" />
          <node concept="VechU" id="hEZR8pi" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="2iRfu4" id="i2IBKU5" role="2iSdaV" />
      </node>
      <node concept="PMmxH" id="4jO$C4ZR7Jk" role="3EZMnx">
        <ref role="PMmxG" node="6_DAuCqL6fq" resolve="SimpleItemSubsitutePartComponent" />
      </node>
      <node concept="2iRkQZ" id="i2IBKU7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8uMR02">
    <property role="3GE5qa" value="menuParts" />
    <ref role="1XX52x" to="tpdg:h8uMFyA" resolve="ParameterizedSubstituteMenuPart" />
    <node concept="3EZMnI" id="h8uMRHI" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="h8uMTmi" role="3EZMnx">
        <property role="3F0ifm" value="parameterized item" />
        <node concept="VechU" id="hEZR8mq" role="3F10Kt">
          <property role="Vb096" value="DARK_BLUE" />
        </node>
      </node>
      <node concept="3EZMnI" id="h8uMUON" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIm3jR" role="3EZMnx" />
        <node concept="3EZMnI" id="h8uMV_t" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="h8uMWiE" role="3EZMnx">
            <node concept="3F0ifn" id="h8uMWiF" role="3EZMnx">
              <property role="3F0ifm" value="parameter type" />
              <node concept="VechU" id="hEZR8th" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="3F0ifn" id="h8uReBE" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F1sOY" id="h8uMYam" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no type&gt;" />
              <ref role="1NtTu8" to="tpdg:h8uMOUI" />
            </node>
            <node concept="VPM3Z" id="hEU$P_8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTW" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8uN1A6" role="3EZMnx">
            <property role="3F0ifm" value="query" />
            <node concept="VechU" id="hEZR8lw" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8uN3X1" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIm3JH" role="3EZMnx" />
            <node concept="3F1sOY" id="h8uOaeT" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no query&gt;" />
              <ref role="1NtTu8" to="tpdg:h8uO7sp" />
            </node>
            <node concept="VPM3Z" id="hEU$PpW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKR_" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8uSEkj" role="3EZMnx">
            <property role="3F0ifm" value="matching text" />
            <node concept="VechU" id="hEZR8lz" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8uSEkk" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIm4rr" role="3EZMnx" />
            <node concept="3F1sOY" id="h8uSEkm" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8uSyr7" />
            </node>
            <node concept="VPM3Z" id="hEU$PjU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKUm" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8uSEkn" role="3EZMnx">
            <property role="3F0ifm" value="description text" />
            <node concept="VechU" id="hEZR8ru" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8uSEko" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIm4Sg" role="3EZMnx" />
            <node concept="3F1sOY" id="h8uSEkq" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8uS$R8" />
            </node>
            <node concept="VPM3Z" id="hEU$PXf" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQS" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="5zjZZw14N72" role="3EZMnx">
            <node concept="2iRkQZ" id="5zjZZw14N73" role="2iSdaV" />
            <node concept="3EZMnI" id="5zjZZw0ZLA9" role="3EZMnx">
              <node concept="3F0ifn" id="5zjZZw0ZLB6" role="3EZMnx">
                <property role="3F0ifm" value="deprecated" />
                <node concept="VechU" id="5zjZZw0ZLCD" role="3F10Kt">
                  <property role="Vb096" value="red" />
                </node>
              </node>
              <node concept="2iRfu4" id="5zjZZw0ZLAa" role="2iSdaV" />
              <node concept="3F0ifn" id="hwsIUYY" role="3EZMnx">
                <property role="3F0ifm" value="icon" />
                <node concept="VechU" id="hEZR8wg" role="3F10Kt">
                  <property role="Vb096" value="DARK_BLUE" />
                </node>
              </node>
              <node concept="VPM3Z" id="5zjZZw1hU6m" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3EZMnI" id="hwsIUYZ" role="3EZMnx">
              <node concept="3XFhqQ" id="hOIm5w4" role="3EZMnx" />
              <node concept="3F1sOY" id="hwsIUZ1" role="3EZMnx">
                <property role="1$x2rV" value="&lt;default&gt;" />
                <ref role="1NtTu8" to="tpdg:hwsIQv5" />
              </node>
              <node concept="VPM3Z" id="hEU$Pkr" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IBKT9" role="2iSdaV" />
            </node>
            <node concept="pkWqt" id="5zjZZw14TD_" role="pqm2j">
              <node concept="3clFbS" id="5zjZZw14TDA" role="2VODD2">
                <node concept="3clFbF" id="5zjZZw14UEA" role="3cqZAp">
                  <node concept="3y3z36" id="5zjZZw151Yv" role="3clFbG">
                    <node concept="10Nm6u" id="5zjZZw151YG" role="3uHU7w" />
                    <node concept="2OqwBi" id="5zjZZw14Wdq" role="3uHU7B">
                      <node concept="3TrEf2" id="5zjZZw14ZAY" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:hwsIQv5" />
                      </node>
                      <node concept="pncrf" id="5zjZZw14UE_" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="5zjZZw16bUV" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="5zjZZw17elV" role="3EZMnx">
            <property role="3F0ifm" value="icon node" />
            <node concept="VechU" id="5zjZZw17eB3" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="5zjZZw17eB6" role="3EZMnx">
            <node concept="3XFhqQ" id="5zjZZw17eXX" role="3EZMnx" />
            <node concept="3F1sOY" id="5zjZZw17eY5" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:5zjZZw0WnQz" />
            </node>
            <node concept="VPM3Z" id="5zjZZw17eB8" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="5zjZZw17eBb" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hTNFvSH" role="3EZMnx">
            <property role="3F0ifm" value="type" />
            <node concept="VechU" id="hTNF$JQ" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="hTNFwUE" role="3EZMnx">
            <node concept="3XFhqQ" id="hTNFwUF" role="3EZMnx" />
            <node concept="3F1sOY" id="hTNFwUG" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:hTNDbYj" />
            </node>
            <node concept="VPM3Z" id="hTNFwUH" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQY" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8uTxOC" role="3EZMnx">
            <property role="3F0ifm" value="create child node" />
            <node concept="VechU" id="hEZR8r6" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8uTxOD" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIm6dY" role="3EZMnx" />
            <node concept="3F1sOY" id="h8uTxOF" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8uTuf$" />
            </node>
            <node concept="VPM3Z" id="hEU$PpY" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTB" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="5pQ4spxjLKk" role="3EZMnx">
            <property role="3F0ifm" value="selection handler" />
            <node concept="VechU" id="5pQ4spxjLKl" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="5pQ4spxjLKm" role="3EZMnx">
            <node concept="3XFhqQ" id="5pQ4spxjLKn" role="3EZMnx" />
            <node concept="3F1sOY" id="5pQ4spxjLKo" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:5pQ4spxjJXH" />
            </node>
            <node concept="VPM3Z" id="5pQ4spxjLKp" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="5pQ4spxjLKq" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Pis" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKTm" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PXn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSo" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKQz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8ys6QZ">
    <property role="3GE5qa" value="menuParts" />
    <ref role="1XX52x" to="tpdg:h8yp2gW" resolve="ConceptsSubstituteMenuPart" />
    <node concept="3EZMnI" id="h8ys8mg" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8ys8mh" role="3EZMnx">
        <node concept="PMmxH" id="2wdLO7KhYbL" role="3EZMnx">
          <property role="1cu_pB" value="0" />
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          <node concept="VPxyj" id="2wdLO7KhYbM" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="VechU" id="2wdLO7KhYbN" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PjV" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRg" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8ysaIM" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlYdr" role="3EZMnx" />
        <node concept="3EZMnI" id="h8ysbVN" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="h8yscdS" role="3EZMnx">
            <property role="3F0ifm" value="query" />
            <node concept="VechU" id="hEZR8B_" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8ysd1i" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlYEZ" role="3EZMnx" />
            <node concept="3F1sOY" id="h8yshiS" role="3EZMnx">
              <ref role="1NtTu8" to="tpdg:h8ys1ag" />
            </node>
            <node concept="VPM3Z" id="hEU$PRR" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTr" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PGd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKTA" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P9f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRe" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKS1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8yF7Xg">
    <property role="3GE5qa" value="menuParts" />
    <ref role="1XX52x" to="tpdg:h8yEb1F" resolve="WrapperSubstituteMenuPart" />
    <node concept="3EZMnI" id="h8yF99d" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8yF9uW" role="3EZMnx">
        <node concept="3F0ifn" id="h8yF9GN" role="3EZMnx">
          <property role="3F0ifm" value="wrap" />
          <node concept="VechU" id="hEZR8ny" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="1iCGBv" id="h8yFbjA" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no concept&gt;" />
          <ref role="1NtTu8" to="tpdg:h8yEYLw" />
          <node concept="1sVBvm" id="h8yFbjB" role="1sWHZn">
            <node concept="3F0A7n" id="h8yFbY3" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8_9" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PUI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTb" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8yFcAX" role="3EZMnx">
        <node concept="3XFhqQ" id="hzcQDfb" role="3EZMnx" />
        <node concept="3EZMnI" id="h8yFdoX" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="h8yFdAE" role="3EZMnx">
            <property role="3F0ifm" value="wrapper block" />
            <node concept="VechU" id="hEZR8uR" role="3F10Kt">
              <property role="Vb096" value="DARK_BLUE" />
            </node>
          </node>
          <node concept="3EZMnI" id="h8yFeDI" role="3EZMnx">
            <node concept="3XFhqQ" id="hzcQDM6" role="3EZMnx" />
            <node concept="3F1sOY" id="h8yFfG8" role="3EZMnx">
              <ref role="1NtTu8" to="tpdg:h8yEVIQ" />
            </node>
            <node concept="VPM3Z" id="hEU$PHN" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQi" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Pyg" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKTO" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PuI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQN" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hsiauLS" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hzcQBKb" role="3EZMnx" />
        <node concept="3EZMnI" id="hzcQx4u" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="hzcQ$xJ" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="hzcQ$xK" role="3EZMnx">
              <property role="3F0ifm" value="return" />
              <node concept="VechU" id="hEZR8$C" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="3F0ifn" id="hzcQ_4c" role="3EZMnx">
              <property role="3F0ifm" value="small" />
              <node concept="VechU" id="hEZR8r5" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="3F0ifn" id="hzcQ_4d" role="3EZMnx">
              <property role="3F0ifm" value="part" />
              <node concept="VechU" id="hEZR8lQ" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$PNO" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSb" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="hzcQAIW" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="hzcQEos" role="3EZMnx" />
            <node concept="3F1sOY" id="hzcQEXP" role="3EZMnx">
              <property role="1$x2rV" value="&lt;false&gt;" />
              <ref role="1NtTu8" to="tpdg:hzcQo_d" />
            </node>
            <node concept="VPM3Z" id="hEU$Q1Y" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTI" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PKr" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKSF" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$P8O" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSy" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7_Fmlxuo84T" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="7_Fmlxuo84U" role="3EZMnx" />
        <node concept="3EZMnI" id="7_Fmlxuo84V" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="7_Fmlxuo84W" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="7_Fmlxuo84X" role="3EZMnx">
              <property role="3F0ifm" value="selection handler" />
              <node concept="VechU" id="7_Fmlxuo84Y" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="VPM3Z" id="7_Fmlxuo853" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="7_Fmlxuo854" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="7_Fmlxuo855" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3XFhqQ" id="7_Fmlxuo856" role="3EZMnx" />
            <node concept="3F1sOY" id="7_Fmlxuo857" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:7_Fmlxuo6Wv" />
            </node>
            <node concept="VPM3Z" id="7_Fmlxuo858" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="7_Fmlxuo859" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="7_Fmlxuo85a" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="7_Fmlxuo85b" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="7_Fmlxuo85c" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="7_Fmlxuo85d" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKRa" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8z69_R">
    <property role="3GE5qa" value="NodeBuilderParts" />
    <ref role="1XX52x" to="tpdg:h8z64ec" resolve="RemovePart" />
    <node concept="3EZMnI" id="h8z6a7d" role="2wV5jI">
      <node concept="3F0ifn" id="h8z6ajX" role="3EZMnx">
        <property role="3F0ifm" value="remove concept" />
        <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
      </node>
      <node concept="1iCGBv" id="h8z6aPe" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no concept&gt;" />
        <ref role="1NtTu8" to="tpdg:h8z65Xy" />
        <node concept="1sVBvm" id="h8z6aPf" role="1sWHZn">
          <node concept="3F0A7n" id="h8z6bd9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="hEZR8mA" role="3F10Kt">
              <property role="Vb096" value="DARK_MAGENTA" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBKSj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8zmk6l">
    <property role="3GE5qa" value="NodeBuilderParts" />
    <ref role="1XX52x" to="tpdg:h8zlx8_" resolve="RemoveByConditionPart" />
    <node concept="3EZMnI" id="h8zmkMY" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8zml6G" role="3EZMnx">
        <node concept="3F0ifn" id="h8zmliL" role="3EZMnx">
          <property role="3F0ifm" value="remove by condition" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="VPM3Z" id="hEU$PcF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTq" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8zmmGu" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlLnV" role="3EZMnx" />
        <node concept="3F1sOY" id="h8zmnwq" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:h8zmoBG" />
        </node>
        <node concept="VPM3Z" id="hEU$Pzs" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQm" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKQD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8CoPoe">
    <property role="3GE5qa" value="menuParts.RightTransform" />
    <ref role="1XX52x" to="tpdg:h8Cmt3G" resolve="SimpleSideTransformMenuPart" />
    <node concept="3EZMnI" id="h8CoPFW" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="h8CoPFX" role="3EZMnx">
        <node concept="3F0ifn" id="h8CoPFY" role="3EZMnx">
          <property role="3F0ifm" value="simple item" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="VPM3Z" id="hEU$Q1t" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTD" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="h8CoPFZ" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlUci" role="3EZMnx" />
        <node concept="3EZMnI" id="h8CoPG1" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3F0ifn" id="h8CoPG3" role="3EZMnx">
            <property role="3F0ifm" value="matching text" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8CoPG4" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlUC8" role="3EZMnx" />
            <node concept="3F1sOY" id="h8CoPG6" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8Cn2my" />
            </node>
            <node concept="VPM3Z" id="hEU$PUi" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQw" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8CoPG7" role="3EZMnx">
            <property role="3F0ifm" value="description text" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8CoPG8" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlV6q" role="3EZMnx" />
            <node concept="3F1sOY" id="h8CoPGa" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8Cn6e9" />
            </node>
            <node concept="VPM3Z" id="hEU$PZ6" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKT6" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="4vxQe1hkmpm" role="3EZMnx">
            <node concept="2iRkQZ" id="4vxQe1hkmD1" role="2iSdaV" />
            <node concept="3EZMnI" id="4vxQe1hknrJ" role="3EZMnx">
              <node concept="3F0ifn" id="4vxQe1hlr3L" role="3EZMnx">
                <property role="3F0ifm" value="deprecated" />
                <node concept="VechU" id="4vxQe1hlr3M" role="3F10Kt">
                  <property role="Vb096" value="red" />
                </node>
              </node>
              <node concept="2iRfu4" id="4vxQe1hknrK" role="2iSdaV" />
              <node concept="3F0ifn" id="hwsMe$o" role="3EZMnx">
                <property role="3F0ifm" value="icon" />
                <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
              </node>
              <node concept="VPM3Z" id="4vxQe1hkns_" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="VPM3Z" id="4vxQe1hkmTq" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="hwsMe$p" role="3EZMnx">
              <node concept="3XFhqQ" id="hOIlW11" role="3EZMnx" />
              <node concept="3F1sOY" id="hwsMe$r" role="3EZMnx">
                <property role="1$x2rV" value="&lt;default&gt;" />
                <ref role="1NtTu8" to="tpdg:hwsMbB7" />
              </node>
              <node concept="VPM3Z" id="hEU$PGm" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IBKR6" role="2iSdaV" />
            </node>
            <node concept="pkWqt" id="4vxQe1hlri$" role="pqm2j">
              <node concept="3clFbS" id="4vxQe1hlri_" role="2VODD2">
                <node concept="3clFbF" id="4vxQe1hlrGA" role="3cqZAp">
                  <node concept="3y3z36" id="4vxQe1hlvRP" role="3clFbG">
                    <node concept="10Nm6u" id="4vxQe1hlw7f" role="3uHU7w" />
                    <node concept="2OqwBi" id="4vxQe1hlrNQ" role="3uHU7B">
                      <node concept="3TrEf2" id="4vxQe1hluoj" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:hwsMbB7" />
                      </node>
                      <node concept="pncrf" id="4vxQe1hlrG_" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="4vxQe1hlxTA" role="3EZMnx">
            <property role="3F0ifm" value="icon node" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="4vxQe1hlyie" role="3EZMnx">
            <node concept="3XFhqQ" id="4vxQe1hlyif" role="3EZMnx" />
            <node concept="3F1sOY" id="4vxQe1hlyig" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:4vxQe1hkhge" />
            </node>
            <node concept="VPM3Z" id="4vxQe1hlyih" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="4vxQe1hlyii" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hTNERSY" role="3EZMnx">
            <property role="3F0ifm" value="type" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="hTNESTd" role="3EZMnx">
            <node concept="3XFhqQ" id="hTNESTe" role="3EZMnx" />
            <node concept="3F1sOY" id="hTNESTf" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:hTNDbYj" />
            </node>
            <node concept="VPM3Z" id="hTNESTg" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKS$" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8CoPGb" role="3EZMnx">
            <property role="3F0ifm" value="do transform" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8CoPGc" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlWsR" role="3EZMnx" />
            <node concept="3F1sOY" id="h8CoPGe" role="3EZMnx">
              <property role="1$x2rV" value="&lt;none&gt;" />
              <ref role="1NtTu8" to="tpdg:h8Cncio" />
            </node>
            <node concept="VPM3Z" id="hEU$PPU" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKS6" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$P_N" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKRB" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PlV" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSk" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKSL" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8D0m22">
    <property role="3GE5qa" value="menuParts.RightTransform" />
    <ref role="1XX52x" to="tpdg:h8CZtG3" resolve="ParameterizedSideTransformMenuPart" />
    <node concept="3EZMnI" id="h8D0mhT" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="h8D0mhU" role="3EZMnx">
        <property role="3F0ifm" value="parameterized item" />
        <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
      </node>
      <node concept="3EZMnI" id="h8D0mhV" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlQBr" role="3EZMnx" />
        <node concept="3EZMnI" id="h8D0mhX" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <node concept="3EZMnI" id="h8D0mhY" role="3EZMnx">
            <node concept="3F0ifn" id="h8D0mhZ" role="3EZMnx">
              <property role="3F0ifm" value="parameter type" />
              <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
            </node>
            <node concept="3F0ifn" id="h8D0mi0" role="3EZMnx">
              <property role="3F0ifm" value="=" />
            </node>
            <node concept="3F1sOY" id="h8D0mi1" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no type&gt;" />
              <ref role="1NtTu8" to="tpdg:h8D02pH" />
            </node>
            <node concept="VPM3Z" id="hEU$P0U" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKUj" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8D0mi2" role="3EZMnx">
            <property role="3F0ifm" value="query" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8D0mi3" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlR5f" role="3EZMnx" />
            <node concept="3F1sOY" id="h8D0mi5" role="3EZMnx">
              <property role="1$x2rV" value="&lt;no query&gt;" />
              <ref role="1NtTu8" to="tpdg:h8D04f9" />
            </node>
            <node concept="VPM3Z" id="hEU$PV4" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKQQ" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8D0mi6" role="3EZMnx">
            <property role="3F0ifm" value="matching text" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8D0mi7" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlRJI" role="3EZMnx" />
            <node concept="3F1sOY" id="h8D0mi9" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8D06T$" />
            </node>
            <node concept="VPM3Z" id="hEU$PEW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKSH" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8D0mia" role="3EZMnx">
            <property role="3F0ifm" value="description text" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8D0mib" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlSfu" role="3EZMnx" />
            <node concept="3F1sOY" id="h8D0mid" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8D0cgn" />
            </node>
            <node concept="VPM3Z" id="hEU$PCW" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTx" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="4vxQe1hzAy4" role="3EZMnx">
            <node concept="2iRkQZ" id="4vxQe1hzAy5" role="2iSdaV" />
            <node concept="3EZMnI" id="4vxQe1hzAMz" role="3EZMnx">
              <node concept="3F0ifn" id="4vxQe1hzTGz" role="3EZMnx">
                <property role="3F0ifm" value="deprecated" />
                <node concept="VechU" id="4vxQe1hzTG$" role="3F10Kt">
                  <property role="Vb096" value="red" />
                </node>
              </node>
              <node concept="2iRfu4" id="4vxQe1hzAM$" role="2iSdaV" />
              <node concept="3F0ifn" id="hwsObPm" role="3EZMnx">
                <property role="3F0ifm" value="icon" />
                <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
              </node>
              <node concept="VPM3Z" id="4vxQe1hzANp" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="VPM3Z" id="4vxQe1hzAzz" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3EZMnI" id="hwsObPn" role="3EZMnx">
              <node concept="3XFhqQ" id="hOIlSIZ" role="3EZMnx" />
              <node concept="3F1sOY" id="hwsObPp" role="3EZMnx">
                <property role="1$x2rV" value="&lt;default&gt;" />
                <ref role="1NtTu8" to="tpdg:hwsO8cS" />
              </node>
              <node concept="VPM3Z" id="hEU$PlU" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2IBKTt" role="2iSdaV" />
            </node>
            <node concept="pkWqt" id="4vxQe1hzB3o" role="pqm2j">
              <node concept="3clFbS" id="4vxQe1hzB3p" role="2VODD2">
                <node concept="3clFbF" id="4vxQe1hzBmW" role="3cqZAp">
                  <node concept="3y3z36" id="4vxQe1hzFJy" role="3clFbG">
                    <node concept="10Nm6u" id="4vxQe1hzFYW" role="3uHU7w" />
                    <node concept="2OqwBi" id="4vxQe1hzBuc" role="3uHU7B">
                      <node concept="3TrEf2" id="4vxQe1hzEg0" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpdg:hwsO8cS" />
                      </node>
                      <node concept="pncrf" id="4vxQe1hzBmV" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="4vxQe1hzUz0" role="3EZMnx">
            <property role="3F0ifm" value="icon node" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="4vxQe1hzV3B" role="3EZMnx">
            <node concept="3XFhqQ" id="4vxQe1hzV3C" role="3EZMnx" />
            <node concept="3F1sOY" id="4vxQe1hzV3D" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:4vxQe1hzArQ" />
            </node>
            <node concept="VPM3Z" id="4vxQe1hzV3E" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="4vxQe1hzV3F" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="hTNEFwn" role="3EZMnx">
            <property role="3F0ifm" value="type" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="hTNELuY" role="3EZMnx">
            <node concept="3XFhqQ" id="hTNELuZ" role="3EZMnx" />
            <node concept="3F1sOY" id="hTNELv0" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:hTNDbYj" />
            </node>
            <node concept="VPM3Z" id="hTNELv1" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRx" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="h8D0mie" role="3EZMnx">
            <property role="3F0ifm" value="do transform" />
            <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
          </node>
          <node concept="3EZMnI" id="h8D0mif" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlTcz" role="3EZMnx" />
            <node concept="3F1sOY" id="h8D0mih" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:h8D0eYs" />
            </node>
            <node concept="VPM3Z" id="hEU$PVK" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKTL" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$PBs" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRkQZ" id="i2IBKQL" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$PSj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKQu" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKQk" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h8JjGhU">
    <property role="3GE5qa" value="NodeBuilderParts" />
    <ref role="1XX52x" to="tpdg:h8JjB70" resolve="RemoveDefaultsPart" />
    <node concept="3EZMnI" id="h8JjGP4" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="h8JjH1E" role="3EZMnx">
        <property role="3F0ifm" value="remove defaults" />
        <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
      </node>
      <node concept="2iRfu4" id="i2IBKRH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h9AvJRb">
    <ref role="1XX52x" to="tpdg:h9At2QK" resolve="SubstituteNodeBuilderVariableDeclaration" />
    <node concept="3EZMnI" id="havXDHI" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="havXDHJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" />
      </node>
      <node concept="3F0A7n" id="havXDHK" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="3$7fVu" id="hTSDO0_" role="3F10Kt">
          <property role="3$6WeP" value="1.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="havXDHL" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3EZMnI" id="havYYfN" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="3F1sOY" id="havYYfO" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hat5I28" />
        </node>
        <node concept="3F0ifn" id="havZd72" role="3EZMnx">
          <node concept="VPM3Z" id="hEU$P7M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="i2IBKR2" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="i2IBKSw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hancn4c">
    <property role="3GE5qa" value="menuParts" />
    <ref role="1XX52x" to="tpdg:h8CdUfd" resolve="MenuPart" />
    <node concept="1xolST" id="hancn$t" role="2wV5jI">
      <property role="1xolSY" value="menuPart" />
    </node>
  </node>
  <node concept="24kQdi" id="hb48hEO">
    <property role="3GE5qa" value="menuBuilderParts" />
    <ref role="1XX52x" to="tpdg:hb46O4k" resolve="IncludeRightTransformForNodePart" />
    <node concept="3EZMnI" id="hb48i7G" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hb48i7H" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hb48i7I" role="3EZMnx">
          <property role="3F0ifm" value="include transform menu for" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="2iRfu4" id="i2IBKTS" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hb48i7J" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hG_Yoc8" role="3EZMnx" />
        <node concept="3F1sOY" id="hb48i7L" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hb484IO" />
        </node>
        <node concept="2iRfu4" id="i2IBKU1" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKUh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hb5y_V9">
    <property role="3GE5qa" value="menuBuilderParts.Substitute" />
    <ref role="1XX52x" to="tpdg:hb5xCbf" resolve="ConceptSubstitutePart" />
    <node concept="3EZMnI" id="hb5yA$U" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY7e" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        <node concept="VPxyj" id="2wdLO7KhY7f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="1iCGBv" id="hb5yA$W" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no concept&gt;" />
        <ref role="1NtTu8" to="tpdg:hb5y76X" />
        <node concept="1sVBvm" id="hb5yA$X" role="1sWHZn">
          <node concept="3F0A7n" id="hb5yA$Y" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="hEZR8y8" role="3F10Kt">
              <property role="Vb096" value="DARK_MAGENTA" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBKTQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hd_xsEr">
    <property role="3GE5qa" value="menuBuilderParts.RightTransform" />
    <ref role="1XX52x" to="tpdg:hd_wSsX" resolve="ConceptRightTransformPart" />
    <node concept="3EZMnI" id="hd_xFZY" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hd_xFZZ" role="3EZMnx">
        <node concept="PMmxH" id="2wdLO7KhYc_" role="3EZMnx">
          <property role="1cu_pB" value="0" />
          <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
          <node concept="VPxyj" id="2wdLO7KhYcA" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="1iCGBv" id="hd_xG01" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no concept&gt;" />
          <ref role="1NtTu8" to="tpdg:hd_xjhm" />
          <node concept="1sVBvm" id="hd_xG02" role="1sWHZn">
            <node concept="3F0A7n" id="hd_xG03" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              <node concept="VechU" id="hEZR8sB" role="3F10Kt">
                <property role="Vb096" value="DARK_MAGENTA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PbW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKR0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="VCSzvn$4$h" role="3EZMnx">
        <node concept="3XFhqQ" id="VCSzvn$4$i" role="3EZMnx" />
        <node concept="3F0ifn" id="VCSzvn$4$j" role="3EZMnx">
          <property role="3F0ifm" value="target node" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="VPM3Z" id="VCSzvn$4$l" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="VCSzvn$4$m" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="VCSzvnzIbG" role="3EZMnx">
        <node concept="VPM3Z" id="VCSzvnzIbH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="VCSzvn$4$g" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="VCSzvn$nTu" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3XFhqQ" id="VCSzvnzIbL" role="3EZMnx" />
        <node concept="3F1sOY" id="VCSzvnzIbN" role="3EZMnx">
          <property role="1$x2rV" value="&lt;default&gt;" />
          <ref role="1NtTu8" to="tpdg:VCSzvnzIbE" />
        </node>
        <node concept="2iRfu4" id="VCSzvnzIbJ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hd_xNOe" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlNbU" role="3EZMnx" />
        <node concept="3F0ifn" id="hd_xNOf" role="3EZMnx">
          <property role="3F0ifm" value="handler" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="VPM3Z" id="hEU$PK8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRz" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hd_xNOg" role="3EZMnx">
        <node concept="3F0ifn" id="hd_xNOh" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$P7e" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3XFhqQ" id="hOIlN$_" role="3EZMnx" />
        <node concept="3F1sOY" id="hd_xNOi" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hd_xdhi" />
        </node>
        <node concept="VPM3Z" id="hEU$P8M" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKUc" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKRF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hqh1jxB">
    <property role="3GE5qa" value="sugar" />
    <ref role="1XX52x" to="tpdg:hqh1dX7" resolve="SideTransform_SimpleString" />
    <node concept="3EZMnI" id="hqh1k0T" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0A7n" id="hqh1lAY" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hqh1iwD" resolve="text" />
        <node concept="VechU" id="hEZR8An" role="3F10Kt">
          <property role="Vb096" value="DARK_BLUE" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBKU0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hqh4I6E">
    <property role="3GE5qa" value="sugar" />
    <ref role="1XX52x" to="tpdg:hqh3Z8b" resolve="Substitute_SimpleString" />
    <node concept="3EZMnI" id="hqh4IBE" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0A7n" id="hqh4Joi" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hqh4Kkn" resolve="text" />
        <node concept="VechU" id="hEZR8u3" role="3F10Kt">
          <property role="Vb096" value="DARK_BLUE" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2IBKTh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hrdR2hw">
    <property role="3GE5qa" value="menuBuilderParts" />
    <ref role="1XX52x" to="tpdg:hrdQSR_" resolve="RemoveSTByConditionPart" />
    <node concept="3EZMnI" id="hrdR3MH" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hrdR3MI" role="3EZMnx">
        <node concept="3F0ifn" id="hrdR3MJ" role="3EZMnx">
          <property role="3F0ifm" value="remove by condition" />
          <ref role="1k5W1q" to="tpen:5Rb$VBtciRq" resolve="FirstLevel" />
        </node>
        <node concept="VPM3Z" id="hEU$Ptr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSq" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hrdR3MK" role="3EZMnx">
        <node concept="3XFhqQ" id="hOIlPCV" role="3EZMnx" />
        <node concept="3F1sOY" id="hrdR3MM" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hrdQV7p" />
        </node>
        <node concept="VPM3Z" id="hEU$PIa" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRD" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKRT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="htvLDgX">
    <property role="3GE5qa" value="menuParts.Substitute" />
    <ref role="1XX52x" to="tpdg:htvLhee" resolve="GenericSubstituteMenuPart" />
    <node concept="3EZMnI" id="htvLDTK" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="htvLE$K" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="htvLENV" role="3EZMnx">
          <property role="3F0ifm" value="generic query" />
          <node concept="VechU" id="hEZR8$7" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PXP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKUg" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="htvLGNT" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="htvLIdL" role="3EZMnx" />
        <node concept="3F1sOY" id="htvLJhb" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:htvL_Pt" />
        </node>
        <node concept="VPM3Z" id="hEU$OXg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSs" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKSu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hwH7_v_">
    <ref role="1XX52x" to="tpdg:hwH6Al_" resolve="SideTransformVariableDeclaration" />
    <node concept="3EZMnI" id="hwH7_Iw" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="hwH7_Ix" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" />
      </node>
      <node concept="3F0A7n" id="hwH7_Iy" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="3$7fVu" id="hLFpFpQ" role="3F10Kt">
          <property role="3$6WeP" value="1.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="hwH7_Iz" role="3EZMnx">
        <property role="3F0ifm" value="=" />
      </node>
      <node concept="3EZMnI" id="hwH7_I$" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="3F1sOY" id="hwH7_I_" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hwH6AlA" />
        </node>
        <node concept="3F0ifn" id="hwH7_IA" role="3EZMnx">
          <node concept="VPM3Z" id="hEU$PHk" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="2iRkQZ" id="i2IBKSY" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="i2IBKRV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hLhlAXc">
    <ref role="1XX52x" to="tpdg:hLhljPe" resolve="PasteWrappers" />
    <node concept="3EZMnI" id="hLhlDRF" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hLhlFuh" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hLhlFui" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hLhlFuj" role="3EZMnx">
          <property role="3F0ifm" value="paste wrappers" />
        </node>
        <node concept="3F0A7n" id="hLhlJ_4" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hLhlFuk" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTY" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hLhlQsk" role="3EZMnx">
        <node concept="VPM3Z" id="hLhlRcr" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="hLhlSae" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="VPM3Z" id="hLhlSaf" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="hLhlSXk" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpdg:hLhl$vW" />
          <node concept="2iRkQZ" id="i2IBKUt" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hLhlSah" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBKQo" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKS3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hLhsEJe">
    <ref role="1XX52x" to="tpdg:hLhlz9g" resolve="PasteWrapper" />
    <node concept="3EZMnI" id="hLhsFta" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hLhsGxO" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hLhsGxP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hLhsGGC" role="3EZMnx">
          <property role="3F0ifm" value="paste wrapper" />
        </node>
        <node concept="1iCGBv" id="hLhsHue" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hLhmvLo" />
          <node concept="1sVBvm" id="hLhsHuf" role="1sWHZn">
            <node concept="3F0A7n" id="hLhsI_O" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="hLhsJ5l" role="3EZMnx">
          <property role="3F0ifm" value="-&gt;" />
        </node>
        <node concept="1iCGBv" id="hLhsJLk" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hLhszyZ" />
          <node concept="1sVBvm" id="hLhsJLl" role="1sWHZn">
            <node concept="3F0A7n" id="hLhsL2F" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hLhsGxR" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTf" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hLhsM2c" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hLhsM2d" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="hLhuDMi" role="3EZMnx" />
        <node concept="3F1sOY" id="hLhuEtx" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hLhsNvi" />
        </node>
        <node concept="VPM3Z" id="hLhsM2f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTy" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hLhsFO8" role="3EZMnx" />
      <node concept="2iRkQZ" id="i2IBKSW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hYeNp5p">
    <ref role="1XX52x" to="tpdg:hYeMcvD" resolve="SmartEditorActions" />
    <node concept="3EZMnI" id="hYeNqaK" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hYeO8c6" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hYeO8c7" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hYeO8c8" role="3EZMnx">
          <property role="3F0ifm" value="smart editor actions" />
        </node>
        <node concept="3F0A7n" id="hYeO8JO" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hYeO8c9" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKSB" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hYeOaW0" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYeObZq" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYeNU67" role="3EZMnx">
        <property role="3F0ifm" value="generate code actions:" />
      </node>
      <node concept="3EZMnI" id="hYfsIzi" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3XFhqQ" id="hYfsKJi" role="3EZMnx" />
        <node concept="VPM3Z" id="hYfsIzj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="hYfsIzk" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpdg:hYeN5TI" />
          <node concept="2iRkQZ" id="i2IBKUq" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hYfsIzl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTT" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hYeNWSS" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYeNYcD" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYeNR_V" role="3EZMnx">
        <property role="3F0ifm" value="surround with actions:" />
      </node>
      <node concept="3EZMnI" id="hYfsW0j" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hYfsW0k" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="hYfsXxN" role="3EZMnx" />
        <node concept="3F2HdR" id="hYfsW0l" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tpdg:hYeN49p" />
          <node concept="2iRkQZ" id="i2IBKUG" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hYfsW0m" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKTG" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2IBKSd" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hYeVQO1">
    <ref role="1XX52x" to="tpdg:hYeVHMO" resolve="SmartActionParameter" />
    <node concept="3EZMnI" id="hYeVRNM" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="hYeVTh$" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hYeVN14" />
      </node>
      <node concept="3F0A7n" id="hYeVW7v" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
      </node>
      <node concept="2iRfu4" id="i2IBKQU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hYeWeUF">
    <ref role="1XX52x" to="tpdg:hYeW1s5" resolve="SmartActionParameterReference" />
    <node concept="1iCGBv" id="hYeWfE$" role="2wV5jI">
      <ref role="1NtTu8" to="tpdg:hYeWbzl" />
      <node concept="1sVBvm" id="hYeWfE_" role="1sWHZn">
        <node concept="3F0A7n" id="hYeWgfu" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hYf7GfP">
    <ref role="1XX52x" to="tpdg:hYeMx5V" resolve="GenerateCodeAction" />
    <node concept="3EZMnI" id="hYf7LxN" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hYfs$ZB" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hYfs$ZC" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hYfs$ZD" role="3EZMnx">
          <property role="3F0ifm" value="generate code" />
        </node>
        <node concept="3F0A7n" id="hYfs_QR" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:hYfsvcg" resolve="description" />
        </node>
        <node concept="VPM3Z" id="hYfs$ZE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2IBKRi" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hYf7SCg" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYf7TXH" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYf7V52" role="3EZMnx">
        <property role="3F0ifm" value="is applicable:" />
      </node>
      <node concept="3F1sOY" id="hYf7RjZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hYf7BoM" />
      </node>
      <node concept="3F0ifn" id="hYf7Xsd" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYf80WA" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYf82ce" role="3EZMnx">
        <property role="3F0ifm" value="parameters" />
      </node>
      <node concept="3F2HdR" id="hYf84A4" role="3EZMnx">
        <property role="2czwfN" value="true" />
        <ref role="1NtTu8" to="tpdg:hYeWvBP" />
        <node concept="2iRkQZ" id="i2IBKUv" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="hYfkT68" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYfkU0w" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYfkWve" role="3EZMnx">
        <property role="3F0ifm" value="get action UI" />
      </node>
      <node concept="3F1sOY" id="hYfldf6" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hYfl47N" />
      </node>
      <node concept="3F0ifn" id="hYfljY8" role="3EZMnx">
        <property role="3F0ifm" value=" " />
        <node concept="VPM3Z" id="hYflkLE" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="hYflgqi" role="3EZMnx">
        <property role="3F0ifm" value="execute" />
      </node>
      <node concept="3F1sOY" id="hYfljcM" role="3EZMnx">
        <ref role="1NtTu8" to="tpdg:hYfl8Zm" />
      </node>
      <node concept="2iRkQZ" id="i2IBKTJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5eziI4W39hW">
    <property role="3GE5qa" value="copyPaste" />
    <ref role="1XX52x" to="tpdg:vkUVjS$P5G" resolve="PastePostProcessor" />
    <node concept="3EZMnI" id="5eziI4W39hY" role="2wV5jI">
      <node concept="3EZMnI" id="5eziI4W39i3" role="3EZMnx">
        <node concept="3F0ifn" id="5eziI4W39i9" role="3EZMnx">
          <property role="3F0ifm" value="paste post processor" />
        </node>
        <node concept="VPM3Z" id="5eziI4W39i4" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="1iCGBv" id="5eziI4W39ia" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:5eziI4W39hV" />
          <node concept="1sVBvm" id="5eziI4W39ib" role="1sWHZn">
            <node concept="3F0A7n" id="5eziI4W39id" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="5eziI4W39i6" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3nLT6rk5m9g" role="3EZMnx">
        <node concept="3XFhqQ" id="3nLT6rk5m9l" role="3EZMnx" />
        <node concept="VPM3Z" id="3nLT6rk5m9h" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="3nLT6rk5m9m" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:3nLT6rk5m7N" />
        </node>
        <node concept="2iRfu4" id="3nLT6rk5m9j" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5eziI4W39i0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5abCRRjcnMD">
    <property role="3GE5qa" value="copyPaste" />
    <ref role="1XX52x" to="tpdg:5abCRRjch_6" resolve="CopyPreProcessor" />
    <node concept="3EZMnI" id="5abCRRjcnMF" role="2wV5jI">
      <node concept="3EZMnI" id="5abCRRjcnMG" role="3EZMnx">
        <node concept="3F0ifn" id="5abCRRjcnMH" role="3EZMnx">
          <property role="3F0ifm" value="copy pre processor" />
        </node>
        <node concept="VPM3Z" id="5abCRRjcnMI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="1iCGBv" id="5abCRRjcnMJ" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:5abCRRjcnId" />
          <node concept="1sVBvm" id="5abCRRjcnMK" role="1sWHZn">
            <node concept="3F0A7n" id="5abCRRjcnML" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="5abCRRjcnMM" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="5abCRRjcnMN" role="3EZMnx">
        <node concept="3XFhqQ" id="5abCRRjcnMO" role="3EZMnx" />
        <node concept="VPM3Z" id="5abCRRjcnMP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="5abCRRjcnMQ" role="3EZMnx">
          <ref role="1NtTu8" to="tpdg:5abCRRjcivp" />
        </node>
        <node concept="2iRfu4" id="5abCRRjcnMR" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5abCRRjcnMS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5abCRRje44l">
    <property role="3GE5qa" value="copyPaste" />
    <ref role="1XX52x" to="tpdg:5abCRRje3Su" resolve="CopyPasteHandlers" />
    <node concept="3EZMnI" id="5abCRRje44n" role="2wV5jI">
      <node concept="3EZMnI" id="5abCRRje44o" role="3EZMnx">
        <node concept="3F0ifn" id="5abCRRje44p" role="3EZMnx">
          <property role="3F0ifm" value="copy paste handlers" />
        </node>
        <node concept="VPM3Z" id="5abCRRje44q" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0A7n" id="5abCRRje44r" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="5abCRRje44s" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5abCRRje44t" role="3EZMnx" />
      <node concept="3EZMnI" id="5abCRRje44u" role="3EZMnx">
        <node concept="VPM3Z" id="5abCRRje44v" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="5abCRRje44w" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="tpdg:5abCRRje3Wu" />
          <node concept="2iRkQZ" id="5abCRRje44x" role="2czzBx" />
          <node concept="VPM3Z" id="5abCRRje44y" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5abCRRje44z" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5RM5NyAJytb" role="3EZMnx" />
      <node concept="3EZMnI" id="5abCRRje44$" role="3EZMnx">
        <node concept="VPM3Z" id="5abCRRje44_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="5abCRRje44A" role="3EZMnx">
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="tpdg:5abCRRje3Wv" />
          <node concept="2iRkQZ" id="5abCRRje44B" role="2czzBx" />
          <node concept="VPM3Z" id="5abCRRje44C" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="2iRkQZ" id="5abCRRje44D" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5abCRRje44E" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5bXc4ftgJeE">
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="1XX52x" to="tpdg:5bXc4ftgJeD" resolve="SNodeCreatorAndInitializer" />
    <node concept="3EZMnI" id="5bXc4ftgJeG" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="5bXc4ftgJg0" role="3EZMnx">
        <property role="3F0ifm" value="initialized" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="5bXc4ftgJeH" role="3EZMnx">
        <ref role="1NtTu8" to="tp25:hbzrR4S" />
      </node>
      <node concept="3F0ifn" id="5bXc4ftgJeI" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="5bXc4ftgJeJ" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpdg:3g_g2DkJS5u" />
        <node concept="3$7jql" id="5bXc4ftgJeK" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="5bXc4ftgJeL" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="5bXc4ftgJeM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3g_g2DkJPbo">
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="1XX52x" to="tpdg:4KfPOs9Uvsc" resolve="NF_Model_CreateNewRootNodeOperation" />
    <node concept="3EZMnI" id="3g_g2DkJPbp" role="2wV5jI">
      <node concept="PMmxH" id="3g_g2DkJPbq" role="3EZMnx">
        <ref role="PMmxG" to="tpep:hzBPeWP" resolve="ReplaceableAlias_Comp" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPbr" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="3g_g2DkJPbs" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no concept&gt;" />
        <ref role="1NtTu8" to="tp25:gCI8USK" />
        <node concept="1sVBvm" id="3g_g2DkJPbt" role="1sWHZn">
          <node concept="3F0A7n" id="3g_g2DkJPbu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="3g_g2DkJPbv" role="3F10Kt">
              <property role="Vb096" value="DARK_MAGENTA" />
            </node>
            <node concept="3$7jql" id="3g_g2DkJPbw" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
        <node concept="3$7jql" id="3g_g2DkJPbx" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPb_" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="3g_g2DkJPbB" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpdg:3g_g2DkJPbC" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPby" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="3g_g2DkJPbz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3g_g2DkJPbG">
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="1XX52x" to="tpdg:4KfPOs9Uu4C" resolve="NF_Model_CreateNewNodeOperation" />
    <node concept="3EZMnI" id="3g_g2DkJPbH" role="2wV5jI">
      <node concept="PMmxH" id="3g_g2DkJPbI" role="3EZMnx">
        <ref role="PMmxG" to="tpep:hzBPeWP" resolve="ReplaceableAlias_Comp" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPbJ" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="3g_g2DkJPbK" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no concept&gt;" />
        <ref role="1NtTu8" to="tp25:gCI8USK" />
        <node concept="1sVBvm" id="3g_g2DkJPbL" role="1sWHZn">
          <node concept="3F0A7n" id="3g_g2DkJPbM" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="VechU" id="3g_g2DkJPbN" role="3F10Kt">
              <property role="Vb096" value="DARK_MAGENTA" />
            </node>
            <node concept="3$7jql" id="3g_g2DkJPbO" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
        <node concept="3$7jql" id="3g_g2DkJPbP" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPbT" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="3g_g2DkJPbV" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpdg:3g_g2DkJPbE" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPbQ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="3g_g2DkJPbR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3g_g2DkJPWH">
    <property role="3GE5qa" value="nodeFactories" />
    <ref role="1XX52x" to="tpdg:6JEpOPLvunO" resolve="NF_Concept_NewInstance" />
    <node concept="3EZMnI" id="3g_g2DkJPWI" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="PMmxH" id="3g_g2DkJPWJ" role="3EZMnx">
        <ref role="PMmxG" to="tpep:hzBPeWP" resolve="ReplaceableAlias_Comp" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPWK" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="3g_g2DkJS5s" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="tpdg:3g_g2DkJPWO" />
      </node>
      <node concept="3F0ifn" id="3g_g2DkJPWL" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="3g_g2DkJPWM" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6_DAuCqL6f2">
    <property role="3GE5qa" value="menuParts.Substitute" />
    <ref role="1XX52x" to="tpdg:6_DAuCqL68Z" resolve="FluentEntrySubstitutePart" />
    <node concept="3EZMnI" id="6_DAuCqL76m" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="6_DAuCqL76n" role="3EZMnx">
        <node concept="3F0ifn" id="6_DAuCqL76o" role="3EZMnx">
          <property role="3F0ifm" value="fluent entry" />
          <node concept="VechU" id="6_DAuCqL76p" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="2iRfu4" id="6_DAuCqL76q" role="2iSdaV" />
      </node>
      <node concept="PMmxH" id="6_DAuCqL76r" role="3EZMnx">
        <ref role="PMmxG" node="6_DAuCqL6fq" resolve="SimpleItemSubsitutePartComponent" />
      </node>
      <node concept="2iRkQZ" id="6_DAuCqL76s" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6_DAuCqL6fq">
    <property role="TrG5h" value="SimpleItemSubsitutePartComponent" />
    <ref role="1XX52x" to="tpdg:h8ucCh3" resolve="SimpleItemSubstitutePart" />
    <node concept="3EZMnI" id="h8udB$v" role="2wV5jI">
      <node concept="3XFhqQ" id="hOIlDUj" role="3EZMnx" />
      <node concept="3EZMnI" id="h8udECn" role="3EZMnx">
        <property role="3EZMnw" value="true" />
        <node concept="3F0ifn" id="h8udEUH" role="3EZMnx">
          <property role="3F0ifm" value="can substitute" />
          <node concept="VechU" id="hEZR8mB" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="h8uebYF" role="3EZMnx">
          <node concept="3XFhqQ" id="hOIlEym" role="3EZMnx" />
          <node concept="3F1sOY" id="h8uebYG" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:h8ucKen" />
          </node>
          <node concept="VPM3Z" id="hEU$PCI" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKT2" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="h8uGGv4" role="3EZMnx">
          <property role="3F0ifm" value="matching text" />
          <node concept="VechU" id="hEZR8CL" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="h8uGGv5" role="3EZMnx">
          <node concept="3XFhqQ" id="hOIlF5i" role="3EZMnx" />
          <node concept="3F1sOY" id="h8uGGv7" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:h8uGu7V" />
          </node>
          <node concept="VPM3Z" id="hEU$PTt" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKRP" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="h8uGLP_" role="3EZMnx">
          <property role="3F0ifm" value="description text" />
          <node concept="VechU" id="hEZR8As" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="h8uGLPA" role="3EZMnx">
          <node concept="3XFhqQ" id="hOIlFGQ" role="3EZMnx" />
          <node concept="3F1sOY" id="h8uGLPC" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:h8uGvvm" />
          </node>
          <node concept="VPM3Z" id="hEU$Phf" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKSU" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="5zjZZw1hTFY" role="3EZMnx">
          <node concept="2iRkQZ" id="5zjZZw1hTFZ" role="2iSdaV" />
          <node concept="3EZMnI" id="5zjZZw1hTIp" role="3EZMnx">
            <node concept="3F0ifn" id="5zjZZw1hV$T" role="3EZMnx">
              <property role="3F0ifm" value="deprecated" />
              <node concept="VechU" id="5zjZZw1hV$U" role="3F10Kt">
                <property role="Vb096" value="red" />
              </node>
            </node>
            <node concept="2iRfu4" id="5zjZZw1hTIq" role="2iSdaV" />
            <node concept="3F0ifn" id="hwsK5Mp" role="3EZMnx">
              <property role="3F0ifm" value="icon" />
              <node concept="VechU" id="hEZR8v$" role="3F10Kt">
                <property role="Vb096" value="DARK_BLUE" />
              </node>
            </node>
            <node concept="VPM3Z" id="5zjZZw1hTJn" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="VPM3Z" id="5zjZZw1hTHv" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3EZMnI" id="hwsK5Mq" role="3EZMnx">
            <node concept="3XFhqQ" id="hOIlGmA" role="3EZMnx" />
            <node concept="3F1sOY" id="hwsK5Ms" role="3EZMnx">
              <property role="1$x2rV" value="&lt;default&gt;" />
              <ref role="1NtTu8" to="tpdg:hwsK0gE" />
            </node>
            <node concept="VPM3Z" id="hEU$PYo" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2IBKRk" role="2iSdaV" />
          </node>
          <node concept="pkWqt" id="5zjZZw1l0w9" role="pqm2j">
            <node concept="3clFbS" id="5zjZZw1l0wa" role="2VODD2">
              <node concept="3clFbF" id="5zjZZw1l0NH" role="3cqZAp">
                <node concept="3y3z36" id="5zjZZw1l5eK" role="3clFbG">
                  <node concept="10Nm6u" id="5zjZZw1l5ua" role="3uHU7w" />
                  <node concept="2OqwBi" id="5zjZZw1l0UX" role="3uHU7B">
                    <node concept="3TrEf2" id="5zjZZw1l3A6" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpdg:hwsK0gE" />
                    </node>
                    <node concept="pncrf" id="5zjZZw1l0NG" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5zjZZw1n04A" role="3EZMnx">
          <property role="3F0ifm" value="icon node" />
          <node concept="VechU" id="5zjZZw1n04B" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="5zjZZw1n0Xf" role="3EZMnx">
          <node concept="3XFhqQ" id="5zjZZw1n0Xg" role="3EZMnx" />
          <node concept="3F1sOY" id="5zjZZw1n0Xh" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:5zjZZw1n1lc" />
          </node>
          <node concept="VPM3Z" id="5zjZZw1n0Xi" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="5zjZZw1n0Xj" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="hTNFDZ7" role="3EZMnx">
          <property role="3F0ifm" value="type" />
          <node concept="VechU" id="hTNFKr_" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="hTNFFzv" role="3EZMnx">
          <node concept="3XFhqQ" id="hTNFFzw" role="3EZMnx" />
          <node concept="3F1sOY" id="hTNFFzx" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:hTNDbYj" />
          </node>
          <node concept="VPM3Z" id="hTNFFzy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKUa" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="h8udH6E" role="3EZMnx">
          <property role="3F0ifm" value="create child node" />
          <node concept="VechU" id="hEZR8xl" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="h8uedaC" role="3EZMnx">
          <node concept="3XFhqQ" id="hOIlHkC" role="3EZMnx" />
          <node concept="3F1sOY" id="h8uedaD" role="3EZMnx">
            <property role="1$x2rV" value="&lt;none&gt;" />
            <ref role="1NtTu8" to="tpdg:h8ucMIM" />
          </node>
          <node concept="VPM3Z" id="hEU$Paa" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2IBKSm" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="ovg3x$dec2" role="3EZMnx">
          <property role="3F0ifm" value="selection handler" />
          <node concept="VechU" id="ovg3x$dec3" role="3F10Kt">
            <property role="Vb096" value="DARK_BLUE" />
          </node>
        </node>
        <node concept="3EZMnI" id="ovg3x$dec4" role="3EZMnx">
          <node concept="3XFhqQ" id="ovg3x$dec5" role="3EZMnx" />
          <node concept="3F1sOY" id="ovg3x$dec6" role="3EZMnx">
            <property role="1$x2rV" value="&lt;default&gt;" />
            <ref role="1NtTu8" to="tpdg:ovg3x$dd7u" />
          </node>
          <node concept="VPM3Z" id="ovg3x$dec7" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="ovg3x$dec8" role="2iSdaV" />
        </node>
        <node concept="VPM3Z" id="hEU$Pmg" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2IBKRn" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="hEU$OUC" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="2iRfu4" id="i2IBKR4" role="2iSdaV" />
    </node>
  </node>
</model>

