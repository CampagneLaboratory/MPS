<?xml version="1.0" encoding="UTF-8"?>
<language namespace="jetbrains.mps.sampleXML" uuid="772f6dcd-8c0d-48f7-869c-908e036f7c8e" generatorOutputPath="${language_descriptor}/source_gen" java-stubs-enabled="false" compileInMPS="true">
  <models>
    <modelRoot path="${language_descriptor}/languageAccessories" namespacePrefix="jetbrains.mps.sampleXML" />
    <modelRoot path="${language_descriptor}/languageModels" namespacePrefix="jetbrains.mps.sampleXML" />
  </models>
  <accessoryModels />
  <generators>
    <generator name="empty" generatorUID="jetbrains.mps.sampleXML#1225240266472" uuid="0541f836-6605-43e5-8e71-9d5f3e3ed485">
      <models>
        <modelRoot path="${language_descriptor}/generator/template" namespacePrefix="jetbrains.mps.sampleXML.generator.template" />
      </models>
      <external-templates />
      <usedDevKits>
        <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <classPath />
  <languageRuntimeClassPath />
  <sourcePath>
    <source path="${language_descriptor}/source" />
  </sourcePath>
  <dependencies>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
    <dependency reexport="false">b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</dependency>
    <dependency reexport="false">648edee0-a74d-4997-b400-98c57131fd93(jetbrains.mps.xml#1129923280838)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">37a3367b-1fb2-44d8-aa6b-18075e74e003(MPS.Classpath)</dependency>
  </runtime>
  <extendedLanguages />
</language>

