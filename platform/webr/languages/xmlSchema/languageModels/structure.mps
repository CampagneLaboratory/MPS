<?xml version="1.0" encoding="UTF-8"?>
<model name="webr.xmlSchema.structure">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.structureLanguage" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.baseLanguage.ext.collections.lang.structure" version="0" />
  <languageAspect modelUID="jetbrains.mps.bootstrap.smodelLanguage.structure" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="jetbrains.mps.bootstrap.structureLanguage.structure" version="-1" />
  <import index="3" modelUID="webr.xmlSchema.structure" version="-1" />
  <import index="4" modelUID="webr.xml.structure" version="-1" />
  <import index="5" modelUID="webr.xmlInternal.structure" version="-1" />
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167512696010">
    <property name="name" value="ElementWithContent" />
    <link role="extends" targetNodeId="1167838236835" resolveInfo="ElementDeclaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167842409344">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="complexType" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167615791597" resolveInfo="ComplexType" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167514117391">
      <property name="value" value="elementWithContent" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167513239198">
    <property name="rootable" value="true" />
    <property name="name" value="Schema" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167754958780">
      <property name="name" value="schemaName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1171028738656">
      <property name="name" value="schemaUrl" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1168022873076">
      <property name="name" value="alwaysUseRoot" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167514029204">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="declarationBlock" />
      <property name="sourceCardinality" value="1..n" />
      <link role="target" targetNodeId="1167620500667" resolveInfo="DeclarationBlock" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167537980718">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="rootElementReference" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167531070757" resolveInfo="ElementReference" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1189988930673">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="defaultNamespaceDeclaration" />
      <link role="target" targetNodeId="1189887674514" resolveInfo="NamespaceDeclaration" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1173487629108">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167513851570">
    <property name="name" value="Declaration" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167513857540">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167530070286">
    <property name="name" value="Sequence" />
    <link role="extends" targetNodeId="1167598074872" resolveInfo="GroupExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167797203049">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="typeExpressionList" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167795596947" resolveInfo="TypeExpressionList" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167530163513">
      <property name="value" value="sequence" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167531070757">
    <property name="name" value="ElementReference" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167531079758">
      <property name="role" value="elementDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167838236835" resolveInfo="ElementDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167590960646">
    <property name="name" value="TypeExpression" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167590968304">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167593501743">
    <property name="name" value="MixedAttribute" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167620192650">
      <property name="value" value="mixed" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167597273853">
    <property name="name" value="GroupDeclaration" />
    <link role="extends" targetNodeId="1167513851570" resolveInfo="Declaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167598158349">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="groupExpression" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167598074872" resolveInfo="GroupExpression" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167597749542">
      <property name="name" value="groupName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167597283979">
      <property name="value" value="group" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167598074872">
    <property name="name" value="GroupExpression" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167598089717">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167598424727">
    <property name="name" value="Choice" />
    <link role="extends" targetNodeId="1167598074872" resolveInfo="GroupExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167796515570">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="typeExpressionList" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167795596947" resolveInfo="TypeExpressionList" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167613671793">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="occursAttribute" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1167613643739" resolveInfo="OccursAttribute" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167598435306">
      <property name="value" value="choice" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167611637510">
    <property name="name" value="GroupReference" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167611656526">
      <property name="role" value="groupDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167597273853" resolveInfo="GroupDeclaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167613643739">
    <property name="name" value="OccursAttribute" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167614664687">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="maxOccurs" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1167614628572" resolveInfo="MaxOccursExpression" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167613813068">
      <property name="name" value="minOccurs" />
      <link role="dataType" targetNodeId="1.1082983657062" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167614628572">
    <property name="name" value="MaxOccursExpression" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167614639714">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167614803853">
    <property name="name" value="UnboundedExpression" />
    <link role="extends" targetNodeId="1167614628572" resolveInfo="MaxOccursExpression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167614827839">
      <property name="value" value="unbounded" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167615791597">
    <property name="name" value="ComplexType" />
    <link role="extends" targetNodeId="1167513851570" resolveInfo="Declaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167841515196">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="typeExpressionList" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167795596947" resolveInfo="TypeExpressionList" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167841735153">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="mixedAttribute" />
      <link role="target" targetNodeId="1167593501743" resolveInfo="MixedAttribute" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167615988144">
      <property name="name" value="typeName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167615820698">
      <property name="value" value="complexType" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167618352310">
    <property name="name" value="Extension" />
    <link role="extends" targetNodeId="1167794579628" resolveInfo="ContentItem" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167797649631">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="typeExpressionList" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167795596947" resolveInfo="TypeExpressionList" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167618373217">
      <property name="value" value="extension" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167620500667">
    <property name="name" value="DeclarationBlock" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167620857260">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="textLine" />
      <property name="sourceCardinality" value="1..n" />
      <link role="target" targetNodeId="1167620778127" resolveInfo="TextLine" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167621108799">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="declaration" />
      <property name="sourceCardinality" value="1..n" />
      <link role="target" targetNodeId="1167513851570" resolveInfo="Declaration" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167620778127">
    <property name="name" value="TextLine" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167620796487">
      <property name="name" value="line" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167697887602">
    <property name="name" value="AttributeDeclaration" />
    <link role="extends" targetNodeId="1167711059994" resolveInfo="AttributeExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1168467754208">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="useAttribute" />
      <property name="sourceCardinality" value="0..1" />
      <link role="target" targetNodeId="1168467644385" resolveInfo="UseAttribute" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167698115100">
      <property name="name" value="attributeName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167698012336">
      <property name="value" value="attribute" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167710782427">
    <property name="name" value="AttributeGroup" />
    <link role="extends" targetNodeId="1167513851570" resolveInfo="Declaration" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167711088999">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="attributeExpression" />
      <property name="sourceCardinality" value="1..n" />
      <link role="target" targetNodeId="1167711059994" resolveInfo="AttributeExpression" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167710946714">
      <property name="name" value="attributeGroupName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167710912087">
      <property name="value" value="attributeGroup" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167711059994">
    <property name="name" value="AttributeExpression" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167711069105">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167711418665">
    <property name="name" value="AttributeGroupReference" />
    <link role="extends" targetNodeId="1167711059994" resolveInfo="AttributeExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167711433182">
      <property name="role" value="attributeGroup" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167710782427" resolveInfo="AttributeGroup" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167790566663">
    <property name="name" value="ComplexTypeReference" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167790582664">
      <property name="role" value="complextType" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167615791597" resolveInfo="ComplexType" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167794310821">
    <property name="name" value="ComplexContent" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167794765257">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="contentItem" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167794579628" resolveInfo="ContentItem" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167794709470">
      <property name="value" value="complexContent" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167794579628">
    <property name="name" value="ContentItem" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167794587363">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167851034776">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="complexTypeReference" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167790566663" resolveInfo="ComplexTypeReference" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167795596947">
    <property name="name" value="TypeExpressionList" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167845523677">
      <property name="name" value="isVertical" />
      <link role="dataType" targetNodeId="1.1082983657063" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167795626698">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="typeExpression" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167798151953">
    <property name="name" value="SimpleContent" />
    <link role="extends" targetNodeId="1167590960646" resolveInfo="TypeExpression" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167798175251">
      <property name="value" value="simpleContent" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167838236835">
    <property name="name" value="ElementDeclaration" />
    <link role="extends" targetNodeId="1167513851570" resolveInfo="Declaration" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1167838254601">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1167838788027">
      <property name="name" value="elementName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1172768901937">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1167838362804">
    <property name="name" value="ElementWithType" />
    <link role="extends" targetNodeId="1167838236835" resolveInfo="ElementDeclaration" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1167838549657">
      <property name="value" value="elementWithType" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167839503230">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="complexTypeReference" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1167790566663" resolveInfo="ComplexTypeReference" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1167848788431">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="occursAttribute" />
      <link role="target" targetNodeId="1167613643739" resolveInfo="OccursAttribute" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1168467644385">
    <property name="name" value="UseAttribute" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1168468026313">
      <property name="name" value="use" />
      <link role="dataType" targetNodeId="1168467929746" resolveInfo="useAttributeEnum" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1168468170749">
      <property name="value" value="use" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationDataTypeDeclaration" id="1168467929746">
    <property name="name" value="useAttributeEnum" />
    <link role="memberDataType" targetNodeId="1.1082983041843" />
    <link role="defaultMember" targetNodeId="1168468016577" resolveInfo="required" />
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1168467929747">
      <property name="internalValue" value="optional" />
      <property name="name" value="optional" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1168468006639">
      <property name="internalValue" value="prohibited" />
      <property name="name" value="prohibited" />
    </node>
    <node role="member" type="jetbrains.mps.bootstrap.structureLanguage.structure.EnumerationMemberDeclaration" id="1168468016577">
      <property name="internalValue" value="required" />
      <property name="name" value="required" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1172948996536">
    <property name="rootable" value="true" />
    <property name="name" value="EntitySet" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1172952087787">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="entityBlock" />
      <property name="sourceCardinality" value="1..n" />
      <link role="target" targetNodeId="1172952031204" resolveInfo="EntityBlock" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1172950400255">
      <property name="name" value="entitySetName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1172955182464">
      <property name="name" value="url" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="implements" type="jetbrains.mps.bootstrap.structureLanguage.structure.InterfaceConceptReference" id="1172950565923">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1172950047361">
    <property name="name" value="EntityDeclaration" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1172959826115">
      <property name="name" value="entityName" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1172952031204">
    <property name="name" value="EntityBlock" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1172953960230">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="comment" />
      <link role="target" targetNodeId="5.1174840272325" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1172959399215">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="entityLine" />
      <property name="sourceCardinality" value="0..n" />
      <link role="target" targetNodeId="1172959389104" resolveInfo="EntityLine" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1172959389104">
    <property name="name" value="EntityLine" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1172959536138">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="entityDeclaration" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="1172950047361" resolveInfo="EntityDeclaration" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1172959564234">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="comment" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="5.1174840272325" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1189887674514">
    <property name="name" value="NamespaceDeclaration" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1189887823140">
      <property name="name" value="prefix" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1189887827906">
      <property name="name" value="uri" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
  </node>
</model>

