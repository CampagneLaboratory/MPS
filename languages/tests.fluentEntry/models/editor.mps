<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce0cd52d-0270-4273-b852-74c1f8d7cb18(tests.fluentEntry.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="s19v" ref="r:39e13498-05ec-4946-8a75-c6bf0e9d7512(tests.fluentEntry.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164914519156" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" flags="ng" index="UkePV">
        <reference id="1164914727930" name="replacementConcept" index="Ul1FP" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
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
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="4jO$C4ZR_Wx">
    <ref role="1XX52x" to="s19v:4jO$C4ZR7lB" resolve="Expr" />
    <node concept="3F0ifn" id="4jO$C4ZRFuZ" role="2wV5jI">
      <property role="3F0ifm" value="&lt;- type the int value before the arrow (e.g., '1' for simple, '1 ' for fluent" />
      <node concept="VPxyj" id="4jO$C4ZRFwE" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="OXEIz" id="4jO$C4ZRFwG" role="P5bDN">
        <node concept="UkePV" id="4jO$C4ZRFwI" role="OY2wv">
          <ref role="Ul1FP" to="s19v:4jO$C4ZR7lB" resolve="Expr" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4jO$C4ZSatP">
    <ref role="1XX52x" to="s19v:4jO$C4ZR7lC" resolve="Integer" />
    <node concept="3EZMnI" id="4jO$C4ZSatR" role="2wV5jI">
      <node concept="3F0A7n" id="4jO$C4ZSatY" role="3EZMnx">
        <ref role="1NtTu8" to="s19v:4jO$C4ZS7cJ" resolve="number" />
      </node>
      <node concept="l2Vlx" id="4jO$C4ZSatU" role="2iSdaV" />
    </node>
  </node>
</model>

