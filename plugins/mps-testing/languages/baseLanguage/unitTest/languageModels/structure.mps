<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)">
  <persistence version="7" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpe3" modelUID="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" version="-1" implicit="yes" />
  <roots>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171931690126">
      <property name="name" nameId="tpck.1169194664001" value="TestMethod" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123165" resolveInfo="InstanceMethodDeclaration" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171931851043">
      <property name="rootable" nameId="tpce.1096454100552" value="true" />
      <property name="iconPath" nameId="tpce.1160488491229" value="${language_descriptor}/icons/testClass.png" />
      <property name="name" nameId="tpck.1169194664001" value="BTestCase" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068390468198" resolveInfo="ClassConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171931858461">
      <property name="name" nameId="tpck.1169194664001" value="TestMethodList" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171978097730">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertEquals" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert equals" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="8427750732757990717" resolveInfo="BinaryAssert" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171981022339">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertTrue" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert true" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171983834376">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertFalse" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert false" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1171985735491">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertSame" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert same (&quot;==&quot;)" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="8427750732757990717" resolveInfo="BinaryAssert" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172017222794">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="Fail" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="fail" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172028177041">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertIsNull" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert is null" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172069869612">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertThrows" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert throws" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1172073500303">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="Message" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="message" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1172075514136">
      <property name="name" nameId="tpck.1169194664001" value="MessageHolder" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1215620452633">
      <property name="name" nameId="tpck.1169194664001" value="ITestable" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="api" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1216130694486">
      <property name="name" nameId="tpck.1169194664001" value="ITestCase" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="api" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1216134482493">
      <property name="name" nameId="tpck.1169194664001" value="ITestMethod" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="api" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7080278351417106679">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="AssertInNotNull" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="assert is not null" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8427750732757990717">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="incomingRefs" nameId="tpce.3656905254337409260" value="forbidden" />
      <property name="name" nameId="tpck.1169194664001" value="BinaryAssert" />
      <property name="virtualPackage" nameId="tpck.1193676396447" value="assert" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8243879142738608185">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="BeforeTest" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="beforeTest" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="8243879142738615226" resolveInfo="PrepareMethod" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8243879142738613213">
      <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="AfterTest" />
      <property name="conceptAlias" nameId="tpce.5092175715804935370" value="afterTest" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="8243879142738615226" resolveInfo="PrepareMethod" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8243879142738615226">
      <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
      <property name="final" nameId="tpce.4628067390765956807" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="PrepareMethod" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpee.1137021947720" resolveInfo="ConceptFunction" />
    </node>
  </roots>
  <root id="1171931690126">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1216135651783">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1216134482493" resolveInfo="ITestMethod" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1171931690128">
      <property name="name" nameId="tpck.1169194664001" value="methodName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root id="1171931851043">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1216131245363">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1216130694486" resolveInfo="ITestCase" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1171931851044">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="testMethodList" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1171931858461" resolveInfo="TestMethodList" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8243879142738613219">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="beforeTest" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8243879142738608185" resolveInfo="BeforeTest" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8243879142738613220">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="afterTest" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="8243879142738613213" resolveInfo="AfterTest" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1171931851045">
      <property name="name" nameId="tpck.1169194664001" value="testCaseName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpee.1083065718921" resolveInfo="_Identifier_String" />
    </node>
  </root>
  <root id="1171931858461">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1171931858462">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="testMethod" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1171931690126" resolveInfo="TestMethod" />
    </node>
  </root>
  <root id="1171978097730" />
  <root id="1171981022339">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1171981057159">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="condition" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7080278351417156124">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="1171983834376">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1171983854940">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="condition" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7080278351417153306">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="1171985735491" />
  <root id="1172017222794">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1172075544314">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="1172028177041">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172028236559">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7080278351417153310">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="1172069869612">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172070029086">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="statement" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172070532815">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="exceptionType" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1107535904670" resolveInfo="ClassifierType" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1172076269307">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="1172073500303">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172073511101">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="message" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
  </root>
  <root id="1172075514136">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1172075534298">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="message" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1172073500303" resolveInfo="Message" />
    </node>
  </root>
  <root id="1215620452633" />
  <root id="1216130694486">
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1216130711762">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1215620452633" resolveInfo="ITestable" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1229279139878">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root id="1216134482493">
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1216134482494">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1215620452633" resolveInfo="ITestable" />
    </node>
  </root>
  <root id="7080278351417106679">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7080278351417106681">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7080278351417153308">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="8427750732757990717">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8427750732757990724">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expected" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8427750732757990725">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="actual" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpee.1068431790191" resolveInfo="Expression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="8427750732757990718">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1172075514136" resolveInfo="MessageHolder" />
    </node>
  </root>
  <root id="8243879142738608185">
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="8243879142738608187">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" roleId="tpce.1105736901241" type="tpee.VoidType" typeId="tpee.1068581517677" id="8243879142738613211" />
    </node>
  </root>
  <root id="8243879142738613213">
    <node role="conceptLink" roleId="tpce.1105736949336" type="tpce.AggregationConceptLink" typeId="tpce.1105736889287" id="8243879142738613216">
      <link role="conceptLinkDeclaration" roleId="tpce.1105736734721" targetNodeId="tpee.1137545148427" resolveInfo="conceptFunctionReturnType" />
      <node role="target" roleId="tpce.1105736901241" type="tpee.VoidType" typeId="tpee.1068581517677" id="8243879142738613218" />
    </node>
  </root>
  <root id="8243879142738615226" />
</model>

