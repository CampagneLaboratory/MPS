<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ba2e307-a81d-4a21-9e0b-de3624e2fb83(jetbrains.mps.lang.access.structure)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  <node concept="1TIwiD" id="7Mb2akafE8a">
    <property role="TrG5h" value="BaseExecuteCommandStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="7Mb2akafE8b" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="commandClosureLiteral" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="7Mb2akafE8d" resolve="CommandClosureLiteral" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8c">
    <property role="TrG5h" value="BaseExecuteCommandStatementSync" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <ref role="1TJDcQ" node="7Mb2akafE8a" resolve="BaseExecuteCommandStatement" />
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8d">
    <property role="TrG5h" value="CommandClosureLiteral" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <ref role="1TJDcQ" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8e">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteCommandInEDTStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="execute command in EDT" />
    <ref role="1TJDcQ" node="7Mb2akafE8a" resolve="BaseExecuteCommandStatement" />
    <node concept="1TJgyj" id="7Mb2akafE8f" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="project" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8h">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteCommandStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="command" />
    <ref role="1TJDcQ" node="7Mb2akafE8c" resolve="BaseExecuteCommandStatementSync" />
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8j">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteEDTCommandStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="execute in EDT" />
    <ref role="1TJDcQ" node="7Mb2akafE8a" resolve="BaseExecuteCommandStatement" />
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8l">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteLightweightCommandStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="read action" />
    <ref role="1TJDcQ" node="7Mb2akafE8c" resolve="BaseExecuteCommandStatementSync" />
  </node>
  <node concept="1TIwiD" id="7Mb2akafE8n">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteWriteActionStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="write action" />
    <ref role="1TJDcQ" node="7Mb2akafE8c" resolve="BaseExecuteCommandStatementSync" />
  </node>
  <node concept="PlHQZ" id="7Mb2akafE8p">
    <property role="TrG5h" value="IExecuteCommandStatementSync" />
    <property role="3GE5qa" value="Command" />
  </node>
  <node concept="1TIwiD" id="4C1usRVDuHR">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ExecuteTransparentCommandStatement" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Command" />
    <property role="34LRSv" value="undo-transparent command" />
    <ref role="1TJDcQ" node="7Mb2akafE8c" resolve="BaseExecuteCommandStatementSync" />
  </node>
</model>

