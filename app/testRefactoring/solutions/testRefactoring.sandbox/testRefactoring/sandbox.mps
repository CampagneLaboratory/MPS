<?xml version="1.0" encoding="UTF-8"?>
<model name="testRefactoring.sandbox">
  <persistence version="1" />
  <refactoringHistory>
    <refactoringContext modelVersion="0">
      <refactoring refactoringClass="jetbrains.mps.core.scripts.Rename" />
      <moveMap />
      <conceptFeatureMap />
    </refactoringContext>
  </refactoringHistory>
  <language namespace="testRefactoring">
    <languageAspect modelUID="testRefactoring.structure" version="0" />
  </language>
  <languageAspect modelUID="testRefactoringTargetLang.structure" version="0" />
  <maxImportIndex value="1" />
  <import index="1" modelUID="testRefactoring.sandbox2" version="-1" />
  <node type="testRefactoring.structure.MyVeryGoodConcept1" id="1198157680448">
    <property name="name" value="MyGood" />
    <property name="veryNiceProperty" value="xcxcxcxcx" />
    <link role="brother" targetNodeId="1.1198590875560" resolveInfo="MyGood2" />
    <node role="anotherGoodConcept" type="testRefactoring.structure.YetAnotherGoodConcept" id="1198176531644">
      <property name="name" value="sss" />
      <property name="niceProperty" value="cat" />
    </node>
    <node role="anotherGoodConcept" type="testRefactoring.structure.YetAnotherGoodConcept" id="1198176534786">
      <property name="niceProperty" value="dog" />
    </node>
    <node role="anotherGoodConcept" type="testRefactoring.structure.YetAnotherGoodConcept" id="1198176536537">
      <property name="niceProperty" value="hamster" />
    </node>
    <node role="anotherGoodConcept" type="testRefactoring.structure.YetAnotherGoodConcept" id="1198176538069">
      <property name="niceProperty" value="rat" />
    </node>
  </node>
</model>

