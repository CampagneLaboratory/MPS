<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.formulaLanguage" uuid="b1a9bc47-8a26-4792-8b68-4660c531090a" generatorOutputPath="${mps_home}\app\formulaLanguage\source_gen" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.formulaLanguage" />
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.formulaLanguage#1130266266255" uuid="9e79e6dc-3005-4fdf-901d-d1d70047ef7b">
      <models>
        <modelRoot path="${language_descriptor}\generator" namespacePrefix="jetbrains.mps.formulaLanguage.generator" />
      </models>
      <external-templates />
      <mapping-priorities />
    </generator>
  </generators>
  <classPath>
    <entry path="${mps_home}\app\formulaLanguage\classes" />
  </classPath>
  <languageRuntimeClassPath />
  <sourcePath />
  <dependencies>
    <dependency reexport="true">daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.regexp)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>daafa647-f1f7-4b0b-b096-69cd7c8408c0(jetbrains.mps.regexp)</usedLanguages>
  </usedLanguages>
  <extendedLanguages />
</language>

