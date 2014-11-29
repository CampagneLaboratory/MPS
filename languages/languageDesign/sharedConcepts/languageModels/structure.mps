<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c895902bc(jetbrains.mps.lang.sharedConcepts.structure)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="-1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="srng" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1197591154882" name="memberIdentifierPolicy" index="3lZH7k" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <reference id="1083241965437" name="defaultMember" index="Qgau1" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1192116978809" name="javaIdentifier" index="2fHolG" />
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="gTQ6Nt5">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="model of the reference node" />
    <property role="TrG5h" value="ConceptFunctionParameter_model" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="model" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="1653mnvB6fG" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="gTQ799U">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="IOperationContext" />
    <property role="TrG5h" value="ConceptFunctionParameter_operationContext" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="operationContext" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="1653mnvB2Q1" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="gTQ7B__">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="context (SearchScope)" />
    <property role="TrG5h" value="ConceptFunctionParameter_scope" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="scope" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="1653mnvAOTn" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="AxPO7" id="gU16Txt">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="Options_DefaultCustom" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="gU16Txu" resolve="default_" />
    <node concept="M4N5e" id="gU16Txu" role="M5hS2">
      <property role="2fHolG" value="default_" />
      <property role="1uS6qo" value="default_" />
    </node>
    <node concept="M4N5e" id="gU17C_d" role="M5hS2">
      <property role="1uS6qv" value="custom" />
      <property role="2fHolG" value="custom_" />
      <property role="1uS6qo" value="custom_" />
    </node>
  </node>
  <node concept="AxPO7" id="gWZP3tS">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="NodePresentationOptions" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="gWZP3tT" resolve="default_" />
    <node concept="M4N5e" id="gWZP3tT" role="M5hS2">
      <property role="2fHolG" value="default_" />
      <property role="1uS6qo" value="default" />
    </node>
    <node concept="M4N5e" id="gWZPhPb" role="M5hS2">
      <property role="1uS6qv" value="default_referent" />
      <property role="2fHolG" value="referent_" />
      <property role="1uS6qo" value="referent" />
    </node>
    <node concept="M4N5e" id="gWZP3tU" role="M5hS2">
      <property role="1uS6qv" value="custom" />
      <property role="2fHolG" value="custom_" />
      <property role="1uS6qo" value="custom" />
    </node>
  </node>
  <node concept="AxPO7" id="h94aibf">
    <property role="3lZH7k" value="custom" />
    <property role="TrG5h" value="Options_DefaultTrue" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <ref role="Qgau1" node="h94aibg" resolve="default_" />
    <node concept="M4N5e" id="h94aibg" role="M5hS2">
      <property role="2fHolG" value="default_" />
      <property role="1uS6qo" value="default" />
    </node>
    <node concept="M4N5e" id="h94ayQF" role="M5hS2">
      <property role="1uS6qv" value="true" />
      <property role="2fHolG" value="true_" />
      <property role="1uS6qo" value="true" />
    </node>
  </node>
  <node concept="1TIwiD" id="ho1XNXU">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_editorContext" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="editorContext" />
    <property role="R4oN_" value="current EditorContext instance" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="1653mnvB6f2" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="hzB55RO">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ConceptFunctionParameter_node" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="node" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="1653mnvAMEo" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="uYrIA378mk">
    <property role="R4oN_" value="progress monitor" />
    <property role="TrG5h" value="ConceptFunctionParameter_progressMonitor" />
    <property role="34LRSv" value="monitor" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
    <node concept="PrWs8" id="uYrIA37bs3" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
</model>

