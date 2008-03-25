<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.bootstrap.structureLanguage" generatorOutputPath="${language_descriptor}\source_gen" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage" />
  </models>
  <accessoryModels>
    <model modelUID="jetbrains.mps.core.structure" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mps.bootstrap.structureLanguage#1170324972255" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator_new" namespacePrefix="jetbrains.mps.bootstrap.structureLanguage.generator_new" />
      </models>
      <external-templates />
      <usedLanguages>
        <usedLanguages>jetbrains.mps.baseLanguageInternal</usedLanguages>
      </usedLanguages>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath>
    <entry path="${language_descriptor}\classes" />
  </classPath>
  <runtimeClassPath>
    <entry path="${language_descriptor}\classes" />
  </runtimeClassPath>
  <sourcePath />
  <osgiOptions>
    <requiredBundles />
    <exportedPackage />
  </osgiOptions>
  <dependencies>
    <dependency reexport="false">jetbrains.mps.bootstrap.dataFlow</dependency>
  </dependencies>
  <extendedLanguages>
    <extendedLanguage>jetbrains.mps.core</extendedLanguage>
  </extendedLanguages>
</language>

