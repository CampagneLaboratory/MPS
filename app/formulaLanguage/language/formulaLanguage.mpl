<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.formulaLanguage" generatorOutputPath="${mps_home}\app\formulaLanguage\source_gen" compileInMPS="false">
  <structure>
    <model modelUID="jetbrains.mps.formulaLanguage.structure" />
  </structure>
  <actions>
    <model modelUID="jetbrains.mps.formulaLanguage.actions" />
  </actions>
  <editor>
    <model modelUID="jetbrains.mps.formulaLanguage.editor" />
  </editor>
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.formulaLanguage" />
  </models>
  <module />
  <accessoryModels />
  <generators>
    <generator name="generator" generatorUID="jetbrains.mps.formulaLanguage#1130266266255" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator" namespacePrefix="jetbrains.mps.formulaLanguage.generator" />
      </models>
      <module />
      <external-templates />
      <mapping-priorities />
    </generator>
  </generators>
  <classPath />
  <runtimeClassPath>
    <entry path="${mps_home}\app\formulaLanguage\classes" />
  </runtimeClassPath>
  <sourcePath />
  <osgiOptions>
    <requiredBundles />
    <exportedPackage />
  </osgiOptions>
  <dependencies>
    <dependency>jetbrains.mps.regexp</dependency>
  </dependencies>
</language>

