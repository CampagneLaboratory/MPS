<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" version="2">
  <persistence version="7" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="356a" modelUID="r:3b7ed80f-6cfd-45bc-b051-2f66c620dd27(jetbrains.mps.lang.traceable.structure)" version="0" implicit="yes" />
  <import index="iuxj" modelUID="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" version="2" implicit="yes" />
  <roots>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6786756355279841993">
      <property name="name" nameId="tpck.1169194664001" value="XmlDocument" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299051">
      <property name="name" nameId="tpck.1169194664001" value="XmlContent" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299053">
      <property name="name" nameId="tpck.1169194664001" value="XmlBaseElement" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299057">
      <property name="name" nameId="tpck.1169194664001" value="XmlProlog" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299061">
      <property name="name" nameId="tpck.1169194664001" value="XmlProcessingInstruction" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299064">
      <property name="name" nameId="tpck.1169194664001" value="XmlComment" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681299066">
      <property name="name" nameId="tpck.1169194664001" value="XmlCDATA" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681415858">
      <property name="name" nameId="tpck.1169194664001" value="XmlElement" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299053" resolveInfo="XmlBaseElement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681415859">
      <property name="name" nameId="tpck.1169194664001" value="XmlBaseAttribute" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681447923">
      <property name="name" nameId="tpck.1169194664001" value="XmlAttribute" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681415859" resolveInfo="XmlBaseAttribute" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681515200">
      <property name="name" nameId="tpck.1169194664001" value="XmlFile" />
      <property name="rootable" nameId="tpce.1096454100552" value="true" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681541916">
      <property name="name" nameId="tpck.1169194664001" value="XmlValuePart" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681541919">
      <property name="name" nameId="tpck.1169194664001" value="XmlTextValue" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681541916" resolveInfo="XmlValuePart" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="6666499814681541921">
      <property name="name" nameId="tpck.1169194664001" value="XmlEntityRefValue" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681541916" resolveInfo="XmlValuePart" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1622293396948952339">
      <property name="name" nameId="tpck.1169194664001" value="XmlText" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1622293396949036126">
      <property name="name" nameId="tpck.1169194664001" value="XmlCommentLine" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1622293396949069645">
      <property name="name" nameId="tpck.1169194664001" value="XmlEntityRef" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3080189811177199750">
      <property name="name" nameId="tpck.1169194664001" value="XmlCharRef" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3080189811177215998">
      <property name="name" nameId="tpck.1169194664001" value="XmlCharRefValue" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681541916" resolveInfo="XmlValuePart" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3080189811177426492">
      <property name="name" nameId="tpck.1169194664001" value="XmlNoSpaceValue" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="6666499814681541916" resolveInfo="XmlValuePart" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="7604553062773674213">
      <property name="name" nameId="tpck.1169194664001" value="XmlPrologElement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="7604553062773750440">
      <property name="name" nameId="tpck.1169194664001" value="XmlWhitespace" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="2133624044437669768" resolveInfo="XmlBasePrologElement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="5228786488744996718">
      <property name="name" nameId="tpck.1169194664001" value="XmlDeclaration" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="2133624044437669768" resolveInfo="XmlBasePrologElement" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="5491461270226117666">
      <property name="name" nameId="tpck.1169194664001" value="xmlVersionString" />
      <property name="constraint" nameId="tpce.1083066089218" value="1.[0-9]+" />
    </node>
    <node type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="2133624044437631294">
      <property name="name" nameId="tpck.1169194664001" value="XmlPart" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2133624044437669768">
      <property name="name" nameId="tpck.1169194664001" value="XmlBasePrologElement" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2133624044437898907">
      <property name="name" nameId="tpck.1169194664001" value="XmlDoctypeDeclaration" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="2133624044437669768" resolveInfo="XmlBasePrologElement" />
    </node>
    <node type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="2133624044438029119">
      <property name="name" nameId="tpck.1169194664001" value="XmlExternalId" />
      <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="3374336260035925079">
      <property name="name" nameId="tpck.1169194664001" value="xmlEncoding" />
      <property name="constraint" nameId="tpce.1083066089218" value="[A-Za-z]([A-Za-z0-9._]|-)*" />
    </node>
    <node type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="3374336260035925081">
      <property name="name" nameId="tpck.1169194664001" value="yesNoString" />
      <property name="constraint" nameId="tpce.1083066089218" value="yes|no" />
    </node>
  </roots>
  <root id="6786756355279841993">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6666499814681299060">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="prolog" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6666499814681299057" resolveInfo="XmlProlog" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6666499814681299055">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rootElement" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6666499814681299053" resolveInfo="XmlBaseElement" />
    </node>
  </root>
  <root id="6666499814681299051">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949018575">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949018572" resolveInfo="textLike" />
    </node>
    <node role="conceptPropertyDeclaration" roleId="tpce.1137467167200" type="tpce.BooleanConceptPropertyDeclaration" typeId="tpce.1105725240314" id="1622293396949018572">
      <property name="name" nameId="tpck.1169194664001" value="textLike" />
    </node>
    <node role="conceptPropertyDeclaration" roleId="tpce.1137467167200" type="tpce.BooleanConceptPropertyDeclaration" typeId="tpce.1105725240314" id="1622293396949027983">
      <property name="name" nameId="tpck.1169194664001" value="oneLineBlock" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681299056">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473854053" resolveInfo="abstract" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2133624044437631295">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2133624044437631294" resolveInfo="XmlPart" />
    </node>
  </root>
  <root id="6666499814681299053">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681415857">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473854053" resolveInfo="abstract" />
    </node>
  </root>
  <root id="6666499814681299057">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="7604553062773674214">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="elements" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
  </root>
  <root id="6666499814681299061">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681299062">
      <property name="name" nameId="tpck.1169194664001" value="target" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681299063">
      <property name="name" nameId="tpck.1169194664001" value="rawData" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="8362121812263930602">
      <property name="value" nameId="tpce.1105725733873" value="&lt;?" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="8362121812263930604">
      <property name="value" nameId="tpce.1105725733873" value="processing instruction" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="8362121812264012161">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949027983" resolveInfo="oneLineBlock" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7604553062773674216">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
  </root>
  <root id="6666499814681299064">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="8886258982030605043">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949027983" resolveInfo="oneLineBlock" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="1622293396949056583">
      <property name="value" nameId="tpce.1105725733873" value="&lt;!--" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1622293396949036151">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="lines" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1622293396949036126" resolveInfo="XmlCommentLine" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="7604553062773674215">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
  </root>
  <root id="6666499814681299066">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1622293396948985395">
      <property name="name" nameId="tpck.1169194664001" value="content" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949028011">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949027983" resolveInfo="oneLineBlock" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681299074">
      <property name="value" nameId="tpce.1105725733873" value="&lt;![CDATA" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
  </root>
  <root id="6666499814681415858">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949016950">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681415862">
      <property name="name" nameId="tpck.1169194664001" value="tagName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6999033275467544021">
      <property name="name" nameId="tpck.1169194664001" value="shortEmptyNotation" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6666499814681415861">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="attributes" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6666499814681415859" resolveInfo="XmlBaseAttribute" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1622293396948928802">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="content" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6666499814681299051" resolveInfo="XmlContent" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681526048">
      <property name="value" nameId="tpce.1105725733873" value="&lt;element/&gt;" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
  </root>
  <root id="6666499814681415859">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681447924">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473854053" resolveInfo="abstract" />
    </node>
  </root>
  <root id="6666499814681447923">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6666499814681541918">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <property name="role" nameId="tpce.1071599776563" value="value" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6666499814681541916" resolveInfo="XmlValuePart" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681447926">
      <property name="name" nameId="tpck.1169194664001" value="attrName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681625843">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681634586">
      <property name="value" nameId="tpce.1105725733873" value="attribute" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
  </root>
  <root id="6666499814681515200">
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="6666499814681515201">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="document" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="6786756355279841993" resolveInfo="XmlDocument" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="6666499814681515202">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="543355706921831334">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="356a.5067982036267369892" resolveInfo="UnitConcept" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681524897">
      <property name="value" nameId="tpce.1105725733873" value="xml file" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
  </root>
  <root id="6666499814681541916">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681541917">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473854053" resolveInfo="abstract" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177445547">
      <property name="value" nameId="tpce.1105725733873" value="attribute value" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="6666499814681541919">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681574216">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681541920">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681552784">
      <property name="value" nameId="tpce.1105725733873" value="text" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681552787">
      <property name="value" nameId="tpce.1105725733873" value="attribute value contains of text and entity references" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="6666499814681541921">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="6666499814681582684">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="6666499814681543256">
      <property name="name" nameId="tpck.1169194664001" value="entityName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681547967">
      <property name="value" nameId="tpce.1105725733873" value="&amp;" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="6666499814681552790">
      <property name="value" nameId="tpce.1105725733873" value="entity reference" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="1622293396948952339">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949012409">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949018577">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949018572" resolveInfo="textLike" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1622293396948953704">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="1622293396948952341">
      <property name="value" nameId="tpce.1105725733873" value="text" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="1622293396948952343">
      <property name="value" nameId="tpce.1105725733873" value="plain text" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="1622293396949036126">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1622293396949036127">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root id="1622293396949069645">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1622293396949069711">
      <property name="name" nameId="tpck.1169194664001" value="entityName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="1622293396949069646">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949027983" resolveInfo="oneLineBlock" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="1622293396949069713">
      <property name="value" nameId="tpce.1105725733873" value="&amp;" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="1622293396949069714">
      <property name="value" nameId="tpce.1105725733873" value="entity reference" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="3080189811177199750">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3080189811177199751">
      <property name="name" nameId="tpck.1169194664001" value="charCode" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="3080189811177199752">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="1622293396949027983" resolveInfo="oneLineBlock" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177199754">
      <property name="value" nameId="tpce.1105725733873" value="&amp;#" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177199755">
      <property name="value" nameId="tpce.1105725733873" value="single character" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="3080189811177215998">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3080189811177216006">
      <property name="name" nameId="tpck.1169194664001" value="charCode" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="3080189811177215999">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177216004">
      <property name="value" nameId="tpce.1105725733873" value="&amp;#" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177216005">
      <property name="value" nameId="tpce.1105725733873" value="single character" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="3080189811177426492">
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177426494">
      <property name="value" nameId="tpce.1105725733873" value="&lt;-no space-&gt;" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="3080189811177426496">
      <property name="value" nameId="tpce.1105725733873" value="concatenates two values without spaces" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473914776" resolveInfo="shortDescription" />
    </node>
  </root>
  <root id="7604553062773674213">
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2133624044437631435">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="2133624044437631294" resolveInfo="XmlPart" />
    </node>
    <node role="conceptPropertyDeclaration" roleId="tpce.1137467167200" type="tpce.BooleanConceptPropertyDeclaration" typeId="tpce.1105725240314" id="3374336260035871157">
      <property name="name" nameId="tpck.1169194664001" value="isFirst" />
      <property name="inheritable" nameId="tpce.1218571350029" value="true" />
    </node>
    <node role="conceptPropertyDeclaration" roleId="tpce.1137467167200" type="tpce.BooleanConceptPropertyDeclaration" typeId="tpce.1105725240314" id="3374336260035871159">
      <property name="name" nameId="tpck.1169194664001" value="isSingle" />
      <property name="inheritable" nameId="tpce.1218571350029" value="true" />
    </node>
  </root>
  <root id="7604553062773750440">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5228786488744844115">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3116093476406591728">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="5491461270226101392">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473994950" resolveInfo="dontSubstituteByDefault" />
    </node>
  </root>
  <root id="5228786488744996718">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="5228786488744996719">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="5491461270226117667">
      <property name="name" nameId="tpck.1169194664001" value="version" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="5491461270226117666" resolveInfo="xmlVersionString" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3374336260035925078">
      <property name="name" nameId="tpck.1169194664001" value="encoding" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="3374336260035925079" resolveInfo="xmlEncoding" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3374336260035925080">
      <property name="name" nameId="tpck.1169194664001" value="standalone" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="3374336260035925081" resolveInfo="yesNoString" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="2133624044437742230">
      <property name="value" nameId="tpce.1105725733873" value="&lt;?xml" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="3374336260035871164">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="3374336260035871157" resolveInfo="isFirst" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="3374336260035871168">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="3374336260035871159" resolveInfo="isSingle" />
    </node>
  </root>
  <root id="5491461270226117666" />
  <root id="2133624044437631294" />
  <root id="2133624044437669768">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2133624044437669769">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="2133624044437669770">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473854053" resolveInfo="abstract" />
    </node>
  </root>
  <root id="2133624044437898907">
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="2133624044437898908">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="7604553062773674213" resolveInfo="XmlPrologElement" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.StringConceptProperty" typeId="tpce.1105725638761" id="2133624044437898909">
      <property name="value" nameId="tpce.1105725733873" value="&lt;!DOCTYPE" />
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="tpck.1137473891462" resolveInfo="alias" />
    </node>
    <node role="conceptProperty" roleId="tpce.1105725339613" type="tpce.BooleanConceptProperty" typeId="tpce.1105725574259" id="3374336260035871162">
      <link role="conceptPropertyDeclaration" roleId="tpce.1105725439818" targetNodeId="3374336260035871159" resolveInfo="isSingle" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2133624044437898910">
      <property name="name" nameId="tpck.1169194664001" value="doctypeName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="2133624044438029120">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="externalId" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="2133624044438029119" resolveInfo="XmlExternalId" />
    </node>
  </root>
  <root id="2133624044438029119">
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2133624044438029123">
      <property name="name" nameId="tpck.1169194664001" value="publicId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2133624044438029124">
      <property name="name" nameId="tpck.1169194664001" value="systemId" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="2133624044438029125">
      <property name="name" nameId="tpck.1169194664001" value="isPublic" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root id="3374336260035925079" />
  <root id="3374336260035925081" />
</model>

