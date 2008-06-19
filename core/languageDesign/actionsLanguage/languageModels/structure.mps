<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.mps.bootstrap.actionsLanguage.structure">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.structureLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.structureLanguage.constraints" version="11" />
  </language>
  <language namespace="jetbrains.mps.core">
    <languageAspect modelUID="jetbrains.mps.core.constraints" version="2" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.constraints" version="83" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.bootstrap.smodelLanguage">
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.constraints" version="21" />
    <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  </language>
  <language namespace="jetbrains.mps.baseLanguage.ext.collections.lang">
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.constraints" version="6" />
    <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="1" />
  </language>
  <languageAspect modelUID="jetbrains.mps.bootstrap.constraintsLanguage.structure" version="1" />
  <languageAspect modelUID="jetbrains.mps.closures.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.sharedConcepts.constraints" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.actionsLanguage.constraints" version="16" />
  <languageAspect modelUID="jetbrains.mps.closures.constraints" version="2" />
  <maxImportIndex value="9" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <import index="4" modelUID="jetbrains.mps.smodel@java_stub" version="-1" />
  <import index="5" modelUID="jetbrains.mps.bootstrap.sharedConcepts.structure" version="-1" />
  <import index="6" modelUID="java.lang@java_stub" version="-1" />
  <import index="7" modelUID="jetbrains.mps.smodel.action@java_stub" version="-1" />
  <import index="8" modelUID="java.awt@java_stub" version="-1" />
  <import index="9" modelUID="javax.swing@java_stub" version="-1" />
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1112056943463">
    <property name="rootable" value="true" />
    <property name="iconPath" value="${language_descriptor}\icons\actions.png" />
    <property name="name" value="NodeSubstituteActions" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1173470386323">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1112058057696">
      <property name="targetCardinality" value="1" />
      <property name="metaClass" value="aggregation" />
      <property name="role" value="actionsBuilder" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1112058030570" resolveInfo="NodeSubstituteActionsBuilder" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158947211015">
      <property name="value" value="node substitute actions" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1112058030570">
    <property name="name" value="NodeSubstituteActionsBuilder" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1158952412335">
      <property name="name" value="description" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1112058288857">
      <property name="name" value="actionsFactoryAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1112060455033">
      <property name="name" value="actionsFilterAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1144963878167">
      <property name="name" value="preconditionAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1177324100501">
      <property name="name" value="useNewActions" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1112058088712">
      <property name="targetCardinality" value="0..n" />
      <property name="role" value="applicableConcept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1169125787135" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1154465386371">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="precondition" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1154465102724" resolveInfo="NodeSubstitutePreconditionFunction" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177324142645">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="part" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1178540170602">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="variable" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1178539929008" resolveInfo="SubstituteNodeBuilderVariableDeclaration" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1178781708614">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="commonInitializer" />
      <link role="target" targetNodeId="1178781654714" resolveInfo="QueryFunction_Substitute_CommonInitializer" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1154621882785">
      <property name="value" value="'preconditionAspectId' property is replaced with 'precondition block'" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1154621836409" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177689228988">
      <property name="value" value="'actionsFactoryAspectId' &amp; 'actionsFilterAspectId'" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1170898673630" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1138079221458">
    <property name="name" value="RTransformHintSubstituteActionsBuilder" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1154622781911">
      <property name="value" value="'preconditionAspectId' property is replaced with 'precondition block'" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1154621836409" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177689775984">
      <property name="value" value="'actionsFactoryAspectId' &amp; 'actionsFilterAspectId'" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1170898673630" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1158952484319">
      <property name="name" value="description" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1140829165817">
      <property name="name" value="transformTag" />
      <link role="dataType" targetNodeId="1140829206022" resolveInfo="RTransformTag" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1138079221460">
      <property name="name" value="actionsFactoryAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1138079221461">
      <property name="name" value="actionsFilterAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1138161064310">
      <property name="name" value="preconditionAspectId" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1177442244383">
      <property name="name" value="useNewActions" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1138079221462">
      <property name="targetCardinality" value="0..n" />
      <property name="role" value="applicableConcept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1154622757656">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="precondition" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1154622616118" resolveInfo="RTransformHintSubstitutePreconditionFunction" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177442283389">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="part" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203347873675">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="variable" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1203347547493" resolveInfo="RightTransformVariableDeclaration" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203349520492">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="commonInitializer" />
      <link role="target" targetNodeId="1203349485621" resolveInfo="QueryFunction_RT_CommonInitializer" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1138079416598">
    <property name="rootable" value="true" />
    <property name="iconPath" value="${language_descriptor}\icons\rightTransform.png" />
    <property name="name" value="RTransformHintSubstituteActions" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1173470403719">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1138079416599">
      <property name="targetCardinality" value="1" />
      <property name="metaClass" value="aggregation" />
      <property name="role" value="actionsBuilder" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1138079221458" resolveInfo="RTransformHintSubstituteActionsBuilder" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158947338814">
      <property name="value" value="r-transform menu actions" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationDataTypeDeclaration" id="1140829206022">
    <property name="name" value="RTransformTag" />
    <link role="memberDataType" targetNodeId="1.1082983041843" />
    <link role="defaultMember" targetNodeId="1140829274114" resolveInfo="default_" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274114">
      <property name="internalValue" value="default_RTransform" />
      <property name="name" value="default_" />
      <property name="externalValue" value="DEFAULT" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274115">
      <property name="internalValue" value="ext_1_RTransform" />
      <property name="name" value="ext_1" />
      <property name="externalValue" value="EXT 1" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274116">
      <property name="internalValue" value="ext_2_RTransform" />
      <property name="name" value="ext_2" />
      <property name="externalValue" value="EXT 2" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274117">
      <property name="internalValue" value="ext_3_RTransform" />
      <property name="name" value="ext_3" />
      <property name="externalValue" value="EXT 3" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274118">
      <property name="internalValue" value="ext_4_RTransform" />
      <property name="name" value="ext_4" />
      <property name="externalValue" value="EXT 4" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1140829274119">
      <property name="internalValue" value="ext_5_RTransform" />
      <property name="name" value="ext_5" />
      <property name="externalValue" value="EXT 5" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1154465102724">
    <property name="name" value="NodeSubstitutePreconditionFunction" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1154465140647">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1154465191258" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1161714127511">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1161714127510">
      <link role="target" targetNodeId="5.1161622878565" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343096574">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327129999">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1188901630202">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343119030">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1154537040310">
      <property name="value" value="precondition" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199880030642">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1154465273778">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_parentNode" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1154465303545">
      <property name="value" value="parentNode" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177361269700">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1154465316967">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1154465337448" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1154622616118">
    <property name="name" value="RTransformHintSubstitutePreconditionFunction" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1154622616119">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1154622616120" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1161702790035">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1161702775642">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622878565" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344971626">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177582618648">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1154622616126">
      <property name="value" value="precondition" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199882043391">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158700664498">
    <property name="rootable" value="true" />
    <property name="iconPath" value="${language_descriptor}\icons\nodeFactories.png" />
    <property name="name" value="NodeFactories" />
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1173470414329">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1158700779049">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="nodeFactory" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1158700725281" resolveInfo="NodeFactory" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158700683655">
      <property name="value" value="node factories" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158700725281">
    <property name="name" value="NodeFactory" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1158952310477">
      <property name="name" value="description" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1158700943156">
      <property name="role" value="applicableConcept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1158701448518">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="setupFunction" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1158701162220" resolveInfo="NodeSetupFunction" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158700745954">
      <property name="value" value="node factory" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158701162220">
    <property name="name" value="NodeSetupFunction" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199884436358">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158701232815">
      <property name="value" value="node setup function" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1161724495504">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1158701286784">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158701289411">
        <property name="name" value="NodeSetupFunction_NewNode" />
        <link role="extends" targetNodeId="3.1107135704075" />
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158701320412">
          <property name="value" value="newNode" />
          <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
        </node>
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1158701349058">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158701352529">
        <property name="name" value="NodeSetupFunction_SampleNode" />
        <link role="extends" targetNodeId="3.1107135704075" />
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158701398577">
          <property name="value" value="sampleNode" />
          <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
        </node>
        <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1158701410265">
          <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
          <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1158701414220" />
        </node>
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1158870463216">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137546998352" />
      <node role="target" type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1158870465687">
        <property name="name" value="NodeSetupFunction_EnclosingNode" />
        <link role="extends" targetNodeId="3.1107135704075" />
        <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1158870521516">
          <property name="value" value="enclosingNode" />
          <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
        </node>
        <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1158870531814">
          <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
          <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1158870534660" />
        </node>
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177323240852">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="MenuBuilderPart" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177323252946">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177323652379">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="SubstituteMenuPart" />
    <link role="extends" targetNodeId="1177495774157" resolveInfo="MenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177323663787">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177323996388">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="AddMenuPart" />
    <link role="extends" targetNodeId="1177333529597" resolveInfo="ConceptPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177324874604">
      <property name="value" value="add custom items" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177327161126">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_CanSubstitute" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177327222295">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1177327223969" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327229833">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203342763462">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343301807">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327235492">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343250800">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568631979">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327248604">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1208867881789">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1208867830282" resolveInfo="ConceptFunctionParameter_strictly" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199891385905">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177327274449">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_pattern" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177327315889">
      <property name="value" value="pattern" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199887468329">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199886518837" resolveInfo="dontUseParameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177328325126">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177327358084">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177327384266">
        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
      </node>
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177327570013">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_Substitute_Handler" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177327612422">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177327613612" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327634268">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203342922552">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327647851">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327634269">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343334501">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568705963">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177327634270">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199889259386">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177327666243">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="SimpleItemSubstitutePart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177496097737">
      <property name="value" value="simple" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177336013307">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="matchingText" />
      <link role="target" targetNodeId="1196434661488" resolveInfo="ISubstitute_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177336018902">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="descriptionText" />
      <link role="target" targetNodeId="1196434661488" resolveInfo="ISubstitute_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203073188906">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="icon" />
      <link role="target" targetNodeId="1203073162537" resolveInfo="QueryFunction_SubstituteIcon" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177327698839">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="canSubstitute" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1177327161126" resolveInfo="QueryFunction_CanSubstitute" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177327709106">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177327570013" resolveInfo="QueryFunction_Substitute_Handler" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177333529597">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="ConceptPart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177333551023">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177333559040">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="part" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1177495774157" resolveInfo="MenuPart" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177333549225">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177335944525">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_SubstituteString" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177335968687">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203342813762">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343310606">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177335968688">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343271240">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568687676">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177335968689">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177335993647">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177335996071">
        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1196434704818">
      <link role="intfc" targetNodeId="1196434661488" resolveInfo="ISubstitute_String" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177337641126">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="ParameterizedSubstituteMenuPart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177337679534">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="type" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790189" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177338017561">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="query" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177337890340" resolveInfo="QueryFunction_ParameterizedSubstitute_Query" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177339176647">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="matchingText" />
      <link role="target" targetNodeId="1177339114370" resolveInfo="QueryFunction_ParameterizedSubstitute_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177339186632">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="descriptionText" />
      <link role="target" targetNodeId="1177339114370" resolveInfo="QueryFunction_ParameterizedSubstitute_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203072886725">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="icon" />
      <link role="target" targetNodeId="1203072734037" resolveInfo="QueryFunction_ParameterizedSubstitute_Icon" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177339421668">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177339225103" resolveInfo="QueryFunction_ParameterizedSubstitute_Handler" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177455494930">
      <property name="value" value="parameterized item" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177337833147">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_parameterObject" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177337833148">
      <property name="value" value="parameterObject" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199887366228">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199886518837" resolveInfo="dontUseParameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177337833149">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177337890340">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedSubstitute_Query" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177337983167">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1201274473174">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343812786">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177337983168">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343868612">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568660922">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199887306787">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177339114370">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedSubstitute_String" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177339114374">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177339114375">
        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339114371">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343891049">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343910397">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339114372">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343927805">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568674569">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339114373">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339139396">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199887386980">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1210010830960">
      <link role="intfc" targetNodeId="1196434661488" resolveInfo="ISubstitute_String" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177339225103">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedSubstitute_Handler" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177339225104">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177339225105" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339225106">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344018897">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339225109">
      <link role="target" targetNodeId="5.1161622665029" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339225107">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344037196">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177568645328">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339225108">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177339907001">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199887359319">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177398027324">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="ConceptsSubstituteMenuPart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177496107815">
      <property name="value" value="concepts menu" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177398809232">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="query" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177337890340" resolveInfo="QueryFunction_ParameterizedSubstitute_Query" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177402519659">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="WrapperSubstituteMenuPart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177496087440">
      <property name="value" value="wrapper" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177402731616">
      <property name="role" value="wrappedConcept" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177402719158">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="wrapperBlock" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177402571666" resolveInfo="QueryFunction_SubstituteWrapper" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1206027651405">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="returnSmallPart" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1206027602242" resolveInfo="QueryFunction_ReturnSmallPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177402571666">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_SubstituteWrapper" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177402590248">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177402593326" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177402597566">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344353290">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177406467498">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344393144">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344441805">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344402427">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177402608779">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177402641904" resolveInfo="ConceptFunctionParameter_nodeToWrap" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177402641904">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_nodeToWrap" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177402641905">
      <property name="value" value="nodeToWrap" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177402641906">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177409831820">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="RemovePart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177413869030">
      <property name="value" value="remove concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177409838946">
      <property name="role" value="conceptToRemove" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177413882405">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="RemoveByConditionPart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177414109676">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="condition" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177413954598" resolveInfo="QueryFunction_RemoveBy_Condition" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197453785524">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177413946564">
      <property name="value" value="remove by condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177413954598">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RemoveBy_Condition" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177414083748">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1177414084473" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177413998839">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344075484">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344084220">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177414005870">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177863754414">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203344117347">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177414074570">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177414026667" resolveInfo="ConceptFunctionParameter_concept" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177414026667">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_concept" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177414054030">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1177414057029" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177414048666">
      <property name="value" value="concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177414677850">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177495774157">
    <property name="package" value="menuParts" />
    <property name="name" value="MenuPart" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177495789097">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177496137779">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="RightTransformMenuPart" />
    <link role="extends" targetNodeId="1177495774157" resolveInfo="MenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177498002696">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177497140107">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_sourceNode" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177497149042">
      <property name="value" value="sourceNode" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177498107386">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177498013932">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="SimpleRightTransformMenuPart" />
    <link role="extends" targetNodeId="1177496137779" resolveInfo="RightTransformMenuPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177498166690">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="matchingText" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177498182537">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="descriptionText" />
      <link role="target" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203073759687">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="icon" />
      <link role="target" targetNodeId="1203073706921" resolveInfo="QueryFunction_RightTransform_Icon" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177498207384">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177498227294" resolveInfo="QueryFunction_RightTransform_Handler" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177498038356">
      <property name="value" value="simple item" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177498071304">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RightTransform_String" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177498071308">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1177498071309">
        <link role="classifier" targetNodeId="6.~String" resolveInfo="String" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498071305">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345054540">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345068230">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498071306">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498071307">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177514246986">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1179445963047">
      <property name="value" value="get text" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1196433762288">
      <link role="intfc" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177498227294">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RightTransform_Handler" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177498227295">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177498227296" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498227297">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345243461">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498227300">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498227298">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177498227299">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177508764419">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="ParameterizedRightTransformMenuPart" />
    <link role="extends" targetNodeId="1177496137779" resolveInfo="RightTransformMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177508983755">
      <property name="value" value="parameterized item" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177508914797">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="type" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790189" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177508922313">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="query" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177508842676" resolveInfo="QueryFunction_ParameterizedRightTransform_Query" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177508933220">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="matchingText" />
      <link role="target" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177508955159">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="descriptionText" />
      <link role="target" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203074270008">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="icon" />
      <link role="target" targetNodeId="1203073706921" resolveInfo="QueryFunction_RightTransform_Icon" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177508966300">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177509289232" resolveInfo="QueryFunction_ParameterizedRightTransform_Handler" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177508842676">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedRightTransform_Query" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177508842677">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345316601">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177534979613">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177508842678">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199893120444">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177509289232">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedRightTransform_Handler" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177509289233">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1177509289234" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177509289235">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203346046446">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203346058667">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177509301131">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177509289236">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177509289237">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177526070940">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="ConceptRightTransformMenuPart" />
    <link role="extends" targetNodeId="1177496137779" resolveInfo="RightTransformMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177526417535">
      <property name="value" value="concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182819631950">
      <property name="value" value="replaced with ConceptRightTransformPart (action on top level)" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1180129508254" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1182819631951">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177526111818">
      <property name="role" value="baseConcept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177526175681">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="exclude" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1177526142802" resolveInfo="ConceptReference" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177526956065">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177526592562" resolveInfo="QueryFunction_RightTransform_ConceptHandler" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177526142802">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="ConceptReference" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182819678832">
      <property name="value" value="this concept is used in ConceptRightTransformMenuPart which is deprecated" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1180129508254" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177526149604">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177526535706">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_result" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177526560423">
      <property name="value" value="result" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177527088793">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177526592562">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RightTransform_ConceptHandler" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177526626764">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622753914" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177526626765">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177526626766">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177526626767">
      <link role="target" targetNodeId="5.1161622665029" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1177526637716">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177526535706" resolveInfo="ConceptFunctionParameter_result" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177568407352">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_currentTargetNode" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177568407353">
      <property name="value" value="currentTargetNode" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177568407354">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177571984778">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="ConceptSubstituteMenuPart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177572377924">
      <property name="value" value="concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1180138250516">
      <property name="value" value="replaced with ConceptSubstitutePart (action on top level)" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1180129508254" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1180138314310">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1177571997481">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177614709184">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="RemoveDefaultsPart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177614725102">
      <property name="value" value="remove defaults" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177614984755">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1177768753302">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_childConcept" />
    <link role="extends" targetNodeId="3.1107135704075" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1177768753303">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SConceptType" id="1177768753304" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1177768753305">
      <property name="value" value="childConcept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1177768753306">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1178536947382">
    <property name="package" value="menuParts.RightTransform" />
    <property name="name" value="IncludeRightTransformForNodeMenuPart" />
    <link role="extends" targetNodeId="1177496137779" resolveInfo="RightTransformMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1178537311353">
      <property name="value" value="include right transform for" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1180116189049">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1180129619801">
      <property name="value" value="replaced with IncludeRightTransformForNodePart (builder part)" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1180129508254" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1178537004460">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="nodeBlock" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1178537049112" resolveInfo="QueryFunction_RightTransform_NodeQuery" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1178537049112">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RightTransform_NodeQuery" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1178537125465">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.bootstrap.smodelLanguage.structure.SNodeType" id="1178537126779" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178537491314">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178537491315">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178537491316">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="5.1161622665029" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199893206479">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1178539929008">
    <property name="name" value="SubstituteNodeBuilderVariableDeclaration" />
    <link role="extends" targetNodeId="3.1068431474542" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1179456561288">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="initializerBlock" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1179456248444" resolveInfo="QueryFunction_SubstituteVariableInitializer" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1178539982687">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1178541723620">
    <property name="name" value="SubstituteNodeBuilderVariableReference" />
    <link role="extends" targetNodeId="3.1068498886296" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1178541757413">
      <property name="role" value="nodeBuilderVariableDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="specializedLink" targetNodeId="3.1068581517664" />
      <link role="target" targetNodeId="1178539929008" resolveInfo="SubstituteNodeBuilderVariableDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1178781654714">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_Substitute_CommonInitializer" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1178781678039">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1178781679354" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178781654715">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343199231">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343208624">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178781654716">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343218610">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1178781654717">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199892709749">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1179456248444">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_SubstituteVariableInitializer" />
    <link role="extends" targetNodeId="3.1137021947720" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1179456248445">
      <link role="target" targetNodeId="5.1161622753914" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203342613210">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343147208">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1179456248446">
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343160616">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1179456248447">
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1180111159572">
    <property name="package" value="menuBuilderParts.RightTransform" />
    <property name="name" value="IncludeRightTransformForNodePart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1180111513020">
      <property name="value" value="include right transform for" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1180112416747">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1180111489972">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="nodeBlock" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1178537049112" resolveInfo="QueryFunction_RightTransform_NodeQuery" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1180134965967">
    <property name="package" value="menuBuilderParts.Substitute" />
    <property name="name" value="ConceptSubstitutePart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1180135092669">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1180135109717">
      <property name="value" value="add concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1180135201711">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1182819125053">
    <property name="package" value="menuBuilderParts.RightTransform" />
    <property name="name" value="ConceptRightTransformPart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1182819256630">
      <property name="value" value="add concept" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1182819256631">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182819234902">
      <property name="role" value="concept" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="2.1071489090640" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1182819210322">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="handler" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1177526592562" resolveInfo="QueryFunction_RightTransform_ConceptHandler" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptDeclaration" id="1196433731217">
    <property name="package" value="queryFunctions" />
    <property name="name" value="IRightTransform_String" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196433923911">
    <property name="package" value="sugar" />
    <property name="name" value="RightTransform_SimpleString" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1196434014050">
      <property name="value" value="simple string" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1196433942569">
      <property name="name" value="text" />
      <link role="dataType" targetNodeId="1.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1196433940146">
      <link role="intfc" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1196434649611">
    <property name="package" value="sugar" />
    <property name="name" value="Substitute_SimpleString" />
    <link role="extends" targetNodeId="1.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1196434851095">
      <property name="name" value="text" />
      <link role="dataType" targetNodeId="1.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1196434824322">
      <link role="intfc" targetNodeId="1196434661488" resolveInfo="ISubstitute_String" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1196932878025">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptDeclaration" id="1196434661488">
    <property name="package" value="queryFunctions" />
    <property name="name" value="ISubstitute_String" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197454418909">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RT_RemoveBy_Condition" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1197454519422">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1197454499013">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177414026667" resolveInfo="ConceptFunctionParameter_concept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1197454557956">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1197454568521">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1197454569586" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199893830743">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1197454626277">
    <property name="package" value="menuBuilderParts" />
    <property name="name" value="RemoveRTByConditionPart" />
    <link role="extends" targetNodeId="1177323240852" resolveInfo="MenuBuilderPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1197454658375">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1197454659220">
      <property name="value" value="remove by condition" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1197454635481">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="condition" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1197454418909" resolveInfo="QueryFunction_RT_RemoveBy_Condition" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1199902626702">
    <property name="package" value="menuParts.Substitute" />
    <property name="name" value="GenericSubstituteMenuPart" />
    <link role="extends" targetNodeId="1177323652379" resolveInfo="SubstituteMenuPart" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1199902870345">
      <property name="value" value="generic query" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1199902711133">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="query" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1199902658767" resolveInfo="QueryFunction_GenerticSubstituteMenuPart" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1199902658767">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_GenericSubstituteMenuPart" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1199902693256">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1199902693257">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1199903431162">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1199903475951">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1199903446272" resolveInfo="ConceptFunctionParameter_childSetter" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1199902693255">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1199902882269">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.ext.collections.lang.structure.ListType" id="1199902893224">
        <node role="elementType" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199902908836">
          <link role="classifier" targetNodeId="7.~INodeSubstituteAction" resolveInfo="INodeSubstituteAction" />
        </node>
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199903643489">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1199903446272">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_childSetter" />
    <link role="extends" targetNodeId="3.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1199903446273">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1199903466418">
        <link role="classifier" targetNodeId="7.~IChildNodeSetter" resolveInfo="IChildNodeSetter" />
      </node>
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1199903446275">
      <property name="value" value="childSetter" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1199903446276">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203072734037">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ParameterizedSubstitute_Icon" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1203072734043">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203072857922">
        <link role="classifier" targetNodeId="9.~Icon" resolveInfo="Icon" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203072734038">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343961312">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343970830">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203072734039">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343992332">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203072734042">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203072734040">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203072734041">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1203072734045">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203073162537">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_SubstituteIcon" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1203073162542">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203073169905">
        <link role="classifier" targetNodeId="9.~Icon" resolveInfo="Icon" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073162538">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203342870190">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343320921">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073162539">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203343287086">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073162541">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073162540">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203073706921">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RightTransform_Icon" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1203073706926">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.ClassifierType" id="1203073722527">
        <link role="classifier" targetNodeId="9.~Icon" resolveInfo="Icon" />
      </node>
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073706922">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345093033">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203345102004">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073706923">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073706925">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177327274449" resolveInfo="ConceptFunctionParameter_pattern" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203073706924">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177337833147" resolveInfo="ConceptFunctionParameter_parameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1203073706928">
      <property name="value" value="icon" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1203073706929">
      <link role="intfc" targetNodeId="1196433731217" resolveInfo="IRightTransform_String" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203347547493">
    <property name="name" value="RightTransformVariableDeclaration" />
    <link role="extends" targetNodeId="3.1068431474542" resolveInfo="VariableDeclaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203347547494">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="initializerBlock" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1203347609566" resolveInfo="QueryFunction_RTVariableInitializer" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1203347547495">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203347609566">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RTVariableInitializer" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203347609567">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203347609568">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203347609569">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203347642231">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203348041101">
    <property name="name" value="RightTransformVariableReference" />
    <link role="extends" targetNodeId="3.1068498886296" resolveInfo="VariableReference" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1203348041102">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="rightTransformVariableDeclaration" />
      <link role="specializedLink" targetNodeId="3.1068581517664" />
      <link role="target" targetNodeId="1203347547493" resolveInfo="RightTransformVariableDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1203349485621">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_RT_CommonInitializer" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1203349485622">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.VoidType" id="1203349485623" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203349485624">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203349485625">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203349485626">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1203349500522">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177497140107" resolveInfo="ConceptFunctionParameter_sourceNode" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1203349485630">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199874763892" resolveInfo="usesParameterObject" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1206027602242">
    <property name="package" value="queryFunctions" />
    <property name="name" value="QueryFunction_ReturnSmallPart" />
    <link role="extends" targetNodeId="3.1137021947720" resolveInfo="ConceptFunction" />
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1206027602243">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1206027632933" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602245">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622753914" resolveInfo="ConceptFunctionParameter_operationContext" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602246">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622878565" resolveInfo="ConceptFunctionParameter_scope" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602247">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="5.1161622665029" resolveInfo="ConceptFunctionParameter_model" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602248">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1154465273778" resolveInfo="ConceptFunctionParameter_parentNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602249">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177768753302" resolveInfo="ConceptFunctionParameter_childConcept" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602250">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177568407352" resolveInfo="ConceptFunctionParameter_currentTargetNode" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.ReferenceConceptLink" id="1206027602251">
      <link role="conceptLinkDeclaration" targetNodeId="3.1161119487665" resolveInfo="applicableConceptFunctionParameter" />
      <link role="target" targetNodeId="1177402641904" resolveInfo="ConceptFunctionParameter_nodeToWrap" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1208867830282">
    <property name="package" value="conceptFunctionParameters" />
    <property name="name" value="ConceptFunctionParameter_strictly" />
    <link role="extends" targetNodeId="3.1107135704075" resolveInfo="ConceptFunctionParameter" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1208867830283">
      <property name="value" value="strictly" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1208867830284">
      <link role="conceptPropertyDeclaration" targetNodeId="3.1199886518837" resolveInfo="dontUseParameterObject" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1208867830285">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptLink" type="jetbrains.mps.bootstrap.structureLanguage.structure.AggregationConceptLink" id="1208867830286">
      <link role="conceptLinkDeclaration" targetNodeId="3.1137545963098" resolveInfo="conceptFunctionParameterType" />
      <node role="target" type="jetbrains.mps.baseLanguage.structure.BooleanType" id="1208867859021" />
    </node>
  </node>
</model>

