<?xml version="1.0" encoding="UTF-8"?>
<model ref="9882f4ad-1955-46fe-8269-94189e5dbbf2/r:f3afda2a-1e73-443b-8e74-2e4c43867b70(jetbrains.mps.lang.migration.util/jetbrains.mps.lang.migration.util.structure)">
  <persistence version="9" />
  <debugInfo>
    <lang id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <model ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" name="jetbrains.mps.lang.smodel.structure" />
    <concept id="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135" name="AbstractConceptDeclaration" />
    <concept id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468" name="INamedConcept" />
    <concept id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288298" name="LinkDeclaration" />
    <concept id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288299" name="PropertyDeclaration" />
    <concept id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1133920641626" name="BaseConcept" />
    <concept id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640" name="ConceptDeclaration" />
    <property id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288298/1071599893252" name="sourceCardinality" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1133920641626/1193676396447" name="virtualPackage" />
    <property id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288298/1071599937831" name="metaClass" />
    <property id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640/1096454100552" name="rootable" />
    <property id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288298/1071599776563" name="role" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <refRole id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489090640/1071489389519" name="extends" />
    <refRole id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288299/1082985295845" name="dataType" />
    <refRole id="c72da2b9-7cce-4447-8389-f407dc1158b7/1071489288298/1071599976176" name="target" />
    <childRole id="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727083" name="linkDeclaration" />
    <childRole id="c72da2b9-7cce-4447-8389-f407dc1158b7/1169125787135/1071489727084" name="propertyDeclaration" />
  </debugInfo>
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" version="-1" index="4jta" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="0" implicit="true" index="asn4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="gqi5" ref="9882f4ad-1955-46fe-8269-94189e5dbbf2/r:f3afda2a-1e73-443b-8e74-2e4c43867b70(jetbrains.mps.lang.migration.util/jetbrains.mps.lang.migration.util.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="4jta.1071489090640" id="3211321119092784894" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="StringData" />
      <property role="asn4.1133920641626.1193676396447" value="persistence" />
      <reference role="4jta.1071489090640.1071489389519" target="tpck.1133920641626" resolveInfo="BaseConcept" />
      <node concept="4jta.1071489288299" id="3211321119092784906" role="4jta.1169125787135.1071489727084" info="ig">
        <property role="asn4.1169194658468.1169194664001" value="data" />
        <reference role="4jta.1071489288299.1082985295845" target="tpck.1082983041843" resolveInfo="string" />
      </node>
    </node>
    <node concept="4jta.1071489090640" id="7417095922908669705" info="ig">
      <property role="asn4.1133920641626.1193676396447" value="persistence" />
      <property role="asn4.1169194658468.1169194664001" value="StepData" />
      <property role="4jta.1071489090640.1096454100552" value="true" />
      <reference role="4jta.1071489090640.1071489389519" target="tpck.1133920641626" resolveInfo="BaseConcept" />
      <node concept="4jta.1071489288298" id="7417095922908725796" role="4jta.1169125787135.1071489727083" info="ig">
        <property role="4jta.1071489288298.1071599937831" value="aggregation" />
        <property role="4jta.1071489288298.1071599776563" value="script" />
        <property role="4jta.1071489288298.1071599893252" value="1" />
        <reference role="4jta.1071489288298.1071599976176" target="7417095922908675018" resolveInfo="MigrationScriptReference" />
      </node>
      <node concept="4jta.1071489288298" id="7417095922908725798" role="4jta.1169125787135.1071489727083" info="ig">
        <property role="4jta.1071489288298.1071599937831" value="aggregation" />
        <property role="4jta.1071489288298.1071599776563" value="data" />
        <property role="4jta.1071489288298.1071599893252" value="1" />
        <reference role="4jta.1071489288298.1071599976176" target="tpck.1133920641626" resolveInfo="BaseConcept" />
      </node>
    </node>
    <node concept="4jta.1071489090640" id="7417095922908675018" info="ig">
      <property role="asn4.1133920641626.1193676396447" value="persistence" />
      <property role="asn4.1169194658468.1169194664001" value="MigrationScriptReference" />
      <reference role="4jta.1071489090640.1071489389519" target="tpck.1133920641626" resolveInfo="BaseConcept" />
      <node concept="4jta.1071489288299" id="7417095922908725794" role="4jta.1169125787135.1071489727084" info="ig">
        <property role="asn4.1169194658468.1169194664001" value="fromVersion" />
        <reference role="4jta.1071489288299.1082985295845" target="tpck.1082983657062" resolveInfo="integer" />
      </node>
      <node concept="4jta.1071489288299" id="7417095922909370996" role="4jta.1169125787135.1071489727084" info="ig">
        <property role="asn4.1169194658468.1169194664001" value="module" />
        <reference role="4jta.1071489288299.1082985295845" target="tpck.1082983041843" resolveInfo="string" />
      </node>
    </node>
  </contents>
</model>

