<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c8959040a(jetbrains.mps.samples.agreementLanguage.structure)">
  <persistence version="3" />
  <refactoringHistory />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959028c(jetbrains.mps.lang.structure.constraints)" version="11" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.bootstrap.smodelLanguage.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.ext.collections.lang.structure)" version="1" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.closures.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590283(jetbrains.mps.lang.core.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590334(jetbrains.mps.closures.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902fb(jetbrains.mps.bootstrap.smodelLanguage.constraints)" version="21" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)" version="83" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590328(jetbrains.mps.baseLanguage.ext.collections.lang.constraints)" version="6" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c895903e4(jetbrains.mps.internal.collections.constraints)" version="2" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959040a(jetbrains.mps.samples.agreementLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c8959043c(jetbrains.mps.samples.formulaLanguage.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <languageAspect modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <maxImportIndex value="5" />
  <import index="1" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="5" modelUID="r:00000000-0000-4000-0000-011c8959043c(jetbrains.mps.samples.formulaLanguage.structure)" version="0" />
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111790951422">
    <property name="rootable" value="true" />
    <property name="name" value="Plan" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" id="1175153707045">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111791064925">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="value" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111791020814" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111791084333">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="event" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111791038612" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111791020814">
    <property name="name" value="Value" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111792955937">
      <property name="name" value="type" />
      <link role="dataType" targetNodeId="1111792867434" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111791826558">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="quantity" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111792520557" />
    </node>
    <node role="implements" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" id="1175153720530">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111791038612">
    <property name="name" value="Event" />
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1116368080504">
      <property name="name" value="taxable" />
      <link role="dataType" targetNodeId="1116367977407" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111793668132">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="type" />
      <link role="target" targetNodeId="1111793698243" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111794644919">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="postingRule" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111794734295" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111792102248">
    <property name="name" value="Quantity" />
    <link role="extends" targetNodeId="5.1111784519527" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111793363741">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="amount" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="5.1111784926012" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111793358083">
      <property name="name" value="unit" />
      <link role="dataType" targetNodeId="1111793238658" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty" id="1197675838931">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111792355423">
    <property name="name" value="TemporalProperty" />
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.BooleanConceptProperty" id="1111792502243">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111792372299">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="date" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111792389581" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111792463585">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="value" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1.1133920641626" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111792389581">
    <property name="name" value="Date" />
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116446059360">
      <property name="value" value="date" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116446067362">
      <property name="value" value="exect date" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111792409129">
      <property name="name" value="year" />
      <link role="dataType" targetNodeId="1.1082983657062" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111792417427">
      <property name="name" value="month" />
      <link role="dataType" targetNodeId="1.1082983657062" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111792417975">
      <property name="name" value="day" />
      <link role="dataType" targetNodeId="1.1082983657062" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111792520557">
    <property name="name" value="QuantityTemporalProperty" />
    <link role="extends" targetNodeId="1111792355423" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111792541964">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="quantity" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111792102248" />
      <link role="specializedLink" targetNodeId="1111792463585" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" id="1111792867434">
    <property name="name" value="ValueType" />
    <property name="memberIdentifierPolicy" value="derive_from_internal_value" />
    <link role="memberDataType" targetNodeId="1.1082983041843" />
    <link role="defaultMember" targetNodeId="1111792874919" />
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1111792874919">
      <property name="externalValue" value="QUANTITY" />
      <property name="internalValue" value="Quantity" />
    </node>
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1111792901670">
      <property name="externalValue" value="MONEY" />
      <property name="internalValue" value="Money" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" id="1111793238658">
    <property name="name" value="Unit" />
    <property name="memberIdentifierPolicy" value="derive_from_internal_value" />
    <link role="memberDataType" targetNodeId="1.1082983041843" />
    <link role="defaultMember" targetNodeId="1111793245330" />
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1111793245330">
      <property name="externalValue" value="USD_KWH" />
      <property name="internalValue" value="USD_KWH" />
    </node>
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1111793298691">
      <property name="externalValue" value="USD" />
      <property name="internalValue" value="USD" />
    </node>
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1111793319239">
      <property name="externalValue" value="KWH" />
      <property name="internalValue" value="KWH" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111793698243">
    <property name="name" value="EventType" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" id="1175153691137">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111793732478">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="variable" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111793755198" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111793755198">
    <property name="name" value="EventVariable" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" id="1175153698075">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.lang.structure.structure.PropertyDeclaration" id="1111793807574">
      <property name="name" value="type" />
      <link role="dataType" targetNodeId="1111792867434" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111794734295">
    <property name="name" value="PostingRuleTemporalProperty" />
    <link role="extends" targetNodeId="1111792355423" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111794782624">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="postingRule" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111794888922" />
      <link role="specializedLink" targetNodeId="1111792463585" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111794888922">
    <property name="name" value="PostingRule" />
    <link role="extends" targetNodeId="5.1111784210516" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1111795211704">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="account" />
      <link role="target" targetNodeId="1111795284642" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1111795284642">
    <property name="name" value="AccountType" />
    <link role="extends" targetNodeId="1.1133920641626" />
    <node role="implements" type="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" id="1175153681792">
      <link role="intfc" targetNodeId="1.1169194658468" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1112036490295">
    <property name="name" value="EventVariableReference" />
    <link role="extends" targetNodeId="5.1111784312737" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1112036516483">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="eventVariable" />
      <link role="target" targetNodeId="1111793755198" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1112038445100">
    <property name="name" value="ValueReference" />
    <link role="extends" targetNodeId="5.1111784312737" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1112038462507">
      <property name="sourceCardinality" value="1" />
      <property name="role" value="value" />
      <link role="target" targetNodeId="1111791020814" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1112310944779">
    <property name="rootable" value="true" />
    <property name="name" value="AgreementDeclarations" />
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1112311033671">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="eventType" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111793698243" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.lang.structure.structure.LinkDeclaration" id="1112311143032">
      <property name="sourceCardinality" value="0..n" />
      <property name="role" value="accountType" />
      <property name="metaClass" value="aggregation" />
      <link role="target" targetNodeId="1111795284642" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" id="1116367977407">
    <property name="name" value="Taxable" />
    <property name="memberIdentifierPolicy" value="custom" />
    <link role="memberDataType" targetNodeId="1.1082983657063" />
    <link role="defaultMember" targetNodeId="1116367977408" />
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1116367977408">
      <property name="externalValue" value="TAXABLE" />
      <property name="internalValue" value="true" />
      <property name="javaIdentifier" value="taxable" />
    </node>
    <node role="member" type="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" id="1116368030878">
      <property name="externalValue" value="TAXFREE" />
      <property name="internalValue" value="false" />
      <property name="javaIdentifier" value="tax_free" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1116445695828">
    <property name="name" value="Date_Past" />
    <link role="extends" targetNodeId="1111792389581" />
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116445771455">
      <property name="value" value="PAST" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116445797582">
      <property name="value" value="past time" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
  </node>
  <node type="jetbrains.mps.lang.structure.structure.ConceptDeclaration" id="1116445809270">
    <property name="name" value="Date_Future" />
    <link role="extends" targetNodeId="1111792389581" />
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116445829319">
      <property name="value" value="FUTURE" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.lang.structure.structure.StringConceptProperty" id="1116445835337">
      <property name="value" value="future time" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
  </node>
</model>

