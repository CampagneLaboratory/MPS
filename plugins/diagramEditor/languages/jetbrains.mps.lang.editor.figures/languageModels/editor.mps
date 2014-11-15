<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e4d83561-5cd9-4b01-bf95-b441a061d0de(jetbrains.mps.lang.editor.figures.editor)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ny2" ref="r:64327a98-9d9a-43f9-aa56-fe3b1ee87c60(jetbrains.mps.lang.editor.figures.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="sg" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="sg" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" index="3F0A7n" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="sg" index="1!h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1149850725784" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedNodeCell" flags="sg" index="2SsqMj" />
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" index="3F2HdR" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi!J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq!k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2178507174411801757">
    <reference role="1XX52x" target="ny2.2178507174411801538" resolve="ExternalViewFigure" />
    <node concept="3EZMnI" id="2178507174411801856" role="2wV5jI">
      <node concept="l2Vlx" id="2178507174411801857" role="2iSdaV" />
      <node concept="3F0ifn" id="2178507174411801858" role="3EZMnx">
        <property role="3F0ifm" value="view class" />
      </node>
      <node concept="1iCGBv" id="2178507174411801859" role="3EZMnx">
        <reference role="1NtTu8" target="ny2.2178507174411801591" />
        <node concept="1sVBvm" id="2178507174411801860" role="1sWHZn">
          <node concept="3F0A7n" id="2178507174411801861" role="2wV5jI">
            <reference role="1NtTu8" target="tpck.1169194664001" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2178507174411801862" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="2178507174411801863" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="2178507174411801864" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2178507174411801865" role="3EZMnx">
        <reference role="1NtTu8" target="ny2.2178507174411801664" />
        <node concept="l2Vlx" id="2178507174411801866" role="2czzBx" />
        <node concept="pj6Ft" id="2178507174411801867" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2178507174411801868" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="2178507174411801869" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2178507174411801870" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="2178507174411801871" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2178507174411802073">
    <reference role="1XX52x" target="ny2.2178507174411801606" resolve="ExternalViewFigureParameter" />
    <node concept="3EZMnI" id="2178507174411802118" role="2wV5jI">
      <node concept="l2Vlx" id="2178507174411802119" role="2iSdaV" />
      <node concept="1iCGBv" id="2178507174411802122" role="3EZMnx">
        <reference role="1NtTu8" target="ny2.2178507174411801649" />
        <node concept="1sVBvm" id="2178507174411802123" role="1sWHZn">
          <node concept="3F0A7n" id="2178507174411802124" role="2wV5jI">
            <reference role="1NtTu8" target="tpck.1169194664001" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2178507174411802125" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <node concept="11L4FC" id="2178507174411802126" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5422656561926750065">
    <reference role="1XX52x" target="ny2.5422656561926747556" resolve="FigureAttribute" />
    <node concept="3EZMnI" id="5422656561926752117" role="2wV5jI">
      <node concept="PMmxH" id="5422656561930928633" role="3EZMnx">
        <reference role="PMmxG" target="tpco.2900100530630621651" resolve="alias" />
        <reference role="1ERwB7" target="5422656561928696623" resolve="AttributeDelete_Actions" />
        <node concept="VPxyj" id="5422656561931005695" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="5422656561931175187" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2SsqMj" id="5422656561926752228" role="3EZMnx" />
      <node concept="l2Vlx" id="5422656561926752120" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="5422656561928696623">
    <property role="TrG5h" value="AttributeDelete_Actions" />
    <reference role="1h_SK9" target="tpck.3364660638048049748" resolve="NodeAttribute" />
    <node concept="1hA7zw" id="5422656561928696656" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="5422656561928696657" role="1hA7z_">
        <node concept="3clFbS" id="5422656561928696658" role="2VODD2">
          <node concept="3cpWs8" id="5422656561931207971" role="3cqZAp">
            <node concept="3cpWsn" id="5422656561931207972" role="3cpWs9">
              <property role="TrG5h" value="nodeToSelect" />
              <node concept="3Tqbb2" id="5422656561931207970" role="1tU5fm" />
              <node concept="2OqwBi" id="5422656561931207973" role="33vP2m">
                <node concept="0IXxy" id="5422656561931207974" role="2Oq!k0" />
                <node concept="1mfA1w" id="5422656561931207975" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5422656561928696698" role="3cqZAp">
            <node concept="2OqwBi" id="5422656561928702447" role="3clFbG">
              <node concept="0IXxy" id="5422656561928696697" role="2Oq!k0" />
              <node concept="1PgB_6" id="5422656561928704845" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="5422656561931208255" role="3cqZAp">
            <node concept="2OqwBi" id="5422656561931208425" role="3clFbG">
              <node concept="37vLTw" id="5422656561931208254" role="2Oq!k0">
                <reference role="3cqZAo" target="5422656561931207972" resolve="nodeToSelect" />
              </node>
              <node concept="1OKiuA" id="5422656561931210321" role="2OqNvi">
                <node concept="1Q80Hx" id="5422656561931210366" role="lBI5i" />
                <node concept="2B6iha" id="5422656561931210460" role="lGT1i">
                  <property role="1lyBwo" value="firstEditable" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5422656561931607936">
    <reference role="1XX52x" target="ny2.5422656561929884641" resolve="FigureParameterAttribute" />
    <node concept="3EZMnI" id="5422656561931607938" role="2wV5jI">
      <node concept="3F0ifn" id="7319867929567527565" role="3EZMnx">
        <property role="3F0ifm" value="@FigureParameter" />
        <node concept="VPxyj" id="7319867929567828757" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="ljvvj" id="7319867929567828758" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2SsqMj" id="5422656561931608167" role="3EZMnx" />
      <node concept="l2Vlx" id="5422656561931607941" role="2iSdaV" />
    </node>
  </node>
</model>

