<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:00000000-0000-4000-0000-011c895905d5(jetbrains.mpslite.structure)" version="0">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" />
  <import index="tpl5" modelUID="r:00000000-0000-4000-0000-011c895905d5(jetbrains.mpslite.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182511208797" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="Line" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1182511263160" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="linePart" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1182511214735" resolveInfo="LinePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182511214735" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="LinePart" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182511276754" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConstantLinePart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="constant text" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1182511281427" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="text" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1237216850308" resolveInfo="ConstantText" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182512705570" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="IndentLinePart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="---&gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182845659293" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="conceptShortDescription" nameId="tpce.4628067390765907488" value="reference declaration" />
    <property name="name" nameId="tpck.1169194664001" value="ConcreteReferencePart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="&lt; Referent.. &gt;" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237207375100" resolveInfo="ReferencePart" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237914611837" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="conceptReference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1182845679857" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1183015764815" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ChildPart" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1183118217589" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="separator" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1237207287769" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="multiple" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1237211128837" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="vertical" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1197379421676" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="OptionalPart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="optional" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1197379442834" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="part" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1182511214735" resolveInfo="LinePart" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237207272689" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConcreteChildPart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="[ Child.. ]" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1183015764815" resolveInfo="ChildPart" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237898580818" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="conceptReference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1237212294470" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237207375100" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ReferencePart" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1237457103518" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="optional" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
  </root>
  <root type="tpce.ConstrainedDataTypeDeclaration" typeId="tpce.1082978499127" id="1237216850308" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="ConstantText" />
    <property name="constraint" nameId="tpce.1083066089218" value="[^ ]*" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1182510906722" nodeInfo="ng">
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="MPSLiteConceptDeclaration" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237380549435" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="lineList" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237380500632" resolveInfo="LineList" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1237994765858" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237380500632" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="LineList" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237380509620" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="line" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1182511208797" resolveInfo="Line" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237383701619" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="PropertyPart" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1182511214735" resolveInfo="LinePart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237383915698" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="ConcretePropertyPart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{ property.. }" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237383701619" resolveInfo="PropertyPart" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1237384038504" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="propertyType" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="1237383987373" resolveInfo="MPSLitePropertyType_Enum" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1237383939681" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="1237383987373" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="MPSLitePropertyType_Enum" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1237383987374" nodeInfo="ng">
      <property name="internalValue" nameId="tpce.1083923523171" value="string" />
      <property name="externalValue" nameId="tpce.1083923523172" value="string" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="1237384014591" nodeInfo="ng">
      <property name="internalValue" nameId="tpce.1083923523171" value="numeric" />
      <property name="externalValue" nameId="tpce.1083923523172" value="numeric" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237896192386" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="true" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="AbstractConceptReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237897823399" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="conceptDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237897531822" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="MPSLiteConceptReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237897551735" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="mpsLiteConceptDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1237897823399" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1237897770221" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="RegularConceptReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1237897794700" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="regularConceptDeclaration" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpce.1169125787135" resolveInfo="AbstractConceptDeclaration" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1237897823399" />
    </node>
  </root>
  <root type="tpce.InterfaceConceptDeclaration" typeId="tpce.1169125989551" id="1237993244422" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="IMPSLiteConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239193400062" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="extends" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1238011911208" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="root" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1238011911209" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="abstract" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983657063" resolveInfo="boolean" />
    </node>
    <node role="extends" roleId="tpce.1169127546356" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1237994795771" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239193335240" nodeInfo="ng">
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="BinaryOperationConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239193482817" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="leftTargetRole" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239193490758" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="rightTargetRole" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239193534898" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="sign" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239193455474" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="leftTarget" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239193474986" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="rightTarget" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239278703708" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expressionConcept" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239193374736" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239353382348" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="FeatureAccessConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239353403421" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239372399122" nodeInfo="ng">
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="VariableConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239373243409" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="typeConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237896192386" resolveInfo="AbstractConceptReference" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239891441835" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="reference" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239372630266" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="concreteSyntax" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237380500632" resolveInfo="LineList" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239944476754" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="scopeBlock" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1239944428553" resolveInfo="BlockReference" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239372506309" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="namePropertyName" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="1239373268651" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="typeRole" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239372405317" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239372558422" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="NamePropertyNamePart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="{NAME}" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237383701619" resolveInfo="PropertyPart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239373436410" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="TypePart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="[TYPE]" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1183015764815" resolveInfo="ChildPart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239714446829" nodeInfo="ng">
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <property name="name" nameId="tpck.1169194664001" value="ConceptContainer" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239714457096" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="statementConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1239714568512" resolveInfo="StatementConcept" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239714921166" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="expressionConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1239714642032" resolveInfo="ExpressionConcept" />
    </node>
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239714458094" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="mpsLiteConcept" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="0..n" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239714568512" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="StatementConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239714577797" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239714642032" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="ExpressionConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239714649020" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239939522701" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="BlockConcept" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239939536432" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="aggregation" />
      <property name="role" nameId="tpce.1071599776563" value="concreteSyntax" />
      <property name="sourceCardinality" nameId="tpce.1071599893252" value="1" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1237380500632" resolveInfo="LineList" />
    </node>
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="1239939531377" nodeInfo="ng">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="1237993244422" resolveInfo="IMPSLiteConcept" />
    </node>
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239939853119" nodeInfo="ng">
    <property name="abstract" nameId="tpce.4628067390765956802" value="false" />
    <property name="final" nameId="tpce.4628067390765956807" value="false" />
    <property name="name" nameId="tpck.1169194664001" value="BlockBodyPart" />
    <property name="conceptAlias" nameId="tpce.5092175715804935370" value="[BODY]" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1183015764815" resolveInfo="ChildPart" />
  </root>
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="1239944428553" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="BlockReference" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="1237897531822" resolveInfo="MPSLiteConceptReference" />
    <node role="linkDeclaration" roleId="tpce.1071489727083" type="tpce.LinkDeclaration" typeId="tpce.1071489288298" id="1239944442738" nodeInfo="ng">
      <property name="metaClass" nameId="tpce.1071599937831" value="reference" />
      <property name="role" nameId="tpce.1071599776563" value="blockConcept" />
      <link role="specializedLink" roleId="tpce.1071599698500" targetNodeId="1237897551735" />
      <link role="target" roleId="tpce.1071599976176" targetNodeId="1239939522701" resolveInfo="BlockConcept" />
    </node>
  </root>
</model>

