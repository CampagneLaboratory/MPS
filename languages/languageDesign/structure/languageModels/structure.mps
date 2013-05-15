<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="1i04" modelUID="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" version="-1" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1071489090640" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/structure.png" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="Concept" />
    <link role="extends" roleId="1071489389519" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1096454100552" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="rootable" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1160488491229" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="iconPath" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="5404671619616246344" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="staticScope" />
      <link role="dataType" roleId="1082985295845" targetNodeId="5404671619616246759" resolveInfo="StaticScope" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1071489389519" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="extends" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..1" />
      <link role="target" roleId="1071599976176" targetNodeId="1071489090640" resolveInfo="ConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1169129564478" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="implements" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1169127622168" resolveInfo="InterfaceConceptReference" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1071489288298" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/link.png" />
    <property name="name" nameId="tpck.1169194664001" value="LinkDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349578768" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1071599776563" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="role" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1071599937831" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="metaClass" />
      <link role="dataType" roleId="1082985295845" targetNodeId="1084199179703" resolveInfo="LinkMetaclass" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1071599893252" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sourceCardinality" />
      <link role="dataType" roleId="1082985295845" targetNodeId="1084197782722" resolveInfo="Cardinality" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="3236994869861844876" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="doNotGenerate" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="2395585628928459314" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="unordered" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1071599698500" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="specializedLink" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..1" />
      <link role="target" roleId="1071599976176" targetNodeId="1071489288298" resolveInfo="LinkDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1071599976176" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="target" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1227629144741" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="1224848324737" resolveInfo="IStructureDeprecatable" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1071489288299" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/property.png" />
    <property name="name" nameId="tpck.1169194664001" value="PropertyDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349578775" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="9026942911489198753" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="doNotGenerate" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1169197677374" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224848433249" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="1224848324737" resolveInfo="IStructureDeprecatable" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1082985295845" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="dataType" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1082978164218" resolveInfo="DataTypeDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1082978164218" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DataTypeDeclaration" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1173471269815" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1082978164219" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/enum.png" />
    <property name="name" nameId="tpck.1169194664001" value="EnumerationDataTypeDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="Enum Data Type" />
    <link role="extends" roleId="1071489389519" targetNodeId="1082978164218" resolveInfo="DataTypeDeclaration" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1197591154882" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="memberIdentifierPolicy" />
      <link role="dataType" roleId="1082985295845" targetNodeId="1197590884613" resolveInfo="EnumerationMemberIdentifierPolicy" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1212080844762" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="hasNoDefaultMember" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1212087449254" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="noValueText" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1083171729157" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="memberDataType" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1083243159079" resolveInfo="PrimitiveDataTypeDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1083241965437" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="defaultMember" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..1" />
      <link role="target" roleId="1071599976176" targetNodeId="1083171877298" resolveInfo="EnumerationMemberDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1083172003582" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="member" />
      <property name="sourceCardinality" nameId="1071599893252" value="1..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1083171877298" resolveInfo="EnumerationMemberDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1082978499127" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/constrainedTD.png" />
    <property name="name" nameId="tpck.1169194664001" value="ConstrainedDataTypeDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="Constrained Data Type" />
    <link role="extends" roleId="1071489389519" targetNodeId="1082978164218" resolveInfo="DataTypeDeclaration" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1083066089218" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="constraint" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1083171877298" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="EnumerationMemberDeclaration" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1083923523171" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="internalValue" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1083923523172" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="externalValue" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1192116978809" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="javaIdentifier" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1802011204847150336" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1083243159079" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/primitiveTD.png" />
    <property name="name" nameId="tpck.1169194664001" value="PrimitiveDataTypeDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="1082978164218" resolveInfo="DataTypeDeclaration" />
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="1084197782722" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="derive_from_internal_value" />
    <property name="hasNoDefaultMember" nameId="1212080844762" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="Cardinality" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084197782723" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="0..1" />
      <property name="externalValue" nameId="1083923523172" value="0..1" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084197782724" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="1" />
      <property name="externalValue" nameId="1083923523172" value="1" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084197782725" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="0..n" />
      <property name="externalValue" nameId="1083923523172" value="0..n" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084197782726" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="1..n" />
      <property name="externalValue" nameId="1083923523172" value="1..n" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="1084199179703" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="derive_from_internal_value" />
    <property name="hasNoDefaultMember" nameId="1212080844762" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="LinkMetaclass" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084199179704" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="reference" />
      <property name="externalValue" nameId="1083923523172" value="reference" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1084199179705" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="aggregation" />
      <property name="externalValue" nameId="1083923523172" value="aggregation" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725006687" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="true" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptPropertyDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1169198088508" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349579070" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224848442599" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="1224848324737" resolveInfo="IStructureDeprecatable" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1218571350029" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="inheritable" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="1224240836180" id="1782603346000230320" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725141344" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="IntegerConceptPropertyDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="integer" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725006687" resolveInfo="ConceptPropertyDeclaration" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725240314" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="BooleanConceptPropertyDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="boolean" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725006687" resolveInfo="ConceptPropertyDeclaration" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725281956" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="StringConceptPropertyDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="string" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725006687" resolveInfo="ConceptPropertyDeclaration" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725413739" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="true" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptProperty" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105725439818" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="conceptPropertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725006687" resolveInfo="ConceptPropertyDeclaration" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="1224240836180" id="1782603346000202422" nodeInfo="ig" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349754011" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725498741" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="IntegerConceptProperty" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725413739" resolveInfo="ConceptProperty" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1105725713309" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657062" resolveInfo="integer" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105725523273" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="integerConceptPropertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725141344" resolveInfo="IntegerConceptPropertyDeclaration" />
      <link role="specializedLink" roleId="1071599698500" targetNodeId="1105725439818" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725574259" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="BooleanConceptProperty" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725413739" resolveInfo="ConceptProperty" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105725597978" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="booleanConceptPropertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725240314" resolveInfo="BooleanConceptPropertyDeclaration" />
      <link role="specializedLink" roleId="1071599698500" targetNodeId="1105725439818" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105725638761" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="StringConceptProperty" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105725413739" resolveInfo="ConceptProperty" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1105725733873" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="value" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105725659058" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="stringConceptPropertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="specializedLink" roleId="1071599698500" targetNodeId="1105725439818" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725281956" resolveInfo="StringConceptPropertyDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105736576531" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="true" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptLinkDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1169197959642" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349579084" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224848449418" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="1224848324737" resolveInfo="IStructureDeprecatable" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105736621938" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="targetType" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105736674127" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="true" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptLink" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105736734721" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="conceptLinkDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1105736576531" resolveInfo="ConceptLinkDeclaration" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349754013" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105736778597" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ReferenceConceptLink" />
    <property name="conceptAlias" nameId="5092175715804935370" value="&lt;{referenceConceptLinkDeclaration}&gt;" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105736674127" resolveInfo="ConceptLink" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105742372452" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="referenceConceptLinkDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="specializedLink" roleId="1071599698500" targetNodeId="1105736734721" />
      <link role="target" roleId="1071599976176" targetNodeId="1105741578420" resolveInfo="ReferenceConceptLinkDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105736807942" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="target" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="1224240836180" id="7750832940157558777" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105736889287" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AggregationConceptLink" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105736674127" resolveInfo="ConceptLink" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105742417828" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="aggregationConceptLinkDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1105741535888" resolveInfo="AggregationConceptLinkDeclaration" />
      <link role="specializedLink" roleId="1071599698500" targetNodeId="1105736734721" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105736901241" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="target" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105741535888" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AggregationConceptLinkDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="aggregation" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105736576531" resolveInfo="ConceptLinkDeclaration" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1105741578420" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="false" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ReferenceConceptLinkDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="reference" />
    <link role="extends" roleId="1071489389519" targetNodeId="1105736576531" resolveInfo="ConceptLinkDeclaration" />
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="1224240836180" id="4878018458163480834" nodeInfo="ig" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1149608206811" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/annotationLink.png" />
    <property name="name" nameId="tpck.1169194664001" value="AnnotationLinkDeclaration" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="annotation" />
    <property name="conceptAlias" nameId="5092175715804935370" value="Annotation Link" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1174387216526" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1204740973143" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="role" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1149608445162" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="stereotype" />
      <link role="dataType" roleId="1082985295845" targetNodeId="1149608316235" resolveInfo="AnnotationLinkStereotype" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1204741022738" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="sourceCardinality" />
      <link role="dataType" roleId="1082985295845" targetNodeId="1204742406467" resolveInfo="AnnotationLinkCardinality" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1149608246500" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="source" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1204741097161" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="target" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpce.DeprecatedNodeAnnotation" typeId="1224240836180" id="6740862279712728259" nodeInfo="ig" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1262430001741646785" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1835621062190663819" resolveInfo="IDontSubstituteByDefault" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="1149608316235" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="derive_from_internal_value" />
    <property name="name" nameId="tpck.1169194664001" value="AnnotationLinkStereotype" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="annotation" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="1083241965437" targetNodeId="1149608364144" resolveInfo="node" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1149608364144" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="node" />
      <property name="externalValue" nameId="1083923523172" value="node" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1149608316236" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="link" />
      <property name="externalValue" nameId="1083923523172" value="link" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1149608344284" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="property" />
      <property name="externalValue" nameId="1083923523172" value="property" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1169125787135" nodeInfo="ig">
    <property name="abstract" nameId="4628067390765956802" value="true" />
    <property name="final" nameId="4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractConceptDeclaration" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="2465654535473034588" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="helpURL" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="5092175715804935370" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="conceptAlias" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="4628067390765907488" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="conceptShortDescription" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="4628067390765956802" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="abstract" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="4628067390765956807" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="final" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1169197806875" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349578484" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224848455018" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="1224848324737" resolveInfo="IStructureDeprecatable" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1071489727083" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="linkDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1071489288298" resolveInfo="LinkDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1071489727084" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="propertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1071489288299" resolveInfo="PropertyDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105725339613" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="conceptProperty" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725413739" resolveInfo="ConceptProperty" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1105736949336" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="conceptLink" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1105736674127" resolveInfo="ConceptLink" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1137467167200" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="conceptPropertyDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1105725006687" resolveInfo="ConceptPropertyDeclaration" />
    </node>
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1137532086877" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="conceptLinkDeclaration" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1105736576531" resolveInfo="ConceptLinkDeclaration" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1169125989551" nodeInfo="ig">
    <property name="rootable" nameId="1096454100552" value="true" />
    <property name="abstract" nameId="4628067390765956802" value="false" />
    <property name="final" nameId="4628067390765956807" value="true" />
    <property name="iconPath" nameId="1160488491229" value="${language_descriptor}/icons/interfaceStructure.png" />
    <property name="name" nameId="tpck.1169194664001" value="InterfaceConceptDeclaration" />
    <property name="conceptAlias" nameId="5092175715804935370" value="Interface Concept" />
    <link role="extends" roleId="1071489389519" targetNodeId="1169125787135" resolveInfo="AbstractConceptDeclaration" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1169127546356" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="aggregation" />
      <property name="role" nameId="1071599776563" value="extends" />
      <property name="sourceCardinality" nameId="1071599893252" value="0..n" />
      <link role="target" roleId="1071599976176" targetNodeId="1169127622168" resolveInfo="InterfaceConceptReference" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1169127622168" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="InterfaceConceptReference" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="1169127628841" nodeInfo="ig">
      <property name="role" nameId="1071599776563" value="intfc" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1169125989551" resolveInfo="InterfaceConceptDeclaration" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="5774959771349579231" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="1197590884613" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="derive_from_internal_value" />
    <property name="name" nameId="tpck.1169194664001" value="EnumerationMemberIdentifierPolicy" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <link role="defaultMember" roleId="1083241965437" targetNodeId="1197590884614" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1197590884614" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="derive_from_presentation" />
      <property name="externalValue" nameId="1083923523172" value="derive from presentation" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1197591048630" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="derive_from_internal_value" />
      <property name="externalValue" nameId="1083923523172" value="derive from internal value" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1197591075491" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="custom" />
      <property name="externalValue" nameId="1083923523172" value="custom" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="1204742406467" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="derive_from_internal_value" />
    <property name="name" nameId="tpck.1169194664001" value="AnnotationLinkCardinality" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="annotation" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1204742406468" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="0..1" />
      <property name="externalValue" nameId="1083923523172" value="1" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="1204742457437" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="0..n" />
      <property name="externalValue" nameId="1083923523172" value="*" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="1224240836180" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="DeprecatedNodeAnnotation" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecatedAnnotation" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.3364660638048049748" resolveInfo="NodeAttribute" />
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224240859229" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="implements" roleId="1169129564478" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="2120388412647147802" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1319728274784973096" resolveInfo="InterfacePart" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1225118929411" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="build" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="1071489727084" type="tpce.PropertyDeclaration" typeId="1071489288299" id="1225118933224" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="comment" />
      <link role="dataType" roleId="1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="1169125989551" id="1224848324737" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IStructureDeprecatable" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="deprecatedAnnotation" />
    <node role="extends" roleId="1169127546356" type="tpce.InterfaceConceptReference" typeId="1169127622168" id="1224848346098" nodeInfo="ig">
      <link role="intfc" roleId="1169127628841" targetNodeId="tpck.1224608834445" resolveInfo="IDeprecatable" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="1169125989551" id="2621449412040133764" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="IConceptAspect" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="1071489090640" id="8080932314785812236" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="MigratedToMethodAnnotation" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="annotation" />
    <link role="extends" roleId="1071489389519" targetNodeId="tpck.3364660638048049748" resolveInfo="NodeAttribute" />
    <node role="linkDeclaration" roleId="1071489727083" type="tpce.LinkDeclaration" typeId="1071489288298" id="8080932314785812847" nodeInfo="ig">
      <property name="metaClass" nameId="1071599937831" value="reference" />
      <property name="role" nameId="1071599776563" value="method" />
      <property name="sourceCardinality" nameId="1071599893252" value="1" />
      <link role="target" roleId="1071599976176" targetNodeId="1i04.1225194472830" resolveInfo="ConceptMethodDeclaration" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="8087047305080774904" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="custom" />
    <property name="name" nameId="tpck.1169194664001" value="InstanceIncomingReferencesPolicy" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="8087047305080775282" nodeInfo="ig">
      <property name="javaIdentifier" nameId="1192116978809" value="allowed" />
      <property name="externalValue" nameId="1083923523172" value="allowed" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="8087047305080775412" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="local" />
      <property name="javaIdentifier" nameId="1192116978809" value="local" />
      <property name="externalValue" nameId="1083923523172" value="same root only" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="8087047305080775416" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="forbidden" />
      <property name="javaIdentifier" nameId="1192116978809" value="forbidden" />
      <property name="externalValue" nameId="1083923523172" value="forbidden" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="3220559764717766993" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="custom" />
    <property name="name" nameId="tpck.1169194664001" value="ChildrenIncomingReferencesPolicy" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="3220559764717766994" nodeInfo="ig">
      <property name="javaIdentifier" nameId="1192116978809" value="allowed" />
      <property name="externalValue" nameId="1083923523172" value="allowed" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="3220559764717766995" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="local" />
      <property name="javaIdentifier" nameId="1192116978809" value="local" />
      <property name="externalValue" nameId="1083923523172" value="enforce `same root only'" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="3220559764717766998" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="forbidden" />
      <property name="javaIdentifier" nameId="1192116978809" value="forbidden" />
      <property name="externalValue" nameId="1083923523172" value="enforce `forbidden'" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="1082978164219" id="5404671619616246759" nodeInfo="ng">
    <property name="memberIdentifierPolicy" nameId="1197591154882" value="custom" />
    <property name="name" nameId="tpck.1169194664001" value="StaticScope" />
    <link role="memberDataType" roleId="1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="5404671619616246760" nodeInfo="ig">
      <property name="javaIdentifier" nameId="1192116978809" value="global" />
      <property name="externalValue" nameId="1083923523172" value="global" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="5404671619616246761" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="root" />
      <property name="javaIdentifier" nameId="1192116978809" value="root" />
      <property name="externalValue" nameId="1083923523172" value="containing root" />
    </node>
    <node role="member" roleId="1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="1083171877298" id="5404671619616246764" nodeInfo="ig">
      <property name="internalValue" nameId="1083923523171" value="none" />
      <property name="javaIdentifier" nameId="1192116978809" value="none" />
      <property name="externalValue" nameId="1083923523172" value="none" />
    </node>
  </root>
</model>

