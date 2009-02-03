<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.baseLanguage" uuid="f3061a53-9226-4cc5-a443-f952ceaf5816" generatorOutputPath="${language_descriptor}/source_gen" java-stubs-enabled="true" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}/languageModels" namespacePrefix="jetbrains.mps.baseLanguage" />
  </models>
  <accessoryModels />
  <generators>
    <generator name="java" generatorUID="jetbrains.mps.baseLanguage#1129914002933" uuid="985c8c6a-64b4-486d-a91e-7d4112742556">
      <models>
        <modelRoot path="${language_descriptor}/generator/java/templates" namespacePrefix="jetbrains.mps.baseLanguage.generator.java" />
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguages>jetbrains.mps.baseLanguageInternal</usedLanguages>
      </usedLanguages>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath>
    <entry path="${language_descriptor}/classes" include="false" />
  </classPath>
  <languageRuntimeClassPath>
    <entry path="${language_descriptor}/runtime/classes" />
  </languageRuntimeClassPath>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
    <dependency reexport="false">443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</dependency>
    <dependency reexport="false">9c8b4b95-5d89-4201-ad78-0b2db3a22768(jetbrains.mps.baseLanguage.test)</dependency>
    <dependency reexport="false">2af156ab-65c1-4a62-bd0d-ea734f71eab6(jetbrains.mps.dataFlow.runtime)</dependency>
    <dependency reexport="false">019b622b-0aef-4dd3-86d0-4eef01f3f6bb(jetbrains.mps.ide)</dependency>
    <dependency reexport="false">af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)</dependency>
    <dependency reexport="false">3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)</dependency>
    <dependency reexport="false">7fa12e9c-b949-4976-b4fa-19accbc320b4(jetbrains.mps.lang.dataFlow)</dependency>
    <dependency reexport="false">18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)</dependency>
    <dependency reexport="false">0647eca7-da98-422a-8a8b-6ebc0bd014ea(jetbrains.mps.lang.editor#1129914002149)</dependency>
    <dependency reexport="false">b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</dependency>
    <dependency reexport="false">d7a92d38-f7db-40d0-8431-763b0c3c9f20(jetbrains.mps.lang.intentions)</dependency>
    <dependency reexport="false">e7d4970e-3e9f-4cf0-a129-f5976c82d635(jetbrains.mps.lang.patterns#1174810948060)</dependency>
    <dependency reexport="false">e7d4970e-3e9f-4cf0-a129-f5976c82d635(jetbrains.mps.lang.patterns#1174810948060)</dependency>
    <dependency reexport="false">28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</dependency>
    <dependency reexport="false">3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)</dependency>
    <dependency reexport="false">3ecd7c84-cde3-45de-886c-135ecc69b742(jetbrains.mps.lang.refactoring)</dependency>
    <dependency reexport="false">071dc6d3-9172-49bc-9ecd-8487bb9112a4(jetbrains.mps.lang.refactoring#1189697379687)</dependency>
    <dependency reexport="false">7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</dependency>
    <dependency reexport="false">c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</dependency>
    <dependency reexport="false">8585453e-6bfb-4d80-98de-b16074f1d86c(jetbrains.mps.lang.test)</dependency>
    <dependency reexport="false">fc4584d6-365c-4ceb-b660-b2c91933024d(jetbrains.mps.lang.test#1210261198005)</dependency>
    <dependency reexport="false">707c4fde-f79a-44b5-b3d7-b5cef8844ccf(jetbrains.mps.lang.test.runtime)</dependency>
    <dependency reexport="false">7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)</dependency>
    <dependency reexport="false">7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)</dependency>
    <dependency reexport="false">8fffa437-9500-4c6b-abfc-f4cb2335b059(jetbrains.mps.lang.typesystem#1174411220599)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguage.classifiers</usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguage.regexp</usedLanguages>
  </usedLanguages>
  <extendedLanguages>
    <extendedLanguage>jetbrains.mps.baseLanguage.blTypes</extendedLanguage>
    <extendedLanguage>jetbrains.mps.lang.core</extendedLanguage>
  </extendedLanguages>
</language>

