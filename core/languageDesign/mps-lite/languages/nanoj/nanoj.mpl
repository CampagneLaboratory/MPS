<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.nanoj" compileInMPS="false">
  <structure>
    <model modelUID="jetbrains.mps.nanoj.structure" />
  </structure>
  <helginsTypeSystem>
    <model modelUID="jetbrains.mps.nanoj.helgins" />
  </helginsTypeSystem>
  <actions>
    <model modelUID="jetbrains.mps.nanoj.actions" />
  </actions>
  <constraints>
    <model modelUID="jetbrains.mps.nanoj.constraints" />
  </constraints>
  <editor>
    <model modelUID="jetbrains.mps.nanoj.editor" />
  </editor>
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.nanoj" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.nanoj" />
  </models>
  <module />
  <accessoryModels />
  <generators />
  <classPath />
  <runtimeClassPath>
    <entry path="${mps_home}\core\languageDesign\mps-lite\classes" />
  </runtimeClassPath>
  <sourcePath />
  <osgiOptions>
    <requiredBundles />
    <exportedPackage />
  </osgiOptions>
</language>

