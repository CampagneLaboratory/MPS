<?xml version="1.0" encoding="UTF-8"?>
<solution name="ypath.test" extenallyVisible="true" compileInMPS="false">
  <models>
    <modelRoot path="${solution_descriptor}\" namespacePrefix="" />
  </models>
  <classPath>
    <entry path="${mps_home}\platform\ypath\classes" />
    <entry path="${mps_home}\platform\ypath\solutions\classes" />
    <entry path="${mps_home}\lib\junit4\junit-4.1.jar" />
  </classPath>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">jetbrains.mps.ypath</dependency>
    <dependency reexport="true">jetbrains.mps.baseLanguage.unitTest</dependency>
    <dependency reexport="true">ypath.main</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguages>jetbrains.mps.baseLanguage.unitTest</usedLanguages>
    <usedLanguages>jetbrains.mps.ypath</usedLanguages>
    <usedLanguages>jetbrains.mps.bootstrap.helgins</usedLanguages>
    <usedLanguages>jetbrains.mps.quotation</usedLanguages>
  </usedLanguages>
</solution>

