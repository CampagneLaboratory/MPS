<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.findUsagesLanguage.structure">
  <persistence version="1"/>
  <refactoringHistory/>
  <language namespace="jetbrains.mps.bootstrap.structureLanguage"/>
  <language namespace="jetbrains.mps.baseLanguage"/>
  <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0"/>
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1"/>
  <maxImportIndex value="13"/>
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1"/>
  <import index="2" modelUID="jetbrains.mps.baseLanguage.structure" version="0"/>
  <import index="6" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1"/>
  <import index="11" modelUID="java.lang@java_stub" version="-1"/>
  <visible index="2" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure"/>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197044488840">
    <property name="name" value="FindBlock"/>
    <property name="package" value="Methods"/>
    <link role="extends" targetNodeId="2.1137021947720" resolveInfo="ConceptFunction"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1203860356143">
      <property name="value" value="find"/>
      <link role="conceptPropertyDeclaration" targetNodeId="2.1201882037552" resolveInfo="conceptFunctionName"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1206444393923">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="1197386047362" resolveInfo="ConceptFunctionParameter_node"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1197384583781">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="2v.1161622878565" resolveInfo="ConceptFunctionParameter_scope"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink"
          id="1206444199040">
      <link role="conceptLinkDeclaration" targetNodeId="2.1137545148427" resolveInfo="conceptFunctionReturnType"/>
      <node role="target" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1206444201370"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197044488845">
    <property name="rootable" value="true"/>
    <property name="name" value="FinderDeclaration"/>
    <property name="iconPath" value="${language_descriptor}\icons\usagesFinder.png"/>
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept"/>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration"
          id="1197385993272">
      <property name="name" value="description"/>
      <link role="dataType" targetNodeId="1.1082983041843" resolveInfo="string"/>
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration"
          id="1202838325511">
      <property name="name" value="longDescription"/>
      <link role="dataType" targetNodeId="1.1082983041843" resolveInfo="string"/>
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration"
          id="1200423074250">
      <property name="name" value="isVisible"/>
      <link role="dataType" targetNodeId="1.1082983657063" resolveInfo="boolean"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1197044488847">
      <property name="role" value="forConcept"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="6.1169125787135" resolveInfo="AbstractConceptDeclaration"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1197044488849">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="isApplicableFunction"/>
      <property name="sourceCardinality" value="0..1"/>
      <link role="target" targetNodeId="1197044488852" resolveInfo="IsApplicableBlock"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1197044488850">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="findFunction"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="1197044488840" resolveInfo="ExecuteBlock"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206462278155">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="searchedNodesBlock"/>
      <link role="target" targetNodeId="1206461516825" resolveInfo="SearchedNodes"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206462296687">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="categorizeBlock"/>
      <link role="target" targetNodeId="1206461221942" resolveInfo="CategorizeBlock"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206462297657">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="presentationBlock"/>
      <link role="target" targetNodeId="1206461456379" resolveInfo="PresentationBlock"/>
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference"
          id="1197044488851">
      <link role="intfc" targetNodeId="1.1169194658468" resolveInfo="INamedConcept"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197044488852">
    <property name="name" value="IsApplicableBlock"/>
    <property name="package" value="Methods"/>
    <link role="extends" targetNodeId="2.1137021947720" resolveInfo="ConceptFunction"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1203860363614">
      <property name="value" value="isApplicable"/>
      <link role="conceptPropertyDeclaration" targetNodeId="2.1201882037552" resolveInfo="conceptFunctionName"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink"
          id="1197044488853">
      <link role="conceptLinkDeclaration" targetNodeId="2.1137545148427" resolveInfo="conceptFunctionReturnType"/>
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1197044488854"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1197384599144">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="1197386047362" resolveInfo="ConceptFunctionParameter_node"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197386047362">
    <property name="name" value="ConceptFunctionParameter_node"/>
    <property name="package" value="Methods"/>
    <link role="extends" targetNodeId="2.1107135704075" resolveInfo="ConceptFunctionParameter"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1197386047363">
      <property name="value" value="node"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1197386047364">
      <property name="value" value="function parameter"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" resolveInfo="short_description"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty"
          id="1197386047365">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1200242336756">
    <property name="name" value="ResultStatement"/>
    <link role="extends" targetNodeId="2.1068580123157" resolveInfo="Statement"/>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200242376867">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="foundNode"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty"
          id="1200309278247">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1200309322845">
      <property name="value" value="add result"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1200242562138">
    <property name="name" value="NodeStatement"/>
    <link role="extends" targetNodeId="2.1068580123157" resolveInfo="Statement"/>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200242582311">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="foundNode"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty"
          id="1200308858214">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1200309306561">
      <property name="value" value="add node"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1200396324422">
    <property name="name" value="ExecuteFinderStatement"/>
    <link role="extends" targetNodeId="2.1068580123157" resolveInfo="Statement"/>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200396629897">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="nodes"/>
      <property name="sourceCardinality" value="0..1"/>
      <link role="target" targetNodeId="2.1068498886296" resolveInfo="VariableReference"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200396682929">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="results"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="2.1068498886296" resolveInfo="VariableReference"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200416500677">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="queryNode"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200416522066">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="queryScope"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty"
          id="1200396324424">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1200396324425">
      <property name="value" value="execute(old)"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1200396451599">
      <property name="role" value="finder"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="1197044488845" resolveInfo="FinderDeclaration"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1206197741569">
    <property name="name" value="ExecuteFinderExpression"/>
    <link role="extends" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206197741572">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="queryNode"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206197741573">
      <property name="metaClass" value="aggregation"/>
      <property name="role" value="queryScope"/>
      <link role="target" targetNodeId="2.1068431790191" resolveInfo="Expression"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty"
          id="1206197741574">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206197741575">
      <property name="value" value="execute(new)"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration"
          id="1206197741576">
      <property name="role" value="finder"/>
      <property name="sourceCardinality" value="1"/>
      <link role="target" targetNodeId="1197044488845" resolveInfo="FinderDeclaration"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1206461221942">
    <property name="package" value="Methods"/>
    <property name="name" value="CategorizeBlock"/>
    <link role="extends" targetNodeId="2.1137021947720" resolveInfo="ConceptFunction"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461244865">
      <property name="value" value="getCategory"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461254554">
      <property name="value" value="getCategory"/>
      <link role="conceptPropertyDeclaration" targetNodeId="2.1201882037552" resolveInfo="conceptFunctionName"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink"
          id="1206461261180">
      <link role="conceptLinkDeclaration" targetNodeId="2.1137545148427" resolveInfo="conceptFunctionReturnType"/>
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206461308342">
        <link role="classifier" targetNodeId="11.~String" resolveInfo="String"/>
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1206461311188">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="2v.1206467714548" resolveInfo="ConceptFunctionParameter_node"/>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1206461456379">
    <property name="package" value="Methods"/>
    <property name="name" value="PresentationBlock"/>
    <link role="extends" targetNodeId="2.1137021947720" resolveInfo="ConceptFunction"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461481989">
      <property name="value" value="getPresentation(not implemented)"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461491163">
      <property name="value" value="getPresentation(not implemented)"/>
      <link role="conceptPropertyDeclaration" targetNodeId="2.1201882037552" resolveInfo="conceptFunctionName"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1206461500070">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="2v.1206467714548" resolveInfo="ConceptFunctionParameter_node"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink"
          id="1206461508635">
      <link role="conceptLinkDeclaration" targetNodeId="2.1137545148427" resolveInfo="conceptFunctionReturnType"/>
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1206461511824">
        <link role="classifier" targetNodeId="11.~String" resolveInfo="String"/>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1206461516825">
    <property name="package" value="Methods"/>
    <property name="name" value="SearchedNodesBlock"/>
    <link role="extends" targetNodeId="2.1137021947720" resolveInfo="ConceptFunction"/>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461978608">
      <property name="value" value="getSearchedNodes"/>
      <link role="conceptPropertyDeclaration" targetNodeId="2.1201882037552" resolveInfo="conceptFunctionName"/>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty"
          id="1206461992750">
      <property name="value" value="getSearchedNodes"/>
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink"
          id="1206462037517">
      <link role="conceptLinkDeclaration" targetNodeId="2.1137545148427" resolveInfo="conceptFunctionReturnType"/>
      <node role="target" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1206468352755"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1206462129832">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="1197386047362" resolveInfo="ConceptFunctionParameter_node"/>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink"
          id="1206462158975">
      <link role="conceptLinkDeclaration" targetNodeId="2.1161119487665"
            resolveInfo="applicableConceptFunctionParameter"/>
      <link role="target" targetNodeId="2v.1161622878565" resolveInfo="ConceptFunctionParameter_scope"/>
    </node>
  </node>
</model>

