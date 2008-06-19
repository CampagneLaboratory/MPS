<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mpslite" pluginClass="jetbrains.mpslite.MPSLitePlugin" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mpslite" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mpslite" />
  </models>
  <accessoryModels>
    <model modelUID="jetbrains.mpslite.common" />
    <model modelUID="jetbrains.mpslite.treeAspect" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mpslite#1182846582475">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mpslite.generator.baseLanguage.template" />
      </models>
      <external-templates>
        <generator generatorUID="jetbrains.mps.bootstrap.structureLanguage#1170324972255" />
        <generator generatorUID="jetbrains.mps.bootstrap.editorLanguage#1129914002149" />
      </external-templates>
      <dependencies>
        <dependency reexport="true">jetbrains.mps.baseLanguage</dependency>
        <dependency reexport="false">jetbrains.mps.bootstrap.actionsLanguage</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguages>jetbrains.mps.regexp</usedLanguages>
        <usedLanguages>jetbrains.mps.baseLanguageInternal</usedLanguages>
      </usedLanguages>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="jetbrains.mpslite.generator.baseLanguage.template.main@templates" nodeID="*" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="jetbrains.mps.bootstrap.structureLanguage#1170324972255" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="jetbrains.mpslite.generator.baseLanguage.template.main@templates" nodeID="*" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="jetbrains.mps.bootstrap.editorLanguage#1129914002149" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <classPath>
    <entry path="${mps_home}\core\languageDesign\mps-lite\classes" />
  </classPath>
  <languageRuntimeClassPath />
  <sourcePath />
  <dependencies>
    <dependency reexport="true">jetbrains.mps.quotation</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>jetbrains.mps.ypath</usedLanguages>
  </usedLanguages>
  <extendedLanguages>
    <extendedLanguage>jetbrains.mps.core</extendedLanguage>
    <extendedLanguage>jetbrains.mps.bootstrap.structureLanguage</extendedLanguage>
    <extendedLanguage>jetbrains.mps.baseLanguage</extendedLanguage>
  </extendedLanguages>
</language>

