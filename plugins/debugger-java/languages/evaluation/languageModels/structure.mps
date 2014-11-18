<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3a27a6eb-dfce-419d-9e4c-ca44cc01a2e2(jetbrains.mps.debugger.java.evaluation.structure)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="5f51wLF6d$_">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="EvaluatorConcept" />
    <property role="3GE5qa" value="old" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="5f51wLF6sur" role="1TKVEl">
      <property role="TrG5h" value="isShowContext" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="5f51wLF6sun" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="variables" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5f51wLF6d$A" resolve="LowLevelVariable" />
    </node>
    <node concept="1TJgyj" id="3WhGjgvCzoj" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="thisNode" />
      <ref role="20lvS9" node="3KJgeSbGWJP" resolve="UnitNode" />
    </node>
    <node concept="1TJgyj" id="3WhGjgvCzol" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="contextNode" />
      <ref role="20lvS9" node="3KJgeSbGWJP" resolve="UnitNode" />
    </node>
    <node concept="1TJgyj" id="109eVyKpDs0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="evaluatedStatements" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="4xj$1CXjf89" role="PzmwI">
      <ref role="PrY4T" to="tpee:i2fhoOR" resolve="IMethodLike" />
    </node>
    <node concept="PrWs8" id="7XaAmAsUzq5" role="PzmwI">
      <ref role="PrY4T" node="7XaAmAsUzpV" resolve="IEvaluatorConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5f51wLF6d$A">
    <property role="TrG5h" value="LowLevelVariable" />
    <property role="3GE5qa" value="old" />
    <ref role="1TJDcQ" to="tpee:4k3qd$cSlJ3" resolve="BaseVariableDeclaration" />
    <node concept="1TJgyj" id="3WhGjgvCBYJ" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="debuggedType" />
      <ref role="20lvS9" node="3WhGjgvC_Vo" resolve="DebuggedType" />
      <ref role="20ksaX" to="tpee:4VkOLwjf83e" />
    </node>
    <node concept="1TJgyi" id="5lbjwfl_ggL" role="1TKVEl">
      <property role="TrG5h" value="isOutOfScope" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6QSHaVK1Yxf" role="1TKVEl">
      <property role="TrG5h" value="highLevelNodeId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4QSK70QUTjI" role="1TKVEl">
      <property role="TrG5h" value="lowLevelName" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="5f51wLF6I76">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EvaluatorsThisExpression" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="old" />
    <property role="34LRSv" value="this" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="5f51wLF6I7Y">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EvaluatorsSuperMethodCall" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="old" />
    <property role="34LRSv" value="super" />
    <ref role="1TJDcQ" to="tpee:fz7wK6G" resolve="BaseMethodCall" />
    <node concept="1TJgyj" id="5f51wLF6IwV" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="instanceMethodDeclaration" />
      <ref role="20lvS9" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      <ref role="20ksaX" to="tpee:fz7wK6H" />
    </node>
  </node>
  <node concept="1TIwiD" id="1uLMfvJuFgc">
    <property role="TrG5h" value="GenerationHelperAnnotation" />
    <property role="3GE5qa" value="annotations" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="M6xJ_" id="6_gUeuqOeQz" role="lGtFl">
      <property role="Hh88m" value="" />
    </node>
  </node>
  <node concept="1TIwiD" id="44PLNYYvWA5">
    <property role="TrG5h" value="ToEvaluateAnnotation" />
    <property role="3GE5qa" value="annotations" />
    <ref role="1TJDcQ" node="1uLMfvJuFgc" resolve="GenerationHelperAnnotation" />
    <node concept="M6xJ_" id="6_gUeuqOeSu" role="lGtFl">
      <property role="Hh88m" value="toEvaluateAnnotation" />
      <node concept="trNpa" id="166$sc$ZIAB" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="7Qql7Y5uz_b">
    <property role="TrG5h" value="LowLevelVariableReference" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="old" />
    <ref role="1TJDcQ" to="tpee:4Lb$w0Yiqs4" resolve="BaseVariableReference" />
    <node concept="1TJgyj" id="7Qql7Y5uzGz" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="variableDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" to="tpee:4Lb$w0Yiqs5" />
      <ref role="20lvS9" node="5f51wLF6d$A" resolve="LowLevelVariable" />
    </node>
  </node>
  <node concept="1TIwiD" id="52S4dPsxLUy">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="UnprocessedAnnotation" />
    <property role="3GE5qa" value="annotations" />
    <property role="34LRSv" value="unprocessed" />
    <ref role="1TJDcQ" node="1uLMfvJuFgc" resolve="GenerationHelperAnnotation" />
    <node concept="M6xJ_" id="6_gUeuqOeT_" role="lGtFl">
      <property role="Hh88m" value="unprocessedAnnotation" />
      <node concept="trNpa" id="166$sc$ZIAS" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="1TIwiD" id="7VHwW8RrNi_">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DoNotTransformAnnotation" />
    <property role="3GE5qa" value="annotations" />
    <property role="34LRSv" value="do not transform" />
    <ref role="1TJDcQ" node="1uLMfvJuFgc" resolve="GenerationHelperAnnotation" />
    <node concept="M6xJ_" id="6_gUeuqOePW" role="lGtFl">
      <property role="Hh88m" value="doNotTransformAnnotation" />
      <node concept="trNpa" id="166$sc$ZIB4" role="EQaZv">
        <ref role="trN6q" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
  </node>
  <node concept="PlHQZ" id="7XaAmAsUzpV">
    <property role="TrG5h" value="IEvaluatorConcept" />
    <property role="3GE5qa" value="old" />
  </node>
  <node concept="1TIwiD" id="3KJgeSbGWJP">
    <property role="TrG5h" value="UnitNode" />
    <property role="3GE5qa" value="old" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3KJgeSbGWJS" role="1TKVEl">
      <property role="TrG5h" value="highLevelNodeId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="3WhGjgvCGes" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="debuggedType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="3WhGjgvC_Vo" resolve="DebuggedType" />
    </node>
  </node>
  <node concept="1TIwiD" id="3WhGjgvC_Vo">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DebuggedType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="old" />
    <property role="34LRSv" value="debugged type" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyi" id="3WhGjgvC_VH" role="1TKVEl">
      <property role="TrG5h" value="isHigh" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="3WhGjgvC_Vp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lowType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="3WhGjgvC_Vq" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="highType" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1H" resolve="Type" />
    </node>
  </node>
  <node concept="1TIwiD" id="6RpXVOy6V7l">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="DownCastToLowLevel" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="old" />
    <property role="34LRSv" value="downcast" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6RpXVOy6Veu" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="1653mnvB5WH" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="IYmOvnN5Yx">
    <property role="19KtqR" value="true" />
    <property role="TrG5h" value="Evaluator" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="IYmOvnN620" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="code" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fzclF80" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="IYmOvnNcDk" role="PzmwI">
      <ref role="PrY4T" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
    </node>
    <node concept="PrWs8" id="hASWOEj6Ld" role="PzmwI">
      <ref role="PrY4T" node="7XaAmAsUzpV" resolve="IEvaluatorConcept" />
    </node>
  </node>
</model>

