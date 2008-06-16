<?xml version="1.0" encoding="UTF-8"?>
<solution name="sandbox" extenallyVisible="false" compileInMPS="false" generatorOutputPath="${mps_home}\core\baseLanguage\baseLanguage\source_gen">
  <models>
    <modelRoot path="${solution_descriptor}\" namespacePrefix="jetbrains.mps.baseLanguage.sandbox" />
  </models>
  <classPath>
    <entry path="${mps_home}\lib\annotations\annotations.jar" />
  </classPath>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">jetbrains.mps.baseLanguage</dependency>
    <dependency reexport="true">jetbrains.mps.baseLanguageInternal</dependency>
    <dependency reexport="true">jetbrains.mps.baseLanguage.strings</dependency>
    <dependency reexport="true">jetbrains.mps.logging.refactoring</dependency>
    <dependency reexport="false">jetbrains.mps.transformation.TLBase</dependency>
    <dependency reexport="false">jetbrains.mps.bootstrap.smodelLanguage</dependency>
    <dependency reexport="false">jetbrains.mps.bootstrap.helgins</dependency>
    <dependency reexport="false">jetbrains.mps.quotation</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguageInternal</usedLanguages>
    <usedLanguages>jetbrains.mps.bootstrap.smodelLanguage</usedLanguages>
    <usedLanguages>jetbrains.mps.bootstrap.helgins</usedLanguages>
    <usedLanguages>jetbrains.mps.quotation</usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguage.strings</usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguage.blTypes</usedLanguages>
    <usedLanguages>webr.logging</usedLanguages>
  </usedLanguages>
</solution>

