<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:710d1207-58b1-4fe3-ba47-f417dc16c10c(jetbrains.mps.lang.editor.styleTests.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
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
  <node concept="1TIwiD" id="5ISglset15C">
    <property role="TrG5h" value="TestConceptWithStyleAttributes" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="7jyxAjKlw5c">
    <property role="TrG5h" value="NodeContainer" />
    <property role="34LRSv" value="node container" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="7jyxAjKlwmI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="node" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7jyxAjKlw5c" resolve="NodeContainer" />
    </node>
  </node>
  <node concept="1TIwiD" id="7J09Mf1COLQ">
    <property role="TrG5h" value="PriorityStyle" />
    <property role="34LRSv" value="priorityStyle" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
  </node>
  <node concept="1TIwiD" id="7J09Mf1CP_t">
    <property role="TrG5h" value="TestSimpleAttribute" />
    <property role="34LRSv" value="test-simple-attribute" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
    <node concept="1TJgyi" id="7J09Mf1CPVj" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="7J09Mf1CPVt">
    <property role="TrG5h" value="TestInheritedAttribute" />
    <property role="34LRSv" value="test-inherited-attribute" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
    <node concept="1TJgyi" id="7J09Mf1CPVu" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="7J09Mf1CQyu">
    <property role="TrG5h" value="PriorityStyleCopy" />
    <property role="34LRSv" value="priorityStyleCopy" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
  </node>
  <node concept="1TIwiD" id="7J09Mf1CQCa">
    <property role="TrG5h" value="HugePriorityStyle" />
    <property role="34LRSv" value="hugePriorityStyle" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
  </node>
  <node concept="1TIwiD" id="7J09Mf1CQCf">
    <property role="TrG5h" value="UnapplyPriorityStyleCopy" />
    <property role="34LRSv" value="unapplyPriorityStyleCopy" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
  </node>
  <node concept="1TIwiD" id="3yp29n1p8sU">
    <property role="TrG5h" value="LeafNode" />
    <property role="34LRSv" value="leaf" />
    <ref role="1TJDcQ" node="7jyxAjKlw5c" resolve="NodeContainer" />
  </node>
</model>

