<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.transformation.TLBase" pluginClass="jetbrains.mps.transformation.TLBase.plugin.TemplateLanguagePlugin" generatorOutputPath="${mps_home}\source_gen">
  <structure>
    <model modelUID="jetbrains.mps.transformation.TLBase.structure" />
  </structure>
  <helginsTypeSystem>
    <model modelUID="jetbrains.mps.transformation.TLBase.helgins" />
  </helginsTypeSystem>
  <actions>
    <model modelUID="jetbrains.mps.transformation.TLBase.actions" />
  </actions>
  <constraints>
    <model modelUID="jetbrains.mps.transformation.TLBase.constraints" />
  </constraints>
  <scripts>
    <model modelUID="jetbrains.mps.transformation.TLBase.scripts" />
  </scripts>
  <editor>
    <model modelUID="jetbrains.mps.transformation.TLBase.editor" />
  </editor>
  <models>
    <modelRoot path="${language_descriptor}\." namespacePrefix="jetbrains.mps.transformation.TLBase" />
  </models>
  <module>
    <moduleRoot path="${mps_home}\languages\baseLanguage\language\baseLanguage.mpl" />
    <moduleRoot path="${mps_home}\languages\bootstrap\smodelLanguage\language\smodelLanguage.mpl" />
  </module>
  <accessoryModels />
  <generators>
    <generator name="default" generatorUID="jetbrains.mps.transformation.TLBase#1167163152317" targetLanguage="jetbrains.mps.baseLanguage">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.transformation.TLBase.generator.baseLanguage.template" />
      </models>
      <module>
        <moduleRoot path="${mps_home}\languages\baseLanguage\language\baseLanguage.mpl" />
        <moduleRoot path="${mps_home}\languages\core\languageDescriptor.mpl" />
      </module>
      <external-templates />
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="jetbrains.mps.transformation.TLBase.generator.baseLanguage.template.main@templates" nodeID="1167163238171" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <all-mappings />
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <classPath />
</language>

