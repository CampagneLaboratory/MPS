<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.debugger.java.customViewers" uuid="fa8aeae9-4df9-4e13-bfb1-9b04c67ddb77" doNotGenerateAdapters="false">
  <models>
    <modelRoot path="${language_descriptor}/languageModels" />
  </models>
  <accessoryModels />
  <generators>
    <generator name="main" generatorUID="jetbrains.mps.debugger.java.customViewers#4089989733346806812" uuid="2f4c5ebf-446e-468d-9e74-a64cbeb906c0">
      <models>
        <modelRoot path="${language_descriptor}/generator/template" />
      </models>
      <external-templates>
        <generator generatorUID="1d6e05d7-9de9-40a7-9dad-7b8444280942(jetbrains.mps.lang.plugin#1203080439937)" />
        <generator generatorUID="985c8c6a-64b4-486d-a91e-7d4112742556(jetbrains.mps.baseLanguage#1129914002933)" />
        <generator generatorUID="46ef3033-ce72-4166-b19e-6ceed23b6844(jetbrains.mps.baseLanguageInternal#1238251529692)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
        <dependency reexport="false">cc7da2f6-419f-4133-a811-31fcd3295a85(jetbrains.mps.debugger.api.api)</dependency>
        <dependency reexport="false">cf8c9de5-1b4a-4dc8-8e6d-847159af31dd(jetbrains.mps.debugger.java.api)</dependency>
        <dependency reexport="false">7da4580f-9d75-4603-8162-51a896d78375(jetbrains.mps.debugger.java.evaluation)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</usedLanguage>
        <usedLanguage>af65afd8-f0dd-4942-87d9-63a55f2a9db1(jetbrains.mps.lang.behavior)</usedLanguage>
        <usedLanguage>7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
      </usedDevKits>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_together">
          <greater-priority-mapping>
            <generator generatorUID="2f4c5ebf-446e-468d-9e74-a64cbeb906c0(jetbrains.mps.debugger.java.customViewers#4089989733346806812)" />
            <external-mapping>
              <mapping-node modelUID="r:74318496-5622-4eb9-9978-1789536164b2(jetbrains.mps.debugger.java.customViewers.generator.template.generator.template.main@generator)" nodeID="4089989733346806813" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="985c8c6a-64b4-486d-a91e-7d4112742556(jetbrains.mps.baseLanguage#1129914002933)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="2f4c5ebf-446e-468d-9e74-a64cbeb906c0(jetbrains.mps.debugger.java.customViewers#4089989733346806812)" />
            <external-mapping>
              <mapping-node modelUID="r:74318496-5622-4eb9-9978-1789536164b2(jetbrains.mps.debugger.java.customViewers.generator.template.generator.template.main@generator)" nodeID="7570572250661235214" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="1d6e05d7-9de9-40a7-9dad-7b8444280942(jetbrains.mps.lang.plugin#1203080439937)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c89590369(jetbrains.mps.lang.plugin.generator.baseLanguage.template.main@generator)" nodeID="1215266411913" />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_together">
          <greater-priority-mapping>
            <generator generatorUID="2f4c5ebf-446e-468d-9e74-a64cbeb906c0(jetbrains.mps.debugger.java.customViewers#4089989733346806812)" />
            <external-mapping>
              <mapping-node modelUID="r:74318496-5622-4eb9-9978-1789536164b2(jetbrains.mps.debugger.java.customViewers.generator.template.generator.template.main@generator)" nodeID="4089989733346806813" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="46ef3033-ce72-4166-b19e-6ceed23b6844(jetbrains.mps.baseLanguageInternal#1238251529692)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="2f4c5ebf-446e-468d-9e74-a64cbeb906c0(jetbrains.mps.debugger.java.customViewers#4089989733346806812)" />
            <external-mapping>
              <mapping-node modelUID="r:74318496-5622-4eb9-9978-1789536164b2(jetbrains.mps.debugger.java.customViewers.generator.template.generator.template.main@generator)" nodeID="7570572250661235214" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="1d6e05d7-9de9-40a7-9dad-7b8444280942(jetbrains.mps.lang.plugin#1203080439937)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c89590369(jetbrains.mps.lang.plugin.generator.baseLanguage.template.main@generator)" nodeID="1206116514430" />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">fdb93da0-59ed-4001-b2aa-4fad79ec058e(JDK.Tools)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="true">80208897-4572-437d-b50e-8f050cba9566(jetbrains.mps.debugger.java.privateMembers)</dependency>
    <dependency reexport="false">5b1f863d-65a0-41a6-a801-33896be24202(jetbrains.mps.ide.editor)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</usedLanguage>
    <usedLanguage>774bf8a0-62e5-41e1-af63-f4812e60e48b(jetbrains.mps.baseLanguage.checkedDots)</usedLanguage>
    <usedLanguage>760a0a8c-eabb-4521-8bfd-65db761a9ba3(jetbrains.mps.baseLanguage.logging)</usedLanguage>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">cf8c9de5-1b4a-4dc8-8e6d-847159af31dd(jetbrains.mps.debugger.java.api)</dependency>
    <dependency reexport="false">fdb93da0-59ed-4001-b2aa-4fad79ec058e(JDK.Tools)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>760a0a8c-eabb-4521-8bfd-65db761a9ba3(jetbrains.mps.baseLanguage.logging)</extendedLanguage>
    <extendedLanguage>80208897-4572-437d-b50e-8f050cba9566(jetbrains.mps.debugger.java.privateMembers)</extendedLanguage>
    <extendedLanguage>28f9e497-3b42-4291-aeba-0a1039153ab1(jetbrains.mps.lang.plugin)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
    <extendedLanguage>83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)</extendedLanguage>
  </extendedLanguages>
</language>

