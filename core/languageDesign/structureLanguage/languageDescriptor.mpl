<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.bootstrap.structureLanguage" uuid="c72da2b9-7cce-4447-8389-f407dc1158b7" generatorOutputPath="${language_descriptor}\source_gen" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage" />
  </models>
  <accessoryModels>
    <model modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.core.structure)" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mps.bootstrap.structureLanguage#1170324972255" uuid="b8e4beec-8383-4fb9-b0bb-9d1c9c159cfc">
      <models>
        <modelRoot path="${language_descriptor}\generator_new" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage.generator_new" />
      </models>
      <external-templates />
      <usedLanguages>
        <usedLanguages>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguages>
      </usedLanguages>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath>
    <entry path="${language_descriptor}\classes" />
  </classPath>
  <languageRuntimeClassPath />
  <sourcePath />
  <dependencies>
    <dependency reexport="false">7fa12e9c-b949-4976-b4fa-19accbc320b4(jetbrains.mps.bootstrap.dataFlow)</dependency>
    <dependency reexport="false">3ecd7c84-cde3-45de-886c-135ecc69b742(jetbrains.mps.logging.refactoring)</dependency>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">019b622b-0aef-4dd3-86d0-4eef01f3f6bb(jetbrains.mps.ide)</dependency>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguages>
  </usedLanguages>
  <extendedLanguages>
    <extendedLanguage>ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.core)</extendedLanguage>
  </extendedLanguages>
</language>

