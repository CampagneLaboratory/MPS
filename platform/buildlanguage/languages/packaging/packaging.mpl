<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.build.packaging" uuid="4e6c5313-7662-4c44-9bc7-b488cec17508" generatorOutputPath="${language_descriptor}/source_gen" java-stubs-enabled="true" compileInMPS="true" doNotGenerateAdapters="false">
  <models>
    <modelRoot path="${language_descriptor}/languageAccessories" namespacePrefix="jetbrains.mps.build.packaging" />
    <modelRoot path="${language_descriptor}/languageModels" namespacePrefix="jetbrains.mps.build.packaging" />
  </models>
  <accessoryModels>
    <model modelUID="r:19a13561-830e-4400-a084-e2990744f9e1(jetbrains.mps.build.packaging.defaultVariables)" />
  </accessoryModels>
  <generators>
    <generator generatorUID="jetbrains.mps.build.packaging###1203014923802" uuid="ab777ef3-cd35-47a2-8db1-108b4d67986f">
      <models>
        <modelRoot path="${language_descriptor}/generator/buildlanguage/template" namespacePrefix="jetbrains.mps.build.packaging.generator.buildlanguage.template" />
      </models>
      <external-templates>
        <generator generatorUID="ab777ef3-cd35-47a2-8db1-108b4d67986f(jetbrains.mps.build.packaging###1203014923802)" />
        <generator generatorUID="40844709-b5b9-4c70-8f1d-a2e8ab542065(jetbrains.mps.buildlanguage#1197036391807)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">500e32a4-ab9e-46a4-ae29-127ae883d208(jetbrains.mps.build.dependency)</dependency>
        <dependency reexport="true">0b608d44-1308-418d-8715-22d040c3b3cc(jetbrains.mps.buildlanguage)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>500e32a4-ab9e-46a4-ae29-127ae883d208(jetbrains.mps.build.dependency)</usedLanguage>
        <usedLanguage>fba399db-f591-45dc-a279-e2a2a986e262(jetbrains.mps.build.generictasks)</usedLanguage>
      </usedLanguages>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="ab777ef3-cd35-47a2-8db1-108b4d67986f(jetbrains.mps.build.packaging###1203014923802)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c895904d9(jetbrains.mps.build.packaging.generator.buildlanguage.template.main@generator)" nodeID="*" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="40844709-b5b9-4c70-8f1d-a2e8ab542065(jetbrains.mps.buildlanguage#1197036391807)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <generator generatorUID="ab777ef3-cd35-47a2-8db1-108b4d67986f(jetbrains.mps.build.packaging###1203014923802)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c895904d9(jetbrains.mps.build.packaging.generator.buildlanguage.template.main@generator)" nodeID="*" />
            </external-mapping>
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="ab777ef3-cd35-47a2-8db1-108b4d67986f(jetbrains.mps.build.packaging###1203014923802)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
      </mapping-priorities>
    </generator>
  </generators>
  <stubModelEntries>
    <stubModelEntry path="${language_descriptor}/classes" include="false">
      <manager moduleId="f3061a53-9226-4cc5-a443-f952ceaf5816" className="jetbrains.mps.baseLanguage.stubs.JavaStubs" />
    </stubModelEntry>
  </stubModelEntries>
  <runtimeStubModels>
    <stubModelEntry path="${language_descriptor}/classes" include="false">
      <manager moduleId="f3061a53-9226-4cc5-a443-f952ceaf5816" className="jetbrains.mps.baseLanguage.stubs.JavaStubs" />
    </stubModelEntry>
  </runtimeStubModels>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
    <dependency reexport="true">dd61a7d7-8e1b-45a1-9aa3-8585ec2b60fc(jetbrains.mps.build.property)</dependency>
    <dependency reexport="true">0b608d44-1308-418d-8715-22d040c3b3cc(jetbrains.mps.buildlanguage)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)</usedLanguage>
    <usedLanguage>0b608d44-1308-418d-8715-22d040c3b3cc(jetbrains.mps.buildlanguage)</usedLanguage>
    <usedLanguage>3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1(jetbrains.mps.lang.constraints)</usedLanguage>
    <usedLanguage>5d6bee4c-f891-4a93-a0c9-e2268726ae47(jetbrains.mps.uiLanguage)</usedLanguage>
  </usedLanguages>
  <extendedLanguages>
    <extendedLanguage>dd61a7d7-8e1b-45a1-9aa3-8585ec2b60fc(jetbrains.mps.build.property)</extendedLanguage>
    <extendedLanguage>0b608d44-1308-418d-8715-22d040c3b3cc(jetbrains.mps.buildlanguage)</extendedLanguage>
  </extendedLanguages>
</language>

