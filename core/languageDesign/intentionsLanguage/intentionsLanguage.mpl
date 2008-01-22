<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.bootstrap.intentionsLanguage" compileInMPS="false">
  <structure>
    <model modelUID="jetbrains.mps.bootstrap.intentionsLanguage.structure" />
  </structure>
  <helginsTypeSystem>
    <model modelUID="jetbrains.mps.bootstrap.intentionsLanguage.helgins" />
  </helginsTypeSystem>
  <constraints>
    <model modelUID="jetbrains.mps.bootstrap.intentionsLanguage.constraints" />
  </constraints>
  <scripts>
    <model modelUID="jetbrains.mps.bootstrap.intentionsLanguage.scripts" />
  </scripts>
  <editor>
    <model modelUID="jetbrains.mps.bootstrap.intentionsLanguage.editor" />
  </editor>
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.bootstrap.intentionsLanguage" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.bootstrap.intentionsLanguage" />
  </models>
  <module />
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.bootstrap.intentionsLanguage#1192798684353" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.bootstrap.intentionsLanguage.generator.baseLanguage.template" />
      </models>
      <module />
      <external-templates />
      <dependencies>
        <dependency>jetbrains.mps.baseLanguage</dependency>
      </dependencies>
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
</language>

