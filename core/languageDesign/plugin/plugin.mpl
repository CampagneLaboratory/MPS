<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.lang.plugin" uuid="28f9e497-3b42-4291-aeba-0a1039153ab1" java-stubs-enabled="true" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.lang.plugin" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.lang.plugin" />
  </models>
  <accessoryModels>
    <model modelUID="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <model modelUID="f:java_stub#jetbrains.mps.plugin(jetbrains.mps.plugin@java_stub)" />
    <model modelUID="f:java_stub#jetbrains.mps.plugins(jetbrains.mps.plugins@java_stub)" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mps.lang.plugin#1203080439937" uuid="1d6e05d7-9de9-40a7-9dad-7b8444280942">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.lang.plugin.generator.baseLanguage.template" />
      </models>
      <external-templates>
        <generator generatorUID="0e7466c6-bdd9-48a0-921b-a0f4bac08259(jetbrains.mps.baseLanguage.classifiers#1205839057922)" />
        <generator generatorUID="857d0a79-6f44-4f46-84ed-9c5b42632011(jetbrains.mps.baseLanguage.closures#1199623535494)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="false">443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</dependency>
        <dependency reexport="false">b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</dependency>
        <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
        <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
        <dependency reexport="false">1d6e05d7-9de9-40a7-9dad-7b8444280942(jetbrains.mps.lang.plugin#1203080439937)</dependency>
        <dependency reexport="false">fc4584d6-365c-4ceb-b660-b2c91933024d(jetbrains.mps.lang.test#1210261198005)</dependency>
        <dependency reexport="false">18bc6592-03a6-4e29-a83a-7ff23bde13ba(jetbrains.mps.lang.editor)</dependency>
        <dependency reexport="false">64d34fcd-ad02-4e73-aff8-a581124c2e30(jetbrains.mps.lang.findUsages)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguages>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguages>
        <usedLanguages>443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</usedLanguages>
      </usedLanguages>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="r:00000000-0000-4000-0000-011c89590369(jetbrains.mps.lang.plugin.generator.baseLanguage.template.main@generator)" nodeID="*" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="857d0a79-6f44-4f46-84ed-9c5b42632011(jetbrains.mps.baseLanguage.closures#1199623535494)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <mapping-node modelUID="r:7119da0f-4b4d-46d9-adcc-2ac001a0ec2b(jetbrains.mps.lang.plugin.generator.baseLanguage.template.commands@generator)" nodeID="*" />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="857d0a79-6f44-4f46-84ed-9c5b42632011(jetbrains.mps.baseLanguage.closures#1199623535494)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <classPath>
    <entry path="${language_descriptor}\classes" />
  </classPath>
  <languageRuntimeClassPath>
    <entry path="${language_descriptor}\classes" />
  </languageRuntimeClassPath>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">3a0a09eb-2888-405e-80d4-8112e7b4d416(jetbrains.mps.baseLanguage.strings)</dependency>
    <dependency reexport="false">019b622b-0aef-4dd3-86d0-4eef01f3f6bb(jetbrains.mps.ide)</dependency>
    <dependency reexport="true">443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</dependency>
    <dependency reexport="false">b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</dependency>
    <dependency reexport="false">3ecd7c84-cde3-45de-886c-135ecc69b742(jetbrains.mps.lang.refactoring)</dependency>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
    <dependency reexport="false">efeeac01-e569-4878-a3cb-bd0362259b3a(jetbrains.mps.projectLanguage)</dependency>
    <dependency reexport="false">1d6e05d7-9de9-40a7-9dad-7b8444280942(jetbrains.mps.lang.plugin#1203080439937)</dependency>
    <dependency reexport="false">c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</dependency>
    <dependency reexport="false">7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</usedLanguages>
    <usedLanguages>562bb5cb-73ce-4c74-a5e5-9f72731d9ac6(jetbrains.mps.internal.collections)</usedLanguages>
    <usedLanguages>3a0a09eb-2888-405e-80d4-8112e7b4d416(jetbrains.mps.baseLanguage.strings)</usedLanguages>
    <usedLanguages>8585453e-6bfb-4d80-98de-b16074f1d86c(jetbrains.mps.lang.test)</usedLanguages>
    <usedLanguages>df345b11-b8c7-4213-ac66-48d2a9b75d88(jetbrains.mps.baseLanguageInternal)</usedLanguages>
  </usedLanguages>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <extendedLanguages>
    <extendedLanguage>443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</extendedLanguage>
  </extendedLanguages>
</language>

