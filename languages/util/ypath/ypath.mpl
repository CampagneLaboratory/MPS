<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.ypath" uuid="d4e445fa-e1ac-4fc8-8d3b-e62b05d0ea4c" doNotGenerateAdapters="false">
  <models>
    <modelRoot path="${language_descriptor}/languageAccessories" />
    <modelRoot path="${language_descriptor}/languageModels" />
  </models>
  <accessoryModels>
    <model modelUID="r:00000000-0000-4000-0000-011c895905af(jetbrains.mps.ypath.internal.generator.helper)" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mps.ypath#1168438160182" uuid="f18753d4-d7a2-434f-85a3-f8eedf77c99a">
      <models>
        <modelRoot path="${language_descriptor}/generators/baseLanguage/templates" />
      </models>
      <external-templates>
        <generator generatorUID="5f9babc9-8d5d-4825-8e61-17b241ee6272(jetbrains.mps.baseLanguage.collections#1151699677197)" />
        <generator generatorUID="985c8c6a-64b4-486d-a91e-7d4112742556(jetbrains.mps.baseLanguage#1129914002933)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
        <dependency reexport="true">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="true">fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</dependency>
        <dependency reexport="true">df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</dependency>
        <dependency reexport="true">f18753d4-d7a2-434f-85a3-f8eedf77c99a(jetbrains.mps.ypath#1168438160182)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</usedLanguage>
        <usedLanguage>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguage>
        <usedLanguage>d4e445fa-e1ac-4fc8-8d3b-e62b05d0ea4c(jetbrains.mps.ypath)</usedLanguage>
      </usedLanguages>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="f18753d4-d7a2-434f-85a3-f8eedf77c99a(jetbrains.mps.ypath#1168438160182)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c895905b1(jetbrains.mps.ypath.generator.baseLanguage.template.generic@generator)" nodeID="1190373998785" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="f18753d4-d7a2-434f-85a3-f8eedf77c99a(jetbrains.mps.ypath#1168438160182)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c895905b3(jetbrains.mps.ypath.generator.baseLanguage.template.main@generator)" nodeID="*" />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="f18753d4-d7a2-434f-85a3-f8eedf77c99a(jetbrains.mps.ypath#1168438160182)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c895905b3(jetbrains.mps.ypath.generator.baseLanguage.template.main@generator)" nodeID="1168438163478" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="5f9babc9-8d5d-4825-8e61-17b241ee6272(jetbrains.mps.baseLanguage.collections#1151699677197)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)</dependency>
    <dependency reexport="false">7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</dependency>
    <dependency reexport="false">7a726c26-db91-4893-9e84-b952361700b3(jetbrains.mps.ypath.pluginSolution)</dependency>
    <dependency reexport="false">99834b1c-2b28-4543-a97c-953df7633f72(jetbrains.mps.ypath.runtime)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">99834b1c-2b28-4543-a97c-953df7633f72(jetbrains.mps.ypath.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</extendedLanguage>
    <extendedLanguage>ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
  </extendedLanguages>
</language>

