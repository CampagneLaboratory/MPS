<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:53885008-7612-46ff-8b11-27f1d42c3adb(jetbrains.mps.lang.migration.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tp3r" ref="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" />
    <import index="oubp" ref="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67/r:7cc2086d-c7d0-49c7-811c-ebbaf40d9195(jetbrains.mps.lang.classLike/jetbrains.mps.baseLanguage.lightweightdsl.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tp3t" ref="r:00000000-0000-4000-0000-011c89590345(jetbrains.mps.lang.pattern.structure)" implicit="true" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3QgUde4x5Ef">
    <property role="TrG5h" value="RequiredDataDeclaration" />
    <property role="34LRSv" value="requires data" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="1038793886" />
    <node concept="1TJgyj" id="6QXKeyZ2WwE" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dependencies" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4iMwkz$0syh" resolve="DataDependency" />
    </node>
    <node concept="PrWs8" id="7ay_HjIQGEC" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="5KZRo2kmrCG" role="PzmwI">
      <ref role="PrY4T" to="oubp:5BD$AU43p5T" resolve="MemberInstance" />
    </node>
  </node>
  <node concept="1TIwiD" id="4iMwkz$0syh">
    <property role="TrG5h" value="DataDependency" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="682904025" />
    <node concept="1TJgyj" id="4XFiG3drkFP" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="script" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4uVwhQyFcjm" resolve="IMigrationUnit" />
    </node>
    <node concept="PrWs8" id="3yKhys4ADHp" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
    <node concept="PrWs8" id="3yKhys4ADHx" role="PzmwI">
      <ref role="PrY4T" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
    </node>
    <node concept="PrWs8" id="3yKhys4ADTI" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
    <node concept="PrWs8" id="6d7r2FpKxx0" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
  </node>
  <node concept="1TIwiD" id="7fCCGqboGqz">
    <property role="TrG5h" value="MigrationScript" />
    <property role="19KtqR" value="true" />
    <property role="1pbfSe" value="11835031" />
    <ref role="1TJDcQ" to="tpee:fz12cDA" resolve="ClassConcept" />
    <node concept="PrWs8" id="4uVwhQyFcOL" role="PzmwI">
      <ref role="PrY4T" node="4uVwhQyFcjm" resolve="IMigrationUnit" />
    </node>
    <node concept="1TJgyi" id="536fTXa3qKn" role="1TKVEl">
      <property role="TrG5h" value="fromVersion" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="UBgfI9geXt" role="PzmwI">
      <ref role="PrY4T" to="oubp:UBgfI9exfH" resolve="AutoInitDSLClass" />
    </node>
  </node>
  <node concept="1TIwiD" id="536fTXa3qNV">
    <property role="TrG5h" value="ProducedDataDeclaration" />
    <property role="34LRSv" value="produces data" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="1697387366" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="536fTXa3qOl" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="dataType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="536fTXa3qPL" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="5KZRo2kmrDt" role="PzmwI">
      <ref role="PrY4T" to="oubp:5BD$AU43p5T" resolve="MemberInstance" />
    </node>
  </node>
  <node concept="1TIwiD" id="6d7r2FpJdsQ">
    <property role="TrG5h" value="DataDependencyReference" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="1023689568" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6d7r2FpJdsT" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="dataDependency" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4iMwkz$0syh" resolve="DataDependency" />
    </node>
    <node concept="PrWs8" id="6d7r2FpJdsR" role="PzmwI">
      <ref role="PrY4T" to="tpee:SORzhOp6jM" resolve="IVariableReference" />
    </node>
  </node>
  <node concept="1TIwiD" id="3A3gNhf1Vg4">
    <property role="TrG5h" value="ExecuteAfterDeclaration" />
    <property role="34LRSv" value="execute after" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="2004158664" />
    <node concept="1TJgyj" id="3A3gNhf2pyH" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dependencies" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3A3gNhf2pHU" resolve="OrderDependency" />
    </node>
    <node concept="PrWs8" id="3A3gNhf2py_" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9ngReX" resolve="ClassifierMember" />
    </node>
    <node concept="PrWs8" id="5KZRo2kmrBV" role="PzmwI">
      <ref role="PrY4T" to="oubp:5BD$AU43p5T" resolve="MemberInstance" />
    </node>
  </node>
  <node concept="1TIwiD" id="3A3gNhf2pHU">
    <property role="TrG5h" value="OrderDependency" />
    <property role="3GE5qa" value="member" />
    <property role="1pbfSe" value="2004033874" />
    <node concept="1TJgyj" id="3A3gNhf2pHV" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="script" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4uVwhQyFcjm" resolve="IMigrationUnit" />
    </node>
  </node>
  <node concept="1TIwiD" id="4SSaNAQkDV9">
    <property role="TrG5h" value="TransformStatement" />
    <property role="34LRSv" value="transform" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="76204546" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="4SSaNAQkDVI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pattern" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tp3t:gyDMOuh" resolve="PatternExpression" />
    </node>
    <node concept="1TJgyj" id="4SSaNAQkDVK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="consequence" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4SSaNAQkDVN" resolve="TransformConsequence" />
    </node>
    <node concept="1TJgyj" id="4SSaNAQkDVO" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="precondition" />
      <ref role="20lvS9" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
    </node>
    <node concept="1TJgyj" id="4SSaNAQkDVS" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="postprocess" />
      <ref role="20lvS9" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
    </node>
    <node concept="PrWs8" id="5kfvu3HBCMl" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
  </node>
  <node concept="PlHQZ" id="4SSaNAQkDVN">
    <property role="TrG5h" value="TransformConsequence" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="76204588" />
  </node>
  <node concept="1TIwiD" id="4SSaNAQkMP1">
    <property role="TrG5h" value="QuotationConsequence" />
    <property role="34LRSv" value="quotation" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="76241018" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5kfvu3HD_5Y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="quotation" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tp3r:hqc44pp" resolve="Quotation" />
    </node>
    <node concept="PrWs8" id="4SSaNAQkMP2" role="PzmwI">
      <ref role="PrY4T" node="4SSaNAQkDVN" resolve="TransformConsequence" />
    </node>
  </node>
  <node concept="1TIwiD" id="4SSaNAQkMUR">
    <property role="TrG5h" value="ConsequenceFunction" />
    <property role="34LRSv" value="function" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="76241392" />
    <ref role="1TJDcQ" to="tp2c:htbVj4_" resolve="ClosureLiteral" />
    <node concept="PrWs8" id="4SSaNAQkNsB" role="PzmwI">
      <ref role="PrY4T" node="4SSaNAQkDVN" resolve="TransformConsequence" />
    </node>
  </node>
  <node concept="1TIwiD" id="2MN8ysKPshV">
    <property role="TrG5h" value="LinkPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="1569253026" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2MN8ysKPshW" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" to="tp3t:gzjrplq" resolve="LinkPatternVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6xRUAczIf6z">
    <property role="TrG5h" value="NodePatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="1942955002" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6xRUAczIf6$" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" to="tp3t:gyDMOuj" resolve="PatternVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="2MN8ysKNWJc">
    <property role="TrG5h" value="PropertyPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="1568861683" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="2MN8ysKNYhD" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" to="tp3t:gyDMOul" resolve="PropertyPatternVariableDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="5kfvu3HEc1U">
    <property role="TrG5h" value="ListPatternVariableReference" />
    <property role="3GE5qa" value="transformExtension" />
    <property role="1pbfSe" value="1119370842" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="5kfvu3HEc1V" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20lbJX" value="1" />
      <property role="20kJfa" value="declaration" />
      <ref role="20lvS9" to="tp3t:gyEdBcq" resolve="ListPattern" />
    </node>
  </node>
  <node concept="1TIwiD" id="2GZlO$G5O6T">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="TrG5h" value="MoveProperty" />
    <property role="1pbfSe" value="1465293058" />
    <ref role="1TJDcQ" node="2GZlO$G5O6S" resolve="MoveConceptMember" />
  </node>
  <node concept="1TIwiD" id="2GZlO$G5O6R">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="TrG5h" value="MoveReferenceLink" />
    <property role="1pbfSe" value="1465293056" />
    <ref role="1TJDcQ" node="2GZlO$G5O6S" resolve="MoveConceptMember" />
  </node>
  <node concept="1TIwiD" id="2GZlO$G5O6U">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="TrG5h" value="MoveContainmentLink" />
    <property role="1pbfSe" value="1465293059" />
    <ref role="1TJDcQ" node="2GZlO$G5O6S" resolve="MoveConceptMember" />
  </node>
  <node concept="1TIwiD" id="6szrkDoc28u">
    <property role="TrG5h" value="MoveNode" />
    <property role="3GE5qa" value="refactoring" />
    <property role="1pbfSe" value="1085042840" />
    <node concept="1TJgyj" id="6szrkDod3Ol" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="fromNode" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="2GZlO$G5$zc" resolve="AbstractNodeReference" />
    </node>
    <node concept="1TJgyj" id="6szrkDod3On" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="toNode" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="2GZlO$G5$zc" resolve="AbstractNodeReference" />
    </node>
    <node concept="1TJgyj" id="2GZlO$G5_Lp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="specialization" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2GZlO$G5_Lt" resolve="MoveNodeSpecialization" />
    </node>
  </node>
  <node concept="1TIwiD" id="6szrkDodGEV">
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="PureMigrationScript" />
    <property role="19KtqR" value="true" />
    <property role="1pbfSe" value="1084606459" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4uVwhQyPCRg" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="0..n" />
      <property role="20kJfa" value="executeAfter" />
      <ref role="20lvS9" node="3A3gNhf2pHU" resolve="OrderDependency" />
    </node>
    <node concept="1TJgyi" id="6szrkDodGEW" role="1TKVEl">
      <property role="TrG5h" value="fromVersion" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="6szrkDodHvN" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="6szrkDoc28u" resolve="MoveNode" />
    </node>
    <node concept="PrWs8" id="4uVwhQyPPvQ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="4uVwhQyFcjr" role="PzmwI">
      <ref role="PrY4T" node="4uVwhQyFcjm" resolve="IMigrationUnit" />
    </node>
    <node concept="PrWs8" id="4uVwhQy_XuE" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="1JTUOcBqQQt">
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="RefactoringOrderDependency" />
    <property role="1pbfSe" value="1130715360" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1JTUOcBqQQu" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="refactoring" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="1JTUOcBqQQf" resolve="RefactoringLog" />
    </node>
  </node>
  <node concept="1TIwiD" id="2GZlO$G5$zc">
    <property role="3GE5qa" value="refactoring.reference" />
    <property role="TrG5h" value="AbstractNodeReference" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="1pbfSe" value="1465229333" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="2GZlO$G5O6S">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="TrG5h" value="MoveConceptMember" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="1pbfSe" value="1465293057" />
    <ref role="1TJDcQ" node="2GZlO$G5_Lt" resolve="MoveNodeSpecialization" />
  </node>
  <node concept="1TIwiD" id="1JTUOcBqQQf">
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="RefactoringLog" />
    <property role="19KtqR" value="true" />
    <property role="1pbfSe" value="1130715346" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="37Il31hWzcW" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="options" />
      <ref role="20lvS9" node="37Il31hWzd0" resolve="RefactoringOptions" />
    </node>
    <node concept="1TJgyj" id="1JTUOcBqQQg" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="0..n" />
      <property role="20kJfa" value="executeAfter" />
      <ref role="20lvS9" node="1JTUOcBqQQt" resolve="RefactoringOrderDependency" />
    </node>
    <node concept="1TJgyi" id="1JTUOcBqQQh" role="1TKVEl">
      <property role="TrG5h" value="fromVersion" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="1JTUOcBqQQi" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="part" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="2GZlO$G5z5o" resolve="RefactoringPart" />
    </node>
    <node concept="PrWs8" id="1JTUOcBqQQj" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="1JTUOcBqQQl" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="2GZlO$G5O6Q">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="TrG5h" value="MoveConcept" />
    <property role="1pbfSe" value="1465293055" />
    <ref role="1TJDcQ" node="2GZlO$G5_Lt" resolve="MoveNodeSpecialization" />
  </node>
  <node concept="1TIwiD" id="2GZlO$G5z5o">
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="RefactoringPart" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="1pbfSe" value="1465223329" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="39r_V8zIueG" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="initialState" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyj" id="39r_V8zIueI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="finalState" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
    <node concept="1TJgyi" id="39r_V8zIueE" role="1TKVEl">
      <property role="TrG5h" value="participant" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2GZlO$G5_Lt">
    <property role="3GE5qa" value="refactoring.specialization" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="MoveNodeSpecialization" />
    <property role="1pbfSe" value="1465234342" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="PlHQZ" id="4uVwhQyFcjm">
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="IMigrationUnit" />
    <property role="1pbfSe" value="362265101" />
    <node concept="PrWs8" id="1JTUOcBrycA" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2uZcAeY8Z3v">
    <property role="3GE5qa" value="refactoring.reference" />
    <property role="TrG5h" value="ReflectionNodeReference" />
    <property role="1pbfSe" value="438099134" />
    <ref role="1TJDcQ" node="2GZlO$G5$zc" resolve="AbstractNodeReference" />
    <node concept="1TJgyi" id="2uZcAeY8Zhf" role="1TKVEl">
      <property role="TrG5h" value="nodeId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2uZcAeY8Zap" role="1TKVEl">
      <property role="TrG5h" value="nodeName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2uZcAeY8Zh3" role="1TKVEl">
      <property role="TrG5h" value="modelRef" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6szrkDoc3tL">
    <property role="3GE5qa" value="refactoring.reference" />
    <property role="TrG5h" value="DirectNodeReference" />
    <property role="1pbfSe" value="1085037381" />
    <ref role="1TJDcQ" node="2GZlO$G5$zc" resolve="AbstractNodeReference" />
    <node concept="1TJgyj" id="6szrkDoc3Cg" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpck:gw2VY9q" resolve="BaseConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="37Il31hWzd0">
    <property role="1pbfSe" value="2082437264" />
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="RefactoringOptions" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="37Il31hWzd6" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20lbJX" value="0..n" />
      <property role="20kJfa" value="options" />
      <ref role="20lvS9" node="37Il31hWzd3" resolve="RefactoringOption" />
    </node>
  </node>
  <node concept="1TIwiD" id="37Il31hWzd3">
    <property role="1pbfSe" value="2082437261" />
    <property role="3GE5qa" value="refactoring" />
    <property role="TrG5h" value="RefactoringOption" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="37Il31hWzd4" role="1TKVEl">
      <property role="TrG5h" value="optionId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="37Il31hWKtO" role="1TKVEl">
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

