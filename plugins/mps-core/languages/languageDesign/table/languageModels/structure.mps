<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ae43476-98ce-4354-9a55-d7b44e372d64(jetbrains.mps.lang.editor.table.structure)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="squ6" ref="r:b60215f1-3d3e-41cc-8321-723ef8eb59dd(jetbrains.mps.lang.editor.table.runtime)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="4628067390765956807" name="final" index="R5!K2" />
        <property id="4628067390765956802" name="abstract" index="R5!K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="4677325677876400523">
    <property role="R5!K7" value="false" />
    <property role="R5!K2" value="false" />
    <property role="TrG5h" value="CellModel_Table" />
    <property role="34LRSv" value="table" />
    <reference role="1TJDcQ" target="tpc2.1073389214265" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="4490468428501048483" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="tableModel" />
      <property role="20lbJX" value="1" />
      <reference role="20lvS9" target="4490468428501056077" resolve="QueryFunction_TableModel" />
    </node>
  </node>
  <node concept="1TIwiD" id="4490468428501056077">
    <property role="R5!K7" value="false" />
    <property role="R5!K2" value="false" />
    <property role="TrG5h" value="QueryFunction_TableModel" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="getTableModel" />
    <reference role="1TJDcQ" target="tpee.1137021947720" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="2253133157536766818">
    <property role="R5!K7" value="false" />
    <property role="R5!K2" value="false" />
    <property role="TrG5h" value="CellModel_HierarchycalTable" />
    <property role="34LRSv" value="hierarchycal table" />
    <reference role="1TJDcQ" target="tpc2.1073389214265" resolve="EditorCellModel" />
    <node concept="1TJgyj" id="6216065619544939793" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="headerRowLinkDeclaration" />
      <reference role="20lvS9" target="tpce.1071489288298" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="6216065619544939794" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="rowsLinkDeclaration" />
      <property role="20lbJX" value="1" />
      <reference role="20lvS9" target="tpce.1071489288298" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="6216065619544939795" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="cellsInRowLinkDeclaration" />
      <property role="20lbJX" value="1" />
      <reference role="20lvS9" target="tpce.1071489288298" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyi" id="2253133157537011702" role="1TKVEl">
      <property role="TrG5h" value="myProp" />
      <reference role="AX2Wp" target="tpck.1082983041843" resolve="string" />
    </node>
  </node>
</model>

