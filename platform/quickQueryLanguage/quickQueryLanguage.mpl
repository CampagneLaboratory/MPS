<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.quickQueryLanguage" uuid="d745e97c-8235-4470-b086-ba3da1f4c03c" java-stubs-enabled="true" compileInMPS="false" doNotGenerateAdapters="false">
  <models>
    <modelRoot path="${language_descriptor}/languageAccessories" namespacePrefix="jetbrains.mps.quickQueryLanguage" />
    <modelRoot path="${language_descriptor}/languageModels" namespacePrefix="jetbrains.mps.quickQueryLanguage" />
  </models>
  <accessoryModels />
  <generators>
    <generator name="BaseQuery" generatorUID="jetbrains.mps.quickQueryLanguage#1218799731940" uuid="59fbbb1e-71f1-44ea-9e9a-726e1e1c4192">
      <models>
        <modelRoot path="${language_descriptor}/generator/template" namespacePrefix="jetbrains.mps.quickQueryLanguage.generator.template" />
      </models>
      <external-templates />
      <dependencies>
        <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
      </dependencies>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath>
    <entry path="${language_descriptor}/classes" include="false" />
  </classPath>
  <languageRuntimeClassPath />
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">019b622b-0aef-4dd3-86d0-4eef01f3f6bb(jetbrains.mps.ide)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)</usedLanguage>
  </usedLanguages>
  <extendedLanguages>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
    <extendedLanguage>7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</extendedLanguage>
    <extendedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</extendedLanguage>
  </extendedLanguages>
</language>

