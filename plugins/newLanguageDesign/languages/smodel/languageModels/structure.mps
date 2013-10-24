<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e3b9700d-5825-4641-895a-925f28591c5b(jetbrains.mps.core.smodel.structure)">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <import index="bwy9" modelUID="r:f9198ffd-e084-425c-aa82-f2db8289f5eb(jetbrains.mps.core.query.structure)" version="4" />
  <import index="ydsw" modelUID="r:c11a239c-3061-4b62-b5dd-6749678497d7(jetbrains.mps.core.structure.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="xsnc" modelUID="r:e3b9700d-5825-4641-895a-925f28591c5b(jetbrains.mps.core.smodel.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4260762357824841781" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="MqlLinkSelector" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4260762357824841782" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="link" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.7581772527307862084" resolveInfo="SAbstractLink" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4260762357824841783" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MqlPropertySelector" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4260762357824841784" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="property" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.6195190339581766742" resolveInfo="SProperty" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4260762357825047862" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="type" />
    <property name="name" nameId="tpck.1169194664001" value="MqlNodeType" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048051" resolveInfo="MqlType" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4260762357825047863" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="concept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.6195190339581756310" resolveInfo="SAbstractConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5270931306887544473" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="SConceptQuery" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="structure" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="query" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="ydsw.6195190339581766743" resolveInfo="SConceptMember" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3613277881476317462" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="bwy9.1776940314979256874" resolveInfo="IIdentifier" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6195190339581766762" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="isAbstract" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6195190339581766763" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="isFinal" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="4366849661834292509" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="isOverride" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4366849661834287896" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="type" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="bwy9.6762883159245048051" resolveInfo="MqlType" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6762883159245048634" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="body" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="bwy9.6762883159245048012" resolveInfo="MqlExpression" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1907979545625841012" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1196978630214" resolveInfo="IResolveInfo" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5270931306887544476" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="bwy9.1992172484410508056" resolveInfo="MqlParametersContainer" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4125821269968947730" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="bwy9.4125821269968916016" resolveInfo="MqlThisProvider" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4519148889084585912" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.3734116213129792499" resolveInfo="ScopeProvider" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="535637396506608313" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="SConceptQueryCall" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="concept query call" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2059702675525965926" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="arguments" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="bwy9.6762883159245048012" resolveInfo="MqlExpression" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="535637396506608314" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="query" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="5270931306887544473" resolveInfo="SConceptQuery" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4363371899537405589" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MqlModelQuery" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048009" resolveInfo="MqlQuery" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6762883159245086410" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="contextNode" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="4260762357825047862" resolveInfo="MqlNodeType" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="4363371899537405595" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="bwy9.4125821269968916016" resolveInfo="MqlThisProvider" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="4690043208397697375" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="type" />
    <property name="name" nameId="tpck.1169194664001" value="MqlConceptType" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="concept&lt; &gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048051" resolveInfo="MqlType" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="4690043208397898335" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="concept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.6195190339581756310" resolveInfo="SAbstractConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5343139407539241386" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="IsInstanceOf" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="isOfConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1389772202491538904" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="argument" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1389772202491535446" resolveInfo="ArgConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5343139407540209770" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="SNodeCast" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="as" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="5343139407540213464" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="concept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.6195190339581756310" resolveInfo="SAbstractConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="8024238796508611960" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="type" />
    <property name="name" nameId="tpck.1169194664001" value="MqlEnumType" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048051" resolveInfo="MqlType" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="8024238796508611995" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="enum" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.7581772527307617794" resolveInfo="SEnumeration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2198415040519604873" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="SEnumLiteralRef" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048012" resolveInfo="MqlExpression" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2198415040519606082" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="target" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.7581772527307852674" resolveInfo="SEnumerationMember" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1389772202491521471" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptExpr" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="expr:" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1389772202491535446" resolveInfo="ArgConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1389772202491521472" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expression" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="bwy9.6762883159245048012" resolveInfo="MqlExpression" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1389772202491535446" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="ArgConcept" />
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1389772202491538888" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="SConceptRef" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1389772202491535446" resolveInfo="ArgConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1389772202491538889" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="concept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="ydsw.6195190339581756310" resolveInfo="SAbstractConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6645666184791620092" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="OfConceptSelector" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="ofConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6645666184791620093" nodeInfo="ig">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="argument" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1389772202491535446" resolveInfo="ArgConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3868630583607352071" nodeInfo="ig">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="MqlNodeNoArgOperation" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="bwy9.6762883159245048087" resolveInfo="MqlSelector" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3868630583607362197" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="kind" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="3868630583607362190" resolveInfo="MqlNodeNoArgOperationKind" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3868630583607782472" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="3868630583607362190" nodeInfo="ng">
    <property name="virtualPackage" nameId="tpck.1193676396447" value="smodel" />
    <property name="name" nameId="tpck.1169194664001" value="MqlNodeNoArgOperationKind" />
    <property name="hasNoDefaultMember" nameId="tpce.1212080844762" value="true" />
    <property name="memberIdentifierPolicy" nameId="tpce.1197591154882" value="custom" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3868630583607362191" nodeInfo="ig">
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="CONCEPT" />
      <property name="internalValue" nameId="tpce.1083923523171" value="1" />
      <property name="externalValue" nameId="tpce.1083923523172" value="concept" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="3868630583607362192" nodeInfo="ig">
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="PARENT" />
      <property name="internalValue" nameId="tpce.1083923523171" value="2" />
      <property name="externalValue" nameId="tpce.1083923523172" value="parent" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="2628050024365715550" nodeInfo="ig">
      <property name="javaIdentifier" nameId="tpce.1192116978809" value="CONTAININGROOT" />
      <property name="internalValue" nameId="tpce.1083923523171" value="3" />
      <property name="externalValue" nameId="tpce.1083923523172" value="containingRoot" />
    </node>
  </root>
</model>

