<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2721a314-71a4-4f87-8d33-9d2d1cd9ce6c(L5.structure)">
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
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="3lthDWbChjb">
    <property role="TrG5h" value="I1" />
    <node concept="1TJgyi" id="3lthDWbChjD" role="1TKVEl">
      <property role="TrG5h" value="a" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="3lthDWbCzID">
    <property role="TrG5h" value="I2" />
    <node concept="PrWs8" id="3lthDWbCzIE" role="PrDN$">
      <ref role="PrY4T" node="3lthDWbChjb" resolve="I1" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lthDWbCzJ7">
    <property role="TrG5h" value="C1" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3lthDWbCzJ8" role="PzmwI">
      <ref role="PrY4T" node="3lthDWbChjb" resolve="I1" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lthDWbCGoB">
    <property role="TrG5h" value="C0" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3lthDWbCGoC" role="PzmwI">
      <ref role="PrY4T" node="3lthDWbChjb" resolve="I1" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lthDWbCJ67">
    <property role="TrG5h" value="C2" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3lthDWbCJ68" role="PzmwI">
      <ref role="PrY4T" node="3lthDWbCzID" resolve="I2" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lthDWbCJwJ">
    <property role="TrG5h" value="C3" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3lthDWbCJxy" role="PzmwI">
      <ref role="PrY4T" node="3lthDWbChjb" resolve="I1" />
    </node>
  </node>
  <node concept="1TIwiD" id="3lthDWbCKy6">
    <property role="TrG5h" value="C4" />
    <ref role="1TJDcQ" node="3lthDWbCJwJ" resolve="C3" />
    <node concept="PrWs8" id="3lthDWbCKy7" role="PzmwI">
      <ref role="PrY4T" node="3lthDWbChjb" resolve="I1" />
    </node>
  </node>
</model>

