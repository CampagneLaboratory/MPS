<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.console.scripts" uuid="f26691d2-0def-4c06-aec6-2cb90c4af0a4" version="0">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot path="${module}/languageModels" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator name="" generatorUID="jetbrains.mps.console.scripts#1734392475490224704" uuid="b372f31d-dc58-46b6-ad0b-2e1b2e187b9d">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
      </models>
      <external-templates>
        <generator generatorUID="504d7390-81ca-4422-8018-f7290efa217f(jetbrains.mps.console.blCommand#5336086527852811409)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">1a8554c4-eb84-43ba-8c34-6f0d90c6e75a(jetbrains.mps.console.blCommand)</dependency>
        <dependency reexport="false" scope="design">2bdcefec-ba49-4b32-ab50-ebc7a41d5090(jetbrains.mps.lang.smodel#1139186730696)</dependency>
      </dependencies>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <languageVersions>
        <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="1" />
        <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
        <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
        <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
        <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
        <language id="b401a680-8325-4110-8fd3-84331ff25bef" fqName="jetbrains.mps.lang.generator" version="0" />
        <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" fqName="jetbrains.mps.lang.generator.generationContext" version="0" />
        <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" fqName="jetbrains.mps.lang.smodel" version="0" />
        <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
      </languageVersions>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_together">
          <greater-priority-mapping>
            <generator generatorUID="b372f31d-dc58-46b6-ad0b-2e1b2e187b9d(jetbrains.mps.console.scripts#1734392475490224704)" />
            <external-mapping>
              <mapping-node modelUID="r:d126bb78-add4-48f5-8d7d-bb3111805e2a(jetbrains.mps.console.scripts.generator.main@generator)" nodeID="1734392475490465061" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="504d7390-81ca-4422-8018-f7290efa217f(jetbrains.mps.console.blCommand#5336086527852811409)" />
            <external-mapping>
              <mapping-node modelUID="r:443bf6a4-9266-4251-8983-0f2d347a9c11(jetbrains.mps.console.blCommand.generator.template.main@generator)" nodeID="5336086527852811410" />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="b372f31d-dc58-46b6-ad0b-2e1b2e187b9d(jetbrains.mps.console.scripts#1734392475490224704)" />
            <external-mapping>
              <mapping-node modelUID="r:d126bb78-add4-48f5-8d7d-bb3111805e2a(jetbrains.mps.console.scripts.generator.main@generator)" nodeID="1672541786946132901" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="2bdcefec-ba49-4b32-ab50-ebc7a41d5090(jetbrains.mps.lang.smodel#1139186730696)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" nodeID="1139186732963" />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
    <dependency reexport="false">83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <languageVersions>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" fqName="jetbrains.mps.baseLanguage" version="1" />
    <language id="ed6d7656-532c-4bc2-81d1-af945aeb8280" fqName="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" fqName="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language id="fd392034-7849-419d-9071-12563d152375" fqName="jetbrains.mps.baseLanguage.closures" version="0" />
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" fqName="jetbrains.mps.baseLanguage.collections" version="0" />
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" fqName="jetbrains.mps.lang.actions" version="0" />
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" fqName="jetbrains.mps.lang.behavior" version="0" />
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" fqName="jetbrains.mps.lang.core" version="1" />
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" fqName="jetbrains.mps.lang.editor" version="0" />
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" fqName="jetbrains.mps.lang.sharedConcepts" version="0" />
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" fqName="jetbrains.mps.lang.smodel" version="1" />
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" fqName="jetbrains.mps.lang.structure" version="0" />
    <language id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" fqName="jetbrains.mps.lang.traceable" version="0" />
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" fqName="jetbrains.mps.lang.typesystem" version="0" />
  </languageVersions>
  <runtime>
    <dependency reexport="false">ebc06ad9-00ca-47ed-b5c6-bde710ea8f4d(jetbrains.mps.console.scripts.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>de1ad86d-6e50-4a02-b306-d4d17f64c375(jetbrains.mps.console.base)</extendedLanguage>
    <extendedLanguage>1a8554c4-eb84-43ba-8c34-6f0d90c6e75a(jetbrains.mps.console.blCommand)</extendedLanguage>
  </extendedLanguages>
</language>

