<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.baseLanguage" pluginClass="jetbrains.mps.baseLanguage.plugin.BaseLanguagePlugin" generatorOutputPath="${mps_home}\source_gen">
  <structure>
    <model modelUID="jetbrains.mps.baseLanguage.structure" />
  </structure>
  <typeSystem>
    <model modelUID="jetbrains.mps.baseLanguage.types" />
  </typeSystem>
  <helginsTypeSystem>
    <model modelUID="jetbrains.mps.baseLanguage.helgins" />
  </helginsTypeSystem>
  <actions>
    <model modelUID="jetbrains.mps.baseLanguage.actions" />
  </actions>
  <constraints>
    <model modelUID="jetbrains.mps.baseLanguage.constraints" />
  </constraints>
  <scripts>
    <model modelUID="jetbrains.mps.baseLanguage.scripts" />
  </scripts>
  <editor>
    <model modelUID="jetbrains.mps.baseLanguage.editor" />
  </editor>
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.baseLanguage" />
  </models>
  <module>
    <moduleRoot path="${mps_home}\projects\query\queryLanguage.mpl" />
    <moduleRoot path="${mps_home}\languages\patternLanguage\languages\patterns\patterns.mpl" />
    <moduleRoot path="${mps_home}\languages\formulaLanguage\language\formulaLanguage.mpl" />
    <moduleRoot path="${mps_home}\languages\helgins\languages\quotation\quotation.mpl" />
    <moduleRoot path="${mps_home}\languages\helgins\helgins.mpl" />
    <moduleRoot path="${mps_home}\languages\baseLanguage\languages\blTypes\blTypes.mpl" />
    <moduleRoot path="${mps_home}\platform\regexp\languages\regexp\regexp.mpl" />
    <moduleRoot path="${mps_home}\projects\baseLanguageExt\dev\languages\collections\lang\collections.mpl" />
  </module>
  <accessoryModels />
  <generators>
    <generator name="reduce to java" generatorUID="jetbrains.mps.baseLanguage#1129914002933" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator\java\templates" namespacePrefix="jetbrains.mps.baseLanguage.generator.java" />
      </models>
      <module />
      <external-templates />
      <mapping-priorities />
    </generator>
  </generators>
  <classPath />
</language>

