<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.complex" uuid="ff24ab03-965e-4d15-9aed-52dc276658f4" compileInMPS="true">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.complex" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.complex" />
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.complex#1196260164557" uuid="5cf20145-0114-4f14-a81d-642f4fbc2d08">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.complex.generator.baseLanguage.template" />
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="true">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="true">b8bf2110-d2b5-478f-87dd-306abe7416fe(jetbrains.mps.complex.runtime)</dependency>
      </dependencies>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath />
  <languageRuntimeClassPath />
  <sourcePath />
  <dependencies>
    <dependency reexport="true">b8bf2110-d2b5-478f-87dd-306abe7416fe(jetbrains.mps.complex.runtime)</dependency>
  </dependencies>
  <runtime>
    <dependency reexport="false">b8bf2110-d2b5-478f-87dd-306abe7416fe(jetbrains.mps.complex.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.core)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
  </extendedLanguages>
</language>

