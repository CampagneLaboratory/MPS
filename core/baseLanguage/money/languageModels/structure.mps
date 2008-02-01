<?xml version="1.0" encoding="UTF-8"?>
<model name="jetbrains.accounting.money.structure">
  <persistence version="1" />
  <refactoringHistory />
  <language namespace="jetbrains.mps.bootstrap.structureLanguage" />
  <maxImportIndex value="4" />
  <import index="1" modelUID="jetbrains.mps.core.structure" version="-1" />
  <import index="2" modelUID="java.math@java_stub" version="-1" />
  <import index="3" modelUID="jetbrains.mps.baseLanguage.structure" version="0" />
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1186667651178">
    <property name="name" value="MoneyLiteral" />
    <link role="extends" targetNodeId="3.1068431790191" />
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1186667945792">
      <property name="name" value="currency" />
      <link role="dataType" targetNodeId="1.1082983041843" />
    </node>
    <node role="propertyDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.PropertyDeclaration" id="1186667962877">
      <property name="name" value="amount" />
      <link role="dataType" targetNodeId="1186668138191" resolveInfo="BigDecimal" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConstrainedDataTypeDeclaration" id="1186668138191">
    <property name="name" value="BigDecimal" />
    <property name="constraint" value="[0-9]+(.[0-9]+)?" />
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1186669599053">
    <property name="name" value="MoneyType" />
    <link role="extends" targetNodeId="3.1068431790189" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187337490505">
      <property name="value" value="Money" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1187340310888">
    <property name="name" value="MoneyCreator" />
    <link role="extends" targetNodeId="3.1145552809883" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187701438357">
      <property name="value" value="Money" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187701456812">
      <property name="value" value="money type constructor" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473914776" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1187344039345">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="amount" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" />
    </node>
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1187344093002">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="currency" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1187357857395">
    <property name="name" value="MoneyMethodCall" />
    <link role="extends" targetNodeId="3.1068431790191" />
    <node role="linkDeclaration" type="jetbrains.mps.bootstrap.structureLanguage.structure.LinkDeclaration" id="1187358164451">
      <property name="metaClass" value="aggregation" />
      <property name="role" value="instance" />
      <property name="sourceCardinality" value="1" />
      <link role="target" targetNodeId="3.1068431790191" />
    </node>
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.BooleanConceptProperty" id="1187357981803">
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473854053" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1187357875552">
    <property name="name" value="MoneyGetAmountMethodCall" />
    <link role="extends" targetNodeId="1187357857395" resolveInfo="MoneyMethodCall" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187703277035">
      <property name="value" value=". amount" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1187357945755">
    <property name="name" value="MoneyGetCurrencyMethodCall" />
    <link role="extends" targetNodeId="1187357857395" resolveInfo="MoneyMethodCall" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187703261658">
      <property name="value" value=". currency" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
  <node type="jetbrains.mps.bootstrap.structureLanguage.structure.ConceptDeclaration" id="1187617584208">
    <property name="name" value="MoneyIsZeroMethodCall" />
    <link role="extends" targetNodeId="1187357857395" resolveInfo="MoneyMethodCall" />
    <node role="conceptProperty" type="jetbrains.mps.bootstrap.structureLanguage.structure.StringConceptProperty" id="1187703292974">
      <property name="value" value=". isZero" />
      <link role="conceptPropertyDeclaration" targetNodeId="1.1137473891462" />
    </node>
  </node>
</model>

