<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.lang.test" uuid="8585453e-6bfb-4d80-98de-b16074f1d86c" compileInMPS="false">
  <models>
    <modelRoot path="${language_descriptor}\languageModels" namespacePrefix="jetbrains.mps.lang.test" />
    <modelRoot path="${language_descriptor}\languageAccessories" namespacePrefix="jetbrains.mps.lang.test" />
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="jetbrains.mps.transformationTest#1210261198005" uuid="fc4584d6-365c-4ceb-b660-b2c91933024d">
      <models>
        <modelRoot path="${language_descriptor}\generator\baseLanguage\template" namespacePrefix="jetbrains.mps.lang.test.generator.baseLanguage.template" />
      </models>
      <external-templates>
        <generator generatorUID="8b77dde5-cd2d-4baa-ac86-1576c85b3095(jetbrains.mps.baseLanguage.unitTest#1171932017138)" />
        <generator generatorUID="2bdcefec-ba49-4b32-ab50-ebc7a41d5090(jetbrains.mps.bootstrap.smodelLanguage#1139186730696)" />
        <generator generatorUID="0e7466c6-bdd9-48a0-921b-a0f4bac08259(jetbrains.mps.baseLanguage.classifiers#1205839057922)" />
        <generator generatorUID="857d0a79-6f44-4f46-84ed-9c5b42632011(jetbrains.mps.closures#1199623535494)" />
        <generator generatorUID="b736a816-59a2-4796-a8e6-372fc0a096ce(jetbrains.mps.quotation#1196351859310)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="false">7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)</dependency>
        <dependency reexport="false">707c4fde-f79a-44b5-b3d7-b5cef8844ccf(jetbrains.mps.lang.test.runtime)</dependency>
        <dependency reexport="false">f618e99a-2641-465c-bb54-31fe76f9e285(jetbrains.mps.baseLanguage.unitTest.runtime)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguages>f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)</usedLanguages>
        <usedLanguages>fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</usedLanguages>
        <usedLanguages>443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</usedLanguages>
      </usedLanguages>
      <mapping-priorities>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <all-local-mappings />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="8b77dde5-cd2d-4baa-ac86-1576c85b3095(jetbrains.mps.baseLanguage.unitTest#1171932017138)" />
            <external-mapping>
              <all-local-mappings />
            </external-mapping>
          </lesser-priority-mapping>
        </mapping-priority-rule>
        <mapping-priority-rule kind="strictly_before">
          <greater-priority-mapping>
            <all-local-mappings />
          </greater-priority-mapping>
          <lesser-priority-mapping>
            <generator generatorUID="2bdcefec-ba49-4b32-ab50-ebc7a41d5090(jetbrains.mps.bootstrap.smodelLanguage#1139186730696)" />
            <external-mapping>
              <mapping-node modelUID="r:00000000-0000-4000-0000-011c89590303(jetbrains.mps.lang.smodel.generator.baseLanguage.template.main@generator)" nodeID="1208783529339" />
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
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
    <dependency reexport="false">f618e99a-2641-465c-bb54-31fe76f9e285(jetbrains.mps.baseLanguage.unitTest.runtime)</dependency>
  </dependencies>
  <runtime>
    <dependency reexport="false">707c4fde-f79a-44b5-b3d7-b5cef8844ccf(jetbrains.mps.lang.test.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
    <extendedLanguage>7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</extendedLanguage>
    <extendedLanguage>f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)</extendedLanguage>
    <extendedLanguage>443f4c36-fcf5-4eb6-9500-8d06ed259e3e(jetbrains.mps.baseLanguage.classifiers)</extendedLanguage>
  </extendedLanguages>
</language>

