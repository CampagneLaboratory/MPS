<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.ide.uiLanguage" generatorOutputPath="${language_descriptor}\source_gen" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.ide.uiLanguage" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.ide.uiLanguage" />
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.ide.uiLanguage#1203519930689" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.ide.uiLanguage.generator.baseLanguage.template" />
      </models>
      <external-templates>
        <generator generatorUID="jetbrains.mps.uiLanguage#1202393863737" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">jetbrains.mps.baseLanguage</dependency>
      </dependencies>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="jetbrains.mps.ide.uiLanguage.generator.baseLanguage.template.main@templates" nodeID="*" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="jetbrains.mps.uiLanguage#1202393863737" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <classPath />
  <runtimeClassPath>
    <entry path="${language_descriptor}\classes" />
  </runtimeClassPath>
  <sourcePath />
  <osgiOptions>
    <requiredBundles />
    <exportedPackage />
  </osgiOptions>
  <extendedLanguages>
    <extendedLanguage>jetbrains.mps.baseLanguage</extendedLanguage>
    <extendedLanguage>jetbrains.mps.uiLanguage</extendedLanguage>
  </extendedLanguages>
</language>

